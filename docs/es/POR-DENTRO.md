# Por dentro

## Rehacer la ROM

`make verify` ensambla `src/eaglefighter.asm` con pasmo y sale la ROM de 32 KB **byte a byte**. `make sanity`
comprueba lo que el reensamblado no cubre: que ningún byte declarado como datos se lea como código, que ningún punto
de entrada caiga en datos y que estén explicados los 32.768 bytes. `make test` pasa los tests. La ROM no está en el
repositorio: hay que ponerla en la raíz como `eaglefighter.rom` (el volcado de GoodMSX, `[!]`, sha1 `d916f0e4...`).

| | bytes |
|---|---|
| código trazado | 9.880 |
| datos con nombre | 22.888 |
| sin explicar | 0 |

El listado tiene 1.741 comentarios en 4.352 instrucciones (40,0 %), 533 rutinas y etiquetas, ninguna por debajo del
10 % comentada, y ninguna rutina llamada sin nombre.

## El cartucho

0x4000-0x5FFF es 0xFF; la cabecera está en 0x8000, con INIT en 0x8010. Datos: las casillas del título (0x6000,
0x6800), los enemigos y sus oleadas (0x7000-0x7D69), el marcador, la pista y los paisajes (0x8F0D-0x958D), los
textos (0x98B0), el sonido (0xA466), las casillas de las fases (0xA800, 0xB000) y los dibujos de los sprites
(0xB800).

## La BIOS que usa

SETGRP para SCREEN 2, CHGCLR, WRTVDP, DISSCR y ENASCR; FILVRM, LDIRVM y WRTVRM para la VRAM; GTSTCK y GTTRIG para los
mandos y SNSMAT para la barra; WRTPSG para el sonido; y la fuente de la BIOS en su dirección de la BIOS del MSX
(0x1D3F, 0x1CBF).

## La interrupción y el bucle

INIT pone un salto a 0x996D en el gancho H.TIMI (0xFD9F). La interrupción solo cuenta cuadros (dieciséis cuentas,
0xE010-0xE01F) y lee los mandos; en la demostración mueve ella la palanca. El juego va en el **bucle principal**
(`partida_bucle`, 0x82A6): una vez por cuadro (0xE011), los enemigos, el marcador, el sonido, los sprites, las
barras, el suelo y la pista (`cada_cuadro`, 0x82F2), y después la caída, el aterrizaje y el vuelo.

| 0xE19F | |
|---|---|
| 0 | en la pista |
| 1 | despegando |
| 2 | en el aire |
| 3 | aterrizando |

## Cómo se ha hecho

El trazado sigue el código desde INIT, la interrupción y cuatro tablas de saltos (los tipos de enemigo, sus
movimientos, las direcciones de sus tiros y los pasos del grande), declaradas en `src/eaglefighter.entries`. Lo
demás se **midió en openMSX** (`tools/omsx_cobertura.tcl`) jugando y esperando a la demostración en un Philips VG
8020: nada de lo que se ejecutó quedó fuera del trazado. La cobertura tiene que mirar el slot: en INIT el cartucho
está en la página 2 y solo después en la 1.

Las grabaciones de la web (`tools/guiones/*.tcl`, grabadas con `tools/lanza_graba.ps1` en C-BIOS) apuntan, en cada
cuadro, los registros del VDP, la RAM desde 0xE000, el PSG y la VRAM que ha cambiado. `tools/pantallas.py` ejecuta
el título con `tools/bios.py`, `tools/gifs.py` hace los GIF y `tools/musica.py` ejecuta el motor de sonido.

## La RAM

| | |
|---|---|
| 0xE000 | jugando |
| 0xE001-0xE006 | los puntos, una cifra por byte |
| 0xE00A / 0xE00B | la fase (0-15) / las vidas de reserva |
| 0xE00C-0xE00E | los puntos, en BCD |
| 0xE010-0xE01F | las cuentas de cuadros |
| 0xE040 / 0xE044 | el botón / la barra, recién pulsados |
| 0xE048 | la demostración |
| 0xE080-0xE087 | el sonido |
| 0xE089-0xE091 | el récord: cifras y BCD |
| 0xE100-0xE17F | los atributos de los sprites: el avión (0, 1), los tiros enemigos (4-9), los enemigos (10-21), los tiros del avión (28-31) |
| 0xE198 | la palanca |
| 0xE19B | estrellado |
| 0xE19D | la parte del vuelo: 0 combate, 1 repostaje, 2 aterrizaje |
| 0xE19E | la velocidad |
| 0xE19F | en la pista, despegando, en el aire, aterrizando |
| 0xE1A0 | el combustible |
| 0xE1A5 | la altura |
| 0xE1AD | aterrizado |
| 0xE1CA | los enemigos que quedan (BCD, el recuadro SHOT) |
| 0xE280-0xE2D5 | el sonido: los tres canales y los pedidos |
| 0xE300-0xE35F | los tiros enemigos (16 bytes cada uno) |
| 0xE360-0xE41F | los enemigos (32 bytes cada uno) |
| 0xE480-0xE488 | la oleada |
