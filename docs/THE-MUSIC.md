# The music

Five tunes, in three voices. They are not hand-made recordings: `tools/musica.py` **runs the ROM's own sound
engine** with `tools/z80run.py` -the sound routine (`sonido`, 0xA046), frame by frame, with the number the game
writes- and logs what it writes to the PSG through the BIOS (WRTPSG).

**Checked against openMSX**: the tone and volume registers of the three channels match the recorded ones, **0
different** in every frame checked. Four tunes were recorded (`tools/guiones/`): the demo, a whole game with take-off,
landing and GAME OVER, and a game lost on the runway. Each recorded frame is paired with the engine frame that has
the same RAM in the three channels; the engine starts with the sound RAM and the PSG as the game had them. While a
sound effect plays on a channel, that channel is not checked. One crash in the air, in the whole-game recording,
finds no pairs and is not counted. The landing tune is checked in that same recording; tune 5 is not checked,
because the game never asks for it.

## The engine

It runs once per frame from the main loop. It takes three **requests**: a tune for the three channels (0xE2BE), a
sound effect for channel A (0xE2C0) and one for channels B and C (0xE2C2); a request wins over what is playing if
its number is lower (`sonido`, 0xA046). Each channel has an 18-byte block (A at 0xE280, B at 0xE292, C at
0xE2A4) that is copied to a work block, takes a step and goes back. A piece is a list of notes (the length in the
high half of the byte, the volume in the low one, the tone in one or two bytes) and orders: 0xF0 a noise note with
a sweep, 0xFF the end, 0xF7 silence, 0xFE start again, and three loops with their counts (0xFD-0xFC, 0xFB-0xFA,
0xF9-0xF8). The same engine is in other Casio cartridges of those years.

| | Who asks for it | Length |
|---|---|---:|
| the stage | the plane on the runway at the start (0x8296) | 4.3 s |
| GAME OVER | no lives left (0x967D) | 3.8 s |
| the crash | the plane crashes (0x9603) | 2.7 s |
| the landing | LANDING BONUS (0x970B) | 2.1 s |
| tune 5 | nobody: the four calls ask for 1-4 | 4.3 s |

## The stage

<audio controls src="audio/musica_fase.mp3"></audio>

## GAME OVER

<audio controls src="audio/musica_game_over.mp3"></audio>

## The crash

<audio controls src="audio/musica_estrellado.mp3"></audio>

## The landing

<audio controls src="audio/musica_aterrizaje.mp3"></audio>

## Tune 5

<audio controls src="audio/musica_5.mp3"></audio>
