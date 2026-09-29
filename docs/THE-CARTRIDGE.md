# The cartridge

| | |
|---|---|
| title | *King Kong 2: Yomigaeru Densetsu* (キングコング2 甦る伝説, Konami, 1986) |
| number | RC-745 |
| machine | MSX2 (V9938), SCREEN 5 |
| size | 131,072 bytes: 16 banks of 8 KB |
| mapper | Konami without SCC (Konami4) |
| sound | PSG, three channels |
| sha256 | `9c42a0b4d4219176e0e894c434deb0b479cde3ce9edbd9e99395a8baae6c01d6` |

It is **MSX2** even if it does not look like it at first: p00:46DD waits for
the CE bit of status register 2 and p00:4706 issues VDP commands (LINE, HMMV,
HMMM, LMMM, PSET). On an MSX1 machine it keeps waiting in that loop.

## The mapper

Bank 0 is **fixed** at 0x4000-0x5FFF. The other three slots are chosen by
writing the bank number to 0x6000, 0x8000 and 0xA000, and here **always three
at a time**: p00:42C6 has five gates (1-2-3, 4-5-6, 7-8-9, 10-11-12 and
13-14-15). That is why every bank always goes to the same slot, which is
decided by the remainder of its number divided by three:

| slot | banks |
|---|---|
| 0x4000 (fixed) | 0 |
| 0x6000 | 1, 4, 7, 10, 13 |
| 0x8000 | 2, 5, 8, 11, 14 |
| 0xA000 | 3, 6, 9, 12, 15 |

The copies of what is mapped live at 0xF0F1-0xF0F3, and 0xF0F6 keeps a
**reserve** bank for 0xA000: 76 bridges in bank 0 are `call X` /
`jp 0x4215`, and 0x4215 puts that bank back when done.

## What each bank holds

Nine banks carry code; seven are data only.

| bank | what it holds |
|---|---|
| 0 | start-up, the interrupt, the VDP commands, how a screen is built, the sprites, the enemy records, the bosses uploaded raw |
| 1 | the game states, keyboard and joystick, Mitchel, the items, each area's music, who talks |
| 2 | the conversation engine, the changing scenery, the figure that follows Mitchel and half of the enemies |
| 3 | the other half of the enemies, what they throw and what they drop when they die |
| 4 | the sound player and its tracks; the planes of the split screens |
| 5 | the enemies' sprite patterns (RLE) and the letter font (p05:9F99) |
| 6 | the arrival on the island, the three endings, the title, the passages and the alternate planes |
| 7, 8 | which tile set each screen uses, the palettes, the blocks of 4 × 4 tiles and the item icons (p07:630A) |
| 9 | hits and damage, experience, each screen's neighbours (p09:B1C5) and the scenery that can be removed |
| 10, 11 | the outdoor map (25 blocks per screen, p10:6000) and 8 × 8 tiles |
| 12 | what each conversation line does, their texts and the item window |
| 13 | Mitchel's poses, the enemies of each screen and the graphics of the sprite bosses |
| 14 | the figures of the bosses painted by the VDP |
| 15 | the names of items and enemies, the scenery that dissolves dot by dot |

## The VRAM

SCREEN 5, 256 × 212 in 16 colours. **Page 0** is the one on view; **page 1**
is the store:

- lines 0-63, the sheet of 256 8 × 8 tiles of the screen (its tile set,
  p00:4A7B);
- the letters of the font, in two colours;
- from line 0x70 (VRAM 0xB800), the 38 item icons;
- from line 0xA8, the figures of the bosses that are not sprites;
- the sprite tables at 0xF400 (colours), 0xF600 (attributes) and 0xF800
  (patterns).

## The RAM that matters

| address | what it is |
|---|---|
| 0xC100 / 0xC101 | the game state and its step |
| 0xC125 | the screen |
| 0xC131 | the plane (0, outdoors; on split screens, the alternate one) |
| 0xC127 | DAYS |
| 0xC129 | LIFE |
| 0xC12B | EXP |
| 0xC12E | LEVEL |
| 0xC12F | MP |
| 0xC135 | GOLD |
| 0xC140 / 0xC141 | SHOT1 (the weapon) and SHOT2 (the item) |
| 0xC16E | how many times you have continued |
| 0xC300-0xC306 | Mitchel: state, y, x, direction |
| 0xC400 | the items on the ground (4 records) |
| 0xC500 | the scenery that can be removed (3 records) |
| 0xC600 | the figure that follows Mitchel |
| 0xC800 | the thing that can be pushed |
| 0xD000 | the 13 enemy records, 0x80 bytes each |
| 0xDE00, 0xDF00 | the dead bosses and the dead enemies around |
