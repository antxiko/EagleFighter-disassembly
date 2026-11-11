# Under the hood

## Rebuilding the ROM

`make verify` assembles `src/eaglefighter.asm` with pasmo and the 32 KB ROM comes out **byte for byte**.
`make sanity` checks what reassembly does not cover: that no byte declared as data is read as code, that no entry
point falls into data and that all 32,768 bytes are explained. `make test` runs the tests. The ROM is not in the
repository: put it in the root as `eaglefighter.rom` (the GoodMSX dump, `[!]`, sha1 `d916f0e4...`).

| | bytes |
|---|---|
| traced code | 9,880 |
| named data | 22,888 |
| unexplained | 0 |

The listing has 1,741 comments on 4,352 instructions (40.0%), 533 routines and labels, none below 10% commented,
and no called routine without a name.

## The cartridge

0x4000-0x5FFF is 0xFF; the header is at 0x8000, with INIT at 0x8010. Data: the title tiles (0x6000, 0x6800), the
enemies and their waves (0x7000-0x7D69), the status line, the runway and the landscapes (0x8F0D-0x958D), the texts
(0x98B0), the sound (0xA466), the tiles of the stages (0xA800, 0xB000) and the sprite drawings (0xB800).

## The BIOS it uses

SETGRP for SCREEN 2, CHGCLR, WRTVDP, DISSCR and ENASCR; FILVRM, LDIRVM and WRTVRM for the VRAM; GTSTCK and GTTRIG for
the controls and SNSMAT for the space bar; WRTPSG for the sound; and the BIOS font at its address in the MSX BIOS
(0x1D3F, 0x1CBF).

## The interrupt and the loop

INIT puts a jump to 0x996D on the H.TIMI hook (0xFD9F). The interrupt only counts frames (sixteen counts,
0xE010-0xE01F) and reads the controls; in the demo it moves the stick itself. The game runs in the **main loop**
(`partida_bucle`, 0x82A6): once per frame (0xE011), the enemies, the status line, the sound, the sprites, the bars,
the ground and the runway (`cada_cuadro`, 0x82F2), then the crash, the landing and the flight.

| 0xE19F | |
|---|---|
| 0 | on the runway |
| 1 | taking off |
| 2 | in the air |
| 3 | landing |

## How it was done

The trace follows the code from INIT, the interrupt and four tables of jumps (the enemy types, their movements, the
directions of their shots and the steps of the big one), declared in `src/eaglefighter.entries`. The rest was
**measured in openMSX** (`tools/omsx_cobertura.tcl`) playing and waiting for the demo on a Philips VG 8020: nothing
that ran was left out of the trace. The coverage has to look at the slot: the cartridge is in page 2 at INIT and
only later in page 1.

The recordings for the site (`tools/guiones/*.tcl`, recorded with `tools/lanza_graba.ps1` on C-BIOS) log, on every
frame, the VDP registers, the RAM from 0xE000, the PSG and the VRAM that has changed. `tools/pantallas.py` runs the
title with `tools/bios.py`, `tools/gifs.py` makes the GIFs and `tools/musica.py` runs the sound engine.

## The RAM

| | |
|---|---|
| 0xE000 | playing |
| 0xE001-0xE006 | the score, one digit per byte |
| 0xE00A / 0xE00B | the stage (0-15) / the spare lives |
| 0xE00C-0xE00E | the score, BCD |
| 0xE010-0xE01F | the frame counts |
| 0xE040 / 0xE044 | the button / the space bar, just pressed |
| 0xE048 | the demo |
| 0xE080-0xE087 | the sound |
| 0xE089-0xE091 | the high score: digits and BCD |
| 0xE100-0xE17F | the sprite attributes: the plane (0, 1), the enemy shots (4-9), the enemies (10-21), the plane's shots (28-31) |
| 0xE198 | the stick |
| 0xE19B | crashed |
| 0xE19D | the part of the flight: 0 combat, 1 refuelling, 2 landing |
| 0xE19E | the speed |
| 0xE19F | on the runway, taking off, in the air, landing |
| 0xE1A0 | the fuel |
| 0xE1A5 | the altitude |
| 0xE1AD | landed |
| 0xE1CA | the enemies left (BCD, the SHOT box) |
| 0xE280-0xE2D5 | the sound: the three channels and the requests |
| 0xE300-0xE35F | the enemy shots (16 bytes each) |
| 0xE360-0xE41F | the enemies (32 bytes each) |
| 0xE480-0xE488 | the wave |
