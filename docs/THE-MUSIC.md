# The music

Everything you hear here comes from running the cartridge's own sound engine (`el_sonido_de_este_cuadro`, p04:6228, and `pide_un_sonido`, p04:6032, which writes the pieces; the interrupt calls it at p00:4233 with banks 4 and 5) on an emulated Z80, frame by frame at 60 per second, just as the game calls it. What the engine writes to the PSG is turned into sound with an AY-3-8910 (`tools/musica.py`). Each MP3 is the whole piece up to where it starts again, plus 8 seconds of the repeat fading out; those that do not repeat end where the engine ends.

## Checked against openMSX

The PSG writes have been compared frame by frame with those of openMSX (C-BIOS MSX2 japonés). In every frame the PSG ends up the same:

- tune 0x81, its first 181 frames;
- tune 0x85, 1,076 frames, as the game asks for it;
- tune 0x87, its first 181 frames.

The timbre is not checked: it is a textbook AY-3-8910, not a recording of the emulator. The probes are `tools/omsx_psg.tcl` and `tools/coteja_psg.py`.

## How a piece is asked for

`sonido` (p00:5490) maps banks 4 and 5 and calls `pide_un_sonido` with the number in A (`sonido_si_juega`, p00:5488, makes no sound in the demo: bit 6 of 0xC102). 0 stops everything, below 0x80 are effects, from 0x80 up are pieces, and from 0xFD orders (pause, resume, fade). 0x85 sounds like 0x80. Before that, `el_sonido_desde_cero` runs, leaving the copy of the PSG mixer at 0xBC. The sound RAM is at 0xC010-0xC09F. The tracks marked «in the table» come out of the table by a computed number; those that sound like another are published once, and those that last over 75 seconds without starting again are cut at 75.

## The tunes

**The tune at 0x666B** (0x85)

Asked for by `L_666B` (suena como la 0x80); is cut at 75 s (the piece goes on).

<audio controls preload="none" src="audio/musica_85.mp3?v=a0c79717"></audio>

**The tune at 0x8265** (0x81)

Asked for by `L_8265`; lasts 5.0 s.

<audio controls preload="none" src="audio/musica_81.mp3?v=51a604b5"></audio>

**The tune at 0x8271** (0x82)

Asked for by `L_8271`; lasts 36.7 s and starts again at second 6.3.

<audio controls preload="none" src="audio/musica_82.mp3?v=d3aeee5b"></audio>

**The tune at 0x6BF8** (0x8A)

Asked for by `L_6BF8`; lasts 1.8 s.

<audio controls preload="none" src="audio/musica_8A.mp3?v=e0a6fa70"></audio>

**The tune at 0x66D6** (0x89)

Asked for by `L_66D6`; lasts 6.3 s.

<audio controls preload="none" src="audio/musica_89.mp3?v=b658ce7a"></audio>

**Table track 0x80** (0x80)

Asked for by ninguna llamada directa: sale de la tabla de piezas por un número calculado; lasts 63.4 s and starts again at second 25.0.

<audio controls preload="none" src="audio/musica_80.mp3?v=50256bd9"></audio>

**Table track 0x83** (0x83)

Asked for by ninguna llamada directa: sale de la tabla de piezas por un número calculado; lasts 29.6 s and starts again at second 0.2.

<audio controls preload="none" src="audio/musica_83.mp3?v=e45d6e3f"></audio>

**Table track 0x84** (0x84)

Asked for by ninguna llamada directa: sale de la tabla de piezas por un número calculado; lasts 21.4 s and starts again at second 0.0.

<audio controls preload="none" src="audio/musica_84.mp3?v=48b36f3d"></audio>

**Table track 0x87** (0x87)

Asked for by ninguna llamada directa: sale de la tabla de piezas por un número calculado; lasts 26.4 s and starts again at second 13.6.

<audio controls preload="none" src="audio/musica_87.mp3?v=c8d455ec"></audio>

**Table track 0x88** (0x88)

Asked for by ninguna llamada directa: sale de la tabla de piezas por un número calculado; lasts 9.3 s and starts again at second 0.8.

<audio controls preload="none" src="audio/musica_88.mp3?v=8dd2b3c8"></audio>

**Table track 0x8B** (0x8B)

Asked for by ninguna llamada directa: sale de la tabla de piezas por un número calculado; lasts 12.0 s and starts again at second 8.0.

<audio controls preload="none" src="audio/musica_8B.mp3?v=6460c62b"></audio>

**Table track 0x8F** (0x8F)

Asked for by ninguna llamada directa: sale de la tabla de piezas por un número calculado; is cut at 75 s (the piece goes on).

<audio controls preload="none" src="audio/musica_8F.mp3?v=b81ec479"></audio>

**Table track 0xAB** (0xAB)

Asked for by ninguna llamada directa: sale de la tabla de piezas por un número calculado; lasts 63.4 s and starts again at second 25.0.

<audio controls preload="none" src="audio/musica_AB.mp3?v=a298dee6"></audio>

**Table track 0xAC** (0xAC)

Asked for by ninguna llamada directa: sale de la tabla de piezas por un número calculado; lasts 35.3 s and starts again at second 5.0.

<audio controls preload="none" src="audio/musica_AC.mp3?v=cf8647de"></audio>

**Table track 0xAD** (0xAD)

Asked for by ninguna llamada directa: sale de la tabla de piezas por un número calculado; is cut at 75 s (the piece goes on).

<audio controls preload="none" src="audio/musica_AD.mp3?v=fe70f6f3"></audio>

**Table track 0xAE** (0xAE)

Asked for by ninguna llamada directa: sale de la tabla de piezas por un número calculado; is cut at 75 s (the piece goes on).

<audio controls preload="none" src="audio/musica_AE.mp3?v=dd7f5eed"></audio>

**Table track 0xAF** (0xAF)

Asked for by ninguna llamada directa: sale de la tabla de piezas por un número calculado; is cut at 75 s (the piece goes on).

<audio controls preload="none" src="audio/musica_AF.mp3?v=29574b00"></audio>

**Table track 0xB0** (0xB0)

Asked for by ninguna llamada directa: sale de la tabla de piezas por un número calculado; is cut at 75 s (the piece goes on).

<audio controls preload="none" src="audio/musica_B0.mp3?v=572b74e1"></audio>

**Table track 0xB2** (0xB2)

Asked for by ninguna llamada directa: sale de la tabla de piezas por un número calculado; lasts 39.2 s and starts again at second 13.6.

<audio controls preload="none" src="audio/musica_B2.mp3?v=327a5aeb"></audio>

**Table track 0xB3** (0xB3)

Asked for by ninguna llamada directa: sale de la tabla de piezas por un número calculado; lasts 14.8 s and starts again at second 6.3.

<audio controls preload="none" src="audio/musica_B3.mp3?v=36ef4b2f"></audio>

**Table track 0xB5** (0xB5)

Asked for by ninguna llamada directa: sale de la tabla de piezas por un número calculado; lasts 12.0 s and starts again at second 8.0.

<audio controls preload="none" src="audio/musica_B5.mp3?v=ba1e98a2"></audio>

**Table track 0xB6** (0xB6)

Asked for by ninguna llamada directa: sale de la tabla de piezas por un número calculado; lasts 12.0 s and starts again at second 8.0.

<audio controls preload="none" src="audio/musica_B6.mp3?v=3079bbe3"></audio>
