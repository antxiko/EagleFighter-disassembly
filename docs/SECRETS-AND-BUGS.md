# Secrets and bugs

What was searched for in the code and what was found. A bug only goes here if it has been checked: by running the
game's own routine (`tools/bios.py`) or against the openMSX recordings.

## Secrets: none hidden

- **No hidden keys.** The controls are read in the interrupt (0x997F-0x9A2A): the stick from the cursor keys and
  joystick 1 (GTSTCK 0 and 1), the joystick 1 button (GTTRIG 1) and the space bar (SNSMAT, row 8). No GRAPH or other
  button, and no key at power-on.
- **What is not used** (the text "TIME :OVER", tune 5, four pieces of code and the EPROM leftovers) is in
  [Curiosities](CURIOSITIES.html): nothing switches any of it on.

## Bug: the big one is worth 0 on stage 14

From stage 8 on, each kill is worth 10 points more per stage. `enemigo_cae` (0x721F) does it with the stage minus 6
times 16 (0x10 in BCD is 10 points) added **in binary**, without `daa`, to the enemy's points (0x722C), and if it goes
past 0xA0 it splits off the hundreds. But if the sum goes past 0xFF, the byte wraps and the carry is lost. It only
happens to the big one, worth 90 (0x90). Running the game's calculation here:

| stage | the big one | should give | a 20 one |
|---|---|---|---|
| 8 | 100 | 100 | 30 |
| 13 | 150 | 150 | 80 |
| 14 | **0** | 160 | 90 |
| 15 | **10** | 170 | 100 |
| 16 | **20** | 180 | 110 |

## Bug: the cursor keys and the joystick are added

Told in [Curiosities](CURIOSITIES.html), and now run: `palanca_lee` (0x998E) adds the direction numbers of the cursor
keys and the joystick (0x999E). With both at once:

| cursor keys | joystick | result |
|---|---|---|
| right | down | **up-left** (8) |
| up | down | **down-left** (6) |
| up | left | **up-left** (8) |

## Bug: the score has no cap

`puntos_suma` (0x979B) adds in BCD with carry up to the top byte (0xE00C), and there the carry is lost. Running it
here, 999,990 + 10 gives **000000**, and 999,950 + 90, **000040**.
