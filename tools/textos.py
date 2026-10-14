#!/usr/bin/env python3
"""Todos los textos de King Kong 2, del cartucho japones, y su traduccion al
ingles y al espanol de los parches de Imanok, Manuel Pazos y Ramones
(KING KONG 2 ULTIMATE TRANSLATION, 2012-2013; textos traducidos por Chiho y
Kyoko; https://msxblue.com/imanok/).

EL ORIGINAL (direcciones del listado):
  conversaciones  p12:A66E, 56 listas de lineas (tools/dialogos.py); quien:
                  p01:7E57 por pantalla y p01:7EF5 por parejas.
  objetos         p15:A069 + 2n (n = 1-0x24), lo lee p00:4423; detras,
                  "を とりました。" de p15:A062 (p00:42F6).
  final           nueve textos de p06 que cargan las escenas (ld hl / ld de /
                  call empieza_texto en p06:A8DF-AAAD) y THE END (p06:A711):
                  0xFE [x] salta de renglon.
  rotulos         [x][y] y letras, 0xFE [x][y] otro sitio: el marcador
                  (p01:6302 y p01:631C), la ventana (p12:BA93, p12:BAAE) y
                  "みずげた" (p12:BD84).
  enemigos        p15:BA76 + 2 * tipo (1-68), en ingles ya en el original.
  creditos        p06:BAE7 (p06:BAD5), en ingles.
LOS PARCHES (work/imanok/KK2DSKEN.ips y KK2DSKES.ips, no van en el repo): la
ROM reensamblada, 136 KB. Las tablas se encuentran asi, y `coteja` lo mira:
  conversaciones  la misma rutina de p02 (ld a,(C14A) / ld de,TABLA / call /
                  ld a,(C14D)) carga 0xA14E; banco 12.
  objetos         36 punteros seguidos en p06:B525, el mismo orden.
  final           las mismas nueve cargas, en las mismas direcciones de p06.
  rotulos         el mismo [x][y] delante, buscado en el mismo banco.
  enemigos        p15:B96C, los 68 nombres iguales que en el original.
  creditos        no estan: los parches traen otro titulo.
La fuente de los parches (p05:9F99, la misma direccion): 0x3A punto, 0x3B
coma, 0x3C ¿, 0x3D apostrofo, 0x3E ▶, 0x3F ?, 0x5B ¡, 0x5C punto, 0x5D !,
0x5E &, 0x8D coma; 0x2E y 0x00 son espacio; en el espanol 0x6A 0x6B son
"LL." (llave). Los renglones saltan solos a las 20 letras (p02:810E, el
mismo cp 0A8h en los tres).

Uso:  textos.py pagina   escribe docs/THE-TEXTS.md y docs/es/LOS-TEXTOS.md
      textos.py imanok   lee los parches y escribe tools/datos/textos_imanok.json
      textos.py coteja   vuelve a leerlos y compara con el json
      textos.py          lo saca todo en texto
"""
import json
import os
import sys

AQUI = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, AQUI)

import dialogos as D                  # noqa: E402
import pantalla as P                  # noqa: E402

RAIZ = os.path.dirname(AQUI)
IMANOK = os.path.join(RAIZ, "work", "imanok")
DATOS = os.path.join(AQUI, "datos", "textos_imanok.json")
S1, S6, S12, S15 = (1, 2, 3), (4, 5, 6), (10, 11, 12), (13, 14, 15)
FINAL = (0xA8DF, 0xA8F8, 0xA916, 0xA943, 0xA97F, 0xA9D3, 0xAA26, 0xAA49, 0xAAAD)
FINAL_PARCHE = FINAL[:-1] + (0xAAB0,)  # la ultima carga, tres bytes mas alla
SIN_LETRA = "·"                       # codigo por debajo de 0x30: el dibujo c + 0x10 de la hoja (p00:495F)
N_OBJETOS = 0x24

# ------------------------------------------------------------ el original


def letras(cs):
    """Codigos de la fuente japonesa a texto (dakuten 0x3C y handakuten 0x3D
    detras de la letra; 0x8D el punto de los nombres)."""
    t = ""
    for c in cs:
        if c == 0x3C and t:
            t = t[:-1] + D.DAKUTEN.get(t[-1], t[-1] + "゛")
        elif c == 0x3D and t:
            t = t[:-1] + D.HANDAKUTEN.get(t[-1], t[-1] + "゜")
        elif c == 0x8D:
            t += "."
        elif c < 0x30 and c:
            t += SIN_LETRA
        else:
            t += D.letra(c) or "?"
    return t


def hasta_ff(lee, a):
    cs = []
    while lee(a) != 0xFF:
        cs.append(lee(a))
        a += 1
    return cs


