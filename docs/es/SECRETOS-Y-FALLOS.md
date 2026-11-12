# Secretos y fallos

Lo que se ha buscado en el código y lo que se ha encontrado. Un fallo solo entra aquí si está comprobado:
ejecutando la propia rutina del juego (`tools/bios.py`) o contra las grabaciones de openMSX.

## Secretos: ninguno escondido

- **Ninguna tecla escondida.** Los mandos se leen en la interrupción (0x997F-0x9A2A): la palanca de los cursores y del
  mando 1 (GTSTCK 0 y 1), el botón del mando 1 (GTTRIG 1) y la barra (SNSMAT, fila 8). Ni GRAPH ni otro botón, y
  ninguna tecla al encender.
- **Lo que no se usa** (el texto "TIME :OVER", la música 5, cuatro trozos de código y los restos de la EPROM) está en
  [Curiosidades](CURIOSIDADES.html): ninguno se enciende con nada.

## Fallo: el grande vale 0 en la fase 14

Desde la fase 8 cada derribo vale 10 puntos más por fase. `enemigo_cae` (0x721F) lo hace con la fase menos 6 por 16
(0x10 en BCD son 10 puntos) sumada **en binario**, sin `daa`, a los puntos del enemigo (0x722C), y si pasa de 0xA0
separa las centenas. Pero si la suma pasa de 0xFF, el byte da la vuelta y el acarreo se pierde. Solo le pasa al grande,
que vale 90 (0x90). Ejecutando aquí la cuenta del juego:

| fase | el grande | tendría que dar | uno de 20 |
|---|---|---|---|
| 8 | 100 | 100 | 30 |
| 13 | 150 | 150 | 80 |
| 14 | **0** | 160 | 90 |
| 15 | **10** | 170 | 100 |
| 16 | **20** | 180 | 110 |

## Fallo: los cursores y el mando se suman

Contado en [Curiosidades](CURIOSIDADES.html), y ahora ejecutado: `palanca_lee` (0x998E) suma los números de dirección
de los cursores y del mando (0x999E). Con los dos a la vez:

| cursores | mando | sale |
|---|---|---|
| derecha | abajo | **arriba-izquierda** (8) |
| arriba | abajo | **abajo-izquierda** (6) |
| arriba | izquierda | **arriba-izquierda** (8) |

## Fallo: los puntos sin tope

`puntos_suma` (0x979B) suma en BCD con acarreo hasta el byte de arriba (0xE00C), y allí el acarreo se pierde.
Ejecutándolo aquí, 999.990 + 10 da **000000**, y 999.950 + 90, **000040**.
