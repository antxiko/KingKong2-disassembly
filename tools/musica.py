#!/usr/bin/env python3
"""La musica del cartucho, ejecutando su motor de sonido (ver motor_musica.py).

Primero `el_sonido_desde_cero` (p04:6000), que deja la mezcla del PSG en 0xBC y
los canales en reposo; luego `pide_un_sonido` (p04:6032, A = numero, con los
bancos 4 y 5 en 0x6000 y 0x8000) y, cada cuadro, `el_sonido_de_este_cuadro`
(p04:6228), como hace el juego (p00:4233). La RAM del sonido es 0xC010-0xC09F.
MegaROM Konami4 de 128 KB, MSX2, sin SCC.
Uso:  musica.py registros 0x85 [cuadros] | mp3 0x85 f.mp3 | todas docs/audio
      musica.py barrido 0x80 0xFC | emu
"""
import os
import sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import motor_musica  # noqa: E402
from motor_musica import P  # noqa: E402

TABLA = "ninguna llamada directa: sale de la tabla de piezas por un número calculado"

PIEZAS = [
    P(0x85, "La pieza del 0x666B", "The tune at 0x666B",
      "`L_666B` (suena como la 0x80)"),
    P(0x81, "La pieza del 0x8265", "The tune at 0x8265", "`L_8265`"),
    P(0x82, "La pieza del 0x8271", "The tune at 0x8271", "`L_8271`"),
    P(0x8A, "La pieza del 0x6BF8", "The tune at 0x6BF8", "`L_6BF8`"),
    P(0x89, "La pieza del 0x66D6", "The tune at 0x66D6", "`L_66D6`"),
] + [P(n, "Pista 0x%02X de la tabla" % n, "Table track 0x%02X" % n, TABLA)
     for n in (0x80, 0x83, 0x84, 0x87, 0x88, 0x8B, 0x8F, 0xAB, 0xAC, 0xAD,
               0xAE, 0xAF, 0xB0, 0xB2, 0xB3, 0xB5, 0xB6)]

PAGINA = motor_musica.pagina_basica(
    "`el_sonido_de_este_cuadro`, p04:6228, y `pide_un_sonido`, p04:6032, "
    "que apunta las piezas; la interrupción lo llama en p00:4233 con los "
    "bancos 4 y 5",
    "`el_sonido_de_este_cuadro`, p04:6228, and `pide_un_sonido`, p04:6032, "
    "which writes the pieces; the interrupt calls it at p00:4233 with banks "
    "4 and 5",
    "C-BIOS MSX2 japonés",
    [("la pieza 0x81 entera, sus primeros 181 cuadros",
      "tune 0x81, its first 181 frames"),
     ("la pieza 0x85, 1.076 cuadros, tal como el juego la pide",
      "tune 0x85, 1,076 frames, as the game asks for it"),
     ("la pieza 0x87, sus primeros 181 cuadros",
      "tune 0x87, its first 181 frames")],
    [("Cómo se pide una pieza",
      "`sonido` (p00:5490) mete los bancos 4 y 5 y llama a `pide_un_sonido` "
      "con el número en A (`sonido_si_juega`, p00:5488, no suena en la "
      "demostración: bit 6 de 0xC102). El 0 lo para todo, los menores de "
      "0x80 son efectos, del 0x80 en adelante son piezas, y del 0xFD "
      "órdenes (pausa, sigue, fundido). La 0x85 suena como la 0x80. Antes "
      "se corre `el_sonido_desde_cero`, que deja la copia del mezclador "
      "del PSG en 0xBC. La RAM del sonido está en 0xC010-0xC09F. Las pistas "
      "«de la tabla» salen de la tabla por un número calculado; las que "
      "suenan igual que otra se publican una vez, y las que duran más de "
      "75 segundos sin volver a empezar se cortan a los 75.",
      "How a piece is asked for",
      "`sonido` (p00:5490) maps banks 4 and 5 and calls `pide_un_sonido` "
      "with the number in A (`sonido_si_juega`, p00:5488, makes no sound in "
      "the demo: bit 6 of 0xC102). 0 stops everything, below 0x80 are "
      "effects, from 0x80 up are pieces, and from 0xFD orders (pause, "
      "resume, fade). 0x85 sounds like 0x80. Before that, "
      "`el_sonido_desde_cero` runs, leaving the copy of the PSG mixer at "
      "0xBC. The sound RAM is at 0xC010-0xC09F. The tracks marked «in the "
      "table» come out of the table by a computed number; those that sound "
      "like another are published once, and those that last over 75 seconds "
      "without starting again are cut at 75.")])

CFG = dict(rom="kingkong2.rom", org=0x4000, mapper="konami",
           bancos0=((0x4000, 0), (0x6000, 4), (0x8000, 5), (0xA000, 6)),
           init=[(0x6000, {})], frame=0x6228, pide=0x6032,
           banco_frame=4, banco_pide=4, ram=(0xC010, 0xC0A0), hz=60,
           psg0={7: 0xBC}, romtype="konami", maquina="C-BIOS_MSX2_JP",
           max_s=75, piezas=PIEZAS, pagina=PAGINA,
           cotejado=[(0x81, 298, None), (0x85, 4500, None)])

if __name__ == "__main__":
    sys.exit(motor_musica.main(CFG, sys.argv[1:]))