def rotulo(cs, fuente):
    """[x][y] letras, 0xFE [x][y] otro trozo: la lista de trozos."""
    trozos, i = [], 2
    uno = []
    while i < len(cs):
        if cs[i] == 0xFE:
            trozos.append(uno)
            uno = []
            i += 3
        else:
            uno.append(cs[i])
            i += 1
    trozos.append(uno)
    return [fuente(t).strip() for t in trozos]


def final(cs, fuente):
    """0xFE [x] salta de renglon: la lista de renglones."""
    ren, uno, i = [], [], 0
    while i < len(cs):
        if cs[i] == 0xFE:
            ren.append(uno)
            uno = []
            i += 2
        else:
            uno.append(cs[i])
            i += 1
    ren.append(uno)
    return [fuente(r).strip() for r in ren]


def original():
    lee = {b: (lambda b: lambda a: P.lee(a, b))(b) for b in (S1, S6, S12, S15)}
    pal = lambda a, b: P.palabra(a, b)  # noqa: E731
    out = {}
    donde = D.donde()
    conv = []
    for c in range(1, D.N_CONVERSACIONES + 1):
        lineas = [dict(sitio="p12:%04X" % a, accion=acc, texto=t.replace("\n", " / "))
                  for a, acc, t in D.lineas(c)]
        conv.append(dict(n=c, pantallas=sorted(donde.get(c, [])), lineas=lineas))
    out["conversaciones"] = conv
    out["objetos"] = [dict(n=k, sitio="p15:%04X" % pal(0xA069 + 2 * k, S15),
                           texto=letras(hasta_ff(lee[S15], pal(0xA069 + 2 * k, S15))))
                      for k in range(1, N_OBJETOS + 1)]
    out["cogido"] = dict(sitio="p15:A062", texto=letras(hasta_ff(lee[S15], 0xA062)))
    fin = []
    for s in FINAL:
        a = pal(s + 1, S6)
        fin.append(dict(sitio="p06:%04X" % a, quien="p06:%04X" % s, renglones=final(hasta_ff(lee[S6], a), letras)))
    fin.append(dict(sitio="p06:AF39", quien="p06:A711", renglones=final(hasta_ff(lee[S6], 0xAF39), letras)))
    out["final"] = fin
    rot = []
    for clave, b, a, quien in (("panel1", S1, 0x6302, "p01:62DE"), ("panel2", S1, 0x631C, "p01:62C3"),
                               ("ventana", S12, 0xBA93, "p12:BA7B"), ("shot1", S12, 0xBAAE, "p12:BA81, p12:BC14"),
                               ("mizugeta", S12, 0xBD84, "p12:BD73")):
        pag = {S1: "p01", S12: "p12"}[b]
        rot.append(dict(clave=clave, sitio="%s:%04X" % (pag, a), quien=quien, trozos=rotulo(hasta_ff(lee[b], a), letras)))
    out["rotulos"] = rot
    out["enemigos"] = [dict(n=t, sitio="p15:%04X" % pal(0xBA76 + 2 * t, S15),
                            texto=letras(hasta_ff(lee[S15], pal(0xBA76 + 2 * t, S15))).strip())
                       for t in range(1, 69)]
    out["creditos"] = dict(sitio="p06:BAE7", quien="p06:BAD5", trozos=rotulo(hasta_ff(lee[S6], 0xBAE7), letras))
    return out


# ------------------------------------------------------------ los parches

FUENTE_PARCHE = {0x2E: " ", 0x00: " ", 0x3A: ".", 0x3B: ",", 0x3C: "¿", 0x3D: "'", 0x3E: "▶", 0x3F: "?",
                 0x40: "-", 0x5B: "¡", 0x5C: ".", 0x5D: "!", 0x5E: "&", 0x8D: ","}
LIGADURAS = {  # dibujos que juntan varias letras, leidos en la fuente de cada parche
    "EN": {(0x6A, 0x6B, 0x6C, 0x6D, 0x6E, 0x6F, 0x7A): "BOOMERANG"},
    "ES": {(0x6A, 0x6B): "LL.", (0x7A, 0x7B, 0x7C, 0x7D, 0x7E, 0x7F, 0x80, 0x81): "ARCO ARPA",
           (0x82,): "P.", (0x6E,): "Ñ"},
}
SITIOS = {   # (banco, direccion) en cada parche; ver el docstring
    "EN": dict(conv=0xA14E, objetos=0xB525, cogido=0xB66A, panel1=0x6313, panel2=0x632D,
               ventana=0xB8B5, shot1=0xB8CF, mizugeta=0xBBAC, the_end=0xAF45),
    "ES": dict(conv=0xA14E, objetos=0xB526, cogido=0xB67F, panel1=0x631B, panel2=0x6335,
               ventana=0xB9E7, shot1=0xBA07, mizugeta=0xBCE2, the_end=0xAF4A),
}


