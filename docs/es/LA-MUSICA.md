# La música

Todo lo que suena aquí sale de ejecutar el motor de sonido del cartucho (`el_sonido_de_este_cuadro`, p04:6228, y `pide_un_sonido`, p04:6032, que apunta las piezas; la interrupción lo llama en p00:4233 con los bancos 4 y 5) en un Z80 emulado, cuadro a cuadro y a 60 por segundo, igual que lo llama el juego. Lo que el motor escribe en el PSG pasa a sonido con un AY-3-8910 (`tools/musica.py`). Cada MP3 es la pieza entera hasta donde vuelve a empezar, más 8 segundos de la vuelta apagándose; las que no se repiten acaban donde acaba el motor.

## Cotejado con openMSX

Las escrituras al PSG se han comparado cuadro a cuadro con las de openMSX (C-BIOS MSX2 japonés). En todos los cuadros el PSG queda igual:

- la pieza 0x81 entera, sus primeros 181 cuadros;
- la pieza 0x85, 1.076 cuadros, tal como el juego la pide;
- la pieza 0x87, sus primeros 181 cuadros.

El timbre no está cotejado: es el de un AY-3-8910 de manual, no una grabación del emulador. Las sondas están en `tools/omsx_psg.tcl` y `tools/coteja_psg.py`.

## Cómo se pide una pieza

`sonido` (p00:5490) mete los bancos 4 y 5 y llama a `pide_un_sonido` con el número en A (`sonido_si_juega`, p00:5488, no suena en la demostración: bit 6 de 0xC102). El 0 lo para todo, los menores de 0x80 son efectos, del 0x80 en adelante son piezas, y del 0xFD órdenes (pausa, sigue, fundido). La 0x85 suena como la 0x80. Antes se corre `el_sonido_desde_cero`, que deja la copia del mezclador del PSG en 0xBC. La RAM del sonido está en 0xC010-0xC09F. Las pistas «de la tabla» salen de la tabla por un número calculado; las que suenan igual que otra se publican una vez, y las que duran más de 75 segundos sin volver a empezar se cortan a los 75.

## Las músicas

**La pieza del 0x666B** (0x85)

Lo pide `L_666B` (suena como la 0x80); se corta a los 75 s (la pieza sigue).

<audio controls preload="none" src="../audio/musica_85.mp3?v=a0c79717"></audio>

**La pieza del 0x8265** (0x81)

Lo pide `L_8265`; dura 5,0 s.

<audio controls preload="none" src="../audio/musica_81.mp3?v=51a604b5"></audio>

**La pieza del 0x8271** (0x82)

Lo pide `L_8271`; dura 36,7 s y vuelve a empezar en el segundo 6,3.

<audio controls preload="none" src="../audio/musica_82.mp3?v=d3aeee5b"></audio>

**La pieza del 0x6BF8** (0x8A)

Lo pide `L_6BF8`; dura 1,8 s.

<audio controls preload="none" src="../audio/musica_8A.mp3?v=e0a6fa70"></audio>

**La pieza del 0x66D6** (0x89)

Lo pide `L_66D6`; dura 6,3 s.

<audio controls preload="none" src="../audio/musica_89.mp3?v=b658ce7a"></audio>

**Pista 0x80 de la tabla** (0x80)

Lo pide ninguna llamada directa: sale de la tabla de piezas por un número calculado; dura 63,4 s y vuelve a empezar en el segundo 25,0.

<audio controls preload="none" src="../audio/musica_80.mp3?v=50256bd9"></audio>

**Pista 0x83 de la tabla** (0x83)

Lo pide ninguna llamada directa: sale de la tabla de piezas por un número calculado; dura 29,6 s y vuelve a empezar en el segundo 0,2.

<audio controls preload="none" src="../audio/musica_83.mp3?v=e45d6e3f"></audio>

**Pista 0x84 de la tabla** (0x84)

Lo pide ninguna llamada directa: sale de la tabla de piezas por un número calculado; dura 21,4 s y vuelve a empezar en el segundo 0,0.

<audio controls preload="none" src="../audio/musica_84.mp3?v=48b36f3d"></audio>

**Pista 0x87 de la tabla** (0x87)

