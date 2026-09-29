#!/usr/bin/env python3
"""Anota lo que ya esta identificado: llamadas a rutinas con nombre, RAM,
campos de las fichas y cambios de banco.

Una vez se sabe que 0xC303 es la y de Mitchel no tiene merito -ni fiabilidad-
escribir a mano "la y de Mitchel" cada vez que aparece. Esto lo hace de una
vez, en una seccion delimitada de src/pNN.notes que reescribe entera.

- LLAMADAS: en cada `call`/`jp` a una rutina con nombre, su nombre y lo que
  hace. Las rutinas y lo que hacen salen de las propias notas (la L y la C o
  la primera B de su direccion). Si el destino esta en otra ranura, el banco
  que hay alli en ESA llamada lo dice el trazado de cartucho entero
  (tools/bancos.py), no se supone.
- RAM: en cada instruccion que nombra una direccion de la tabla, que es.
- FICHAS: los campos (ix+n) de las fichas de los enemigos (0xD000, 13 de
  0x80), de los objetos del suelo (0xC400), del decorado que se quita
  (0xC500) y de los canales del sonido. IX se sigue instruccion a instruccion
  (`ld ix,nn`); donde no se sabe a que apunta, no se anota.
- Los cambios de banco (`ld (0x6000/0x8000/0xA000),a`).

CADA ENTRADA LLEVA DE DONDE SALE. Lo que no se sabe no esta en la tabla.
Donde ya hay un comentario escrito a mano no se pone otro.

Uso: anota.py              informa de cuantos pondria
     anota.py --escribe    y los escribe
"""
import os
import re
import sys

AQUI = os.path.dirname(os.path.abspath(__file__))
RAIZ = os.path.dirname(AQUI)
sys.path.insert(0, AQUI)

from paginas import ORG                                    # noqa: E402

BANCOS = (0, 1, 2, 3, 4, 6, 9, 12, 15)
INI = "# --- ANOTACIONES AUTOMATICAS (seccion que reescribe tools/anota.py; no editar a mano) ---"
FIN = "# --- fin de las anotaciones de anota.py ---"

