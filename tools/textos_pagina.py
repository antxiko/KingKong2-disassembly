# -*- coding: utf-8 -*-
"""La pagina LOS-TEXTOS / THE-TEXTS: los textos del cartucho (tools/textos.py)
con la traduccion de los parches de Imanok (tools/datos/textos_imanok.json).

Uso: textos.py pagina
"""
import os

import textos as X

CREDITO_ES = ("los parches de **Imanok, Manuel Pazos y Ramones** "
              "([KING KONG 2 ULTIMATE TRANSLATION](https://msxblue.com/imanok/), 2012-2013; "
              "los textos los tradujeron Chiho y Kyoko)")
CREDITO_EN = ("the patches by **Imanok, Manuel Pazos and Ramones** "
              "([KING KONG 2 ULTIMATE TRANSLATION](https://msxblue.com/imanok/), 2012-2013; "
              "the texts were translated by Chiho and Kyoko)")

PAGINA = {
    "es": dict(
        ruta=os.path.join("es", "LOS-TEXTOS.md"),
        intro="""# Los textos

King Kong 2: Yomigaeru Densetsu salió solo en japonés. Aquí están todos sus textos, sacados de la ROM con `tools/textos.py`, cada uno con su dirección y quién lo pide. Al lado va la traducción al inglés y al castellano de %s, como sugirió theNestruo. **La traducción es suya.** Los parches no se incluyen: con los dos IPS en `work/imanok/`, `tools/textos.py imanok` vuelve a sacar sus textos.

Los parches reensamblan el juego entero, así que sus textos están en otras direcciones (se dan abajo), y a veces parten en dos una línea del original. Las letras propias de cada parche, que juntan varias en un dibujo (BOOMERANG, ARCO ARPA, «LL.» de llave), se transcriben como se leen. Un **·** es un código por debajo de 0x30, que no tiene letra en la fuente: sale el dibujo c + 0x10 de la hoja (`p00:495F`), y no lo hemos mirado.""" % CREDITO_ES,
        h_conv="""## Las conversaciones

56 conversaciones (`p12:A66E`, `tools/dialogos.py`). Las pide `p01:7E57` según la pantalla donde se para Mitchel (`p12:A5FE`) o la lista de parejas de `p01:7EF5`. Cada línea lleva delante su acción (`p02:8065`), que la tabla da entre corchetes cuando no es 0. En los parches la tabla está en 0xA14E del banco 12; el renglón salta solo a las 20 letras (`p02:810E`, el mismo en las tres versiones).""",
        conv="### Conversación 0x%02X · %s",
        pantallas="pantalla", pantallas_pl="pantallas", nadie="ninguna pantalla la pide",
        cols_c="| Línea | Japonés | Inglés (Imanok) | Castellano (Imanok) |\n|---|---|---|---|",
        h_obj="""## Los objetos

36 nombres (`p15:A069` + 2 × n), que escribe `p00:4423`; detrás, `p00:42F6` pone «を とりました。» (`p15:A062`). En los parches, la tabla está en `p06:B525` (inglés) y `p06:B526` (castellano).""",
        cols_o="| N.º | Japonés | Inglés (Imanok) | Castellano (Imanok) |\n|---|---|---|---|",
        cogido="al coger",
        h_rot="""## Los rótulos

Posición y letras, con 0xFE delante de cada trozo. Los del marcador, la ventana de los objetos y «みずげた» (los zuecos, que `p12:BD73` escribe si se tienen). En el original ya están en inglés, salvo el último.""",
        cols_r="| Dónde | Lo pide | Original | Inglés (Imanok) | Castellano (Imanok) |\n|---|---|---|---|---|",
        h_fin="""## El final

Los nueve textos que cargan las escenas de los tres finales (`p06:A8DF`-`p06:AAAD`) y THE END (`p06:A711`), letra a letra cada 4 cuadros (`p06:AADD`); 0xFE salta de renglón. En los parches, las mismas cargas en las mismas direcciones (la última en `p06:AAB0`).""",
        cols_f="| Texto | Lo pide | Japonés | Inglés (Imanok) | Castellano (Imanok) |\n|---|---|---|---|---|",
        sin_lector="""En los dos parches el cuarto texto sale cortado: detrás de su 0xFF viene el resto, «%s» en inglés y «%s» en castellano, y no lo lee nadie. La rutina que escribe (`p06:AADD`) se para en el 0xFF y los pasos de la escena son los del original, que solo cambian las direcciones de los textos. Visto en openMSX con los dos parches (`tools/lanza_final.sh`): el texto se queda en su primer renglón y a los pocos segundos sale el final, con el puntero del texto sin pasar del 0xFF. Es un byte, y lo arregla [el parche](EL-PARCHE.md) de aquí.""",
        h_ene="""## Los enemigos

68 nombres (`p15:BA76` + 2 × tipo), que pinta `p01:61DD`. Ya están en inglés en el original y los parches los dejan igual (`p15:B96C`, los 68 iguales).""",
        cols_e="| Tipo | Nombre | Dónde |\n|---|---|---|",
        h_cre="""## Los créditos

Los del título (`p06:BAE7`, `p06:BAD5`), en inglés. Los parches traen otro título y no los llevan.""",
    ),
    "en": dict(
        ruta="THE-TEXTS.md",
        intro="""# The texts

King Kong 2: Yomigaeru Densetsu only came out in Japanese. Here are all of its texts, taken from the ROM with `tools/textos.py`, each with its address and what asks for it. Next to them is the English and Spanish translation from %s, as theNestruo suggested. **The translation is theirs.** The patches are not included: with the two IPS files in `work/imanok/`, `tools/textos.py imanok` extracts their texts again.

The patches reassemble the whole game, so their texts sit at other addresses (given below), and sometimes they split one line of the original in two. The patches' own glyphs that pack several letters into one drawing (BOOMERANG, ARCO ARPA, "LL." for llave) are transcribed as they read. A **·** is a code below 0x30, which has no letter in the font: it shows drawing c + 0x10 of the sheet (`p00:495F`), and we have not looked at it.""" % CREDITO_EN,
        h_conv="""## The conversations

56 conversations (`p12:A66E`, `tools/dialogos.py`). `p01:7E57` asks for them by the screen where Mitchel stops (`p12:A5FE`) or by the list of pairs at `p01:7EF5`. Each line starts with its action (`p02:8065`), shown in brackets when it is not 0. In the patches the table is at 0xA14E in bank 12; the line wraps by itself at 20 letters (`p02:810E`, the same in all three versions).""",
        conv="### Conversation 0x%02X · %s",
        pantallas="screen", pantallas_pl="screens", nadie="no screen asks for it",
        cols_c="| Line | Japanese | English (Imanok) | Spanish (Imanok) |\n|---|---|---|---|",
        h_obj="""## The items

36 names (`p15:A069` + 2 × n), written by `p00:4423`; after them, `p00:42F6` adds "を とりました。" (`p15:A062`). In the patches, the table is at `p06:B525` (English) and `p06:B526` (Spanish).""",
        cols_o="| No. | Japanese | English (Imanok) | Spanish (Imanok) |\n|---|---|---|---|",
        cogido="on pick-up",
        h_rot="""## The labels

Position and letters, with 0xFE before each piece. The ones on the status panel, the item window and "みずげた" (the clogs, which `p12:BD73` writes when you have them). In the original they are already in English, except the last one.""",
        cols_r="| Where | Asked for by | Original | English (Imanok) | Spanish (Imanok) |\n|---|---|---|---|---|",
        h_fin="""## The ending

The nine texts loaded by the scenes of the three endings (`p06:A8DF`-`p06:AAAD`) and THE END (`p06:A711`), typed out one letter every 4 frames (`p06:AADD`); 0xFE starts a new line. In the patches, the same loads at the same addresses (the last one at `p06:AAB0`).""",
        cols_f="| Text | Asked for by | Japanese | English (Imanok) | Spanish (Imanok) |\n|---|---|---|---|---|",
        sin_lector="""In both patches the fourth text comes out cut short: after its 0xFF comes the rest, "%s" in English and "%s" in Spanish, and nothing reads it. The routine that writes (`p06:AADD`) stops at the 0xFF, and the steps of the scene are those of the original, with only the text addresses changed. Seen in openMSX with both patches (`tools/lanza_final.sh`): the text stays on its first line and a few seconds later THE END comes up, with the text pointer never going past the 0xFF. It is one byte, and [the patch](THE-PATCH.md) here fixes it.""",
        h_ene="""## The enemies

68 names (`p15:BA76` + 2 × type), drawn by `p01:61DD`. They are already in English in the original and the patches leave them as they are (`p15:B96C`, all 68 the same).""",
        cols_e="| Type | Name | Where |\n|---|---|---|",
        h_cre="""## The credits

The ones on the title screen (`p06:BAE7`, `p06:BAD5`), in English. The patches have a different title screen and do not carry them.""",
    ),
}


