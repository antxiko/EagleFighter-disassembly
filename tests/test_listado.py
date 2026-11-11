"""Lo que se afirma de la ROM, comprobado contra sus bytes.

Corre con la ROM delante y sin ella: cuando no esta, la imagen se rehace desde
las filas defb/defw del listado, que si viaja con el repositorio. Sin la ROM
solo se comprueba lo que cae en datos.
"""

import os
import re
import subprocess
import sys
import unittest

RAIZ = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.join(RAIZ, "tools"))

ROM = os.path.join(RAIZ, "eaglefighter.rom")
ASM = os.path.join(RAIZ, "src", "eaglefighter.asm")
NOTAS = os.path.join(RAIZ, "src", "eaglefighter.notes")
ORG = 0x4000
TAM = 32768

FILA = re.compile(r"^\s+def(b|w)\s+([0-9a-fA-F,h ]+)\s*;\s*([0-9a-f]{4})")


def imagen_desde_el_listado():
    img = bytearray(TAM)
    with open(ASM, encoding="utf-8") as f:
        for ln in f:
            m = FILA.match(ln)
            if not m:
                continue
            ancho, cuerpo, dirr = m.group(1), m.group(2), int(m.group(3), 16)
            p = dirr - ORG
            for tok in cuerpo.split(","):
                tok = tok.strip().rstrip("h")
                if not tok:
                    continue
                v = int(tok, 16)
                if ancho == "b":
                    img[p] = v
                    p += 1
                else:
                    img[p] = v & 0xFF
                    img[p + 1] = v >> 8
                    p += 2
    return bytes(img)


def lee():
    if os.path.exists(ROM):
        with open(ROM, "rb") as f:
            return f.read()
    return imagen_desde_el_listado()


def b(a):
    return lee()[a - ORG]


def w(a):
    rom = lee()
    return rom[a - ORG] | (rom[a - ORG + 1] << 8)


def instruccion(dirr):
    """La instruccion del listado en esa direccion (sin el comentario)."""
    with open(ASM, encoding="utf-8") as f:
        for ln in f:
            m = re.match(r"^\t(\S.*?)\s*;([0-9a-f]{4})", ln)
            if m and int(m.group(2), 16) == dirr:
                return m.group(1).replace("\t", " ").strip()
class Cabecera(unittest.TestCase):
    def test_ab_e_init_en_0x8010(self):
        rom = lee()
        self.assertEqual(rom[0x8000 - ORG:0x8002 - ORG], b"AB")
        self.assertEqual(w(0x8002), 0x8010)

    def test_los_primeros_8_kb_vacios(self):
        self.assertEqual(lee()[:0x2000], bytes([0xFF]) * 0x2000)

    def test_son_32_kb(self):
        self.assertEqual(len(lee()), TAM)


class LaInterrupcion(unittest.TestCase):
    def test_va_por_h_timi(self):
        self.assertEqual([instruccion(a) for a in (0x803F, 0x8042, 0x8045, 0x8047)],
                         ["ld hl,0996dh", "ld (0fda0h),hl", "ld a,0c3h", "ld (0fd9fh),a"])

    def test_el_cartucho_tambien_en_la_pagina_1(self):
        self.assertEqual(instruccion(0x802A), "out (0a8h),a")


def texto(a, n):
    """Casilla = letra - 0x30 (del "0" al "?"; los signos del espacio a "/" en 0x30-0x3F); 0x10 es el espacio."""
    return "".join(" " if c == 0x10 else chr(c + 0x30) if c < 0x30 else chr(c - 0x10)
                   for c in lee()[a - ORG:a - ORG + n])


class LosTextos(unittest.TestCase):
    def test_los_textos(self):
        self.assertEqual(texto(0x98B0, 23), "TAKE OFF:BONUS 1000PTS.")
        self.assertEqual(texto(0x98FC, 9), "GAME OVER")
        self.assertEqual(texto(0x9671, 9), "DEMO PLAY")
        self.assertEqual(texto(0x9741, 13), "LANDING BONUS")
        self.assertEqual(texto(0x8B01, 7), "LANDING")
        self.assertEqual(texto(0x98C7, 21), "PUSH TRIGGER OR SPACE")

    def test_score_dentro_de_hiscore(self):
        self.assertEqual(texto(0x9587, 7), "HISCORE")
        self.assertEqual([instruccion(a) for a in (0x8DD9, 0x8DE5)], ["ld hl,09587h", "ld hl,09589h"])


class LaPartida(unittest.TestCase):
    def test_dos_vidas(self):
        self.assertEqual([instruccion(a) for a in (0x8206, 0x8208)], ["ld a,002h", "ld (0e00bh),a"])

    def test_veinte_enemigos_en_la_fase_0(self):
        self.assertEqual(b(0x7020), 0x20)

    def test_el_combustible_lleno(self):
        self.assertEqual(instruccion(0x825F), "ld a,0c0h")


class Sonido(unittest.TestCase):
    def test_seis_musicas(self):
        for k in range(6):
            for j in range(3):
                self.assertTrue(0xA4B4 <= w(0xA466 + 6 * k + 2 * j) < 0xA65F)


class ElListado(unittest.TestCase):
    def test_densidad_y_flojas(self):
        salida = subprocess.run(
            [sys.executable, os.path.join(RAIZ, "tools", "densidad.py"), ASM],
            capture_output=True, text=True, check=True).stdout
        m = re.search(r"(\d+) instrucciones, (\d+) comentarios", salida)
        self.assertGreaterEqual(int(m.group(2)) * 100, 40 * int(m.group(1)))
        self.assertIn("---- 0 rutinas por debajo del 10 %", salida)

    def test_ningun_call_sin_nombre(self):
        salida = subprocess.run(
            [sys.executable, os.path.join(RAIZ, "tools", "sin_bautizar.py"), ASM],
            capture_output=True, text=True, check=True).stdout
        self.assertTrue(salida.startswith("0 rutinas sin bautizar"), salida[:200])

    def test_cada_comentario_en_su_instruccion(self):
        salida = subprocess.run(
            [sys.executable, os.path.join(RAIZ, "tools", "valida_c.py"), ASM, NOTAS],
            capture_output=True, text=True, check=True).stdout
        self.assertIn("0 fuera de sitio, 0 repetidos", salida)


if __name__ == "__main__":
    unittest.main()
