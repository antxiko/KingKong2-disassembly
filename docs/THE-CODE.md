# The code

## Everything runs in the interrupt

The cartridge hooks H.TIMI to **p00:4229**, which runs once per frame: first
the sound, with banks 4 and 5 mapped (p04:6228), and then the game
(p01:65C2): it bumps the frame counter (0xC103) and branches on the state.

## The dispatcher

p00:425F is Konami's dispatcher: the table of destinations is **glued right
after the `call`**. It pops the return address, which is the base of the
table, and jumps to destination number A. p00:4260 does the same with the
table in HL. The listing marks each of those tables as data and names their
destinations.

## The game states

0xC100 is the state and 0xC101 its step (table at p01:65D6): the Konami logo
being uncovered, the demo, the title, the game, GAME OVER with its CONTINUE
(F5), the pause and the ending (p06:A6CF). The game itself (p00:5C05)
branches again on 0xC201: playing, changing screen, in a conversation, the
durian&hellip;

## A screen

On entering a screen (0xC125), p00:4A7B chooses its **tile set** (a nibble
per screen at p07:6009, or per plane at p07:6000) and uploads to the page 1
sheet what its list says. The map is **5 × 5 blocks** of 4 × 4 tiles
(p10:6000, or p04:7E76 on the alternate planes); p00:4EE7 copies the 20 × 20
tiles to page 0 with HMMM from (8, 8). Then the palette, the screen's sprites
(p00:4CB3), the enemies (the list at p13:6000) and what is painted on top:
the statue, the bosses, the scenery that can be removed.

Twelve screens are **split**: p06:BEC5 shows one plane or the other depending
on which side Mitchel is on (0xC131).

## Mitchel

His state is 0xC300 (table at p01:6D3C): 0 still, 1-4 walking up, down, left
and right, 5 the hit, 6 spinning, 7 throwing. He walks from one 8-dot tile to
the next (p01:6F17); in the water of tile set 4, without the clogs, at half
step (p01:6F00). He is two overlaid 16 × 16 sprites; his pose comes every
frame from an RLE at p13:7D9B.

## The enemies

Thirteen records of 0x80 bytes at 0xD000. The type goes in ix+0: p01:6885
says which routine runs every frame and p00:5B1E what it does when created.
Nearly all of them go by steps (ix+1) through the dispatcher. From ix+0x12
on, each type uses the record its own way; `tools/anota.py` knows what each
field is in each enemy's code and comments it.

What gets thrown (stones, balls, the boomerang) are other records, the
figures 0x81-0x91 (p01:7077). On dying, p03:B9E6 decides what each type
drops, with its own count at 0xDFC0-0xDFDB.

## The sound

p04:6032 receives the sound: below 0x80, an effect, which uses the PSG's
channel C and takes it from the music while it plays; from 0x80 to 0x8D, one
of the 14 pieces, with one track per channel (p04:66D8). 0xFD pauses (and
plays a little tune), 0xFE brings the music back and 0xFF fades it out. The
tracks are bytes of note, rest, tempo, octave, volume, envelope, jumps, calls
and repeats (p04:638A).

## How the listing is made

`tools/bancos.py` traces the whole cartridge following the bank switches, the
dispatcher and the bridges. `tools/mkasm.py` writes each bank with its
`org`, its labels and its comments, taken from `src/pNN.notes`. 100% of the
131,072 bytes is assigned to code (37,983) or data (93,089), and 40.1% of the
18,093 instructions carry a comment, with no routine below 10%.