def _celda(t):
    return (t or "").replace("|", "\\|")


def _alinea(orig, en, es):
    """Filas de la conversacion: las lineas con accion (distinta de 0) van
    juntas en las tres; entre ellas, lo que haya, rellenando al final."""
    def trozos(lineas):
        out, uno = [], []
        for x in lineas:
            if x["accion"]:
                out.append(uno)
                out.append([x])
                uno = []
            else:
                uno.append(x)
        out.append(uno)
        return out
    filas = []
    for a, b, c in zip(trozos(orig), trozos(en), trozos(es)):
        for k in range(max(len(a), len(b), len(c))):
            filas.append(tuple(t[k] if k < len(t) else None for t in (a, b, c)))
    return filas


def pagina(docs):
    o = X.original()
    g = X.guardados()
    rutas = []
    for k, P in PAGINA.items():
        out = [P["intro"], P["h_conv"]]
        for c in o["conversaciones"]:
            n = c["n"]
            ps = c["pantallas"]
            quien = (("%s " % (P["pantallas"] if len(ps) == 1 else P["pantallas_pl"]))
                     + ", ".join("0x%02X" % p for p in ps)) if ps else P["nadie"]
            out.append(P["conv"] % (n, quien))
            filas = []
            for a, b, e in _alinea(c["lineas"], g["EN"]["conversaciones"][n - 1], g["ES"]["conversaciones"][n - 1]):
                sitio = ("`%s`" % a["sitio"] + (" [%02X]" % a["accion"] if a["accion"] else "")) if a else ""
                filas.append("| %s | %s | %s | %s |" % (sitio, _celda(a and a["texto"]), _celda(b and b["texto"]),
                                                         _celda(e and e["texto"])))
            out.append(P["cols_c"] + "\n" + "\n".join(filas))
        out.append(P["h_obj"])
        filas = ["| 0x%02X `%s` | %s | %s | %s |" % (x["n"], x["sitio"], x["texto"], g["EN"]["objetos"][i], g["ES"]["objetos"][i])
                 for i, x in enumerate(o["objetos"])]
        filas.append("| %s `%s` | %s | %s | %s |" % (P["cogido"], o["cogido"]["sitio"], o["cogido"]["texto"],
                                                      g["EN"]["cogido"], g["ES"]["cogido"]))
        out.append(P["cols_o"] + "\n" + "\n".join(filas))
        out.append(P["h_rot"])
        filas = ["| `%s` | `%s` | %s | %s | %s |" % (x["sitio"], x["quien"], " / ".join(x["trozos"]),
                                                    " / ".join(g["EN"]["rotulos"][x["clave"]]),
                                                    " / ".join(g["ES"]["rotulos"][x["clave"]]))
                 for x in o["rotulos"]]
        out.append(P["cols_r"] + "\n" + "\n".join(filas))
        out.append(P["h_fin"])
        filas = ["| `%s` | `%s` | %s | %s | %s |" % (x["sitio"], x["quien"], " / ".join(x["renglones"]),
                                                    " / ".join(g["EN"]["final"][i]["renglones"]),
                                                    " / ".join(g["ES"]["final"][i]["renglones"]))
                 for i, x in enumerate(o["final"])]
        out.append(P["cols_f"] + "\n" + "\n".join(filas))
        out.append(P["sin_lector"] % (" / ".join(g["EN"]["final_sin_lector"][0]["renglones"]),
                                      " / ".join(g["ES"]["final_sin_lector"][0]["renglones"])))
        out.append(P["h_ene"])
        filas = ["| %d | %s | `%s` |" % (x["n"], x["texto"], x["sitio"]) for x in o["enemigos"]]
        out.append(P["cols_e"] + "\n" + "\n".join(filas))
        out.append(P["h_cre"])
        out.append("> " + " / ".join(o["creditos"]["trozos"]))
        ruta = os.path.join(docs, P["ruta"])
        with open(ruta, "w", encoding="utf-8", newline="\n") as f:
            f.write("\n\n".join(out) + "\n")
        rutas.append(ruta)
        print(ruta)
    return rutas
