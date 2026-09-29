#!/usr/bin/env python3
"""Los jefes que no son sprites: se pintan con LMMM desde la pagina 1.

  subir    p00:4BD0 (bancos 13-14-15), al entrar en siete pantallas: una o dos
           estructuras de p14 [bandera][filas][bytes][VRAM] y los bytes tal
           cual, fila a fila, 128 bytes de VRAM entre una y otra; con la
           bandera, p00:4C57 la vuelve a escribir justo a su derecha en
           espejo (los bytes al reves y sus dos puntos cambiados).
  pintar   cada jefe copia su rectangulo de la pagina 1 a la 0 con LMMM y
           TIMP (el color 0 no pinta): p02:8518 BIGFLOWER, p02:8AA8
           TWINMIRES, p03:A6D0/A701 THE NASTY, p03:A78C/A797 BADPRIEST,
           p02:9D49 REVOLVER.

`subida(n)` devuelve la VRAM (64 KB) con lo que sube p00:4BD0 en la pantalla n;
`coteja(dir)` la compara con los volcados de openMSX (work/pantN/pNN.vram) en
los bytes que escribe; `lamina(ruta)` dibuja los jefes con la paleta de su
pantalla.

Uso: jefes.py <dir_salida> [dir_volcados]    escribe jefes.png
"""
import os
import sys

AQUI = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, AQUI)

import pantalla as P                  # noqa: E402

S = (13, 14, 15)
# p00:4BD6-4BFA: el codigo de cada pantalla; p00:4C0D elige la estructura por
# el primer bit puesto, y con el bit 7 lee dos seguidas.
CODIGO = {0x29: 0x88, 0x31: 0x01, 0x34: 0x01, 0x53: 0x90, 0x5D: 0x90, 0x57: 0x04, 0x5C: 0x82}
ESTRUCTURA = [(0x01, 0x9BA2), (0x02, 0x90E4), (0x04, 0x8D1F), (0x08, 0x9998), (0x00, 0x95AE)]

# (nombre, pantalla, [(x, y, ancho, alto)] en la pagina 1): los rectangulos
# que copian sus rutinas (LMMM: SX = H, SY = L, NX = B, NY = C).
JEFES = [
    ("BIGFLOWER", 0x57, [(0xD0, 0xA8, 0x30, 0x28)]),                        # p02:8528
    ("TWINMIRES", 0x31, [(0xD8, 0xB0, 0x28, 0x20)]),                        # p02:8AC9
    ("THE NASTY", 0x29, [(0xE0, 0xA8, 0x20, 0x20), (0xE0, 0xC8, 0x20, 0x20)]),  # p03:A6D2, A707
    ("BADPRIEST", 0x5C, [(0xC0, 0xA8, 0x40, 0x40), (0xD0, 0xD0, 0x20, 0x18),
                         (0xA0, 0xA8, 0x20, 0x18)]),                         # p03:A78E, A79D
    ("REVOLVER", 0x53, [(0xD8, 0xA8, 0x28, 0x28)]),                         # p02:9D4C
]


def estructuras(n):
    c = CODIGO.get(n, 0)
    if not c:
        return []
    for bit, a in ESTRUCTURA:
        if not bit or c & bit:
            break
    return [a] * (2 if c & 0x80 else 1)


def subida(n):
    """La VRAM (64 KB, 0 donde no se escribe) y el conjunto de direcciones
    escritas, como p00:4C29-4C8D."""
    vram, escritas = bytearray(0x10000), set()
    a = None
    for k, a0 in enumerate(estructuras(n)):
        if a is None:
            a = a0
        # p00:4C29: [bandera][filas C][bytes B][VRAM]
        bandera, filas, ancho = P.lee(a, S), P.lee(a + 1, S), P.lee(a + 2, S)
        v = P.palabra(a + 3, S)
        src = a + 5
        for f in range(filas):
            for i in range(ancho):
                vram[v + 0x80 * f + i] = P.lee(src + f * ancho + i, S)
                escritas.add(v + 0x80 * f + i)
        if bandera:
            # p00:4C57: las mismas filas, desde VRAM + 2*bytes - 1 hacia la
            # izquierda, cada byte con sus dos puntos cambiados
            d = v + 2 * ancho - 1
            for f in range(filas):
                for i in range(ancho):
                    b = P.lee(src + f * ancho + i, S)
                    vram[d + 0x80 * f - i] = ((b << 4) | (b >> 4)) & 0xFF
                    escritas.add(d + 0x80 * f - i)
        a = src + filas * ancho      # p00:4C8C: la siguiente va detras
    return vram, escritas


def coteja(dirs):
    """Cuantos bytes escritos difieren del volcado de cada pantalla."""
    fuera = []
    for n in sorted(CODIGO):
        vram, esc = subida(n)
        # los volcados se hacen al llegar a la pantalla y alguno aun guarda lo
        # de la anterior: vale el que mejor casa
        mejor = None
        for d in dirs:
            r = os.path.join(d, "p%02X.vram" % n)
            if os.path.exists(r):
                v = open(r, "rb").read()
                mal = sum(1 for a in esc if a < len(v) and v[a] != vram[a])
                if mejor is None or mal < mejor[3]:
                    mejor = (n, d, len(esc), mal)
        if mejor:
            fuera.append(mejor)
    return fuera


def pixeles(vram, x, y, w, h):
    """Los puntos (4 bits) del rectangulo de la pagina 1."""
    fuera = []
    for j in range(h):
        fila = []
        for i in range(w):
            b = vram[0x8000 + (y + j) * 0x80 + (x + i) // 2]
            fila.append(b >> 4 if not (x + i) & 1 else b & 0x0F)
        fuera.append(fila)
    return fuera


def lamina(ruta, escala=3):
    import figuras as F
    import mapa as M
    celdas = []
    for nombre, n, rects in JEFES:
        vram, _ = subida(n)
        _, pal = P.pinta(n)
        rgb = [tuple(v * 255 // 7 for v in c) for c in pal]
        celdas.append((nombre, [pixeles(vram, *r) for r in rects], rgb))
    ancho = max(sum(len(p[0]) + 6 for p in ps) for _, ps, _ in celdas) + 8
    alto = max(max(len(p) for p in ps) for _, ps, _ in celdas) + 20
    W, H = ancho, alto * len(celdas)
    img = [[(72, 72, 88)] * W for _ in range(H)]
    for k, (nombre, ps, rgb) in enumerate(celdas):
        y0 = k * alto + 2
        for j, ch in enumerate(nombre.encode()[:16]):
            for f, bits in enumerate(F.letra(ch)):
                for i in range(8):
                    if bits & (0x80 >> i):
                        img[y0 + f][4 + j * 8 + i] = (230, 230, 230)
        x = 4
        for p in ps:
            for j, fila in enumerate(p):
                for i, c in enumerate(fila):
                    if c:                 # TIMP: el color 0 no pinta
                        img[y0 + 11 + j][x + i] = rgb[c]
            x += len(p[0]) + 6
    M.escribe_png(ruta, img, escala)
    return len(celdas)


def main(argv):
    sal = argv[1] if len(argv) > 1 else "."
    os.makedirs(sal, exist_ok=True)
    if len(argv) > 2:
        for n, d, tot, mal in coteja(argv[2:]):
            print("pantalla 0x%02X: %d bytes escritos, %d distintos del volcado (%s)"
                  % (n, tot, mal, d))
    print("jefes.png: %d jefes" % lamina(os.path.join(sal, "jefes.png")))


if __name__ == "__main__":
    main(sys.argv)