Lo pide ninguna llamada directa: sale de la tabla de piezas por un número calculado; dura 26,4 s y vuelve a empezar en el segundo 13,6.

<audio controls preload="none" src="../audio/musica_87.mp3?v=c8d455ec"></audio>

**Pista 0x88 de la tabla** (0x88)

Lo pide ninguna llamada directa: sale de la tabla de piezas por un número calculado; dura 9,3 s y vuelve a empezar en el segundo 0,8.

<audio controls preload="none" src="../audio/musica_88.mp3?v=8dd2b3c8"></audio>

**Pista 0x8B de la tabla** (0x8B)

Lo pide ninguna llamada directa: sale de la tabla de piezas por un número calculado; dura 12,0 s y vuelve a empezar en el segundo 8,0.

<audio controls preload="none" src="../audio/musica_8B.mp3?v=6460c62b"></audio>

**Pista 0x8F de la tabla** (0x8F)

Lo pide ninguna llamada directa: sale de la tabla de piezas por un número calculado; se corta a los 75 s (la pieza sigue).

<audio controls preload="none" src="../audio/musica_8F.mp3?v=b81ec479"></audio>

**Pista 0xAB de la tabla** (0xAB)

Lo pide ninguna llamada directa: sale de la tabla de piezas por un número calculado; dura 63,4 s y vuelve a empezar en el segundo 25,0.

<audio controls preload="none" src="../audio/musica_AB.mp3?v=a298dee6"></audio>

**Pista 0xAC de la tabla** (0xAC)

Lo pide ninguna llamada directa: sale de la tabla de piezas por un número calculado; dura 35,3 s y vuelve a empezar en el segundo 5,0.

<audio controls preload="none" src="../audio/musica_AC.mp3?v=cf8647de"></audio>

**Pista 0xAD de la tabla** (0xAD)

Lo pide ninguna llamada directa: sale de la tabla de piezas por un número calculado; se corta a los 75 s (la pieza sigue).

<audio controls preload="none" src="../audio/musica_AD.mp3?v=fe70f6f3"></audio>

**Pista 0xAE de la tabla** (0xAE)

Lo pide ninguna llamada directa: sale de la tabla de piezas por un número calculado; se corta a los 75 s (la pieza sigue).

<audio controls preload="none" src="../audio/musica_AE.mp3?v=dd7f5eed"></audio>

**Pista 0xAF de la tabla** (0xAF)

Lo pide ninguna llamada directa: sale de la tabla de piezas por un número calculado; se corta a los 75 s (la pieza sigue).

<audio controls preload="none" src="../audio/musica_AF.mp3?v=29574b00"></audio>

**Pista 0xB0 de la tabla** (0xB0)

Lo pide ninguna llamada directa: sale de la tabla de piezas por un número calculado; se corta a los 75 s (la pieza sigue).

<audio controls preload="none" src="../audio/musica_B0.mp3?v=572b74e1"></audio>

**Pista 0xB2 de la tabla** (0xB2)

Lo pide ninguna llamada directa: sale de la tabla de piezas por un número calculado; dura 39,2 s y vuelve a empezar en el segundo 13,6.

<audio controls preload="none" src="../audio/musica_B2.mp3?v=327a5aeb"></audio>

**Pista 0xB3 de la tabla** (0xB3)

Lo pide ninguna llamada directa: sale de la tabla de piezas por un número calculado; dura 14,8 s y vuelve a empezar en el segundo 6,3.

<audio controls preload="none" src="../audio/musica_B3.mp3?v=36ef4b2f"></audio>

**Pista 0xB5 de la tabla** (0xB5)

Lo pide ninguna llamada directa: sale de la tabla de piezas por un número calculado; dura 12,0 s y vuelve a empezar en el segundo 8,0.

<audio controls preload="none" src="../audio/musica_B5.mp3?v=ba1e98a2"></audio>

**Pista 0xB6 de la tabla** (0xB6)

Lo pide ninguna llamada directa: sale de la tabla de piezas por un número calculado; dura 12,0 s y vuelve a empezar en el segundo 8,0.

<audio controls preload="none" src="../audio/musica_B6.mp3?v=3079bbe3"></audio>
