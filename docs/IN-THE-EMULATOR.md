# In the emulator

What is drawn on this website is checked against **openMSX** with a Japanese
MSX2 machine (`C-BIOS_MSX2_JP`, and `-romtype Konami` after the `-cart`). The
probes are Tcl scripts that put the cartridge where it is needed by touching
the RAM and dump the VRAM, the RAM, the palette and the VDP registers. They
are run **one at a time**.

## The probes

| probe | what it does | launcher |
|---|---|---|
| `omsx_vuelca.tcl` | dumps at the given seconds: the Konami logo and the title | `lanza_vuelca.sh` |
| `omsx_pantallas.tcl` | puts each screen in 0xC125 with 0xC201 = 1 and dumps the VRAM | `lanza_pantallas.sh` |
| `omsx_salidas.tcl` | leaves Mitchel against an edge and notes which screen he reaches | `lanza_salidas.sh` |
| `omsx_enemigos.tcl` | the 13 records, sprites and colours, sample by sample, screen by screen | `lanza_enemigos.sh` |
| `omsx_lecturas.tcl` | who reads each byte of the cartridge, with which bank mapped | `lanza_lecturas.sh` |
| `omsx_truco.tcl` | the level trick: TAB and an F key at the start | `lanza_truco.sh` |

```
KK_OUT=work/truco KK_FILA=7 KK_MASCARA=0x01 \
openmsx -machine C-BIOS_MSX2_JP -cart kingkong2.rom -romtype Konami \
        -script tools/omsx_truco.tcl
```

## The checks

`tools/coteja.py` compares what is drawn from the ROM with the dumps. Current
result:

| check | what it compares | result |
|---|---|---|
| `titulo` | the Konami logo (170 × 56 of page 1) and the title (the whole of page 0), with the 16 colours | 0 dots different |
| `pantallas` | the 160 × 160 dots of each screen and its palette | 94 of 140 identical; in nearly all the others the difference is what the game paints **on top** of the map (items, bosses, the boat); on eight a palette colour changes, and on four (0x48, 0x4A, 0x5F and 0x6F) almost nothing matches and it is still to be looked at |
| `objetos` | the 38 icons that p00:4AED uploads to 0xB800 | 222 dumps: 182 identical and 40 with the same box of page 1 overwritten by something else (see [Open questions](OPEN-QUESTIONS.md)) |
| `tools/jefes.py` | what p00:4BD0 uploads on the seven boss screens | 0 bytes different |
| exits | the neighbours at p09:B1C5, walking Mitchel out through the edges | 9 out of 9 |
| trick | LEVEL with TAB+F1 and TAB+F4 | 10 and 40, as p01:67F3 says |

## Tips for seeing it

- The screen goes in 0xC125; with 0xC201 = 1 the game loads it.
- Mitchel: 0xC303 is his y, 0xC305 his x.
- LEVEL is 0xC12E (BCD), LIFE 0xC129, GOLD 0xC135.
- With TAB and F1-F5 held down at the start, you start with LEVEL 10-50.
- An MSX1 machine hangs at p00:46DD waiting for the VDP: it needs an MSX2.
