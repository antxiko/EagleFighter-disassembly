#!/usr/bin/env python3
"""Los GIF de la web: tramos de las grabaciones de openMSX (tools/guiones/*.tcl, grabados con
tools/lanza_graba.ps1 en C-BIOS_MSX1_JP, -bp 0x996D -ram "0xE000 0x1000"), pintados con tools/vdp.py.

Los tramos salen de la RAM grabada: 0xE000 jugando, 0xE00A la fase, 0xE00B las vidas, 0xE19F en el aire (2) o
aterrizando (3), 0xE19D la ultima parte (2), 0xE19B estrellado, 0xE1AD aterrizado, 0xE2BD la musica.

  atraccion  sin tocar nada: el titulo con el avion que entra y la demostracion (despega y se estrella)
  partida    un piloto sencillo (tools/guiones/partida.tcl): acelera centrado, despega, dispara, aterriza y frena;
             la fase 2 y GAME OVER
  gameover   el avion se sale de la pista tres veces
  repostaje  FORZADO (tools/guiones/repostaje.tcl): la partida empieza en la fase 3 y el avion grande se da por
             derribado (0xE483 = 1); el piloto se pone bajo la cisterna y sube con el cuarto aviso

Uso: gifs.py docs/imagenes
"""
import os
import sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import vdp          # noqa: E402

# (fichero, grabacion, desde, hasta, cada)
TRAMOS = [
    ("titulo.gif", "atraccion", 1, 280, 2),              # el titulo: el avion entra por la derecha
    ("despegue.gif", "partida", 900, 1300, 2),           # acelera por la pista y despega
    ("take_off.gif", "partida", 1240, 1400, 2),          # TAKE OFF:BONUS 1000PTS.
    ("combate.gif", "partida", 1400, 1700, 2),           # los aviones enemigos y los tiros
    ("aterrizaje.gif", "partida", 1918, 2470, 2),        # LANDING: baja hasta la pista, toca y frena
    ("landing_bonus.gif", "partida", 2470, 2780, 2),     # LANDING BONUS: el combustible que queda, en puntos
    ("fase2.gif", "partida", 4000, 4280, 2),             # la fase 2: el mar y las nubes; le dan
    ("repostaje.gif", "repostaje", 1360, 2120, 2),       # FORZADO: la cisterna baja, avisos, enganche y lleno
    ("fuera.gif", "gameover", 560, 920, 2),              # se sale de la pista y se estrella
    ("game_over.gif", "partida", 7400, 7800, 2),         # la ultima vida y GAME OVER
]


def main(salida):
    raiz = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
    solo = sys.argv[2:]
    for fichero, grab, desde, hasta, cada in TRAMOS:
        if solo and fichero not in solo:
            continue
        n, s = vdp.gif(os.path.join(raiz, "work", grab + ".bin"),
                       os.path.join(salida, fichero), desde, hasta, cada=cada, tope_ms=4000)
        print("%-20s %4d imagenes, %5.1f s, %8d bytes" % (
            fichero, n, s, os.path.getsize(os.path.join(salida, fichero))))


if __name__ == "__main__":
    main(sys.argv[1])
