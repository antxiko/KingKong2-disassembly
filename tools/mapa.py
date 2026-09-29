#!/usr/bin/env python3
"""El mapa del juego montado desde las tablas: la isla y las zonas de dentro.

Cada pantalla la dibuja tools/pantalla.py. Donde va cada una lo dicen sus
vecinas, cuatro bytes por pantalla en p09:B1C5 (p01:616B los lee con el
indice en C): izquierda, derecha, arriba y abajo; 0xFF es que no hay salida y
0xF0-0xFB son salidas especiales, que p01:60FA resuelve con la tabla de
p01:611F (pantalla de llegada y punto donde aparece Mitchel).

Se recorre el grafo desde una pantalla y se coloca cada vecina al lado que
toca. Si dos caminos pusieran la misma pantalla en sitios distintos, el
montaje no valdria: se comprueba y se para.

Lo que sale:
  isla.png        las 101 pantallas de fuera (0x00-0x61 y 0x89-0x8B)
  zona_XX.png     cada grupo de pantallas de dentro, por su pantalla mas baja
  mapa.png        todo junto: la isla a la izquierda y las zonas a la derecha,
                  en estantes, con una pantalla de separacion

Uso: mapa.py <dir_salida> [escala]
"""
import os
import sys

AQUI = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, AQUI)

import pantalla as P                                   # noqa: E402

DIRS = [(-1, 0), (1, 0), (0, -1), (0, 1)]              # izq, der, arriba, abajo
PANTALLAS = range(0x8C)                                # 0x00-0x8B


def vecinas(n):
    return [P.lee(0xB1C5 + 4 * n + k, (1, 2, 9)) for k in range(4)]


def especiales():
    """{0xF0..0xFB: (pantalla, x, y)} de la tabla de p01:611F."""
    fuera = {}
    for i in range(12):
        a = 0x611F + 3 * i
        fuera[0xF0 + i] = (P.lee(a, (1, 2, 3)), P.lee(a + 1, (1, 2, 3)), P.lee(a + 2, (1, 2, 3)))
    return fuera


def coloca(inicio):
    """{pantalla: (col, fila)} desde `inicio`, por las vecinas."""
    pos = {inicio: (0, 0)}
    pila = [inicio]
    while pila:
        n = pila.pop()
        x, y = pos[n]
        for k, d in enumerate(vecinas(n)):
            if d >= 0xF0:
                continue
            p = (x + DIRS[k][0], y + DIRS[k][1])
            if d in pos:
                if pos[d] != p:
                    raise SystemExit("la pantalla 0x%02X no cabe: %s y %s" % (d, pos[d], p))
                continue
            pos[d] = p
            pila.append(d)
    x0 = min(p[0] for p in pos.values())
    y0 = min(p[1] for p in pos.values())
    return {n: (x - x0, y - y0) for n, (x, y) in pos.items()}


def grupos():
    """Las pantallas en grupos conexos por las vecinas, la isla primero."""
    hechos, fuera = set(), []
    for s in [0] + list(PANTALLAS):
        if s in hechos:
            continue
        pos = coloca(s)
        hechos |= set(pos)
        fuera.append(pos)
    return fuera


def todo_junto(gs):
    """Un solo {pantalla: (col, fila)}: la isla y, a su derecha, las zonas.

    Las zonas van de la mas grande a la mas pequena en estantes de siete
    pantallas de ancho, con una pantalla vacia entre cada una.
    """
    isla = gs[0]
    iw = max(x for x, _ in isla.values()) + 1
    fuera = dict(isla)
    x0, ancho = iw + 1, 7
    cx, cy, alto = 0, 0, 0
    for pos in sorted(gs[1:], key=lambda p: -len(p)):
        w = max(x for x, _ in pos.values()) + 1
        h = max(y for _, y in pos.values()) + 1
        if cx and cx + w > ancho:
            cx, cy, alto = 0, cy + alto + 1, 0
        for n, (x, y) in pos.items():
            fuera[n] = (x0 + cx + x, cy + y)
        cx += w + 1
        alto = max(alto, h)
    return fuera


def lamina(pos, ruta, escala=1):
    w = max(x for x, _ in pos.values()) + 1
    h = max(y for _, y in pos.values()) + 1
    fondo = (32, 32, 32)
    img = [[fondo] * (w * 160) for _ in range(h * 160)]
    for n, (cx, cy) in pos.items():
        ind, pal = P.pinta(n)
        rgb = [tuple(v * 255 // 7 for v in c) for c in pal]
        for y in range(160):
            fila = img[cy * 160 + y]
            for x in range(160):
                fila[cx * 160 + x] = rgb[ind[y][x]]
    escribe_png(ruta, img, escala)


def escribe_png(ruta, img, escala=1):
    import struct
    import zlib
    h, w = len(img), len(img[0])
    crudo = bytearray()
    for fila in img:
        linea = b"".join(bytes(c) * escala for c in fila)
        for _ in range(escala):
            crudo += b"\x00" + linea

    def trozo(t, d):
        c = struct.pack(">I", len(d)) + t + d
        return c + struct.pack(">I", zlib.crc32(t + d) & 0xFFFFFFFF)
    with open(ruta, "wb") as f:
        f.write(b"\x89PNG\r\n\x1a\n")
        f.write(trozo(b"IHDR", struct.pack(">IIBBBBB", w * escala, h * escala, 8, 2, 0, 0, 0)))
        f.write(trozo(b"IDAT", zlib.compress(bytes(crudo), 9)))
        f.write(trozo(b"IEND", b""))


def main(argv):
    sal = argv[1] if len(argv) > 1 else "."
    escala = int(argv[2]) if len(argv) > 2 else 1
    os.makedirs(sal, exist_ok=True)
    gs = grupos()
    for i, pos in enumerate(gs):
        nom = "isla.png" if i == 0 else "zona_%02X.png" % min(pos)
        lamina(pos, os.path.join(sal, nom), escala)
        print("%-12s %3d pantallas  %dx%d" % (nom, len(pos),
              max(x for x, _ in pos.values()) + 1, max(y for _, y in pos.values()) + 1))
    junto = todo_junto(gs)
    lamina(junto, os.path.join(sal, "mapa.png"), escala)
    print("%-12s %3d pantallas  %dx%d" % ("mapa.png", len(junto),
          max(x for x, _ in junto.values()) + 1, max(y for _, y in junto.values()) + 1))


if __name__ == "__main__":
    main(sys.argv)