def ips(rom, parche):
    """Aplica un IPS (PATCH, registros [3 offset][2 largo] o RLE, EOF)."""
    rom = bytearray(rom)
    if parche[:5] != b"PATCH":
        raise ValueError("no es un IPS")
    i = 5
    while parche[i:i + 3] != b"EOF":
        o = int.from_bytes(parche[i:i + 3], "big")
        n = int.from_bytes(parche[i + 3:i + 5], "big")
        i += 5
        if n == 0:
            datos = bytes([parche[i + 2]]) * int.from_bytes(parche[i:i + 2], "big")
            i += 3
        else:
            datos = parche[i:i + n]
            i += n
        if o + len(datos) > len(rom):
            rom.extend(bytes(o + len(datos) - len(rom)))
        rom[o:o + len(datos)] = datos
    return bytes(rom)


def parcheada(idioma):
    nombre = {"EN": "KK2DSKEN.ips", "ES": "KK2DSKES.ips"}[idioma]
    with open(os.path.join(IMANOK, nombre), "rb") as f:
        return ips(P.ROM, f.read())


def letras_parche(cs, idioma):
    t, i = "", 0
    while i < len(cs):
        c = cs[i]
        lig = next((k for k in LIGADURAS[idioma] if tuple(cs[i:i + len(k)]) == k), None)
        if lig:
            t += LIGADURAS[idioma][lig]
            i += len(lig)
            continue
        if 0x30 <= c <= 0x39 or 0x41 <= c <= 0x5A:
            t += chr(c)
        else:
            t += FUENTE_PARCHE.get(c, SIN_LETRA if c < 0x30 else "{%02X}" % c)
        i += 1
    return t


def renglones_de_20(cs, idioma):
    """Como p02:80F3: 0xFD baja; a las 20 letras salta solo. Une con espacio."""
    ren, uno = [], []
    for c in cs:
        if c == 0xFD:
            ren.append(uno)
            uno = []
            continue
        uno.append(c)
        if len(uno) == 20:
            ren.append(uno)
            uno = []
    if uno:
        ren.append(uno)
    t = ""
    for r in ren:
        r = letras_parche(r, idioma).strip()
        if r:
            t += r if not t or t.endswith("-") else " " + r     # la palabra partida con guion, junta
    return t.replace("  ", " ")


def del_parche(idioma):
    rom = parcheada(idioma)
    s = SITIOS[idioma]

    def lee(b, a):
        return rom[b * 0x2000 + (a & 0x1FFF)]

    def pal(b, a):
        return lee(b, a) | lee(b, a + 1) << 8

    def ff(b, a):
        return hasta_ff(lambda x: lee(b, x), a)
    out = {}
    conv = []
    for c in range(1, D.N_CONVERSACIONES + 1):
        lista, lineas, k = pal(12, s["conv"] + 2 * c), [], 0
        while pal(12, lista + 2 * k):
            a = pal(12, lista + 2 * k)
            lineas.append(dict(sitio="%04X" % a, accion=lee(12, a), texto=renglones_de_20(ff(12, a + 1), idioma)))
            k += 1
        conv.append(lineas)
    out["conversaciones"] = conv
    out["objetos"] = [letras_parche(ff(6, pal(6, s["objetos"] + 2 * (k - 1))), idioma).strip()
                      for k in range(1, N_OBJETOS + 1)]
    cs = ff(6, s["cogido"])
    out["cogido"] = letras_parche(cs[2:] if idioma == "ES" else cs, idioma).strip()
    cargados = sorted({pal(6, q + 1) for q in FINAL_PARCHE} | {s["the_end"]})
    out["final"], out["final_sin_lector"] = [], []
    for a in [pal(6, q + 1) for q in FINAL_PARCHE] + [s["the_end"]]:
        cs = ff(6, a)
        out["final"].append(dict(sitio="%04X" % a, renglones=final(cs, lambda r: letras_parche(r, idioma))))
        # detras del 0xFF, hasta el texto siguiente que se carga: nadie lo lee
        # (p06:AADD se queda en el 0xFF y ningun paso sigue desde alli)
        b, sig = a + len(cs) + 1, min([x for x in cargados if x > a] or [a])
        while b < sig and lee(6, b) != 0xFF:
            cs = ff(6, b)
            out["final_sin_lector"].append(dict(sitio="%04X" % b, tras="%04X" % a,
                                                renglones=final(cs[1:], lambda r: letras_parche(r, idioma))))
            b += len(cs) + 1
    rot = {}
    for clave, b in (("panel1", 1), ("panel2", 1), ("ventana", 12), ("shot1", 12), ("mizugeta", 12)):
        rot[clave] = rotulo(ff(b, s[clave]), lambda r: letras_parche(r, idioma))
    out["rotulos"] = rot
    out["sitios"] = {k: "%04X" % v for k, v in s.items()}
    return out


