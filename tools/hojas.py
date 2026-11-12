#!/usr/bin/env python3
"""Los sprites de Eagle Fighter MONTADOS DESDE LA ROM (ninguna imagen es una captura).

Los dibujos son los 0x800 bytes de 0xB800 que `sprites_dibujos` (0x987A) pone tal cual en 0x3800; sprites de 16 x 16.

  avion.png          el avion, dos sprites: el dibujo y el + 4, 16 puntos a la izquierda (`fase_empieza` 0x822B). En
                     la pista 0x00 (en color 5 y 6, que cambian cada 2 cuadros, `vuelo_pista` 0x8589); en el aire segun
                     la palanca (`vuelo_palanca` 0x8774): quieta 0x08, arriba 0x18, a la derecha 0x20, abajo 0x10, a la
                     izquierda 0x30 y en diagonal 0x28 o 0x38, en blanco y en 6 cada 2 cuadros (`avion_color` 0x88B4);
                     estrellado, los dos con 0xE8, 0xEC, 0xF0 y 0xF4 cada 4 cuadros, uno 6 a la izquierda y el otro 5 a
                     la derecha (`nave_cae` 0x95E6); su tiro (0xF8, blanco, `tiros`) y los de los enemigos (0xAC recto,
                     0xA4 y 0xA8 en diagonal, color 5, `enemigo_dispara` 0x7073)
  enemigos.png       los enemigos, un sprite cada uno, con el dibujo y el color de su tipo (`tipo_1` ... `tipo_12`):
                     de frente, y - 4 y + 4 segun hacia donde van (`paso`, 0x7B79); el grande (0x94, 0x98, 0x9C y 0xA0,
                     blanco, sus pasos 0x796C); y la explosion (0xEC, 0xF0 y 0xF4, o 0xFC desde el tipo 6; color 8,
                     `explosion1` 0x727D)
  avion_cuadros.gif  el avion en el aire con la palanca en sus ocho direcciones, parpadeando, y estrellado
  explosion_cuadros.gif  un enemigo derribado: 0xEC, 0xF0 y 0xF4, 4 cuadros cada uno

Uso: hojas.py docs/imagenes | hojas.py cotejo
"""
import os
import sys

RAIZ = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.join(RAIZ, "tools"))
import vdp          # noqa: E402

ORG = 0x4000
ROM = open(os.path.join(RAIZ, "eaglefighter.rom"), "rb").read()
FONDO = (40, 80, 150)            # un azul de cielo
PALANCA = [(0, 0x08), (1, 0x18), (2, 0x28), (3, 0x20), (4, 0x28), (5, 0x10), (6, 0x38), (7, 0x30), (8, 0x38)]
TIPOS = [(1, 0x8C, 13), (2, 0x68, 14), (3, 0x74, 10), (4, 0x80, 7), (7, 0x8C, 7), (8, 0x68, 14), (9, 0x5C, 13),
         (10, 0x8C, 10), (11, 0x68, 7), (12, 0x68, 10), (12, 0x50, 10)]
GRANDE = [0x94, 0x98, 0x9C, 0xA0]


def patrones():
    return ROM[0xB800 - ORG:0xB800 - ORG + 0x800]


def pinta(im, pat, n, x, y, color, escala=1):
    if color == 0:
        return
    n &= 0xFC
    d = pat[n * 8:n * 8 + 32]
    c = vdp.PALETA[color]
    for fila in range(16):
        for col in range(16):
            if (d[fila + (16 if col >= 8 else 0)] >> (7 - (col & 7))) & 1:
                for ey in range(escala):
                    for ex in range(escala):
                        px, py = (x + col) * escala + ex, (y + fila) * escala + ey
                        if 0 <= px < im.width and 0 <= py < im.height:
                            im.putpixel((px, py), c)


def avion(im, pat, d, x, y, color, E):
    """Los dos sprites del avion: d en X y d + 4 16 puntos a la izquierda (0x822B)."""
    pinta(im, pat, d, x + 16, y, color, E)
    pinta(im, pat, d + 4, x, y, color, E)


