# El cartucho

| | |
|---|---|
| título | *King Kong 2: Yomigaeru Densetsu* (キングコング2 甦る伝説, Konami, 1986) |
| número | RC-745 |
| máquina | MSX2 (V9938), SCREEN 5 |
| tamaño | 131.072 bytes: 16 bancos de 8 KB |
| mapper | Konami sin SCC (Konami4) |
| sonido | PSG, tres canales |
| sha256 | `9c42a0b4d4219176e0e894c434deb0b479cde3ce9edbd9e99395a8baae6c01d6` |

Es **MSX2** aunque no lo parezca a primera vista: p00:46DD espera el bit CE
del registro de estado 2 y p00:4706 lanza órdenes del VDP (LINE, HMMV, HMMM,
LMMM, PSET). En una máquina MSX1 se queda esperando en ese bucle.

## El mapper

El banco 0 está **fijo** en 0x4000-0x5FFF. Los otros tres huecos se eligen
escribiendo el número de banco en 0x6000, 0x8000 y 0xA000, y aquí **siempre
de tres en tres**: p00:42C6 tiene cinco puertas (1-2-3, 4-5-6, 7-8-9,
10-11-12 y 13-14-15). Por eso cada banco va siempre al mismo hueco, que
decide el resto de dividir su número entre tres:

| hueco | bancos |
|---|---|
| 0x4000 (fijo) | 0 |
| 0x6000 | 1, 4, 7, 10, 13 |
| 0x8000 | 2, 5, 8, 11, 14 |
| 0xA000 | 3, 6, 9, 12, 15 |

Las copias de lo que hay puesto van en 0xF0F1-0xF0F3, y 0xF0F6 guarda un
banco de **reserva** para 0xA000: 76 puentes del banco 0 son `call X` /
`jp 0x4215`, y 0x4215 devuelve ese banco al acabar.

## Qué hay en cada banco

Nueve bancos llevan código; siete son solo datos.

| banco | qué lleva |
|---|---|
| 0 | el arranque, la interrupción, las órdenes del VDP, cómo se monta una pantalla, los sprites, las fichas de enemigos, los jefes que se suben a pelo |
| 1 | los estados del juego, el teclado y el mando, Mitchel, los objetos, la música de cada zona, quién habla |
| 2 | el motor de las conversaciones, el decorado que cambia, la figura que sigue a Mitchel y la mitad de los enemigos |
| 3 | la otra mitad de los enemigos, lo que tiran y lo que sueltan al morir |
| 4 | el reproductor de sonido y sus pistas; los planos de las pantallas partidas |
| 5 | patrones de sprite de los enemigos (RLE) y la fuente de letras (p05:9F99) |
| 6 | la entrada en la isla, los tres finales, el título, los pasadizos y los planos alternos |
| 7, 8 | qué juego de dibujos lleva cada pantalla, las paletas, los bloques de 4 × 4 dibujos y los iconos de los objetos (p07:630A) |
| 9 | los golpes y el daño, la experiencia, las vecinas de cada pantalla (p09:B1C5) y el decorado que se quita |
| 10, 11 | el mapa del exterior (25 bloques por pantalla, p10:6000) y dibujos de 8 × 8 |
| 12 | lo que hace cada línea de conversación, sus textos y la ventana de objetos |
| 13 | las poses de Mitchel, los enemigos de cada pantalla y los gráficos de los jefes-sprite |
| 14 | las figuras de los jefes que se pintan con el VDP |
| 15 | los nombres de objetos y enemigos, el decorado que se deshace a puntos |

## La VRAM

SCREEN 5, 256 × 212 a 16 colores. La **página 0** es la que se ve; la
**página 1** es el almacén:

- las líneas 0-63, la hoja de 256 dibujos de 8 × 8 de la pantalla (su juego
  de dibujos, p00:4A7B);
- las letras de la fuente, en dos colores;
- desde la línea 0x70 (VRAM 0xB800), los 38 iconos de los objetos;
- desde la línea 0xA8, las figuras de los jefes que no son sprites;
- las tablas de sprites en 0xF400 (colores), 0xF600 (atributos) y 0xF800
  (patrones).

## La RAM que importa

| dirección | qué es |
|---|---|
| 0xC100 / 0xC101 | el estado del juego y su paso |
| 0xC125 | la pantalla |
| 0xC131 | el plano (0, el exterior; en las pantallas partidas, el alterno) |
| 0xC127 | DAYS |
| 0xC129 | LIFE |
| 0xC12B | EXP |
| 0xC12E | LEVEL |
| 0xC12F | MP |
| 0xC135 | GOLD |
| 0xC140 / 0xC141 | SHOT1 (el arma) y SHOT2 (el objeto) |
| 0xC16E | las veces que se ha continuado |
| 0xC300-0xC306 | Mitchel: estado, y, x, dirección |
| 0xC400 | los objetos del suelo (4 fichas) |
| 0xC500 | el decorado que se puede quitar (3 fichas) |
| 0xC600 | la figura que sigue a Mitchel |
| 0xC800 | lo que se empuja |
| 0xD000 | las 13 fichas de enemigos, de 0x80 bytes |
| 0xDE00, 0xDF00 | los jefes muertos y los enemigos muertos alrededor |
