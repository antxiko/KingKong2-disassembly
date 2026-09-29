#!/usr/bin/env python3
"""Declara los bloques de datos que el codigo LEE, recorriendolos como el cartucho.

Un rango de datos no se declara porque sobre: se declara porque hay una
instruccion que lo lee. Cada recorrido de abajo sigue a una rutina concreta
-la que se nombra en su docstring- y saca el principio y el final del bloque
de recorrer el formato como ella, o de la cuenta que le pasa quien la llama.
El banco al que cae cada puntero sale del trio de bancos que esa rutina pone
(tools/pantalla.py lee con el mismo reparto).

Lo que sale se escribe, banco a banco, en una seccion delimitada de
src/pNN.notes que esta herramienta reescribe entera; lo de fuera no lo toca.
Un bloque que pise codigo trazado o una D escrita a mano NO se escribe: se
avisa, porque algo esta mal y hay que mirarlo.

Uso: bloques.py              informa de lo que encontraria
     bloques.py --escribe    y lo escribe en las notas
"""
import json
import os
import sys
from collections import defaultdict

AQUI = os.path.dirname(os.path.abspath(__file__))
RAIZ = os.path.dirname(AQUI)
sys.path.insert(0, AQUI)

from bancos import traza_completa                                  # noqa: E402
from paginas import ORG, TAM_PAGINA, N_PAGINAS, nombre              # noqa: E402
import pantalla as P                                                # noqa: E402
import mapa as M                                                    # noqa: E402

ROM = os.path.join(RAIZ, "kingkong2.rom")
SRC = os.path.join(RAIZ, "src")
WORK = os.path.join(RAIZ, "work")

INI = "# --- BLOQUES QUE LEE EL CODIGO (seccion que reescribe tools/bloques.py; no editar a mano) ---"
FIN = "# --- fin de los bloques de bloques.py ---"

B123, B456, B789 = (1, 2, 3), (4, 5, 6), (7, 8, 9)
B101112, B131415 = (10, 11, 12), (13, 14, 15)
N_PANTALLAS = 0x8E            # 0x00-0x8D (tools/mapa.py)


def banco_de(a, s):
    if 0x4000 <= a < 0x6000:
        return 0
    return s[(a - 0x6000) >> 13]


def trozos(s, a, f):
    """[a, f) de la ventana del Z80, partido por bancos: [(banco, ini, fin)]."""
    fuera = []
    while a < f:
        corte = min(f, (a & 0xE000) + TAM_PAGINA)
        fuera.append((banco_de(a, s), a, corte))
        a = corte
    return fuera


class Bloques:
    """{banco: {(ini, fin): {"nom", "que", "desde": set, "ancho"}}}"""

    def __init__(self):
        self.d = defaultdict(dict)
        self.avisos = []

    def anota(self, s, a, f, nom, que, quien, ancho=16):
        for b, i, j in trozos(s, a, f):
            e = self.d[b].setdefault((i, j), {"nom": nom if i == a else "%s_cola" % nom,
                                              "que": que, "desde": set(), "ancho": ancho})
            e["desde"].add(quien)
            if i != a:
                e["que"] = "%s (sigue del banco anterior, 0x%04X)" % (que, a)


# ------------------------------------------------------------------ formatos
def fin_lista_paleta(a, s):
    """p00:46CF: [color][RB][G] ... 0xFF."""
    while P.lee(a, s) != 0xFF:
        a += 3
    return a + 1


def recorre_lista_hoja(a, s):
    """p00:4AB9: [destino][cuantos][fuente] ... (0xFE cambia a 10-11-12)
    0xFF. Devuelve (fin, [(banco_trio, fuente, cuantos, destino)])."""
    fuentes = []
    while True:
        v = P.lee(a, s)
        if v == 0xFF:
            return a + 1, fuentes
        if v == 0xFE:
            s = B101112
            a += 1
            v = P.lee(a, s)
        n = P.lee(a + 1, s)
        src = P.palabra(a + 2, s)
        fuentes.append((s, src, n or 256, v))
        a += 4


def fin_texto(a, s):
    """p00:4915: [x][y] letras ..., 0xFE y otra posicion, 0xFF acaba."""
    a += 2
    while True:
        c = P.lee(a, s)
        a += 1
        if c == 0xFF:
            return a
        if c == 0xFE:
            a += 2


def fin_composicion(a, s):
    """p00:5FDA: numeros de dibujo, 0xFE [dx], 0xFF acaba."""
    while True:
        c = P.lee(a, s)
        a += 1
        if c == 0xFF:
            return a
        if c == 0xFE:
            a += 1


