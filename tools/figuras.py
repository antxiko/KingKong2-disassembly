#!/usr/bin/env python3
"""Las figuras del juego desde las tablas: Mitchel.

Mitchel son DOS sprites de 16x16 superpuestos (modo 2 del V9938): el primero
en color 1 y el segundo con color 0x42, cuyo bit CC suma su color al de
debajo; donde coinciden sale el 3 (1 | 2). Medido en los volcados: el sprite
16 con patron 0 y color 0x01 en todas las lineas, el 17 con patron 4 y 0x42.

Las poses las sube cada cuadro p00:4FF0 (desde p00:5C49): con los bancos
13-14-15, la palabra 0x7D9B + 2*pose (0x7DBD + 2*pose si 0xC160 no es cero)
apunta a un RLE que se escribe en los patrones de sprite, 0xF800 (p00:5010):
un byte n; si n & 0x7F es 0, acaba; con el bit 7, siguen n & 0x7F bytes tal
cual; sin el, el byte siguiente se repite n veces. Salen 64 bytes: los dos
patrones de 16x16 (32 bytes cada uno: columna izquierda de arriba abajo y
luego la derecha). 17 poses (0xC310) en cada juego.

Uso: figuras.py <dir_salida>     escribe mitchel.png
"""
import os
import sys

AQUI = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, AQUI)

import pantalla as P                  # noqa: E402

S = (13, 14, 15)
POSES = 17
TABLAS = (0x7D9B, 0x7DBD)             # 0xC160 = 0 y distinto de 0


def rle(a, s=S):
    """p00:5010. Devuelve (bytes, direccion del final)."""
    fuera = []
    while True:
        b = P.lee(a, s)
        n = b & 0x7F
        if n == 0:
            return fuera, a + 1
        if b & 0x80:
            fuera += [P.lee(a + 1 + i, s) for i in range(n)]
            a += 1 + n
        else:
            fuera += [P.lee(a + 1, s)] * n
            a += 2


def patron16(b32):
    """16x16 puntos (0/1) de un patron de sprite de 32 bytes."""
    img = [[0] * 16 for _ in range(16)]
    for y in range(16):
        for x in range(16):
            byte = b32[y + (16 if x >= 8 else 0)]
            img[y][x] = 1 if byte & (0x80 >> (x & 7)) else 0
    return img


def pose(tabla, n):
    datos, _ = rle(P.palabra(tabla + 2 * n, S))
    a, b = patron16(datos[:32]), patron16(datos[32:64])
    return [[a[y][x] | (b[y][x] << 1) for x in range(16)] for y in range(16)]


def main(argv):
    sal = argv[1] if len(argv) > 1 else "."
    os.makedirs(sal, exist_ok=True)
    _, pal = P.pinta(0)                   # los colores 1-3 de la pantalla 0
    esc, sep = 1, 4
    w, h = POSES * (16 + sep) + sep, 2 * (16 + sep) + sep
    img = [[0] * w for _ in range(h)]
    for f, tabla in enumerate(TABLAS):
        for n in range(POSES):
            p = pose(tabla, n)
            for y in range(16):
                for x in range(16):
                    img[sep + f * (16 + sep) + y][sep + n * (16 + sep) + x] = p[y][x]
    P.png(os.path.join(sal, "mitchel.png"), img, pal, escala=3)
    print("mitchel.png: %d poses x 2" % POSES)


if __name__ == "__main__":
    main(sys.argv)
