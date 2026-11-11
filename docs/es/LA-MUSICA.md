# La música

Cinco músicas, a tres voces. No son grabaciones hechas a mano: `tools/musica.py` **ejecuta el propio motor de
sonido de la ROM** con `tools/z80run.py` -la rutina del sonido (`sonido`, 0xA046), cuadro a cuadro, con el número
que escribe el juego- y apunta lo que escribe en el PSG por la BIOS (WRTPSG).

**Cotejadas con openMSX**: los registros de tono y volumen de los tres canales casan con los grabados, **0
distintos** en todos los cuadros mirados. Se grabaron cuatro músicas (`tools/guiones/`): la demostración, una
partida entera con despegue, aterrizaje y GAME OVER, y una partida perdida en la pista. Cada cuadro grabado se
empareja con el cuadro del motor que tiene la misma RAM en los tres canales; el motor arranca con la RAM del sonido y
el PSG como los tenía el juego. Mientras suena un efecto en un canal, ese canal no se mira. Una caída en el aire, en
la grabación de la partida entera, no encuentra parejas y no cuenta. La del aterrizaje se coteja en esa misma
grabación; la 5 no se coteja, porque el juego nunca la pide.

## El motor

Va una vez por cuadro desde el bucle principal. Recibe tres **pedidos**: una música para los tres canales
(0xE2BE), un efecto para el canal A (0xE2C0) y otro para los canales B y C (0xE2C2); un pedido gana a lo que suena si
su número es menor (`sonido`, 0xA046). Cada canal tiene un bloque de 18 bytes (A en 0xE280, B en 0xE292, C en
0xE2A4) que se copia a uno de trabajo, da un paso y vuelve. Una pieza es una lista de notas (la duración en la mitad
alta del byte, el volumen en la baja, el tono en uno o dos bytes) y órdenes: 0xF0 una nota de ruido con barrido,
0xFF el final, 0xF7 callar, 0xFE volver a empezar, y tres bucles con su cuenta (0xFD-0xFC, 0xFB-0xFA, 0xF9-0xF8). El
mismo motor está en otros cartuchos de Casio de esos años.

| | Quién la pide | Dura |
|---|---|---:|
| la fase | el avión en la pista, al empezar (0x8296) | 4,3 s |
| GAME OVER | sin vidas (0x967D) | 3,8 s |
| estrellado | el avión se estrella (0x9603) | 2,7 s |
| el aterrizaje | LANDING BONUS (0x970B) | 2,1 s |
| la 5 | nadie: las cuatro llamadas piden la 1-4 | 4,3 s |

## La fase

<audio controls src="../audio/musica_fase.mp3"></audio>

## GAME OVER

<audio controls src="../audio/musica_game_over.mp3"></audio>

## Estrellado

<audio controls src="../audio/musica_estrellado.mp3"></audio>

## El aterrizaje

<audio controls src="../audio/musica_aterrizaje.mp3"></audio>

## La 5

<audio controls src="../audio/musica_5.mp3"></audio>