# ------------------------------------------------------------------ recorridos
def cabecera(t, bl):
    """0x4000: 'AB' e INIT (0x4269); 0x4010: 'CD', 0x07, 0x45 (RC-745), la
    cabecera que lee el Konami Game Master."""
    bl.anota(B123, 0x4000, 0x4010, "cabecera_ab",
             "la cabecera del cartucho: 'AB', INIT (0x4269) y STATEMENT, DEVICE y TEXT a cero",
             "la BIOS")
    bl.anota(B123, 0x4010, 0x4014, "cabecera_de_konami",
             "'CD', 0x07 y 0x45: la cabecera que lee el Konami Game Master (RC-745)",
             "el Game Master", ancho=4)


def tablas_del_despachador(t, bl):
    """Las tablas pegadas detras de cada `call 0x425F` (tools/bancos.py)."""
    for (b, pc), (tab, n, dest, ss) in sorted(t.tablas.items()):
        if n:
            bl.anota(ss, tab, tab + 2 * n, "tabla_%04X" % tab,
                     "%d destinos del despachador de 0x425F (call en %s:%04X): %s"
                     % (n, nombre(b), pc, ", ".join("0x%04X" % w for w in dest[:8])
                        + (" ..." if n > 8 else "")),
                     "%s:%04X" % (nombre(b), pc), ancho=2)


def pantallas(t, bl):
    """p00:4F0B: los 5x5 bloques de cada pantalla, 25 bytes, en el banco 10
    desde 0x6000; y los 14 planos alternos del banco 4 desde 0x7E76."""
    bl.anota(B101112, 0x6000, 0x6000 + 25 * N_PANTALLAS, "bloques_de_cada_pantalla",
             "25 bytes por pantalla (0x00-0x8D, 5 filas de 5 bloques): el bloque de cada "
             "casilla; p00:4F0B los lee con 0x6000 + 25*pantalla + 5*fila + columna",
             "p00:4F1B", ancho=25)
    bl.anota(B456, 0x7E76, 0x7E76 + 25 * 14, "planos_alternos",
             "14 planos de 25 bloques: la parte que se ve de las pantallas partidas "
             "(0xC131 = 1-14, que pone p06:BEC5); p00:4F0B los lee desde 0x7E76 + "
             "25*(0xC131-1)", "p00:4F1B", ancho=25)


def vecinas(t, bl):
    """p01:616B: 4 bytes por pantalla en p09:B1C5 (arriba, abajo, izquierda,
    derecha); p01:60FA: la tabla de las 12 salidas especiales de p01:611F."""
    bl.anota((1, 2, 9), 0xB1C5, 0xB1C5 + 4 * N_PANTALLAS, "vecinas",
             "la pantalla a la que se sale por arriba, abajo, izquierda y derecha "
             "(0xFF no hay salida, 0xF0-0xFB especial); p01:6173 con 0xB1C5 + "
             "4*pantalla + lado", "p01:6183", ancho=4)
    bl.anota(B123, 0x611F, 0x611F + 3 * 12, "salidas_especiales",
             "12 salidas especiales (0xF0-0xFB): pantalla de llegada y punto (x, y) donde "
             "aparece Mitchel; p01:60FA con 0x611F + 3*(n-0xF0)", "p01:6109", ancho=3)


