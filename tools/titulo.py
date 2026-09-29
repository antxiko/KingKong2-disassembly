#!/usr/bin/env python3
"""El logotipo de Konami y el titulo, montados desde las tablas como el juego.

  konami   p00:5F3F. Paleta de p00:46AF (p00:469C) y la lista de p00:5FA7;
           limpia en la pagina 1 el rectangulo (0x28, 0x40) de 0xA8x0x48
           (p00:5F5B); con el banco 8 en 0x8000 expande tres tiras de letras
           de 1 bit (p00:4867): 13 de p08:9C3B en color 1 en (0x08, 0), 13 de
           p08:9CA3 en color 2 en (0x70, 0) y 26 de p08:9D0B en color 3 en
           (0xD8, 0). Luego p00:5FDA las coloca con la lista de p08:9BFA a
           partir de (0x40, 0x40): numero de dibujo (copia HMMM de pagina 1 a
           pagina 1, p00:499F), 0xFE [dx] baja una fila y corre dx, 0xFF acaba.
  titulo   p06:BA79 (con los bancos 1-2-6 y el 5 en 0x8000). p06:B970 borra
           la pagina 0, pone la paleta de p06:BA6F y expande tres tiras de
           letras de 1 bit: 36 de p06:A2A1 en color 6 en (0x08, 0), 52 de
           p06:A3C1 en color 5 en (0x28, 8) y 29 de p06:A561 en color 8 en
           (0xC8, 0x10). p06:BA99 pinta seis tablas de dibujos con
           transparencia (p00:4EB5 -> 0x498D, LMMM + TIMP de la pagina 1 a la
           0) y p06:BAE7 los creditos con la fuente (p00:4915).
  fuente   p01:6010: 96 letras de 1 bit de p05:9F99 en color 14 en (0, 0x40)
           y en color 3 en (0, 0x58) de la pagina 1; p00:4915 escribe el
           codigo c con el dibujo c + 0x10 y 0x30 lineas mas abajo (0x48 con
           C = 0x80: la segunda). p01:602F pone encima, en el sitio de la
           letra 0x3A, el (c) de p06:A299.

Uso: titulo.py <dir_salida>     escribe konami.png, titulo.png y rotulo.png
"""
import os
import sys

AQUI = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, AQUI)

import pantalla as P                  # noqa: E402
from vram import VRAM                 # noqa: E402


def bytes_de(a, n, bancos):
    return bytes(P.lee(a + i, bancos) for i in range(n))


def lista_paleta(a, pal, bancos):
    while True:
        c = P.lee(a, bancos)
        if c == 0xFF:
            return
        rb, g = P.lee(a + 1, bancos), P.lee(a + 2, bancos)
        pal[c & 0x0F] = ((rb >> 4) & 7, g & 7, rb & 7)
        a += 3


def paleta_base():
    """p00:469C: los 16 colores de p00:46AF, [RB][G]."""
    pal = []
    for i in range(16):
        rb, g = P.lee(0x46AF + 2 * i, (1, 2, 3)), P.lee(0x46B0 + 2 * i, (1, 2, 3))
        pal.append(((rb >> 4) & 7, g & 7, rb & 7))
    return pal


def fuente(v):
    """p01:6010, con los bancos 5 (0x8000) y 6 (0xA000)."""
    b = (1, 5, 6)
    f = bytes_de(0x9F99, 8 * 0x60, b)
    v.letras(f, 0x60, 0x0E, 0x00, 0x40)
    v.letras(f, 0x60, 0x03, 0x00, 0x58)
    # p01:602F: si 0xC102 no tiene el bit 6 (al encender no lo tiene), una
    # letra mas de p06:A299 en color 14 en (0x50, 0x40): el (c) de los
    # creditos, que ocupa el sitio de la letra 0x3A
    v.letras(bytes_de(0xA299, 8, b), 1, 0x0E, 0x50, 0x40)


def texto(v, a, bancos, c=0xFF):
    """p00:4915: [x][y] letras...; 0xFE [x][y] sigue en otro sitio; 0xFF acaba."""
    while True:
        d, e = P.lee(a, bancos), P.lee(a + 1, bancos)
        a += 2
        while True:
            ch = P.lee(a, bancos)
            a += 1
            if ch == 0xFF:
                return
            if ch == 0xFE:
                break
            if ch == 0 or c == 0:
                sx, sy = 0, 0
            else:
                sx, sy = VRAM.de_dibujo((ch + 0x10) & 0xFF)
                sy += 0x48 if c == 0x80 else 0x30
            v.hmmm(sx, sy, d, e, 8, 8, 1)
            d = (d + 8) & 0xFF


