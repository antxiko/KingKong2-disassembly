#!/usr/bin/env python3
"""Dibuja una pantalla del juego desde las tablas del cartucho, como lo hace el.

Lo que hace el cartucho al entrar en una pantalla (0xC125 el numero; 0xC131
la cueva, 0 = el exterior):

  hoja     p00:4A7B pone los bancos 7-8-9 y lee un nibble: el de la cueva en
           0x6000 + (cueva-1)/2 o el de la pantalla en 0x6009 + pantalla/2
           (par = nibble alto). Es el JUEGO DE DIBUJOS (0xC148). La lista de
           p00:54EC + 2*juego dice que subir a la hoja de la pagina 1:
           [destino][cuantos][fuente], 0xFE pasa a los bancos 10-11-12, 0xFF
           acaba. El destino es el numero de dibujo en la hoja (32 por fila,
           8x8 puntos, 4 bits); p00:48A6 sube `cuantos` dibujos de 32 bytes.
  mapa     p00:4E18: 5x5 BLOQUES. p00:4F0B pone los bancos 4-5-6 y, en el
           exterior, los 10-11-12; el byte del bloque es
           0x6000 + 25*pantalla + 5*fila + columna (exterior, banco 10) o
           0x7E76 + 25*(cueva-1) + ... (cuevas, banco 4).
  bloques  p00:4F46: cada bloque son 4x4 dibujos, 16 bytes, en la tabla que
           apunta p00:4F64 + 2*juego (con los bancos 7-8-9: p00:4E27).
  pinta    p00:4EE7 copia los 20x20 dibujos con HMMM desde la hoja (dibujo t
           en x = (t & 31)*8, y = 256 + (t >> 5)*8) a la pantalla, a partir
           de (8, 8).
  paleta   p00:4DD2 con los bancos 7-8-9: la lista de 0x6128, la del juego de
           dibujos (0x6059 + 2*juego) y la de la pantalla (0x61CF + 2*byte de
           0x6141 + pantalla). Cada entrada [color][RB][G]; 0xFF acaba
           (p00:46CF, p00:4672).

Uso: pantalla.py <n> [cueva] [salida.png]
"""
import os
import struct
import sys
import zlib

AQUI = os.path.dirname(os.path.abspath(__file__))
RAIZ = os.path.dirname(AQUI)
sys.path.insert(0, AQUI)

from paginas import TAM_PAGINA          # noqa: E402

ROM = open(os.path.join(RAIZ, "kingkong2.rom"), "rb").read()


def lee(a, bancos):
    """Byte de la direccion a del Z80 con (b6000, b8000, bA000) puestos."""
    if 0x4000 <= a < 0x6000:
        b = 0
    else:
        b = bancos[(a - 0x6000) >> 13]
    return ROM[b * TAM_PAGINA + (a & 0x1FFF)]


def palabra(a, bancos):
    return lee(a, bancos) | (lee(a + 1, bancos) << 8)


B789, B456, B101112 = (7, 8, 9), (4, 5, 6), (10, 11, 12)
# Las puertas del reparto de tres en tres (p00:42C6)
TRIOS = {0x42BC: (1, 2, 3), 0x42C2: (4, 5, 6), 0x42DE: (7, 8, 9),
         0x42E4: (10, 11, 12), 0x42EA: (13, 14, 15)}


def juego_de_dibujos(n, cueva=0):
    if cueva:
        i, base = cueva - 1, 0x6000
    else:
        i, base = n, 0x6009
    v = lee(base + (i >> 1), B789)
    return (v >> 4) if not i & 1 else (v & 0x0F)


def hoja(juego, hoja_previa=None):
    """La hoja de la pagina 1 (256 dibujos de 8x8, 4 bits) tras cargar `juego`.

    Devuelve una lista de 256 dibujos (cada uno 64 indices de color), o None
    donde el juego no sube nada (se queda lo que hubiera).
    """
    dib = list(hoja_previa) if hoja_previa else [None] * 256
    if hoja_previa is None:
        sube_lista(0x6050, dib, B789)      # p00:4AE8, la comun
    # p00:4AF8: la tabla de 0x4AFB pone, por juego, el trio de bancos con el
    # que se recorre su lista (0xFE pasa despues a los bancos 10-11-12)
    sube_lista(palabra(0x54EC + 2 * juego, B789), dib, TRIOS[palabra(0x4AFB + 2 * juego, B789)])
    return dib


def sube_lista(a, dib, bancos):
    """Recorre una lista [destino][cuantos][fuente] como p00:4AB9."""
    while True:
        v = lee(a, bancos)
        if v == 0xFF:
            break
        if v == 0xFE:
            bancos = B101112
            a += 1
            v = lee(a, bancos)
        n = lee(a + 1, bancos)
        src = palabra(a + 2, bancos)
        a += 4
        for k in range(n or 256):
            t = (v + k) & 0xFF
            px = []
            for f in range(8):
                for c in range(4):
                    x = lee(src + f * 4 + c, bancos)
                    px += [x >> 4, x & 0x0F]
            dib[t] = px
            src += 32


def bloques_de(n, cueva=0):
    """Los 25 bloques de la pantalla, fila a fila."""
    if cueva:
        base, bancos, i = 0x7E76, B456, cueva - 1
    else:
        base, bancos, i = 0x6000, B101112, n
    return [lee(base + 25 * i + k, bancos) for k in range(25)]