# direccion -> (que es, de donde se sabe)
RAM = {
    0xC010: ("el manejador del canal A del sonido", "p04:6298 salta por el"),
    0xC012: ("el manejador del canal B", "p04:6298"),
    0xC014: ("el manejador del canal C", "p04:6298"),
    0xC016: ("el manejador del canal de los efectos", "p04:6298"),
    0xC018: ("el manejador de la musica de la pausa", "p04:62BB"),
    0xC07E: ("el canal del PSG que se esta tocando", "p04:6291"),
    0xC07F: ("el numero de canal", "p04:6291"),
    0xC080: ("el sonido que suena (para no pisarlo con uno menor)", "p04:60D7"),
    0xC081: ("la copia del registro 7 del PSG (el mezclador)", "p04:6228 la escribe cada cuadro"),
    0xC08C: ("el fundido de la musica (se suma al volumen)", "p04:6241 y p04:63F6"),
    0xC100: ("el ESTADO del juego", "p01:65D3 despacha por el"),
    0xC101: ("el paso del estado", "p06:A6E3 lo sube"),
    0xC102: ("las banderas de la partida (bit 6: de verdad, no la demostracion)", "p00:5488 no suena nada sin el"),
    0xC103: ("el contador de cuadros", "p01:65C2 lo sube cada cuadro"),
    0xC104: ("la espera del estado, en cuadros", "p06:A6E0 la pone y p06:A736 la baja"),
    0xC106: ("las teclas nuevas del cuadro (bit 4 SHOT1, bit 5 SHOT2)", "p01:64F9 y p01:6C41"),
    0xC107: ("las teclas que se tienen pulsadas (0 arriba, 1 abajo, 2 izquierda, 3 derecha)", "p01:64F9 y p01:6E76"),
    0xC109: ("la cuenta de la pulsacion de la demostracion", "p01:69D7"),
    0xC10A: ("las teclas de la demostracion", "p01:6A09"),
    0xC10C: ("la demostracion que toca (alterna)", "p01:698C"),
    0xC10D: ("el guion de la demostracion", "p01:69BD"),
    0xC10F: ("el giro del orden de los sprites", "p00:52AB le suma 0x68 cada cuadro"),
    0xC112: ("las teclas del teclado (bits 3-5: 1, 2 y 3; bit 2: F5)", "p12:B9B3 y p01:66E8"),
    0xC125: ("la PANTALLA", "p00:4F0B dibuja por ella y p01:616B busca sus vecinas"),
    0xC127: ("DAYS, los dias (BCD)", "p01:6344 los escribe en el panel y p06:A845 elige el final por ellos"),
    0xC129: ("LIFE, la vida de Mitchel (BCD)", "p01:634E la escribe en el panel"),
    0xC12B: ("EXP, la experiencia (BCD)", "p01:6358"),
    0xC12E: ("LEVEL, el nivel de Mitchel (BCD)", "p01:6362; p09:B8BE lo compara con el de cada enemigo"),
    0xC12F: ("MP, la magia (BCD, hasta 99)", "p01:636C; p01:7C5F la gasta"),
    0xC130: ("el lado por el que se ha salido (0 arriba, 1 derecha, 2 abajo, 3 izquierda)", "p01:60E6 con p01:60F6"),
    0xC131: ("el plano de la pantalla (0, el exterior)", "p00:4F0B y p00:4A7B"),
    0xC135: ("GOLD, el oro (tres bytes BCD)", "p01:6376 lo escribe; p12:B98F cobra de el"),
    0xC137: ("en el final, cual de los tres (0, 1 o 2; 3 acabado)", "p06:A86C y p06:AC19"),
    0xC138: ("el paso de la escena del final", "p06:A8BF"),
    0xC139: ("el paso del suceso de p06:A649", "p06:A67E"),
    0xC140: ("SHOT1, el arma que se lleva (0 el puno)", "p01:7469 despacha por ella"),
    0xC141: ("SHOT2, el objeto que se lleva", "p01:7BF3 despacha por el"),
    0xC142: ("los zuecos puestos", "p01:6F00: sin ellos, paso lento en el agua del juego de dibujos 4"),
    0xC146: ("la ENFERMEDAD (la picadura)", "p12:B713 la pone y p01:7CB8 la quita con las hierbas"),
    0xC148: ("el juego de dibujos de la pantalla", "p00:4A7B lo elige"),
    0xC14A: ("la CONVERSACION", "p02:80B0 busca sus lineas"),
    0xC14B: ("el paso de la conversacion", "p01:7FF9 despacha por el"),
    0xC14C: ("la accion de la linea", "p02:8065 despacha por ella"),
    0xC14D: ("la linea de la conversacion", "p02:80B9"),
    0xC14E: ("la radio reparada", "p12:B899 y p01:7D5A"),
    0xC156: ("la cuenta de la letra siguiente de la conversacion", "p02:80E7"),
    0xC157: ("la letra de la conversacion que toca", "p02:80D2"),
    0xC15D: ("la linea a la que se salta tras la accion", "p12:B51D"),
    0xC160: ("Mitchel metido en el agua", "p01:6BA3 lo mira y p00:4FF0 elige las poses por el"),
    0xC16E: ("las veces que se ha continuado (CONTINUE F5)", "p01:66FF la sube; p06:A85C elige el final por ella"),
    0xC171: ("el decorado que hay que dar por quitado", "p00:545F"),
    0xC201: ("el estado de la partida (0 jugando, 1 cambio de pantalla, 3 conversacion, 5 y 6 sucesos, 7 GAME OVER)", "p01:7EB1 pone el 3 y p12:B8C1 el 1"),
    0xC300: ("el estado de Mitchel", "p01:6D39 despacha por el"),
    0xC303: ("la Y de Mitchel", "p00:4308 la pone en E"),
    0xC305: ("la X de Mitchel", "p00:4308 la pone en D"),
    0xC306: ("hacia donde mira Mitchel (0 arriba, 1 abajo, 2 izquierda, 3 derecha)", "p01:6E90-6EAD"),
    0xC309: ("el color del primer sprite de Mitchel", "p00:4FDE"),
    0xC30A: ("el color del segundo sprite de Mitchel", "p00:4FDE"),
    0xC310: ("la POSE de Mitchel", "p00:4FF0 sube sus patrones"),
    0xC311: ("la cuenta de los pasos de Mitchel", "p01:6E58"),
    0xC321: ("el punto por el que entra Mitchel en la pantalla", "p01:6143"),
    0xC380: ("lo que lanza Mitchel (su ficha)", "p01:755F la llena"),
    0xC400: ("los objetos del suelo (4 fichas de 16 bytes)", "p01:7852 pone uno"),
    0xC500: ("el decorado que se quita (3 fichas de 32 bytes)", "p02:8181 las llena"),
    0xC560: ("el SUCESO: el tipo de decorado que hay que quitar", "p15:BD3A lo busca en 0xC500"),
    0xC561: ("el paso del suceso", "p15:BD88"),
    0xC580: ("las banderas del decorado ya quitado", "p02:81AC"),
    0xC600: ("la figura que sigue a Mitchel", "p00:507A"),
    0xC606: ("el cuadro de la figura que sigue (direccion*2 + paso)", "p02:82E6"),
    0xD000: ("las fichas de los enemigos (13 de 0x80)", "p00:5A69 crea una"),
    0xDF94: ("el grafico de jefe que hay subido", "p00:5253"),
    0xE000: ("el mapa de casillas de la pantalla en RAM (32 por fila)", "p00:431F"),
    0xE021: ("la primera casilla del mapa de la pantalla", "p00:4EE7 la pinta desde aqui"),
    0xE400: ("los colores de los sprites, para la VRAM", "p00:5331 los sube a 0x7400"),
    0xE600: ("los atributos de los sprites, para la VRAM", "p00:52FF los sube a 0x7600"),
    0xF0F1: ("la copia del banco de 0x6000", "p00:42C6 la escribe con el registro"),
    0xF0F2: ("la copia del banco de 0x8000", "p00:42C6"),
    0xF0F3: ("la copia del banco de 0xA000", "p00:42C6"),
    0xF0F6: ("el banco de reserva de 0xA000 (el que devuelve p00:4215)", "p00:5D9C"),
}
for n in range(1, 0x25):
    RAM[0xC33F + n] = ("cuantos objetos 0x%02X se llevan (BCD; 0xFF sin cuenta)" % n, "p01:79D0")

