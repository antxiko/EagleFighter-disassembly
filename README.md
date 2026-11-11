# Eagle Fighter - commented disassembly

*(También [en castellano](README.es.md).)*

The commented disassembly of **Eagle Fighter** (Casio, 1985) for the MSX: a 24 KB cartridge (a 32 KB image with its header at 0x8000).

- **100%** of the binary explained: 9,880 bytes of code and 22,888 of named data, not one byte unassigned.
- **40.0%** of the listing commented, 533 routines and labels, none below 10% of comments.
- The listing reassembles into the original ROM **byte for byte**.
- The title comes from running the ROM, checked against openMSX; take-off, combat, landing, LANDING BONUS and GAME OVER, played in GIF by a pilot in openMSX; the five tunes, from its own sound engine; the four the game plays, identical to openMSX frame by frame.

The site: <https://antxiko.github.io/EagleFighter-disassembly/>
(in Spanish: <https://antxiko.github.io/EagleFighter-disassembly/es/>).

## Rebuilding it

The ROM image is not distributed. Put yours in the root as `eaglefighter.rom` (sha256 `760583fb...`) and run `make`. The details, in [UNDER THE HOOD](docs/UNDER-THE-HOOD.md).

## Legal

The game belongs to Casio and its rights holders. The `LICENSE` covers only the tools, comments, analysis and documentation here. See [LEGAL-NOTICE.md](LEGAL-NOTICE.md).