def estrellado(im, pat, d, x, y, color, E):
    """nave_cae (0x95E6): el primero 6 a la izquierda y el segundo 5 a la derecha, los dos con el mismo dibujo."""
    pinta(im, pat, d, x + 16 - 6, y, color, E)
    pinta(im, pat, d, x + 5, y, color, E)


def hoja(Image):
    pat, E = patrones(), 3
    im = Image.new("RGB", (9 * 36 * E, 3 * 24 * E), FONDO)
    avion(im, pat, 0x00, 2, 4, 5, E)
    avion(im, pat, 0x00, 2 + 36, 4, 6, E)
    for k, d in enumerate((0x08, 0x18, 0x20, 0x10, 0x30, 0x28, 0x38)):
        avion(im, pat, d, 2 + 36 * (2 + k), 4, 15, E)
    for k, d in enumerate((0xE8, 0xEC, 0xF0, 0xF4)):
        estrellado(im, pat, d, 2 + 36 * k, 28, 6, E)
    for k, (d, c) in enumerate(((0xF8, 15), (0xAC, 5), (0xA4, 5), (0xA8, 5))):
        pinta(im, pat, d, 2 + 36 * 4 + 24 * k, 52, c, E)
    return im


def hoja_enemigos(Image):
    pat, E = patrones(), 3
    vistos = []
    for _, d, c in TIPOS:
        if (d, c) not in vistos:
            vistos.append((d, c))
    im = Image.new("RGB", (len(vistos) * 3 * 20 * E // 2 + 20 * E, 4 * 22 * E), FONDO)
    for k, (d, c) in enumerate(vistos):
        x = 2 + (k % 5) * 64
        y = 2 + (k // 5) * 22
        for j, dd in enumerate((d - 4, d, d + 4)):
            pinta(im, pat, dd, x + 20 * j, y, c, E)
    for k, d in enumerate(GRANDE):
        pinta(im, pat, d, 2 + 20 * k, 2 + 3 * 22, 15, E)
    for k, d in enumerate((0xEC, 0xF0, 0xF4, 0xFC)):
        pinta(im, pat, d, 2 + 20 * (5 + k), 2 + 3 * 22, 8, E)
    return im


def anima(Image):
    pat, E, cuadros = patrones(), 4, []
    for _, d in PALANCA:
        for n in range(24):
            im = Image.new("RGB", (40 * E, 24 * E), FONDO)
            avion(im, pat, d, 4, 4, 15 if n % 4 < 2 else 6, E)
            cuadros.append(im)
    for n in range(48):
        im = Image.new("RGB", (40 * E, 24 * E), FONDO)
        estrellado(im, pat, 0xE8 + (n & 0x0C), 4, 4, 6, E)
        cuadros.append(im)
    return cuadros


def anima_explosion(Image):
    pat, E, cuadros = patrones(), 4, []
    for vuelta in range(3):
        for n in range(16):
            im = Image.new("RGB", (24 * E, 24 * E), FONDO)
            if n < 4:
                pinta(im, pat, 0x74, 4, 4, 10, E)
            elif n < 16:
                pinta(im, pat, (0xEC, 0xF0, 0xF4)[(n - 4) // 4], 4, 4, 8, E)
            cuadros.append(im)
    return cuadros


def guarda_gif(cuadros, ruta, ms=1000 / 60):
    imgs, durs = [], []
    for im in cuadros:
        if imgs and list(im.getdata()) == list(imgs[-1].getdata()):
            durs[-1] += ms
        else:
            imgs.append(im)
            durs.append(ms)
    imgs[0].save(ruta, save_all=True, append_images=imgs[1:], duration=[max(20, int(round(d))) for d in durs],
                 loop=0, disposal=1)


def cotejo():
    """Contra las grabaciones de openMSX (work/*.bin, la RAM 0xE000-0xEFFF):
    1) la tabla de dibujos de los sprites (VRAM 0x3800-0x3FFF) contra los 0x800 bytes de 0xB800;
    2) el avion (0xE100, dos sprites): el segundo 16 puntos a la izquierda con el dibujo + 4, el mismo color, y el
       dibujo de la pista o de la palanca; o estrellado, los dos con 0xE8-0xF4, el segundo 5 puntos a la izquierda;
    3) cada enemigo en el aire (el sprite 0xE128 + 8 k, sus datos 0xE360 + 32 k): de frente, - 4 o + 4 de su dibujo
       (+0 de sus datos) con el color de su tipo, o la explosion en color 8;
    4) los tiros de los enemigos (los sprites 4-9) en el aire: 0xA4, 0xA8 o 0xAC en color 5."""
    pat = patrones()
    dib_avion = {0x00} | {d for _, d in PALANCA}
    colores = {(d, c) for _, d, c in TIPOS} | {(d, 15) for d in GRANDE}
    tot = dict(patrones=0, pat_carga=0, pat_mal=0, avion=0, avion_estrellado=0, avion_medias=0, avion_mal=0, enemigos=0,
               enemigos_explota=0, enemigos_mal=0, tiros=0, tiros_explota=0, tiros_mal=0)
    for grab in ("atraccion", "partida", "gameover"):
        ruta = os.path.join(RAIZ, "work", grab + ".bin")
        if not os.path.exists(ruta):
            continue
        antes = None
        for c in vdp.cuadros(ruta):
            v, ram = c["vram"], c["ram"]
            t = v[0x3800:0x4000]
            if any(t):
                n = len(t.rstrip(bytes(1)))
                if t != pat and t[:n] == pat[:n]:
                    tot["pat_carga"] += 1               # la copia a medias
                else:
                    tot["patrones"] += t == pat
                    tot["pat_mal"] += t != pat
            a = ram[0x100:0x108]
            if 0 < a[0] < 0xC0:
                if (a[2] in dib_avion and a[6] == a[2] + 4 and (a[1] - a[5]) & 0xFF == 16 and a[4] == a[0]
                        and a[3] == a[7] and a[3] in (5, 6, 8, 15)):
                    tot["avion"] += 1
                elif a[2] == a[6] and a[2] in (0xE8, 0xEC, 0xF0, 0xF4) and (a[1] - a[5]) & 0xFF == 5:
                    tot["avion_estrellado"] += 1
                elif antes is not None and (a[:4] == antes[0x100:0x104] or a[4:8] == antes[0x104:0x108]):
                    tot["avion_medias"] += 1            # un sprite ya cambiado y el otro aun no
                else:
                    tot["avion_mal"] += 1
            antes = ram
            if ram[0x19F] != 2:
                continue
            for k in range(5):
                s = ram[0x128 + 8 * k:0x12C + 8 * k]
                e = ram[0x360 + 32 * k:0x380 + 32 * k]
                if not (0 < s[0] < 0xC0) or s[3] == 0:
                    continue
                if s[3] == 8:
                    tot["enemigos_explota"] += 1
                elif s[2] in (e[0] - 4, e[0], e[0] + 4) and ((e[0], s[3]) in colores or e[0] in GRANDE):
                    tot["enemigos"] += 1
                else:
                    tot["enemigos_mal"] += 1
            for k in range(4, 10):
                s = ram[0x100 + 4 * k:0x104 + 4 * k]
                if 0 < s[0] < 0xC0 and s[3]:
                    if s[2] in (0xA4, 0xA8, 0xAC) and s[3] == 5:
                        tot["tiros"] += 1
                    elif s[3] == 8:
                        tot["tiros_explota"] += 1       # el tiro que da con el avion estalla como un enemigo
                    else:
                        tot["tiros_mal"] += 1
    return tot


def main(argv):
    if argv and argv[0] == "cotejo":
        print(cotejo())
        return 0
    from PIL import Image
    salida = argv[0]
    os.makedirs(salida, exist_ok=True)
    hoja(Image).save(os.path.join(salida, "avion.png"))
    hoja_enemigos(Image).save(os.path.join(salida, "enemigos.png"))
    guarda_gif(anima(Image), os.path.join(salida, "avion_cuadros.gif"))
    guarda_gif(anima_explosion(Image), os.path.join(salida, "explosion_cuadros.gif"))
    for f in ("avion.png", "enemigos.png", "avion_cuadros.gif", "explosion_cuadros.gif"):
        print(f, os.path.getsize(os.path.join(salida, f)))
    return 0


if __name__ == "__main__":
    sys.exit(main(sys.argv[1:]))