RAM16 = {
    0xC127: "DAYS, los dos bytes (BCD)",
    0xC129: "LIFE, los dos bytes (BCD)",
    0xC135: "GOLD, los dos bytes bajos (BCD)",
    0xC303: "la y de Mitchel y lo de 0xC304",
    0xC321: "el punto de entrada (y, x)",
}

# Los campos de cada clase de ficha, y de donde se sabe.
CAMPOS = {
    "ficha": {                     # 0xD000 + 0x80*n (p00:5A69)
        0x00: "el tipo del enemigo",                  # p01:686A despacha por el
        0x01: "el paso en que va",                    # `ld a,(ix+1) / call 0x425F`
        0x03: "la y del enemigo",                     # p00:4399
        0x05: "la x del enemigo",                     # p00:4399
        0x06: "si se mueve",                          # p01:690E
        0x07: "la velocidad vertical (baja)",         # p00:4311
        0x08: "la velocidad vertical",                # p00:4311
        0x09: "la velocidad horizontal (baja)",       # p00:4318
        0x0A: "la velocidad horizontal",              # p00:4318
        0x0B: "el cuadro del enemigo",                # p00:510B
        0x0C: "la cuenta de cuadros",                 # p01:6878
        0x0D: "la vida del enemigo (BCD)",            # p09:B7D6
        0x1F: "el tipo que tenia antes de morir",     # p00:5DA8
        0x20: "cuantos sprites lleva",                # p00:5A94
    },
    "objeto": {                    # 0xC400 + 16*n (p01:787E)
        0x00: "el numero de objeto",
        0x01: "lo que le queda en el suelo (0xFF: se queda)",
        0x03: "la y del objeto",
        0x05: "la x del objeto",
        0x06: "cuantas unidades",
    },
    "decorado": {                  # 0xC500 + 32*n (p02:8199)
        0x00: "el tipo de decorado (el suceso que lo quita)",
        0x01: "la y del decorado",
        0x02: "la x del decorado",
        0x03: "cuantas filas",
        0x04: "cuantas columnas",
        0x07: "la figura del decorado",
        0x08: "su bandera en 0xC580",
    },
    "canal": {                     # 0xC01A, 0xC02E, 0xC042, 0xC056, 0xC06A (p04)
        0x00: "la pista (baja)",
        0x01: "la pista (alta)",
        0x02: "las banderas del canal",
        0x03: "el tempo",
        0x04: "el volumen",
        0x07: "la octava",
        0x08: "la envolvente",
        0x09: "la cuenta de la nota",
        0x0A: "el volumen de ahora",
        0x0C: "la envolvente que suena (baja)",
        0x0D: "la envolvente que suena (alta)",
        0x0E: "la cuenta de la envolvente",
        0x0F: "cuanto dura cada paso de la envolvente",
        0x10: "las vueltas que quedan de la repeticion",
        0x12: "la vuelta de la subrutina (baja)",
        0x13: "la vuelta de la subrutina (alta)",
    },
}
# A que apunta IX por defecto en cada banco (quien lo llama ya lo trae puesto):
# p02 y p03 son los enemigos (p01:6885 los despacha con la ficha en IX) y p04
# el sonido (p04:6321-632F).
POR_DEFECTO = {2: "ficha", 3: "ficha", 4: "canal"}


