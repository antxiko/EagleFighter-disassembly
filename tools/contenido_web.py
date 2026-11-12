#!/usr/bin/env python3
"""EL CONTENIDO de la web de esta ROM: lo unico que es de este juego.

jekyll.py y make_web.py son la maquinaria y no llevan dentro el nombre de
ningun juego: lo leen de aqui.

Todas las cifras de aqui estan medidas sobre esta ROM, con las herramientas
de tools/: CODIGO y DATOS los imprime tools/presupuesto.py (make sanity),
INSTRUCCIONES, COMENTARIOS y RUTINAS los da tools/densidad.py (make densidad:
"de N" rutinas, "N instrucciones, M comentarios").
"""

NOMBRE = "Eagle Fighter"
EDITOR = "Casio"
ANIO = 1985
REPOSITORIO = "https://github.com/antxiko/EagleFighter-disassembly"
SHA1 = "d916f0e4bd3c829a0472c6ec18d08907a5c991f3"

CODIGO = 9880
DATOS = 22888
RUTINAS = 533
INSTRUCCIONES = 4352
COMENTARIOS = 1741


def densidad(idioma):
    """El porcentaje comentado, con la coma o el punto de cada idioma."""
    d = "%.1f" % (100.0 * COMENTARIOS / INSTRUCCIONES)
    return d.replace(".", ",") if idioma == "es" else d


PIE_LEGAL = {
    "es": "<em>Eagle Fighter</em> es un juego de Casio para MSX, de 1985, en un cartucho de 24 KB (32 KB con 8 KB "
          "vacios). Todos los derechos sobre el juego siguen siendo de sus titulares. Este trabajo es de "
          "preservaci&oacute;n, estudio y documentaci&oacute;n, y la imagen de la ROM no se distribuye.",
    "en": "<em>Eagle Fighter</em> is a 1985 Casio game for the MSX, on a 24 KB cartridge (32 KB with 8 KB empty). "
          "All rights in the game remain with their holders. This is preservation, study and documentation work, "
          "and the ROM image is not distributed.",
}

PORTADA = {
    "es": dict(
        titulo="Eagle Fighter - desensamblado comentado",
        claim="Un caza despega de una pista en perspectiva, derriba las oleadas de aviones enemigos, vuelve y "
              "aterriza; el combustible se gasta y lo que queda se cobra en puntos. Diecis&eacute;is fases. El "
              "t&iacute;tulo sale de ejecutar la ROM, cotejado con openMSX; la partida en GIF, jugada en openMSX "
              "por un piloto que despega, combate y aterriza; las m&uacute;sicas, de su propio motor; las "
              "cuatro que suenan, id&eacute;nticas a openMSX cuadro a cuadro.",
        ficha=["Casio - <b>(c) 1985</b>",
               "Cartucho de <b>24 KB</b> (cabecera en 0x8000)",
               "<b>MSX</b>", "Volcado <b>d916f0e4...</b>"],
        aviso="<b>Aqu&iacute; no hay capturas del juego.</b> El t&iacute;tulo sale de ejecutar la ROM (cotejado "
              "con openMSX) y los GIF son la ROM <b>funcionando en openMSX</b>: en cada cuadro se apuntan la VRAM, "
              "la RAM y los registros del VDP, y <b>c&oacute;digo nuestro los pinta</b>.",
    ),
    "en": dict(
        titulo="Eagle Fighter - commented disassembly",
        claim="A fighter takes off from a runway in perspective, shoots down the waves of enemy planes, comes back "
              "and lands; the fuel runs down and what is left is paid in points. Sixteen stages. The title comes "
              "from running the ROM, checked against openMSX; the game in GIF, played in openMSX by a pilot that "
              "takes off, fights and lands; the tunes, from its own engine; the four that play, identical to "
              "openMSX frame by frame.",
        ficha=["Casio - <b>(c) 1985</b>",
               "<b>24 KB</b> cartridge (header at 0x8000)",
               "<b>MSX</b>", "Dump <b>d916f0e4...</b>"],
        aviso="<b>There are no screenshots of the game here.</b> The title comes from running the ROM (checked "
              "against openMSX) and the GIFs are the ROM <b>running in openMSX</b>: on every frame the VRAM, the "
              "RAM and the VDP registers are logged, and <b>our own code paints them</b>.",
    ),
}

PAGINAS = [
    [("THE-GAME.html", "LA-PARTIDA.html", "The game", "La partida",
      "the title, the controls, take-off, combat, landing, fuel, the lives and the points",
      "el t&iacute;tulo, los mandos, el despegue, el combate, el aterrizaje, el combustible, las vidas y los puntos"),
     ("THE-STAGES.html", "LAS-FASES.html", "The stages", "Las fases",
      "the sixteen stages, the waves, the enemies and how they move",
      "las diecis&eacute;is fases, las oleadas, los enemigos y c&oacute;mo se mueven"),
     ("THE-SPRITES.html", "LOS-SPRITES.html", "The sprites", "Los sprites",
      "the plane, the enemies, the shots and the explosions put together from the ROM tables, frame by frame",
      "el avi&oacute;n, los enemigos, los tiros y las explosiones montados desde las tablas de la ROM, cuadro a cuadro"),
     ("THE-TEXTS.html", "LOS-TEXTOS.html", "The texts", "Los textos",
      "every text in the ROM, with its translation",
      "todos los textos de la ROM, con su traducci&oacute;n"),
     ("THE-MUSIC.html", "LA-MUSICA.html", "The music", "La m&uacute;sica",
      "the five tunes, from its own sound engine and checked against openMSX",
      "las cinco m&uacute;sicas, de su propio motor de sonido y cotejadas con openMSX")],
    [("CURIOSITIES.html", "CURIOSIDADES.html", "Curiosities", "Curiosidades",
      "SCORE inside HISCORE, code nobody calls, a tune nobody asks for, the stick plus the cursors",
      "SCORE dentro de HISCORE, c&oacute;digo que nadie llama, una m&uacute;sica que nadie pide, la palanca m&aacute;s "
      "los cursores")],
    [("UNDER-THE-HOOD.html", "POR-DENTRO.html", "Under the hood", "Por dentro",
      "rebuilding the ROM, the cartridge, the BIOS it uses, the main loop, the RAM and the tools",
      "rehacer la ROM, el cartucho, la BIOS que usa, el bucle, la RAM y las herramientas")],
]

# Repositorio nuevo: no hay paginas viejas que redirigir.
VIEJAS = {}

LOGOTIPO = "logotipo.png"
