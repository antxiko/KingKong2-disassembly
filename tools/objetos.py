#!/usr/bin/env python3
"""Los objetos: sus 38 dibujos y lo que el juego hace con cada uno.

  dibujos  p00:4AED (bancos 7-8-9): 38 dibujos de 16x16 a 4 bits, 128 bytes
           cada uno (16 filas de 8 bytes), de p07:630A a la VRAM 0xB800 con
           p00:48D0: el siguiente 8 bytes a la derecha y, al llegar a 0x80,
           16 lineas mas abajo. Es la pagina 1 desde la linea 0x70: 16
           dibujos por fila.
  numero   el objeto n (1-0x26) es el dibujo n-1: p01:7962 lo copia de
           x = ((n-1) & 15)*16, y = 0x70 + ((n-1) & 0xF0) de la pagina 1 (el
           0x26 con el dibujo del 6).
  cuantos  p01:79D0 da el objeto A (B unidades): 0xC33F + A lleva la cuenta en
           BCD (hasta 99). El byte p01:7A35 + A dice como: bit 7, sin cuenta
           (se guarda 0xFF); nibble bajo 0, va a la lista de SHOT1 (0xC2A0,
           12 casillas); distinto de 0, a la de SHOT2 (0xC2C0, 21).
  usar     SHOT1 (0xC140) reparte con la tabla de p01:747F (objetos 0-0x0B;
           el 0x1F aparte, p01:7474) y SHOT2 (0xC141) con la de p01:7C05
           (0x0C-0x24).
  nombre   p00:441F (bancos 13-14-15): la palabra p15:A069 + 2*n apunta al
           nombre del objeto n (1-0x24), en la fuente del juego y hasta 0xFF;
           detras p00:42F0 escribe "を とりました。" (p15:A062).

Uso: objetos.py <dir_salida>     escribe objetos.png
"""
import os
import sys

AQUI = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, AQUI)

import pantalla as P                  # noqa: E402

B = (7, 8, 9)
N = 38
FUENTE = 0x630A
VRAM_ICONOS = 0xB800
CLASE = 0x7A35                        # p01, bancos 1-2-3


def iconos():
    """Los 38 dibujos: listas de 16x16 colores."""
    fuera = []
    for k in range(N):
        d = [P.lee(FUENTE + 128 * k + i, B) for i in range(128)]
        fuera.append([[(d[8 * y + x // 2] >> (0 if x & 1 else 4)) & 0x0F
                       for x in range(16)] for y in range(16)])
    return fuera


def vram_iconos():
    """Lo que p00:4AED deja en la VRAM: {direccion: byte}."""
    m = {}
    de = VRAM_ICONOS
    for k in range(N):
        for f in range(16):
            for i in range(8):
                m[de + 0x80 * f + i] = P.lee(FUENTE + 128 * k + 8 * f + i, B)
        e = (de & 0xFF) + 8                        # p00:48D4
        de = (de & 0xFF00) | (e & 0xFF)
        if e == 0x80:
            de = ((de >> 8) + 8) << 8
    return m


NOMBRES = 0xA069                      # p15, + 2*n


def nombre(n):
    """Los bytes del nombre del objeto n (1-0x24), sin el 0xFF."""
    a = P.palabra(NOMBRES + 2 * n, (13, 14, 15))
    fuera = []
    while P.lee(a, (13, 14, 15)) != 0xFF:
        fuera.append(P.lee(a, (13, 14, 15)))
        a += 1
    return fuera


def nombre_en_texto(n):
    import dialogos as D
    a = P.palabra(NOMBRES + 2 * n, (13, 14, 15))
    return D.texto(a, (13, 14, 15))[0]


def clase(n):
    """(lista, con_cuenta) del objeto n por p01:7A35."""
    c = P.lee(CLASE + n, (1, 2, 3))
    return ("SHOT2" if c & 0x0F else "SHOT1"), not c & 0x80


def lamina(ruta, escala=3):
    """Los 38 dibujos en filas de 6: cada uno con su numero y, debajo, su
    nombre tal como lo escribe el juego (p15:A069), con su fuente."""
    import figuras as F
    import mapa as M
    _, pal = P.pinta(0)
    rgb = [tuple(v * 255 // 7 for v in c) for c in pal]
    cols, cw, ch = 6, 96, 32
    W, H = cols * cw + 4, ((N + cols - 1) // cols) * ch + 4
    img = [[(72, 72, 88)] * W for _ in range(H)]

    def escribe(texto, x, y, color):
        for j, c in enumerate(texto):
            for f, bits in enumerate(F.letra(c)):
                for i in range(8):
                    if bits & (0x80 >> i) and x + j * 8 + i < W:
                        img[y + f][x + j * 8 + i] = color
    for k, ic in enumerate(iconos()):
        cx, cy = 4 + (k % cols) * cw, 4 + (k // cols) * ch
        for y in range(16):
            for x in range(16):
                if ic[y][x]:
                    img[cy + y][cx + x] = rgb[ic[y][x]]
        escribe([ord(c) for c in "%02X" % (k + 1)], cx + 20, cy, (150, 150, 170))
        if k + 1 <= 0x24:
            escribe(nombre(k + 1), cx, cy + 18, (230, 230, 230))
    M.escribe_png(ruta, img, escala)


def main(argv):
    sal = argv[1] if len(argv) > 1 else "."
    os.makedirs(sal, exist_ok=True)
    lamina(os.path.join(sal, "objetos.png"))
    print("objetos.png: %d dibujos" % N)
    for n in range(1, N + 1):
        if n <= 0x24:
            lista, cuenta = clase(n)
            print("  0x%02X  %-8s %s%s" % (n, nombre_en_texto(n), lista,
                                            "  con cuenta" if cuenta else ""))


if __name__ == "__main__":
    main(sys.argv)