def clase_de(v):
    if 0xD000 <= v < 0xD680 and (v - 0xD000) % 0x80 == 0:
        return "ficha"
    if 0xC400 <= v < 0xC440 and v % 16 == 0:
        return "objeto"
    if v in (0xC500, 0xC520, 0xC540):
        return "decorado"
    if v in (0xC01A, 0xC02E, 0xC042, 0xC056, 0xC06A):
        return "canal"
    return None


def listado(b):
    filas = []
    for ln in open(os.path.join(RAIZ, "src", "kingkong2_p%02d.asm" % b), encoding="utf-8"):
        m = re.match(r"\t([a-z][^\t;]*?)\s*;([0-9a-f]{4})", ln)
        if m and not ln.startswith("\tdefb"):
            filas.append((int(m.group(2), 16), m.group(1).strip()))
    return filas


def etiquetas_de(b):
    """Las direcciones con etiqueta en el listado (alli A puede venir de otro sitio)."""
    fuera, pend = set(), False
    for ln in open(os.path.join(RAIZ, "src", "kingkong2_p%02d.asm" % b), encoding="utf-8"):
        if re.match(r"^[A-Za-z_][A-Za-z_0-9]*:", ln):
            pend = True
            continue
        m = re.match(r"\t[a-z][^;]*;([0-9a-f]{4})", ln)
        if m and pend:
            fuera.add(int(m.group(1), 16))
            pend = False
    return fuera


def notas(b):
    """(C escritas fuera de la seccion, {dir: nombre}, {dir: lo que hace})."""
    ruta = os.path.join(RAIZ, "src", "p%02d.notes" % b)
    cs, nombres, que, dentro = {}, {}, {}, False
    for ln in open(ruta, encoding="utf-8"):
        ln = ln.rstrip("\n")
        if ln.startswith(INI):
            dentro = True
        elif ln.startswith(FIN):
            dentro = False
        elif dentro:
            continue
        elif ln.startswith("C "):
            p = ln.split(None, 2)
            cs[int(p[1], 0)] = p[2] if len(p) > 2 else ""
        elif ln.startswith("L "):
            p = ln.split()
            nombres[int(p[1], 0)] = p[2]
        elif ln.startswith("B "):
            p = ln.split(None, 2)
            a = int(p[1], 0)
            if a not in que and len(p) > 2:
                que[a] = p[2]
    for a in nombres:
        if a in cs and cs[a]:
            que[a] = cs[a]
    return cs, nombres, que


def rutinas():
    """(banco, direccion) -> (nombre, lo que hace o '')."""
    fuera = {}
    for b in range(16):
        ruta = os.path.join(RAIZ, "src", "p%02d.notes" % b)
        if not os.path.exists(ruta):
            continue
        _, nombres, que = notas(b)
        for a, n in nombres.items():
            fuera[(b, a)] = (n, que.get(a, ""))
    return fuera


