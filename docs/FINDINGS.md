# Findings

What turned up when the cartridge was taken apart. Each one says where it
comes from and how it is checked: **seen in openMSX**, **checked** (drawn from
the ROM and compared with a dump) or **from the code** (read in the listing,
not played).

## Three endings, and the best one is not the obvious one

The game counts the days (0xC127, one every 2048 frames: about 34 seconds)
and the times you have continued after GAME OVER (0xC16E, p01:66DD). On
finding LADY KONG, p06:A837 chooses the ending:

| condition | ending |
|---|---|
| 366 days or more | too late: «AMY could do nothing: KING KONG has just died» |
| otherwise, 51 continues or more | AMY operates and KING KONG comes back to life |
| fewer than 51 | the same, and a baby KONG as well |

The texts are the ROM's (p06:AD44-AF40). *From the code.*

## The level trick

With **TAB and an F key** held down when the game starts (on pressing SPACE
during the demo), p01:67F3 leaves in 0xC11E the level you start with: F1 10,
F2 20, F3 30, F4 40 and F5 50; p00:5388 copies it to LEVEL.

*Seen in openMSX* (`tools/omsx_truco.tcl`): without the trick, LEVEL 00;
TAB+F1, 10; TAB+F4, 40, in RAM and on the panel.

## Every enemy has its weapon

p09:BB14 decides whether the SHOT1 weapon does anything to the enemy, and
p09:BAE8 looks separately at the sword of light, the axe and the harpoon:

- the **axe** only hurts **GRIZZLY**, and GRIZZLY only falls to it;
- the **harpoon**, only **B F MAN** and **D F MAN**;
- **WHITEFIRE** and **WHITEOGRE**, only with the **sword of light**;
- **CLUBMAN**, with the ROD; **BIGSPIDER**, with the knife; **REDSPIDER**,
  with the club or the claw; SLIPSLIME, GARGOYLE, MUDMASK, BOGGEDMAN, BLOWMIRE,
  MIREWORM and MIREFROG, only with the claw;
- **TWINMIRES**, with anything, but only if you carry the おまもり charm
  (p09:BBAB);
- **THE NASTY**, **BADPRIEST**, **BIGFLOWER**, **MUDARMOR**, FIRETOTEM,
  GRASSOGRE and record 0x3D take nothing from close combat;
- THICKSKIN, MR. RUINS, CAVERNMAN and BUCKLER, depending on the side they are
  hit from.

Reading p09:BAFC it looked as if the sword of light hurt nobody: the `scf` at
p09:BAFF always leaves the «yes» flag. *From the code.*

## The axe is not sold: BOWLER drops it

No shop sells the axe (p12:B548). BOWLER drops it every 16 kills if you do not
carry it (p03:BBA9), except on screen 0x22, where every 5 it leaves someone
who talks. Every enemy has its loot (p03:BA66 and p03:BA06) and its count
(0xDFC0-0xDFDB, which p06:BF86 sets at the start):

- BATT, meat every 6 kills; RATT, やくそう every 3 on screen 9; DUNGROLL, 99
  stones every 5; CAVEMAN, 10 fireballs every 10;
- FIRETOTEM, the club every 12 if you do not carry it; GRASSOGRE, the ROD
  every 16; THICKSKIN, かいてん every 5; CAVERNBIG, 99 きいろいいし;
- REDSPIDER, ぱぴるす; BIGSPIDER, the wooden key; RED F MAN, the claw;
  REVOLVER, あぐのす; THE NASTY, the harpoon; BIGGUARD and SAVAGE, the iron
  key;
- after the bosses, event 5, which removes the scenery of that type;
- on screen 0x6E, when the WATCHMAN count runs out a passage appears.

*From the code.*

## THE NOT moves the opposite way to you

Lined up on a tile, THE NOT reads the player's keys (0xC107) and chooses the
opposite direction with the table at p02:9201: up for down, left for right.
One time in four it goes at random; once it is hit, always at random
(0xDFB5). BOWLER, in its step 1, goes **with** the keys (p02:8986), and the
worms (PIGWORM, BUCKLER, GRASSOGRE) move away from where Mitchel is facing if
any key is pressed (p03:B190). *From the code.*

## Five bosses that are not sprites

BIGFLOWER, TWINMIRES, THE NASTY, BADPRIEST and REVOLVER are not sprites. On
entering their screen, p00:4BD0 uploads their figure raw to page 1 (p14:
[mirror][rows][bytes][VRAM] and the bytes), and a second time mirrored if it
carries the flag. Every time they move or open their mouth, their routines
copy it to page 0 with LMMM and TIMP. Before that, p00:446E saves 64 × 64 dots
of the background at (0x90, 0x60) of page 1 to put it back later.

*Checked*: `tools/jefes.py` rebuilds what p00:4BD0 uploads on the seven
screens (0x29, 0x31, 0x34, 0x53, 0x57, 0x5C and 0x5D) and gives **0 bytes
different** against the dumps.

## What the island hides

- **15 passages**: p06:BD9D changes screen when Mitchel steps on a tile
  0xC0-0xC3 (list at p06:BE16). Several are covered by rocks that only the
  てむさ spell removes.
- **37 pieces of scenery** on 30 screens can be removed, each one by its event
  (p09:B3FD; p15:BD3A dissolves them dot by dot with the VDP's PSET command).
- Removing the one on screen 0x0B **makes the sword of light appear**
  (p15:BD80).
- On screen 0x0D, with the **wooden key**, you go through to 0x70 (p01:7F87).
- On screen 0x88, as long as you do not carry ささやき, a figure is painted
  (p06:BBEF, p06:BC05).

All of it marked on the map, from the tables.

## The durian and the one who follows Mitchel

Using the durian on the right screen and spot (p01:7D33) sets state 6 of the
game: the durian on the ground, the weapons gone, 30 frames, a tune, and to
screen 0x5F. From there, an eight-sprite figure (0xC600) follows Mitchel
along his path, 22 steps behind (p02:829A). If you change screen it stays
waiting until you come back. While it is with you, the radio gives another
conversation (0x38 instead of 0x37): «Good work, MITCHEL. We are on our way».
*From the code.*

## ROCKMAN and STONEMAN never head for Mitchel at random

Away from his row and column, ROCKMAN and STONEMAN pick a direction every three
steps. The code (`p02:9440`) takes a random number, keeps only bit 2 (`and 4`,
which gives 0 or 4) and jumps to "aim at Mitchel" (`p02:945D`) if it is 1: it
can never be 1, so the branch is never taken from there and the direction is
always random among the ones that are open. With `and 3` it would come up one
time in four. *It comes from the code: the comparison is impossible.*

## The thing that can be pushed

There is a thing that can be pushed (0xC800) and that travels from screen to
screen: it starts on screen 8, at (0x50, 0x50), and pushing it over the edge
moves it to the next screen (p12:BE68). Only outdoors; on screens 0-2 and on 4
it goes back to its place. *From the code.*

## Three enemies that do nothing

MUDMASK, BOGGEDMAN and BLOWPIPER have names, but their every-frame routine
(p01:690D) and their creation routine (p00:5BA6) are a `ret`.
*From the code.*