def juegos_de_dibujos(t, bl):
    """p00:4A7B: un nibble por cueva (0x6000) y por pantalla (0x6009) en el
    banco 7; la lista de cada juego (p00:54EC), el trio de bancos con el que
    se recorre (p00:4AFB) y los dibujos que sube; la lista comun de 0x6050."""
    bl.anota(B789, 0x6000, 0x6009, "juego_de_cada_plano",
             "18 nibbles, uno por plano alterno (0xC131 - 1; par = nibble alto): el "
             "juego de dibujos", "p00:4A96")
    bl.anota(B789, 0x6009, 0x6009 + (N_PANTALLAS + 1) // 2, "juego_de_cada_pantalla",
             "un nibble por pantalla (pantalla/2; par = nibble alto): el juego de "
             "dibujos (0xC148)", "p00:4A96")
    bl.anota(B123, 0x4AFB, 0x4AFB + 2 * 13, "trio_de_cada_juego",
             "13 destinos del despachador de p00:4AF8: la puerta de p00:42C6 que pone "
             "el trio de bancos con el que se recorre la lista de cada juego",
             "p00:4AF8", ancho=2)
    bl.anota(B123, 0x54EC, 0x54EC + 2 * 13, "lista_de_cada_juego",
             "13 punteros, uno por juego de dibujos, a su lista de subida", "p00:4AB5", ancho=2)
    listas = [(0x6050, B789, "comun")]
    for j in range(13):
        tri = P.TRIOS[P.palabra(0x4AFB + 2 * j, B123)]
        listas.append((P.palabra(0x54EC + 2 * j, B123), tri, "del juego %d" % j))
    hechos = set()
    for a, s, que in listas:
        if a in hechos:
            continue
        hechos.add(a)
        fin, fuentes = recorre_lista_hoja(a, s)
        bl.anota(s, a, fin, "lista_hoja_%04X" % a,
                 "lista %s: [destino][cuantos][fuente], 0xFE pasa a los bancos 10-11-12, "
                 "0xFF acaba (p00:4AB9)" % que, "p00:4AB9", ancho=4)
        for ss, src, n, dest in fuentes:
            if not 0x4000 <= src < 0xC000:
                # p00:5546, la lista del juego 2: `36 0A 44 0A` manda subir 10
                # dibujos (0x36-0x3F) desde 0x0A44, que es la ROM de la BIOS.
                # Ninguna pantalla de ese juego los usa (comprobado).
                bl.avisos.append("la lista 0x%04X sube %d dibujos desde 0x%04X, fuera del "
                                 "cartucho (la BIOS)" % (a, n, src))
                continue
            bl.anota(ss, src, src + 32 * n, "dibujos_%04X" % src,
                     "%d dibujos de 8x8 a 4 bits para la hoja de la pagina 1 (desde el "
                     "dibujo %d); los sube p00:48A6 por la lista 0x%04X" % (n, dest, a),
                     "p00:48A6", ancho=4)


def bloques_de_cada_juego(t, bl):
    """p00:4F46: 4x4 dibujos por bloque (16 bytes), en la tabla que apunta
    p00:4F64 + 2*juego, con los bancos 7-8-9. Se declara hasta el bloque mas
    alto que usa alguna pantalla (o plano) de ese juego."""
    bl.anota(B123, 0x4F64, 0x4F64 + 2 * 13, "bloques_de_cada_juego",
             "13 punteros, uno por juego de dibujos, a sus bloques de 4x4 dibujos",
             "p00:4F4D", ancho=2)
    usados = defaultdict(int)
    for n in range(N_PANTALLAS):
        j = P.juego_de_dibujos(n)
        usados[j] = max(usados[j], max(P.bloques_de(n)) + 1)
    for c in range(1, 15):
        j = P.juego_de_dibujos(0, c)
        usados[j] = max(usados[j], max(P.bloques_de(0, c)) + 1)
    for j, nb in sorted(usados.items()):
        a = P.palabra(0x4F64 + 2 * j, B789)
        bl.anota(B789, a, a + 16 * nb, "bloques_juego_%d" % j,
                 "los %d bloques del juego de dibujos %d: 16 numeros de dibujo cada uno "
                 "(4 filas de 4); hasta el mas alto que usa una pantalla" % (nb, j),
                 "p00:4F5F", ancho=16)


def paletas(t, bl):
    """p00:4DD2 con los bancos 7-8-9: la lista de 0x6128, la del juego
    (0x6059 + 2*juego) y la de la pantalla (0x61CF + 2*byte de 0x6141)."""
    bl.anota(B789, 0x6128, fin_lista_paleta(0x6128, B789), "paleta_comun",
             "[color][RB][G] ... 0xFF: la paleta de todas las pantallas", "p00:46CF", ancho=3)
    bl.anota(B789, 0x6059, 0x6059 + 2 * 13, "paleta_de_cada_juego",
             "13 punteros a la lista de colores de cada juego de dibujos", "p00:4DE1", ancho=2)
    bl.anota(B789, 0x6141, 0x6141 + N_PANTALLAS, "paleta_de_cada_pantalla",
             "un byte por pantalla: que lista de 0x61CF le toca", "p00:4DF1")
    mx = max(P.lee(0x6141 + n, B789) for n in range(N_PANTALLAS))
    bl.anota(B789, 0x61CF, 0x61CF + 2 * (mx + 1), "listas_de_pantalla",
             "%d punteros a listas de colores por pantalla" % (mx + 1), "p00:4DF5", ancho=2)
    listas = {P.palabra(0x6059 + 2 * j, B789) for j in range(13)}
    listas |= {P.palabra(0x61CF + 2 * k, B789) for k in range(mx + 1)}
    for a in sorted(listas):
        bl.anota(B789, a, fin_lista_paleta(a, B789), "colores_%04X" % a,
                 "[color][RB][G] ... 0xFF", "p00:46CF", ancho=3)