def destinos_entre_bancos():
    """((banco, pc) -> bancos del destino de su call/jp, (banco, pc) -> repartos
    con los que se ejecuta), segun el trazado de cartucho entero."""
    import bancos as BA
    rom = open(os.path.join(RAIZ, "kingkong2.rom"), "rb").read()
    t, _ = BA.traza_completa(rom, os.path.join(RAIZ, "src"))
    fuera = {}
    for dest, b, pc, s, _hl, _de in t.llamadas:
        d = BA.Cartucho.banco(dest, s)
        if d is not None:
            fuera.setdefault((b, pc), set()).add(d)
    return fuera, t.config_de


def datos_declarados():
    """(banco, direccion de inicio) -> (nombre, lo que es), de las D de las notas."""
    fuera = {}
    for b in range(16):
        ruta = os.path.join(RAIZ, "src", "p%02d.notes" % b)
        if not os.path.exists(ruta):
            continue
        for ln in open(ruta, encoding="utf-8"):
            if ln.startswith("D "):
                p = ln.rstrip("\n").split(None, 4)
                if len(p) >= 4:
                    que = p[4] if len(p) > 4 else ""
                    que = re.sub(r"; lo leen? .*$", "", que).strip()
                    fuera.setdefault((b, int(p[1], 0)), (p[3], que))
    return fuera


def banco_en(b, a, dest, repartos):
    """El banco que hay en la ranura de dest cuando se ejecuta (b, a)."""
    if dest < 0x6000:
        return 0
    if ORG[b] <= dest < ORG[b] + 0x2000:
        return b
    bs = set()
    for s in repartos.get((b, a), set()):
        k = (dest - 0x6000) >> 13
        if 0 <= k < 3:
            bs.add(s[k])
    return next(iter(bs)) if len(bs) == 1 else None


def num(txt):
    txt = txt.strip()
    return int(txt[:-1], 16) if txt.endswith("h") else int(txt, 0)


def clases_de_ix(b, filas):
    """Para cada instruccion, a que clase de ficha apunta IX (o None)."""
    fuera, actual = {}, POR_DEFECTO.get(b)
    for k, (a, t) in enumerate(filas):
        m = re.match(r"ld ix,0([0-9a-f]{4})h$", t)
        if m:
            actual = clase_de(int(m.group(1), 16))
        elif t.startswith("pop ix") or t.startswith("ld ix,"):
            actual = None
        fuera[k] = actual
        if (t.startswith(("ret", "jp ")) and not re.match(r"(ret|jp) (nz|z|nc|c|po|pe|p|m)\b", t)) \
                or t.startswith("jp (hl)"):
            actual = POR_DEFECTO.get(b)
    return fuera


def nombre_enemigo(tipo):
    import figuras as F
    if not 1 <= tipo <= 68:
        return None
    n = "".join(chr(c) if 0x41 <= c <= 0x5A else (" " if c == 0 else "")
                for c in F.nombre_de(tipo)).strip()
    return n or None


def nombre_objeto(n):
    import objetos as O
    if not 1 <= n <= 0x24:
        return None
    return O.nombre_en_texto(n)


def que_es_la_constante(fuente, v):
    """Lo que significa comparar A (que trae `fuente`) con v."""
    if fuente == "pantalla":
        return "la pantalla 0x%02X?" % v
    if fuente == "tipo":
        n = nombre_enemigo(v)
        return ("%s (tipo 0x%02X)?" % (n, v)) if n else None
    if fuente in ("shot1", "shot2"):
        n = nombre_objeto(v)
        return ("el objeto 0x%02X, %s?" % (v, n)) if n else None
    if fuente == "juego":
        return "el juego de dibujos %d?" % v
    if fuente == "direccion":
        return {0: "mira arriba?", 1: "mira abajo?", 2: "mira a la izquierda?",
                3: "mira a la derecha?"}.get(v)
    return None


FUENTES = {"(0c125h)": "pantalla", "(0c140h)": "shot1", "(0c141h)": "shot2",
           "(0c148h)": "juego", "(0c306h)": "direccion"}
