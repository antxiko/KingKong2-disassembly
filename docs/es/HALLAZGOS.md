# Hallazgos

Lo que ha salido al desmontar el cartucho. Cada uno dice de dónde sale y cómo
está comprobado: **visto en openMSX**, **cotejado** (dibujado desde la ROM y
comparado con un volcado) o **sale del código** (leído en el listado, sin
jugarlo).

## Tres finales, y el mejor no es el que parece

La partida cuenta los días (0xC127, uno cada 2048 cuadros: unos 34 segundos)
y las veces que se ha continuado tras el GAME OVER (0xC16E, p01:66DD). Al
encontrar a LADY KONG, p06:A837 elige el final:

| condición | final |
|---|---|
| 366 días o más | llegas tarde: «AMY no pudo hacer nada: KING KONG acaba de morir» |
| si no, 51 continuaciones o más | AMY lo opera y KING KONG revive |
| menos de 51 | lo mismo, y además un bebé KONG |

Los textos son de la ROM (p06:AD44-AF40). *Sale del código.*

## El truco del nivel

Con **TAB y una tecla F** apretadas cuando empieza la partida (al pulsar
ESPACIO en la demostración), p01:67F3 deja en 0xC11E el nivel con el que se
empieza: F1 10, F2 20, F3 30, F4 40 y F5 50; p00:5388 lo copia a LEVEL.

*Visto en openMSX* (`tools/omsx_truco.tcl`): sin el truco, LEVEL 00; TAB+F1,
10; TAB+F4, 40, en la RAM y en el panel.

## Cada enemigo con su arma

p09:BB14 decide si el arma de SHOT1 le hace algo al enemigo, y p09:BAE8 mira
aparte la espada de luz, el hacha y el arpón:

- el **hacha** solo le hace daño a **GRIZZLY**, y GRIZZLY solo cae con ella;
- el **arpón**, solo a **B F MAN** y **D F MAN**;
- **WHITEFIRE** y **WHITEOGRE**, solo con la **espada de luz**;
- **CLUBMAN**, con el ROD; **BIGSPIDER**, con el cuchillo; **REDSPIDER**, con
  el garrote o la garra; SLIPSLIME, GARGOYLE, MUDMASK, BOGGEDMAN, BLOWMIRE,
  MIREWORM y MIREFROG, solo con la garra;
- **TWINMIRES**, con cualquiera, pero solo si se lleva el amuleto おまもり
  (p09:BBAB);
- a **THE NASTY**, **BADPRIEST**, **BIGFLOWER**, **MUDARMOR**, FIRETOTEM,
  GRASSOGRE y la ficha 0x3D el cuerpo a cuerpo no les hace nada;
- THICKSKIN, MR. RUINS, CAVERNMAN y BUCKLER, según el lado por el que se les
  pegue.

Al leer p09:BAFC parecía que la espada de luz no le hacía daño a nadie: el
`scf` de p09:BAFF deja siempre la señal de «sí». *Sale del código.*

## El hacha no se vende: la suelta BOWLER

Ninguna tienda vende el hacha (p12:B548). BOWLER la suelta cada 16 muertes si
no se lleva (p03:BBA9), salvo en la pantalla 0x22, donde cada 5 deja a
alguien que habla. Cada enemigo tiene su botín (p03:BA66 y p03:BA06) y su
cuenta (0xDFC0-0xDFDB, que p06:BF86 pone al empezar):

- BATT, carne cada 6 muertes; RATT, やくそう cada 3 en la pantalla 9; DUNGROLL,
  99 piedras cada 5; CAVEMAN, 10 bolas de fuego cada 10;
- FIRETOTEM, el garrote cada 12 si no se lleva; GRASSOGRE, el ROD cada 16;
  THICKSKIN, かいてん cada 5; CAVERNBIG, 99 きいろいいし;