def figuras_fijas(t, bl):
    """p00:4E4D y p00:49D8: la estatua y lo que va con ella."""
    bl.anota(B131415, 0xB9A5, 0xB9A5 + 81, "figura_estatua",
             "9x9 numeros de dibujo de la estatua de King Kong (0 = no pinta); "
             "p00:4EB5 la pinta con transparencia en 0x15, 0x28, 0x60 y 0x89",
             "p00:4EC1", ancho=9)
    bl.anota(B131415, 0xB9F6, 0xB9F6 + 15, "figura_de_la_60",
             "3 columnas x 5 filas de dibujos: las dos piezas de la pantalla 0x60",
             "p00:4EC1", ancho=3)
    for src, n, d in P.VOLTEADOS:
        bl.anota(B101112, src, src + 32 * n, "volteados_%04X" % src,
                 "%d dibujos de 8x8 que p00:4A1B sube del reves (desde el %d): la mitad "
                 "derecha de la estatua" % (n, d), "p00:4A24", ancho=4)


def portadas(t, bl):
    """tools/titulo.py: Konami (p00:5F3F) y el titulo (p06:BA79)."""
    bl.anota(B123, 0x46AF, 0x46AF + 32, "paleta_inicial",
             "los 16 colores [RB][G] que pone p00:469C", "p00:46A2", ancho=2)
    bl.anota(B123, 0x5FA7, fin_lista_paleta(0x5FA7, B123), "paleta_de_konami",
             "[color][RB][G] ... 0xFF", "p00:46CF", ancho=3)
    k = (1, 8, 3)
    for a, n, que in ((0x9C3B, 13, "color 1"), (0x9CA3, 13, "color 2"), (0x9D0B, 26, "color 3")):
        bl.anota(k, a, a + 8 * n, "konami_%04X" % a,
                 "%d letras de 1 bit del logotipo de Konami (%s); p00:4867" % (n, que),
                 "p00:48ED", ancho=8)
    bl.anota(k, 0x9BFA, fin_composicion(0x9BFA, k), "konami_composicion",
             "como se monta el logotipo de Konami: numeros de dibujo, 0xFE [dx] baja una "
             "fila, 0xFF acaba (p00:5FDA)", "p00:5FDB")
    s = (1, 5, 6)
    for a, n, que in ((0xA2A1, 36, "color 6"), (0xA3C1, 52, "color 5"), (0xA561, 29, "color 8")):
        bl.anota(s, a, a + 8 * n, "titulo_%04X" % a,
                 "%d letras de 1 bit del rotulo del titulo (%s); p06:B993" % (n, que),
                 "p00:48ED", ancho=8)
    for a, c, f in ((0xB8E8, 4, 5), (0xB8FC, 7, 5), (0xB91F, 3, 5), (0xB92E, 5, 6), (0xB94C, 12, 3)):
        bl.anota(s, a, a + c * f, "titulo_figura_%04X" % a,
                 "%d columnas x %d filas de dibujos del rotulo (p06:BA99, con transparencia)"
                 % (c, f), "p00:4EC1", ancho=c)
    bl.anota(s, 0xBAE7, fin_texto(0xBAE7, s), "creditos",
             "los creditos del titulo: [x][y] letras, 0xFE otra posicion, 0xFF acaba (p00:4915)",
             "p00:4919")
    bl.anota(s, 0xBA6E, 0xBA6E + 11, "paleta_del_titulo",
             "11 bytes que p06:B97C copia a 0xDFB0 (contador y [color][RB][G] x3 + 0xFF), "
             "la lista de p06:B98D", "p06:B984")
    for a in (0xBA5A, 0xBA64):
        bl.anota(s, a, fin_lista_paleta(a, s), "brillo_%04X" % a,
                 "[color][RB][G] ... 0xFF: a donde sube (y con que parpadea) el rotulo "
                 "(p06:B9C8, p06:BA46)", "p00:46CF", ancho=3)
    bl.anota(s, 0x9F99, 0x9F99 + 8 * 96, "fuente",
             "96 letras de 1 bit (desde el '0', 0x30): la fuente; p01:6010 la sube dos veces "
             "(color 14 y color 3)", "p00:48ED", ancho=8)
    bl.anota(s, 0xA299, 0xA299 + 8, "letra_copyright",
             "el (c) de los creditos: una letra de 1 bit que p01:602F pone en el sitio de "
             "la 0x3A", "p00:48ED", ancho=8)


RECORRIDOS = [cabecera, tablas_del_despachador, pantallas, vecinas, juegos_de_dibujos,
              bloques_de_cada_juego, paletas, figuras_fijas, portadas]


