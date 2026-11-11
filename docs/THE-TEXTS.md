# The texts

The game writes with the **BIOS font**: at power-on it copies the characters from "0" to "_" (0x1D3F) to tiles
0x00-0x2F and those from the space to "/" (0x1CBF) to tiles 0x30-0x3F, in the three thirds (0x805B); tile 0x10,
which would be the "@", is blanked and is the space. So a letter is its code - 0x30 and a sign, its code + 0x10.
The logo, the two eagles and CASIO on the title are drawn tiles of their own.

| address | original | translation | where it appears |
|---|---|---|---|
| 0x9917 | EAGLE FIGHTER | Eagle Fighter | the title, the logo in drawn tiles (six rows of 10) |
| 0x9953 | CASIO | Casio | the title, in drawn tiles |
| 0x98C7 | PUSH TRIGGER OR SPACE | Press the button or the space bar | the title |
| 0x98DC | COPYRIGHT 1985 © CASIO | Copyright 1985 Casio | the title |
| 0x9671 | DEMO PLAY | Demo | during the demo |
| 0x9587 | HISCORE | High score | the status line |
| 0x9589 | SCORE | Score | the status line: the last five letters of HISCORE |
| 0x8F27 | SPEED | Speed | the status line, over its bar |
| 0x8F2C | FUEL | Fuel | the status line, over its bar |
| 0x8F30 | ALTI | Altitude | the status line, over its bar |
| 0x84F2 | SHOT | Shot | the box under the radar: enemies left |
| 0x98B0 | TAKE OFF:BONUS 1000PTS. | Take-off: bonus 1,000 points | blinking after take-off |
| 0x8B01 | LANDING | Landing | when the enemies are down |
| 0x9741 | LANDING BONUS | Landing bonus | once landed |
| 0x98FC | GAME OVER | Game over | with no lives left |
| 0x98F2 | TIME :OVER | Time over | **nobody writes it** |

The status line also has "P=" and the stage, and a little plane (tile 0xA1) with "=" and the spare lives
(`marcador_textos`, 0x8DD9).
