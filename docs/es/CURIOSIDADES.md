# Curiosidades

## SCORE está dentro de HISCORE

El marcador escribe HISCORE desde 0x9587 y SCORE desde 0x9589: las cinco últimas letras del mismo texto
(`marcador_textos`, 0x8DD9). La fila de blancos que borra los textos hace algo parecido: empieza con 11 blancos
suyos (0x8C24) y sigue por las casillas en blanco con las que empieza el dibujo del avión cisterna, que va detrás.

## La palanca más los cursores

El juego lee los cursores (GTSTCK 0) y el mando 1 (GTSTCK 1) y **suma** los dos números (`palanca_lee`, 0x998E).
Con uno solo no importa; con los dos a la vez, la suma es otra dirección.

## Arriba pica, abajo sube

En el aire la palanca va como la de un avión: empujarla (arriba) le hace picar y tirar de ella (abajo), subir
(`vuelo_palanca`, 0x8774). En la pista, en cambio, arriba acelera y abajo frena.

## Una música que nadie pide

La tabla de músicas tiene seis entradas (0xA466): la 0 es el silencio, de la 1 a la 4 las pide el juego y la 5 no la
pide nunca: las cuatro llamadas a la rutina que pide música (`musica_pide`, 0xA029) llevan 1, 2, 3 y 4. Está en
[La música](LA-MUSICA.html), sacada del motor.

## Código que nadie llama

- 0x9831 salta seis bytes (0x9833) que son las mismas dos instrucciones que acaba de ejecutar.
- 0x9886: `ld hl,0xAE00 / ld bc,0x0160 / jp LDIRVM`, sin llamada; los 0x200 bytes de 0xAE00 están a cero.
- 0x781F: una rutina que copia 8 bytes a un sprite y uno más al enemigo, sin llamada.
- 0x7C2F: tres instrucciones que ponen la dirección final y el paso rápido, sin llamada.
- 0x98F2: el texto "TIME :OVER", que nadie escribe.

Ninguno se ejecutó en la cobertura medida en openMSX.

## Restos en la EPROM

Tres tramos del cartucho tienen bytes sin orden (0x7D6A-0x7FFF, 0x9AD1-0x9FFF y 0xA65F-0xA7FF): no llega a ellos
ningún puntero ni tabla. Si el juego los lee mientras se juega **no se ha medido**.

## 8 KB de nada

El cartucho es una imagen de 32 KB cuyos primeros 8 KB son 0xFF: la BIOS no encuentra "AB" en 0x4000 y encuentra la
cabecera en 0x8000. Después el juego pone su propio slot también en la página 1 (0x8014), porque sus datos empiezan
en 0x6000.
