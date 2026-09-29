#!/usr/bin/env python3
"""Coteja los dibujos hechos desde la ROM contra volcados de openMSX.

  pantallas <dir>   cada <dir>/pNN.vram (paginas 0 y 1, tools/omsx_pantallas.tcl)
                    contra tools/pantalla.py: los 160x160 puntos del decorado
                    (en la pantalla, a partir de (8, 8)) y los 16 colores.
                    Se dice cuantas celdas de 8x8 difieren y cuales: lo que
                    el juego pinta ENCIMA del decorado (la barca, puertas que
                    se abren...) no esta en el mapa y sale aqui con su sitio.

Codigo de salida 1 si alguna pantalla tiene diferencias sin explicar.
"""
import glob
import os
import sys

AQUI = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, AQUI)

import pantalla as P                      # noqa: E402


def px(v, x, y):
    b = v[y * 128 + x // 2]
    return b >> 4 if x % 2 == 0 else b & 15


def paleta_volcada(p):
    return [((p[2 * i] >> 4) & 7, p[2 * i + 1] & 7, p[2 * i] & 7) for i in range(16)]


def coteja_pantalla(ruta):
    v = open(ruta, "rb").read()
    ram = open(ruta[:-5] + ".ram", "rb").read()
    # la que HAY en el volcado, que puede no ser la pedida: el juego salta a
    # otra si Mitchel cae en una salida
    n, cueva = ram[0x125], ram[0x131]
    img, pal = P.pinta(n, cueva)
    celdas = {}
    for y in range(160):
        for x in range(160):
            if img[y][x] != px(v, 8 + x, 8 + y):
                k = (x // 8, y // 8)
                celdas[k] = celdas.get(k, 0) + 1
    pv = paleta_volcada(open(ruta[:-5] + ".pal", "rb").read())
    colores = [i for i in range(16) if pv[i] != pal[i]]
    return n, cueva, ram[0x125], celdas, colores


def main(argv):
    if len(argv) < 3 or argv[1] != "pantallas":
        sys.exit(__doc__)
    mal = 0
    for ruta in sorted(glob.glob(os.path.join(argv[2], "p??.vram"))):
        n, cueva, puesta, celdas, colores = coteja_pantalla(ruta)
        estado = "OK" if not celdas and not colores else "DIFIERE"
        if estado != "OK":
            mal += 1
        print("pantalla 0x%02X (cueva %d, 0xC125=0x%02X): %s  %d celdas%s%s" % (
            n, cueva, puesta, estado, len(celdas),
            (" " + " ".join("%d,%d" % k for k in sorted(celdas)[:12])) if celdas else "",
            ("  colores %s" % colores) if colores else ""))
    return 1 if mal else 0


if __name__ == "__main__":
    sys.exit(main(sys.argv))
