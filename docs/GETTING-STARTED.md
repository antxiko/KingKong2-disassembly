# Getting started

To reproduce this disassembly you need Python 3 (with Pillow for the
pictures), GNU make and [Pasmo](https://pasmo.speccy.org/). The cartridge
image **does not travel in this repository**: bring your own.

```
kingkong2.rom    131,072 bytes
sha256           9c42a0b4d4219176e0e894c434deb0b479cde3ce9edbd9e99395a8baae6c01d6
```

With the file at the root of the repository:

```
make            # listing, verification, consistency and tests
```

## What each step does

| command | what it does |
|---|---|
| `make comprueba` | checks the sha256 of the ROM |
| `make semillas` | traces the whole cartridge and gets the entry points of each bank |
| `make listado` | builds the sixteen `.asm` files from the binary, the notes and the seeds |
| `make verify` | reassembles each bank and the whole ROM, and compares the sha256 |
| `make sanity` | checks that not a single byte is left unassigned to code or data |
| `make test` | the tests |
| `make densidad` | how many instructions carry a comment, routine by routine |
| `make web` | builds the HTML pages and checks the links |

`make verify` is the one that decides: it has to end with
`OK: la ROM entera reproducible byte a byte`.

The pictures in `docs/imagenes/` are drawn from the ROM by the tools in
`tools/`: `titulo.py`, `mapa.py` and `marcas.py`, `figuras.py`, `jefes.py` and
`objetos.py`. `coteja.py` compares them with the openMSX dumps, which do not
travel in the repository: they are made with the launchers in
[In the emulator](IN-THE-EMULATOR.md).

## Where everything is

- `src/kingkong2_pNN.asm`: the listing, one per bank. **It is generated**: do
  not edit it by hand.
- `src/pNN.notes`: the labels (`L`), the line comments (`C`), the data ranges
  (`D`) and the routine headers (`B`). This **is** edited. It has three
  sections: the hand-written one, the one from `tools/bloques.py` (the data
  the code reads) and the one from `tools/anota.py` (comments deduced from the
  tables: the RAM, the fields of each enemy's record, the calls between banks).
- `src/semillas.txt` and `src/tablas.txt`: code entry points the tracer does
  not find on its own (jumps through tables, addresses pushed on the stack).
- `tools/`: the whole-cartridge tracer (`bancos.py`), the listing generator
  (`mkasm.py`) and the tools that draw and check.
- `docs/`: this website, in English at the root and in Spanish in `docs/es/`.
