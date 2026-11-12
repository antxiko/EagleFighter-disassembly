"""Las pantallas de las dieciseis fases de Eagle Fighter, PINTADAS EJECUTANDO LA ROM: fase_empieza (0x821C) hasta antes
del ENASCR (0x8290), con la fase en 0xE00A, sobre la RAM y la VRAM del primer cuadro de juego grabado
(work/partida.bin: las letras y los sprites ya cargados). Monta las casillas de la fase, el marcador, el color del
suelo (suelo_color), el suelo con rayas (suelo_pinta), la pista (pista_pinta) y el paisaje del horizonte (paisaje): la
pantalla con la que empieza cada fase, el avion parado en la pista. El juego no tiene mapa: el suelo es siempre el
mismo y cambian su color y el paisaje.

Cotejo: solo hay grabadas las fases 1 y 2; cada una contra el mejor de sus 120 primeros cuadros grabados, en la tabla
de nombres y en la de colores.

Uso: pantallas_fases.py docs/imagenes
"""
import os
import sys

AQUI = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, AQUI)
import vdp                  # noqa: E402
from bios import Msx        # noqa: E402
from PIL import Image       # noqa: E402

RAIZ = os.path.dirname(AQUI)
ROM = open(os.path.join(RAIZ, "eaglefighter.rom"), "rb").read()


def monta(c, fase):
    m = Msx(ROM, 0x4000)
    m.mem[0xE000:0xF000] = c["ram"]
    m.vdp.vram[:] = c["vram"]
    m.mem[0xE00A] = fase
    m.sp = 0xF380
    m.hasta(0x821C, 0x8290)
    return bytes(m.vdp.vram)


def main(salida):
    primero = None
    grabados = {}
    for c in vdp.cuadros(os.path.join(RAIZ, "work", "partida.bin")):
        r = c["ram"]
        if not (r[0x000] and c["regs"][1] & 0x40):
            continue
        if primero is None:
            primero = c
        g = grabados.setdefault(r[0x00A], [])
        if len(g) < 120:
            g.append(c["vram"])
    hoja = Image.new("RGB", (4 * 264 - 8, 4 * 200 - 8), (0, 0, 0))
    for f in range(16):
        v = monta(primero, f)
        if f in grabados:
            d = min((sum(1 for a, b in zip(v[0x1800:0x1B00], g[0x1800:0x1B00]) if a != b),
                     sum(1 for a, b in zip(v[0x2000:0x3800], g[0x2000:0x3800]) if a != b)) for g in grabados[f])
            print("fase %2d: cotejo con %d cuadros: %d casillas y %d bytes de color distintos en el mejor" % (
                f + 1, len(grabados[f]), d[0], d[1]))
        im = vdp.imagen(v, primero["regs"], 1, con_sprites=False)
        hoja.paste(im, ((f % 4) * 264, (f // 4) * 200))
    hoja = hoja.resize((hoja.size[0] // 2, hoja.size[1] // 2), Image.NEAREST)
    ruta = os.path.join(salida, "fases.png")
    hoja.save(ruta, optimize=True)
    print(ruta, hoja.size)


if __name__ == "__main__":
    main(sys.argv[1])
