#!/usr/bin/env python3
"""El mapa con lo que esconde cada pantalla, marcado encima.

Todo sale de las tablas del cartucho:

  numero     la pantalla (0xC125), arriba a la izquierda.
  pasadizos  p06:BD9D: Mitchel sobre una casilla 0xC0-0xC3 salta a otra
             pantalla; la lista de p06:BE16 es [pantalla][destino][x][y][C]
             y un 0. Se recuadran en AMARILLO las casillas 0xC0-0xC3 del mapa
             de la pantalla con el destino al lado.
  salidas    p01:60FA: las vecinas 0xF0-0xFB (p09:B1C5) llevan a la pantalla
             de p01:611F; se escribe el destino en ese borde, en AMARILLO.
  decorado   p02:8181: lo que se puede quitar, fichas de p09:B423 [tipo][y][x]
             [filas][columnas]...: un recuadro ROJO con el suceso que lo quita.
  objetos    p06:BB57 los pone al entrar en seis pantallas (p01:7852: en
             (x - 8, y - 8) de la VRAM, comprobado en el volcado de la 0x7D) y
             p15:BD80 la espada de luz en la 0x0B al quitar su decorado: su
             icono, con un recuadro VERDE.
  charlas    p01:7E57: la conversacion al pararse en la pantalla (p12:A5FE);
             en AZUL claro, abajo a la izquierda. Las de p01:7EF5 salen de
             alguien que aparece al matar a un enemigo: en AZUL oscuro.

La pantalla n se pinta a partir del punto (8, 8) de la VRAM: un punto (x, y)
de la VRAM es el (x - 8, y - 8) de su lamina de 160x160.

Uso: marcas.py <dir_salida> [escala]      escribe mapa_marcado.png
"""
import os
import sys

AQUI = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, AQUI)

import pantalla as P                  # noqa: E402
import mapa as M                      # noqa: E402

AMARILLO, ROJO, VERDE = (255, 230, 0), (255, 40, 40), (60, 255, 90)
AZUL, AZUL_OSCURO, BLANCO, NEGRO = (120, 200, 255), (60, 110, 255), (255, 255, 255), (0, 0, 0)

# p06:BB57 y p15:BD80: (pantalla, objeto, DE) -> E la y, D la x
OBJETOS_PUESTOS = [(0x89, 0x1B, 0x5060), (0x89, 0x11, 0x6060), (0x6B, 0x0D, 0x7070),
                   (0x6B, 0x1D, 0x2090), (0x6B, 0x1D, 0x9030), (0x68, 0x18, 0x5890),
                   (0x69, 0x1C, 0x5868), (0x7D, 0x16, 0x5858), (0x0B, 0x04, 0x5858)]


def pasadizos():
    """{pantalla: destino} de p06:BE16."""
    fuera, a = {}, 0xBE16
    while True:
        n = P.lee(a, (1, 2, 6))
        if not n:
            return fuera
        fuera[n] = P.lee(a + 1, (1, 2, 6))
        a += 5


def decorado():
    """{pantalla: [(tipo, y, x, filas, columnas)]} de p09:B3FD y p09:B423."""
    B = (1, 2, 9)
    fuera, k = {}, 0
    while True:
        n = P.lee(0xB3FD + k, B)
        if not n:
            return fuera
        r = P.palabra(0xB423 + 2 * k, B)
        fuera.setdefault(n, []).append(tuple(P.lee(r + i, B) for i in range(5)))
        k += 1


