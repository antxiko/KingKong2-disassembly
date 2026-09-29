# Open questions

What the disassembly does not fully explain yet, or what comes from the code
and still has to be seen in play.

## What comes from the code and still has to be played

The three endings, which weapon works against each enemy, what each one
drops, THE NOT going against the keys, the durian and the figure that follows
Mitchel, and the dead not coming back: all of it is read in the listing, with
its address, but we have not seen it in openMSX. The only thing checked in
play is the level trick.

## Who overwrites the icon box

On 40 screens (0x3F-0x88, those of tile set 8) something always writes on the
same box of page 1, x 40-207 and y 112-135, on top of the item icons that
p00:4AED uploads to 0xB800. We do not know yet which routine it is.

## Four screens that do not match their dump

Screens 0x48, 0x4A, 0x5F and 0x6F differ from the openMSX dump in nearly all
their cells, in the three sets of dumps. The other 136 match, or differ only
in what is painted on top of the map.

## 0xC32A, which nobody writes

p01:7F9B reads 0xC32A to choose the conversation of the alternate plane of
screen 0x0D, but no instruction in the cartridge writes there: the same one
always comes out.

## The figure that follows Mitchel

The conversation that changes while it is with you hints at who it is, but
we have not drawn it from its sprites yet (p00:507A, 0xC607).

## What is missing from the sheets

CLUBMAN (a boss made of sprites, with graphics 9-0x17 at p13:7D4B),
CAVERNBIG (only on the alternate plane of screen 0x58), the closing wall
(SHUT ALL, a piece of page 1), what the enemies throw (figures 0x81-0x91) and
the figures of the endings (p15:BA15-BA68) are not drawn yet.

## The conversations, untranslated

The 56 conversations are transcribed from Japanese (`tools/dialogos.py`),
but the translation is still to come.
