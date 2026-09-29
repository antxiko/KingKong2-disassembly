#!/usr/bin/env python3
"""Las conversaciones del juego, leidas de sus tablas y transcritas.

  quien    p01:7E57: al pararse Mitchel en la pantalla n (menos de 0x72), el
           byte de p12:A5FE + n es la conversacion (0 = nadie). p01:7ED9 da
           otras por la lista de parejas [pantalla][conversacion] de
           p01:7EF5 (0 acaba), y p01:7EBB la 0x2C en la pantalla 0x60.
  lineas   p02:80B0 (bancos 10-11-12): la conversacion c apunta con la palabra
           p12:A66E + 2c a una lista de palabras, una por linea (0xC14D, desde
           0), que acaba en 0. Cada linea: un byte de ACCION (0xC14C; 0 =
           ninguna) y el texto hasta 0xFF.
  texto    las letras de la fuente de p05:9F99 (tools/titulo.py): 0x30-0x39
           cifras, 0x41-0x5A mayusculas, 0x5B-0x8F hiragana en el orden del
           silabario (0x89-0x8C las pequenas ya, yu, yo, tsu), 0x3C el
           dakuten y 0x3D el handakuten (van DETRAS de la letra), 0x3E el
           punto y 0x3F y 0x8D la coma, 0x40 la raya larga, 0x3A la flecha de
           elegir; 0x00 es un espacio y 0xFD salta de renglon.
  accion   p02:8065 reparte por 0xC14C - 1 con la tabla de p02:806C: 33
           rutinas en p12:B500-B8FC. Las que preguntan llaman a p12:B9B3, que
           salta segun la tecla 1, 2 o 3.

Uso: dialogos.py            todas las conversaciones, en texto
"""
import os
import sys

AQUI = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, AQUI)

import pantalla as P                  # noqa: E402

B = (10, 11, 12)
KANA = ("あいうえおかきくけこさしすせそたちつてとなにぬねのはひふへほまみむめも"
        "やゆよらりるれろわをんゃゅょっ、?!")
DAKUTEN = dict(zip("かきくけこさしすせそたちつてとはひふへほう",
                   "がぎぐげござじずぜぞだぢづでどばびぶべぼゔ"))
HANDAKUTEN = dict(zip("はひふへほ", "ぱぴぷぺぽ"))
N_CONVERSACIONES = 56                 # p12:A670-A6DF, hasta el primer texto
TABLA_PANTALLA = 0xA5FE
TABLA_CONV = 0xA66E
PAREJAS = 0x7EF5                      # p01, bancos 1-2-3


def letra(c):
    if c == 0x00:
        return " "
    if 0x30 <= c <= 0x39 or 0x41 <= c <= 0x5A:
        return chr(c)
    if 0x5B <= c <= 0x8F:
        return KANA[c - 0x5B]
    return {0x3A: "▶", 0x3B: "?", 0x3E: "。", 0x3F: "、",
            0x40: "ー", 0xFD: "\n"}.get(c, "[%02X]" % c)


def texto(a, s=B):
    """Lee desde a hasta 0xFF. Devuelve (texto, direccion del 0xFF)."""
    t = ""
    while True:
        c = P.lee(a, s)
        if c == 0xFF:
            return t, a
        if c == 0x3C and t:
            t = t[:-1] + DAKUTEN.get(t[-1], t[-1] + "゛")
        elif c == 0x3D and t:
            t = t[:-1] + HANDAKUTEN.get(t[-1], t[-1] + "゜")
        else:
            t += letra(c)
        a += 1


def lineas(c):
    """[(direccion, accion, texto)] de la conversacion c (desde 1)."""
    lista = P.palabra(TABLA_CONV + 2 * c, B)
    fuera = []
    k = 0
    while True:
        a = P.palabra(lista + 2 * k, B)
        if a == 0:
            return fuera
        t, _ = texto(a + 1)
        fuera.append((a, P.lee(a, B), t))
        k += 1


def donde():
    """{conversacion: [pantallas]} por p12:A5FE y las parejas de p01:7EF5."""
    d = {}
    for n in range(1, 0x72):
        c = P.lee(TABLA_PANTALLA + n, B)
        if c:
            d.setdefault(c, []).append(n)
    a = PAREJAS
    while True:
        n = P.lee(a, (1, 2, 3))
        if n == 0:
            break
        d.setdefault(P.lee(a + 1, (1, 2, 3)), []).append(n)
        a += 2
    d.setdefault(0x2C, []).append(0x60)          # p01:7EBB
    return d


def main(argv):
    d = donde()
    for c in range(1, N_CONVERSACIONES + 1):
        pant = ", ".join("0x%02X" % n for n in sorted(d.get(c, [])))
        print("== conversacion 0x%02X (pantallas: %s)" % (c, pant or "-"))
        for k, (a, acc, t) in enumerate(lineas(c)):
            print("  [%d] p12:%04X accion %02X: %s" % (k, a, acc,
                                                     t.replace("\n", " / ")))


if __name__ == "__main__":
    main(sys.argv)