ESCRIBEN_A = ("add", "adc", "sub", "sbc", "and", "or", "xor", "neg", "cpl", "rla", "rra",
              "rlca", "rrca", "daa", "pop", "call", "rst", "ex", "exx", "in", "djnz",
              "ldir", "lddr", "rld", "rrd")


def fuentes_de_a(filas, etiquetas, clases):
    """Para cada instruccion, que trae A (o None), siguiendo el listado."""
    fuera, actual = {}, None
    for k, (a, t) in enumerate(filas):
        if a in etiquetas:
            actual = None
        fuera[k] = actual
        m = re.match(r"ld a,(\(0[0-9a-f]{4}h\)|\(ix\+000h\))$", t)
        if m:
            src = m.group(1)
            actual = FUENTES.get(src) or ("tipo" if src == "(ix+000h)" and clases.get(k) == "ficha"
                                          else None)
            continue
        op = t.split()[0]
        if op in ESCRIBEN_A or re.match(r"(ld|inc|dec|rl|rr|sla|sra|srl|set|res) a\b", t):
            actual = None
    return fuera


def comentario(b, filas, k, clases, rut, cruces, fuentes=None, datos=None, repartos=None):
    a, t = filas[k]
    # comparaciones con lo que trae A
    if fuentes and fuentes.get(k):
        m = re.match(r"cp 0?([0-9a-f]+)h$", t)
        if m:
            q = que_es_la_constante(fuentes[k], int(m.group(1), 16))
            if q:
                return q
    # el objeto que se da o se pone
    siguientes = [filas[j][1] for j in range(k + 1, min(k + 3, len(filas)))]
    # una constante que va a una variable conocida
    m = re.match(r"ld a,0?([0-9a-f]+)h$", t)
    if m and siguientes:
        m2 = re.match(r"ld \(0([c-f][0-9a-f]{3})h\),a$", siguientes[0])
        if m2 and int(m2.group(1), 16) in RAM:
            v = int(m.group(1), 16)
            return "%s = 0x%02X" % (RAM[int(m2.group(1), 16)][0], v)
    m = re.match(r"ld a,0?([0-9a-f]+)h$", t)
    if m and siguientes and re.match(r"call (04068h|04176h)$", siguientes[0]):
        n = nombre_objeto(int(m.group(1), 16))
        if n:
            return "el objeto 0x%02X, %s" % (int(m.group(1), 16), n)
    m = re.match(r"ld c,0?([0-9a-f]+)h$", t)
    if m and any(re.search(r"(07852h|0419ah|pon_objeto|puente_pon_objeto)$", x) for x in siguientes):
        v = int(m.group(1), 16)
        n = nombre_objeto(v)
        if n:
            return "el objeto 0x%02X, %s" % (v, n)
    # llamadas y saltos a rutinas con nombre
    m = re.match(r"(call|jp)\s+(?:(?:nz|z|nc|c|po|pe|p|m),)?(?:L_([0-9A-F]{4})|0([0-9a-f]{4})h|([a-z_][a-z0-9_]*))$", t)
    if m:
        if m.group(4):
            for (bb, aa), (nom, que) in rut.items():
                if nom == m.group(4) and bb in (b, 0):
                    return "%s: %s" % (nom, que) if que else None
            return None
        dest = int(m.group(2) or m.group(3), 16)
        if dest < 0x4000:
            return None
        bb = 0 if dest < 0x6000 else None
        if bb is None:
            cands = cruces.get((b, a), set())
            if len(cands) == 1:
                bb = next(iter(cands))
        if bb is not None and (bb, dest) in rut:
            nom, que = rut[(bb, dest)]
            if que or bb != b:
                return "%s%s%s" % ("" if bb == b else "p%02d:" % bb, nom, (": " + que) if que else "")
    # campos de la ficha
    cl = clases.get(k)
    if cl:
        mm = re.search(r"\(ix\+0?([0-9a-f]+)h?\)", t)
        if mm:
            n = int(mm.group(1), 16)
            que = CAMPOS[cl].get(n)
            if que:
                op = t.split()[0]
                if op == "ld" and t.startswith("ld (ix"):
                    v = t.split(",", 1)[1]
                    if re.match(r"^[a-z]$", v):
                        return "guarda %s" % que
                    v = "0x%02X" % num(v) if re.match(r"^[0-9a-f]+h$", v) else v
                    return "%s = %s" % (que, v)
                if op == "ld":
                    return "lee %s" % que
                if op in ("inc", "dec"):
                    return ("sube " if op == "inc" else "baja ") + que
                if op == "bit":
                    return "mira el bit %s de %s" % (t.split()[1].split(",")[0], que)
                if op in ("set", "res"):
                    return "%s el bit %s de %s" % ("pone a uno" if op == "set" else "pone a cero",
                                                   t.split()[1].split(",")[0], que)
                if op in ("cp", "sub", "add", "adc", "sbc", "and", "or", "xor"):
                    return {"cp": "compara con ", "sub": "le resta ", "add": "le suma ",
                            "adc": "le suma ", "sbc": "le resta ", "and": "AND con ",
                            "or": "OR con ", "xor": "XOR con "}[op] + que
    # punteros al principio de unos datos declarados
    m = re.match(r"ld (hl|de|bc|ix|iy),0([4-9ab][0-9a-f]{3})h$", t)
    if m and datos is not None:
        dest = int(m.group(2), 16)
        bb = banco_en(b, a, dest, repartos or {})
        if bb is not None and (bb, dest) in datos:
            nom, que = datos[(bb, dest)]
            return "%s%s%s" % ("" if bb == b else "p%02d:" % bb, nom, (": " + que) if que else "")
    # cambios de banco
    m = re.match(r"ld \(0(6000|8000|a000)h\),a$", t)
    if m:
        return "el mapper: el banco de A en 0x%s" % m.group(1).upper()
    # RAM
    m16 = re.match(r"ld (?:(hl|de|bc|ix|iy),\(0([c-f][0-9a-f]{3})h\)|\(0([c-f][0-9a-f]{3})h\),(hl|de|bc|ix|iy))$", t)
    if m16:
        v = int(m16.group(2) or m16.group(3), 16)
        if v in RAM16:
            return ("lee " if m16.group(1) else "guarda ") + RAM16[v]
    for x in re.findall(r"\b0([c-f][0-9a-f]{3})h\b", t):
        v = int(x, 16)
        if v in RAM:
            que = RAM[v][0]
            if re.match(r"ld \(0%04xh\)," % v, t):
                return "guarda %s" % que
            if re.match(r"ld [a-z]+,\(0%04xh\)$" % v, t):
                return "lee %s" % que
            if re.match(r"ld (hl|de|bc|ix|iy),0%04xh$" % v, t):
                return "apunta a %s" % que
            if re.match(r"(inc|dec) \(0%04xh\)" % v, t):
                return que
            return que
    return None


