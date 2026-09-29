#!/usr/bin/env python3
"""La musica y los efectos: las tablas del banco 4 y el formato de sus pistas.

  pedir    p00:5490 pone los bancos 4-5 y llama a p04:6032 con A = sonido.
           Menos de 0x80, un EFECTO: la palabra p04:6684 + 2*A (1-0x29) es su
           pista, que toca el canal C (0xC056, p04:6587). De 0x80 en adelante,
           una PIEZA: tres palabras en p04:66D8 + 6*(A & 0x7F), las pistas de
           los canales A, B y C (0xC01A, 0xC02E, 0xC042; p04:6321/6328/632F).
           0xFD pausa la musica y toca la de pausa (p04:6125, p04:6D25); 0xFE
           la devuelve (p04:61C2); 0xFF la funde (p04:6113).
  pista    (p04:638A) un byte c:
             0x00-0xBF  nota: c >> 4 es la nota (p04:6464, 12 semitonos) y la
                        duracion (c & 15) + 1 veces el tempo
             0xC0-0xCF  silencio de (c & 15) + 1
             0xD0-0xDF  tempo = c & 15
             0xE0-0xE5  octava (6 - (c & 15))
             0xE8 [n]   envolvente n (p04:640A: tablas de p04:7ABD..7B4D)
             0xEA [w]   salta a w
             0xED [w]   llama a w (vuelve con 0xEE)
             0xE6-0xEF  el resto, un byte (banderas)
             0xF0-0xFD [b]  volumen c & 15 (+2) y b (caida y sostenido)
             0xFE [n][w]    repite n veces desde w
             0xFF       acaba el canal
  envolvente y efecto (p04:6592), un byte c por cuadro:
             0xFF acaba; 0xFE [n][w] repite n veces desde w;
             0x1X [..]  ruido X*2 y sigue con el byte siguiente como c;
             0x2X [d]   mezclador y duracion d (0x28-0x2F: y dos bytes de la
                        envolvente del PSG); 0x20 espera;
             el resto [b]  volumen c >> 4 y tono (c & 15, b).

Uso: sonido.py      lista las piezas, los efectos y lo que ocupan
"""
import os
import sys

AQUI = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, AQUI)

import pantalla as P                  # noqa: E402

S = (4, 5, 6)
EFECTOS = 0x6686                      # p04:6684 + 2*A, A = 1..0x29
N_EFECTOS = 0x29
PIEZAS = 0x66D8                       # p04:66D8 + 6*(A & 0x7F)
N_PIEZAS = 14                         # 0x80-0x8D
PAUSA = 0x6D25                        # p04:61B9
ENVOLVENTES = [0x7ABD, 0x7AD5, 0x7AED, 0x7B05, 0x7B1D, 0x7B35, 0x7B4D]
NOTAS = 0x6464                        # 12 palabras


def lee(a):
    return P.lee(a, S)


def palabra(a):
    return P.palabra(a, S)


def recorre_pista(a, tramos, envs, vistos):
    """Pista de musica desde a. Apunta los tramos de bytes leidos y los
    numeros de envolvente (0xE8 n) que usa."""
    pila = [a]
    while pila:
        a = pila.pop()
        ini = a
        while True:
            if a in vistos:
                break
            vistos.add(a)
            c = lee(a)
            if c < 0xE0 or (0xE0 <= c <= 0xEF and c not in (0xE8, 0xEA, 0xED, 0xEE)):
                a += 1
                continue
            if c == 0xE8:
                envs.add(lee(a + 1))
                a += 2
                continue
            if c == 0xEA:                          # salta
                pila.append(palabra(a + 1))
                a += 3
                break
            if c == 0xED:                          # llama
                pila.append(palabra(a + 1))
                a += 3
                continue
            if c == 0xEE:                          # vuelve
                a += 1
                break
            if c == 0xFF:
                a += 1
                break
            if c == 0xFE:
                pila.append(palabra(a + 2))
                a += 4
                continue
            a += 2                                  # 0xF0-0xFD [b]
        if a > ini:
            tramos.append((ini, a))


def recorre_envolvente(a, tramos, vistos):
    ini = a
    while a not in vistos:
        vistos.add(a)
        c = lee(a)
        if c == 0xFF:
            a += 1
            break
        if c == 0xFE:
            a += 4
            continue
        if c & 0xF0 == 0x10:
            a += 1
            c = lee(a)
        if c & 0xF0 == 0x20:
            a += 2 + (2 if c >= 0x28 else 0)
            continue
        a += 2
    if a > ini:
        tramos.append((ini, a))


def todo():
    """{'piezas': [(n, [pistas])], 'efectos': [...], 'musica': tramos,
    'envolventes': tramos, 'usadas': envolventes pedidas}"""
    tramos, envs, vistos = [], set(), set()
    piezas = []
    for k in range(N_PIEZAS):
        p = [palabra(PIEZAS + 6 * k + 2 * i) for i in range(3)]
        piezas.append((0x80 + k, p))
        for a in p:
            recorre_pista(a, tramos, envs, vistos)
    recorre_pista(PAUSA, tramos, envs, vistos)
    et, ev = [], set()
    efectos = [palabra(EFECTOS + 2 * k) for k in range(N_EFECTOS)]
    for a in efectos:
        recorre_envolvente(a, et, ev)
    for t in ENVOLVENTES:                  # las siete: el codigo las puede pedir todas
        for i in range(12):
            recorre_envolvente(palabra(t + 2 * i), et, ev)
    return {"piezas": piezas, "efectos": efectos, "musica": tramos,
            "envolventes": et, "usadas": sorted(envs)}


def main(argv):
    t = todo()
    for n, p in t["piezas"]:
        print("pieza 0x%02X: %s" % (n, " ".join("%04X" % a for a in p)))
    print("efectos:", " ".join("%04X" % a for a in t["efectos"]))
    print("envolventes usadas:", t["usadas"])
    ocupa = set()
    for i, j in t["musica"] + t["envolventes"]:
        ocupa.update(range(i, j))
    print("bytes de pistas: %d" % len(ocupa))


if __name__ == "__main__":
    main(sys.argv)