def dibujos_de_bloque(juego, b):
    t = palabra(0x4F64 + 2 * juego, B789)
    return [lee(t + 16 * b + k, B789) for k in range(16)]


def lista_de_paleta(a, pal):
    while True:
        c = lee(a, B789)
        if c == 0xFF:
            return
        rb, g = lee(a + 1, B789), lee(a + 2, B789)
        pal[c & 0x0F] = ((rb >> 4) & 7, g & 7, rb & 7)
        a += 3


def paleta(n, juego):
    pal = [(0, 0, 0)] * 16
    lista_de_paleta(0x6128, pal)
    lista_de_paleta(palabra(0x6059 + 2 * juego, B789), pal)
    lista_de_paleta(palabra(0x61CF + 2 * lee(0x6141 + n, B789), B789), pal)
    return pal


# Lo que p00:4E4D pinta ENCIMA al entrar en cuatro pantallas, con p00:4EB2:
# bancos 13-14-15, una tabla de filas x columnas numeros de dibujo (0 = no
# pinta) que 0x498D copia con transparencia (LMMM + TIMP), a partir del punto
# (x, y) de la pantalla. (pantalla: [(x, y, tabla, columnas, filas)])
ENCIMA = {
    0x15: [(0x38, 0x20, 0xB9A5, 9, 9)],      # p00:4E76 (la estatua)
    0x28: [(0x38, 0x20, 0xB9A5, 9, 9)],      # p00:4E76
    0x89: [(0x38, 0x28, 0xB9A5, 9, 9)],      # p00:4EA9
    0x60: [(0x38, 0x20, 0xB9A5, 9, 9),       # p00:4E5F
           (0x28, 0x48, 0xB9F6, 3, 5),       # p00:4E65 y p00:4E6E
           (0x78, 0x48, 0xB9F6, 3, 5)],      # p00:4E6B
}
B131415 = (13, 14, 15)

# p00:49D8: en estas cuatro pantallas p00:4A1B sube ademas dibujos VOLTEADOS
# (cada fila al reves y con los nibbles cambiados): la mitad derecha de la
# estatua. Bancos 10-11-12. (fuente, primer dibujo, cuantos)
VOLTEADOS = [(0xA17E, 17, 16), (0xA35E, 96, 11)]
CON_VOLTEADOS = (0x15, 0x28, 0x60, 0x89)


def sube_volteados(dib):
    for src, t0, n in VOLTEADOS:
        for k in range(n):
            px = []
            for f in range(8):
                fila = [lee(src + f * 4 + c, B101112) for c in range(4)]
                for x in reversed(fila):
                    px += [x & 0x0F, x >> 4]
            dib[t0 + k] = px
            src += 32


def pinta(n, cueva=0):
    """(indices 160x160, paleta) de la pantalla."""
    juego = juego_de_dibujos(n, cueva)
    dib = hoja(juego)
    if not cueva and n in CON_VOLTEADOS:
        sube_volteados(dib)
    bl = bloques_de(n, cueva)
    img = [[0] * 160 for _ in range(160)]
    for by in range(5):
        for bx in range(5):
            ts = dibujos_de_bloque(juego, bl[by * 5 + bx])
            for k, t in enumerate(ts):
                px = dib[t] or [0] * 64
                x0 = bx * 32 + (k & 3) * 8
                y0 = by * 32 + (k >> 2) * 8
                for i in range(64):
                    img[y0 + (i >> 3)][x0 + (i & 7)] = px[i]
    if not cueva:
        for x, y, tabla, cols, filas in ENCIMA.get(n, ()):
            for f in range(filas):
                for c in range(cols):
                    t = lee(tabla + f * cols + c, B131415)
                    if not t or dib[t] is None:
                        continue
                    for i in range(64):
                        if dib[t][i]:            # TIMP: el color 0 no pinta
                            img[y - 8 + f * 8 + (i >> 3)][x - 8 + c * 8 + (i & 7)] = dib[t][i]
    return img, paleta(n, juego)


def png(ruta, img, pal, escala=2):
    h, w = len(img), len(img[0])
    rgb = [tuple(v * 255 // 7 for v in c) for c in pal]
    filas = b""
    for fila in img:
        linea = b"".join(bytes(rgb[p]) * escala for p in fila)
        filas += (b"\x00" + linea) * escala
    def trozo(t, d):
        c = struct.pack(">I", len(d)) + t + d
        return c + struct.pack(">I", zlib.crc32(t + d) & 0xFFFFFFFF)
    with open(ruta, "wb") as f:
        f.write(b"\x89PNG\r\n\x1a\n")
        f.write(trozo(b"IHDR", struct.pack(">IIBBBBB", w * escala, h * escala, 8, 2, 0, 0, 0)))
        f.write(trozo(b"IDAT", zlib.compress(filas, 9)))
        f.write(trozo(b"IEND", b""))


def main(argv):
    n = int(argv[1], 0)
    cueva = int(argv[2], 0) if len(argv) > 2 else 0
    sal = argv[3] if len(argv) > 3 else "pantalla_%02X.png" % n
    img, pal = pinta(n, cueva)
    png(sal, img, pal)
    print("pantalla 0x%02X cueva %d juego %d -> %s" % (n, cueva, juego_de_dibujos(n, cueva), sal))


if __name__ == "__main__":
    main(sys.argv)