def imanok():
    datos = {i: del_parche(i) for i in ("EN", "ES")}
    for i in datos:                     # para tools/lanza_final.sh
        with open(os.path.join(IMANOK, "kk2_%s.rom" % i.lower()), "wb") as f:
            f.write(parcheada(i))
    os.makedirs(os.path.dirname(DATOS), exist_ok=True)
    with open(DATOS, "w", encoding="utf-8", newline="\n") as f:
        json.dump(datos, f, ensure_ascii=False, indent=1)
        f.write("\n")
    return datos


def guardados():
    with open(DATOS, encoding="utf-8") as f:
        return json.load(f)


def coteja():
    """Vuelve a leer los parches y lo compara con el json; y las anclas: las
    acciones de las lineas en el mismo orden, el ancho de 20 y los enemigos."""
    malos = 0
    g = guardados()
    for i in ("EN", "ES"):
        nuevo = json.loads(json.dumps(del_parche(i), ensure_ascii=False))
        igual = nuevo == g[i]
        print("%s: el json %s" % (i, "igual" if igual else "DISTINTO"))
        malos += not igual
        rom = parcheada(i)
        orden = sum(1 for c, lineas in enumerate(nuevo["conversaciones"])
                    if [x["accion"] for x in lineas if x["accion"]] !=
                    [a for _s, a, _t in D.lineas(c + 1) if a])
        print("%s: %d conversaciones con las acciones en otro orden" % (i, orden))
        ancho = rom.count(bytes.fromhex("7ac60857fea8"))
        print("%s: cp 0A8h del renglon: %d" % (i, ancho))
        nombres = [bytes(hasta_ff(lambda x: rom[15 * 0x2000 + (x & 0x1FFF)],
                                  rom[15 * 0x2000 + 0x196C + 2 * t - 2] | rom[15 * 0x2000 + 0x196D + 2 * t - 2] << 8))
                   for t in range(1, 69)]
        orig = [bytes(hasta_ff(lambda x: P.lee(x, S15), P.palabra(0xBA76 + 2 * t, S15))) for t in range(1, 69)]
        print("%s: enemigos iguales al original: %d de 68" % (i, sum(a == b for a, b in zip(nombres, orig))))
        malos += ancho != 1 or nombres != orig
    return malos


def main():
    if sys.argv[1:] == ["pagina"]:
        import textos_pagina
        textos_pagina.pagina(os.path.join(RAIZ, "docs"))
        return 0
    if sys.argv[1:] == ["imanok"]:
        imanok()
        print(DATOS)
        return 0
    if sys.argv[1:] == ["coteja"]:
        return 1 if coteja() else 0
    o = original()
    g = guardados() if os.path.exists(DATOS) else {}
    for c in o["conversaciones"]:
        print("== conversacion 0x%02X (pantallas %s)" % (c["n"], ", ".join("0x%02X" % p for p in c["pantallas"]) or "-"))
        for x in c["lineas"]:
            print("  %s [%02X] %s" % (x["sitio"], x["accion"], x["texto"]))
        for i in g:
            for x in g[i]["conversaciones"][c["n"] - 1]:
                print("  %s [%02X] %s" % (i, x["accion"], x["texto"]))
    for k, x in enumerate(o["objetos"]):
        print("objeto %02X %s %s  %s" % (x["n"], x["sitio"], x["texto"], "  ".join(g[i]["objetos"][k] for i in g)))
    print("cogido", o["cogido"], "  ".join(g[i]["cogido"] for i in g))
    for k, x in enumerate(o["final"]):
        print("final %s %s" % (x["sitio"], " / ".join(x["renglones"])))
        for i in g:
            print("      %s %s" % (i, " / ".join(g[i]["final"][k]["renglones"])))
    for i in g:
        for x in g[i]["final_sin_lector"]:
            print("sin lector %s %s (tras %s) %s" % (i, x["sitio"], x["tras"], " / ".join(x["renglones"])))
    for x in o["rotulos"]:
        print("rotulo %s %s %s" % (x["clave"], x["sitio"], " | ".join(x["trozos"])),
              "  ".join(" | ".join(g[i]["rotulos"][x["clave"]]) for i in g))
    print("enemigos", ", ".join(x["texto"] for x in o["enemigos"]))
    print("creditos", " | ".join(o["creditos"]["trozos"]))
    return 0


if __name__ == "__main__":
    sys.exit(main())
