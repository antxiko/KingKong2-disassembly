# Empezar

Para reproducir este desensamblado hace falta Python 3 (con Pillow para las
imágenes), GNU make y [Pasmo](https://pasmo.speccy.org/). La imagen del
cartucho **no viaja en este repositorio**: cada cual pone la suya.

```
kingkong2.rom    131.072 bytes
sha256           9c42a0b4d4219176e0e894c434deb0b479cde3ce9edbd9e99395a8baae6c01d6
```

Con el fichero en la raíz del repositorio:

```
make            # listado, verificación, coherencia y tests
```

## Qué hace cada paso

| orden | qué hace |
|---|---|
| `make comprueba` | comprueba el sha256 de la ROM |
| `make semillas` | traza el cartucho entero y saca las entradas de cada banco |
| `make listado` | genera los dieciséis `.asm` desde el binario, las notas y las semillas |
| `make verify` | reensambla cada banco y la ROM entera, y compara los sha256 |
| `make sanity` | comprueba que no queda un solo byte sin asignar a código o a datos |
| `make test` | los tests |
| `make densidad` | cuántas instrucciones llevan comentario, rutina a rutina |
| `make web` | genera las páginas HTML y comprueba los enlaces |

`make verify` es el que decide: tiene que acabar con
`OK: la ROM entera reproducible byte a byte`.

Las imágenes de `docs/imagenes/` las dibujan las herramientas de `tools/`
desde la ROM: `titulo.py`, `mapa.py` y `marcas.py`, `figuras.py`, `jefes.py`
y `objetos.py`. `coteja.py` las compara con los volcados de openMSX, que no
viajan en el repositorio: se hacen con los lanzadores de
[En el emulador](EN-EL-EMULADOR.md).

## Dónde está cada cosa

- `src/kingkong2_pNN.asm`: el listado, uno por banco. **Se genera**: no se
  edita a mano.
- `src/pNN.notes`: las etiquetas (`L`), los comentarios de línea (`C`), los
  rangos de datos (`D`) y los encabezados de rutina (`B`). Esto **sí** se
  edita. Tiene tres secciones: la escrita a mano, la de `tools/bloques.py`
  (los datos que lee el código) y la de `tools/anota.py` (comentarios que se
  deducen de las tablas: la RAM, los campos de la ficha de cada enemigo, las
  llamadas entre bancos).
- `src/semillas.txt` y `src/tablas.txt`: las entradas de código que el
  trazador no encuentra solo (saltos por tabla, direcciones que se meten en la
  pila).
- `tools/`: el trazador del cartucho entero (`bancos.py`), el generador del
  listado (`mkasm.py`) y las herramientas que dibujan y cotejan.
- `docs/`: esta web, en inglés en la raíz y en castellano en `docs/es/`.
