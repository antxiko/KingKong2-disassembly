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
                     "%d destinos del despachador de 0x%04X (call en %s:%04X): %s"
                     % (n, t.lector.get((b, pc), 0x425F), nombre(b), pc, ", ".join("0x%04X" % w for w in dest[:8])
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
    for src, d, n in P.VOLTEADOS:            # (fuente, primer dibujo, cuantos)
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


def mitchel(t, bl):
    """p00:4FF0 (cada cuadro, desde p00:5C49): con los bancos 13-14-15, las
    poses de Mitchel (tools/figuras.py): dos tablas de 17 palabras y un RLE
    por pose que p00:5010 escribe en los patrones de sprite."""
    import figuras as F
    for tabla, que in ((0x7D9B, "0xC160 = 0"), (0x7DBD, "0xC160 distinto de 0")):
        bl.anota(B131415, tabla, tabla + 2 * F.POSES, "poses_%04X" % tabla,
                 "17 punteros, uno por pose de Mitchel (0xC310), cuando %s" % que,
                 "p00:5008", ancho=2)
        for n in range(F.POSES):
            a = P.palabra(tabla + 2 * n, B131415)
            _, fin = F.rle(a)
            bl.anota(B131415, a, fin, "pose_%04X" % a,
                     "la pose %d de Mitchel (%s): RLE de los dos patrones de 16x16 "
                     "(n con el bit 7 = n bytes tal cual; sin el, repetir el siguiente; "
                     "0 acaba)" % (n, que), "p00:5010")


def sprites_de_mitchel(t, bl):
    """Otros RLE en el formato de las poses (p00:5010), con los bancos 13-14-15:
    el arma de SHOT1 (p00:5046), la figura que sigue a Mitchel (p00:50B8,
    0xC600) y el de p00:50EA."""
    import figuras as F
    bl.anota(B123, 0x5064, 0x5064 + 22, "sprites_de_armas",
             "11 punteros: el sprite del arma de SHOT1 (0xC140 - 1; de 11 en adelante, "
             "el 7); p00:5046 lo sube a 0xF840", "p00:505E", ancho=2)
    for k in range(11):
        a = P.palabra(0x5064 + 2 * k, B123)
        _, fin = F.rle(a)
        bl.anota(B131415, a, fin, "arma_%04X" % a,
                 "el sprite del arma %d de SHOT1: RLE como el de las poses" % (k + 1), "p00:5010")
    bl.anota(B123, 0x50CA, 0x50CA + 16, "figura_que_sigue",
             "8 parejas [dy][dx]: donde va cada uno de los 8 sprites de la figura que "
             "sigue a Mitchel (0xC600); p00:507A", "p00:5090", ancho=2)
    bl.anota(B123, 0x50DA, 0x50DA + 16, "cuadros_de_la_que_sigue",
             "8 punteros: los patrones de la figura que sigue a Mitchel segun 0xC606 "
             "(direccion*2 + paso, p02:82E6); p00:50B8", "p00:50C4", ancho=2)
    for k in range(8):
        a = P.palabra(0x50DA + 2 * k, B123)
        _, fin = F.rle(a)
        bl.anota(B131415, a, fin, "la_que_sigue_%04X" % a,
                 "el cuadro %d de la figura que sigue a Mitchel: RLE como el de las poses" % k,
                 "p00:5010")
    _, fin = F.rle(0x8804)
    bl.anota(B131415, 0x8804, fin, "sprite_8804",
             "RLE como el de las poses que p00:50EA sube a 0xF840", "p00:50F3")


# p00:4BD0: figuras a pelo en siete pantallas. (estructura, pantallas); detras
# de las que llevan el bit 7 en su codigo va una segunda.
FIGURAS_A_PELO = [(0x9BA2, "0x31 y 0x34"), (0x90E4, "0x5C"), (0x94E9, "0x5C"),
                  (0x8D1F, "0x57"), (0x9998, "0x29"), (0x9A9D, "0x29"),
                  (0x95AE, "0x53 y 0x5D"), (0x98D3, "0x53 y 0x5D")]


def figuras_a_pelo(t, bl):
    """p00:4BD0 (bancos 13-14-15): [bandera][filas][bytes por fila][VRAM] y los
    bytes tal cual, fila a fila (128 bytes de VRAM entre una y otra); con la
    bandera, p00:4C57 los vuelve a escribir a la derecha en espejo. Y los
    tres RLE de p00:4C92."""
    for a, pant in FIGURAS_A_PELO:
        c, b = P.lee(a + 1, B131415), P.lee(a + 2, B131415)
        bl.anota(B131415, a, a + 5 + c * b, "figura_%04X" % a,
                 "figura a pelo de la pantalla %s: [bandera de espejo][%d filas][%d bytes]"
                 "[VRAM 0x%04X] y %d bytes" % (pant, c, b, P.palabra(a + 3, B131415), c * b),
                 "p00:4C2C", ancho=16)
    import figuras as F
    for a, v in ((0xB069, 0xF800), (0xB144, 0xF900), (0xB3E5, 0xFA00)):
        _, tramos = F.rle_con_saltos(a, B131415)
        for i, j in tramos:
            bl.anota(B131415, i, j, "sprites_%04X" % i,
                     "RLE (p00:45EF) que p00:4C92 sube a la VRAM 0x%04X" % v, "p00:4C9B")


def sonido(t, bl):
    """tools/sonido.py: las tablas del banco 4 y todas las pistas."""
    import sonido as S
    B456 = S.S
    bl.anota(B456, 0x60BC, 0x60BC + 20, "canal_en_reposo",
             "20 bytes que p04:605D copia a cada canal al empezar una pieza o un efecto",
             "p04:6060", ancho=16)
    bl.anota(B456, 0x6302, 0x6302 + 24, "mezclador",
             "4 parejas [y][o] por canal: lo que p04:62E9 hace con el registro 7 del PSG "
             "(tono, ruido, los dos o nada)", "p04:62F5", ancho=2)
    bl.anota(B456, S.NOTAS, S.NOTAS + 24, "periodos_de_las_notas",
             "12 palabras: el periodo del PSG de cada semitono en la octava mas grave; "
             "p04:63E5 lo divide por 2 una vez por octava", "p04:63DF", ancho=2)
    bl.anota(B456, S.EFECTOS, S.EFECTOS + 2 * S.N_EFECTOS, "efectos",
             "41 palabras: la pista de cada efecto de sonido (1-0x29); p04:60EF con "
             "0x6684 + 2*efecto", "p04:60F7", ancho=2)
    bl.anota(B456, S.PIEZAS, S.PIEZAS + 6 * S.N_PIEZAS, "piezas",
             "14 piezas de musica (0x80-0x8D): las pistas de los canales A, B y C; "
             "p04:607B con 0x66D8 + 6*(pieza & 0x7F)", "p04:6083", ancho=6)
    bl.anota(B456, S.PIEZAS + 6 * S.N_PIEZAS, S.PIEZAS + 6 * S.N_PIEZAS + 2, "pieza_8E",
             "una palabra mas, 0x7ABC (la pista vacia de la 0x8D): el principio de una "
             "pieza 0x8E que nadie pide", "p04:6083", ancho=2)
    bl.anota(B456, 0x7ABD, 0x7ABD + 24 * 7, "envolventes",
             "7 tablas de 12 palabras (una por nota): la envolvente de volumen de cada "
             "nota segun 0xE8 n; p04:640A", "p04:6438", ancho=2)
    t = S.todo()
    for i, j in t["musica"]:
        bl.anota(B456, i, j, "pista_%04X" % i,
                 "pista de musica (notas, silencios, tempo, octava, 0xE8 envolvente, "
                 "0xEA salta, 0xED llama, 0xFE repite, 0xFF acaba)", "p04:638A")
    for i, j in t["envolventes"]:
        bl.anota(B456, i, j, "sonido_%04X" % i,
                 "envolvente o efecto: [volumen|tono alto][tono bajo] por cuadro, 0x1X "
                 "ruido, 0x2X mezclador, 0xFE repite, 0xFF acaba", "p04:65A4")
    for a in (0x688B, 0x69DE, 0x6A0A):
        bl.anota(B456, a, a + 1, "ff_de_mas_%04X" % a,
                 "otro 0xFF detras del que acaba la pista: no se llega", "p04:65A4")


def tablas_de_p15(t, bl):
    """Con los bancos 13-14-15 (p00:42EA): nombres de los objetos, el rotulo
    del panel y las tablas de cada tipo de enemigo (1-68)."""
    import dialogos as D
    import objetos as O
    bl.anota(B131415, 0xA047, 0xA062, "rotulo_del_panel",
             "numeros de dibujo, 0xFE otra fila, 0xFF acaba: el rotulo del panel que "
             "p00:4A6F pinta con p00:492B en (0xA8, 0)", "p00:4A6F", ancho=9)
    bl.anota(B131415, 0xA062, 0xA06B, "has_cogido",
             "\"を とりました。\" (lo que p00:42F0 escribe detras del nombre del objeto)",
             "p00:42F6", ancho=9)
    bl.anota(B131415, O.NOMBRES + 2, O.NOMBRES + 2 * 0x25, "nombres_de_objetos",
             "36 punteros: el nombre de cada objeto (1-0x24); p00:441F con 0xA069 + 2*n "
             "(la palabra 0 son los dos ultimos bytes de p15:A062)", "p00:4426", ancho=2)
    for n in range(1, 0x25):
        a = P.palabra(O.NOMBRES + 2 * n, B131415)
        _, fin = D.texto(a, B131415)
        bl.anota(B131415, a, fin + 1, "nombre_de_objeto_%02X" % n,
                 "el nombre del objeto 0x%02X, hasta 0xFF" % n, "p00:4919", ancho=8)
    bl.anota(B131415, 0xA16D, 0xA16D + 69, "sprites_de_cada_enemigo",
             "69 bytes (el 0, 0xFF, no se usa): cuantos sprites lleva cada tipo de "
             "enemigo (1-68); p00:5A94 lo pone en ix+0x20", "p00:5A94", ancho=16)
    bl.anota(B131415, 0xA1B2, 0xA1B2 + 2 * 68, "colores_de_cada_enemigo",
             "68 punteros, uno por tipo: la lista de colores de sus sprites; p00:5BA7 "
             "con 0xA1B0 + 2*tipo", "p00:5BAF", ancho=2)
    listas = sorted(set(P.palabra(0xA1B2 + 2 * i, B131415) for i in range(68)))
    for i, a in enumerate(listas):
        fin = listas[i + 1] if i + 1 < len(listas) else 0xA265
        bl.anota(B131415, a, fin, "colores_%04X" % a,
                 "un color por sprite, que p00:5BBC copia a ix+0x25, +5, +10...",
                 "p00:5BBC", ancho=8)
    bl.anota(B131415, 0xA265, 0xA265 + 69, "byte_0d_de_cada_enemigo",
             "69 bytes (el 0 no se usa): lo que p00:5B10 pone en ix+0x0D al crear un "
             "enemigo de ese tipo", "p00:5B10", ancho=16)
    bl.anota(B131415, 0xA2AA, 0xA2AA + 24, "grupos_de_sprites",
             "12 punteros por ix+0 - 0xF0: grupos de sprites [dy][dx][patron][color] "
             "que p00:5E93 suma a la posicion", "p00:5E87", ancho=2)
    g = sorted(set(P.palabra(0xA2AA + 2 * i, B131415) for i in range(12)))
    for i, a in enumerate(g):
        fin = g[i + 1] if i + 1 < len(g) else 0xA3CA
        bl.anota(B131415, a, fin, "grupo_%04X" % a,
                 "%d sprites [dy][dx][patron][color]" % ((fin - a) // 4), "p00:5E96", ancho=4)
    bl.anota(B131415, 0xA3CA, 0xA3CA + 68, "tipo_al_aparecer",
             "68 bytes, uno por tipo: el que p00:5DCA pone en ix+0 al aparecer el enemigo",
             "p00:5DC9", ancho=16)


def nombres_de_enemigos(t, bl):
    """p01:61D2: con el banco 15 en 0xA000, el nombre del tipo de enemigo t
    es la cadena (0xFF acaba) a la que apunta 0xBA76 + 2*t (t = 1..68; el 0
    no se usa); p00:4919 la escribe. p01:6283: con el banco 9, su fuerza
    (STR del panel) es el byte 0xBC4F + t - 1."""
    s = (1, 2, 15)
    bl.anota(s, 0xBA78, 0xBA78 + 2 * 68, "nombres_de_enemigos",
             "68 punteros, uno por tipo de enemigo (1-68), a su nombre; p01:61DD los lee "
             "con 0xBA76 + 2*tipo", "p00:4304", ancho=2)
    for k in range(1, 69):
        a = P.palabra(0xBA76 + 2 * k, s)
        f = a
        while P.lee(f, s) != 0xFF:
            f += 1
        bl.anota(s, a, f + 1, "nombre_%d" % k,
                 "el nombre del enemigo %d (0x00 es espacio, 0x8D el punto; 0xFF acaba)" % k,
                 "p00:4919")
    bl.anota((1, 2, 9), 0xBC4F, 0xBC4F + 68, "fuerza_de_cada_enemigo",
             "68 bytes, uno por tipo de enemigo: la fuerza (STR) que se ve en el panel; "
             "p01:6287 con 0xBC4F + tipo - 1", "p01:628A")


def enemigos_de_cada_pantalla(t, bl):
    """p00:5996: con los bancos 13-14-15, la palabra 0x6000 + 2*pantalla
    (pantallas 0x00-0x89) apunta a la lista de enemigos: un contador y
    entradas [tipo][x][y]; el bit 7 del tipo, que solo sale en el plano
    alterno (0xC131). p00:5A69 da de alta cada uno en una ficha de 0xD000."""
    bl.anota(B131415, 0x6000, 0x6000 + 2 * 0x8A, "enemigos_de_cada_pantalla",
             "0x8A punteros, uno por pantalla (0x00-0x89), a su lista de enemigos",
             "p00:59A5", ancho=2)
    hechas = set()
    for n in range(0x8A):
        a = P.palabra(0x6000 + 2 * n, B131415)
        if a in hechas:
            continue
        hechas.add(a)
        c = P.lee(a, B131415)
        bl.anota(B131415, a, a + 1 + 3 * c, "enemigos_%04X" % a,
                 "%d enemigos: [tipo][x][y] (bit 7 del tipo: solo en el plano alterno)" % c,
                 "p00:59A9", ancho=3)


def objetos(t, bl):
    """tools/objetos.py y p03:B9E6: los dibujos, como se guarda cada objeto
    y lo que suelta cada enemigo."""
    import objetos as O
    bl.anota(B789, O.FUENTE, O.FUENTE + 128 * O.N, "iconos_de_objetos",
             "38 dibujos de 16x16 a 4 bits, 128 bytes cada uno: el objeto n es el "
             "dibujo n-1; p00:4AED los sube a la VRAM 0xB800", "p00:4AED", ancho=8)
    bl.anota(B123, O.CLASE + 1, O.CLASE + 0x25, "clase_de_cada_objeto",
             "un byte por objeto (1-0x24): bit 7, sin cuenta; nibble bajo 0, lista "
             "de SHOT1; si no, de SHOT2 (p01:79E3 y p01:7A27 con 0x7A35 + objeto)",
             "p01:79E3", ancho=12)
    bl.anota(B123, 0xBA66, 0xBA66 + 69, "lo_que_suelta_cada_enemigo",
             "69 bytes, uno por tipo de enemigo (el 69, 0xFF, es de un tipo 0x45 que "
             "no hay): el numero de rutina de p03:BA06 (0xFF = no suelta nada); "
             "p03:B9E6 con 0xBA66 + tipo - 1",
             "p03:B9ED", ancho=16)
    bl.anota(B123, 0xBA06, 0xBA06 + 2 * 48, "rutinas_de_lo_que_sueltan",
             "48 palabras: la rutina que suelta el objeto de cada enemigo (p03:BA66 "
             "usa las 47 primeras; la ultima, 0xBB18, no la pide ningun tipo); "
             "p03:B9FB salta con jp (hl)", "p03:B9FB", ancho=2)


def sprites_de_enemigos(t, bl):
    """p00:4CB3 y p00:5253 (tools/figuras.py): los patrones de sprite de cada
    pantalla y los graficos de los jefes."""
    import figuras as F
    lista = [P.lee(0xB0B7 + n, B789) for n in range(N_PANTALLAS)]
    _, tramos = F.rle_con_saltos(0xB000, B789)
    for i, j in tramos:
        bl.anota(B789, i, j, "sprites_comunes",
                 "RLE de los 192 bytes de patrones de sprite que p00:4CB6 sube a la "
                 "VRAM 0xF940 (patrones 0x28-0x3F) al entrar en cada pantalla", "p00:4CBC")
    bl.anota(B789, 0xB0B7, 0xB0B7 + N_PANTALLAS, "lista_de_sprites_de_cada_pantalla",
             "un byte por pantalla: el numero de lista de sprites (p00:5630); p00:4CB3 "
             "con 0xB0B7 + pantalla", "p00:4CC2", ancho=16)
    bl.anota(B123, 0x5630, 0x5630 + 2 * (max(lista) + 1), "listas_de_sprites",
             "%d palabras: la lista de patrones de sprite de cada numero (p09:B0B7)"
             % (max(lista) + 1), "p00:4CC9", ancho=2)
    for k in sorted(set(lista)):
        a = P.palabra(0x5630 + 2 * k, B123)
        ini = a
        while True:
            e = [P.lee(a + i, B123) for i in range(4)]
            if e[0] & 0x0F == 0:
                break
            if e[0] & 0x0F == 1:
                s = F.TRIO_NIBBLE.get(e[0] & 0xF0, B131415)
                _, tramos = F.rle_con_saltos(e[2] | (e[3] << 8), s)
                for i, j in tramos:
                    bl.anota(s, i, j, "sprites_%04X" % i,
                             "RLE de patrones de sprite (n con el bit 7 = n bytes tal "
                             "cual; sin el, repetir el siguiente; 0x80 [palabra] sigue "
                             "en otra direccion; 0 acaba); lista %d" % k, "p00:45EF")
            a += 4
        bl.anota(B123, ini, a + 1, "lista_de_sprites_%d" % k,
                 "entradas [bancos | accion][destino][fuente]: 1 RLE, 2 espejo, 3 "
                 "del reves, 4 las dos; un 0 acaba", "p00:4CD2", ancho=4)
    bl.anota(B131415, 0x6620, 0x6620 + N_PANTALLAS, "jefe_de_cada_pantalla",
             "un byte por pantalla: los graficos de jefe que sube p00:4B15 (0 = "
             "ninguno); los cuatro ultimos son los primeros de p13:66AA", "p00:4B1E", ancho=16)
    for k in range(1, 4):
        bl.anota(B131415, 0x66D2 + 8 * (k - 1), 0x66D2 + 8 * k, "juegos_de_jefe_%d" % k,
                 "cuatro punteros a RLE: los cuatro juegos de patrones del jefe %d" % k,
                 "p00:4B29", ancho=2)
        for i in range(4):
            _, tramos = F.rle_con_saltos(P.palabra(0x66D2 + 8 * (k - 1) + 2 * i, B131415), B131415)
            for x, y in tramos:
                bl.anota(B131415, x, y, "jefe_%04X" % x,
                         "RLE de 256 bytes: juego %d del jefe %d (p00:4BB4)" % (i, k), "p00:4BB4")
    bl.anota(B131415, 0x66AA, 0x66AA + 40, "modo_de_cada_grafico",
             "40 bytes: bit 0 = el grafico de jefe va en RLE (p00:45EF); si no, se "
             "copian 256 bytes tal cual (de la RAM 0xE840-0xEB40); p00:525B",
             "p00:5262", ancho=8)
    bl.anota(B131415, 0x7D4B, 0x7D4B + 80, "graficos_de_jefe",
             "40 palabras: de donde sale cada grafico de jefe (0xDF94 = 1..40)",
             "p00:5272", ancho=2)
    for k in range(40):
        if P.lee(0x66AA + k, B131415) & 1:
            _, tramos = F.rle_con_saltos(P.palabra(0x7D4B + 2 * k, B131415), B131415)
            for x, y in tramos:
                bl.anota(B131415, x, y, "grafico_%04X" % x,
                         "RLE de los patrones 224-255 del grafico de jefe %d" % (k + 1),
                         "p00:528B")


B126 = (1, 2, 6)
# Los textos del final (p06:AACC los escribe letra a letra, uno cada cuatro
# cuadros con p06:AADD): (direccion, instruccion que la carga).
TEXTOS_DEL_FINAL = [(0xAD44, "p06:A8DF"), (0xAD8A, "p06:A8F8"), (0xADB6, "p06:A916"),
                    (0xADE1, "p06:A943"), (0xAE24, "p06:A97F"), (0xAE6F, "p06:A9D3"),
                    (0xAEA4, "p06:AA26"), (0xAEBD, "p06:AA49"), (0xAF03, "p06:AAAD"),
                    (0xAF39, "p06:A711")]


def el_final(t, bl):
    """p06:A6CF y los despachadores de p06:A8AA: las dos escenas del final."""
    import dialogos as D
    for a, quien in TEXTOS_DEL_FINAL:
        _, fin = D.texto(a, B126)
        bl.anota(B126, a, fin + 1, "texto_%04X" % a,
                 "texto del final: letras de la fuente, 0xFE [x] salta de renglon, "
                 "0xFF acaba (p06:AADD)", quien)
    for a, quien in ((0xA794, "p06:A788"), (0xA879, "p06:A6F9")):
        bl.anota(B126, a, a + 49, "paleta_%04X" % a,
                 "paleta del final: [color][RB][G] ... 0xFF (p00:46CF); p06:A73B y "
                 "p06:A788 la copian a 0xCF00", quien, ancho=3)
    bl.anota(B126, 0xAF41, 0xAF41 + 77 * 32, "dibujos_del_final",
             "77 dibujos de 8x8 a 4 bits de la escena del final; p06:A83F los sube a la "
             "hoja de la pagina 1 desde (8, 0) con p00:48A6", "p06:A83A", ancho=4)
    bl.anota(B126, 0xAD1C, 0xAD1C + 32, "sprites_del_final",
             "8 sprites [y][x][patron][color] que p06:AC1E y p06:AC32 copian a 0xE600/0xE620",
             "p06:AC1E", ancho=4)
    bl.anota(B126, 0xAD3C, 0xAD3C + 8, "sprites_del_final_2",
             "2 sprites [y][x][patron][color] que p06:ACCF copia a 0xE640", "p06:ACCF", ancho=4)


def conversaciones(t, bl):
    """tools/dialogos.py: quien habla en cada pantalla, la lista de lineas de
    cada conversacion y sus textos."""
    import dialogos as D
    bl.anota(B101112, D.TABLA_PANTALLA + 1, D.TABLA_PANTALLA + 0x72, "conversacion_de_cada_pantalla",
             "0x71 bytes, uno por pantalla (1-0x71): la conversacion que empieza al "
             "pararse alli (0 = nadie); p01:7E60 con 0xA5FE + pantalla", "p01:7E60", ancho=16)
    bl.anota(B123, D.PAREJAS, D.PAREJAS + 19, "conversaciones_de_los_que_aparecen",
             "[pantalla][conversacion] ... 0: la del objeto 0x25 (alguien que aparece al "
             "matar a un enemigo); p01:7EE0", "p01:7EE0", ancho=2)
    ini = D.TABLA_CONV + 2
    bl.anota(B101112, ini, ini + 2 * D.N_CONVERSACIONES, "conversaciones",
             "%d palabras: la lista de lineas de cada conversacion (desde la 1); "
             "p02:80B3 con 0xA66E + 2*conversacion" % D.N_CONVERSACIONES, "p02:80B6", ancho=2)
    for c in range(1, D.N_CONVERSACIONES + 1):
        lista = P.palabra(D.TABLA_CONV + 2 * c, B101112)
        lineas = D.lineas(c)
        bl.anota(B101112, lista, lista + 2 * len(lineas) + 2, "lineas_%02X" % c,
                 "las %d lineas de la conversacion 0x%02X y un 0 de fin" % (len(lineas), c),
                 "p02:80BC", ancho=2)
        for a, acc, txt in lineas:
            _, fin = D.texto(a + 1)
            bl.anota(B101112, a, fin + 1, "linea_%04X" % a,
                     "accion 0x%02X y texto hasta 0xFF (conversacion 0x%02X)" % (acc, c),
                     "p02:80CA", ancho=16)


RECORRIDOS = [enemigos_de_cada_pantalla, nombres_de_enemigos, mitchel, cabecera, tablas_del_despachador, pantallas, vecinas, juegos_de_dibujos,
              bloques_de_cada_juego, paletas, figuras_fijas, portadas, objetos, conversaciones, sprites_de_enemigos, el_final, sprites_de_mitchel, figuras_a_pelo, sonido, tablas_de_p15]


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