def figura(v, tabla, cols, filas, x, y, bancos):
    """p00:4EB5 -> 0x498D: dibujos de la hoja con transparencia (0 = nada)."""
    for f in range(filas):
        for c in range(cols):
            t = P.lee(tabla + f * cols + c, bancos)
            sx, sy = VRAM.de_dibujo(t)
            v.lmmm(sx, sy, x + 8 * c, y + 8 * f, 8, 8, 0x48)


def konami():
    v = VRAM()
    b = (1, 8, 3)                     # p00:5F5E: el banco 8 en 0x8000
    pal = paleta_base()
    lista_paleta(0x5FA7, pal, b)
    v.hmmv(0x28, 0x40, 0xA8, 0x48, 1, 0)
    v.letras(bytes_de(0x9C3B, 8 * 13, b), 13, 1, 0x08, 0)
    v.letras(bytes_de(0x9CA3, 8 * 13, b), 13, 2, 0x70, 0)
    v.letras(bytes_de(0x9D0B, 8 * 26, b), 26, 3, 0xD8, 0)
    # p00:5FDA: la composicion
    a, x, y = 0x9BFA, 0x40, 0x40
    x0 = x
    while True:
        t = P.lee(a, b)
        a += 1
        if t == 0xFF:
            break
        if t == 0xFE:
            x0 = (x0 + P.lee(a, b)) & 0xFF
            a += 1
            y += 8
            x = x0
            continue
        sx, sy = VRAM.de_dibujo(t)
        v.hmmm(sx, sy, x, y, 8, 8, 5)
        x = (x + 8) & 0xFF
    return v, pal


def titulo():
    v = VRAM()
    b = (1, 5, 6)
    fuente(v)
    # la paleta no se reinicia entre pantallas: se parte de la de Konami
    _, pal = konami()
    lista_paleta(0xBA6F, pal, b)
    # p06:BA7C baja el color 15 en tres pasos hasta [0x22][0x02]
    pal[15] = (2, 2, 2)
    # p06:B9C8 sube 5, 6 y 8 hasta la lista de p06:BA5A (p06:BA46 alterna
    # luego con la de p06:BA64, mas oscura: el rotulo parpadea)
    lista_paleta(0xBA5A, pal, b)
    v.letras(bytes_de(0xA2A1, 8 * 0x24, b), 0x24, 6, 0x08, 0x00)
    v.letras(bytes_de(0xA3C1, 8 * 0x34, b), 0x34, 5, 0x28, 0x08)
    v.letras(bytes_de(0xA561, 8 * 0x1D, b), 0x1D, 8, 0xC8, 0x10)
    figura(v, 0xB8E8, 4, 5, 0x18, 0x20, b)
    figura(v, 0xB91F, 3, 5, 0x70, 0x20, b)
    figura(v, 0xB92E, 5, 6, 0xC0, 0x20, b)
    figura(v, 0xB8FC, 7, 5, 0x38, 0x20, b)
    figura(v, 0xB8FC, 7, 5, 0x88, 0x20, b)
    figura(v, 0xB94C, 12, 3, 0x50, 0x58, b)
    texto(v, 0xBAE7, b)
    return v, pal


def caja(v, x0, y0, w, h, pagina, margen=4):
    """La caja de los puntos que no son 0, medida, con un margen: el recorte
    no se pone a mano (el rotulo de otro juego salio cortado asi)."""
    xs, ys = [], []
    for y in range(y0, y0 + h):
        for x in range(x0, x0 + w):
            if v.lee(x, pagina * 256 + y):
                xs.append(x)
                ys.append(y)
    ax, ay = max(min(xs) - margen, 0), max(min(ys) - margen, 0)
    bx, by = min(max(xs) + margen, 255), min(max(ys) + margen, 255)
    return ax, ay, bx - ax + 1, by - ay + 1


def main(argv):
    sal = argv[1] if len(argv) > 1 else "."
    os.makedirs(sal, exist_ok=True)
    v, pal = konami()
    # la composicion de p00:5FDA, en la pagina 1 de la linea 0x40 a la 0x87
    x, y, w, h = caja(v, 0, 0x40, 256, 0x48, 1)
    P.png(os.path.join(sal, "konami.png"), v.region(x, y, w, h, 1), pal)
    print("konami.png  %dx%d desde (%d, %d) de la pagina 1" % (w, h, x, y))
    v, pal = titulo()
    P.png(os.path.join(sal, "titulo.png"), v.region(0, 0, 256, 212, 0), pal)
    print("titulo.png  256x212")
    # el rotulo: las figuras de p06:BA99, de la linea 0x20 a la 0x6F
    x, y, w, h = caja(v, 0, 0x20, 256, 0x50, 0)
    P.png(os.path.join(sal, "rotulo.png"), v.region(x, y, w, h, 0), pal)
    print("rotulo.png  %dx%d desde (%d, %d)" % (w, h, x, y))


if __name__ == "__main__":
    main(sys.argv)
