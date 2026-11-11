# Los textos

El juego escribe con la **fuente de la BIOS**: al encender copia los caracteres del "0" al "_" (0x1D3F) a las
casillas 0x00-0x2F y los del espacio a "/" (0x1CBF) a las 0x30-0x3F, en los tres tercios (0x805B); la casilla 0x10,
que sería la "@", se borra y es el espacio. Así, una letra es su código - 0x30 y un signo, su código + 0x10. El
logotipo, las dos águilas y CASIO del título son casillas dibujadas suyas.

| dirección | original | traducción | dónde sale |
|---|---|---|---|
| 0x9917 | EAGLE FIGHTER | Caza Águila | el título, el logotipo en casillas dibujadas (seis filas de 10) |
| 0x9953 | CASIO | Casio | el título, en casillas dibujadas |
| 0x98C7 | PUSH TRIGGER OR SPACE | Pulsa el botón o la barra | el título |
| 0x98DC | COPYRIGHT 1985 © CASIO | Copyright 1985 Casio | el título |
| 0x9671 | DEMO PLAY | Demostración | durante la demostración |
| 0x9587 | HISCORE | Récord | el marcador |
| 0x9589 | SCORE | Puntos | el marcador: las cinco últimas letras de HISCORE |
| 0x8F27 | SPEED | Velocidad | el marcador, sobre su barra |
| 0x8F2C | FUEL | Combustible | el marcador, sobre su barra |
| 0x8F30 | ALTI | Altura | el marcador, sobre su barra |
| 0x84F2 | SHOT | Derribos | el recuadro bajo el radar: los enemigos que quedan |
| 0x98B0 | TAKE OFF:BONUS 1000PTS. | Despegue: premio de 1.000 puntos | parpadeando después del despegue |
| 0x8B01 | LANDING | Aterrizaje | con los enemigos derribados |
| 0x9741 | LANDING BONUS | Premio de aterrizaje | ya en tierra |
| 0x98FC | GAME OVER | Fin de la partida | sin vidas |
| 0x98F2 | TIME :OVER | Se acabó el tiempo | **nadie lo escribe** |

El marcador tiene también "P=" y la fase, y un avioncito (la casilla 0xA1) con "=" y las vidas de reserva
(`marcador_textos`, 0x8DD9).