# ------------------------------------------------------------------ escritura
def ocupado(p):
    """bytearray del banco: 1 = codigo trazado, 2 = D escrita fuera de la seccion."""
    o = ORG[p]
    m = bytearray(TAM_PAGINA)
    ruta = os.path.join(WORK, nombre(p) + ".trace.json")
    if os.path.exists(ruta):
        for k, a, b in json.load(open(ruta))["blocks"]:
            if k == "c":
                for i in range(a - o, b - o):
                    m[i] = 1
    notas = os.path.join(SRC, nombre(p) + ".notes")
    dentro = False
    if os.path.exists(notas):
        for ln in open(notas, encoding="utf-8"):
            if ln.startswith(INI):
                dentro = True
            elif ln.startswith(FIN):
                dentro = False
            elif not dentro and ln.startswith("D "):
                q = ln.split(None, 3)
                for i in range(max(0, int(q[1], 0) - o), min(TAM_PAGINA, int(q[2], 0) - o)):
                    m[i] = 2
    return m


def une(bloques_banco):
    """Los que se solapan se juntan en uno."""
    fuera = []
    for (a, f), e in sorted(bloques_banco.items()):
        if fuera and a < fuera[-1][1]:
            pa, pf, pe = fuera[-1]
            fuera[-1] = (pa, max(pf, f), pe + [(a, f, e)])
        else:
            fuera.append((a, f, [(a, f, e)]))
    return fuera


def linea_d(a, f, partes):
    e0 = partes[0][2]
    desde = sorted({d for _, _, e in partes for d in e["desde"]})
    if len(partes) == 1:
        txt = e0["que"]
    else:
        txt = "%s; se solapan %d bloques (%s)" % (
            e0["que"], len(partes),
            ", ".join("0x%04X-0x%04X" % (x, y) for x, y, _ in partes[:6]))
    txt += "; lo leen %s" % ", ".join(desde[:8])
    if len(desde) > 8:
        txt += " y %d mas" % (len(desde) - 8)
    txt += " (%d bytes)" % (f - a)
    return ["D 0x%04X 0x%04X %s  %s" % (a, f, e0["nom"], txt), "F 0x%04X %d" % (a, e0["ancho"])]


def escribe(p, lineas):
    ruta = os.path.join(SRC, nombre(p) + ".notes")
    viejas = open(ruta, encoding="utf-8").read().split("\n") if os.path.exists(ruta) else []
    nuevas, dentro, puesto = [], False, False
    for ln in viejas:
        if ln.startswith(INI):
            dentro = True
            if lineas:
                nuevas += [INI] + lineas + [FIN]
            puesto = True
            continue
        if ln.startswith(FIN):
            dentro = False
            continue
        if not dentro:
            nuevas.append(ln)
    if not puesto and lineas:
        while nuevas and not nuevas[-1].strip():
            nuevas.pop()
        nuevas += ["", INI] + lineas + [FIN, ""]
    open(ruta, "w", encoding="utf-8", newline="\n").write("\n".join(nuevas).rstrip("\n") + "\n")


def main(argv):
    rom = open(ROM, "rb").read()
    t, _ = traza_completa(rom, SRC)
    bl = Bloques()
    for r in RECORRIDOS:
        r(t, bl)
    total = 0
    for p in range(N_PAGINAS):
        m = ocupado(p)
        buenas, conflictos = [], []
        for a, f, partes in une(bl.d.get(p, {})):
            marcas = set(m[i - ORG[p]] for i in range(a, f))
            if marcas == {2}:
                continue
            pisa = marcas - {0}
            if pisa:
                conflictos.append("  %s 0x%04X-0x%04X (%s) pisa %s" % (
                    nombre(p), a, f, partes[0][2]["nom"],
                    " y ".join({1: "codigo trazado", 2: "una D escrita a mano"}[x] for x in sorted(pisa))))
                continue
            buenas.append((a, f, partes))
        n = sum(f - a for a, f, _ in buenas)
        total += n
        if buenas or conflictos:
            print("%s: %d bloques, %d bytes%s" % (nombre(p), len(buenas), n,
                                                  ", %d en conflicto" % len(conflictos) if conflictos else ""))
            for c in conflictos:
                print(c)
        if "--escribe" in argv:
            lineas = []
            for a, f, partes in buenas:
                lineas += linea_d(a, f, partes)
            escribe(p, lineas)
    print("en total: %d bytes en bloques que lee el codigo" % total)
    for x in bl.avisos:
        print("aviso: " + x)
    return 0


if __name__ == "__main__":
    sys.exit(main(sys.argv[1:]))
