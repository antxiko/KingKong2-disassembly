# En el emulador

Lo que se dibuja en esta web está cotejado contra **openMSX** con una máquina
MSX2 japonesa (`C-BIOS_MSX2_JP`, y `-romtype Konami` detrás del `-cart`).
Las sondas son guiones Tcl que ponen el cartucho donde hace falta tocando la
RAM y vuelcan la VRAM, la RAM, la paleta y los registros del VDP. Se lanzan
**de una en una**.

## Las sondas

| sonda | qué hace | lanzador |
|---|---|---|
| `omsx_vuelca.tcl` | vuelca en los segundos que se le digan: el logotipo de Konami y el título | `lanza_vuelca.sh` |
| `omsx_pantallas.tcl` | pone cada pantalla en 0xC125 con 0xC201 = 1 y vuelca la VRAM | `lanza_pantallas.sh` |
| `omsx_salidas.tcl` | deja a Mitchel pegado a un borde y apunta a qué pantalla llega | `lanza_salidas.sh` |
| `omsx_enemigos.tcl` | 13 fichas, sprites y colores, muestra a muestra, pantalla a pantalla | `lanza_enemigos.sh` |
| `omsx_lecturas.tcl` | quién lee cada byte del cartucho, con qué banco puesto | `lanza_lecturas.sh` |
| `omsx_truco.tcl` | el truco del nivel: TAB y una F al empezar | `lanza_truco.sh` |

```
KK_OUT=work/truco KK_FILA=7 KK_MASCARA=0x01 \
openmsx -machine C-BIOS_MSX2_JP -cart kingkong2.rom -romtype Konami \
        -script tools/omsx_truco.tcl
```

## Los cotejos

`tools/coteja.py` compara lo dibujado desde la ROM con los volcados. Resultado
actual:

| prueba | qué compara | resultado |
|---|---|---|
| `titulo` | el logotipo de Konami (170 × 56 de la página 1) y el título (la página 0 entera), con los 16 colores | 0 puntos distintos |
| `pantallas` | los 160 × 160 puntos de cada pantalla y su paleta | 94 de 140 idénticas; en casi todas las demás la diferencia es lo que el juego pinta **encima** del mapa (objetos, jefes, la barca); en ocho cambia algún color de la paleta, y en cuatro (0x48, 0x4A, 0x5F y 0x6F) no casa casi nada y está por mirar |
| `objetos` | los 38 iconos que p00:4AED sube a 0xB800 | 222 volcados: 182 idénticos y 40 con la misma caja de la página 1 pisada por otra cosa (ver [Preguntas abiertas](PREGUNTAS-ABIERTAS.md)) |
| `tools/jefes.py` | lo que sube p00:4BD0 en las siete pantallas de jefe | 0 bytes distintos |
| salidas | las vecinas de p09:B1C5, sacando a Mitchel por los bordes | 9 de 9 |
| truco | LEVEL con TAB+F1 y TAB+F4 | 10 y 40, como dice p01:67F3 |

## Trucos para verlo

- La pantalla va en 0xC125; con 0xC201 = 1 el juego la carga.
- Mitchel: 0xC303 es su y, 0xC305 su x.
- LEVEL es 0xC12E (BCD), LIFE 0xC129, GOLD 0xC135.
- Con TAB y F1-F5 apretadas al empezar, se empieza con LEVEL 10-50.
- Una máquina MSX1 se queda colgada en p00:46DD esperando al VDP: hace falta
  MSX2.
