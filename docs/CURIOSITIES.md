# Curiosities

## SCORE is inside HISCORE

The status line writes HISCORE from 0x9587 and SCORE from 0x9589: the last five letters of the same text
(`marcador_textos`, 0x8DD9). The row of blanks that wipes the texts does something similar: it starts with 11
blanks of its own (0x8C24) and goes on into the blank tiles that open the tanker drawing that follows it.

## The stick plus the cursors

The game reads the cursor keys (GTSTCK 0) and joystick 1 (GTSTCK 1) and **adds** the two numbers (`palanca_lee`,
0x998E). With only one of them in use it does not matter; with both at once, the sum is another direction.

## Up dives, down climbs

In the air the stick works like a plane's: pushing it forward (up) makes it dive and pulling it back (down) makes it
climb (`vuelo_palanca`, 0x8774). On the runway, instead, up accelerates and down brakes.

## A tune nobody asks for

The music table has six entries (0xA466): the 0 is silence, 1 to 4 are asked for by the game and the 5 is never
asked for: the four calls to the routine that asks for music (`musica_pide`, 0xA029) carry 1, 2, 3 and 4. It is in
[The music](THE-MUSIC.html), from the engine.

## Code nobody calls

- 0x9831 jumps over six bytes (0x9833) that are the same two instructions it has just run.
- 0x9886: `ld hl,0xAE00 / ld bc,0x0160 / jp LDIRVM`, with no call; the 0x200 bytes at 0xAE00 are zero.
- 0x781F: a routine that copies 8 bytes to a sprite and one more to the enemy, with no call.
- 0x7C2F: three instructions that set the final direction and the fast step, with no call.
- 0x98F2: the text "TIME :OVER", which nobody writes.

None of them ran in the coverage measured in openMSX.

## Leftovers in the EPROM

Three stretches of the cartridge hold bytes with no order (0x7D6A-0x7FFF, 0x9AD1-0x9FFF and 0xA65F-0xA7FF): no
pointer or table reaches them. Whether the game reads them while playing **has not been measured**.

## 8 KB of nothing

The cartridge is a 32 KB image whose first 8 KB are 0xFF: the BIOS finds no "AB" at 0x4000 and finds the header at
0x8000. The game then switches its own slot into page 1 as well (0x8014), because its data starts at 0x6000.