def casillas(n):
    """Los 20x20 numeros de dibujo de la pantalla (los del mapa de la RAM)."""
    juego = P.juego_de_dibujos(n)
    bl = P.bloques_de(n)
    t = [[0] * 20 for _ in range(20)]
    for k in range(25):
        for i, d in enumerate(P.dibujos_de_bloque(juego, bl[k])):
            t[(k // 5) * 4 + (i >> 2)][(k % 5) * 4 + (i & 3)] = d
    return t


def rect(img, x, y, w, h, col, grueso=1):
    for g in range(grueso):
        for i in range(x - g, x + w + g):
            for j in (y - g, y + h - 1 + g):
                if 0 <= i < 160 and 0 <= j < 160:
                    img[j][i] = col
        for j in range(y - g, y + h + g):
            for i in (x - g, x + w - 1 + g):
                if 0 <= i < 160 and 0 <= j < 160:
                    img[j][i] = col


def texto(img, x, y, s, col):
    """Letras de la fuente del juego, con un fondo negro detras."""
    import figuras as F
    w = 8 * len(s) + 2
    for j in range(y - 1, y + 9):
        for i in range(x - 1, x + w - 1):
            if 0 <= i < 160 and 0 <= j < 160:
                img[j][i] = NEGRO
    for k, ch in enumerate(s.encode()):
        for f, bits in enumerate(F.letra(ch)):
            for i in range(8):
                xx, yy = x + 8 * k + i, y + f
                if bits & (0x80 >> i) and 0 <= xx < 160 and 0 <= yy < 160:
                    img[yy][xx] = col


def marca(n, img, pas, dec, charlas, apariciones, iconos, esp):
    texto(img, 2, 2, "%02X" % n, BLANCO)
    if n in pas and n not in P.ALTERNO:
        t = casillas(n)
        hechas = set()
        for f in range(20):
            for c in range(20):
                if 0xC0 <= t[f][c] <= 0xC3 and (f, c) not in hechas:
                    rect(img, c * 8, f * 8, 16, 16, AMARILLO, 2)
                    hechas |= {(f, c), (f, c + 1), (f + 1, c), (f + 1, c + 1)}
                    texto(img, min(c * 8 + 18, 142), f * 8 + 4, "%02X" % pas[n], AMARILLO)
    elif n in pas:
        texto(img, 124, 2, "%02X" % pas[n], AMARILLO)
    for tipo, y, x, fl, co in dec.get(n, ()):
        rect(img, x - 8, y - 8, co * 8, fl * 8, ROJO, 2)
        texto(img, x - 8 + 2, y - 8 + 2, "%d" % tipo, ROJO)
    for m, obj, de in OBJETOS_PUESTOS:
        if m != n:
            continue
        x, y = (de >> 8) - 16, (de & 0xFF) - 16
        for j in range(16):
            for i in range(16):
                c = iconos[obj - 1][j][i]
                if c and 0 <= x + i < 160 and 0 <= y + j < 160:
                    img[y + j][x + i] = c
        rect(img, x - 1, y - 1, 18, 18, VERDE)
    lado = [(72, 2), (72, 150), (2, 76), (142, 76)]
    for k, v in enumerate(M.vecinas(n)):
        if 0xF0 <= v <= 0xFB:
            x, y = lado[k]
            texto(img, x, y, "%02X" % esp[v][0], AMARILLO)
    if n in charlas:
        texto(img, 2, 150, "%02X" % charlas[n], AZUL)
    if n in apariciones:
        texto(img, 22, 150, "%02X" % apariciones[n], AZUL_OSCURO)


def colores_de_iconos(n):
    import objetos as O
    _, pal = P.pinta(n)
    rgb = [tuple(v * 255 // 7 for v in c) for c in pal]
    return [[[rgb[c] if c else None for c in fila] for fila in ic] for ic in O.iconos()]


def lamina(pos, ruta, escala=1):
    import dialogos as D
    pas, dec, esp = pasadizos(), decorado(), M.especiales()
    charlas = {n: P.lee(D.TABLA_PANTALLA + n, D.B) for n in range(0x72)
               if P.lee(D.TABLA_PANTALLA + n, D.B)}
    apariciones, a = {}, D.PAREJAS
    while P.lee(a, (1, 2, 3)):
        apariciones[P.lee(a, (1, 2, 3))] = P.lee(a + 1, (1, 2, 3))
        a += 2
    w = max(x for x, _ in pos.values()) + 1
    h = max(y for _, y in pos.values()) + 1
    img = [[(32, 32, 32)] * (w * 160) for _ in range(h * 160)]
    for n, (cx, cy) in pos.items():
        col = P.rgb(n)
        marca(n, col, pas, dec, charlas, apariciones,
              colores_de_iconos(n) if any(m == n for m, _, _ in OBJETOS_PUESTOS) else None, esp)
        for y in range(160):
            img[cy * 160 + y][cx * 160:cx * 160 + 160] = col[y]
    M.escribe_png(ruta, img, escala)
    return len(pas), sum(len(v) for v in dec.values()), len(charlas), len(apariciones)


def main(argv):
    sal = argv[1] if len(argv) > 1 else "."
    escala = int(argv[2]) if len(argv) > 2 else 1
    os.makedirs(sal, exist_ok=True)
    junto = M.todo_junto(M.grupos())
    r = lamina(junto, os.path.join(sal, "mapa_marcado.png"), escala)
    print("mapa_marcado.png: %d pasadizos, %d cosas de decorado, %d charlas, "
          "%d apariciones" % r)


if __name__ == "__main__":
    main(sys.argv)