- REDSPIDER, ぱぴるす; BIGSPIDER, la llave de madera; RED F MAN, la garra;
  REVOLVER, あぐのす; THE NASTY, el arpón; BIGGUARD y SAVAGE, la llave de
  hierro;
- tras los jefes, el suceso 5, que quita el decorado de ese tipo;
- en la pantalla 0x6E, al acabar la cuenta de WATCHMAN aparece un pasadizo.

*Sale del código.*

## THE NOT se mueve al revés que tú

Alineado en una casilla, THE NOT lee las teclas del jugador (0xC107) y elige
la dirección contraria con la tabla de p02:9201: arriba por abajo, izquierda
por derecha. Una vez de cada cuatro va al azar; cuando le dan, ya siempre al
azar (0xDFB5). BOWLER, en su paso 1, va **con** las teclas (p02:8986), y los
gusanos (PIGWORM, BUCKLER, GRASSOGRE) se van hacia el lado contrario de donde
mira Mitchel si se pulsa alguna tecla (p03:B190). *Sale del código.*

## Cinco jefes que no son sprites

BIGFLOWER, TWINMIRES, THE NASTY, BADPRIEST y REVOLVER no son sprites. Al
entrar en su pantalla, p00:4BD0 sube su figura tal cual a la página 1 (p14:
[espejo][filas][bytes][VRAM] y los bytes), y la segunda vez en espejo si
lleva la bandera. Cada vez que se mueven o abren la boca, sus rutinas la
copian a la página 0 con LMMM y TIMP. Antes, p00:446E guarda 64 × 64 puntos
del fondo en (0x90, 0x60) de la página 1 para devolverlo después.

*Cotejado*: `tools/jefes.py` rehace lo que sube p00:4BD0 en las siete
pantallas (0x29, 0x31, 0x34, 0x53, 0x57, 0x5C y 0x5D) y da **0 bytes
distintos** contra los volcados.

## Lo que esconde la isla

- **15 pasadizos**: p06:BD9D salta de pantalla cuando Mitchel pisa una
  casilla 0xC0-0xC3 (lista de p06:BE16). Varios están tapados por rocas que
  solo quita el conjuro てむさ.
- **37 cosas de decorado** en 30 pantallas se pueden quitar, cada una por su
  suceso (p09:B3FD; p15:BD3A las deshace a puntos con la orden PSET del VDP).
- Al quitar la de la pantalla 0x0B **aparece la espada de luz** (p15:BD80).
- En la pantalla 0x0D, con la **llave de madera**, se pasa a la 0x70
  (p01:7F87).
- En la pantalla 0x88, mientras no se lleve ささやき, se pinta una figura
  (p06:BBEF, p06:BC05).

Todo marcado en el mapa, desde las tablas.

## El durián y la que sigue a Mitchel

Usar el durián en la pantalla y el sitio justos (p01:7D33) pone el estado 6
de la partida: el durián en el suelo, fuera las armas, 30 cuadros, una
música, y a la pantalla 0x5F. Desde ahí, una figura de ocho sprites (0xC600)
sigue a Mitchel por donde ha pasado, con 22 pasos de retraso (p02:829A). Si
cambias de pantalla se queda esperando hasta que vuelves. Mientras la llevas,
la radio da otra conversación (la 0x38 en vez de la 0x37): «Buen trabajo,
MITCHEL. Vamos para allá». *Sale del código.*

## Lo que se empuja

Hay una cosa que se empuja (0xC800) y que viaja de pantalla en pantalla:
empieza en la 8, en (0x50, 0x50), y al empujarla fuera del borde pasa a la
pantalla de al lado (p12:BE68). Solo por el exterior; en las pantallas 0-2 y
en la 4 vuelve a su sitio. *Sale del código.*

## Tres enemigos que no hacen nada

MUDMASK, BOGGEDMAN y BLOWPIPER tienen nombre, pero la rutina de cada cuadro
(p01:690D) y la de crearse (p00:5BA6) son un `ret`.
*Sale del código.*
