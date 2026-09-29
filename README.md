# King Kong 2: Yomigaeru Densetsu — a commented disassembly

*(También disponible [en castellano](README.es.md).)*

A commented disassembly of ***King Kong 2: Yomigaeru Densetsu***
(キングコング2 甦る伝説), Konami, 1986, cartridge **RC-745** for the **MSX2**:
a 128 KB MegaROM with Konami's mapper without SCC, sixteen 8 KB banks.

**The website**: https://antxiko.github.io/KingKong2-disassembly/

| | |
|---|---|
| explained | 100% (37,983 bytes of code, 93,089 of data) |
| commented | 40.1% of the instructions |
| routines | 2,414, none below 10% |
| reassembly | the ROM, byte for byte |
| pictures | drawn from the ROM and checked against openMSX |

## What is here

- The listing of the sixteen banks (`src/kingkong2_pNN.asm`), generated from
  the binary and the notes, which reassembles the exact ROM.
- The whole island: the 140 screens put together by their neighbours, with
  what each one hides (passages, removable scenery, items, who talks), from
  the cartridge's tables.
- Mitchel, the 55 enemies with their names, the five bosses the VDP paints and
  the 38 items.
- What every enemy does, which weapon works against it and what it drops,
  commented in the listing.

## How to reproduce it

You need Python 3 (with Pillow), GNU make, [Pasmo](https://pasmo.speccy.org/)
and **your own cartridge image** as `kingkong2.rom` at the root:

```
sha256  9c42a0b4d4219176e0e894c434deb0b479cde3ce9edbd9e99395a8baae6c01d6
make
```

The details are in [Getting started](docs/GETTING-STARTED.md).

## Notice

The game belongs to Konami; only the analysis, the comments and the tools are
here. The ROM is not distributed. See [LEGAL-NOTICE.md](LEGAL-NOTICE.md).
