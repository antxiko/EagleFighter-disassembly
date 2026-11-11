"""Las pantallas de Eagle Fighter.

  - el titulo: EJECUTANDO la ROM (tools/bios.py: el Z80 con la BIOS que usa) desde INIT (0x8010) hasta la espera del
    titulo (0x81BE), con la pantalla, las letras, el logotipo, las aguilas y los textos; el avion que entra por la
    derecha lo pone despues la espera, cada 8 cuadros (0x9A2A). Las letras las copia el juego de la fuente de la BIOS
    (0x1D3F desde el "0" y 0x1CBF desde el espacio): aqui salen de la VRAM que grabo openMSX con C-BIOS;
  - logotipo.png, la cabecera de la web: el logotipo EAGLE FIGHTER con sus dos aguilas.

El titulo se coteja con la VRAM grabada (work/atraccion.bin) en las filas 0-11 y 16-23 (sin las del avion, que en
la grabacion ya va entrando): el cuadro de los primeros 100 que menos puntos distintos tiene.

Uso: pantallas.py <dir> [cotejo]
"""
import os
import sys

AQUI = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, AQUI)
import vdp                  # noqa: E402
from bios import Msx, SCREEN2        # noqa: E402

RAIZ = os.path.dirname(AQUI)


def cuadros(grab, hasta):
    out = []
    for i, c in enumerate(vdp.cuadros(os.path.join(RAIZ, "work", grab + ".bin"))):
        if i >= hasta:
            break
        out.append(c)
    return out


class Eagle(Msx):
    def _bios(self):
        if self.pc == 0x007E:                             # SETGRP: SCREEN 2
            self.vdp.regs[:] = SCREEN2
            self.pc = self._pop()
            return
        super()._bios()


def fuente_de_la_vram(v):
    """Las letras: las casillas 0x00-0x2F del primer tercio son "0"-"_" y las 0x30-0x3F, " "-"/"."""
    f = bytearray(0x800)
    f[0x180:0x300] = v[0x0000:0x0180]
    f[0x100:0x180] = v[0x0180:0x0200]
    return bytes(f)


def titulo(fuente):
    rom = open(os.path.join(RAIZ, "eaglefighter.rom"), "rb").read()
    m = Eagle(rom, 0x4000)
    m.mem[0x1BBF:0x1BBF + 0x800] = fuente
    m.hasta(0x8010, 0x81BE)
    return bytes(m.vdp.vram), bytes(m.vdp.regs)


def cotejo(v, regs, cs):
    t1 = vdp.tela(v, regs, False)
    mejor = None
    for n, c in enumerate(cs):
        t2 = vdp.tela(c["vram"], c["regs"], False)
        puntos = sum(1 for y in list(range(0, 96)) + list(range(128, 192)) for x in range(256) if t1[y][x] != t2[y][x])
        if mejor is None or puntos < mejor[1]:
            mejor = (n, puntos, bytes(c["regs"]))
    n, puntos, r2 = mejor
    print("titulo contra atraccion/%d (sin las filas 12-15): puntos distintos %d de 40960; registros %s"
          % (n, puntos, "iguales" if regs[:7] == r2[:7] else "%s / %s" % (regs.hex(), r2.hex())))
    return puntos


def main(argv):
    cs = cuadros("atraccion", 100)
    v, regs = titulo(fuente_de_la_vram(cs[-1]["vram"]))
    vdp.imagen(v, regs, 2, con_sprites=False).save(os.path.join(argv[0], "titulo.png"))
    # el logotipo con las aguilas: filas 3-8, columnas 6-26
    vdp.imagen(v, regs, 4, con_sprites=False).crop((6 * 32, 3 * 32, 27 * 32, 9 * 32)).save(
        os.path.join(argv[0], "logotipo.png"))
    if len(argv) > 1:
        cotejo(v, regs, cs)
    return 0


if __name__ == "__main__":
    sys.exit(main(sys.argv[1:]))
