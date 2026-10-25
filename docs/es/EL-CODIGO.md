# El código

## Todo corre en la interrupción

El cartucho engancha H.TIMI a **p00:4229**, que corre una vez por cuadro:
primero el sonido, con los bancos 4 y 5 puestos (p04:6228), y luego el juego
(p01:65C2): sube el contador de cuadros (0xC103) y reparte por el estado.

## El despachador

p00:425F es el despachador de Konami: la tabla de destinos va **pegada detrás
del `call`**. Saca de la pila la dirección de vuelta, que es la base de la
tabla, y salta al destino número A. p00:4260 hace lo mismo con la tabla en HL.
El listado marca cada una de esas tablas como datos y nombra sus destinos.

## Los estados del juego

0xC100 es el estado y 0xC101 su paso (tabla de p01:65D6): el logotipo de
Konami que se destapa, la demostración, el título, la partida, el GAME OVER
con su CONTINUE (F5), la pausa y el final (p06:A6CF). La partida en sí
(p00:5C05) reparte otra vez por 0xC201: jugando, cambiando de pantalla, en
una conversación, el durián&hellip;

## Una pantalla

Al entrar en una pantalla (0xC125), p00:4A7B elige su **juego de dibujos**
(un nibble por pantalla en p07:6009, o por plano en p07:6000) y sube a la
hoja de la página 1 lo que dice su lista. El mapa son **5 × 5 bloques** de
4 × 4 dibujos (p10:6000, o p04:7E76 en los planos alternos); p00:4EE7 copia
los 20 × 20 dibujos a la página 0 con HMMM desde (8, 8). Luego la paleta,
los sprites de la pantalla (p00:4CB3), los enemigos (la lista de p13:6000) y
lo que se pinta encima: la estatua, los jefes, el decorado que se puede quitar.

Doce pantallas están **partidas**: p06:BEC5 enseña un plano u otro según el
lado en que esté Mitchel (0xC131).

## Mitchel

Su estado es 0xC300 (tabla de p01:6D3C): 0 quieto, 1-4 andando arriba, abajo,
a la izquierda y a la derecha, 5 el golpe, 6 dando vueltas, 7 lanzando. Anda
de casilla en casilla de 8 puntos (p01:6F17); en el agua del juego de dibujos
4, sin los zuecos, a medio paso (p01:6F00). Es dos sprites de 16 × 16 superpuestos; su pose sale cada cuadro de un
RLE de p13:7D9B.

## Los enemigos

Trece fichas de 0x80 bytes en 0xD000. El tipo va en ix+0: p01:6885 dice qué
rutina corre cada cuadro y p00:5B1E qué hace al crearse. Casi todos van por
pasos (ix+1) con el despachador. Del ix+0x12 en adelante cada tipo usa la
ficha a su manera; `tools/anota.py` sabe qué es cada campo en el código de
cada enemigo y lo comenta.

Lo que se tira (piedras, bolas, el boomerang) son otras fichas, las figuras
0x81-0x91 (p01:7077). Al morir, p03:B9E6 decide qué suelta cada tipo, con una
cuenta propia en 0xDFC0-0xDFDB.

## El sonido

p04:6032 recibe el sonido: menos de 0x80, un efecto, que va por el canal C
del PSG y se lo quita a la música mientras suena; de 0x80 a 0x8D, una de las
14 piezas, con una pista por canal (p04:66D8). 0xFD pausa (y toca una
musiquilla), 0xFE devuelve la música y 0xFF la funde. Las pistas son bytes de
nota, silencio, tempo, octava, volumen, envolvente, saltos, llamadas y
repeticiones (p04:638A).

## Cómo está hecho el listado

`tools/bancos.py` traza el cartucho entero siguiendo los cambios de banco, el
despachador y los puentes. `tools/mkasm.py` escribe cada banco con su `org`,
sus etiquetas y sus comentarios, sacados de `src/pNN.notes`. El 100 % de los
131.072 bytes está asignado a código (37.983) o a datos (93.089), y el 40,1 %
de las 18.093 instrucciones lleva comentario, sin ninguna rutina por debajo
del 10 %.

## Código compartido con otros cartuchos de Konami

Este desensamblado se ha comparado, instrucción por instrucción, con
todos los demás de Konami de la serie. Cuenta un bloque cuando las
mismas instrucciones, al menos seis desde una etiqueta hasta su `ret`
o su salto sin condición, están en los dos cartuchos; las direcciones
no se miran, porque cambian de un cartucho a otro. De los otros 57,
**40** tienen al menos un bloque en común con este; estos son los
que más comparten:

| Cartucho | Bloques | Instrucciones | Por ejemplo (aquí = allí) |
|---|---:|---:|---|
| [Vampire Killer](https://antxiko.github.io/VampireKiller-disassembly/es/) | 68 | 1.003 | `lmmm` (p00:481B) = `copia_con_operacion` |
| [Ganbare Goemon! Karakuri Dōchū](https://antxiko.github.io/GanbareGoemon-disassembly/es/) | 65 | 970 | `lmmm` (p00:481B) |
| [Metal Gear](https://antxiko.github.io/MetalGear-disassembly/es/) | 54 | 853 | `lmmm` (p00:481B) = `copia_logica` |
| [The Treasure of Usas](https://antxiko.github.io/TreasureOfUsas-disassembly/es/) | 52 | 752 | `lmmm` (p00:481B) = `copia_con_operacion` |
| [Hinotori](https://antxiko.github.io/Hinotori-disassembly/es/) | 43 | 678 | `lmmm` (p00:481B) |
| [The Pro Yakyuu Gekitotsu Pennant Race](https://antxiko.github.io/PennantRace-disassembly/es/) | 30 | 460 | `lmmm` (p00:481B) = `copia_logica` |
| [Konami’s Game Master 2](https://antxiko.github.io/GameMaster2-disassembly/es/) | 26 | 429 | `lmmm` (p00:481B) = `vdp_lmmm` |
| [Gekitotsu Pennant Race 2](https://antxiko.github.io/PennantRace2-disassembly/es/) | 21 | 282 | `hmmv` (p00:479B) = `borra_bloque_vram` |
| [Hai no Majutsushi - Mahjong 2](https://antxiko.github.io/Majutsushi-disassembly/es/) | 18 | 202 | `rle_con_destino` (p00:45E9) = `vuelca_lista_vram` |
| [The Maze of Galious](https://antxiko.github.io/MazeOfGalious-disassembly/es/) | 17 | 197 | `el_sonido_desde_cero` (p04:6000) = `sonido_a_cero` |

La matriz entera, los 58 cartuchos entre sí, está en
[Las rutinas](https://antxiko.github.io/MSX-disassembly-database/es/LAS-RUTINAS.html) de la base de datos de la
serie, con el método y el programa que la mide.
