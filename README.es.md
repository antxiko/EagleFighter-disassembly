# Eagle Fighter - desensamblado comentado

*(Also [in English](README.md).)*

El desensamblado comentado de **Eagle Fighter** (Casio, 1985) para MSX: un cartucho de 24 KB (una imagen de 32 KB con la cabecera en 0x8000).

- **100 %** del binario explicado: 9.880 bytes de código y 22.888 de datos con nombre, ni un byte sin asignar.
- **40,0 %** del listado comentado, 533 rutinas y etiquetas, ninguna por debajo del 10 % de comentarios.
- El listado se reensambla en la ROM original **byte a byte**.
- El título sale de ejecutar la ROM, cotejado con openMSX; el despegue, el combate, el aterrizaje, LANDING BONUS y GAME OVER, jugados en GIF por un piloto en openMSX; las cinco músicas, de su propio motor de sonido; las cuatro que suenan, idénticas a openMSX cuadro a cuadro.

La web: <https://antxiko.github.io/EagleFighter-disassembly/es/>
(en inglés: <https://antxiko.github.io/EagleFighter-disassembly/>).

## Reproducirlo

La imagen de la ROM no se distribuye. Pon la tuya en la raíz como `eaglefighter.rom` (sha256 `760583fb...`) y ejecuta `make`. El detalle, en [POR DENTRO](docs/es/POR-DENTRO.md).

## Legal

El juego es de Casio y de sus titulares. La licencia de `LICENSE` cubre solo las herramientas, los comentarios, el análisis y la documentación de aquí. Mira [AVISO-LEGAL.md](AVISO-LEGAL.md).