def main(argv):
    rut = rutinas()
    cruces, repartos = destinos_entre_bancos()
    datos = datos_declarados()
    total = 0
    for b in BANCOS:
        filas = listado(b)
        cs, _, _ = notas(b)
        clases = clases_de_ix(b, filas)
        fuentes = fuentes_de_a(filas, etiquetas_de(b), clases)
        lineas = []
        n = 0
        for k, (a, t) in enumerate(filas):
            if a in cs:
                continue
            c = comentario(b, filas, k, clases, rut, cruces, fuentes, datos, repartos)
            if c:
                lineas.append("C 0x%04X %s" % (a, c))
                n += 1
        total += n
        print("p%02d: %d comentarios" % (b, n))
        if "--escribe" in argv:
            ruta = os.path.join(RAIZ, "src", "p%02d.notes" % b)
            viejas = open(ruta, encoding="utf-8").read().split("\n")
            nuevas, dentro = [], False
            for ln in viejas:
                if ln.startswith(INI):
                    dentro = True
                    continue
                if ln.startswith(FIN):
                    dentro = False
                    continue
                if not dentro:
                    nuevas.append(ln)
            while nuevas and not nuevas[-1].strip():
                nuevas.pop()
            nuevas += ["", INI] + lineas + [FIN, ""]
            open(ruta, "w", encoding="utf-8", newline="\n").write("\n".join(nuevas))
    print("en total: %d comentarios" % total)


if __name__ == "__main__":
    main(sys.argv)
