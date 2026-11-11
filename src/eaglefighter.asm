; ==========================================================================
; EAGLE FIGHTER - ROM de 32 KB en 0x4000
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x04000


; ----------------------------------------------------------------------
; Etiquetas que no caen en ninguna posicion emitida del listado
; (destinos fuera del binario o dentro de una instruccion).
; ----------------------------------------------------------------------
aterriza_llega_fin:	equ 0x09701

; ----------------------------------------------------------------------
; DATOS vacio: 0x4000-0x5FFF: 8 KB de 0xFF; el cartucho son 24 KB
;   (0x6000-0xBFFF)
;   0x4000..0x6000  (8192 bytes)
DATA_vacio:
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4000  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4010  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4020  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4030  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4040  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4050  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4060  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4070  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4080  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4090  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 40a0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 40b0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 40c0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 40d0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 40e0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 40f0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4100  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4110  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4120  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4130  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4140  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4150  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4160  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4170  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4180  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4190  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 41a0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 41b0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 41c0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 41d0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 41e0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 41f0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4200  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4210  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4220  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4230  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4240  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4250  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4260  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4270  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4280  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4290  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 42a0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 42b0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 42c0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 42d0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 42e0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 42f0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4300  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4310  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4320  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4330  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4340  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4350  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4360  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4370  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4380  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4390  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 43a0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 43b0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 43c0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 43d0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 43e0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 43f0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4400  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4410  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4420  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4430  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4440  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4450  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4460  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4470  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4480  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4490  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 44a0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 44b0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 44c0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 44d0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 44e0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 44f0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4500  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4510  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4520  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4530  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4540  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4550  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4560  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4570  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4580  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4590  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 45a0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 45b0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 45c0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 45d0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 45e0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 45f0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4600  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4610  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4620  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4630  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4640  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4650  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4660  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4670  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4680  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4690  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 46a0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 46b0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 46c0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 46d0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 46e0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 46f0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4700  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4710  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4720  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4730  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4740  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4750  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4760  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4770  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4780  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4790  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 47a0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 47b0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 47c0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 47d0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 47e0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 47f0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4800  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4810  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4820  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4830  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4840  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4850  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4860  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4870  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4880  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4890  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 48a0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 48b0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 48c0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 48d0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 48e0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 48f0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4900  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4910  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4920  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4930  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4940  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4950  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4960  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4970  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4980  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4990  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 49a0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 49b0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 49c0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 49d0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 49e0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 49f0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4a00  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4a10  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4a20  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4a30  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4a40  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4a50  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4a60  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4a70  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4a80  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4a90  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4aa0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4ab0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4ac0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4ad0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4ae0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4af0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4b00  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4b10  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4b20  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4b30  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4b40  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4b50  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4b60  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4b70  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4b80  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4b90  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4ba0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4bb0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4bc0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4bd0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4be0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4bf0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4c00  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4c10  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4c20  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4c30  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4c40  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4c50  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4c60  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4c70  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4c80  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4c90  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4ca0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4cb0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4cc0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4cd0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4ce0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4cf0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4d00  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4d10  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4d20  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4d30  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4d40  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4d50  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4d60  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4d70  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4d80  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4d90  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4da0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4db0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4dc0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4dd0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4de0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4df0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4e00  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4e10  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4e20  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4e30  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4e40  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4e50  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4e60  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4e70  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4e80  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4e90  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4ea0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4eb0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4ec0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4ed0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4ee0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4ef0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4f00  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4f10  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4f20  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4f30  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4f40  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4f50  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4f60  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4f70  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4f80  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4f90  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4fa0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4fb0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4fc0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4fd0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4fe0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 4ff0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5000  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5010  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5020  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5030  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5040  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5050  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5060  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5070  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5080  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5090  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 50a0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 50b0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 50c0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 50d0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 50e0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 50f0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5100  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5110  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5120  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5130  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5140  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5150  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5160  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5170  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5180  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5190  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 51a0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 51b0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 51c0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 51d0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 51e0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 51f0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5200  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5210  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5220  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5230  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5240  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5250  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5260  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5270  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5280  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5290  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 52a0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 52b0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 52c0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 52d0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 52e0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 52f0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5300  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5310  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5320  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5330  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5340  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5350  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5360  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5370  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5380  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5390  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 53a0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 53b0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 53c0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 53d0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 53e0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 53f0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5400  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5410  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5420  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5430  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5440  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5450  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5460  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5470  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5480  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5490  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 54a0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 54b0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 54c0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 54d0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 54e0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 54f0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5500  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5510  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5520  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5530  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5540  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5550  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5560  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5570  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5580  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5590  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 55a0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 55b0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 55c0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 55d0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 55e0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 55f0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5600  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5610  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5620  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5630  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5640  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5650  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5660  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5670  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5680  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5690  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 56a0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 56b0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 56c0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 56d0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 56e0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 56f0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5700  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5710  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5720  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5730  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5740  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5750  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5760  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5770  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5780  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5790  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 57a0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 57b0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 57c0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 57d0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 57e0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 57f0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5800  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5810  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5820  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5830  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5840  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5850  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5860  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5870  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5880  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5890  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 58a0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 58b0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 58c0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 58d0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 58e0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 58f0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5900  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5910  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5920  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5930  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5940  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5950  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5960  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5970  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5980  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5990  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 59a0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 59b0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 59c0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 59d0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 59e0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 59f0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5a00  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5a10  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5a20  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5a30  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5a40  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5a50  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5a60  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5a70  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5a80  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5a90  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5aa0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5ab0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5ac0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5ad0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5ae0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5af0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5b00  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5b10  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5b20  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5b30  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5b40  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5b50  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5b60  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5b70  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5b80  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5b90  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5ba0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5bb0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5bc0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5bd0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5be0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5bf0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5c00  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5c10  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5c20  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5c30  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5c40  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5c50  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5c60  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5c70  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5c80  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5c90  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5ca0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5cb0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5cc0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5cd0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5ce0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5cf0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5d00  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5d10  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5d20  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5d30  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5d40  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5d50  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5d60  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5d70  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5d80  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5d90  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5da0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5db0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5dc0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5dd0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5de0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5df0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5e00  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5e10  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5e20  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5e30  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5e40  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5e50  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5e60  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5e70  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5e80  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5e90  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5ea0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5eb0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5ec0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5ed0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5ee0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5ef0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5f00  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5f10  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5f20  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5f30  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5f40  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5f50  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5f60  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5f70  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5f80  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5f90  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5fa0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5fb0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5fc0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5fd0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5fe0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; 5ff0  ................

; ----------------------------------------------------------------------
; DATOS titulo_casillas: Las casillas del titulo: dibujos (0x6000) y colores
;   (0x6800), 0x600 bytes de cada (las casillas 0x40-0xFF de los tres tercios,
;   0x80B0); los 0x200 que siguen a cada uno (0x6600, 0x6E00) no los copia
;   nadie
;   0x6000..0x7000  (4096 bytes)
DATA_titulo_casillas:
	defb 000h,000h,000h,000h,000h,001h,001h,001h,000h,000h,000h,000h,0ffh,0ffh,0ffh,0c0h	; 6000  ................
	defb 000h,000h,000h,000h,0fch,0fdh,0f9h,003h,000h,000h,000h,000h,0f0h,0f0h,0f0h,0f0h	; 6010  ................
	defb 000h,000h,000h,000h,07fh,0ffh,0ffh,0ffh,000h,000h,000h,000h,0feh,0ffh,0ffh,00fh	; 6020  ................
	defb 000h,000h,000h,000h,070h,070h,070h,078h,000h,000h,000h,000h,003h,003h,001h,001h	; 6030  ....pppx........
	defb 000h,000h,000h,000h,0ffh,0ffh,0ffh,0e0h,000h,000h,000h,000h,000h,080h,080h,000h	; 6040  ................
	defb 003h,003h,007h,007h,007h,00fh,00fh,01fh,0c0h,080h,0ffh,0feh,0feh,0feh,000h,000h	; 6050  ................
	defb 003h,007h,007h,00fh,00fh,01fh,01fh,03fh,0f0h,0f0h,079h,079h,0f9h,0f9h,0f9h,0f9h	; 6060  .......?..yy....
	defb 0e0h,0e0h,0e0h,0e0h,0e0h,0e0h,0e0h,0e0h,007h,000h,000h,000h,0ffh,0ffh,0ffh,0ffh	; 6070  ................
	defb 078h,078h,038h,038h,0bch,0bch,0bch,0bch,001h,001h,001h,000h,000h,000h,000h,000h	; 6080  xx88............
	defb 0e0h,0f0h,0ffh,0ffh,0ffh,0ffh,0f8h,0f8h,000h,000h,0e0h,0e0h,0e0h,0f0h,000h,000h	; 6090  ................
	defb 01eh,01eh,03eh,03fh,07fh,07fh,07fh,0ffh,000h,000h,000h,0feh,0fch,0fdh,0f9h,0fbh	; 60a0  ..>?............
	defb 03ch,07ch,078h,0f8h,0f0h,0f0h,0f0h,0e0h,079h,079h,079h,07dh,07dh,07dh,07dh,07ch	; 60b0  <|x.....yyy}}}}|
	defb 0e0h,0f0h,0f8h,0ffh,0ffh,0ffh,0ffh,07fh,007h,00fh,01fh,0ffh,0ffh,0ffh,0ffh,0feh	; 60c0  ................
	defb 0bch,0beh,0beh,09fh,09fh,09fh,09fh,01fh,000h,000h,000h,0ffh,0ffh,0ffh,0ffh,0ffh	; 60d0  ................
	defb 07ch,07ch,07ch,07fh,07fh,03fh,0bfh,0bfh,000h,000h,000h,0fch,0feh,0feh,0feh,0ffh	; 60e0  |||..?..........
	defb 0ffh,0ffh,0c3h,0f0h,0feh,0c6h,0c0h,040h,03ch,03ch,03ch,03ch,03ch,03ch,03ch,03ch	; 60f0  .......@<<<<<<<<
	defb 07fh,0ffh,0ffh,0ffh,0f1h,0e0h,0e0h,0e0h,0c3h,0e3h,0f3h,0f3h,0f3h,0f3h,003h,003h	; 6100  ................
	defb 0e0h,0e0h,0e0h,0e0h,0e0h,0e0h,0e0h,0e0h,007h,007h,007h,007h,007h,007h,007h,007h	; 6110  ................
	defb 0cfh,0cfh,0cfh,0cfh,0cdh,0c1h,0c1h,0c1h,0fbh,0fbh,0fbh,0fbh,0e3h,0e3h,0e3h,0e3h	; 6120  ................
	defb 0feh,0feh,0feh,080h,084h,0fch,0fch,0f0h,0feh,0e3h,0e7h,0ffh,0feh,0f8h,0eeh,0e3h	; 6130  ................
	defb 03ch,03ch,03ch,01ch,004h,000h,000h,000h,0e0h,0e7h,0e7h,0f0h,0ffh,07fh,03fh,00fh	; 6140  <<<...........?.
	defb 003h,0c3h,0f3h,0f3h,0f3h,0f3h,0f3h,0f3h,0e0h,0f8h,0ffh,0ffh,0ffh,0ffh,0efh,0e3h	; 6150  ................
	defb 007h,01fh,0ffh,0ffh,0ffh,0ffh,0f7h,0c7h,0c1h,0c1h,0c1h,0c1h,0c1h,0c1h,0c1h,0c1h	; 6160  ................
	defb 0e3h,0e3h,0e3h,0e3h,0e3h,0e3h,0e2h,0e0h,082h,09eh,0feh,0fch,0e0h,080h,000h,000h	; 6170  ................
	defb 0e0h,0c0h,000h,000h,000h,000h,000h,000h,003h,000h,000h,000h,000h,000h,000h,000h	; 6180  ................
	defb 0f3h,063h,003h,003h,000h,000h,000h,000h,0e0h,0e0h,0e0h,0e0h,0e0h,020h,000h,000h	; 6190  .c........... ..
	defb 007h,007h,007h,007h,007h,004h,000h,000h,0c1h,0c1h,0c0h,0c0h,000h,000h,000h,000h	; 61a0  ................
	defb 0c0h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,007h,00fh,00fh,01fh,038h	; 61b0  ...............8
	defb 000h,000h,00fh,0ffh,0ffh,0ffh,087h,08fh,000h,000h,001h,003h,007h,00fh,01fh,01fh	; 61c0  ................
	defb 000h,0c0h,0e0h,0f8h,0fch,0feh,0f1h,0efh,09fh,0bfh,07fh,0ffh,0ffh,0ffh,0ffh,0ffh	; 61d0  ................
	defb 01fh,00fh,007h,003h,001h,000h,000h,000h,0dfh,0beh,070h,080h,080h,080h,000h,000h	; 61e0  ..........p.....
	defb 0ffh,07fh,01fh,007h,003h,000h,000h,000h,000h,000h,000h,000h,000h,007h,01fh,03fh	; 61f0  ...............?
	defb 000h,000h,000h,000h,000h,000h,001h,007h,00fh,01fh,03fh,07fh,0ffh,0ffh,0ffh,0ffh	; 6200  ..........?.....
	defb 0fch,00fh,01fh,03fh,07fh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0feh,0fch,0feh,0fch,0f8h	; 6210  ...?............
	defb 03fh,03fh,0c0h,0c0h,0c0h,0c0h,0c0h,0c0h,0ffh,0ffh,000h,000h,000h,000h,000h,000h	; 6220  ??..............
	defb 00fh,03fh,030h,0c0h,0c0h,0c0h,0c0h,0ffh,0f0h,0fch,00ch,003h,003h,003h,003h,0ffh	; 6230  .?0.............
	defb 03fh,03fh,0c0h,0c0h,0c0h,0c0h,0c0h,03fh,0ffh,0ffh,000h,000h,000h,000h,000h,0fch	; 6240  ??.....?........
	defb 001h,001h,001h,001h,001h,001h,001h,001h,080h,080h,080h,080h,080h,080h,080h,080h	; 6250  ................
	defb 0fch,0fch,003h,003h,003h,003h,003h,003h,0c0h,0c0h,0c0h,0c0h,0c0h,0c0h,03fh,03fh	; 6260  ..............??
	defb 000h,000h,000h,000h,000h,000h,0ffh,0ffh,0ffh,0c0h,0c0h,0c0h,0c0h,0c0h,0c0h,0c0h	; 6270  ................
	defb 0ffh,003h,003h,003h,003h,003h,003h,003h,03fh,000h,000h,000h,000h,000h,0ffh,0ffh	; 6280  ........?.......
	defb 0fch,003h,003h,003h,003h,003h,0fch,0fch,003h,003h,003h,003h,003h,003h,0fch,0fch	; 6290  ................
	defb 03ch,042h,0b9h,0a5h,0b9h,0a5h,042h,03ch,03ch,042h,09dh,0a1h,0a1h,09dh,042h,03ch	; 62a0  <B....B<<B....B<
	defb 003h,00fh,03fh,0ffh,03fh,00fh,003h,000h,000h,000h,000h,000h,000h,000h,00fh,0ffh	; 62b0  ..?.?...........
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0c0h,000h,000h,000h,000h,001h,006h,01ch,0f8h,0ffh	; 62c0  ................
	defb 07fh,07fh,07fh,03fh,07fh,07fh,000h,000h,003h,03ch,040h,0a0h,010h,010h,010h,0ffh	; 62d0  ...?.....<@.....
	defb 0ffh,0ffh,0ffh,0ffh,06fh,0b7h,000h,000h,0e0h,01fh,004h,004h,004h,004h,0ffh,080h	; 62e0  ....o...........
	defb 0e0h,0f7h,0fbh,0fdh,0feh,0ffh,000h,000h,000h,0c0h,03fh,003h,003h,03fh,0ffh,000h	; 62f0  ..........?..?..
	defb 000h,0ffh,0ffh,0ffh,0ffh,07fh,03fh,000h,000h,000h,0ffh,000h,0ffh,0ffh,000h,0ffh	; 6300  ......?.........
	defb 000h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,000h,0ffh,00fh,0f0h,0ffh,0ffh,0ffh,0ffh,000h	; 6310  ................
	defb 0ffh,0feh,000h,0ffh,000h,0ffh,000h,0ffh,000h,0ffh,03fh,0c0h,0ffh,0ffh,0ffh,000h	; 6320  ..........?.....
	defb 0ffh,0ffh,000h,0ffh,000h,0ffh,0ffh,0ffh,000h,0ffh,0ffh,07fh,081h,0feh,000h,000h	; 6330  ................
	defb 0ffh,0ffh,003h,0fch,0ffh,000h,0ffh,0ffh,000h,0ffh,0ffh,0ffh,0ffh,000h,000h,000h	; 6340  ................
	defb 000h,000h,000h,000h,000h,007h,0ffh,0ffh,0ffh,0ffh,0ffh,000h,0ffh,000h,0ffh,0ffh	; 6350  ................
	defb 000h,0ffh,0ffh,0ffh,0ffh,0ffh,00fh,000h,000h,000h,000h,003h,01fh,0ffh,0ffh,0ffh	; 6360  ................
	defb 000h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,01ch,000h,000h,000h,080h,0e1h,0f1h,0e3h,0c2h	; 6370  ................
	defb 086h,085h,08dh,00bh,0fbh,007h,0ffh,0c0h,0bfh,0bfh,0bfh,0dfh,0efh,0d0h,080h,000h	; 6380  ................
	defb 000h,00fh,000h,01bh,017h,037h,02fh,06fh,05fh,05fh,0dfh,0bfh,0bfh,07fh,07fh,07fh	; 6390  .....7/o__......
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0fch,000h,07fh,0bfh,0dfh,0efh,0f7h,003h,003h,001h	; 63a0  ................
	defb 000h,0ffh,000h,0ffh,0c0h,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0bfh,0bfh,080h,0bfh,0bfh	; 63b0  ................
	defb 07fh,07fh,07fh,07fh,000h,07fh,00fh,000h,0f8h,0f8h,0fch,0feh,0ffh,0ffh,0ffh,0feh	; 63c0  ................
	defb 000h,000h,0f0h,0ffh,0ffh,0ffh,0e1h,0f1h,000h,000h,000h,0e0h,0f0h,0f0h,0f8h,01ch	; 63d0  ................
	defb 0f9h,0fdh,0feh,0ffh,0ffh,0ffh,0ffh,0ffh,000h,003h,007h,01fh,03fh,07fh,08fh,0f7h	; 63e0  ............?...
	defb 000h,000h,080h,0c0h,0e0h,0f0h,0f8h,0f8h,0ffh,0feh,0f8h,0e0h,0c0h,000h,000h,000h	; 63f0  ................
	defb 0fbh,07dh,00eh,001h,001h,001h,000h,000h,0f8h,0f0h,0e0h,0c0h,080h,000h,000h,000h	; 6400  .}..............
	defb 000h,000h,000h,000h,000h,007h,01fh,03fh,000h,000h,000h,000h,000h,000h,001h,007h	; 6410  .......?........
	defb 00fh,01fh,03fh,07fh,0ffh,0ffh,0ffh,0ffh,0fch,00fh,01fh,03fh,07fh,0ffh,0ffh,0ffh	; 6420  ..?........?....
	defb 0ffh,0ffh,0ffh,0feh,0fch,0feh,0fch,0f8h,03fh,00fh,080h,0c0h,0e0h,0f0h,0f0h,0e0h	; 6430  ........?.......
	defb 0c0h,080h,000h,000h,000h,000h,000h,000h,000h,000h,000h,07fh,01fh,00fh,003h,001h	; 6440  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,0ffh,03fh,00fh,003h,001h,000h,000h,000h	; 6450  .........?......
	defb 000h,000h,000h,000h,000h,07fh,00fh,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 6460  ................
	defb 000h,000h,000h,000h,000h,007h,00fh,0ffh,000h,000h,000h,000h,000h,000h,000h,001h	; 6470  ................
	defb 003h,003h,00fh,01fh,0ffh,0ffh,0ffh,0ffh,000h,000h,001h,003h,00fh,03fh,0ffh,0ffh	; 6480  .............?..
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,08fh,001h,0c0h,0e0h,0f0h,0f8h,0fch,0f8h	; 6490  ................
	defb 0f0h,0e0h,0c0h,080h,000h,080h,0c0h,0e0h,000h,000h,000h,07fh,07fh,03fh,03fh,01fh	; 64a0  .............??.
	defb 01fh,00fh,00fh,007h,003h,001h,000h,000h,000h,000h,000h,000h,001h,00fh,07fh,0ffh	; 64b0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,03fh,0feh,003h,00fh,07fh,0feh,0fch,0feh,0ffh	; 64c0  .......?........
	defb 0ffh,0feh,0fch,0feh,0f8h,0f0h,0c0h,00fh,07fh,03fh,00fh,00fh,007h,007h,003h,001h	; 64d0  .........?......
	defb 000h,001h,007h,01fh,03fh,07fh,0ffh,0ffh,000h,000h,001h,003h,0f0h,0e0h,0c0h,080h	; 64e0  ....?...........
	defb 0feh,0fch,0fch,0f8h,0f0h,0f8h,0fch,0f8h,000h,000h,000h,07fh,07fh,03fh,03fh,01fh	; 64f0  .............??.
	defb 01fh,00fh,00fh,007h,007h,007h,001h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 6500  ................
	defb 001h,003h,007h,007h,00fh,03fh,07fh,0ffh,0feh,003h,007h,00fh,03fh,07fh,07fh,0ffh	; 6510  .....?......?...
	defb 0ffh,0ffh,0ffh,0ffh,0feh,0feh,0fch,0f8h,07fh,03fh,01fh,00fh,003h,080h,0e0h,0c0h	; 6520  .........?......
	defb 080h,080h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,07fh,07fh	; 6530  ................
	defb 03fh,03fh,01fh,01fh,00fh,003h,001h,000h,000h,000h,000h,000h,0feh,0fch,0f8h,0f0h	; 6540  ??..............
	defb 0f8h,0fch,000h,000h,000h,000h,000h,000h,000h,0feh,0e0h,000h,00fh,007h,02fh,03fh	; 6550  ............../?
	defb 07ch,01eh,004h,000h,0f1h,0e3h,000h,000h,000h,00fh,0ffh,0ffh,0feh,0fch,0ffh,0ffh	; 6560  |...............
	defb 0ffh,07fh,03fh,001h,000h,087h,0dfh,000h,000h,000h,000h,0f0h,0fch,0ffh,03fh,0dfh	; 6570  ..?...........?.
	defb 0dfh,0ffh,0ffh,0ffh,09fh,000h,000h,000h,000h,000h,000h,000h,000h,0f0h,0fch,0feh	; 6580  ................
	defb 0feh,0fch,0f8h,0f0h,0f8h,0f0h,040h,000h,000h,000h,000h,000h,000h,0feh,0fch,0f8h	; 6590  ......@.........
	defb 0f0h,0e0h,0c0h,080h,000h,08ch,000h,000h,0ffh,0f8h,0e0h,0c0h,00fh,007h,00fh,0c3h	; 65a0  ................
	defb 09fh,0c7h,0fdh,010h,040h,0e0h,0f1h,0fbh,000h,000h,04fh,0ffh,0ffh,0ffh,0ffh,0ffh	; 65b0  ....@.....O.....
	defb 0ffh,08fh,003h,000h,077h,000h,000h,000h,040h,0e0h,0f0h,0ffh,0e7h,0fbh,0f7h,0efh	; 65c0  ....w...@.......
	defb 0c7h,0feh,0fch,0f0h,000h,000h,000h,000h,000h,000h,000h,000h,0f0h,0f8h,0fch,0feh	; 65d0  ................
	defb 0feh,0feh,07ch,030h,000h,000h,000h,000h,000h,000h,000h,0fch,0f0h,0f0h,0f8h,0f0h	; 65e0  ..|0............
	defb 0f8h,0fch,0feh,0fch,0f8h,0fch,000h,000h,000h,0f0h,000h,00dh,05fh,0f5h,072h,03fh	; 65f0  ............_.r?
	defb 01ch,00eh,004h,000h,000h,060h,0f8h,0fch,00fh,001h,077h,0ffh,0ffh,0ffh,0ffh,0ffh	; 6600  .....`....w.....
	defb 0ffh,0ffh,07fh,035h,000h,00ch,03fh,07fh,000h,000h,0e0h,0f0h,0c0h,0e0h,0f0h,0ffh	; 6610  ...5..?.........
	defb 0ffh,0ffh,08fh,000h,007h,003h,007h,000h,000h,000h,000h,000h,000h,001h,003h,007h	; 6620  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,03fh,071h,000h,000h,000h,000h,000h,000h,000h,09ch,03fh	; 6630  .....?q........?
	defb 0ffh,0feh,0fch,0f8h,0f8h,0e0h,0c0h,000h,000h,098h,000h,001h,080h,0c0h,080h,0c0h	; 6640  ................
	defb 0f0h,0fbh,000h,000h,000h,000h,000h,000h,000h,000h,01fh,0fch,0ffh,07fh,01fh,000h	; 6650  ................
	defb 000h,003h,0c1h,0e7h,000h,000h,000h,000h,002h,00fh,03fh,0ffh,0ffh,0ffh,0dfh,007h	; 6660  ..........?.....
	defb 00fh,07fh,01fh,03fh,070h,0e0h,000h,000h,000h,000h,0c0h,0f0h,0fch,0ffh,0feh,0fch	; 6670  ...?p...........
	defb 0f8h,0fch,0ffh,0feh,0fch,078h,000h,000h,000h,000h,000h,000h,0feh,0fch,0f8h,0f0h	; 6680  .....x..........
	defb 0e0h,0f0h,0fch,000h,000h,000h,000h,000h,000h,000h,0fch,0e0h,00fh,0bfh,0ffh,07fh	; 6690  ................
	defb 03fh,01fh,000h,00fh,000h,000h,000h,000h,000h,000h,03fh,0f0h,0feh,0ffh,0ffh,0ffh	; 66a0  ?.........?.....
	defb 0ffh,0ffh,03fh,00fh,000h,000h,000h,000h,000h,000h,000h,000h,000h,0c0h,0f0h,0fch	; 66b0  ..?.............
	defb 0f8h,0f0h,0c0h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 66c0  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 66d0  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 66e0  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 66f0  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 6700  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 6710  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 6720  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 6730  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 6740  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 6750  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 6760  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 6770  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 6780  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 6790  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 67a0  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 67b0  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 67c0  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 67d0  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 67e0  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 67f0  ................
	defb 000h,000h,000h,000h,000h,050h,040h,040h,000h,000h,000h,000h,050h,050h,040h,040h	; 6800  .....P@@....PP@@
	defb 000h,000h,000h,000h,050h,050h,040h,040h,000h,000h,000h,000h,050h,050h,040h,040h	; 6810  ....PP@@....PP@@
	defb 000h,000h,000h,000h,050h,050h,040h,040h,000h,000h,000h,000h,050h,050h,040h,040h	; 6820  ....PP@@....PP@@
	defb 000h,000h,000h,000h,050h,050h,040h,040h,000h,000h,000h,000h,050h,050h,040h,040h	; 6830  ....PP@@....PP@@
	defb 000h,000h,000h,000h,050h,050h,040h,040h,000h,000h,000h,000h,050h,050h,040h,040h	; 6840  ....PP@@....PP@@
	defb 0c0h,0c0h,020h,020h,030h,030h,0b0h,0b0h,0c0h,0c0h,020h,020h,030h,030h,0b0h,0b0h	; 6850  ..  00....  00..
	defb 0c0h,0c0h,020h,020h,030h,030h,0b0h,0b0h,0c0h,0c0h,020h,020h,030h,030h,0b0h,0b0h	; 6860  ..  00....  00..
	defb 0c0h,0c0h,020h,020h,030h,030h,0b0h,0b0h,0c0h,0c0h,020h,020h,030h,030h,0b0h,0b0h	; 6870  ..  00....  00..
	defb 0c0h,0c0h,020h,020h,030h,030h,0b0h,0b0h,0c0h,0c0h,020h,020h,030h,030h,0b0h,0b0h	; 6880  ..  00....  00..
	defb 0c0h,0c0h,020h,020h,030h,030h,0b0h,0b0h,0c0h,0c0h,020h,020h,030h,030h,0b0h,0b0h	; 6890  ..  00....  00..
	defb 0a0h,0a0h,090h,090h,080h,080h,060h,060h,0a0h,0a0h,090h,090h,080h,080h,060h,060h	; 68a0  ......``......``
	defb 0a0h,0a0h,090h,090h,080h,080h,060h,060h,0a0h,0a0h,090h,090h,080h,080h,060h,060h	; 68b0  ......``......``
	defb 0a0h,0a0h,090h,090h,080h,080h,060h,060h,0a0h,0a0h,090h,090h,080h,080h,060h,060h	; 68c0  ......``......``
	defb 0a0h,0a0h,090h,090h,080h,080h,060h,060h,0a0h,0a0h,090h,090h,080h,080h,060h,060h	; 68d0  ......``......``
	defb 0a0h,0a0h,090h,090h,080h,080h,060h,060h,0a0h,0a0h,090h,090h,080h,080h,060h,060h	; 68e0  ......``......``
	defb 060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h	; 68f0  ````````````````
	defb 060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h	; 6900  ````````````````
	defb 060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h	; 6910  ````````````````
	defb 060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h	; 6920  ````````````````
	defb 060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h	; 6930  ````````````````
	defb 060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h	; 6940  ````````````````
	defb 060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h	; 6950  ````````````````
	defb 060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h	; 6960  ````````````````
	defb 060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h	; 6970  ````````````````
	defb 060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h	; 6980  ````````````````
	defb 060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h	; 6990  ````````````````
	defb 060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h	; 69a0  ````````````````
	defb 060h,060h,060h,060h,060h,060h,060h,060h,000h,000h,000h,060h,060h,060h,060h,060h	; 69b0  ````````...`````
	defb 000h,000h,060h,060h,060h,060h,060h,060h,000h,000h,0b0h,0b0h,0b0h,0b0h,0b0h,0b0h	; 69c0  ..``````........
	defb 006h,0b6h,0b6h,0b6h,0b6h,0b6h,0b0h,0b0h,060h,060h,060h,060h,060h,060h,060h,060h	; 69d0  ........````````
	defb 0b0h,0b0h,0b0h,0b0h,0b0h,000h,000h,000h,0b0h,0b0h,0b0h,0b0h,0b0h,0b0h,000h,000h	; 69e0  ................
	defb 060h,060h,060h,060h,060h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 69f0  `````...........
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 6a00  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 6a10  ................
	defb 060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,000h,000h,000h,000h,000h,000h	; 6a20  ``````````......
	defb 060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h	; 6a30  ````````````````
	defb 060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,000h,000h,000h,000h,000h,060h	; 6a40  ``````````.....`
	defb 060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h	; 6a50  ````````````````
	defb 060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h	; 6a60  ````````````````
	defb 000h,000h,000h,000h,000h,000h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h	; 6a70  ......``````````
	defb 060h,060h,060h,060h,060h,060h,060h,060h,060h,000h,000h,000h,000h,000h,060h,060h	; 6a80  `````````.....``
	defb 060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h,060h	; 6a90  ````````````````
	defb 0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h	; 6aa0  ................
	defb 0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,000h,000h,000h,000h,000h,000h,000h,0f0h,0f0h	; 6ab0  ................
	defb 0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0feh,0feh,000h,000h,000h,0f0h,0f0h,0f0h,0f0h,0f0h	; 6ac0  ................
	defb 0feh,0feh,0feh,0feh,0feh,0feh,00eh,00eh,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h	; 6ad0  ................
	defb 0f0h,0f0h,0f0h,0f0h,0feh,0feh,00eh,00eh,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0feh	; 6ae0  ................
	defb 0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,00eh,00eh,000h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,00eh	; 6af0  ................
	defb 000h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,00eh,000h,000h,0f0h,00eh,0f0h,0f0h,000h,0f0h	; 6b00  ................
	defb 000h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,00eh,00eh,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,00eh	; 6b10  ................
	defb 000h,0f0h,00eh,0f0h,00eh,0f0h,00eh,0f0h,00eh,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,00eh	; 6b20  ................
	defb 0f0h,0f0h,00eh,0f0h,00eh,0f0h,0feh,0f0h,00eh,0f0h,0f0h,0f0h,0f0h,0f0h,00eh,00eh	; 6b30  ................
	defb 0f0h,0f0h,0feh,0feh,0f0h,00eh,0f0h,0f0h,00eh,0f0h,0f0h,0f0h,0f0h,000h,00eh,00eh	; 6b40  ................
	defb 000h,000h,000h,000h,000h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,00eh,0f0h,00eh,0f0h,0f0h	; 6b50  ................
	defb 00eh,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,00eh,000h,000h,000h,0f0h,0f0h,0f0h,0f0h,0f0h	; 6b60  ................
	defb 00eh,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,000h,000h,000h,0f0h,0f0h,0f0h,0f0h,0feh	; 6b70  ................
	defb 0feh,0feh,0feh,0feh,0feh,0feh,0f0h,0feh,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0feh,000h	; 6b80  ................
	defb 00bh,0f0h,00bh,0f0h,0f0h,0f0h,0f0h,0f0h,0feh,0feh,0feh,0feh,0feh,0feh,0feh,0feh	; 6b90  ................
	defb 0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0feh,0f0h,0f0h,0f0h,0f0h,0f0h,0feh,0f0h,0f0h	; 6ba0  ................
	defb 00bh,0f0h,00bh,0feh,0feh,0feh,0feh,0feh,0feh,0feh,0feh,0feh,0feh,0feh,0feh,0feh	; 6bb0  ................
	defb 0feh,0feh,0feh,0feh,0feh,0feh,0feh,0feh,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h	; 6bc0  ................
	defb 000h,000h,060h,060h,060h,060h,060h,060h,000h,000h,000h,060h,060h,060h,060h,060h	; 6bd0  ..``````...`````
	defb 060h,060h,060h,060h,060h,060h,060h,060h,006h,0b6h,0b6h,0b6h,0b6h,0b6h,0b0h,0b0h	; 6be0  ````````........
	defb 000h,000h,0b0h,0b0h,0b0h,0b0h,0b0h,0b0h,060h,060h,060h,060h,060h,060h,060h,060h	; 6bf0  ........````````
	defb 0b0h,0b0h,0b0h,0b0h,0b0h,0b0h,0b0h,0b0h,0b0h,0b0h,0b0h,0b0h,0b0h,0b0h,0b0h,0b0h	; 6c00  ................
	defb 000h,000h,000h,000h,000h,030h,030h,030h,000h,000h,000h,000h,000h,000h,030h,030h	; 6c10  .....000......00
	defb 030h,030h,030h,030h,030h,030h,030h,030h,00ch,030h,030h,030h,030h,030h,030h,030h	; 6c20  00000000.0000000
	defb 030h,030h,030h,03ch,03ch,03ch,03ch,03ch,00ch,00ch,03ch,03ch,03ch,03ch,03ch,03ch	; 6c30  000<<<<<..<<<<<<
	defb 03ch,03ch,00ch,00ch,00ch,00ch,00ch,00ch,000h,000h,000h,00ch,00ch,00ch,00ch,00ch	; 6c40  <<..............
	defb 00ch,00ch,00ch,00ch,00ch,00ch,00ch,00ch,000h,00ch,00ch,00ch,00ch,00ch,00ch,00ch	; 6c50  ................
	defb 000h,000h,000h,000h,000h,00ch,00ch,00ch,000h,000h,000h,000h,000h,000h,000h,00ch	; 6c60  ................
	defb 000h,000h,000h,000h,000h,030h,030h,030h,000h,000h,000h,000h,000h,000h,000h,030h	; 6c70  .....000.......0
	defb 030h,030h,030h,030h,030h,030h,030h,030h,000h,000h,030h,030h,030h,030h,030h,030h	; 6c80  00000000..000000
	defb 030h,030h,030h,030h,030h,030h,030h,030h,00ch,00ch,03ch,03ch,03ch,03ch,03ch,03ch	; 6c90  00000000..<<<<<<
	defb 03ch,03ch,03ch,03ch,00ch,03ch,03ch,03ch,000h,000h,000h,00ch,00ch,00ch,00ch,03ch	; 6ca0  <<<<.<<<.......<
	defb 03ch,03ch,03ch,03ch,03ch,03ch,00ch,00ch,000h,000h,000h,000h,030h,030h,030h,030h	; 6cb0  <<<<<<......0000
	defb 030h,030h,030h,030h,030h,030h,030h,03ch,00ch,030h,030h,030h,030h,03ch,03ch,03ch	; 6cc0  0000000<.0000<<<
	defb 030h,03ch,03ch,03ch,03ch,03ch,03ch,03ch,00ch,00ch,00ch,00ch,00ch,00ch,00ch,00ch	; 6cd0  0<<<<<<<........
	defb 00ch,03ch,03ch,03ch,03ch,03ch,030h,030h,000h,000h,00ch,00ch,030h,030h,030h,030h	; 6ce0  .<<<<<00....0000
	defb 03ch,03ch,03ch,03ch,03ch,03ch,03ch,03ch,000h,000h,000h,00ch,00ch,00ch,00ch,00ch	; 6cf0  <<<<<<<<........
	defb 00ch,00ch,00ch,00ch,00ch,00ch,00ch,00ch,000h,000h,000h,000h,000h,000h,000h,000h	; 6d00  ................
	defb 030h,030h,030h,030h,030h,030h,030h,030h,00ch,030h,030h,030h,030h,030h,030h,030h	; 6d10  00000000.0000000
	defb 030h,030h,030h,030h,03ch,03ch,03ch,03ch,00ch,00ch,00ch,03ch,03ch,03ch,03ch,03ch	; 6d20  0000<<<<...<<<<<
	defb 03ch,03ch,00ch,00ch,00ch,00ch,00ch,00ch,000h,000h,000h,000h,000h,000h,00ch,00ch	; 6d30  <<..............
	defb 00ch,00ch,00ch,00ch,00ch,00ch,00ch,00ch,000h,000h,000h,000h,00eh,00eh,00eh,00eh	; 6d40  ................
	defb 00eh,00eh,000h,000h,000h,000h,000h,000h,000h,00eh,00eh,00eh,0feh,0feh,0feh,0feh	; 6d50  ................
	defb 0feh,0feh,0feh,00eh,00eh,00eh,000h,000h,000h,00eh,0f0h,0f0h,0feh,0feh,0f0h,0f0h	; 6d60  ................
	defb 0f0h,0feh,0feh,0feh,00eh,00eh,00eh,000h,000h,000h,000h,0f0h,0f0h,0feh,0feh,0feh	; 6d70  ................
	defb 0feh,0f0h,0f0h,0f0h,0f0h,000h,000h,000h,000h,000h,000h,000h,000h,0f0h,0f0h,0f0h	; 6d80  ................
	defb 0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,000h,000h,000h,000h,000h,000h,00eh,00eh,00eh	; 6d90  ................
	defb 00eh,00eh,00eh,00eh,00eh,00eh,000h,000h,000h,00eh,00eh,00eh,0feh,0feh,0feh,0feh	; 6da0  ................
	defb 0feh,0feh,0feh,0feh,00eh,00eh,00eh,00eh,00eh,00eh,0feh,0f0h,0f0h,0f0h,0f0h,0f0h	; 6db0  ................
	defb 0f0h,0feh,0feh,00eh,00eh,000h,000h,000h,0f0h,0f0h,0f0h,0f0h,0feh,0feh,0feh,0feh	; 6dc0  ................
	defb 0feh,0f0h,0f0h,0f0h,000h,000h,000h,000h,000h,000h,000h,000h,0f0h,0f0h,0f0h,0f0h	; 6dd0  ................
	defb 0f0h,0f0h,0f0h,0f0h,000h,000h,000h,000h,000h,000h,000h,00eh,00eh,00eh,00eh,00eh	; 6de0  ................
	defb 00eh,00eh,00eh,00eh,00eh,00eh,000h,000h,000h,00eh,00eh,0feh,0feh,0feh,0feh,0feh	; 6df0  ................
	defb 0feh,0feh,0feh,00eh,00eh,00eh,00eh,00eh,00eh,00eh,0feh,0f0h,0f0h,0f0h,0f0h,0f0h	; 6e00  ................
	defb 0f0h,0f0h,0f0h,0feh,00eh,00eh,00eh,00eh,000h,000h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h	; 6e10  ................
	defb 0f0h,0f0h,0feh,00eh,00eh,00eh,00eh,000h,000h,000h,000h,000h,000h,0f0h,0f0h,0f0h	; 6e20  ................
	defb 0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,000h,000h,000h,000h,000h,000h,000h,0f0h,0f0h	; 6e30  ................
	defb 0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,000h,000h,00eh,00eh,0feh,00eh,00eh,00eh,00eh	; 6e40  ................
	defb 00eh,00eh,000h,000h,000h,000h,000h,000h,000h,000h,00eh,0f0h,0f0h,0feh,0feh,00eh	; 6e50  ................
	defb 00eh,00eh,00eh,00eh,000h,000h,000h,000h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0feh,0feh	; 6e60  ................
	defb 0feh,0feh,0f0h,0f0h,0f0h,0f0h,000h,000h,000h,000h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h	; 6e70  ................
	defb 0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,000h,000h,000h,000h,000h,000h,00eh,00eh,00eh,00eh	; 6e80  ................
	defb 00eh,00eh,00eh,000h,000h,000h,000h,000h,000h,000h,00eh,00eh,0feh,0feh,0f0h,0feh	; 6e90  ................
	defb 0feh,0feh,00eh,00eh,000h,000h,000h,000h,000h,000h,00eh,0f0h,0f0h,0f0h,0f0h,0f0h	; 6ea0  ................
	defb 0f0h,0f0h,0f0h,0f0h,000h,000h,000h,000h,000h,000h,000h,000h,000h,0f0h,0f0h,0f0h	; 6eb0  ................
	defb 0f0h,0f0h,0f0h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 6ec0  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 6ed0  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 6ee0  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 6ef0  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 6f00  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 6f10  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 6f20  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 6f30  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 6f40  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 6f50  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 6f60  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 6f70  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 6f80  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 6f90  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 6fa0  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 6fb0  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 6fc0  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 6fd0  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 6fe0  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 6ff0  ................

; ======================================================================
; CODIGO 0x7000..0x7020  (32 bytes)
; ======================================================================


fase_dato1:		; 0xE484 = el byte de la fase (0xE00A, 15 como mucho) en la tabla 0x7020
	push hl			;7000
	push de			;7001
	ld hl,07020h		;7002   ; la tabla de 0x7020
fase_dato:
	ld a,(0e00ah)		;7005   ; la fase...
	cp 010h		;7008   ; ...15 como mucho
	jr c,L_700E		;700a
	ld a,00fh		;700c   ; 15
L_700E:
	ld e,a			;700e
	ld d,000h		;700f
	add hl,de			;7011   ; + la tabla
	ld a,(hl)			;7012   ; el byte
	ld (0e484h),a		;7013   ; a 0xE484
	pop de			;7016
	pop hl			;7017
	ret			;7018
fase_dato2:		; Lo mismo con la tabla de 0x7030
	push hl			;7019
	push de			;701a
	ld hl,07030h		;701b   ; la tabla de 0x7030
	jr fase_dato		;701e

; ----------------------------------------------------------------------
; DATOS fase_datos: Dos tablas de 16 bytes por fase (0x7020, 0x7030) para
;   0xE484
;   0x7020..0x7040  (32 bytes)
DATA_fase_datos:
	defb 020h,024h,028h,030h,034h,038h,040h,044h,040h,050h,060h,070h,080h,080h,099h,099h	; 7020   $(048@D@P`p....
	defb 020h,020h,030h,035h,040h,040h,040h,050h,050h,050h,060h,060h,070h,070h,099h,099h	; 7030    05@@@PPP``pp..

; ======================================================================
; CODIGO 0x7040..0x742f  (1007 bytes)
; ======================================================================


enemigo_dispara:		; El enemigo (sus sprites IX) dispara, si toca (0xE488 a 0) y esta por encima del avion (0x30 o mas, y no en la fila de arriba del todo), salvo en la fase 0: alineado con el avion (a menos de 3), un tiro recto (dibujo 0xAC, la direccion 1); a menos de 0x40 de altura y a 0x18 o mas de lado, desde la fase 3, uno en diagonal (0xA4 o 0xA8, la direccion 2 o 3); despues una espera al azar (0x70F7)
	ld a,(0e488h)		;7040   ; la espera
	and a			;7043   ; a 0?
	jr z,enemigo_dispara_mira		;7044
	dec a			;7046   ; una menos
	ld (0e488h),a		;7047   ; apuntada
	ret			;704a
enemigo_dispara_mira:
	ld a,(0e100h)		;704b   ; la Y del avion - la suya
	sub (ix+000h)		;704e
	ret c			;7051   ; por debajo: nada
	cp 030h		;7052   ; a menos de 0x30: nada
	ret c			;7054
	ld a,(0e00ah)		;7055   ; la fase 0: nada
	and a			;7058   ; la fase 0?
	ret z			;7059
	ld a,(ix+000h)		;705a   ; arriba del todo: nada
	cp 010h		;705d   ; por encima de 0x10?
	ret c			;705f
	ld a,(0e101h)		;7060   ; la X del avion...
	cp (ix+001h)		;7063   ; ...igual?
	jr z,enemigo_tiro_recto		;7066   ; justo debajo
	jr nc,enemigo_alineado		;7068   ; a la derecha
	ld c,a			;706a
	ld a,(ix+001h)		;706b   ; la diferencia
	sub c			;706e
enemigo_alineado:
	cp 003h		;706f   ; a menos de 3?
	jr nc,enemigo_tiro_lado		;7071
enemigo_tiro_recto:
	push iy		;7073
	call tiro_libre		;7075   ; un tiro libre?
	and a			;7078
	jr nz,enemigo_dispara_no		;7079   ; ninguno libre
	ld a,(ix+000h)		;707b   ; en el sitio del enemigo
	ld (iy+000h),a		;707e   ; su Y
	ld a,(ix+001h)		;7081   ; su X
	ld (iy+001h),a		;7084
	ld (iy+002h),0ach		;7087   ; dibujo 0xAC, color 5
	ld (iy+003h),005h		;708b   ; color 5
	push de			;708f   ; sus datos (DE)
	pop iy		;7090
	ld (iy+004h),001h		;7092   ; la direccion 1: recto
	pop iy		;7096
	call enemigo_espera		;7098   ; la espera
	ret			;709b
enemigo_dispara_no:
	pop iy		;709c
	ret			;709e
enemigo_tiro_lado:
	ld a,(0e100h)		;709f   ; a menos de 0x40 de altura?
	sub (ix+000h)		;70a2
	ret c			;70a5
	cp 040h		;70a6   ; a menos de 0x40?
	ret nc			;70a8
	ld a,(0e101h)		;70a9   ; de lado: a la derecha?
	sub (ix+001h)		;70ac   ; la X del avion - la suya
	jr nc,enemigo_tiro_der		;70af   ; el avion a la derecha
	ld a,(0e101h)		;70b1   ; a la izquierda: la diferencia
	ld c,a			;70b4   ; la diferencia
	ld a,(ix+001h)		;70b5
	sub c			;70b8
	jr enemigo_tiro_izq		;70b9
enemigo_tiro_der:
	cp 018h		;70bb   ; 0x18 o mas?
	ret c			;70bd
	ld b,002h		;70be   ; la direccion 2, dibujo 0xA4
	ld c,0a4h		;70c0   ; dibujo 0xA4
	jr enemigo_tiro_diag		;70c2
enemigo_tiro_izq:
	cp 018h		;70c4   ; 0x18 o mas?
	ret c			;70c6
	ld b,003h		;70c7   ; la direccion 3, dibujo 0xA8
	ld c,0a8h		;70c9   ; dibujo 0xA8
enemigo_tiro_diag:
	ld a,(0e00ah)		;70cb   ; desde la fase 3
	cp 003h		;70ce   ; la fase 3 o mas?
	ret c			;70d0
	push iy		;70d1
	call tiro_libre		;70d3   ; un tiro libre?
	and a			;70d6
	jr nz,enemigo_dispara_no		;70d7   ; ninguno libre
	ld a,(ix+000h)		;70d9   ; su Y
	ld (iy+000h),a		;70dc
	ld a,(ix+001h)		;70df   ; su X
	ld (iy+001h),a		;70e2
	ld (iy+002h),c		;70e5   ; su dibujo
	ld (iy+003h),005h		;70e8   ; color 5
	push de			;70ec
	pop iy		;70ed
	ld (iy+004h),b		;70ef   ; su direccion
	pop iy		;70f2
	jp enemigo_espera		;70f4   ; la espera
enemigo_espera:		; Una espera al azar (R): 16-47 cuadros hasta el tiro siguiente (0xE488)
	ld a,r		;70f7   ; al azar...
	and 01fh		;70f9   ; ...0-31...
	add a,010h		;70fb   ; ...+ 16
	ld (0e488h),a		;70fd   ; la espera
	ret			;7100
tiro_libre:		; Un tiro enemigo libre: IY sus atributos (los sprites 4-7, 0xE110-0xE11C) y DE sus datos (0xE300, 0xE310, 0xE320, 0xE330); A = 0xFF si no hay
	ld iy,0e110h		;7101   ; el primero
	ld de,0e300h		;7105   ; sus datos
	ld a,(iy+000h)		;7108   ; libre (Y 0)?
	and a			;710b   ; libre: ese
	ret z			;710c
	ld iy,0e114h		;710d   ; el segundo
	ld de,0e310h		;7111   ; sus datos
	ld a,(iy+000h)		;7114   ; libre?
	and a			;7117
	ret z			;7118
	ld iy,0e118h		;7119   ; el tercero
	ld de,0e320h		;711d   ; sus datos
	ld a,(iy+000h)		;7120   ; libre?
	and a			;7123
	ret z			;7124
	ld iy,0e11ch		;7125   ; el cuarto
	ld de,0e330h		;7129   ; sus datos
	ld a,(iy+000h)		;712c   ; libre?
	and a			;712f
	ret z			;7130
	ld a,0ffh		;7131   ; ninguno
	ret			;7133
enemigo_choca:		; ¿Toca el sprite IX (un enemigo o un tiro suyo; sus datos IY) al avion (0xE100)? Entonces el avion se estrella y el otro se acaba
	ld a,(iy+004h)		;7134   ; ya cayendo?
	cp 0ffh		;7137   ; ya derribado?
	ret z			;7139
	push iy		;713a
	ld iy,0e100h		;713c   ; el avion
	call toca_avion		;7140   ; se tocan?
	and a			;7143   ; se tocan?
	jr nz,enemigo_choca_si		;7144
	pop iy		;7146
	ret			;7148
enemigo_choca_si:
	ld a,001h		;7149   ; el avion se estrella
	ld (0e19bh),a		;714b   ; A = 0xFF: estrellado
	jr enemigo_cae_empieza		;714e
enemigo_tocado:		; ¿Le da al enemigo IX alguno de los cuatro tiros del avion (0xE170-0xE17C)? El tiro se acaba (Y 6) y el enemigo cae: su estado a +0x10, +4 = 0xFF, +8 = 0
	push iy		;7150
	ld iy,0e170h		;7152   ; el primer tiro
	call toca_tiro		;7156   ; le da el primero?
	and a			;7159
	jr nz,enemigo_tocado_si		;715a
	ld iy,0e174h		;715c   ; el segundo
	call toca_tiro		;7160   ; el segundo?
	and a			;7163
	jr nz,enemigo_tocado_si		;7164
	ld iy,0e178h		;7166   ; el tercero
	call toca_tiro		;716a   ; el tercero?
	and a			;716d
	jr nz,enemigo_tocado_si		;716e
	ld iy,0e17ch		;7170   ; el cuarto
	call toca_tiro		;7174   ; el cuarto?
	and a			;7177
	jr nz,enemigo_tocado_si		;7178
	pop iy		;717a   ; ninguno: A = 0
	xor a			;717c
	ret			;717d
enemigo_tocado_si:
	ld (iy+000h),006h		;717e   ; el tiro, fuera
	ld (iy+001h),000h		;7182   ; el tiro a cero
	ld (iy+002h),000h		;7186
	ld (iy+003h),000h		;718a
enemigo_cae_empieza:
	pop iy		;718e
	ld a,(iy+004h)		;7190   ; su estado, guardado
	ld (iy+010h),a		;7193   ; en +0x10
	ld (iy+004h),0ffh		;7196   ; cayendo
	ld (iy+008h),000h		;719a   ; la explosion, paso 0
	ld a,0ffh		;719e   ; A = 0xFF
	ret			;71a0
toca_tiro:		; Las cajas de un tiro: 0x14 a un lado y 0xC al otro
	ld h,014h		;71a1   ; 0x14...
	ld l,00ch		;71a3   ; ...y 0xC
	jr toca		;71a5
toca_avion:		; Las del avion: 0x1A y 4
	ld h,01ah		;71a7   ; 0x1A...
	ld l,004h		;71a9   ; ...y 4
toca:		; ¿Se tocan los sprites IX e IY? Los dos en pantalla (X e Y no 0), la X a menos de H (o L) y la Y a menos de 6: A = 0xFF
	ld a,(ix+000h)		;71ab   ; IX fuera?
	and a			;71ae
	ret z			;71af
	ld a,(ix+001h)		;71b0   ; su X
	and a			;71b3
	ret z			;71b4
	ld a,(iy+000h)		;71b5   ; IY fuera?
	and a			;71b8
	ret z			;71b9
	ld a,(iy+001h)		;71ba   ; su X
	and a			;71bd
	ret z			;71be
	ld a,(ix+001h)		;71bf   ; las X...
	sub (iy+001h)		;71c2   ; IX a la derecha?
	jr nc,toca_izq		;71c5
	ld a,(iy+001h)		;71c7   ; IY a la derecha
	sub (ix+001h)		;71ca   ; la diferencia
	cp h			;71cd   ; a menos de H?
	jr nc,toca_no		;71ce
	jr toca_y		;71d0
toca_izq:
	cp l			;71d2   ; a menos de L?
	jr nc,toca_no		;71d3
toca_y:
	ld a,(ix+000h)		;71d5   ; las Y
	sub (iy+000h)		;71d8   ; la diferencia de Y
	jr nz,L_71E3		;71db
	ld a,(iy+000h)		;71dd   ; la otra
	sub (ix+000h)		;71e0
L_71E3:
	cp 006h		;71e3   ; a menos de 6?
	jr nc,toca_no		;71e5
	ld a,0ffh		;71e7   ; se tocan
	ret			;71e9
toca_no:
	xor a			;71ea   ; no se tocan
	ret			;71eb
enemigo_cae:		; El enemigo IX derribado (+8 el paso): los pasos 0-2 son la explosion (0x727D, 0x72AF, 0x72B5), 4 cuadros cada uno; despues desaparece, da sus puntos (+0x1B; desde la fase 7, 16 mas por fase) y quedan uno menos por derribar (0xE484, 0xE1CA, BCD); a 0, en las fases 0 y 1, el final (0x77A0); en las demas, el del tipo 5 (0x77C8)
	ld a,(iy+008h)		;71ec   ; el paso
	and a			;71ef
	jp z,explosion1		;71f0
	cp 001h		;71f3   ; el paso 1?
	jp z,explosion2		;71f5
	cp 002h		;71f8   ; el paso 2?
	jp z,explosion3		;71fa
	ld (ix+000h),000h		;71fd   ; fuera
	ld (ix+001h),000h		;7201   ; la X, el dibujo...
	ld (ix+002h),000h		;7205
	ld (iy+004h),000h		;7209   ; ...sus datos libres
	ld (iy+008h),000h		;720d
	ld (ix+003h),000h		;7211
	ld (iy+016h),000h		;7215   ; +0x16 a 0
	ld a,(0e000h)		;7219   ; jugando?
	and a			;721c   ; la demostracion: sin puntos
	jr z,enemigo_cae_cuenta		;721d
	ld a,(0e00ah)		;721f   ; la fase - 6...
	sub 006h		;7222   ; hasta la fase 6...
	jr c,enemigo_cae_puntos_fijos		;7224
	jr z,enemigo_cae_puntos_fijos		;7226   ; ...hasta la 6: sus puntos sin mas
	rlca			;7228   ; x 16
	rlca			;7229   ; (x 16)
	rlca			;722a
	rlca			;722b
	add a,(iy+01bh)		;722c   ; + sus puntos
	push af			;722f   ; guardados
	sub 0a0h		;7230   ; 100 o mas?
	jr c,enemigo_cae_puntos		;7232
	ld a,001h		;7234   ; 100 puntos...
	call puntos_suma_cien		;7236   ; las centenas
	pop af			;7239
	sub 0a0h		;723a   ; ...y el resto
	push af			;723c
enemigo_cae_puntos:
	pop af			;723d
	call puntos_suma		;723e   ; a los puntos
	jr enemigo_cae_cuenta		;7241
enemigo_cae_puntos_fijos:
	ld a,(iy+01bh)		;7243   ; sus puntos
	call puntos_suma		;7246   ; a los puntos
enemigo_cae_cuenta:
	ld a,(0e484h)		;7249   ; los que quedan...
	and a			;724c
	jr z,L_7251		;724d   ; ninguno: 0
	dec a			;724f   ; ...uno menos, en BCD
	daa			;7250   ; en BCD
L_7251:
	ld (0e484h),a		;7251
	ld (0e1cah),a		;7254   ; en el recuadro SHOT
	call shot_cifras		;7257   ; sus cifras
	ld a,(0e00ah)		;725a   ; la fase 0?
	and a			;725d   ; la fase 0
	jr z,enemigo_cae_fase0		;725e
	cp 001h		;7260   ; la 1?
	jr z,enemigo_cae_fase1		;7262
	ld a,(iy+010h)		;7264   ; el tipo 5?
	cp 005h		;7267   ; el grande?
	jp z,repostaje_pide		;7269   ; el repostaje
	ret			;726c
enemigo_cae_fase0:
	ld a,(0e484h)		;726d   ; ninguno: el final
	and a			;7270   ; ninguno?
	jp z,combate_acaba		;7271
	ret			;7274
enemigo_cae_fase1:
	ld a,(0e484h)		;7275   ; los que quedan
	and a			;7278
	jp z,combate_acaba		;7279
	ret			;727c
explosion1:		; La explosion, paso 0: color 8, el sonido 2 de B y C, el estado guardado; sale despedido hacia el lado de la pantalla (+1 = -2, +2 = 3 o -3), dibujo 0xEC
	ld (ix+003h),008h		;727d   ; color 8
	ld a,002h		;7281   ; el sonido 2 de B y C
	call sonido_bc_pide		;7283
	ld a,(iy+004h)		;7286   ; el estado
	cp 0ffh		;7289   ; ya derribado?
	jr z,L_7290		;728b
	ld (iy+010h),a		;728d   ; guardado
L_7290:
	ld a,(ix+001h)		;7290   ; a la derecha de la mitad?
	cp 070h		;7293   ; la mitad derecha?
	jr c,explosion1_izq		;7295
	ld (iy+001h),0feh		;7297   ; hacia arriba y a la derecha
	ld (iy+002h),003h		;729b   ; +2 = 3
	ld (ix+002h),0ech		;729f   ; el dibujo 0xEC
	jr explosion_cuenta		;72a3
explosion1_izq:
	ld (iy+001h),0feh		;72a5   ; hacia arriba y a la izquierda
	ld (iy+002h),0fdh		;72a9   ; +2 = -3
	jr explosion_cuenta		;72ad
explosion2:
	ld (ix+002h),0f0h		;72af   ; el dibujo 0xF0
	jr explosion_cuenta		;72b3   ; el dibujo 0xF0
explosion3:
	ld a,(iy+010h)		;72b5   ; los tipos 6 o mas...
	cp 006h		;72b8   ; el tipo 6 o mas?
	jr c,explosion3_otro		;72ba
	ld (ix+002h),0fch		;72bc   ; ...el dibujo 0xFC
	jr explosion_cuenta		;72c0
explosion3_otro:
	ld (ix+002h),0f4h		;72c2   ; ...los otros, 0xF4
explosion_cuenta:
	inc (iy+000h)		;72c6   ; 4 cuadros...
	ld a,(iy+000h)		;72c9   ; la cuenta
	cp 004h		;72cc   ; 4?
	jr c,L_72D7		;72ce
	ld (iy+000h),000h		;72d0   ; ...y el paso siguiente
	inc (iy+008h)		;72d4   ; el paso siguiente
L_72D7:
	ret			;72d7
enemigos:		; Los enemigos de cada cuadro (guardando IX)
	push ix		;72d8
	call enemigos_va		;72da   ; los enemigos
	pop ix		;72dd
	ret			;72df
enemigos_va:		; En el aire (0xE19F = 2), sin el cartel del despegue y fuera del repostaje (0xE19D = 1): la primera vez, la oleada de la fase (0x7CDF fase 0, 0x7CF4 fase 1 y demostracion, 0x7D0C, 0x7D27, 0x7D42 desde la 4) y los que hay que derribar (0xE484); despues, la oleada (0x7363) y los enemigos uno a uno (0x7C5A)
	ld a,(0e19fh)		;72e0   ; en el aire?
	cp 002h		;72e3   ; en el aire?
	ret nz			;72e5
	ld a,(0e1c2h)		;72e6   ; el cartel?
	and a			;72e9   ; el cartel?
	ret nz			;72ea
	ld a,(0e19dh)		;72eb   ; 0xE19D = 1?
	cp 001h		;72ee   ; el repostaje?
	ret z			;72f0
	ld a,(0e19dh)		;72f1   ; la ultima parte?
	cp 002h		;72f4
	jr nz,enemigos_empieza		;72f6
	ld a,(0e1c9h)		;72f8   ; aterrizando?
	and a			;72fb   ; aterrizando?
	ret nz			;72fc
	xor a			;72fd   ; 0xE19D = 0
	ld (0e19dh),a		;72fe   ; la ultima parte acabada
enemigos_empieza:
	ld a,(0e480h)		;7301   ; ya empezada?
	and a			;7304   ; ya en marcha?
	jr nz,enemigos_cuadro		;7305
	call fase_dato1		;7307   ; los que hay que derribar
	ld a,(0e484h)		;730a   ; los que hay que derribar
	ld (0e1cah),a		;730d   ; en el recuadro SHOT
	call shot_cifras		;7310   ; sus cifras
	ld a,(0e00ah)		;7313   ; la oleada de la fase
	and a			;7316   ; la fase 0?
	jr z,oleada_fase0		;7317
	cp 001h		;7319   ; la 1?
	jr z,oleada_fase1		;731b
	cp 002h		;731d   ; la 2?
	jr z,oleada_fase2		;731f
	cp 003h		;7321   ; la 3?
	jr z,oleada_fase3		;7323
	jr oleada_fase4		;7325   ; la 4 o mas
oleada_fase0:
	ld a,(0e048h)		;7327   ; la demostracion: la de la fase 1
	cp 001h		;732a   ; la demostracion?
	jr z,oleada_fase1		;732c
	ld hl,07cdfh		;732e   ; la de la fase 0
	jr oleada_pon		;7331
oleada_fase1:
	ld hl,07cf4h		;7333   ; la de la fase 1
	jr oleada_pon		;7336
oleada_fase2:
	ld hl,07d0ch		;7338   ; la de la fase 2
	jr oleada_pon		;733b
oleada_fase3:
	ld hl,07d27h		;733d   ; la de la fase 3
	jr oleada_pon		;7340
oleada_fase4:
	ld hl,07d42h		;7342   ; la de las demas
oleada_pon:
	ld (0e481h),hl		;7345   ; su primera entrada
	inc hl			;7348   ; su cuenta (+2)
	inc hl			;7349   ; su cuenta
	ld a,(hl)			;734a
	ld (0e485h),a		;734b   ; en 0xE485
	ld a,0ffh		;734e   ; empezada
	ld (0e480h),a		;7350   ; en marcha (0xFF)
	ld hl,0e110h		;7353   ; los sprites 4-25 a cero
	ld b,058h		;7356   ; 0x58 bytes
oleada_borra:
	ld (hl),000h		;7358   ; a cero
	inc hl			;735a
	djnz oleada_borra		;735b
enemigos_cuadro:
	call oleada		;735d   ; la oleada
	jp enemigos_todos		;7360   ; los enemigos
oleada:		; La oleada (0xE481: entradas de tres bytes, tipo, espera y cuantos; 0xFF y una direccion, otra vez): con 0xE483 = 1 o 2, el final; sin enemigos por derribar, el final (0x77A0); cada tanto (la espera, 0xE486) sale uno del tipo (la tabla 0x742F) si hay sitio (0x77E2)
	ld a,(0e483h)		;7363   ; 0xE483 = 1?
	cp 001h		;7366   ; el grande derribado?
	jp z,repostaje_pide		;7368
	cp 002h		;736b   ; = 2?
	jp z,combate_acaba		;736d
	ld a,(0e00ah)		;7370   ; por fases
	and a			;7373   ; la fase 0?
	jr z,oleada_mira0		;7374
	cp 001h		;7376   ; la 1?
	jr z,oleada_mira1		;7378
	cp 002h		;737a   ; la 2?
	jr z,oleada_mira2		;737c
	jr oleada_mira3		;737e   ; las demas
oleada_mira0:
	ld a,(0e483h)		;7380   ; el final en marcha?
	cp 0ffh		;7383   ; en marcha?
	jr nz,oleada_entrada		;7385
	ld a,(0e484h)		;7387   ; quedan por derribar?
	and a			;738a
	jp z,combate_acaba		;738b   ; ninguno: el final
	jr oleada_entrada		;738e
oleada_mira1:
	ld a,(0e483h)		;7390   ; el final en marcha?
	cp 0ffh		;7393   ; en marcha?
	jr nz,oleada_entrada		;7395
	ld a,(0e484h)		;7397   ; quedan por derribar?
	and a			;739a
	jp z,combate_acaba		;739b   ; ninguno: el final
	jr oleada_entrada		;739e
oleada_mira2:
	ld a,(0e483h)		;73a0   ; el final en marcha?
	cp 0ffh		;73a3   ; en marcha?
	jr nz,oleada_entrada		;73a5
	ld a,(0e484h)		;73a7   ; quedan por derribar?
	and a			;73aa
	jp z,combate_acaba		;73ab   ; ninguno: el final
	jr oleada_entrada		;73ae
oleada_mira3:
	ld a,(0e483h)		;73b0   ; el final en marcha?
	cp 0ffh		;73b3   ; en marcha?
	jr nz,oleada_entrada		;73b5
	ld a,(0e484h)		;73b7   ; quedan por derribar?
	and a			;73ba
	jp z,combate_acaba		;73bb   ; ninguno: el final
oleada_entrada:
	ld hl,(0e481h)		;73be   ; la entrada
	ld a,(0e485h)		;73c1   ; quedan de esta?
	and a			;73c4   ; quedan?
	jr nz,oleada_sale		;73c5
	inc hl			;73c7   ; la siguiente (+3)
	inc hl			;73c8
	inc hl			;73c9
	ld a,(hl)			;73ca
	cp 0ffh		;73cb   ; 0xFF: a otra direccion
	jr nz,oleada_entrada_pon		;73cd
	inc hl			;73cf   ; la direccion
	ld e,(hl)			;73d0
	inc hl			;73d1
	ld d,(hl)			;73d2
	ex de,hl			;73d3   ; a ella
oleada_entrada_pon:
	ld (0e481h),hl		;73d4   ; la entrada
	inc hl			;73d7   ; su cuenta
	inc hl			;73d8
	ld a,(hl)			;73d9   ; su cuenta
	ld (0e485h),a		;73da
	xor a			;73dd   ; la espera a 0
	ld (0e486h),a		;73de   ; la espera
oleada_sale:
	ld hl,(0e481h)		;73e1   ; la entrada
	ld a,(0e484h)		;73e4   ; quedan por derribar?
	and a			;73e7
	jr nz,oleada_espera		;73e8
	ld a,(hl)			;73ea   ; no: solo el tipo 5
	cp 005h		;73eb   ; el tipo 5?
	jr z,oleada_espera		;73ed
	jp oleada_salta		;73ef   ; las demas: la siguiente
oleada_espera:
	ld a,(0e486h)		;73f2   ; la espera...
	inc a			;73f5   ; un cuadro mas
	ld (0e486h),a		;73f6
	push hl			;73f9
	inc hl			;73fa   ; la espera de la entrada (+1)
	ld c,(hl)			;73fb   ; ...contra la de la entrada
	pop hl			;73fc
	cp c			;73fd
	ret c			;73fe   ; aun no
	xor a			;73ff   ; la espera a 0
	ld (0e486h),a		;7400
	call enemigo_libre		;7403   ; un sitio libre (IY)?
	and a			;7406   ; ningun sitio: otra vez
	ret nz			;7407
	xor a			;7408
	ld (0e486h),a		;7409
	ld a,(0e485h)		;740c   ; uno menos de esta entrada
	dec a			;740f   ; uno menos
	ld (0e485h),a		;7410
	ld a,(hl)			;7413   ; el tipo...
	cp 011h		;7414   ; ...0x11 o mas: los 4 bits bajos
	jr c,L_741A		;7416
	and 00fh		;7418
L_741A:
	ld (iy+001h),000h		;741a   ; sus cuentas a 0
	ld (iy+00fh),000h		;741e
	rlca			;7422   ; x 2
	ld e,a			;7423   ; en DE
	ld d,000h		;7424
	ld hl,0742fh		;7426   ; la tabla de 0x742F
	add hl,de			;7429
	ld e,(hl)			;742a   ; la rutina
	inc hl			;742b
	ld d,(hl)			;742c
	ex de,hl			;742d
	jp (hl)			;742e   ; salta

; ----------------------------------------------------------------------
; DATOS enemigo_tipos: Las 17 rutinas que ponen un enemigo nuevo segun su tipo
;   0x742f..0x7451  (34 bytes)
DATA_enemigo_tipos:
	defb 069h,074h,051h,077h,06ah,074h,0b5h,074h,0fch,074h,043h,075h,0aeh,075h,0bah,075h	; 742f  itQwjt.t.tCu.u.u
	defb 001h,076h,048h,076h,08fh,076h,0d6h,076h,01dh,077h,051h,077h,051h,077h,051h,077h	; 743f  .vHv.v.v.wQwQwQw
	defb 051h,077h	; 744f

; ======================================================================
; CODIGO 0x7451..0x781f  (974 bytes)
; ======================================================================


oleada_salta:		; La entrada siguiente de la oleada sin poner enemigo (0xFF y una direccion: otra vez desde alli)
	push hl			;7451   ; guardados
	push de			;7452
	ld hl,(0e481h)		;7453   ; la entrada
	inc hl			;7456   ; la siguiente (+3)
	inc hl			;7457
	inc hl			;7458
	ld a,(hl)			;7459   ; 0xFF?
	cp 0ffh		;745a   ; 0xFF?
	jr nz,oleada_salta_pon		;745c
	inc hl			;745e   ; la direccion
	ld e,(hl)			;745f   ; la direccion
	inc hl			;7460
	ld d,(hl)			;7461
	ex de,hl			;7462   ; a ella
oleada_salta_pon:
	ld (0e481h),hl		;7463
	pop de			;7466   ; de vuelta
	pop hl			;7467
	ret			;7468
tipo_0:		; El tipo 0: nada
	ret			;7469
tipo_2:		; El tipo 2: entra a 0x50 del avion, por el lado contrario a la mitad en que esta; dibujo 0x68, color 14, el movimiento 2, 30 puntos
	ld a,(0e101h)		;746a   ; la X del avion
	cp 070h		;746d   ; en la mitad izquierda?
	jr c,tipo_2_der		;746f
	jr tipo_2_izq		;7471
tipo_2_der:
	add a,050h		;7473   ; a su derecha (+0x50)
	ld (iy+005h),003h		;7475   ; sus direcciones (+5, +6)
	ld (iy+006h),005h		;7479   ; gira hasta la direccion 0x5
	ld (iy+018h),0ffh		;747d   ; el lado (+0x18)
	jr tipo_2_pon		;7481
tipo_2_izq:
	sub 050h		;7483   ; a su izquierda (-0x50)
	ld (iy+005h),00dh		;7485   ; sale con la direccion 0xD
	ld (iy+006h),00bh		;7489   ; gira hasta la direccion 0xB
	ld (iy+018h),001h		;748d   ; girando hacia delante (+1)
tipo_2_pon:
	call enemigo_pon		;7491   ; en su sitio, arriba
	ld (iy+000h),068h		;7494   ; el dibujo
	ld (ix+002h),068h		;7498   ; el dibujo de sus sprites: 0x68
	ld (ix+003h),00eh		;749c   ; color 14
	ld (iy+014h),038h		;74a0   ; +0x14, +0x15
	ld (iy+015h),00ah		;74a4   ; gira cada 0xA cuadros
	ld (iy+004h),002h		;74a8   ; el movimiento 2
	ld (iy+019h),000h		;74ac   ; sin vueltas
	ld (iy+01bh),030h		;74b0   ; 30 puntos
	ret			;74b4
tipo_3:		; El tipo 3: a 0x28 / 0x38 del avion; dibujo 0x74, color 10, el movimiento 3, 40 puntos
	ld a,(0e101h)		;74b5   ; la X del avion
	cp 070h		;74b8   ; en la mitad izquierda?
	jr c,tipo_3_der		;74ba
	jr tipo_3_izq		;74bc
tipo_3_der:
	add a,028h		;74be   ; a su derecha: + 0x28
	ld (iy+005h),001h		;74c0   ; sale con la direccion 0x1
	ld (iy+006h),002h		;74c4   ; gira hasta la direccion 0x2
	ld (iy+018h),0ffh		;74c8   ; girando hacia atras (-1)
	jr tipo_3_pon		;74cc
tipo_3_izq:
	sub 038h		;74ce   ; a su izquierda: - 0x38
	ld (iy+005h),00fh		;74d0   ; sale con la direccion 0xF
	ld (iy+006h),00eh		;74d4   ; gira hasta la direccion 0xE
	ld (iy+018h),001h		;74d8   ; girando hacia delante (+1)
tipo_3_pon:
	call enemigo_pon		;74dc   ; en su X, arriba
	ld (iy+000h),074h		;74df   ; el dibujo
	ld (ix+002h),074h		;74e3   ; el dibujo de sus sprites: 0x74
	ld (ix+003h),00ah		;74e7   ; color 10
	ld (iy+014h),060h		;74eb   ; baja recto hasta la Y 0x60
	ld (iy+015h),008h		;74ef   ; gira cada 0x8 cuadros
	ld (iy+004h),003h		;74f3   ; el movimiento 3
	ld (iy+01bh),040h		;74f7   ; 40 puntos
	ret			;74fb
tipo_4:		; El tipo 4: a 0x40 del avion; dibujo 0x80, color 7, el movimiento 4, 50 puntos
	ld (iy+004h),004h		;74fc   ; el movimiento 4
	ld a,(0e101h)		;7500   ; la X del avion
	cp 070h		;7503   ; en la mitad izquierda?
	jr c,tipo_4_der		;7505
	jr tipo_4_izq		;7507
tipo_4_der:
	add a,040h		;7509   ; a su derecha: + 0x40
	ld (iy+005h),003h		;750b   ; sale con la direccion 0x3
	ld (iy+006h),001h		;750f   ; gira hasta la direccion 0x1
	ld (iy+018h),0ffh		;7513   ; girando hacia atras (-1)
	jr tipo_4_pon		;7517
tipo_4_izq:
	sub 040h		;7519   ; a su izquierda: - 0x40
	ld (iy+005h),00dh		;751b   ; sale con la direccion 0xD
	ld (iy+006h),00fh		;751f   ; gira hasta la direccion 0xF
	ld (iy+018h),001h		;7523   ; girando hacia delante (+1)
tipo_4_pon:
	call enemigo_pon		;7527   ; en su X, arriba
	ld (iy+000h),080h		;752a   ; el dibujo
	ld (ix+002h),080h		;752e   ; el dibujo de sus sprites: 0x80
	ld (ix+003h),007h		;7532   ; color 7
	ld (iy+014h),030h		;7536   ; baja recto hasta la Y 0x30
	ld (iy+015h),004h		;753a   ; gira cada 0x4 cuadros
	ld (iy+01bh),050h		;753e   ; 50 puntos
	ret			;7542
tipo_5:		; El tipo 5, el grande: solo desde la fase 2, con todos los demas derribados (0xE484 a 0) y sin final en marcha; si no, la entrada se salta
	ld a,(0e00ah)		;7543   ; la fase 0 o 1: no
	and a			;7546
	jr z,tipo_5_salta		;7547
	cp 001h		;7549
	jr z,tipo_5_salta		;754b
	ld a,(0e484h)		;754d   ; quedan por derribar: no
	and a			;7550
	jr nz,tipo_5_salta		;7551
	jr c,tipo_5_salta		;7553
	ld a,(0e483h)		;7555   ; el final en marcha: no
	and a			;7558
	jr nz,tipo_5_salta		;7559
	jr tipo_5_pon		;755b
tipo_5_salta:
	ld hl,(0e481h)		;755d   ; la entrada siguiente
	inc hl			;7560
	inc hl			;7561
	inc hl			;7562
	ld (0e481h),hl		;7563
	inc hl			;7566
	inc hl			;7567
	ld a,(hl)			;7568
	ld (0e485h),a		;7569
	ret			;756c
tipo_5_pon:		; El grande: el movimiento 5, X 0xB0, dibujo 0x98, color 15, 90 puntos; en las fases impares, otro paso (+1 = 4) y X 0x20; y los que hay que derribar de la segunda tabla
	ld (iy+004h),005h		;756d   ; el movimiento 5
	ld a,0b0h		;7571   ; X 0xB0
	call enemigo_pon		;7573   ; en su X, arriba
	ld (iy+000h),098h		;7576   ; el dibujo
	ld (ix+002h),098h		;757a   ; el dibujo de sus sprites: 0x98
	ld (ix+003h),00fh		;757e   ; color 15
	ld (iy+014h),060h		;7582   ; baja recto hasta la Y 0x60
	ld (iy+015h),020h		;7586   ; gira cada 0x20 cuadros
	ld (iy+01bh),090h		;758a   ; 90 puntos
	ld (iy+01dh),000h		;758e   ; sin vueltas hechas
	ld a,(0e00ah)		;7592   ; la fase impar?
	bit 0,a		;7595
	jr nz,tipo_5_impar		;7597
	jr tipo_5_cuenta		;7599
tipo_5_impar:
	ld (iy+001h),004h		;759b
	ld (ix+001h),020h		;759f   ; X 0x20
tipo_5_cuenta:
	call fase_dato1		;75a3   ; los que hay que derribar
	cp 099h		;75a6   ; 99: 100? (sigue en BCD)
	jr nz,tipo_5_cifras		;75a8
	inc a			;75aa
tipo_5_cifras:
	jp shot_cifras		;75ab
tipo_6:		; El tipo 6: como el 3, sin lado y 60 puntos
	call tipo_3		;75ae
	ld (iy+018h),000h		;75b1   ; sin girar
	ld (iy+01bh),060h		;75b5   ; sus puntos: 60
	ret			;75b9
tipo_7:		; El tipo 7: a 0x50, dibujo 0x8C, color 7, el movimiento 4, 20 puntos
	ld (iy+004h),004h		;75ba   ; el movimiento 4
	ld a,(0e101h)		;75be   ; la X del avion
	cp 070h		;75c1   ; en la mitad izquierda?
	jr c,tipo_7_der		;75c3
	jr tipo_7_izq		;75c5
tipo_7_der:
	add a,050h		;75c7   ; a su derecha: + 0x50
	ld (iy+005h),002h		;75c9   ; sale con la direccion 0x2
	ld (iy+006h),005h		;75cd   ; gira hasta la direccion 0x5
	ld (iy+018h),0ffh		;75d1   ; girando hacia atras (-1)
	jr tipo_7_pon		;75d5
tipo_7_izq:
	sub 050h		;75d7   ; a su izquierda: - 0x50
	ld (iy+005h),00eh		;75d9   ; sale con la direccion 0xE
	ld (iy+006h),00bh		;75dd   ; gira hasta la direccion 0xB
	ld (iy+018h),001h		;75e1   ; girando hacia delante (+1)
tipo_7_pon:
	call enemigo_pon		;75e5   ; en su X, arriba
	ld (iy+000h),08ch		;75e8   ; el dibujo
	ld (ix+002h),08ch		;75ec   ; el dibujo de sus sprites: 0x8C
	ld (ix+003h),007h		;75f0   ; color 7
	ld (iy+014h),030h		;75f4   ; baja recto hasta la Y 0x30
	ld (iy+015h),003h		;75f8   ; gira cada 0x3 cuadros
	ld (iy+01bh),020h		;75fc   ; 20 puntos
	ret			;7600
tipo_8:		; El tipo 8: a 0x40, dibujo 0x68, color 14, 20 puntos
	ld (iy+004h),004h		;7601   ; el movimiento 4
	ld a,(0e101h)		;7605   ; la X del avion
	cp 070h		;7608   ; en la mitad izquierda?
	jr c,tipo_8_der		;760a
	jr tipo_8_izq		;760c
tipo_8_der:
	add a,040h		;760e   ; a su derecha: + 0x40
	ld (iy+005h),002h		;7610   ; sale con la direccion 0x2
	ld (iy+006h),005h		;7614   ; gira hasta la direccion 0x5
	ld (iy+018h),001h		;7618   ; girando hacia delante (+1)
	jr tipo_8_pon		;761c
tipo_8_izq:
	sub 040h		;761e   ; a su izquierda: - 0x40
	ld (iy+005h),00eh		;7620   ; sale con la direccion 0xE
	ld (iy+006h),00bh		;7624   ; gira hasta la direccion 0xB
	ld (iy+018h),0ffh		;7628   ; girando hacia atras (-1)
tipo_8_pon:
	call enemigo_pon		;762c   ; en su X, arriba
	ld (iy+000h),068h		;762f   ; el dibujo
	ld (ix+002h),068h		;7633   ; el dibujo de sus sprites: 0x68
	ld (ix+003h),00eh		;7637   ; color 14
	ld (iy+014h),030h		;763b   ; baja recto hasta la Y 0x30
	ld (iy+015h),003h		;763f   ; gira cada 0x3 cuadros
	ld (iy+01bh),020h		;7643   ; 20 puntos
	ret			;7647
tipo_9:		; El tipo 9: a 0x28, dibujo 0x5C, color 13, 20 puntos
	ld (iy+004h),004h		;7648   ; el movimiento 4
	ld a,(0e101h)		;764c   ; la X del avion
	cp 070h		;764f   ; en la mitad izquierda?
	jr c,tipo_9_der		;7651
	jr tipo_9_izq		;7653
tipo_9_der:
	add a,028h		;7655   ; a su derecha: + 0x28
	ld (iy+005h),001h		;7657   ; sale con la direccion 0x1
	ld (iy+006h),004h		;765b   ; gira hasta la direccion 0x4
	ld (iy+018h),0ffh		;765f   ; girando hacia atras (-1)
	jr tipo_9_pon		;7663
tipo_9_izq:
	sub 028h		;7665   ; a su izquierda: - 0x28
	ld (iy+005h),00fh		;7667   ; sale con la direccion 0xF
	ld (iy+006h),00bh		;766b   ; gira hasta la direccion 0xB
	ld (iy+018h),001h		;766f   ; girando hacia delante (+1)
tipo_9_pon:
	call enemigo_pon		;7673   ; en su X, arriba
	ld (iy+000h),05ch		;7676   ; el dibujo
	ld (ix+002h),05ch		;767a   ; el dibujo de sus sprites: 0x5C
	ld (ix+003h),00dh		;767e   ; color 13
	ld (iy+014h),030h		;7682   ; baja recto hasta la Y 0x30
	ld (iy+015h),002h		;7686   ; gira cada 0x2 cuadros
	ld (iy+01bh),020h		;768a   ; 20 puntos
	ret			;768e
tipo_10:		; El tipo 10: a 0x50, dibujo 0x8C, color 10, 30 puntos
	ld (iy+004h),004h		;768f   ; el movimiento 4
	ld a,(0e101h)		;7693   ; la X del avion
	cp 070h		;7696   ; en la mitad izquierda?
	jr c,tipo_10_der		;7698
	jr tipo_10_izq		;769a
tipo_10_der:
	add a,050h		;769c   ; a su derecha: + 0x50
	ld (iy+005h),003h		;769e   ; sale con la direccion 0x3
	ld (iy+006h),00fh		;76a2   ; gira hasta la direccion 0xF
	ld (iy+018h),0ffh		;76a6   ; girando hacia atras (-1)
	jr tipo_10_pon		;76aa
tipo_10_izq:
	sub 050h		;76ac   ; a su izquierda: - 0x50
	ld (iy+005h),00dh		;76ae   ; sale con la direccion 0xD
	ld (iy+006h),001h		;76b2   ; gira hasta la direccion 0x1
	ld (iy+018h),001h		;76b6   ; girando hacia delante (+1)
tipo_10_pon:
	call enemigo_pon		;76ba   ; en su X, arriba
	ld (iy+000h),08ch		;76bd   ; el dibujo
	ld (ix+002h),08ch		;76c1   ; el dibujo de sus sprites: 0x8C
	ld (ix+003h),00ah		;76c5   ; color 10
	ld (iy+014h),030h		;76c9   ; baja recto hasta la Y 0x30
	ld (iy+015h),004h		;76cd   ; gira cada 0x4 cuadros
	ld (iy+01bh),030h		;76d1   ; 30 puntos
	ret			;76d5
tipo_11:		; El tipo 11: a 0x40, dibujo 0x68, color 7, 30 puntos
	ld (iy+004h),004h		;76d6   ; el movimiento 4
	ld a,(0e101h)		;76da   ; la X del avion
	cp 070h		;76dd   ; en la mitad izquierda?
	jr c,tipo_11_der		;76df
	jr tipo_11_izq		;76e1
tipo_11_der:
	add a,040h		;76e3   ; a su derecha: + 0x40
	ld (iy+005h),002h		;76e5   ; sale con la direccion 0x2
	ld (iy+006h),005h		;76e9   ; gira hasta la direccion 0x5
	ld (iy+018h),0ffh		;76ed   ; girando hacia atras (-1)
	jr tipo_11_pon		;76f1
tipo_11_izq:
	sub 040h		;76f3   ; a su izquierda: - 0x40
	ld (iy+005h),00eh		;76f5   ; sale con la direccion 0xE
	ld (iy+006h),003h		;76f9   ; gira hasta la direccion 0x3
	ld (iy+018h),001h		;76fd   ; girando hacia delante (+1)
tipo_11_pon:
	call enemigo_pon		;7701   ; en su X, arriba
	ld (iy+000h),068h		;7704   ; el dibujo
	ld (ix+002h),068h		;7708   ; el dibujo de sus sprites: 0x68
	ld (ix+003h),007h		;770c   ; color 7
	ld (iy+014h),030h		;7710   ; baja recto hasta la Y 0x30
	ld (iy+015h),004h		;7714   ; gira cada 0x4 cuadros
	ld (iy+01bh),030h		;7718   ; 30 puntos
	ret			;771c
tipo_12:		; El tipo 12: en una X al azar (R, 0x28-0xB7), el movimiento 6, dibujo 0x50 / 0x68, color 10, 40 puntos
	ld a,r		;771d   ; al azar
	cp 028h		;771f   ; por la izquierda, no
	ret c			;7721
	cp 0b8h		;7722   ; por la derecha, no
	ret nc			;7724
	ld (iy+004h),006h		;7725   ; el movimiento 6
	ld (iy+005h),000h		;7729   ; sale con la direccion 0x0
	ld (iy+006h),00bh		;772d   ; gira hasta la direccion 0xB
	ld (iy+018h),0ffh		;7731   ; girando hacia atras (-1)
	call enemigo_pon		;7735   ; en su X, arriba
	ld (iy+000h),050h		;7738   ; su dibujo de frente: 0x50
	ld (ix+002h),068h		;773c   ; el dibujo de sus sprites: 0x68
	ld (ix+003h),00ah		;7740   ; su color: 0xA
	ld (iy+014h),030h		;7744   ; baja recto hasta la Y 0x30
	ld (iy+015h),003h		;7748   ; gira cada 0x3 cuadros
	ld (iy+01bh),040h		;774c   ; sus puntos: 40
	ret			;7750
tipo_1:		; El tipo 1 (y 13-16): a 0x30 del avion, el movimiento 1, dibujo 0x8C, color 13
	ld a,(0e101h)		;7751   ; la X del avion
	cp 070h		;7754   ; en la mitad izquierda?
	jr c,tipo_1_der		;7756
	jr tipo_1_izq		;7758
tipo_1_der:
	add a,030h		;775a   ; a su derecha: + 0x30
	ld (iy+005h),001h		;775c   ; sale con la direccion 0x1
	ld (iy+006h),00eh		;7760   ; gira hasta la direccion 0xE
	jr tipo_1_pon		;7764
tipo_1_izq:
	sub 030h		;7766   ; a su izquierda: - 0x30
	ld (iy+005h),00fh		;7768   ; a su izquierda
	ld (iy+006h),002h		;776c   ; gira hasta la direccion 0x2
tipo_1_pon:
	ld (iy+004h),001h		;7770   ; el movimiento 1
	call enemigo_pon		;7774   ; en su X, arriba
	ld (ix+002h),08ch		;7777   ; el dibujo
	ld (iy+000h),08ch		;777b   ; su dibujo de frente: 0x8C
	ld (ix+003h),00dh		;777f   ; color 13
	ld (iy+014h),028h		;7783   ; baja recto hasta la Y 0x28
	ld (iy+015h),028h		;7787   ; gira cada 0x28 cuadros
	ret			;778b
enemigo_pon:		; El enemigo nuevo en la X A, arriba del todo (Y 1), sus cuentas a 0 y 30 puntos
	ld (ix+001h),a		;778c   ; la X
	ld (ix+000h),001h		;778f   ; la Y: 1
	ld (iy+008h),000h		;7793   ; sin derribar
	ld (iy+009h),000h		;7797   ; despacio
	ld (iy+01bh),030h		;779b   ; 30 puntos (los tipos los cambian)
	ret			;779f
combate_acaba:		; El final del combate (0xE483 = 2): cuando ya no queda nadie en pantalla (0x7833), la ultima parte (0xE19D = 2: el aterrizaje, 0xE1C9 = 1), la oleada otra vez para la vuelta y los sprites 16-31 a cero
	ld a,002h		;77a0   ; el final en marcha
	ld (0e483h),a		;77a2
	call pantalla_vacia		;77a5   ; queda alguien?
	and a			;77a8   ; aun quedan
	ret nz			;77a9
	ld a,002h		;77aa   ; la ultima parte
	ld (0e19dh),a		;77ac   ; la ultima parte
	dec a			;77af   ; el aterrizaje
	ld (0e1c9h),a		;77b0   ; el aterrizaje, paso 1
	xor a			;77b3   ; la oleada otra vez
	ld (0e483h),a		;77b4   ; sin final
	ld (0e480h),a		;77b7   ; la oleada otra vez
	call fase_dato1		;77ba   ; los que hay que derribar
	ld hl,0e140h		;77bd   ; los sprites 16-31
	ld b,040h		;77c0   ; 64 bytes
combate_acaba_borra:
	ld (hl),000h		;77c2   ; a cero
	inc hl			;77c4
	djnz combate_acaba_borra		;77c5
	ret			;77c7
repostaje_pide:		; El grande derribado (0xE483 = 1): cuando no queda nadie en pantalla, el repostaje (0xE19D = 1) y los que hay que derribar de la segunda tabla
	ld a,001h		;77c8   ; el grande derribado
	ld (0e483h),a		;77ca
	call pantalla_vacia		;77cd   ; queda alguien?
	and a			;77d0   ; aun quedan
	ret nz			;77d1
	ld a,001h		;77d2   ; el repostaje
	ld (0e483h),a		;77d4
	ld (0e19dh),a		;77d7   ; el repostaje
	ld a,0ffh		;77da   ; 0xE483 = 0xFF
	ld (0e483h),a		;77dc   ; 0xFF
	jp fase_dato2		;77df   ; los que hay que derribar despues
enemigo_libre:		; Un sitio libre para un enemigo: IX sus sprites (0xE128, 0xE130, 0xE138; 0xE140 desde la fase 1) e IY sus datos (0xE360, 0xE380, 0xE3A0, 0xE3C0); A = 0xFF si no hay
	ld ix,0e128h		;77e2   ; el primero
	ld iy,0e360h		;77e6   ; sus datos
	ld a,(iy+004h)		;77ea   ; libre?
	and a			;77ed   ; libre?
	ret z			;77ee
	ld ix,0e130h		;77ef   ; el segundo
	ld iy,0e380h		;77f3   ; sus datos
	ld a,(iy+004h)		;77f7   ; libre?
	and a			;77fa
	ret z			;77fb
	ld ix,0e138h		;77fc   ; el tercero
	ld iy,0e3a0h		;7800   ; sus datos
	ld a,(iy+004h)		;7804   ; libre?
	and a			;7807
	ret z			;7808
	ld a,(0e00ah)		;7809   ; la fase 0: solo tres
	and a			;780c
	jr z,enemigo_libre_no		;780d
	ld ix,0e140h		;780f   ; el cuarto
	ld iy,0e3c0h		;7813   ; sus datos
	ld a,(iy+004h)		;7817   ; libre?
	and a			;781a
	ret z			;781b
enemigo_libre_no:
	ld a,0ffh		;781c   ; ninguno: 0xFF
	ret			;781e

; ----------------------------------------------------------------------
; DATOS copia8_suelta: Codigo que nada llama (ningun salto ni puntero; sin
;   ejecutar en la cobertura): copia 8 bytes de HL a IX y el siguiente a +4 de
;   IY, como si pusiera un enemigo desde una tabla
;   0x781f..0x7833  (20 bytes)
DATA_copia8_suelta:
	defb 0ddh,0e5h,006h,008h,07eh,0ddh,077h,000h,023h,0ddh,023h,010h,0f7h,0ddh,0e1h,07eh	; 781f  ....~.w.#.#....~
	defb 0fdh,077h,004h,0c9h	; 782f

; ======================================================================
; CODIGO 0x7833..0x7859  (38 bytes)
; ======================================================================


pantalla_vacia:		; ¿Queda algun sprite en pantalla de los 18 desde el 4 (0xE110)? NZ si queda
	ld hl,0e112h		;7833   ; las X de los sprites 4-21
	ld b,012h		;7836
L_7838:
	ld a,(hl)			;7838   ; una X
	and a			;7839   ; en pantalla?
	ret nz			;783a   ; no
	inc hl			;783b   ; el siguiente
	inc hl			;783c
	inc hl			;783d
	inc hl			;783e
	djnz L_7838		;783f   ; el siguiente
	ret			;7841
tiro_enemigo_mueve:		; El tiro enemigo IX (sus datos IY, 0xE300...) segun su direccion (+4): 0 nada, 0xFF acabado (0x71EC); si no, la tabla de 0x7859
	ld a,(iy+004h)		;7842   ; la direccion
	and a			;7845   ; ninguno
	ret z			;7846
	cp 0ffh		;7847   ; derribado?
	jp z,enemigo_cae		;7849
	rlca			;784c   ; x 2
	ld e,a			;784d   ; en DE
	ld d,000h		;784e
	ld hl,07859h		;7850   ; la tabla
	add hl,de			;7853   ; + la tabla
	ld e,(hl)			;7854
	inc hl			;7855
	ld d,(hl)			;7856
	ex de,hl			;7857   ; a la rutina
	jp (hl)			;7858

; ----------------------------------------------------------------------
; DATOS tiro_direcciones: Las direcciones de los tiros enemigos (la 0 sin
;   usar): 1 recto, 2 abajo a la derecha, 3 abajo a la izquierda, 4-8 quieto;
;   y un "ret"
;   0x7859..0x786c  (19 bytes)
DATA_tiro_direcciones:
	defb 000h,000h,06ch,078h,078h,078h,087h,078h,096h,078h,096h,078h,096h,078h,096h,078h	; 7859  ..lxxx.x.x.x.x.x
	defb 096h,078h,0c9h	; 7869

; ======================================================================
; CODIGO 0x786c..0x78d1  (101 bytes)
; ======================================================================


tiro_recto:		; Dos filas abajo
	inc (ix+000h)		;786c
	inc (ix+000h)		;786f   ; (dos filas)
	call enemigo_choca		;7872   ; toca al avion?
	jp fuera_mira		;7875
tiro_der:		; Dos filas abajo y una columna a la derecha
	inc (ix+000h)		;7878
	inc (ix+000h)		;787b
	inc (ix+001h)		;787e   ; una a la derecha
	call enemigo_choca		;7881   ; toca al avion?
	jp fuera_mira		;7884
tiro_izq:		; Dos filas abajo y una a la izquierda
	inc (ix+000h)		;7887
	inc (ix+000h)		;788a
	dec (ix+001h)		;788d   ; una a la izquierda
	call enemigo_choca		;7890   ; toca al avion?
	jp fuera_mira		;7893
fuera_mira:		; ¿Se ha ido el sprite IX por abajo (Y 0xE0 o mas) o por la derecha (X 0xB0 o mas)? Entonces fuera, y sus datos a 0
	ld a,(ix+000h)		;7896   ; por abajo?
	cp 0e0h		;7899   ; 0xE0?
	jr nc,fuera_quita		;789b
	ld a,(ix+001h)		;789d   ; por la derecha?
	cp 0b0h		;78a0   ; 0xB0?
	jr nc,fuera_quita		;78a2
	ret			;78a4   ; aun en pantalla
fuera_quita:
	ld (ix+000h),000h		;78a5   ; fuera
	ld (ix+001h),000h		;78a9
	ld (ix+002h),000h		;78ad
	ld (ix+003h),000h		;78b1
	ld (iy+004h),000h		;78b5   ; libre
	ret			;78b9
enemigo_mueve:		; El enemigo IX (sus datos IY) segun su movimiento (+4): 0 nada, 0xFF derribado (0x71EC), si no la tabla de 0x78D1 (1-6)
	ld a,(iy+004h)		;78ba   ; el movimiento
	and a			;78bd   ; ninguno
	ret z			;78be
	cp 0ffh		;78bf   ; derribado?
	jp z,enemigo_cae		;78c1   ; el derribado
	rlca			;78c4   ; x 2
	ld e,a			;78c5
	ld d,000h		;78c6
	ld hl,078d1h		;78c8   ; la tabla
	add hl,de			;78cb   ; + la tabla
	ld e,(hl)			;78cc
	inc hl			;78cd
	ld d,(hl)			;78ce
	ex de,hl			;78cf   ; a la rutina
	jp (hl)			;78d0

; ----------------------------------------------------------------------
; DATOS enemigo_movimientos: Los movimientos de los enemigos (0x78BA, la
;   entrada 0 sin usar): 1 0x7A6F, 2 0x7AB0, 3 0x7B22, 4 0x78EF, 5 0x793E (el
;   grande), 6 0x7A3D, y 0x7A6F otra vez para los demas
;   0x78d1..0x78ef  (30 bytes)
DATA_enemigo_movimientos:
	defb 000h,000h,06fh,07ah,0b0h,07ah,022h,07bh,0efh,078h,03eh,079h,03dh,07ah,06fh,07ah	; 78d1  ..oz.z"{.x>y=zoz
	defb 06fh,07ah,06fh,07ah,06fh,07ah,06fh,07ah,06fh,07ah,06fh,07ah,06fh,07ah	; 78e1  ozozozozozozoz

; ======================================================================
; CODIGO 0x78ef..0x795c  (109 bytes)
; ======================================================================


mov_4:		; El movimiento 4: dispara si va hacia abajo (direcciones 0-2 y 11-15); arriba del todo espera hasta la Y 0x40; despues, cada +0x15 cuadros la direccion (+5) gira un paso (+0x18) hasta la de +6; al llegar, recto
	ld a,(iy+005h)		;78ef   ; su direccion
	cp 003h		;78f2   ; hacia arriba (3-10)...
	jr c,L_78FC		;78f4
	cp 00bh		;78f6   ; ...no dispara
	jr nc,L_78FC		;78f8
	jr mov_4_paso		;78fa
L_78FC:
	call enemigo_dispara		;78fc   ; dispara
mov_4_paso:
	ld a,(iy+001h)		;78ff   ; el paso 2: recto
	cp 002h		;7902   ; el paso 2?
	jp z,mov_final		;7904
	and a			;7907   ; el paso 0: bajando...
	jr nz,mov_4_gira		;7908
	ld a,(ix+000h)		;790a   ; ...hasta la Y 0x40
	cp 040h		;790d   ; 0x40?
	jp c,mov_final		;790f
	ld (iy+001h),001h		;7912   ; el paso 1
mov_4_gira:
	inc (iy+00eh)		;7916   ; la cuenta...
	ld a,(iy+00eh)		;7919
	cp (iy+015h)		;791c   ; ...contra +0x15
	jp c,mov_final		;791f   ; aun no
	ld (iy+00eh),000h		;7922   ; la cuenta a 0
	ld a,(iy+005h)		;7926   ; la direccion + el lado
	add a,(iy+018h)		;7929
	and 00fh		;792c
	ld (iy+005h),a		;792e   ; la nueva
	cp (iy+006h)		;7931   ; la final?
	jp nz,mov_final		;7934   ; aun no
	ld (iy+001h),002h		;7937   ; el paso 2
	jp mov_final		;793b
mov_5:		; El movimiento 5, el grande: su color cambia cada cuadro (1-15) y sus pasos (+1, la tabla 0x795C) le hacen cruzar la pantalla de lado a lado, bajar y volver
	ld a,(ix+003h)		;793e   ; el color...
	inc a			;7941
	and 00fh		;7942   ; ...sin el 0
	jr nz,L_7947		;7944
	inc a			;7946
L_7947:
	ld (ix+003h),a		;7947
	ld a,(iy+001h)		;794a   ; el paso
	and 007h		;794d
	rlca			;794f
	ld e,a			;7950
	ld d,000h		;7951
	ld hl,0795ch		;7953   ; la tabla
	add hl,de			;7956
	ld e,(hl)			;7957
	inc hl			;7958
	ld d,(hl)			;7959
	ex de,hl			;795a
	jp (hl)			;795b

; ----------------------------------------------------------------------
; DATOS grande_pasos: Los 8 pasos del grande (0x793E)
;   0x795c..0x796c  (16 bytes)
DATA_grande_pasos:
	defb 06ch,079h,0c3h,079h,0c9h,079h,0d3h,079h,0d9h,079h,009h,07ah,00fh,07ah,02ch,07ah	; 795c  ly.y.y.y.y.z.z,z

; ======================================================================
; CODIGO 0x796c..0x7c2f  (707 bytes)
; ======================================================================


grande_paso0:		; El paso 0: a la izquierda (la direccion 3, el dibujo 0x94) hasta la X 0x20 (0x60 en las fases 8-11); al llegar, la vuelta siguiente (+0x1D) y el paso siguiente
	call shot_cifras		;796c   ; las cifras de SHOT
	ld (iy+005h),003h		;796f   ; la direccion 3
	ld (ix+002h),094h		;7973   ; el dibujo 0x94
	ld a,(0e00ah)		;7977   ; las fases 8-11?
	cp 008h		;797a
	jr c,grande_paso0_x		;797c
	cp 00ch		;797e
	jr nc,grande_paso0_x		;7980
	ld a,(ix+001h)		;7982   ; hasta 0x60
	cp 060h		;7985
	jr grande_paso0_mira		;7987
grande_paso0_x:
	ld a,(ix+001h)		;7989   ; hasta 0x20
	cp 020h		;798c
grande_paso0_mira:
	jp nc,grande_mueve		;798e
	call grande_vueltas		;7991   ; vueltas que quedan?
	and a			;7994
	jp z,grande_mueve		;7995
	inc (iy+01dh)		;7998   ; una vuelta mas
	inc (iy+001h)		;799b   ; el paso siguiente
	ld (iy+00eh),000h		;799e
	jp grande_mueve		;79a2
grande_vueltas:		; ¿Le quedan vueltas al grande? Una en las fases 0-3 y dos desde la 4 (+0x1D): A = 0xFF si quedan
	ld a,(0e00ah)		;79a5   ; la fase 4 o mas?
	cp 004h		;79a8
	jr c,grande_vueltas1		;79aa
	jr grande_vueltas2		;79ac
grande_vueltas1:
	ld a,(iy+01dh)		;79ae
	cp 001h		;79b1
	jr nc,grande_vueltas_no		;79b3
	jr grande_vueltas_si		;79b5
grande_vueltas2:
	ld a,(iy+01dh)		;79b7
	cp 002h		;79ba
	jr nc,grande_vueltas_no		;79bc
grande_vueltas_si:
	ld a,0ffh		;79be
	ret			;79c0
grande_vueltas_no:
	xor a			;79c1
	ret			;79c2
grande_paso1:		; El paso 1: la direccion 1 durante 8 cuadros
	ld (iy+005h),001h		;79c3
	jr grande_paso_cuenta		;79c7
grande_paso2:		; El paso 2: la direccion 0 y el dibujo 0x98, 8 cuadros
	ld (iy+005h),000h		;79c9
	ld (ix+002h),098h		;79cd
	jr grande_paso_cuenta		;79d1
grande_paso3:		; El paso 3: la direccion 15, 8 cuadros
	ld (iy+005h),00fh		;79d3
	jr grande_paso_cuenta		;79d7
grande_paso4:		; El paso 4: la direccion 13 y el dibujo 0x9C hasta la X 0xA8 (0x70 en las fases 8 o mas)
	ld (iy+005h),00dh		;79d9   ; la direccion 13
	ld (ix+002h),09ch		;79dd   ; el dibujo 0x9C
	ld a,(0e00ah)		;79e1   ; las fases 8 o mas?
	cp 008h		;79e4
	jr c,grande_paso4_x		;79e6
	jr grande_paso4_x8		;79e8
grande_paso4_x:
	ld a,(ix+001h)		;79ea   ; hasta 0xA8
	cp 0a8h		;79ed
	jr c,grande_mueve		;79ef
	jr grande_paso4_mira		;79f1
grande_paso4_x8:
	ld a,(ix+001h)		;79f3   ; hasta 0x70
	cp 070h		;79f6
	jr c,grande_mueve		;79f8
grande_paso4_mira:
	call grande_vueltas		;79fa   ; vueltas que quedan?
	and a			;79fd
	jp z,grande_mueve		;79fe
	inc (iy+01dh)		;7a01   ; una vuelta mas
	inc (iy+001h)		;7a04   ; el paso siguiente
	jr grande_mueve		;7a07
grande_paso5:		; El paso 5: la direccion 15, 8 cuadros
	ld (iy+005h),00fh		;7a09   ; la direccion 15
	jr grande_paso_cuenta		;7a0d
grande_paso6:		; El paso 6: la direccion 0 y el dibujo 0xA0, 8 cuadros
	ld (iy+005h),000h		;7a0f   ; la direccion 0
	ld (ix+002h),0a0h		;7a13   ; el dibujo 0xA0
	jr grande_paso_cuenta		;7a17
grande_paso_cuenta:		; 8 cuadros (+0xE) y el paso siguiente
	inc (iy+00eh)		;7a19   ; la cuenta
	ld a,(iy+00eh)		;7a1c
	cp 008h		;7a1f   ; 8?
	jr c,grande_mueve		;7a21
	ld (iy+00eh),000h		;7a23
	inc (iy+001h)		;7a27   ; el paso siguiente
	jr grande_mueve		;7a2a
grande_paso7:		; El paso 7: la direccion 3 y otra vez el paso 0
	ld (iy+005h),003h		;7a2c   ; la direccion 3
	ld (iy+001h),000h		;7a30   ; el paso 0
grande_mueve:
	call paso		;7a34   ; un paso en su direccion
	call enemigo_tocado		;7a37   ; le dan?
	jp fuera_mira		;7a3a   ; se ha ido?
mov_6:		; El movimiento 6: baja; si pasa cerca por encima del avion (a menos de 0x20), se tuerce hacia el (la direccion 10 o 6)
	ld a,(0e100h)		;7a3d   ; la Y del avion - la suya
	sub (ix+000h)		;7a40
	jr c,mov_6_paso		;7a43
	cp 020h		;7a45   ; a menos de 0x20?
	jr c,L_7A4B		;7a47
	jr mov_6_paso		;7a49
L_7A4B:
	ld a,(0e101h)		;7a4b   ; la X: hacia que lado?
	sub (ix+001h)		;7a4e
	jr c,mov_6_izq		;7a51
	jr mov_6_der		;7a53
mov_6_izq:
	ld (iy+005h),00ah		;7a55
	jr mov_6_paso		;7a59
mov_6_der:
	ld (iy+005h),006h		;7a5b
mov_6_paso:
	call paso		;7a5f   ; un paso
	call enemigo_tocado		;7a62   ; le dan?
	and a			;7a65
	jp nz,fuera_mira		;7a66
	call enemigo_choca		;7a69   ; toca al avion?
	jp fuera_mira		;7a6c
mov_1:		; El movimiento 1: dispara; bajando hasta la Y 0x50, recto; despues cada +0x15 cuadros la direccion gira un paso hasta la de +6
	call enemigo_dispara		;7a6f   ; dispara
	ld a,(iy+001h)		;7a72   ; el paso 1: recto
	cp 001h		;7a75
	jr z,mov_paso		;7a77
	ld a,(ix+000h)		;7a79   ; hasta la Y 0x50
	cp 050h		;7a7c
	jr c,mov_paso		;7a7e
	inc (iy+017h)		;7a80   ; la cuenta...
	ld a,(iy+017h)		;7a83
	cp (iy+015h)		;7a86   ; ...contra +0x15
	jr c,mov_paso		;7a89
	ld (iy+017h),000h		;7a8b
	ld a,(iy+005h)		;7a8f   ; la direccion, un paso
	inc a			;7a92
	and 00fh		;7a93
	ld (iy+005h),a		;7a95
	cp (iy+006h)		;7a98   ; la final?
	jr nz,mov_paso		;7a9b
	inc (iy+001h)		;7a9d   ; el paso siguiente
mov_paso:		; Un paso en su direccion (0x7B79), le dan?, toca al avion?, y si se ha ido
	call paso		;7aa0   ; un paso
	call enemigo_tocado		;7aa3   ; le dan?
	and a			;7aa6
	jp nz,fuera_mira		;7aa7
	call enemigo_choca		;7aaa   ; toca al avion?
	jp fuera_mira		;7aad
mov_2:		; El movimiento 2: dispara; va hacia el centro hasta la X 0x40 (0x78 por la derecha); despues gira (+0x18) hasta la direccion de +6 y repite hasta cuatro veces (+0x19)
	call enemigo_dispara		;7ab0   ; dispara
	ld a,(iy+001h)		;7ab3   ; el paso 1?
	cp 001h		;7ab6
	jr z,mov_2_paso1		;7ab8
	cp 002h		;7aba   ; el paso 2?
	jr z,mov_2_paso2		;7abc
	ld a,(iy+005h)		;7abe   ; hacia que lado va?
	cp 008h		;7ac1
	jr c,mov_2_izq		;7ac3
	jr mov_2_der		;7ac5
mov_2_izq:
	ld a,(ix+001h)		;7ac7   ; hasta 0x40
	cp 040h		;7aca
	jr c,mov_2_gira		;7acc
	jr mov_2_mueve		;7ace
mov_2_der:
	ld a,(ix+001h)		;7ad0   ; hasta 0x78
	cp 078h		;7ad3
	jr nc,mov_2_gira		;7ad5
	jr mov_2_mueve		;7ad7
mov_2_gira:
	ld (iy+001h),001h		;7ad9   ; el paso 1
	jr mov_2_mueve		;7add
mov_2_paso1:
	inc (iy+017h)		;7adf   ; la cuenta
	ld a,(iy+017h)		;7ae2
	cp (iy+015h)		;7ae5
	jr c,mov_2_mueve		;7ae8
	ld (iy+017h),000h		;7aea
	ld a,(iy+005h)		;7aee   ; la direccion + el lado
	add a,(iy+018h)		;7af1
	and 00fh		;7af4
	ld (iy+005h),a		;7af6
	cp (iy+006h)		;7af9   ; la final?
	jr nz,mov_2_mueve		;7afc
	ld (iy+001h),002h		;7afe
	jr mov_2_mueve		;7b02
mov_2_paso2:
	ld a,(iy+019h)		;7b04   ; las vueltas...
	inc a			;7b07
	cp 004h		;7b08   ; ...cuatro como mucho
	jr nc,mov_2_mueve		;7b0a
	ld (iy+019h),a		;7b0c
	ld (iy+001h),000h		;7b0f   ; otra vez el paso 0
mov_2_mueve:
	call paso		;7b13
	call enemigo_tocado		;7b16
	jp nz,fuera_mira		;7b19
	call enemigo_choca		;7b1c
	jp fuera_mira		;7b1f
mov_3:		; El movimiento 3: dispara; baja hasta la Y de +0x14 y despues gira cada +0x15 cuadros hasta la direccion de +6
	call enemigo_dispara		;7b22   ; dispara
	ld a,(iy+001h)		;7b25   ; el paso 2: recto
	cp 002h		;7b28
	jr z,mov_final		;7b2a
	and a			;7b2c   ; el paso 0
	jr nz,mov_3_gira		;7b2d
	ld a,(ix+000h)		;7b2f   ; hasta la Y de +0x14
	cp (iy+014h)		;7b32
	jr c,mov_3_mueve		;7b35
	ld (iy+001h),001h		;7b37   ; el paso 1
	jr mov_3_gira		;7b3b
mov_3_gira:
	inc (iy+00eh)		;7b3d   ; la cuenta
	ld a,(iy+00eh)		;7b40
	cp (iy+015h)		;7b43
	jr c,mov_final		;7b46
	ld (iy+00eh),000h		;7b48
	ld a,(iy+005h)		;7b4c   ; la direccion + el lado
	add a,(iy+018h)		;7b4f
	and 00fh		;7b52
	ld (iy+005h),a		;7b54
mov_final:		; Si la direccion es ya la de +6 (y +0x16 a 0), el paso 2
	ld a,(iy+016h)		;7b57   ; +0x16?
	and a			;7b5a
	jr nz,mov_3_mueve		;7b5b
	ld a,(iy+005h)		;7b5d   ; la final?
	cp (iy+006h)		;7b60
	jr nz,mov_3_mueve		;7b63
	ld (iy+001h),002h		;7b65   ; el paso 2
mov_3_mueve:
	call paso		;7b69   ; un paso
	call enemigo_tocado		;7b6c   ; le dan?
	and a			;7b6f
	jp nz,fuera_mira		;7b70
	call enemigo_choca		;7b73   ; toca al avion?
	jp fuera_mira		;7b76
paso:		; Un paso del sprite IX en su direccion (+5, 0-15; la tabla 0x7C3A de parejas Y, X): su dibujo (+0) segun hacia donde mira (+4 o -4 de lado), la Y y la X: 2 y -2 mueven uno cada cuadro, 1 y -1 uno cada 2 cuadros; los rapidos (+9 = 2), cada 4 cuadros un paso mas
	ld a,(iy+005h)		;7b79   ; la direccion: 0, 1, 15, 7, 8 o 9...
	cp 000h		;7b7c
	jr z,paso_dibujo_frente		;7b7e
	cp 001h		;7b80
	jr z,paso_dibujo_frente		;7b82
	cp 00fh		;7b84
	jr z,paso_dibujo_frente		;7b86
	cp 007h		;7b88
	jr z,paso_dibujo_frente		;7b8a
	cp 009h		;7b8c
	jr z,paso_dibujo_frente		;7b8e
	cp 008h		;7b90   ; ...de frente; 10-14 a un lado, 2-6 al otro
	jr z,paso_dibujo_frente		;7b92
	jr nc,paso_dibujo_der		;7b94
	jr paso_dibujo_izq		;7b96
paso_dibujo_der:
	ld a,(iy+000h)		;7b98   ; el dibujo + 4
	add a,004h		;7b9b
	ld (ix+002h),a		;7b9d
	jr paso_y		;7ba0
paso_dibujo_izq:
	ld a,(iy+000h)		;7ba2   ; el dibujo - 4
	sub 004h		;7ba5
	ld (ix+002h),a		;7ba7
	jr paso_y		;7baa
paso_dibujo_frente:
	ld a,(iy+000h)		;7bac
	ld (ix+002h),a		;7baf
paso_y:
	ld a,(iy+005h)		;7bb2   ; la direccion x 2
	rlca			;7bb5
	ld e,a			;7bb6
	ld d,000h		;7bb7
	ld hl,07c3ah		;7bb9   ; la tabla
	add hl,de			;7bbc
	ld a,(hl)			;7bbd   ; la Y: 2?
	cp 002h		;7bbe
	jr z,paso_y_mas		;7bc0
	cp 0feh		;7bc2   ; -2?
	jr z,paso_y_menos		;7bc4
	inc (iy+00dh)		;7bc6   ; si no, cada 2 cuadros
	ld a,(iy+00dh)		;7bc9
	cp 002h		;7bcc
	jr c,paso_x		;7bce
	ld (iy+00dh),000h		;7bd0
	jr paso_y_pon		;7bd4
paso_y_mas:
	dec a			;7bd6   ; 2: 1 cada cuadro
	jr paso_y_pon		;7bd7
paso_y_menos:
	inc a			;7bd9   ; -2: -1 cada cuadro
paso_y_pon:
	ld a,(ix+000h)		;7bda   ; la Y + eso
	add a,(hl)			;7bdd
	ld (ix+000h),a		;7bde
paso_x:
	inc hl			;7be1
	ld a,(hl)			;7be2   ; la X
	cp 002h		;7be3   ; 2?
	jr z,paso_x_mas		;7be5
	cp 0feh		;7be7   ; -2?
	jr z,paso_x_menos		;7be9
	inc (iy+00ch)		;7beb   ; si no, cada 2 cuadros
	ld a,(iy+00ch)		;7bee
	cp 002h		;7bf1
	jr c,paso_rapido		;7bf3
	ld (iy+00ch),000h		;7bf5
	jr paso_x_pon		;7bf9
paso_x_mas:
	dec a			;7bfb   ; 2: 1 cada cuadro
	jr paso_x_pon		;7bfc
paso_x_menos:
	inc a			;7bfe
paso_x_pon:
	ld a,(ix+001h)		;7bff   ; la X + eso
	add a,(hl)			;7c02
	ld (ix+001h),a		;7c03
paso_rapido:
	ld a,(iy+009h)		;7c06   ; rapido (+9 = 2)?
	cp 002h		;7c09
	jp nz,fuera_mira		;7c0b
	inc (iy+00fh)		;7c0e   ; cada 4 cuadros...
	ld a,(iy+00fh)		;7c11
	cp 004h		;7c14
	jp c,fuera_mira		;7c16
	ld (iy+00fh),000h		;7c19
	ld a,(ix+001h)		;7c1d   ; ...otro paso de lado...
	add a,(hl)			;7c20
	ld (ix+001h),a		;7c21
	dec hl			;7c24
	ld a,(ix+000h)		;7c25   ; ...y de alto
	add a,(hl)			;7c28
	ld (ix+000h),a		;7c29
	jp fuera_mira		;7c2c

; ----------------------------------------------------------------------
; DATOS paso_datos: 11 bytes de codigo que nada llama ("ld a,(iy+6) / ld
;   (iy+5),a / ld (iy+9),2 / ret": la direccion final y rapido) y las 16
;   direcciones (0x7C3A: Y, X)
;   0x7c2f..0x7c5a  (43 bytes)
DATA_paso_datos:
	defb 0fdh,07eh,006h,0fdh,077h,005h,0fdh,036h,009h,002h,0c9h,002h,000h,002h,0ffh,002h	; 7c2f  .~..w..6........
	defb 0feh,001h,0feh,000h,0feh,0ffh,0feh,0feh,0feh,0feh,0ffh,0feh,000h,0feh,001h,0feh	; 7c3f  ................
	defb 002h,0ffh,002h,000h,002h,001h,002h,002h,002h,002h,001h	; 7c4f  ...........

; ======================================================================
; CODIGO 0x7c5a..0x7cdf  (133 bytes)
; ======================================================================


enemigos_todos:		; Los seis tiros enemigos (sprites 4-9, 0xE110; datos 0xE300, 16 bytes) y los seis enemigos (dos sprites cada uno desde el 10, 0xE128; datos 0xE360, 32 bytes)
	ld ix,0e110h		;7c5a   ; el primer tiro
	ld iy,0e300h		;7c5e
	call tiro_enemigo_mueve		;7c62   ; se mueve
	ld ix,0e114h		;7c65   ; el segundo tiro
	ld iy,0e310h		;7c69
	call tiro_enemigo_mueve		;7c6d   ; se mueve
	ld ix,0e118h		;7c70   ; el tercero
	ld iy,0e320h		;7c74
	call tiro_enemigo_mueve		;7c78   ; se mueve
	ld ix,0e11ch		;7c7b   ; el cuarto
	ld iy,0e330h		;7c7f
	call tiro_enemigo_mueve		;7c83   ; se mueve
	ld ix,0e120h		;7c86   ; el quinto
	ld iy,0e340h		;7c8a
	call tiro_enemigo_mueve		;7c8e   ; se mueve
	ld ix,0e124h		;7c91   ; el sexto
	ld iy,0e350h		;7c95
	call tiro_enemigo_mueve		;7c99   ; se mueve
	ld ix,0e128h		;7c9c   ; el primer enemigo
	ld iy,0e360h		;7ca0
	call enemigo_mueve		;7ca4   ; se mueve
	ld ix,0e130h		;7ca7   ; el segundo enemigo
	ld iy,0e380h		;7cab
	call enemigo_mueve		;7caf   ; se mueve
	ld ix,0e138h		;7cb2   ; el tercero
	ld iy,0e3a0h		;7cb6
	call enemigo_mueve		;7cba   ; se mueve
	ld ix,0e140h		;7cbd   ; el cuarto
	ld iy,0e3c0h		;7cc1
	call enemigo_mueve		;7cc5   ; se mueve
	ld ix,0e148h		;7cc8   ; el quinto
	ld iy,0e3e0h		;7ccc
	call enemigo_mueve		;7cd0   ; se mueve
	ld ix,0e150h		;7cd3   ; el sexto
	ld iy,0e400h		;7cd7
	call enemigo_mueve		;7cdb   ; se mueve
	ret			;7cde

; ----------------------------------------------------------------------
; DATOS oleadas: Las oleadas de cada fase (0x7CDF, 0x7CF4, 0x7D0C, 0x7D27,
;   0x7D42): entradas de tres bytes (tipo, espera, cuantos) y 0xFF con la
;   direccion por donde seguir (las cinco vuelven a su principio)
;   0x7cdf..0x7d6a  (139 bytes)
DATA_oleadas:
	defb 007h,00ch,003h,008h,010h,003h,007h,010h,003h,009h,008h,002h,006h,010h,001h,008h	; 7cdf  ................
	defb 008h,003h,0ffh,0dfh,07ch,00ah,010h,003h,00bh,008h,003h,007h,018h,003h,006h,010h	; 7cef  ....|...........
	defb 002h,001h,008h,002h,009h,018h,003h,00ah,010h,003h,0ffh,0f4h,07ch,001h,010h,003h	; 7cff  ............|...
	defb 002h,020h,001h,003h,008h,006h,004h,018h,004h,00ch,018h,004h,006h,010h,003h,005h	; 7d0f  . ..............
	defb 018h,001h,003h,020h,003h,0ffh,00ch,07dh,003h,009h,005h,004h,010h,004h,001h,008h	; 7d1f  ... ...}........
	defb 002h,006h,018h,004h,003h,018h,003h,007h,008h,004h,005h,020h,001h,003h,020h,003h	; 7d2f  ........... .. .
	defb 0ffh,027h,07dh,001h,010h,004h,002h,018h,003h,007h,008h,002h,003h,010h,004h,004h	; 7d3f  .'}.............
	defb 018h,002h,009h,010h,003h,00bh,010h,003h,00ch,018h,004h,00ah,018h,003h,008h,010h	; 7d4f  ................
	defb 003h,005h,020h,002h,006h,020h,003h,0ffh,042h,07dh,0e6h	; 7d5f  .. .. ..B}.

; ----------------------------------------------------------------------
; DATOS relleno_7d6a: Bytes sin orden (restos en la EPROM): ningun puntero ni
;   tabla llega aqui; su lectura esta por medir
;   0x7d6a..0x8000  (662 bytes)
DATA_relleno_7d6a:
	defb 070h,0a1h,025h,0c7h,074h,0c5h,047h,027h,0d3h,025h,0b4h,044h,0c5h,064h,0c3h,011h	; 7d6a  p.%.t.G'.%.D.d..
	defb 0e1h,084h,077h,0c4h,0f0h,0e4h,000h,0beh,004h,018h,000h,0bah,000h,0ach,000h,0beh	; 7d7a  ..w.............
	defb 000h,09ch,010h,0deh,000h,03fh,0feh,000h,0dch,000h,0deh,000h,0fah,000h,0feh,000h	; 7d8a  .....?..........
	defb 0ffh,000h,09eh,000h,0d4h,000h,085h,00eh,025h,080h,004h,08eh,027h,0bch,00ch,0b8h	; 7d9a  ........%...'...
	defb 026h,050h,000h,0bch,094h,0aeh,0afh,025h,01ah,024h,04ch,006h,0b8h,014h,01ch,0a4h	; 7daa  &P.....%.$L.....
	defb 09ah,015h,000h,086h,0b8h,09ch,000h,0bfh,000h,098h,000h,07eh,010h,03ch,000h,03dh	; 7dba  ...........~.<.=
	defb 000h,0fch,000h,0bch,000h,01eh,0fch,000h,0dbh,000h,0feh,000h,098h,000h,0beh,020h	; 7dca  ............... 
	defb 0f8h,000h,0beh,000h,0dch,004h,0a0h,0bbh,055h,08ah,006h,09bh,093h,09eh,024h,0bah	; 7dda  ........U.....$.
	defb 045h,0f8h,036h,051h,01ch,036h,0bah,004h,0bah,0a4h,0fah,0a0h,05ah,0b4h,07ch,034h	; 7dea  E.6Q.6......Z.|4
	defb 097h,00ch,0a9h,02ch,09ch,0a4h,000h,0c7h,000h,0cfh,000h,0ffh,004h,0e5h,000h,0c3h	; 7dfa  ...,............
	defb 000h,0ech,040h,0d5h,004h,0c5h,0efh,000h,0c4h,000h,0edh,000h,0dbh,000h,0dch,000h	; 7e0a  ..@.............
	defb 0ffh,004h,0cfh,000h,0ech,000h,08bh,030h,029h,0ech,024h,0deh,0e1h,041h,047h,0c9h	; 7e1a  .......0).$..AG.
	defb 0bch,0e5h,024h,0beh,0e5h,088h,028h,045h,08eh,023h,0ech,060h,0c9h,065h,0dbh,044h	; 7e2a  ..$...(E.#.`.e.D
	defb 0b9h,067h,0bch,068h,0bch,04dh,000h,0f6h,041h,0c3h,000h,0e1h,000h,092h,000h,0feh	; 7e3a  .g.h.M..A.......
	defb 000h,0dah,000h,0dbh,000h,071h,0fdh,000h,0deh,000h,0ech,000h,0fdh,000h,04dh,000h	; 7e4a  .....q........M.
	defb 0fah,000h,07dh,000h,0dch,000h,0c4h,0c5h,024h,082h,004h,065h,087h,0c4h,0c5h,0c5h	; 7e5a  ..}.....$..e....
	defb 067h,042h,0b4h,0c4h,0a5h,0c4h,0e4h,064h,0d1h,027h,048h,0c0h,0c4h,067h,057h,0a5h	; 7e6a  gB.....d.'H..gW.
	defb 046h,0e3h,0c4h,083h,0c1h,0e6h,000h,05ah,000h,0dah,000h,0fch,000h,03ah,000h,09ch	; 7e7a  F......Z.....:..
	defb 020h,0bch,000h,09eh,004h,0dch,0feh,000h,0feh,004h,0dfh,000h,07eh,000h,0b8h,000h	; 7e8a   ...........~...
	defb 018h,004h,0bch,000h,0beh,000h,084h,0b2h,0b1h,010h,00eh,09ah,025h,088h,010h,09ah	; 7e9a  ............%...
	defb 00ch,00ah,096h,080h,0ach,010h,00ah,03ch,0bch,02ch,0b0h,004h,090h,090h,09ah,006h	; 7eaa  .......<.,......
	defb 0aah,0b0h,08ch,000h,002h,087h,000h,0fbh,004h,0b6h,000h,09fh,000h,09eh,000h,0bfh	; 7eba  ................
	defb 000h,018h,000h,0fch,000h,0ddh,0fah,000h,0f8h,000h,0feh,000h,0feh,000h,0feh,000h	; 7eca  ................
	defb 0bch,000h,0ffh,000h,0deh,001h,0a4h,0aeh,081h,086h,0e5h,0ach,027h,002h,084h,08ch	; 7eda  ............'...
	defb 085h,000h,086h,082h,0adh,080h,0aah,09ch,086h,0a2h,082h,009h,082h,0a6h,008h,0a4h	; 7eea  ................
	defb 008h,088h,082h,000h,0a2h,0ach,000h,0ffh,000h,0eeh,000h,0fah,000h,0c5h,000h,0deh	; 7efa  ................
	defb 000h,0c7h,000h,0ffh,000h,0bch,0c5h,000h,0e2h,020h,06dh,000h,0e0h,004h,0e7h,000h	; 7f0a  ......... m.....
	defb 0dfh,000h,0fdh,000h,0ffh,004h,0a1h,023h,0e7h,091h,024h,022h,025h,080h,0e0h,0e3h	; 7f1a  .......#..$"%...
	defb 0b5h,0a2h,0e1h,0a3h,071h,040h,0e3h,060h,0e2h,062h,0e5h,061h,021h,034h,0efh,060h	; 7f2a  ....q@.`.b.a!4.`
	defb 0a3h,020h,092h,0a5h,0e2h,061h,004h,0fbh,000h,050h,000h,0f9h,000h,0f4h,000h,0efh	; 7f3a  . ...a...P......
	defb 000h,079h,000h,0cfh,000h,0ddh,06fh,000h,0d5h,000h,09fh,000h,0edh,001h,0efh,000h	; 7f4a  .y....o.........
	defb 0efh,000h,0d7h,000h,0feh,000h,000h,0bbh,001h,0c5h,012h,0e2h,0c2h,022h,015h,081h	; 7f5a  ............."..
	defb 027h,082h,0a5h,0b4h,0c5h,0c0h,0a9h,0a4h,0aeh,047h,08ch,0e0h,023h,075h,020h,0a3h	; 7f6a  '........G..#u .
	defb 0e1h,0c1h,0d4h,0a5h,080h,0e4h,000h,0dch,000h,09eh,004h,0dah,000h,09ah,000h,07fh	; 7f7a  ................
	defb 004h,0bch,000h,0fch,000h,0abh,0deh,000h,09ch,000h,0bah,000h,0ffh,000h,09ch,000h	; 7f8a  ................
	defb 09ch,000h,0feh,000h,09ah,000h,084h,0b2h,080h,0b1h,080h,098h,094h,083h,004h,081h	; 7f9a  ................
	defb 080h,002h,004h,092h,0a4h,030h,092h,0a0h,0b2h,014h,098h,094h,0c2h,0a0h,092h,024h	; 7faa  .....0.........$
	defb 0b0h,095h,082h,0a0h,0b0h,025h,000h,09eh,000h,03ah,000h,0feh,000h,0f8h,000h,0ffh	; 7fba  .....%...:......
	defb 000h,07eh,000h,0feh,000h,0feh,0beh,000h,0beh,000h,0deh,000h,0ffh,000h,0feh,000h	; 7fca  .~..............
	defb 0deh,000h,0ffh,000h,0beh,000h,024h,0e2h,024h,0b4h,014h,0b0h,0a4h,024h,004h,01ah	; 7fda  ......$.$....$..
	defb 024h,0a2h,014h,0e7h,015h,020h,0ach,024h,00eh,025h,0beh,004h,0a4h,034h,0aeh,024h	; 7fea  $.... .$.%...4.$
	defb 070h,0b4h,08ch,004h,094h,0a4h	; 7ffa

; ----------------------------------------------------------------------
; DATOS cabecera: La cabecera del cartucho: "AB" e INIT 0x8010; lo demas, a
;   cero
;   0x8000..0x8010  (16 bytes)
DATA_cabecera:
	defb 041h,042h,010h,080h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 8000  AB..............

; ======================================================================
; CODIGO 0x8010..0x84f2  (1250 bytes)
; ======================================================================


init:		; El arranque: la pila, la interrupcion en H.TIMI, SCREEN 2, las letras de la BIOS en los tres tercios, los colores, los sprites y el titulo
	di			;8010   ; sin interrupciones
	call 00041h		;8011   ; DISSCR
	in a,(0a8h)		;8014   ; los slots de las paginas
	bit 4,a		;8016   ; la pagina 2 (bits 4-5)...
	jr nz,L_801E		;8018
	res 2,a		;801a   ; ...a la pagina 1 (bits 2-3)
	jr L_8020		;801c
L_801E:
	set 2,a		;801e
L_8020:
	bit 5,a		;8020
	jr nz,L_8028		;8022
	res 3,a		;8024
	jr L_802A		;8026
L_8028:
	set 3,a		;8028
L_802A:
	out (0a8h),a		;802a   ; el cartucho tambien en 0x4000-0x7FFF
	nop			;802c
	nop			;802d
	ld sp,0f000h		;802e   ; la pila
	ld hl,0e000h		;8031   ; la RAM: 0xE000...
	ld bc,01000h		;8034   ; ...0x1000 bytes...
L_8037:
	ld (hl),000h		;8037   ; ...a cero
	inc hl			;8039
	dec c			;803a
	jr nz,L_8037		;803b
	djnz L_8037		;803d
	ld hl,0996dh		;803f   ; la interrupcion (0x996D)...
	ld (0fda0h),hl		;8042   ; ...en H.TIMI...
	ld a,0c3h		;8045   ; ...con su "jp"
	ld (0fd9fh),a		;8047   ; ...0xFD9F
	call 0007eh		;804a   ; SETGRP: SCREEN 2
	xor a			;804d   ; fondo y borde negros...
	ld (0f3eah),a		;804e   ; BAKCLR = 0
	ld (0f3ebh),a		;8051   ; BDRCLR = 0
	dec a			;8054   ; ...letras blancas (0xFF)
	ld (0f3e9h),a		;8055   ; FORCLR = 0xFF
	call 00062h		;8058   ; CHGCLR
	ld de,00000h		;805b   ; las letras de la BIOS ("0" a "_", 0x30-0x5F: 0x1D3F = 0x1BBF + 0x30 x 8, la direccion fija de la BIOS japonesa) a las casillas 0-0x2F, en los tres tercios
	call letras_cifras		;805e   ; en los tres tercios
	ld de,00800h		;8061
	call letras_cifras		;8064
	ld de,01000h		;8067
	call letras_cifras		;806a
	ld de,00180h		;806d   ; los signos (" " a "/") a las casillas 0x30-0x3F...
	call letras_signos		;8070
	ld de,00980h		;8073   ; ...del segundo tercio
	call letras_signos		;8076
	ld de,01180h		;8079   ; ...y del tercero
	call letras_signos		;807c
	xor a			;807f   ; la casilla 0x10 en blanco...
	ld hl,00080h		;8080
	call vram_ocho		;8083   ; ...en los tres tercios
	ld hl,00880h		;8086
	call vram_ocho		;8089
	ld hl,01080h		;808c
	call vram_ocho		;808f
	ld hl,02000h		;8092   ; todos los colores...
	ld bc,01800h		;8095
	ld a,0f0h		;8098   ; ...blanco sobre transparente
	call 00056h		;809a   ; FILVRM
	call sprites_dibujos		;809d   ; los dibujos de los sprites
	ld a,0a2h		;80a0   ; el registro 1: 0xA2 (sprites de 16 x 16, sin pantalla)
	ld b,a			;80a2
	ld c,001h		;80a3
	call 00047h		;80a5   ; WRTVDP
	ld a,001h		;80a8   ; el record: 10.000 (0xE08F = 0x01)...
	ld (0e08fh),a		;80aa
	ld (0e08ah),a		;80ad   ; ...y su cifra (0xE08A)
titulo:		; El titulo: la pantalla en blanco, el sonido y la RAM a cero, las casillas del titulo (0x6000 a los dibujos y 0x6800 a los colores de los tres tercios), los textos y el logotipo; espera hasta que 0xE018 llega a 255: el boton empieza la partida (0x81FA) y si no, la demostracion (0x81EE)
	call 00041h		;80b0   ; DISSCR
	call sonido_prepara		;80b3   ; el sonido
	call nombres_borra		;80b6   ; la tabla de nombres
	call ram_borra		;80b9   ; la RAM
	call sonido_para		;80bc   ; el sonido parado
	ei			;80bf
	call pantalla_casillas		;80c0   ; las casillas de la fase
	ld hl,06000h		;80c3   ; 0x600 bytes de 0x6000...
	ld de,00200h		;80c6   ; ...a los dibujos desde la casilla 0x40, en los tres tercios
	ld bc,00600h		;80c9
	call 0005ch		;80cc
	ld hl,06000h		;80cf
	ld de,00a00h		;80d2
	ld bc,00600h		;80d5
	call 0005ch		;80d8
	ld hl,06000h		;80db
	ld de,01200h		;80de
	ld bc,00600h		;80e1
	call 0005ch		;80e4
	ld hl,06800h		;80e7   ; y 0x600 de 0x6800 a los colores
	ld de,02200h		;80ea
	ld bc,00600h		;80ed
	call 0005ch		;80f0
	ld hl,06800h		;80f3
	ld de,02a00h		;80f6
	ld bc,00600h		;80f9
	call 0005ch		;80fc
	ld hl,06800h		;80ff
	ld de,03200h		;8102
	ld bc,00600h		;8105
	call 0005ch		;8108
	call 00044h		;810b   ; ENASCR
	ld hl,09905h		;810e   ; unas casillas (0x9905) en la fila 4...
	ld de,01887h		;8111   ; ...columna 7, tres filas de 3
	ld bc,00003h		;8114
	call 0005ch		;8117
	ex de,hl			;811a
	ld de,018a7h		;811b
	ld bc,00003h		;811e
	call 0005ch		;8121
	ex de,hl			;8124
	ld de,018c7h		;8125
	ld bc,00003h		;8128
	call 0005ch		;812b
	ld hl,0990eh		;812e   ; otras (0x990E) en la columna 22
	ld de,01896h		;8131
	ld bc,00003h		;8134
	call 0005ch		;8137
	ex de,hl			;813a
	ld de,018b6h		;813b
	ld bc,00003h		;813e
	call 0005ch		;8141
	ex de,hl			;8144
	ld de,018d6h		;8145
	ld bc,00003h		;8148
	call 0005ch		;814b
	ld hl,09917h		;814e   ; el logotipo (0x9917): seis filas de 10...
	ld de,0186bh		;8151   ; ...desde la fila 3, columna 11
	ld bc,0000ah		;8154
	call 0005ch		;8157
	ex de,hl			;815a
	ld de,0188bh		;815b
	ld bc,0000ah		;815e
	call 0005ch		;8161
	ex de,hl			;8164
	ld de,018abh		;8165
	ld bc,0000ah		;8168
	call 0005ch		;816b
	ex de,hl			;816e
	ld de,018ebh		;816f
	ld bc,0000ah		;8172
	call 0005ch		;8175
	ex de,hl			;8178
	ld de,0190bh		;8179
	ld bc,0000ah		;817c
	call 0005ch		;817f
	ex de,hl			;8182
	ld de,0192bh		;8183
	ld bc,0000ah		;8186
	call 0005ch		;8189
	ld hl,09953h		;818c   ; 0x9953 en la fila 20, columna 10
	ld de,01a8ah		;818f
	ld bc,0000ch		;8192
	call 0005ch		;8195
	ex de,hl			;8198
	ld de,01aaah		;8199
	ld bc,0000eh		;819c
	call 0005ch		;819f
	ld hl,098c7h		;81a2   ; PUSH TRIGGER OR SPACE (0x98C7)...
	ld de,01a46h		;81a5   ; ...en la fila 18, columna 6
	ld bc,00015h		;81a8
	call 0005ch		;81ab
	ld hl,098dch		;81ae   ; COPYRIGHT 1985 (c) CASIO (0x98DC)...
	ld de,01ae5h		;81b1   ; ...en la fila 23, columna 5
	ld bc,00016h		;81b4
	call 0005ch		;81b7
	xor a			;81ba   ; la cuenta de la espera
	ld (0e018h),a		;81bb
titulo_espera:
	ld a,(0e018h)		;81be   ; 0xE018 a 255?
	cp 0ffh		;81c1
	jp nc,demo_empieza		;81c3
	ld a,(0e010h)		;81c6   ; un cuadro?
	cp 001h		;81c9
	jr c,titulo_cuenta		;81cb
	xor a			;81cd
	ld (0e010h),a		;81ce
	call sonido		;81d1   ; el sonido
titulo_cuenta:
	ld a,(0e011h)		;81d4   ; cada 8 cuadros...
	cp 008h		;81d7
	jr c,titulo_boton		;81d9
	xor a			;81db
	ld (0e011h),a		;81dc
	call titulo_avion		;81df   ; ...0x9A2A
titulo_boton:
	ld a,(0e046h)		;81e2   ; el boton?
	and a			;81e5
	jr z,titulo_espera		;81e6
	xor a			;81e8
	ld (0e046h),a		;81e9
	jr partida_empieza		;81ec
demo_empieza:		; La demostracion: la fase 8 y 0xE048 = 1
	ld a,008h		;81ee   ; la fase 8
	ld (0e00ah),a		;81f0
	ld a,001h		;81f3   ; la demostracion
	ld (0e048h),a		;81f5
	jr fase_empieza		;81f8
partida_empieza:		; La partida: jugando (0xE000 = 1), dos vidas, los puntos a cero y la fase 0
	xor a			;81fa   ; sin demostracion
	ld (0e047h),a		;81fb
	ld (0e048h),a		;81fe
	ld a,001h		;8201   ; jugando
	ld (0e000h),a		;8203   ; jugando
	ld a,002h		;8206   ; dos vidas
	ld (0e00bh),a		;8208   ; las vidas
	ld hl,0e001h		;820b   ; las cifras de los puntos (0xE001, 6) a cero
	ld b,006h		;820e   ; seis cifras
L_8210:
	ld (hl),000h		;8210   ; a cero
	inc hl			;8212
	djnz L_8210		;8213
	call puntos_cero		;8215   ; los puntos a cero
	xor a			;8218   ; la fase 0
	ld (0e00ah),a		;8219   ; la fase 0
fase_empieza:		; Una fase: las casillas, la RAM, los sprites; la nave (sprites 0 y 1 en 0xE100: Y 0xB0, X 0x60 y 0x50, dibujos 0 y 4, color 6)...
	call pantalla_casillas		;821c   ; las casillas de la fase
fase_otra:
	call 00041h		;821f   ; DISSCR
	call ram_borra		;8222   ; la RAM de la fase a cero
	call sonido_prepara		;8225   ; el sonido
	call nombres_borra		;8228   ; la tabla de nombres en blanco
	ld ix,0e100h		;822b   ; la nave...
	ld (ix+000h),0b0h		;822f   ; ...Y 0xB0, X 0x60, dibujo 0, color 6...
	ld (ix+001h),060h		;8233   ; X 0x60
	ld (ix+002h),000h		;8237   ; dibujo 0
	ld (ix+003h),006h		;823b   ; color 6
	ld (ix+004h),0b0h		;823f   ; ...y su segundo sprite, X 0x50, dibujo 4
	ld (ix+005h),050h		;8243   ; X 0x50
	ld (ix+006h),004h		;8247   ; dibujo 4
	ld (ix+007h),006h		;824b   ; color 6
	call marcador_pinta		;824f   ; el marcador
	xor a			;8252   ; los botones a 0
	ld (0e040h),a		;8253
	ld (0e044h),a		;8256
	ld (0e017h),a		;8259   ; la cuenta del combustible a 0
	call marcador_textos		;825c   ; el marcador
	ld a,0c0h		;825f   ; el combustible: 0xC0
	ld (0e1a0h),a		;8261   ; lleno
	call combustible_barra		;8264   ; su barra
	ld hl,08548h		;8267   ; la tabla de 0x8548 por la fase (0xE00A)...
	ld a,(0e00ah)		;826a
	add a,l			;826d
	jr nc,L_8271		;826e
	inc h			;8270
L_8271:
	ld l,a			;8271
	ld a,(hl)			;8272   ; su byte
	ld (0e1abh),a		;8273   ; ...a 0xE1AB
	call suelo_color		;8276   ; el color del suelo
	call suelo_avanza		;8279   ; las rayas del suelo
	ld hl,01940h		;827c   ; el horizonte en la fila 10
	ld (0e1b7h),hl		;827f
	call sprites_fase		;8282   ; los sprites de la fase
	call suelo_pinta		;8285   ; el suelo
	ld c,00ch		;8288   ; 12 filas
	call pista_pinta		;828a   ; la pista
	call paisaje		;828d   ; el paisaje
	call 00044h		;8290   ; ENASCR
	call sprites_vram		;8293   ; los sprites
	ld a,001h		;8296   ; la musica 1: la fase empieza
	call musica_pide		;8298
	ld a,080h		;829b   ; 128 cuadros de espera
	call espera		;829d   ; la espera
	ld a,(0e048h)		;82a0   ; la demostracion?
	and a			;82a3
	jr z,partida_bucle		;82a4
partida_bucle:		; El bucle de la fase: lo de cada cuadro (0x82F2); estrellado (0xE19B), 0x95E6; aterrizado (0xE1AD), 0x9694; si no, el vuelo (0x8568) y, segun 0xE19D, 0x8B08 o, parado en la pista (0xE19D = 2, velocidad 0), aterrizado; en la demostracion, el boton vuelve al titulo
	call cada_cuadro		;82a6   ; lo de cada cuadro
	ld a,(0e19bh)		;82a9   ; estrellado?
	and a			;82ac
	jp nz,nave_cae		;82ad
	ld a,(0e1adh)		;82b0   ; aterrizado?
	and a			;82b3
	jp nz,aterriza		;82b4
	call vuelo		;82b7   ; el vuelo
	ld a,(0e19dh)		;82ba   ; 0xE19D = 1?
	cp 001h		;82bd
	call z,cisterna		;82bf   ; el repostaje
	ld a,(0e19eh)		;82c2   ; la velocidad...
	and a			;82c5
	jr nz,partida_bucle_boton		;82c6
	ld a,(0e19bh)		;82c8   ; ...sin estrellarse...
	and a			;82cb
	jr nz,partida_bucle_boton		;82cc
	ld a,(0e19dh)		;82ce   ; ...y 0xE19D = 2: aterrizado
	cp 002h		;82d1
	jr nz,partida_bucle_boton		;82d3
	ld a,001h		;82d5   ; aterrizado
	ld (0e1adh),a		;82d7
partida_bucle_boton:
	ld a,(0e000h)		;82da   ; jugando: otra vuelta
	and a			;82dd
	jp nz,partida_bucle		;82de
	ld a,(0e046h)		;82e1   ; la demostracion: el boton?
	and a			;82e4
	jp z,partida_bucle		;82e5
	xor a			;82e8   ; el boton, gastado
	ld (0e046h),a		;82e9
	call sonido_para		;82ec   ; el sonido parado
	jp titulo		;82ef   ; al titulo
cada_cuadro:		; Lo de cada cuadro (0xE011): 0x72D8, el marcador, el sonido, los sprites, 0x8CB5, 0x8D1A, la pista (0x8511), 0x912A, 0x9094, 0x8A89; el cartel TAKE OFF BONUS (0xE1C2); y el despegue (0xE19F = 1)
	ld a,(0e011h)		;82f2   ; un cuadro?
	cp 001h		;82f5
	ret c			;82f7
	xor a			;82f8   ; a cero
	ld (0e011h),a		;82f9
	call enemigos		;82fc   ; los enemigos
	call marcador_pinta		;82ff   ; el marcador
	call sonido		;8302   ; el sonido
	call sprites_vram		;8305   ; los sprites
	call barras		;8308   ; SPEED y FUEL
	call altura_barra		;830b   ; ALTI
	call pista_avanza		;830e   ; la pista, segun la velocidad
	call pista_aleja_empieza		;8311   ; la pista que se aleja: empieza?
	call pista_aleja		;8314   ; y sigue
	call aterrizaje		;8317   ; el aterrizaje
	ld a,(0e1c2h)		;831a   ; el cartel del despegue?
	and a			;831d
	jr z,despegue		;831e
	inc a			;8320   ; un cuadro mas...
	ld (0e1c2h),a		;8321
	cp 080h		;8324   ; ...128?
	jr c,despegue_cartel		;8326
	xor a			;8328   ; acabado
	ld (0e1c2h),a		;8329
	ld a,(0e000h)		;832c   ; jugando: 1000 puntos
	and a			;832f
	jr z,despegue_cartel_borra		;8330
	ld a,010h		;8332
	call puntos_suma_cien		;8334   ; a los puntos
	jr despegue_cartel_borra		;8337
despegue_cartel:		; Cada 4 cuadros, TAKE OFF:BONUS 1000PTS. (0x98B0) en la fila 8 con el sonido 2 de B y C, o la fila en blanco
	and 004h		;8339
	and a			;833b
	jr nz,despegue_cartel_borra		;833c
	ld hl,098b0h		;833e   ; TAKE OFF:BONUS 1000PTS.
	ld de,01901h		;8341   ; la fila 8, columna 1
	ld bc,00017h		;8344   ; 23 casillas
	call 0005ch		;8347   ; LDIRVM
	ld a,002h		;834a   ; el sonido 2 de B y C
	call sonido_bc_pide		;834c   ; el sonido 2 de B y C
	jr despegue		;834f
despegue_cartel_borra:
	ld hl,08c24h		;8351   ; la fila en blanco
	ld de,01901h		;8354
	ld bc,00017h		;8357   ; 23 casillas
	call 0005ch		;835a   ; LDIRVM
despegue:		; Rodando para despegar (0xE19F = 1): por debajo de 0x10 de velocidad, se acaba; cada 4 cuadros el avion cambia de dibujo y sube o se ladea; a 0x5A de velocidad sigue subiendo hasta 0x38 pasos: en el aire (0xE19F = 2, el cartel)
	ld a,(0e19fh)		;835d   ; despegando?
	cp 001h		;8360
	ret nz			;8362
	ld a,(0e19eh)		;8363   ; la velocidad: menos de 0x10?
	cp 010h		;8366
	jr nc,despegue_cuadro		;8368
	xor a			;836a   ; ya no
	ld (0e19fh),a		;836b   ; ya no despega
	ret			;836e
despegue_cuadro:
	ld a,(0e1beh)		;836f   ; cada 4 cuadros
	inc a			;8372
	ld (0e1beh),a		;8373
	cp 004h		;8376
	ret c			;8378
	xor a			;8379   ; la cuenta a 0
	ld (0e1beh),a		;837a
	ld (ix+003h),008h		;837d   ; color 8 en los dos sprites
	ld (ix+007h),008h		;8381   ; color 8 en el segundo sprite
	ld a,(0e1b1h)		;8385   ; 0xE1B1?
	and a			;8388
	jr nz,despegue_ladea		;8389
	dec (ix+000h)		;838b   ; una fila arriba
	dec (ix+004h)		;838e   ; los dos sprites
	ld (ix+002h),010h		;8391   ; los dibujos 0x10 y 0x14
	ld (ix+006h),014h		;8395   ; el dibujo 0x14
	ld a,(0e1a9h)		;8399   ; cada 4 pasos...
	inc a			;839c
	ld (0e1a9h),a		;839d
	cp 004h		;83a0
	jr c,despegue_paso		;83a2
	xor a			;83a4
	ld (0e1a9h),a		;83a5   ; a 0
	ld a,(0e1a5h)		;83a8   ; ...0xE1A5 uno mas
	inc a			;83ab
	ld (0e1a5h),a		;83ac   ; la altura
despegue_paso:
	ld a,(0e1b2h)		;83af   ; los pasos
	inc a			;83b2   ; un paso mas
	ld (0e1b2h),a		;83b3
	cp 008h		;83b6   ; 8?
	ret c			;83b8
	ld a,(0e19eh)		;83b9   ; la velocidad de despegue (0x5A)?
	cp 05ah		;83bc
	jp nc,despegue_sube		;83be
	ld a,001h		;83c1
	ld (0e1b1h),a		;83c3
	ret			;83c6
despegue_ladea:		; Ladeado (0xE1B3: 1 a la derecha, otro a la izquierda): los dibujos 0x28-0x2C o 0x38-0x3C y un paso de lado; recto, 0x08-0x0C; despues baja una fila y los pasos se deshacen
	ld a,(0e1b3h)		;83c7   ; ladeado?
	and a			;83ca
	jr z,despegue_recto		;83cb
	ld (ix+003h),006h		;83cd   ; color 6
	ld (ix+007h),006h		;83d1
	cp 001h		;83d5   ; a la derecha?
	jr nz,despegue_izq		;83d7
	inc (ix+001h)		;83d9   ; un paso a la derecha
	inc (ix+005h)		;83dc
	ld (ix+002h),028h		;83df
	ld (ix+006h),02ch		;83e3
	jr despegue_baja		;83e7
despegue_izq:
	dec (ix+001h)		;83e9   ; un paso a la izquierda
	dec (ix+005h)		;83ec
	ld (ix+002h),038h		;83ef
	ld (ix+006h),03ch		;83f3
	jr despegue_baja		;83f7
despegue_recto:
	ld (ix+002h),008h		;83f9
	ld (ix+006h),00ch		;83fd
despegue_baja:
	inc (ix+000h)		;8401   ; una fila abajo
	inc (ix+004h)		;8404   ; los dos sprites
	ld a,(0e1a9h)		;8407   ; cada 2 pasos...
	inc a			;840a
	ld (0e1a9h),a		;840b
	cp 002h		;840e
	jr c,despegue_vuelve		;8410
	xor a			;8412
	ld (0e1a9h),a		;8413
	ld a,(0e1a5h)		;8416   ; ...la altura...
	and a			;8419
	jr z,despegue_vuelve		;841a
	dec a			;841c   ; ...una menos
	ld (0e1a5h),a		;841d
despegue_vuelve:
	call altura_barra		;8420   ; la barra de ALTI
	ld a,(0e1b2h)		;8423   ; un paso menos
	dec a			;8426
	ld (0e1b2h),a		;8427
	and a			;842a
	ret nz			;842b
	ld (0e19fh),a		;842c   ; los pasos acabados
	ld (0e1b1h),a		;842f
	ld (ix+002h),000h		;8432   ; los dibujos 0 y 4
	ld (ix+006h),004h		;8436
	ld a,(0e1b3h)		;843a   ; ladeado...
	and a			;843d
	ret z			;843e
	xor a			;843f   ; ...se estrella (0xE19B)
	ld (0e1a5h),a		;8440
	ld a,001h		;8443
	ld (0e19bh),a		;8445
	ret			;8448
despegue_sube:		; A la velocidad de despegue: sigue subiendo; a los 0x1C pasos, ladeado, vuelve; recto, 0xE1AF = 0x1FE y la velocidad 0x5E; a los 0x38, en el aire
	ld a,(0e1a9h)		;8449
	inc a			;844c   ; cada 4 pasos...
	ld (0e1a9h),a		;844d
	cp 004h		;8450
	jr c,L_845F		;8452
	xor a			;8454
	ld (0e1a9h),a		;8455
	ld a,(0e1a5h)		;8458   ; ...la altura...
	inc a			;845b   ; ...una mas
	ld (0e1a5h),a		;845c
L_845F:
	ld a,(0e1b2h)		;845f   ; 0x1C pasos?
	cp 01ch		;8462
	jr nz,despegue_aire		;8464
	ld a,(0e1b3h)		;8466   ; ladeado?
	and a			;8469
	jr z,L_8472		;846a   ; ladeado?
	ld a,001h		;846c
	ld (0e1b1h),a		;846e
	ret			;8471
L_8472:
	ld hl,001feh		;8472   ; 0xE1AF = 0x1FE
	ld (0e1afh),hl		;8475
	ld a,05eh		;8478   ; la velocidad 0x5E
	ld (0e19eh),a		;847a
	ret			;847d
despegue_aire:
	cp 038h		;847e   ; 0x38?
	ret c			;8480
	ld a,002h		;8481   ; en el aire (0xE19F = 2)...
	ld (0e19fh),a		;8483
	dec a			;8486   ; ...el cartel (0xE1C2 = 1)
	ld (0e1c2h),a		;8487
	dec a			;848a
	ld (0e015h),a		;848b
	ret			;848e
shot_pon:		; El recuadro SHOT del radar: las columnas 27 y 28 de las filas 18-22 en blanco, SHOT (0x84F2) en la fila 18, el avion y "=" (0x84F6) en la 20 y las dos cifras de los enemigos que quedan por derribar (0xE1CA); el punto del radar y los tiros fuera
	ld hl,01a5bh		;848f   ; la fila 18, columna 27
	ld de,00020h		;8492
	ld b,005h		;8495   ; cinco filas
	ld a,010h		;8497   ; en blanco
L_8499:
	call 0004dh		;8499   ; WRTVRM
	add hl,de			;849c
	djnz L_8499		;849d
	ld hl,01a5ch		;849f   ; la columna 28
	ld b,005h		;84a2
L_84A4:
	call 0004dh		;84a4
	add hl,de			;84a7
	djnz L_84A4		;84a8
	ld de,01a5ah		;84aa   ; SHOT en la fila 18
	ld hl,084f2h		;84ad
	ld bc,00004h		;84b0
	call 0005ch		;84b3
	ld de,01a9ah		;84b6   ; el avion y "=" en la fila 20
	ld hl,084f6h		;84b9
	ld bc,00002h		;84bc
	call 0005ch		;84bf
	call shot_cifras		;84c2   ; los que quedan
	ld (ix+06fh),000h		;84c5
	ld a,(0e19fh)		;84c9
	cp 003h		;84cc
	jr z,L_84E1		;84ce
	ld (ix+070h),000h		;84d0
	ld (ix+071h),000h		;84d4
	ld (ix+072h),000h		;84d8
	ld (ix+073h),000h		;84dc
	ret			;84e0
L_84E1:
	ld (ix+06ch),000h		;84e1
	ld (ix+06dh),000h		;84e5
	ld (ix+06eh),000h		;84e9
	ld (ix+06fh),000h		;84ed
	ret			;84f1

; ----------------------------------------------------------------------
; DATOS shot_texto: "SHOT" y el avion y "=" del recuadro
;   0x84f2..0x84f8  (6 bytes)
DATA_shot_texto:
	defb 023h,018h,01fh,024h,0a1h,00dh	; 84f2

; ======================================================================
; CODIGO 0x84f8..0x8548  (80 bytes)
; ======================================================================


shot_cifras:		; Los enemigos que quedan (0xE1CA, BCD; empieza en 20) en la fila 20, columnas 28 y 29
	ld a,(0e1cah)		;84f8   ; la cifra alta...
	and 0f0h		;84fb
	rrca			;84fd
	rrca			;84fe
	rrca			;84ff
	rrca			;8500
	ld hl,01a9ch		;8501   ; ...en la fila 20, columna 28
	call 0004dh		;8504   ; WRTVRM
	ld a,(0e1cah)		;8507   ; la baja
	and 00fh		;850a
	inc hl			;850c   ; en la columna 29
	call 0004dh		;850d
	ret			;8510
pista_avanza:		; La pista avanza segun la velocidad (0xE19E): cada 6 - velocidad / 16 cuadros (0xE014) una vez (0x9196, 0x932A); a 0x60 o mas, dos veces cada cuadro
	ld a,(0e19eh)		;8511   ; parado: nada
	and a			;8514
	ret z			;8515
	and 0f0h		;8516   ; / 16
	rrca			;8518
	rrca			;8519
	rrca			;851a
	rrca			;851b
	ld b,a			;851c
	ld a,006h		;851d   ; 6 - eso
	sub b			;851f
	and a			;8520
	jr z,pista_rapida		;8521
	ld b,a			;8523
	ld a,(0e014h)		;8524   ; los cuadros que van
	cp b			;8527
	ret c			;8528
	xor a			;8529
	ld (0e014h),a		;852a
	call suelo_avanza		;852d   ; un paso
	call pista_despegue		;8530
	ret			;8533
pista_rapida:
	ld a,(0e014h)		;8534
	cp 001h		;8537
	ret c			;8539
	xor a			;853a
	ld (0e014h),a		;853b
	call suelo_avanza		;853e   ; dos pasos
	call suelo_avanza		;8541
	call pista_despegue		;8544
	ret			;8547

; ----------------------------------------------------------------------
; DATOS fase_tabla: 32 bytes; la fase (0xE00A, 0-15) elige uno, que va a
;   0xE1AB al empezar (0x8267)
;   0x8548..0x8568  (32 bytes)
DATA_fase_tabla:
	defb 0ach,0f0h,035h,083h,094h,015h,025h,0c6h,0ach,0f0h,035h,083h,094h,015h,025h,0c6h	; 8548  ..5...%...5...%.
	defb 0c0h,050h,070h,0d0h,090h,030h,040h,050h,020h,060h,080h,0c0h,0b0h,030h,0a0h,050h	; 8558  .Pp..0@P `...0.P

; ======================================================================
; CODIGO 0x8568..0x8b01  (1433 bytes)
; ======================================================================


vuelo:		; El avion en cada cuadro: en el aire o aterrizando (0xE19F 2 o mas), 0x86E5; en la pista, el ruido del motor (B y C: 7 despacio, 6 desde 0x4C de velocidad, 5 despegando), el color que parpadea, la velocidad (0x85AB) y el paso de lado (0x861F)
	ld a,(0e19fh)		;8568   ; en el aire?
	cp 002h		;856b
	jp nc,vuelo_aire		;856d
	and a			;8570   ; despegando?
	jr nz,vuelo_despega		;8571
	ld a,(0e19eh)		;8573   ; la velocidad: 0x4C?
	cp 04ch		;8576
	jr c,vuelo_despacio		;8578
	ld a,006h		;857a   ; el sonido 6
	jr vuelo_pista		;857c
vuelo_despega:
	ld a,005h		;857e   ; el sonido 5
	call sonido_bc_pide		;8580
	ret			;8583
vuelo_despacio:
	ld a,007h		;8584   ; el sonido 7
vuelo_pista:
	call sonido_bc_pide		;8586
	ld a,(0e01fh)		;8589   ; cada 2 de 4 cuadros...
	and 003h		;858c
	cp 002h		;858e
	jr c,vuelo_color6		;8590
	ld (ix+003h),005h		;8592   ; ...color 5...
	ld (ix+007h),005h		;8596
	jr vuelo_mueve		;859a
vuelo_color6:
	ld (ix+003h),006h		;859c   ; ...o 6
	ld (ix+007h),006h		;85a0
vuelo_mueve:
	call velocidad		;85a4   ; la velocidad
	call pista_lado		;85a7   ; el paso de lado
	ret			;85aa
velocidad:		; Cada 8 cuadros, con la palanca: arriba (1, 2 u 8), una mas hasta 0x60; abajo (4, 5 o 6), frena dos; si no, una menos cada 4 veces
	ld a,(0e012h)		;85ab   ; 8 cuadros?
	cp 008h		;85ae
	ret c			;85b0
	xor a			;85b1
	ld (0e012h),a		;85b2
	ld a,(0e198h)		;85b5   ; la palanca: arriba...
	cp 001h		;85b8
	jr z,velocidad_mas		;85ba
	cp 002h		;85bc   ; ...arriba a la derecha...
	jr z,velocidad_mas		;85be
	cp 008h		;85c0   ; ...o arriba a la izquierda?
	jr z,velocidad_mas		;85c2
	jr velocidad_abajo		;85c4
velocidad_mas:
	xor a			;85c6   ; los botones gastados
	ld (0e040h),a		;85c7
	ld (0e044h),a		;85ca
	ld a,(0e19eh)		;85cd   ; 0x60 como mucho
	cp 060h		;85d0
	ret nc			;85d2
	inc a			;85d3   ; una mas
	ld (0e19eh),a		;85d4
	ret			;85d7
velocidad_abajo:
	cp 005h		;85d8   ; abajo...
	jr z,velocidad_frena		;85da
	cp 004h		;85dc   ; ...abajo a la derecha...
	jr z,velocidad_frena		;85de
	cp 006h		;85e0   ; ...o abajo a la izquierda?
	jr z,velocidad_frena		;85e2
	jr velocidad_suelta		;85e4
velocidad_frena:
	ld a,(0e19fh)		;85e6   ; despegando: nada
	and a			;85e9
	ret nz			;85ea
	ld a,(0e19eh)		;85eb
	and a			;85ee   ; parado
	ret z			;85ef
	dec a			;85f0   ; dos menos
	dec a			;85f1
	cp 0f0h		;85f2   ; por debajo de 0: 0
	jr c,velocidad_pon		;85f4
	xor a			;85f6
velocidad_pon:
	ld (0e19eh),a		;85f7
	ret			;85fa
velocidad_suelta:
	xor a			;85fb   ; los botones gastados
	ld (0e040h),a		;85fc
	ld (0e044h),a		;85ff
	ld a,(0e19fh)		;8602   ; despegando: nada
	and a			;8605
	ret nz			;8606
	ld a,(0e1a3h)		;8607   ; cada 4 veces...
	inc a			;860a
	ld (0e1a3h),a		;860b
	cp 004h		;860e
	ret c			;8610
	xor a			;8611
	ld (0e1a3h),a		;8612
	ld a,(0e19eh)		;8615
	and a			;8618
	ret z			;8619
	dec a			;861a   ; ...una menos
	ld (0e19eh),a		;861b
	ret			;861e
pista_lado:		; Cada 7 - velocidad / 16 cuadros (0xE013): en la pista, fuera de ella (X por debajo de 0x1E o desde 0xA2) se estrella; en los bordes (0x1E-0x2A y 0x94-0xA1), 0xE1A1 = 2 o 1 y 0x8C7A; despues el viento (0x88CF) y la palanca: a la derecha (2, 3 o 4) o a la izquierda (6, 7 u 8), un paso; con la palanca abajo (5) y el boton, despega (0xE19F = 1)
	ld a,(0e19eh)		;861f
	and 0f0h		;8622
	rrca			;8624
	rrca			;8625
	rrca			;8626
	rrca			;8627
	ld b,a			;8628
	ld a,007h		;8629
	sub b			;862b
	ld b,a			;862c
	ld a,(0e013h)		;862d   ; los cuadros que van
	cp b			;8630
	ret c			;8631
	xor a			;8632
	ld (0e013h),a		;8633
	ld a,(0e19fh)		;8636   ; en el aire?
	cp 002h		;8639
	jr nc,pista_palanca		;863b
	ld a,(ix+001h)		;863d   ; la X del avion
	cp 01eh		;8640   ; fuera por la izquierda?
	jp c,pista_fuera		;8642
	cp 0a2h		;8645   ; fuera por la derecha?
	jp nc,pista_fuera		;8647
	cp 02bh		;864a   ; el borde izquierdo?
	jr c,pista_borde_der		;864c
	cp 094h		;864e   ; en medio?
	jr c,pista_borde_izq		;8650
pista_borde_der:
	ld a,002h		;8652   ; en el borde: 2
	ld (0e1a1h),a		;8654
	call pista_bache		;8657
	jr pista_palanca		;865a
pista_fuera:
	ld a,001h		;865c   ; se estrella
	ld (0e19bh),a		;865e
	ret			;8661
pista_borde_izq:
	ld a,001h		;8662   ; en el borde: 1
	ld (0e1a1h),a		;8664
	call pista_bache		;8667
pista_palanca:
	call viento		;866a   ; el viento
	ld a,(0e198h)		;866d   ; la palanca: 2...
	cp 002h		;8670
	jr nz,pista_palanca3		;8672
	jr avion_der		;8674
pista_palanca3:
	cp 003h		;8676
	jr nz,pista_palanca4		;8678
	jr avion_der		;867a
pista_palanca4:
	cp 004h		;867c
	jr nz,pista_palanca5		;867e
	jr avion_der		;8680
pista_palanca5:
	cp 005h		;8682   ; 5: abajo
	jr nz,pista_palanca6		;8684
	ld a,(0e19fh)		;8686   ; despegando: nada
	and a			;8689
	ret nz			;868a
	ld a,(0e1c9h)		;868b   ; 0xE1C9 = 3: nada
	cp 003h		;868e
	ret z			;8690
	ld a,(0e040h)		;8691   ; el boton?
	and a			;8694
	jr z,despega_barra		;8695
	xor a			;8697
	ld (0e040h),a		;8698
despega_empieza:		; Despega (0xE19F = 1); ladeado segun su X: en el centro de la pista (0x5B-0x65), recto (0xE1B3 = 0); a la izquierda 2, a la derecha 1
	inc a			;869b
	ld (0e19fh),a		;869c   ; despegando
	ld a,(ix+001h)		;869f   ; su X
	cp 05bh		;86a2
	jr c,despega_izq		;86a4
	cp 066h		;86a6
	jr c,despega_recto		;86a8
	ld a,001h		;86aa
	ld (0e1b3h),a		;86ac
	ret			;86af
despega_izq:
	ld a,002h		;86b0
	ld (0e1b3h),a		;86b2
	ret			;86b5
despega_recto:
	xor a			;86b6
	ld (0e1b3h),a		;86b7
	ret			;86ba
despega_barra:
	ld a,(0e044h)		;86bb   ; o la barra?
	and a			;86be
	ret z			;86bf
	xor a			;86c0
	ld (0e044h),a		;86c1
	jr despega_empieza		;86c4
pista_palanca6:
	cp 006h		;86c6
	jr nz,pista_palanca7		;86c8
	jr avion_izq		;86ca
pista_palanca7:
	cp 007h		;86cc
	jr nz,pista_palanca8		;86ce
	jr avion_izq		;86d0
pista_palanca8:
	cp 008h		;86d2
	ret nz			;86d4
	jr avion_izq		;86d5
avion_der:		; Un paso a la derecha (los dos sprites)
	inc (ix+001h)		;86d7
	inc (ix+005h)		;86da
	ret			;86dd
avion_izq:		; Un paso a la izquierda
	dec (ix+001h)		;86de
	dec (ix+005h)		;86e1
	ret			;86e4
vuelo_aire:		; En el aire (el sonido 5): aterrizando (0xE19F = 3) y a altura 0, en la pista: fuera del centro (0x5B-0x65) se estrella; si no, cada cuadro: los tiros (0x8934), el color, y la palanca (sin combustible, una que baja) con el dibujo del avion y sus movimientos
	push af			;86e5
	ld a,005h		;86e6   ; el sonido 5
	call sonido_bc_pide		;86e8
	pop af			;86eb
	cp 003h		;86ec   ; aterrizando?
	jr nz,vuelo_cuadro		;86ee
	call viento		;86f0   ; el viento
	ld a,(0e1a5h)		;86f3   ; la altura
	and a			;86f6   ; aun en el aire
	jr nz,vuelo_cuadro		;86f7
	ld (0e19fh),a		;86f9   ; en la pista
	ld (ix+070h),000h		;86fc   ; los tiros, fuera
	ld (ix+073h),000h		;8700
	ld (ix+074h),000h		;8704
	ld (ix+077h),000h		;8708
	ld (ix+078h),000h		;870c
	ld (ix+07bh),000h		;8710
	ld (ix+07ch),000h		;8714
	ld (ix+07fh),000h		;8718
	ld (ix+002h),000h		;871c   ; los dibujos 0 y 4
	ld (ix+006h),004h		;8720
	ld a,(ix+001h)		;8724   ; en el centro?
	cp 05bh		;8727
	jr c,aterriza_mal		;8729
	cp 066h		;872b
	jr nc,aterriza_mal		;872d
	ret			;872f
aterriza_mal:
	ld a,001h		;8730   ; fuera del centro: se estrella
	ld (0e19bh),a		;8732
	ret			;8735
vuelo_cuadro:
	ld a,(0e1c7h)		;8736   ; 0xE1C7 = 5: nada
	cp 005h		;8739
	ret z			;873b
	ld a,(0e012h)		;873c   ; un cuadro?
	cp 001h		;873f
	ret c			;8741
	xor a			;8742
	ld (0e012h),a		;8743
	call tiros		;8746   ; los tiros
	call avion_color		;8749   ; el color
	ld a,(0e1a0h)		;874c   ; queda combustible (0xE1A0)?
	and a			;874f
	jr nz,vuelo_palanca_real		;8750
	ld a,(0e198h)		;8752   ; sin combustible, la palanca solo baja: 1, 2 u 8
	cp 002h		;8755
	jr nc,vuelo_palanca2		;8757
	ld a,001h		;8759
	jr vuelo_palanca		;875b
vuelo_palanca2:
	cp 005h		;875d
	jr nc,vuelo_palanca5		;875f
	ld a,002h		;8761
	jr vuelo_palanca		;8763
vuelo_palanca5:
	cp 006h		;8765
	jr nc,vuelo_palanca8		;8767
	ld a,001h		;8769
	jr vuelo_palanca		;876b
vuelo_palanca8:
	ld a,008h		;876d
	jr vuelo_palanca		;876f
vuelo_palanca_real:
	ld a,(0e198h)		;8771   ; la palanca
vuelo_palanca:		; Segun la palanca, el dibujo (sprites 0 y 1) y lo que hace: arriba baja, abajo sube, a los lados se mueve
	cp 001h		;8774
	jr z,vuelo_arriba		;8776   ; 1
	cp 002h		;8778
	jr z,vuelo_arriba_der		;877a   ; 2
	cp 003h		;877c
	jr z,vuelo_der		;877e   ; 3
	cp 004h		;8780
	jr z,vuelo_abajo_der		;8782   ; 4
	cp 005h		;8784
	jr z,vuelo_abajo		;8786   ; 5
	cp 006h		;8788
	jr z,vuelo_abajo_izq		;878a   ; 6
	cp 007h		;878c
	jr z,vuelo_izq		;878e   ; 7
	cp 008h		;8790
	jr z,vuelo_arriba_izq		;8792   ; 8
	ld (ix+002h),008h		;8794   ; quieta: los dibujos 8 y 0xC
	ld (ix+006h),00ch		;8798
	ret			;879c
vuelo_abajo:
	ld (ix+002h),010h		;879d   ; 5, abajo: los dibujos 0x10-0x14 y sube
	ld (ix+006h),014h		;87a1
	call sube		;87a5
	ret			;87a8
vuelo_abajo_der:
	ld (ix+002h),028h		;87a9   ; 4: 0x28-0x2C, sube y a la derecha
	ld (ix+006h),02ch		;87ad
	call sube		;87b1
	call avion_der2		;87b4
	ret			;87b7
vuelo_der:
	ld (ix+002h),020h		;87b8   ; 3: 0x20-0x24 y a la derecha
	ld (ix+006h),024h		;87bc
	call avion_der2		;87c0
	ret			;87c3
vuelo_arriba_der:
	ld (ix+002h),028h		;87c4   ; 2: 0x28-0x2C, baja y a la derecha
	ld (ix+006h),02ch		;87c8
	call baja		;87cc
	call avion_der2		;87cf
	ret			;87d2
vuelo_arriba:
	ld (ix+002h),018h		;87d3   ; 1: 0x18-0x1C y baja
	ld (ix+006h),01ch		;87d7
	call baja		;87db
	ret			;87de
vuelo_arriba_izq:
	ld (ix+002h),038h		;87df   ; 8: 0x38-0x3C, baja y a la izquierda
	ld (ix+006h),03ch		;87e3
	call baja		;87e7
	call avion_izq2		;87ea
	ret			;87ed
vuelo_izq:
	ld (ix+002h),030h		;87ee   ; 7: 0x30-0x34 y a la izquierda
	ld (ix+006h),034h		;87f2
	call avion_izq2		;87f6
	ret			;87f9
vuelo_abajo_izq:
	ld (ix+002h),038h		;87fa   ; 6: 0x38-0x3C, sube y a la izquierda
	ld (ix+006h),03ch		;87fe
	call avion_izq2		;8802
	call sube		;8805
	ret			;8808
sube:		; Sube: la altura (0xE1A5) una mas cada 4 veces, hasta 0x20 (0x2F con 0xE19D = 1); el avion una fila arriba hasta la 0x68 (0x20)
	ld a,(0e19dh)		;8809   ; 0xE19D = 1?
	cp 001h		;880c
	jr z,sube_alto		;880e
	ld a,(0e1a5h)		;8810   ; la altura: 0x20?
	cp 020h		;8813
	jr nc,sube_fila		;8815
	jr sube_cuenta		;8817
sube_alto:
	ld a,(0e1a5h)		;8819   ; la altura: 0x2F?
	cp 02fh		;881c
	jr nc,sube_fila		;881e
sube_cuenta:
	ld a,(0e1a9h)		;8820   ; cada 4 veces...
	inc a			;8823
	ld (0e1a9h),a		;8824
	cp 004h		;8827
	jr c,sube_fila		;8829
	xor a			;882b
	ld (0e1a9h),a		;882c
	ld a,(0e1a5h)		;882f   ; ...una mas
	inc a			;8832
	ld (0e1a5h),a		;8833
sube_fila:
	ld a,(0e19dh)		;8836
	cp 001h		;8839
	jr z,sube_fila_alto		;883b
	ld a,(ix+000h)		;883d   ; la Y: 0x68 como poco
	cp 068h		;8840
	ret c			;8842
avion_y_pon:		; La Y de los dos sprites del avion
	dec a			;8843
	ld (ix+000h),a		;8844
	ld (ix+004h),a		;8847
	ret			;884a
sube_fila_alto:
	ld a,(ix+000h)		;884b   ; 0x20 como poco
	cp 020h		;884e
	ret c			;8850
	jr avion_y_pon		;8851
baja:		; Baja: la altura una menos cada 4 veces; a 0, se estrella; el avion una fila abajo hasta la 0xB0
	ld a,(0e1a5h)		;8853   ; la altura: 0?
	cp 000h		;8856
	jr z,baja_choca		;8858
	ld a,(0e1a9h)		;885a   ; cada 4 veces...
	inc a			;885d
	ld (0e1a9h),a		;885e
	cp 004h		;8861
	jr c,baja_fila		;8863
	xor a			;8865
	ld (0e1a9h),a		;8866
	ld a,(0e1a5h)		;8869   ; ...una menos
	dec a			;886c
	ld (0e1a5h),a		;886d
baja_fila:
	ld a,(ix+000h)		;8870   ; la Y: hasta 0xB0
	cp 0b0h		;8873
	ret nc			;8875
	inc a			;8876
	ld (ix+000h),a		;8877
	ld (ix+004h),a		;887a
	ret			;887d
baja_choca:
	ld a,001h		;887e   ; en el suelo: se estrella
	ld (0e19bh),a		;8880
	ret			;8883
avion_der2:		; Dos pasos a la derecha, hasta la X 0xAC, con el sonido 3 de B y C
	ld a,(ix+001h)		;8884
	cp 0ach		;8887   ; hasta 0xAC
	ret nc			;8889
	inc (ix+001h)		;888a   ; dos pasos los dos sprites
	inc (ix+005h)		;888d
	inc (ix+001h)		;8890
	inc (ix+005h)		;8893
	ld a,003h		;8896   ; el sonido 3 de B y C
	call sonido_bc_pide		;8898
	ret			;889b
avion_izq2:		; Dos pasos a la izquierda, hasta la X 0x16, con el sonido 4 de B y C
	ld a,(ix+001h)		;889c
	cp 016h		;889f   ; hasta 0x16
	ret c			;88a1
	dec (ix+001h)		;88a2   ; dos pasos
	dec (ix+005h)		;88a5
	dec (ix+001h)		;88a8
	dec (ix+005h)		;88ab
	ld a,004h		;88ae   ; el sonido 4 de B y C
	call sonido_bc_pide		;88b0
	ret			;88b3
avion_color:		; Cada 2 de 4 cuadros el avion de color 15, si no 6
	ld a,(0e01fh)		;88b4
	and 003h		;88b7   ; cada 4 cuadros...
	cp 002h		;88b9
	jr nc,avion_color6		;88bb
	ld (ix+003h),00fh		;88bd   ; ...dos de color 15
	ld (ix+007h),00fh		;88c1
	ret			;88c5
avion_color6:
	ld (ix+003h),006h		;88c6   ; los otros dos, 6
	ld (ix+007h),006h		;88ca
	ret			;88ce
viento:		; El viento: desde 0x10 de velocidad, rachas al azar (R) que mueven el avion de lado un paso cada 2 cuadros (0xE1A7: el bit 3 el lado, lo demas cuantos)
	ld a,(0e19eh)		;88cf   ; 0x10 de velocidad?
	cp 010h		;88d2
	jp c,viento_fin		;88d4
	ld a,(0e1a6h)		;88d7   ; una racha en marcha?
	and a			;88da
	jr nz,viento_cuadro		;88db
	inc a			;88dd   ; una nueva...
	ld (0e1a6h),a		;88de
	ld a,r		;88e1   ; ...al azar
	and 00fh		;88e3
	ld (0e1a7h),a		;88e5
viento_cuadro:
	ld a,(0e1a8h)		;88e8   ; cada 2 cuadros
	inc a			;88eb
	ld (0e1a8h),a		;88ec
	cp 002h		;88ef
	jr nz,viento_fin		;88f1
	xor a			;88f3
	ld (0e1a8h),a		;88f4
	ld a,(0e1a7h)		;88f7   ; el bit 3: a la derecha
	bit 3,a		;88fa
	jr nz,viento_der		;88fc
	dec a			;88fe   ; una menos
	ld (0e1a7h),a		;88ff
	cp 000h		;8902
	jr z,viento_acaba		;8904
	ld a,(ix+001h)		;8906   ; a la izquierda, hasta 0x14
	cp 014h		;8909
	jr c,viento_fin		;890b
	dec (ix+001h)		;890d
	dec (ix+005h)		;8910
	jr viento_fin		;8913
viento_der:
	dec a			;8915
	ld (0e1a7h),a		;8916
	cp 008h		;8919
	jr z,viento_acaba		;891b
	ld a,(ix+001h)		;891d   ; a la derecha, hasta 0xAC
	cp 0ach		;8920
	jr nc,viento_fin		;8922
	inc (ix+001h)		;8924
	inc (ix+005h)		;8927
	jr viento_fin		;892a
viento_acaba:
	xor a			;892c
	ld (0e1a6h),a		;892d
	ld (0e1a7h),a		;8930
viento_fin:
	ret			;8933
tiros:		; Los cuatro tiros del avion (sprites 28-31, 0xE170): con el boton o la barra sale uno libre (0xE1C3-0xE1C6) delante del avion, dibujo 0xF8, color 15, con el sonido 3 del canal A; cada cuadro suben 4 puntos y desaparecen arriba
	ld a,(0e044h)		;8934   ; la barra?
	and a			;8937
	jr nz,tiros_barra		;8938
	ld a,(0e040h)		;893a   ; el boton?
	and a			;893d
	jp z,tiros_mueve		;893e
	xor a			;8941
	ld (0e040h),a		;8942
	jr tiros_uno		;8945
tiros_barra:
	xor a			;8947
	ld (0e044h),a		;8948
tiros_uno:
	ld a,(0e1c3h)		;894b   ; el primero libre?
	and a			;894e
	jr nz,tiros_dos		;894f
	inc a			;8951
	ld (0e1c3h),a		;8952
	ld a,(ix+001h)		;8955   ; su X: la del avion - 8
	sub 008h		;8958
	ld (ix+071h),a		;895a
	ld a,(ix+000h)		;895d   ; su Y: la del avion - 8
	sub 008h		;8960
	ld (ix+070h),a		;8962
	ld (ix+072h),0f8h		;8965   ; dibujo 0xF8, color 15
	ld (ix+073h),00fh		;8969
	jr tiros_sonido		;896d
tiros_dos:
	ld a,(0e1c4h)		;896f   ; el segundo?
	and a			;8972   ; ocupado: el tercero
	jr nz,tiros_tres		;8973
	inc a			;8975   ; ocupado
	ld (0e1c4h),a		;8976
	ld a,(ix+001h)		;8979   ; su X
	sub 008h		;897c
	ld (ix+075h),a		;897e
	ld a,(ix+000h)		;8981   ; su Y
	sub 008h		;8984
	ld (ix+074h),a		;8986
	ld (ix+076h),0f8h		;8989   ; dibujo 0xF8, color 15
	ld (ix+077h),00fh		;898d
	jr tiros_sonido		;8991
tiros_tres:
	ld a,(0e1c5h)		;8993   ; el tercero?
	and a			;8996   ; ocupado: el cuarto
	jr nz,tiros_cuatro		;8997
	inc a			;8999   ; ocupado
	ld (0e1c5h),a		;899a
	ld a,(ix+000h)		;899d   ; su Y
	sub 008h		;89a0
	ld (ix+078h),a		;89a2
	ld a,(ix+001h)		;89a5   ; su X
	sub 008h		;89a8
	ld (ix+079h),a		;89aa
	ld (ix+07ah),0f8h		;89ad   ; dibujo 0xF8, color 15
	ld (ix+07bh),00fh		;89b1
	jr tiros_sonido		;89b5
tiros_cuatro:
	ld a,(0e1c6h)		;89b7   ; el cuarto?
	and a			;89ba   ; ocupado: ninguno
	jr nz,tiros_mueve		;89bb
	inc a			;89bd   ; ocupado
	ld (0e1c6h),a		;89be
	ld a,(ix+000h)		;89c1   ; su Y
	sub 008h		;89c4
	ld (ix+07ch),a		;89c6
	ld a,(ix+001h)		;89c9   ; su X
	sub 008h		;89cc
	ld (ix+07dh),a		;89ce
	ld (ix+07eh),0f8h		;89d1   ; dibujo 0xF8, color 15
	ld (ix+07fh),00fh		;89d5
tiros_sonido:
	ld a,003h		;89d9   ; el sonido 3 del canal A
	call sonido_a_pide		;89db
tiros_mueve:
	ld a,(0e1c3h)		;89de   ; el primero sale?
	and a			;89e1
	jr z,tiros_mueve2		;89e2
	dec (ix+070h)		;89e4   ; 4 puntos arriba
	dec (ix+070h)		;89e7
	dec (ix+070h)		;89ea
	dec (ix+070h)		;89ed
	ld a,(ix+070h)		;89f0   ; arriba del todo?
	cp 00eh		;89f3
	jr nc,tiros_mueve2		;89f5
	xor a			;89f7   ; fuera
	ld (ix+070h),a		;89f8
	ld (ix+071h),a		;89fb
	ld (ix+072h),a		;89fe
	ld (ix+073h),a		;8a01
	ld (0e1c3h),a		;8a04   ; libre
	jr tiros_mueve2		;8a07
tiros_mueve2:
	ld a,(0e1c4h)		;8a09   ; el segundo sale?
	and a			;8a0c
	jr z,tiros_mueve3		;8a0d
	dec (ix+074h)		;8a0f   ; 4 puntos arriba
	dec (ix+074h)		;8a12
	dec (ix+074h)		;8a15
	dec (ix+074h)		;8a18
	ld a,(ix+074h)		;8a1b
	cp 00eh		;8a1e   ; arriba del todo?
	jr nc,tiros_mueve3		;8a20
	xor a			;8a22   ; fuera
	ld (ix+074h),a		;8a23
	ld (ix+076h),a		;8a26
	ld (ix+075h),a		;8a29
	ld (ix+077h),a		;8a2c
	ld (0e1c4h),a		;8a2f
	jr tiros_mueve3		;8a32
tiros_mueve3:
	ld a,(0e1c5h)		;8a34   ; el tercero?
	and a			;8a37
	jr z,tiros_mueve4		;8a38
	dec (ix+078h)		;8a3a   ; 4 puntos arriba
	dec (ix+078h)		;8a3d
	dec (ix+078h)		;8a40
	dec (ix+078h)		;8a43
	ld a,(ix+078h)		;8a46
	cp 00eh		;8a49
	jr nc,tiros_mueve4		;8a4b
	xor a			;8a4d   ; fuera
	ld (ix+078h),a		;8a4e
	ld (ix+079h),a		;8a51
	ld (ix+07ah),a		;8a54
	ld (ix+07bh),a		;8a57
	ld (0e1c5h),a		;8a5a
	jr tiros_mueve4		;8a5d
tiros_mueve4:
	ld a,(0e1c6h)		;8a5f   ; el cuarto?
	and a			;8a62
	ret z			;8a63
	dec (ix+07ch)		;8a64   ; 4 puntos arriba
	dec (ix+07ch)		;8a67
	dec (ix+07ch)		;8a6a
	dec (ix+07ch)		;8a6d
	ld a,(ix+07ch)		;8a70
	cp 00eh		;8a73
	jr nc,tiros_fin		;8a75
	xor a			;8a77   ; fuera
	ld (ix+07ch),a		;8a78
	ld (ix+07dh),a		;8a7b
	ld (ix+07eh),a		;8a7e
	ld (ix+07fh),a		;8a81
	ld (0e1c6h),a		;8a84
	ret			;8a87
tiros_fin:
	ret			;8a88
aterrizaje:		; El aterrizaje (0xE1C9): 1, LANDING (0x8B01) en la fila 8 y 0x8ED5; en la ultima parte (0xE19D = 2), bajo (Y 0x88 o mas) y a menos de 0x17 de altura, empieza: 0xE1C9 = 2, 0xE19F = 3 y 0xE1CB = 0x60; 2, cuando 0xE1B4 llega a 0, el 3 (0xE1AE = 14, el sprite 27); despues el texto se borra a los 0x60 cuadros
	ld a,(0e1c9h)		;8a89   ; nada?
	and a			;8a8c
	ret z			;8a8d
	cp 001h		;8a8e   ; 1?
	jr nz,aterrizaje2		;8a90
	ld hl,08b01h		;8a92   ; LANDING...
	ld de,01909h		;8a95   ; ...en la fila 8, columna 9
	ld bc,00007h		;8a98
	call 0005ch		;8a9b
	call radar_pista		;8a9e
	ld a,(0e19dh)		;8aa1   ; la ultima parte?
	cp 002h		;8aa4
	ret nz			;8aa6
	ld a,(ix+000h)		;8aa7   ; la Y del avion: 0x88?
	cp 088h		;8aaa
	ret c			;8aac
	ld a,(0e1a5h)		;8aad   ; la altura: menos de 0x17?
	cp 017h		;8ab0
	ret nc			;8ab2
	ld a,002h		;8ab3   ; el paso 2
	ld (0e1c9h),a		;8ab5
	ld a,003h		;8ab8   ; aterrizando (0xE19F = 3)
	ld (0e19fh),a		;8aba
	ld a,060h		;8abd   ; 0x60 cuadros
	ld (0e1cbh),a		;8abf
	ret			;8ac2
aterrizaje2:
	cp 002h		;8ac3   ; 2?
	jr nz,aterrizaje_texto		;8ac5
	ld a,(0e1b4h)		;8ac7   ; 0xE1B4 a 0?
	and a			;8aca
	ret nz			;8acb
	ld a,003h		;8acc   ; el paso 3
	ld (0e1c9h),a		;8ace
	ld a,00eh		;8ad1   ; 0xE1AE = 14
	ld (0e1aeh),a		;8ad3
	call radar_pista		;8ad6
	ld (ix+06ch),0a5h		;8ad9   ; el sprite 27: Y 0xA5, X 0xD8, dibujo 0x48, color 0
	ld (ix+06dh),0d8h		;8add
	ld (ix+06eh),048h		;8ae1
	ld (ix+06fh),000h		;8ae5
	ret			;8ae9
aterrizaje_texto:
	ld a,(0e1cbh)		;8aea   ; la cuenta del texto
	and a			;8aed
	ret z			;8aee
	dec a			;8aef   ; una menos
	ld (0e1cbh),a		;8af0
	ret nz			;8af3
	ld de,01909h		;8af4   ; a 0: la fila en blanco
	ld hl,08c24h		;8af7
	ld bc,00009h		;8afa
	call 0005ch		;8afd
	ret			;8b00

; ----------------------------------------------------------------------
; DATOS texto_landing: "LANDING"
;   0x8b01..0x8b08  (7 bytes)
DATA_texto_landing:
	defb 01ch,011h,01eh,014h,019h,01eh,017h	; 8b01

; ======================================================================
; CODIGO 0x8b08..0x8c20  (280 bytes)
; ======================================================================


cisterna:		; Con 0xE19D = 1: cada 32 cuadros (0xE019) un avion de casillas (0x8C2F, cinco filas de 15) baja una fila mas desde arriba hasta 8 (0xE1A4); despues (0x8B5B) cuatro pasos de aviso en la fila 5 (0x8C20) y el encuentro; al acabar, sube y se va, y la ultima parte (0xE19D = 2). Es, por el codigo, el repostaje en vuelo: con el avion debajo, el combustible (0xE1A0) se llena
	ld a,(0e1a4h)		;8b08   ; bajado del todo (8)...
	cp 008h		;8b0b
	jr nz,cisterna_cuadro		;8b0d
	ld a,(0e1c7h)		;8b0f   ; ...y los avisos dados?
	cp 004h		;8b12
	jr c,cisterna_cuadro		;8b14
	ld a,(0e019h)		;8b16   ; cada cuadro
	cp 001h		;8b19
	ret c			;8b1b
	xor a			;8b1c
	ld (0e019h),a		;8b1d
	jp cisterna_aviso		;8b20
cisterna_cuadro:
	ld a,(0e019h)		;8b23   ; cada 32 cuadros
	cp 020h		;8b26
	ret c			;8b28
	xor a			;8b29
	ld (0e019h),a		;8b2a
	ld a,(0e1a4h)		;8b2d   ; bajando?
	cp 008h		;8b30
	jp nc,cisterna_sube		;8b32
	call cisterna_pinta		;8b35   ; dibujado con 0xE1A4 filas
	ld a,(0e1a4h)		;8b38   ; una mas
	inc a			;8b3b
	ld (0e1a4h),a		;8b3c
	ret			;8b3f
cisterna_sube:
	cp 008h		;8b40   ; 8: el encuentro
	jr z,cisterna_aviso		;8b42
	ld b,a			;8b44
	ld a,00fh		;8b45   ; 15 - eso: subiendo
	sub b			;8b47
	call cisterna_pinta		;8b48
	ld a,(0e1a4h)		;8b4b   ; una mas
	inc a			;8b4e
	ld (0e1a4h),a		;8b4f
	cp 00fh		;8b52   ; 15: se ha ido
	ret c			;8b54
	ld a,002h		;8b55   ; la ultima parte
	ld (0e19dh),a		;8b57
	ret			;8b5a
cisterna_aviso:		; Cuatro avisos (0xE1C7): las casillas de 0x8C20 una a una en la fila 5, columna 12; con el cuarto, la casilla 0x6A en la fila 6
	ld a,(0e1c7h)		;8b5b   ; los avisos
	cp 004h		;8b5e
	jr nc,cisterna_encuentro		;8b60
	inc a			;8b62   ; uno mas
	ld (0e1c7h),a		;8b63
	dec a			;8b66
	ld de,08c20h		;8b67   ; su casilla
	add a,e			;8b6a
	ld e,a			;8b6b
	ld a,(de)			;8b6c
	ld hl,018ach		;8b6d   ; la fila 5, columna 12
	call 0004dh		;8b70   ; WRTVRM
	ld a,(0e1c7h)		;8b73   ; el cuarto?
	cp 004h		;8b76
	ret nz			;8b78
	ld hl,018cch		;8b79   ; la casilla 0x6A en la fila 6
	ld a,06ah		;8b7c
	call 0004dh		;8b7e
	ret			;8b81
cisterna_encuentro:		; Con los cuatro avisos: el viento; demasiado arriba (Y menos de 0x25) y no en el centro, se estrella; a la altura (0x25-0x2F), en el centro (X 0x63-0x65) y con la palanca abajo (5), empieza (0xE1C7 = 5)
	cp 004h		;8b82
	jr nz,cisterna_llena		;8b84
	call viento		;8b86   ; el viento
	ld a,(ix+000h)		;8b89   ; la Y del avion
	cp 025h		;8b8c   ; muy arriba?
	jr nc,cisterna_alto		;8b8e
	ld a,(ix+001h)		;8b90   ; la X: fuera del centro...
	cp 025h		;8b93
	ret c			;8b95
	cp 0a8h		;8b96
	ret nc			;8b98
	ld a,001h		;8b99   ; ...se estrella
	ld (0e19bh),a		;8b9b
	ret			;8b9e
cisterna_alto:
	cp 030h		;8b9f   ; 0x25-0x2F?
	ret nc			;8ba1
	ld a,(ix+001h)		;8ba2   ; la X: 0x63-0x65?
	cp 063h		;8ba5
	ret c			;8ba7
	cp 066h		;8ba8
	ret nc			;8baa
	ld a,(0e198h)		;8bab   ; la palanca abajo?
	cp 005h		;8bae
	ret nz			;8bb0
	ld a,005h		;8bb1   ; enganchado (5)
	ld (0e1c7h),a		;8bb3
cisterna_llena:		; Enganchado: cada 3 cuadros, el combustible uno mas (su barra, el sonido 2 del canal A) hasta 0xC0; lleno, se suelta (0xE1A4 = 9: se va) y las casillas de la fila 5 y 6 vuelven
	ld a,(0e015h)		;8bb6   ; cada 3 cuadros
	cp 003h		;8bb9
	ret c			;8bbb
	xor a			;8bbc
	ld (0e015h),a		;8bbd
	call avion_color		;8bc0   ; el color del avion
	call sprites_vram		;8bc3   ; los sprites
	ld a,(0e1a0h)		;8bc6   ; el combustible...
	inc a			;8bc9   ; ...uno mas
	ld (0e1a0h),a		;8bca
	call combustible_barra		;8bcd   ; su barra
	ld a,002h		;8bd0   ; el sonido 2 del canal A
	call sonido_a_pide		;8bd2
	call sonido		;8bd5
	ld a,(0e1a0h)		;8bd8   ; lleno (0xC0)?
	cp 0c0h		;8bdb
	ret c			;8bdd
	xor a			;8bde   ; suelto
	ld (0e1c7h),a		;8bdf
	ld a,009h		;8be2   ; se va
	ld (0e1a4h),a		;8be4
	ld a,082h		;8be7   ; la casilla 0x82 en la fila 5
	ld hl,018ach		;8be9
	call 0004dh		;8bec
	ld a,010h		;8bef   ; y la fila 6 en blanco
	ld hl,018cch		;8bf1
	call 0004dh		;8bf4
	ret			;8bf7
cisterna_pinta:		; El avion de 0x8C2F con A filas (las de abajo primero), desde la fila A + 1 de la columna 5 hacia arriba: 15 casillas por fila, cinco como mucho
	ld hl,017e5h		;8bf8   ; la fila 0, columna 5, menos una
	ld de,00020h		;8bfb
	ld b,a			;8bfe   ; A filas abajo
	ld c,a			;8bff
L_8C00:
	add hl,de			;8c00
	djnz L_8C00		;8c01
	ld b,c			;8c03
	ld c,000h		;8c04
	ld de,08c2fh		;8c06   ; las casillas
cisterna_fila:
	ex de,hl			;8c09
	push bc			;8c0a
	ld bc,0000fh		;8c0b   ; 15 casillas
	call 0005ch		;8c0e   ; LDIRVM
	pop bc			;8c11
	inc c			;8c12   ; una mas
	ld a,c			;8c13
	cp 005h		;8c14   ; cinco: ya
	ret z			;8c16
	push de			;8c17
	ld de,0ffe0h		;8c18   ; la fila de arriba
	add hl,de			;8c1b
	pop de			;8c1c
	djnz cisterna_fila		;8c1d
	ret			;8c1f

; ----------------------------------------------------------------------
; DATOS cisterna_datos: Las cuatro casillas de los avisos (0x8C20) y 11 en
;   blanco (0x8C24): con las primeras del dibujo de despues, que tambien estan
;   en blanco, son la fila de 23 blancos que borra los textos (0x8351, 0x965A,
;   0x8AF7)
;   0x8c20..0x8c2f  (15 bytes)
DATA_cisterna_datos:
	defb 0b6h,081h,082h,069h,010h,010h,010h,010h,010h,010h,010h,010h,010h,010h,010h	; 8c20  ...i...........

; ----------------------------------------------------------------------
; DATOS cisterna_casillas: El avion de casillas: cinco filas de 15 (0xA8-0xBC)
;   0x8c2f..0x8c7a  (75 bytes)
DATA_cisterna_casillas:
	defb 010h,010h,010h,010h,010h,010h,010h,010h,010h,010h,010h,010h,010h,010h,010h,010h	; 8c2f  ................
	defb 010h,010h,0adh,0afh,0adh,010h,0b6h,010h,0adh,0bah,0adh,010h,010h,010h,0a8h,0a9h	; 8c3f  ................
	defb 0aah,0ach,0aeh,0b1h,0b3h,0b5h,0b8h,0b1h,0b9h,0ach,0aah,0bbh,0bch,010h,010h,010h	; 8c4f  ................
	defb 0abh,010h,0b0h,0b2h,0b4h,0b7h,0b0h,010h,0abh,010h,010h,010h,010h,010h,010h,010h	; 8c5f  ................
	defb 010h,010h,010h,010h,010h,010h,010h,010h,010h,010h,010h	; 8c6f  ...........

; ======================================================================
; CODIGO 0x8c7a..0x8f0d  (659 bytes)
; ======================================================================


pista_bache:		; En el borde de la pista (0xE1A1: 1 o 2), el avion da botes: un cuadro una o dos filas abajo y el siguiente otra vez arriba
	ld a,(0e1a1h)		;8c7a   ; en el borde?
	and a			;8c7d
	ret z			;8c7e
	ld a,(0e1a2h)		;8c7f   ; arriba o abajo?
	and a			;8c82
	jr nz,pista_bache_vuelve		;8c83
	inc a			;8c85   ; abajo
	ld (0e1a2h),a		;8c86
	ld a,(0e1a1h)		;8c89   ; el borde derecho: dos filas
	cp 001h		;8c8c
	jr z,pista_bache_uno		;8c8e
	inc (ix+000h)		;8c90
	inc (ix+004h)		;8c93
pista_bache_uno:
	inc (ix+000h)		;8c96
	inc (ix+004h)		;8c99
	ret			;8c9c
pista_bache_vuelve:
	xor a			;8c9d   ; arriba otra vez
	ld (0e1a2h),a		;8c9e
	ld a,(0e1a1h)		;8ca1
	cp 001h		;8ca4
	jr z,pista_bache_vuelve1		;8ca6
	dec (ix+000h)		;8ca8
	dec (ix+004h)		;8cab
pista_bache_vuelve1:
	dec (ix+000h)		;8cae
	dec (ix+004h)		;8cb1
	ret			;8cb4
barras:		; La barra de SPEED (la velocidad / 2, en 0x1939); con menos de 16 de combustible, la alarma (el sonido 1 del canal A); cada 32 cuadros, una unidad de combustible menos y su barra; sin combustible, en la pista y antes de despegar, se estrella
	ld hl,0e180h		;8cb5   ; la barra en 0xE180
	ld a,(0e19eh)		;8cb8   ; la velocidad / 2
	srl a		;8cbb
	call barra_pon		;8cbd
	ld hl,0e180h		;8cc0   ; a la fila 9, columna 25
	ld de,01939h		;8cc3
	ld bc,00006h		;8cc6
	call 0005ch		;8cc9
	ld a,(0e1a0h)		;8ccc   ; el combustible: menos de 16...
	cp 010h		;8ccf
	jr nc,barras_cuenta		;8cd1
	ld a,(0e19bh)		;8cd3   ; ...sin estrellarse...
	and a			;8cd6
	jr nz,barras_cuenta		;8cd7
	ld a,001h		;8cd9   ; ...la alarma
	call sonido_a_pide		;8cdb
barras_cuenta:
	ld a,(0e017h)		;8cde   ; cada 32 cuadros
	cp 020h		;8ce1
	ret c			;8ce3
	xor a			;8ce4
	ld (0e017h),a		;8ce5
	ld a,(0e1a0h)		;8ce8   ; queda combustible?
	and a			;8ceb
	jr nz,combustible_gasta		;8cec
	ld a,(0e19fh)		;8cee   ; despegando: nada
	and a			;8cf1
	ret nz			;8cf2
	ld a,(0e19dh)		;8cf3   ; en vuelo: nada
	and a			;8cf6
	ret nz			;8cf7
	ld a,001h		;8cf8   ; parado: se estrella
	ld (0e19bh),a		;8cfa
	ret			;8cfd
combustible_gasta:
	dec a			;8cfe   ; una unidad menos
	ld (0e1a0h),a		;8cff
combustible_barra:		; La barra de FUEL: el combustible / 4 en 0x1999 (la fila 12, columna 25)
	srl a		;8d02   ; / 4
	srl a		;8d04
	ld c,a			;8d06
	ld hl,0e186h		;8d07
	call barra_pon		;8d0a
	ld hl,0e186h		;8d0d   ; a la fila 12, columna 25
	ld de,01999h		;8d10
	ld bc,00006h		;8d13
	call 0005ch		;8d16
	ret			;8d19
altura_barra:		; La barra de ALTI (la altura, 0xE1A5) en 0x19F9 (la fila 15); a altura 0 con 0xE1AE 13 o mas, se estrella; y el horizonte segun la altura: a 0x17, 0x1A, 0x1D, 0x20 y 0x23 baja una fila (0xE1B7, desde la fila 10); por debajo de la fila 11, las filas 21-23 en blanco
	ld a,(0e1a5h)		;8d1a   ; en el suelo?
	and a			;8d1d
	jr nz,altura_barra_pon		;8d1e
	ld a,(0e1aeh)		;8d20   ; 0xE1AE: 13?
	cp 00dh		;8d23
	jr c,altura_barra_cero		;8d25
	ld (0e19bh),a		;8d27   ; se estrella
	ret			;8d2a
altura_barra_cero:
	ld a,(0e1a5h)		;8d2b
altura_barra_pon:
	ld c,a			;8d2e
	ld hl,0e18dh		;8d2f
	call barra_pon		;8d32
	ld hl,0e18dh		;8d35   ; a la fila 15, columna 25
	ld de,019f9h		;8d38
	ld bc,00006h		;8d3b
	call 0005ch		;8d3e
	ld b,001h		;8d41   ; el horizonte: la fila 9 + B
	ld hl,01920h		;8d43
	ld de,00020h		;8d46
	ld a,(0e19fh)		;8d49   ; aterrizando: la fila 10
	cp 003h		;8d4c
	jr z,horizonte_pon		;8d4e
	ld a,(0e1a5h)		;8d50   ; la altura: 0x17?
	cp 017h		;8d53
	jr z,horizonte_pon		;8d55
	inc b			;8d57   ; la fila 11
	cp 01ah		;8d58
	jr z,horizonte_pon		;8d5a
	inc b			;8d5c   ; la 12
	cp 01dh		;8d5d
	jr z,horizonte_pon		;8d5f
	inc b			;8d61   ; la 13
	cp 020h		;8d62
	jr z,horizonte_pon		;8d64
	inc b			;8d66   ; la 14
	cp 023h		;8d67
	jr z,horizonte_pon		;8d69
	xor a			;8d6b   ; otra altura: nada
	ld (0e1bdh),a		;8d6c
	ret			;8d6f
horizonte_pon:
	ld a,(0e1bdh)		;8d70   ; ya puesto?
	and a			;8d73
	ret nz			;8d74
	ld a,b			;8d75   ; la fila...
	dec a			;8d76
	ld (0e1bbh),a		;8d77
horizonte_fila:
	add hl,de			;8d7a
	djnz horizonte_fila		;8d7b
	ld (0e1b7h),hl		;8d7d   ; ...en 0xE1B7
	ld a,(0e1bbh)		;8d80   ; la 11 o mas?
	cp 00bh		;8d83
	jr c,horizonte_pinta		;8d85
	ld de,01aa0h		;8d87   ; las filas 21, 22 y 23 en blanco
	ld hl,08c24h		;8d8a
	ld bc,00018h		;8d8d
	call 0005ch		;8d90
	ld de,01ac0h		;8d93
	ld hl,08c24h		;8d96
	ld bc,00018h		;8d99
	call 0005ch		;8d9c
	ld de,01ae0h		;8d9f
	ld hl,08c24h		;8da2
	ld bc,00018h		;8da5
	call 0005ch		;8da8
	ret			;8dab
horizonte_pinta:
	call suelo_pinta		;8dac   ; el paisaje (0x929B)
	ld a,001h		;8daf   ; puesto
	ld (0e1bdh),a		;8db1
	ret			;8db4
barra_pon:		; Una barra de seis casillas en HL desde el valor A: una casilla llena (0x7C) por cada 8, una a medias (0x74 + el resto) y las demas vacias (0x74)
	ld c,a			;8db5
	and 038h		;8db6   ; / 8: las llenas
	srl a		;8db8
	srl a		;8dba
	srl a		;8dbc
	ld b,a			;8dbe
	and a			;8dbf   ; ninguna?
	jr nz,barra_llena		;8dc0
	jr barra_media		;8dc2
barra_llena:
	ld (hl),07ch		;8dc4   ; llena
	inc hl			;8dc6
	djnz barra_llena		;8dc7
barra_media:
	ld a,c			;8dc9   ; el resto
	and 007h		;8dca
	ld b,a			;8dcc
	ld a,074h		;8dcd   ; 0x74 + el resto
	add a,b			;8dcf
	ld (hl),a			;8dd0
	ld b,005h		;8dd1
barra_vacia:
	inc hl			;8dd3
	ld (hl),074h		;8dd4   ; vacias
	djnz barra_vacia		;8dd6
	ret			;8dd8
marcador_textos:		; El marcador de la derecha: HISCORE, SCORE, SPEED, FUEL, ALTI, el marco de las barras, las cifras, el avion = las vidas, P = la fase, el marco del radar y su punto (el sprite 28); en la demostracion, DEMO PLAY
	ld hl,09587h		;8dd9   ; HISCORE...
	ld de,01839h		;8ddc   ; ...en la fila 1, columna 25
	ld bc,00007h		;8ddf
	call 0005ch		;8de2
	ld hl,09589h		;8de5   ; SCORE: las cinco ultimas letras de HISCORE...
	ld de,0187bh		;8de8   ; ...en la fila 3, columna 27
	ld bc,00005h		;8deb
	call 0005ch		;8dee
	ld hl,08f27h		;8df1   ; SPEED en la fila 8
	ld de,0191ah		;8df4
	ld bc,00005h		;8df7
	call 0005ch		;8dfa
	ld hl,08f2ch		;8dfd   ; FUEL en la fila 11
	ld de,0197bh		;8e00
	ld bc,00004h		;8e03
	call 0005ch		;8e06
	ld hl,08f30h		;8e09   ; ALTI en la fila 14
	ld de,019dbh		;8e0c
	ld bc,00004h		;8e0f
	call 0005ch		;8e12
	ld hl,08f34h		;8e15   ; el marco de las barras, en las filas 9, 12 y 15
	ld de,01938h		;8e18
	ld bc,00008h		;8e1b
	call 0005ch		;8e1e
	ld hl,08f34h		;8e21
	ld de,01998h		;8e24
	ld bc,00008h		;8e27
	call 0005ch		;8e2a
	ld hl,08f34h		;8e2d
	ld de,019f8h		;8e30
	ld bc,00008h		;8e33
	call 0005ch		;8e36
	call marcador_pinta		;8e39   ; los puntos y el record
	ld hl,018dbh		;8e3c   ; el avion (0xA1)...
	ld a,0a1h		;8e3f   ; ...en la fila 6, columna 27...
	call 0004dh		;8e41
	inc hl			;8e44
	ld a,00dh		;8e45   ; ...y "=" (0x0D)
	call 0004dh		;8e47
	call vidas_pinta		;8e4a   ; las vidas
	ld hl,018bbh		;8e4d   ; "P"...
	ld a,020h		;8e50   ; ...en la fila 5, columna 27...
	call 0004dh		;8e52
	inc hl			;8e55
	ld a,00dh		;8e56   ; ...y "="
	call 0004dh		;8e58
	inc hl			;8e5b
	ld a,(0e00ah)		;8e5c   ; la fase + 1...
	inc a			;8e5f
	cp 00ah		;8e60   ; ...10 o mas?
	jr nc,fase_diez		;8e62
	ld b,a			;8e64
	xor a			;8e65   ; un 0 delante
fase_cifras:
	call 0004dh		;8e66
	inc hl			;8e69
	ld a,b			;8e6a
	call 0004dh		;8e6b   ; la cifra
	jr radar_marco		;8e6e
fase_diez:
	sub 00ah		;8e70   ; - 10, y un 1 delante
	ld b,a			;8e72
	ld a,001h		;8e73
	jr fase_cifras		;8e75
radar_marco:		; El marco del radar: dos columnas de 8 (0x8F0D en la 25 y 0x8F15 en la 30, desde la fila 16), su borde de arriba (0x8F1D) y el de abajo (0x8F21); el punto del avion es el sprite 28 (Y 0xA0, X 0xD8, dibujo 0x48, color 5)
	ld hl,01a19h		;8e77   ; la fila 16, columna 25
	ld de,08f0dh		;8e7a
	ld b,008h		;8e7d   ; ocho filas
radar_izq:
	ld a,(de)			;8e7f
	inc de			;8e80
	call 0004dh		;8e81   ; WRTVRM
	push de			;8e84
	ld de,00020h		;8e85   ; la fila siguiente
	add hl,de			;8e88
	pop de			;8e89
	djnz radar_izq		;8e8a
	ld hl,01a1eh		;8e8c   ; la columna 30
	ld de,08f15h		;8e8f
	ld b,008h		;8e92
radar_der:
	ld a,(de)			;8e94
	inc de			;8e95
	call 0004dh		;8e96
	push de			;8e99
	ld de,00020h		;8e9a
	add hl,de			;8e9d
	pop de			;8e9e
	djnz radar_der		;8e9f
	ld hl,08f1dh		;8ea1   ; el borde de arriba, fila 16
	ld de,01a1ah		;8ea4
	ld bc,00004h		;8ea7
	call 0005ch		;8eaa
	ld hl,08f21h		;8ead   ; el de abajo, fila 23
	ld de,01af9h		;8eb0
	ld bc,00006h		;8eb3
	call 0005ch		;8eb6
	ld (ix+070h),0a0h		;8eb9   ; el punto del avion
	ld (ix+071h),0d8h		;8ebd
	ld (ix+072h),048h		;8ec1
	ld (ix+073h),005h		;8ec5
	call radar_pista		;8ec9   ; la pista del radar
	ld a,(0e000h)		;8ecc   ; jugando?
	and a			;8ecf
	ret nz			;8ed0
	call demo_pinta		;8ed1   ; DEMO PLAY
	ret			;8ed4
radar_pista:		; La pista en el radar: las columnas 27 (0x7E) y 28 (0x7F) de las filas 18-22, y las 26 y 29 en blanco
	ld hl,01a5bh		;8ed5   ; la fila 18, columna 27
	ld de,00020h		;8ed8
	ld a,07eh		;8edb   ; la casilla 0x7E
	ld b,005h		;8edd   ; cinco filas
L_8EDF:
	call 0004dh		;8edf
	add hl,de			;8ee2
	djnz L_8EDF		;8ee3
	ld hl,01a5ch		;8ee5   ; la columna 28: 0x7F
	ld a,07fh		;8ee8
	ld b,005h		;8eea
L_8EEC:
	call 0004dh		;8eec
	add hl,de			;8eef
	djnz L_8EEC		;8ef0
	ld hl,01a5ah		;8ef2   ; la 26 en blanco
	ld a,010h		;8ef5
	ld b,005h		;8ef7
L_8EF9:
	call 0004dh		;8ef9
	add hl,de			;8efc
	djnz L_8EF9		;8efd
	ld hl,01a5dh		;8eff   ; la 29 en blanco
	ld a,010h		;8f02
	ld b,005h		;8f04
L_8F06:
	call 0004dh		;8f06
	add hl,de			;8f09
	djnz L_8F06		;8f0a
	ret			;8f0c

; ----------------------------------------------------------------------
; DATOS marcador_datos: Las casillas del marco del radar (0x8F0D, 0x8F15,
;   0x8F1D, 0x8F21), SPEED, FUEL, ALTI (0x8F27) y el marco de las barras
;   (0x8F34)
;   0x8f0d..0x8f3c  (47 bytes)
DATA_marcador_datos:
	defb 072h,071h,071h,071h,071h,071h,071h,071h,067h,066h,066h,066h,066h,066h,066h,066h	; 8f0d  rqqqqqqqgfffffff
	defb 06eh,06eh,06eh,06eh,083h,084h,084h,084h,084h,085h,023h,020h,015h,015h,014h,016h	; 8f1d  nnnn......# ....
	defb 025h,015h,01ch,011h,01ch,024h,019h,073h,074h,074h,074h,074h,074h,074h,07dh	; 8f2d  %....$.stttttt}

; ======================================================================
; CODIGO 0x8f3c..0x8f94  (88 bytes)
; ======================================================================


paisaje:		; El paisaje del horizonte (dos filas de 24 casillas desde DE): sin desplazar (0xE1BF a 0), el de la fase (0x8F94); si no, el de 0x8FB4 movido segun la X del avion / 8
	ld de,01940h		;8f3c   ; la fila 10
paisaje_en:		; El paisaje en la fila DE (0x90E2 lo usa con otra fila)
	ld a,(0e1bfh)		;8f3f   ; desplazado?
	and a			;8f42
	jr z,paisaje_fijo		;8f43
	ld a,(0e00ah)		;8f45   ; la fase x 2
	add a,a			;8f48
	ld bc,08fb4h		;8f49   ; la tabla de 0x8FB4
	add a,c			;8f4c
	jr nc,L_8F50		;8f4d
	inc b			;8f4f
L_8F50:
	ld c,a			;8f50
	ld a,(bc)			;8f51
	ld l,a			;8f52
	inc bc			;8f53
	ld a,(bc)			;8f54
	ld h,a			;8f55
	ld a,(ix+001h)		;8f56   ; la X del avion...
	ld b,001h		;8f59
paisaje_x:
	sub 008h		;8f5b   ; .../ 8
	jr c,paisaje_mueve		;8f5d
	inc b			;8f5f
	jr paisaje_x		;8f60
paisaje_mueve:
	ld a,b			;8f62   ; + eso
	add a,l			;8f63
	jr nc,paisaje_dir		;8f64
	inc h			;8f66
paisaje_dir:
	ld l,a			;8f67
	jr paisaje_pinta		;8f68
paisaje_fijo:
	push de			;8f6a
	ld hl,08f94h		;8f6b   ; la tabla de 0x8F94
	ld a,(0e00ah)		;8f6e   ; por la fase
	add a,a			;8f71
	add a,l			;8f72
	jr nc,paisaje_fijo_dir		;8f73
	inc h			;8f75
paisaje_fijo_dir:
	ld l,a			;8f76
	ld e,(hl)			;8f77   ; la direccion
	inc hl			;8f78
	ld d,(hl)			;8f79
	ex de,hl			;8f7a
	pop de			;8f7b   ; DE: la VRAM
paisaje_pinta:
	ld bc,00018h		;8f7c   ; la primera fila: 24 casillas
	call 0005ch		;8f7f   ; LDIRVM
	ld bc,00020h		;8f82   ; la segunda fila...
	add hl,bc			;8f85
	push hl			;8f86
	ex de,hl			;8f87
	ld de,00018h		;8f88   ; ...con lo que deja LDIRVM en HL y DE
	add hl,de			;8f8b
	pop de			;8f8c
	ld bc,00018h		;8f8d
	call 0005ch		;8f90
	ret			;8f93

; ----------------------------------------------------------------------
; DATOS paisajes: Los paisajes: 16 punteros por fase sin desplazar (0x8F94),
;   16 desplazados (0x8FB4) y las filas de casillas (0x8FD4)
;   0x8f94..0x9094  (256 bytes)
DATA_paisajes:
	defb 0e0h,08fh,0d8h,08fh,0dch,08fh,0e4h,08fh,0e8h,08fh,0ech,08fh,0d4h,08fh,0e0h,08fh	; 8f94  ................
	defb 0d7h,08fh,0dbh,08fh,0dfh,08fh,0e3h,08fh,0e7h,08fh,0ebh,08fh,0d9h,08fh,0ddh,08fh	; 8fa4  ................
	defb 0d4h,08fh,034h,090h,0d4h,08fh,034h,090h,0d4h,08fh,034h,090h,0d4h,08fh,034h,090h	; 8fb4  ..4...4...4...4.
	defb 0d4h,08fh,034h,090h,0d4h,08fh,034h,090h,0d4h,08fh,034h,090h,0d4h,08fh,034h,090h	; 8fc4  ..4...4...4...4.
	defb 061h,04dh,04fh,051h,053h,055h,057h,059h,063h,05dh,05fh,061h,04dh,04fh,051h,053h	; 8fd4  aMOQSUWYc]_aMOQS
	defb 055h,057h,059h,05bh,05dh,05fh,061h,061h,061h,04dh,04fh,051h,053h,055h,057h,059h	; 8fe4  UWY[]_aaaMOQSUWY
	defb 063h,05dh,05fh,061h,04dh,04fh,051h,053h,055h,057h,059h,05bh,05dh,05fh,061h,061h	; 8ff4  c]_aMOQSUWY[]_aa
	defb 061h,04eh,050h,052h,054h,056h,058h,05ah,056h,05eh,060h,062h,04eh,050h,052h,054h	; 9004  aNPRTVXZV^`bNPRT
	defb 056h,058h,05ah,05ch,05eh,060h,062h,061h,061h,04eh,050h,052h,054h,056h,058h,05ah	; 9014  VXZ\^`baaNPRTVXZ
	defb 056h,05eh,060h,062h,04eh,050h,052h,054h,056h,058h,05ah,05ch,05eh,060h,062h,061h	; 9024  V^`bNPRTVXZ\^`ba
	defb 010h,0bdh,0bfh,0c1h,0c3h,0c5h,0c7h,0c9h,0cbh,0cdh,0d7h,0d8h,0dah,010h,010h,010h	; 9034  ................
	defb 010h,0bdh,0bfh,0c1h,0c3h,0c5h,0c7h,0c9h,0cbh,0cdh,0cfh,0d1h,0d3h,0d5h,0d7h,0d8h	; 9044  ................
	defb 0dah,0c7h,0c9h,0cbh,0cdh,010h,010h,010h,010h,010h,0e3h,0e4h,0e6h,0e8h,0eah,010h	; 9054  ................
	defb 010h,0beh,0c0h,0c2h,0c4h,0c6h,0c8h,0cah,0cch,0ceh,010h,0d9h,0dbh,0dch,0ddh,0deh	; 9064  ................
	defb 0dfh,0beh,0c0h,0c2h,0c4h,0c6h,0c8h,0cah,0cch,0ceh,010h,010h,010h,010h,010h,0d9h	; 9074  ................
	defb 0dbh,0c8h,0cah,0cch,0ceh,0d2h,0d4h,0d6h,0e0h,0e1h,0e2h,0e5h,0e7h,0e9h,0ebh,0ech	; 9084  ................

; ======================================================================
; CODIGO 0x9094..0x911c  (136 bytes)
; ======================================================================


pista_aleja:		; Despegado (0xE1B4 en marcha), cada 10 cuadros la pista se aleja: una fila mas de 0xE1B7 hacia abajo se llena con la casilla de 0x911C y debajo va el paisaje (0x8F3F); al llegar a la fila 22, el paisaje queda desplazado (0xE1BF = 1) y 0xE1C0 uno mas
	ld a,(0e1bbh)		;9094   ; el horizonte por debajo de la fila 11: nada
	cp 00bh		;9097
	ret nc			;9099
	ld a,(0e1b4h)		;909a   ; en marcha?
	and a			;909d
	ret z			;909e
	ld a,(0e1b5h)		;909f   ; cada 10 cuadros
	inc a			;90a2
	ld (0e1b5h),a		;90a3
	cp 00ah		;90a6
	ret c			;90a8
	xor a			;90a9
	ld (0e1b5h),a		;90aa
	ld hl,(0e1b7h)		;90ad   ; la fila del horizonte - 1...
	ld de,0ffe0h		;90b0
	add hl,de			;90b3
	ld de,00020h		;90b4
	ld a,(0e1b4h)		;90b7   ; ...+ los pasos
	ld b,a			;90ba
pista_aleja_fila:
	add hl,de			;90bb
	djnz pista_aleja_fila		;90bc
	push hl			;90be
	ld bc,01ac0h		;90bf   ; la fila 22?
	and a			;90c2
	sbc hl,bc		;90c3
	pop hl			;90c5
	jr z,pista_aleja_ultima		;90c6
	jr nc,pista_aleja_fin		;90c8
	ld a,(0e1b4h)		;90ca   ; la casilla del paso (0x911C)
	dec a			;90cd
	ld de,0911ch		;90ce
	add a,e			;90d1
	jr nc,pista_aleja_casilla		;90d2
	inc d			;90d4
pista_aleja_casilla:
	ld e,a			;90d5
	ld bc,00018h		;90d6   ; 24 casillas
	ld a,(de)			;90d9
	call 00056h		;90da   ; FILVRM
	ld bc,00020h		;90dd   ; la fila de abajo
	add hl,bc			;90e0
	ex de,hl			;90e1
	call paisaje_en		;90e2   ; el paisaje
	ld a,(0e1b4h)		;90e5   ; un paso mas
	inc a			;90e8
	ld (0e1b4h),a		;90e9
	ret			;90ec
pista_aleja_ultima:
	ld a,(0e1b4h)		;90ed   ; la fila 22: las dos ultimas
	dec a			;90f0
	ld de,0911ch		;90f1
	add a,e			;90f4
	jr nc,L_90F8		;90f5
	inc d			;90f7
L_90F8:
	ld e,a			;90f8
	ld bc,00018h		;90f9   ; 24 casillas
	ld a,(de)			;90fc   ; la casilla
	call 00056h		;90fd   ; FILVRM
	ld bc,00020h		;9100   ; la fila de abajo
	add hl,bc			;9103
	inc de			;9104
	ld a,(de)			;9105   ; la siguiente casilla
	ld bc,00018h		;9106
	call 00056h		;9109   ; FILVRM
pista_aleja_fin:
	xor a			;910c   ; acabado
	ld (0e1b4h),a		;910d
	inc a			;9110
	ld (0e1bfh),a		;9111   ; el paisaje desplazado
	ld a,(0e1c0h)		;9114   ; 0xE1C0 uno mas
	inc a			;9117
	ld (0e1c0h),a		;9118
	ret			;911b

; ----------------------------------------------------------------------
; DATOS pista_aleja_casillas: Las casillas de cada paso de 0x9094
;   0x911c..0x912a  (14 bytes)
DATA_pista_aleja_casillas:
	defb 010h,010h,040h,041h,042h,043h,044h,045h,046h,047h,048h,049h,04ah,04bh	; 911c  ..@ABCDEFGHIJK

; ======================================================================
; CODIGO 0x912a..0x9166  (60 bytes)
; ======================================================================


pista_aleja_empieza:		; En el aire (0xE19F = 2), con velocidad y sin otro en marcha: despues de 0xE1BC cuadros, empieza (0xE1B4 = 1) y la espera siguiente es la fila del horizonte x 2
	ld a,(0e1bbh)		;912a
	cp 00bh		;912d
	ret nc			;912f
	ld a,(0e19fh)		;9130   ; en el aire?
	cp 002h		;9133
	ret nz			;9135
	ld a,(0e19eh)		;9136   ; con velocidad?
	and a			;9139
	ret z			;913a
	ld a,(0e1b4h)		;913b   ; ya en marcha?
	and a			;913e
	ret nz			;913f
	ld a,(0e1bch)		;9140   ; la espera
	and a			;9143
	jr z,pista_aleja_va		;9144
	dec a			;9146
	ld (0e1bch),a		;9147
	ret			;914a
pista_aleja_va:
	inc a			;914b   ; en marcha
	ld (0e1b4h),a		;914c
	ld hl,(0e1b7h)		;914f
	ld a,(0e1bbh)		;9152   ; la fila x 2: la espera siguiente
	rlca			;9155
	ld (0e1bch),a		;9156
	ret			;9159
sprites_fase:		; 48 bytes de 0x9166 a los atributos de los sprites 4-15 (0xE110)
	ld de,0e110h		;915a
	ld hl,09166h		;915d
	ld bc,00030h		;9160
	ldir		;9163
	ret			;9165

; ----------------------------------------------------------------------
; DATOS sprites_fase_datos: Los atributos de los sprites 4-15 al empezar la
;   fase
;   0x9166..0x9196  (48 bytes)
DATA_sprites_fase_datos:
	defb 05fh,04ch,040h,00eh,05fh,064h,044h,00eh,06fh,044h,040h,00eh,06fh,06ch,044h,00eh	; 9166  _L@._dD.oD@.olD.
	defb 07fh,03ch,040h,00eh,07fh,074h,044h,00eh,08fh,034h,040h,00eh,08fh,07ch,044h,00eh	; 9176  .<@..tD..4@..|D.
	defb 09fh,02ch,040h,00eh,09fh,084h,044h,00eh,0afh,024h,040h,00eh,0afh,08ch,044h,00eh	; 9186  .,@...D..$@...D.

; ======================================================================
; CODIGO 0x9196..0x9215  (127 bytes)
; ======================================================================


suelo_avanza:		; Un paso del suelo: los dibujos de las casillas 0x40-0x4A del segundo y tercer tercio (0xA00, 0x1200) cambian segun la fase de las rayas (0xE1AA, 0-7, la tabla 0x9215); cada 20 pasos el punto del radar sube (el sprite 28, o el 27 aterrizando); y la distancia (0xE1AF) una mas: a 0x200, 0xE1AE = 1
	ld hl,01200h		;9196   ; el tercer tercio, desde la casilla 0x40
	ld a,(0e1aah)		;9199
	call rayas_pon		;919c
	ld hl,00a00h		;919f   ; el segundo
	ld a,(0e1aah)		;91a2
	call rayas_pon		;91a5
	ld a,(0e1aah)		;91a8   ; la fase siguiente
	inc a			;91ab
	and 007h		;91ac
	ld (0e1aah),a		;91ae
	ld a,(0e1c8h)		;91b1   ; cada 20 pasos...
	inc a			;91b4
	ld (0e1c8h),a		;91b5
	cp 014h		;91b8
	jr c,suelo_distancia		;91ba
	xor a			;91bc
	ld (0e1c8h),a		;91bd
	ld a,(0e1c9h)		;91c0   ; aterrizando?
	and a			;91c3
	jr z,suelo_radar		;91c4
	dec (ix+06ch)		;91c6   ; ...el punto 27 sube
	jr suelo_distancia		;91c9
suelo_radar:
	dec (ix+070h)		;91cb   ; ...o el 28
suelo_distancia:
	ld hl,(0e1afh)		;91ce   ; la distancia...
	inc hl			;91d1   ; ...una mas
	ld (0e1afh),hl		;91d2
	ld a,h			;91d5   ; 0x200?
	cp 002h		;91d6
	ret nz			;91d8
	ld a,(0e1aeh)		;91d9   ; 0xE1AE ya puesto?
	and a			;91dc
	ret nz			;91dd
	inc a			;91de
	ld (0e1aeh),a		;91df
	ret			;91e2
rayas_pon:		; Las rayas de la fase A (0x9215) en los dibujos desde la VRAM HL: lineas llenas (0xFF) separadas por tantas vacias como dice la tabla, hasta 0x58 lineas
	add a,a			;91e3   ; x 2
	ld de,09215h		;91e4
	add a,e			;91e7
	jr nc,L_91EB		;91e8
	inc d			;91ea
L_91EB:
	ld e,a			;91eb
	push hl			;91ec
	ld a,(de)			;91ed
	ld l,a			;91ee
	inc de			;91ef
	ld a,(de)			;91f0
	ld h,a			;91f1
	ex de,hl			;91f2
	pop hl			;91f3
	ld c,000h		;91f4   ; la cuenta de las lineas
	ld a,0ffh		;91f6   ; una llena
	call 0004dh		;91f8
	inc hl			;91fb
rayas_hueco:
	ld a,(de)			;91fc   ; cuantas vacias
	ld b,a			;91fd
rayas_vacia:
	ld a,000h		;91fe
	call 0004dh		;9200   ; WRTVRM
	inc hl			;9203
	inc c			;9204
	djnz rayas_vacia		;9205
	ld a,0ffh		;9207   ; una llena
	call 0004dh		;9209
	inc de			;920c   ; la siguiente
	inc hl			;920d
	inc c			;920e
	ld a,c			;920f   ; 0x58 lineas?
	cp 058h		;9210
	jr c,rayas_hueco		;9212
	ret			;9214

; ----------------------------------------------------------------------
; DATOS rayas_datos: Las 8 fases de las rayas del suelo (8 punteros y los
;   huecos de cada una)
;   0x9215..0x929b  (134 bytes)
DATA_rayas_datos:
	defb 025h,092h,034h,092h,042h,092h,051h,092h,05fh,092h,06eh,092h,07dh,092h,08ch,092h	; 9215  %.4.B.Q._.n.}...
	defb 001h,001h,001h,001h,001h,002h,002h,003h,004h,006h,008h,00ah,00ch,00eh,010h,002h	; 9225  ................
	defb 001h,001h,002h,002h,002h,003h,005h,006h,008h,00bh,00ch,00eh,00eh,001h,001h,001h	; 9235  ................
	defb 001h,001h,002h,003h,003h,005h,006h,009h,00ah,00dh,00eh,00ch,002h,001h,001h,003h	; 9245  ................
	defb 002h,002h,004h,005h,006h,009h,00bh,00dh,00eh,00ah,001h,001h,001h,001h,002h,002h	; 9255  ................
	defb 003h,003h,005h,007h,00ah,00bh,00dh,00eh,008h,002h,001h,001h,001h,001h,002h,003h	; 9265  ................
	defb 004h,005h,007h,00ah,00bh,00eh,00eh,006h,001h,001h,001h,001h,003h,002h,003h,003h	; 9275  ................
	defb 006h,008h,00ah,00bh,00eh,00eh,004h,002h,001h,001h,001h,002h,002h,003h,004h,006h	; 9285  ................
	defb 008h,00ah,00ch,00eh,00eh,002h	; 9295

; ======================================================================
; CODIGO 0x929b..0x9313  (120 bytes)
; ======================================================================


suelo_pinta:		; Desde la fila del horizonte (0xE1B7): dos filas en blanco (0x10) y debajo, hasta la fila 23, filas de 24 casillas 0x40, 0x41... (el suelo con rayas)
	ld hl,(0e1b7h)		;929b
	ld de,00020h		;929e
	ld a,010h		;92a1   ; en blanco
	ld bc,00018h		;92a3
	call 00056h		;92a6   ; FILVRM
	add hl,de			;92a9
	ld bc,00018h		;92aa
	call 00056h		;92ad
	ld a,040h		;92b0   ; la casilla 0x40
	push af			;92b2
suelo_fila:
	pop af			;92b3
	add hl,de			;92b4   ; la fila siguiente
	ld bc,00018h		;92b5
	call 00056h		;92b8
	inc a			;92bb   ; la casilla siguiente
	push af			;92bc
	ld a,h			;92bd   ; hasta 0x1AE0 (la fila 23)
	cp 01ah		;92be
	jr nz,suelo_fila		;92c0
	ld a,l			;92c2
	cp 0e0h		;92c3
	jr nz,suelo_fila		;92c5
	pop af			;92c7
	ret			;92c8
suelo_color:		; El color del suelo de la fase (0xE1AB) en las casillas 0x40-0x4B del segundo y tercer tercio
	ld hl,03200h		;92c9   ; el tercer tercio
	ld bc,00060h		;92cc
	ld a,(0e1abh)		;92cf
	call 00056h		;92d2
	ld hl,02a00h		;92d5   ; el segundo
	ld bc,00060h		;92d8
	ld a,(0e1abh)		;92db
	call 00056h		;92de
	ret			;92e1
pista_pinta:		; La pista en perspectiva: C filas de casillas 0x7E (la tabla 0x9313: cuantas y cuanto volver atras) desde la fila 23 hacia arriba, y la raya del centro (0x7F) en la columna 12, filas 12-23
	ld hl,01ae6h		;92e2   ; la fila 23, columna 6
	ld de,09313h		;92e5   ; la tabla
pista_fila:
	ld a,(de)			;92e8   ; cuantas
	ld b,a			;92e9
pista_casilla:
	ld a,07eh		;92ea   ; la casilla 0x7E
	call 0004dh		;92ec
	inc hl			;92ef
	djnz pista_casilla		;92f0
	dec c			;92f2   ; una fila menos
	jr z,pista_raya		;92f3
	push bc			;92f5
	inc de			;92f6   ; cuanto volver: la fila de arriba, mas estrecha
	ld a,(de)			;92f7
	inc de			;92f8
	ld c,a			;92f9
	and a			;92fa
	ld b,000h		;92fb
	sbc hl,bc		;92fd
	pop bc			;92ff
	jr pista_fila		;9300
pista_raya:
	ld hl,0198ch		;9302   ; la fila 12, columna 12
	ld a,07fh		;9305   ; la casilla 0x7F
	ld b,00ch		;9307   ; 12 filas
	ld de,00020h		;9309
L_930C:
	call 0004dh		;930c
	add hl,de			;930f
	djnz L_930C		;9310
	ret			;9312

; ----------------------------------------------------------------------
; DATOS pista_datos: La pista: el ancho de cada fila y cuanto volver para la
;   de arriba
;   0x9313..0x932a  (23 bytes)
DATA_pista_datos:
	defb 00ch,02ch,00ch,02bh,00ah,02ah,00ah,029h,008h,028h,008h,027h,006h,026h,006h,025h	; 9313  .,.+.*.).(.'.&.%
	defb 004h,024h,004h,023h,002h,022h,002h	; 9323

; ======================================================================
; CODIGO 0x932a..0x94a7  (381 bytes)
; ======================================================================


pista_despegue:		; Al despegar (0xE1AE 1-13, cada 4 cuadros): la pista se queda atras fila a fila (casillas 0x40 + paso, los sprites de 0x94BF); con el paso 13, el recuadro SHOT y la distancia a 0; si no ha despegado, se estrella; si no, el color del suelo de la fase. Con 14 o mas, la pista del aterrizaje se acerca (0x9406)
	ld a,(0e19fh)		;932a   ; en el aire: nada
	cp 002h		;932d
	ret z			;932f
	ld a,(0e1aeh)		;9330   ; en marcha?
	and a			;9333
	ret z			;9334
	ld a,(0e1b6h)		;9335   ; cada 4 cuadros
	inc a			;9338
	ld (0e1b6h),a		;9339
	cp 004h		;933c
	ret c			;933e
	xor a			;933f
	ld (0e1b6h),a		;9340
	ld a,(0e1aeh)		;9343   ; 13: nada
	cp 00dh		;9346
	ret z			;9348
	jp nc,pista_aterriza		;9349   ; 14 o mas: el aterrizaje
	ld hl,01960h		;934c   ; la fila 11 + el paso
	ld de,00020h		;934f
	ld b,a			;9352
L_9353:
	add hl,de			;9353
	djnz L_9353		;9354
	ld de,094a7h		;9356   ; la tabla de 0x94A7: columna y ancho
	dec a			;9359
	add a,a			;935a
	add a,e			;935b
	jr nc,pista_despegue_dir		;935c
	inc d			;935e
pista_despegue_dir:
	ld e,a			;935f
	ld a,(de)			;9360   ; la columna
	ld c,a			;9361
	inc de			;9362
	ld a,(de)			;9363   ; el ancho
	ld b,a			;9364
	ld e,c			;9365
	ld d,000h		;9366
	add hl,de			;9368   ; + la columna
	ld a,(0e1aeh)		;9369   ; la casilla 0x40 + el paso - 1
	add a,03fh		;936c
pista_despegue_fila:
	call 0004dh		;936e   ; WRTVRM
	inc hl			;9371
	djnz pista_despegue_fila		;9372   ; el ancho
	ld hl,094bfh		;9374   ; los sprites de 0x94BF
	ld a,(0e1aeh)		;9377
	ld b,a			;937a
	call pista_sprites		;937b   ; los sprites del paso
	cp 00dh		;937e   ; el 13?
	ret nz			;9380
	call shot_pon		;9381   ; el recuadro SHOT
	ld hl,00000h		;9384   ; la distancia a 0
	ld (0e1afh),hl		;9387
	ld a,(0e19dh)		;938a   ; en la ultima parte?
	cp 002h		;938d
	jr z,pista_despegue_choca		;938f
	ld a,(0e19fh)		;9391   ; despegado?
	and a			;9394
	jr nz,pista_despegue_color		;9395
pista_despegue_choca:
	ld a,001h		;9397   ; se estrella
	ld (0e19bh),a		;9399
	ret			;939c
pista_despegue_color:
	ld a,(0e00ah)		;939d   ; el color del suelo de la fase (0x8558)
	ld hl,08558h		;93a0
	add a,l			;93a3
	jr nc,pista_despegue_color_pon		;93a4
	inc h			;93a6
pista_despegue_color_pon:
	ld l,a			;93a7
	ld a,(hl)			;93a8   ; el color
	ld (0e1abh),a		;93a9
	call suelo_color		;93ac   ; al suelo
	ld a,(0e1b4h)		;93af   ; la pista que se aleja, en marcha?
	and a			;93b2
	ret nz			;93b3
	inc a			;93b4   ; que empiece
	ld (0e1b4h),a		;93b5
	ret			;93b8
pista_sprites:		; Los 8 bytes del paso B de la tabla HL a los atributos de un par de sprites (los 4-5, 6-7... segun el paso) y el paso siguiente
	dec a			;93b9   ; (paso - 1) x 8
	sla a		;93ba
	sla a		;93bc
	sla a		;93be
	add a,l			;93c0
	jr nc,pista_sprites_pon		;93c1
	inc h			;93c3
pista_sprites_pon:
	ld l,a			;93c4
	ld a,b			;93c5   ; el paso: 1-2...
	cp 003h		;93c6
	jr c,pista_sprites4		;93c8
	cp 005h		;93ca
	jr c,pista_sprites6		;93cc
	cp 007h		;93ce
	jr c,pista_sprites8		;93d0
	cp 009h		;93d2
	jr c,pista_sprites10		;93d4
	cp 00bh		;93d6
	jr c,pista_sprites12		;93d8
	ld de,0e138h		;93da   ; 11 o mas: los sprites 14 y 15 (0xE138)
	jr pista_sprites_copia		;93dd
pista_sprites12:
	ld de,0e130h		;93df   ; 9-10: los 12 y 13
	jr pista_sprites_copia		;93e2
pista_sprites10:
	ld de,0e128h		;93e4   ; 7-8: los 10 y 11
	jr pista_sprites_copia		;93e7
pista_sprites8:
	ld de,0e120h		;93e9   ; 5-6: los 8 y 9
	jr pista_sprites_copia		;93ec
pista_sprites6:
	ld de,0e118h		;93ee   ; 3-4: los 6 y 7
	jr pista_sprites_copia		;93f1
pista_sprites4:
	ld de,0e110h		;93f3   ; 1-2: los 4 y 5 (0xE110)
pista_sprites_copia:
	ld bc,00008h		;93f6   ; 8 bytes: dos sprites
	ldir		;93f9
	call sprites_vram		;93fb   ; a la VRAM
	ld a,(0e1aeh)		;93fe   ; el paso siguiente
	inc a			;9401
	ld (0e1aeh),a		;9402
	ret			;9405
pista_aterriza:		; El aterrizaje (0xE1AE 14-0x1A): la pista se acerca fila a fila (casillas 0x7E y la raya 0x7F), mas despacio en los pasos 15 y 16; con el 14, los sprites de 0x951F; con 0x1A, acabado: el paisaje fijo y el punto del radar
	ld a,(0e1aeh)		;9406   ; el paso 15?
	cp 00fh		;9409
	jr nz,L_9419		;940b
	ld a,(0e1cch)		;940d   ; mas despacio: cada 12 veces
	inc a			;9410
	ld (0e1cch),a		;9411
	cp 00ch		;9414
	ret c			;9416
	jr L_942B		;9417
L_9419:
	cp 010h		;9419   ; el 16?
	jr nz,L_942B		;941b
	ld a,(0e1cch)		;941d   ; cada 16 veces
	inc a			;9420
	ld (0e1cch),a		;9421
	cp 010h		;9424
	ret c			;9426
	xor a			;9427
	ld (0e1cch),a		;9428
L_942B:
	ld a,(0e1aeh)		;942b   ; el paso - 13...
	sub 00dh		;942e
	ld hl,01960h		;9430   ; ...filas desde la 11
	ld de,00020h		;9433
	ld b,a			;9436
pista_aterriza_fila:
	add hl,de			;9437
	djnz pista_aterriza_fila		;9438
	push hl			;943a
	ld de,094a7h		;943b   ; la tabla: columna y ancho
	dec a			;943e
	add a,a			;943f
	add a,e			;9440
	jr nc,L_9444		;9441
	inc d			;9443
L_9444:
	ld e,a			;9444
	ld a,(de)			;9445   ; la columna
	ld c,a			;9446
	inc de			;9447
	ld a,(de)			;9448   ; el ancho
	ld b,a			;9449
	ld e,c			;944a
	ld d,000h		;944b
	add hl,de			;944d   ; + la columna
	ld a,07eh		;944e   ; la casilla 0x7E
	ld c,b			;9450
	ld b,000h		;9451
	call 00056h		;9453   ; FILVRM
	pop hl			;9456
	ld de,0000ch		;9457   ; la columna 12
	add hl,de			;945a
	ld a,07fh		;945b   ; la raya (0x7F)
	call 0004dh		;945d   ; WRTVRM
	ld a,(0e1aeh)		;9460   ; el paso 14?
	cp 00eh		;9463
	jr nz,L_9475		;9465
	ld de,0e108h		;9467   ; los sprites 2 y 3 de 0x951F
	ld hl,0951fh		;946a
	ld bc,00008h		;946d
	ldir		;9470
	call sprites_vram		;9472   ; a la VRAM
L_9475:
	ld hl,09527h		;9475   ; los sprites del paso (0x9527)
	ld a,(0e1aeh)		;9478
	sub 00dh		;947b
	ld b,a			;947d
	call pista_sprites		;947e
	cp 01ah		;9481   ; el paso 0x1A?
	ret nz			;9483
	ld hl,0e108h		;9484   ; los sprites 2 y 3 a cero
	ld b,008h		;9487
pista_aterriza_borra:
	ld (hl),000h		;9489
	inc hl			;948b
	djnz pista_aterriza_borra		;948c
	call sprites_vram		;948e   ; a la VRAM
	xor a			;9491   ; el paisaje fijo
	ld (0e1bfh),a		;9492
	call paisaje		;9495
	xor a			;9498   ; acabado
	ld (0e1aeh),a		;9499
	ld (ix+06fh),005h		;949c   ; el punto del radar: color 5
	ld hl,00000h		;94a0   ; la distancia a 0
	ld (0e1afh),hl		;94a3
	ret			;94a6

; ----------------------------------------------------------------------
; DATOS pista_pasos: Los pasos de la pista: columna y ancho por fila (0x94A7),
;   sprites del despegue (0x94BF) y del aterrizaje (0x951F, 0x9527); y HISCORE
;   (0x9587: SCORE son sus cinco ultimas letras, 0x9589)
;   0x94a7..0x958e  (231 bytes)
DATA_pista_pasos:
	defb 00bh,002h,00bh,002h,00ah,004h,00ah,004h,009h,006h,009h,006h,008h,008h,008h,008h	; 94a7  ................
	defb 007h,00ah,007h,00ah,006h,00ch,006h,00ch,067h,048h,040h,00eh,067h,068h,044h,00eh	; 94b7  ........gH@.ghD.
	defb 000h,000h,000h,000h,000h,000h,000h,000h,077h,040h,040h,00eh,077h,070h,044h,00eh	; 94c7  ........w@@.wpD.
	defb 000h,000h,000h,000h,000h,000h,000h,000h,087h,038h,040h,00eh,087h,078h,044h,00eh	; 94d7  .........8@..xD.
	defb 000h,000h,000h,000h,000h,000h,000h,000h,097h,030h,040h,00eh,097h,080h,044h,00eh	; 94e7  .........0@...D.
	defb 000h,000h,000h,000h,000h,000h,000h,000h,0a7h,028h,040h,00eh,0a7h,088h,044h,00eh	; 94f7  .........(@...D.
	defb 000h,000h,000h,000h,000h,000h,000h,000h,0b7h,020h,040h,00eh,0b7h,090h,044h,00eh	; 9507  ......... @...D.
	defb 000h,000h,000h,000h,000h,000h,000h,000h,04fh,050h,040h,001h,04fh,060h,044h,001h	; 9517  ........OP@.O`D.
	defb 057h,050h,040h,00eh,057h,060h,044h,00eh,05fh,04ch,040h,00eh,05fh,064h,044h,00eh	; 9527  WP@.W`D._L@._dD.
	defb 067h,048h,040h,00eh,067h,068h,044h,00eh,06fh,044h,040h,00eh,06fh,06ch,044h,00eh	; 9537  gH@.ghD.oD@.olD.
	defb 077h,040h,040h,00eh,077h,070h,044h,00eh,07fh,03ch,040h,00eh,07fh,074h,044h,00eh	; 9547  w@@.wpD..<@..tD.
	defb 087h,038h,040h,00eh,087h,078h,044h,00eh,08fh,034h,040h,00eh,08fh,07ch,044h,00eh	; 9557  .8@..xD..4@..|D.
	defb 097h,030h,040h,00eh,097h,080h,044h,00eh,09fh,02ch,040h,00eh,09fh,084h,044h,00eh	; 9567  .0@...D..,@...D.
	defb 0a7h,028h,040h,00eh,0a7h,088h,044h,00eh,0afh,024h,040h,00eh,0afh,08ch,044h,00eh	; 9577  .(@...D..$@...D.
	defb 018h,019h,023h,013h,01fh,022h,015h	; 9587

; ======================================================================
; CODIGO 0x958e..0x9671  (227 bytes)
; ======================================================================


pantalla_casillas:		; La tabla de nombres en blanco y las casillas de la fase: 0x600 bytes de 0xA800 a los dibujos y de 0xB000 a los colores, en los tres tercios; y el sonido preparado
	call nombres_borra		;958e   ; en blanco
	ld de,00200h		;9591   ; los dibujos desde la casilla 0x40...
	call vram_a800		;9594
	ld de,00a00h		;9597   ; ...del segundo tercio
	call vram_a800		;959a
	ld de,01200h		;959d   ; ...y del tercero
	call vram_a800		;95a0
	ld de,02200h		;95a3   ; los colores, en los tres
	call vram_b000		;95a6
	ld de,02a00h		;95a9
	call vram_b000		;95ac
	ld de,03200h		;95af
	call vram_b000		;95b2
	jp sonido_prepara		;95b5
espera:		; Espera A cuadros (0xE011) con el sonido en marcha; en el titulo, el boton la corta (0xE046)
	ld (0e19ch),a		;95b8   ; cuantos
	xor a			;95bb   ; las cuentas a cero
	ld (0e010h),a		;95bc
	ld (0e011h),a		;95bf
espera_cuadro:
	ld a,(0e000h)		;95c2   ; jugando?
	and a			;95c5
	jr nz,espera_va		;95c6
	ld a,(0e046h)		;95c8   ; el boton?
	and a			;95cb
	ret nz			;95cc
espera_va:
	ld a,(0e010h)		;95cd   ; un cuadro?
	cp 001h		;95d0
	jr c,espera_cuadro		;95d2
	xor a			;95d4
	ld (0e010h),a		;95d5   ; a cero
	call sonido		;95d8   ; el sonido
	ld a,(0e19ch)		;95db   ; los que tocan
	ld b,a			;95de
	ld a,(0e011h)		;95df   ; los que van
	cp b			;95e2
	jr c,espera_cuadro		;95e3
	ret			;95e5
nave_cae:		; La nave tocada (0xE19B): el sonido parado, la musica 3; la nave parpadea (sus dibujos cada 4 cuadros) 160 cuadros; despues una vida menos y otra vez la fase (0x821F); sin vidas, GAME OVER (0x967A)
	call sonido_para		;95e6   ; el sonido parado
	ld a,(ix+001h)		;95e9   ; la nave: 6 arriba...
	sub 006h		;95ec
	ld (ix+001h),a		;95ee
	ld a,(ix+005h)		;95f1   ; ...y su segundo sprite 5 a la derecha
	add a,005h		;95f4
	ld (ix+005h),a		;95f6
	xor a			;95f9   ; la cuenta y 0xE19E a cero
	ld (0e012h),a		;95fa
	ld (0e19eh),a		;95fd
	ld (0e1b4h),a		;9600
	ld a,003h		;9603   ; la musica 3
	call musica_pide		;9605
	ld hl,0e170h		;9608   ; 0xE170, 16 bytes a cero
	ld b,010h		;960b
nave_cae_borra:
	ld (hl),000h		;960d
	inc hl			;960f
	djnz nave_cae_borra		;9610
nave_cae_cuadro:
	call cada_cuadro		;9612   ; lo de cada cuadro (0x82F2)
	ld a,(0e013h)		;9615   ; el dibujo: 0xE8 + 0, 4, 8 o 0xC
	and 00ch		;9618
	add a,0e8h		;961a
	ld (ix+002h),a		;961c
	ld (ix+006h),a		;961f
	ld a,(0e012h)		;9622   ; 160 cuadros?
	cp 0a0h		;9625
	jr c,nave_cae_cuadro		;9627
	ld a,(0e00bh)		;9629   ; las vidas
	and a			;962c   ; ninguna: GAME OVER
	jp z,game_over		;962d
	dec a			;9630   ; una menos
	ld (0e00bh),a		;9631
	call sonido_prepara		;9634   ; el sonido preparado
	call ram_borra		;9637   ; la RAM de la fase a cero
	jp fase_otra		;963a   ; otra vez
sprites_borra:		; Los atributos de los sprites (0xE100, 127 bytes) a cero y a la VRAM
	ld hl,0e100h		;963d
	ld b,07fh		;9640
L_9642:
	ld (hl),000h		;9642
	inc hl			;9644
	djnz L_9642		;9645
	call sprites_vram		;9647
	ret			;964a
game_over_pinta:		; GAME OVER (0x98FC) en la fila 7, columna 8, y 15 casillas en blanco (0x8C24) en la fila 8
	ld de,018e8h		;964b   ; la fila 7, columna 8
	ld hl,098fch		;964e   ; GAME OVER
	ld bc,00009h		;9651
	call 0005ch		;9654   ; LDIRVM
	ld de,01905h		;9657   ; la fila 8
	ld hl,08c24h		;965a   ; en blanco
	ld bc,0000fh		;965d
	call 0005ch		;9660
	ret			;9663
demo_pinta:		; DEMO PLAY (0x9671) en la fila 7, columna 8
	ld de,018e8h		;9664
	ld hl,09671h		;9667   ; DEMO PLAY
	ld bc,00009h		;966a
	call 0005ch		;966d
	ret			;9670

; ----------------------------------------------------------------------
; DATOS texto_demo: "DEMO PLAY" (casilla = letra - 0x30; 0x10 el espacio)
;   0x9671..0x967a  (9 bytes)
DATA_texto_demo:
	defb 014h,015h,01dh,01fh,010h,020h,01ch,011h,029h	; 9671  ..... ..)

; ======================================================================
; CODIGO 0x967a..0x9741  (199 bytes)
; ======================================================================


game_over:		; GAME OVER: el texto, la musica 2, 248 cuadros de espera; sin partida ni demostracion, al titulo (0x80B0)
	call game_over_pinta		;967a
	ld a,002h		;967d   ; la musica 2
	call musica_pide		;967f
	ld a,0f8h		;9682   ; 248 cuadros
	call espera		;9684
	xor a			;9687   ; sin demostracion...
	ld (0e048h),a		;9688
	ld (0e000h),a		;968b   ; ...sin partida...
	ld (0e046h),a		;968e   ; ...sin boton
	jp titulo		;9691   ; el titulo
aterriza:		; LANDING BONUS: el texto (0x9741) y dos sprites (dibujos 0xE0 y 0xE4) que llegan desde la derecha hasta el avion; cada cuadro, 10 puntos por cada unidad de combustible que queda (0xE1A0, el sonido A 4); despues la musica 4, 192 cuadros y la fase siguiente (0xE00A, 16 y vuelta a 0)
	call sonido_para		;9694   ; el sonido parado
	ld hl,09741h		;9697   ; LANDING BONUS...
	ld de,018e7h		;969a   ; ...en la fila 7, columna 7
	ld bc,0000dh		;969d
	call 0005ch		;96a0
	ld a,(ix+000h)		;96a3   ; la Y de la nave - 16...
	sub 010h		;96a6
	ld (ix+008h),a		;96a8   ; ...para los sprites 2 y 3
	ld (ix+00ch),a		;96ab
	ld (ix+009h),0b0h		;96ae   ; X 0xB0, dibujo 0xE0, color 5
	ld (ix+00ah),0e0h		;96b2
	ld (ix+00bh),005h		;96b6
	ld (ix+00dh),0b0h		;96ba   ; X 0xB0, dibujo 0xE4, color 6
	ld (ix+00eh),0e4h		;96be
	ld (ix+00fh),006h		;96c2
aterriza_cuadro:
	ld a,(0e011h)		;96c6   ; un cuadro
	cp 001h		;96c9
	jr c,aterriza_cuadro		;96cb
	xor a			;96cd
	ld (0e011h),a		;96ce
	call sprites_vram		;96d1   ; los sprites
	ld a,(0e1a0h)		;96d4   ; queda combustible?
	and a			;96d7
	jr z,aterriza_fin		;96d8
	dec a			;96da   ; una menos
	ld (0e1a0h),a		;96db
	call combustible_barra		;96de
	ld a,010h		;96e1   ; 10 puntos
	call puntos_suma		;96e3
	call marcador_pinta		;96e6   ; pintados
	ld a,004h		;96e9   ; el sonido A 4
	call sonido_a_pide		;96eb
	call sonido		;96ee
aterriza_llega:
	ld a,(ix+009h)		;96f1   ; los sprites 2 y 3...
	ld b,(ix+001h)		;96f4
	cp b			;96f7   ; ...hasta la nave
	jr c,aterriza_cuadro		;96f8
	dec (ix+009h)		;96fa   ; uno mas a la izquierda
	dec (ix+00dh)		;96fd
	jr aterriza_cuadro		;9700
aterriza_fin:
	ld a,(ix+009h)		;9702
	ld b,(ix+001h)		;9705
	cp b			;9708
	jr nc,aterriza_llega		;9709
	ld a,004h		;970b   ; la musica 4
	call musica_pide		;970d
aterriza_espera:
	ld a,(0e011h)		;9710   ; un cuadro
	cp 001h		;9713
	jr c,aterriza_espera		;9715
	xor a			;9717
	ld (0e011h),a		;9718
	ld a,(0e1a0h)		;971b   ; 0xE1A0 de cuenta
	inc a			;971e
	ld (0e1a0h),a		;971f
	cp 0c0h		;9722   ; 192?
	jr nc,L_972E		;9724
	call combustible_barra		;9726
	call sonido		;9729
	jr aterriza_espera		;972c
L_972E:
	ld a,(0e00ah)		;972e   ; la fase siguiente
	inc a			;9731
	ld (0e00ah),a		;9732
	cp 010h		;9735   ; la 16: otra vez la 0
	jp c,fase_otra		;9737
	xor a			;973a
	ld (0e00ah),a		;973b
	jp fase_otra		;973e

; ----------------------------------------------------------------------
; DATOS texto_aterriza: "LANDING BONUS"
;   0x9741..0x974e  (13 bytes)
DATA_texto_aterriza:
	defb 01ch,011h,01eh,014h,019h,01eh,017h,010h,012h,01fh,01eh,025h,023h	; 9741  ...........%#

; ======================================================================
; CODIGO 0x974e..0x9833  (229 bytes)
; ======================================================================


sonido_prepara:		; Lo del sonido a cero (0x975A) y 0xE083 = 0xE084 = 2
	call sonido_cero		;974e
	ld a,002h		;9751
	ld (0e084h),a		;9753
	ld (0e083h),a		;9756
	ret			;9759
sonido_cero:		; 0xE080-0xE082 y 0xE085-0xE087 a cero
	xor a			;975a
	ld (0e087h),a		;975b   ; el sonido...
	ld (0e086h),a		;975e
	ld (0e085h),a		;9761
	ld (0e080h),a		;9764   ; ...a cero
	ld (0e081h),a		;9767
	ld (0e082h),a		;976a
	ret			;976d
puntos_cero:		; Los puntos (0xE00C-0xE00E, BCD) a cero
	xor a			;976e
	ld (0e00eh),a		;976f   ; las dos ultimas cifras...
	ld (0e00dh),a		;9772   ; ...las centenas...
	ld (0e00ch),a		;9775   ; ...y las decenas de millar
	ret			;9778
vidas_pinta:		; Las vidas (0xE00B) en la tabla de nombres (0x18DD), en una cifra
	ld a,(0e00bh)		;9779
	ld hl,018ddh		;977c   ; la fila 6, columna 29
	call 0004dh		;977f   ; WRTVRM
	ret			;9782
marcador_pinta:		; Las seis cifras de los puntos (0xE001) en 0x189A y las del record (0xE089) en 0x185A
	ld hl,0e001h		;9783
	ld de,0189ah		;9786   ; la fila 4, columna 26
	ld bc,00006h		;9789   ; seis cifras
	call 0005ch		;978c   ; LDIRVM
	ld hl,0e089h		;978f   ; el record
	ld de,0185ah		;9792   ; la fila 2, columna 26
	ld bc,00006h		;9795
	jp 0005ch		;9798
puntos_suma:		; Los puntos + A (BCD) en las dos ultimas cifras (0xE00E); con acarreo, 0x97A8 con 1
	ld b,a			;979b
	ld a,(0e00eh)		;979c   ; las dos ultimas
	add a,b			;979f
	daa			;97a0   ; en BCD
	ld (0e00eh),a		;97a1
	jr nc,puntos_pinta		;97a4   ; sin acarreo: a pintar
	ld a,001h		;97a6   ; acarreo: 1 a las centenas
puntos_suma_cien:		; Los puntos + A centenas (0xE00D, BCD); con acarreo, una decena de millar mas (0xE00C) y, al pasar de impar a par (cada 20.000), una vida mas hasta 9
	ld b,a			;97a8
	ld a,(0e00dh)		;97a9   ; las centenas
	add a,b			;97ac
	daa			;97ad   ; en BCD
	ld (0e00dh),a		;97ae
	jr nc,puntos_pinta		;97b1   ; sin acarreo: a pintar
	ld a,(0e00ch)		;97b3   ; las decenas de millar
	bit 0,a		;97b6   ; impares?
	jr z,puntos_suma_mil		;97b8
	ld a,(0e00bh)		;97ba   ; las vidas...
	cp 009h		;97bd   ; ...hasta 9
	jr nc,puntos_suma_mil		;97bf
	inc a			;97c1   ; una mas
	ld (0e00bh),a		;97c2
	push hl			;97c5
	call vidas_pinta		;97c6   ; pintadas
	pop hl			;97c9
puntos_suma_mil:
	ld a,001h		;97ca   ; + 1...
	ld b,a			;97cc
	ld a,(0e00ch)		;97cd
	add a,b			;97d0
	daa			;97d1   ; ...en BCD
	ld (0e00ch),a		;97d2
	jr nc,puntos_pinta		;97d5
puntos_pinta:		; Las cifras de los puntos y el record
	call puntos_cifras		;97d7   ; las cifras
	call record_mira		;97da   ; el record
	ret			;97dd
puntos_cifras:		; Los tres bytes BCD de los puntos (0xE00C) en seis cifras (0xE001), una por byte
	ld hl,0e001h		;97de   ; las cifras
	ld de,0e00ch		;97e1   ; los bytes BCD
	ld b,003h		;97e4   ; tres
cifras_bcd:		; B bytes BCD de DE a cifras en HL (dos por byte)
	ld a,(de)			;97e6   ; un byte
	ld c,a			;97e7
	and 0f0h		;97e8   ; la cifra alta
	rrca			;97ea
	rrca			;97eb
	rrca			;97ec
	rrca			;97ed
	ld (hl),a			;97ee   ; apuntada
	inc hl			;97ef
	ld a,c			;97f0   ; la baja
	and 00fh		;97f1
	ld (hl),a			;97f3
	inc hl			;97f4
	inc de			;97f5   ; el siguiente
	djnz cifras_bcd		;97f6
	ret			;97f8
record_mira:		; Si los puntos (0xE00C) pasan del record (0xE08F), son el record nuevo y sus cifras (0xE089)
	ld de,0e08fh		;97f9   ; el record
	ld hl,0e00ch		;97fc   ; los puntos
	ld a,(de)			;97ff   ; el byte alto...
	ld b,a			;9800
	ld a,(hl)			;9801   ; ...contra el de los puntos
	cp b			;9802
	ret c			;9803   ; menor: nada
	jr nz,record_nuevo_3		;9804   ; mayor: record nuevo
	inc de			;9806   ; iguales: el siguiente
	inc hl			;9807
	ld a,(de)			;9808
	ld b,a			;9809
	ld a,(hl)			;980a
	cp b			;980b
	ret c			;980c   ; menor: nada
	jr nz,record_nuevo_2		;980d
	inc de			;980f
	inc hl			;9810
	ld a,(de)			;9811
	ld b,a			;9812
	ld a,(hl)			;9813
	cp b			;9814
	ret c			;9815   ; menor: nada
	jr record_nuevo		;9816
record_nuevo_3:
	inc de			;9818
	inc hl			;9819
record_nuevo_2:
	inc de			;981a
	inc hl			;981b
record_nuevo:		; Los tres bytes, hacia atras
	ld bc,00003h		;981c   ; tres bytes...
	lddr		;981f   ; ...hacia atras
	ld hl,0e089h		;9821   ; sus cifras
	ld de,0e08fh		;9824
	ld b,003h		;9827
	jr cifras_bcd		;9829
ram_borra:		; 0xE100-0xEEFF (0xE00 bytes) a cero
	ld hl,0e100h		;982b   ; desde 0xE100
	ld bc,00e00h		;982e   ; 0xE00 bytes
	jr $+8		;9831   ; a 0x9839 (los 6 bytes de 0x9833 no se ejecutan)

; ----------------------------------------------------------------------
; DATOS ram_borra_hueco: Seis bytes que salta el "jr" de 0x9831: "ld hl,0xE100
;   / ld bc,0x0E00" otra vez, las mismas dos instrucciones de antes (sin
;   ejecutar)
;   0x9833..0x9839  (6 bytes)
DATA_ram_borra_hueco:
	defb 021h,000h,0e1h,001h,000h,00eh	; 9833

; ======================================================================
; CODIGO 0x9839..0x9886  (77 bytes)
; ======================================================================


ram_borra_byte:
	ld (hl),000h		;9839   ; a cero
	inc hl			;983b
	dec c			;983c
	jr nz,ram_borra_byte		;983d
	djnz ram_borra_byte		;983f
	ret			;9841
nombres_borra:		; La tabla de nombres (0x1800, 0x300) a la casilla 0x10 y 0x963D
	ld a,010h		;9842   ; la casilla 0x10
	ld hl,01800h		;9844   ; la tabla de nombres
	ld bc,00300h		;9847
	call 00056h		;984a   ; FILVRM
	jp sprites_borra		;984d
letras_cifras:		; La fuente de la BIOS desde el "0" (0x1D3F, 48 letras) a la VRAM DE
	ld hl,01d3fh		;9850   ; desde el "0"
	ld bc,00180h		;9853   ; 0x180 bytes
	jp 0005ch		;9856
letras_signos:		; La fuente de la BIOS desde el espacio (0x1CBF, 16 signos) a la VRAM DE
	ld hl,01cbfh		;9859   ; desde el espacio
	ld bc,00080h		;985c
	jp 0005ch		;985f
vram_a800:		; 0x600 bytes de 0xA800 a la VRAM DE
	ld hl,0a800h		;9862
	ld bc,00600h		;9865
	jp 0005ch		;9868
vram_b000:		; 0x600 bytes de 0xB000 a la VRAM DE
	ld hl,0b000h		;986b
	ld bc,00600h		;986e
	jp 0005ch		;9871
vram_ocho:		; Ocho bytes de A en la VRAM HL
	ld bc,00008h		;9874
	jp 00056h		;9877   ; FILVRM
sprites_dibujos:		; Los dibujos de los sprites: 0x800 bytes de 0xB800 a 0x3800
	ld de,03800h		;987a
	ld hl,0b800h		;987d
	ld bc,00800h		;9880
	jp 0005ch		;9883

; ----------------------------------------------------------------------
; DATOS vram_ae00: Codigo que nada llama (ningun salto ni puntero): "ld
;   hl,0xAE00 / ld bc,0x0160 / jp LDIRVM", 0x160 bytes de 0xAE00 a la VRAM DE
;   0x9886..0x988f  (9 bytes)
DATA_vram_ae00:
	defb 021h,000h,0aeh,001h,060h,001h,0c3h,05ch,000h	; 9886  !...`..\.

; ======================================================================
; CODIGO 0x988f..0x98b0  (33 bytes)
; ======================================================================


sprites_vram:		; Los atributos de los sprites (0xE100, 128 bytes) a la VRAM (0x1B00)
	ld de,01b00h		;988f   ; la tabla de atributos
	ld hl,0e100h		;9892   ; desde 0xE100
	ld bc,00080h		;9895
	jp 0005ch		;9898   ; LDIRVM
sonido_para:		; 0xA3A9, 0xE2BD-0xE2C2 a cero, 0xE088 = 0xFF y 0xA340
	call canales_borra		;989b
	ld hl,0e2bdh		;989e   ; seis bytes
	ld b,006h		;98a1
L_98A3:
	ld (hl),000h		;98a3
	inc hl			;98a5
	djnz L_98A3		;98a6
	ld a,0ffh		;98a8   ; 0xE088 = 0xFF
	ld (0e088h),a		;98aa
	jp mezclador		;98ad

; ----------------------------------------------------------------------
; DATOS textos: Los textos (casilla = letra - 0x30; 0x10 el espacio): TAKE
;   OFF:BONUS 1000PTS. (0x98B0), PUSH TRIGGER OR SPACE (0x98C7), COPYRIGHT
;   1985 (c) CASIO (0x98DC), "TIME :OVER" (0x98F2, sin usar), GAME OVER
;   (0x98FC); las casillas de las dos aguilas del titulo (0x9905, 0x990E, tres
;   filas de 3), el logotipo EAGLE FIGHTER (0x9917, seis filas de 10) y CASIO
;   (0x9953)
;   0x98b0..0x996d  (189 bytes)
DATA_textos:
	defb 024h,011h,01bh,015h,010h,01fh,016h,016h,00ah,012h,01fh,01eh,025h,023h,010h,001h	; 98b0  $...........%#..
	defb 000h,000h,000h,020h,024h,023h,03eh,020h,025h,023h,018h,010h,024h,022h,019h,017h	; 98c0  ... $#> %#..$"..
	defb 017h,015h,022h,010h,01fh,022h,010h,023h,020h,011h,013h,015h,013h,01fh,020h,029h	; 98d0  .."..".# ..... )
	defb 022h,019h,017h,018h,024h,010h,001h,009h,008h,005h,010h,095h,010h,013h,011h,023h	; 98e0  "...$..........#
	defb 019h,01fh,024h,019h,01dh,015h,010h,00ah,01fh,026h,015h,022h,017h,011h,01dh,015h	; 98f0  ..$......&."....
	defb 010h,01fh,026h,015h,022h,010h,077h,078h,079h,07ah,07bh,07ch,07dh,07eh,0bah,0bbh	; 9900  ..&.".wxyz{|}~..
	defb 010h,0bch,0bdh,0beh,0bfh,0c0h,0c1h,040h,041h,042h,043h,044h,045h,046h,047h,048h	; 9910  .......@ABCDEFGH
	defb 049h,04ah,04bh,04ch,04dh,04eh,04fh,050h,051h,052h,053h,054h,055h,056h,057h,058h	; 9920  IJKLMNOPQRSTUVWX
	defb 059h,05ah,05bh,05ch,05dh,05eh,05fh,060h,061h,062h,063h,064h,065h,066h,067h,010h	; 9930  YZ[\]^_`abcdefg.
	defb 068h,069h,06ah,06bh,06ch,06dh,06eh,06fh,070h,010h,010h,071h,072h,073h,074h,075h	; 9940  hijklmnop..qrstu
	defb 076h,010h,010h,084h,085h,010h,086h,087h,010h,088h,089h,08ah,08bh,084h,08ch,08dh	; 9950  v...............
	defb 08eh,010h,08fh,090h,010h,091h,092h,08ah,08bh,08dh,093h,010h,094h	; 9960  .............

; ======================================================================
; CODIGO 0x996d..0x9a8d  (288 bytes)
; ======================================================================


interrupcion:		; La interrupcion (H.TIMI): 16 cuentas de cuadros (0xE010-0xE01F) una mas; jugando (0xE000), los botones (0xE040, 0xE044) y la palanca (0xE198: el mando 0 + el 1); en la demostracion (0xE048), la palanca la pone el juego
	ld hl,0e010h		;996d   ; las 16 cuentas
	ld b,010h		;9970
L_9972:
	inc (hl)			;9972   ; una mas
	inc hl			;9973
	djnz L_9972		;9974
	ld a,(0e000h)		;9976   ; jugando?
	and a			;9979
	jr z,interrupcion_demo		;997a
	ld de,0e040h		;997c   ; el boton 1 del mando: 0xE040 recien pulsado, 0xE041 sostenido
	ld hl,0e041h		;997f
	call boton_lee		;9982
	ld de,0e044h		;9985   ; la barra: 0xE044, 0xE045
	ld hl,0e045h		;9988
	call barra_lee		;998b
palanca_lee:
	xor a			;998e   ; GTSTCK 0: los cursores
	call 000d5h		;998f
	ld (0e199h),a		;9992
	ld a,001h		;9995   ; GTSTCK 1: el mando
	call 000d5h		;9997
	ld c,a			;999a
	ld a,(0e199h)		;999b
	add a,c			;999e   ; los dos sumados
	ld (0e198h),a		;999f   ; la palanca
	ret			;99a2
interrupcion_demo:		; Sin jugar: en el titulo, el boton o la barra (0x99F3); en la demostracion, la palanca: arriba hasta que la nave sube (0xE19E 0x5E), luego 5; despues, cada 16 cuadros una al azar (R) y el disparo cada 6
	ld a,(0e048h)		;99a3   ; la demostracion?
	and a			;99a6
	jr nz,interrupcion_demo_va		;99a7
	call empieza_mira		;99a9   ; el titulo: el boton o la barra
	jr palanca_lee		;99ac
interrupcion_demo_va:
	call empieza_mira		;99ae
	ld a,(0e19eh)		;99b1   ; 0xE19E: 0x5E?
	cp 05eh		;99b4
	jr nc,interrupcion_demo_5		;99b6
	ld a,001h		;99b8   ; arriba
	ld (0e198h),a		;99ba
	ret			;99bd
interrupcion_demo_5:
	ld a,(0e19fh)		;99be   ; 0xE19F?
	cp 000h		;99c1
	jr nz,interrupcion_demo_tiro		;99c3
	ld a,005h		;99c5   ; la palanca 5 y el boton
	ld (0e198h),a		;99c7
	ld (0e040h),a		;99ca
	ret			;99cd
interrupcion_demo_tiro:
	ld a,(0e01bh)		;99ce   ; cada 6 cuadros...
	cp 006h		;99d1
	jr c,interrupcion_demo_azar		;99d3
	xor a			;99d5
	ld (0e01bh),a		;99d6
	inc a			;99d9   ; ...el boton
	ld (0e040h),a		;99da
interrupcion_demo_azar:
	ld a,(0e01ah)		;99dd   ; cada 16 cuadros...
	cp 010h		;99e0
	ret c			;99e2
	xor a			;99e3
	ld (0e01ah),a		;99e4
	ld a,r		;99e7   ; ...una palanca al azar (R / 16)
	and 0f0h		;99e9
	rrca			;99eb
	rrca			;99ec
	rrca			;99ed
	rrca			;99ee
	ld (0e198h),a		;99ef
	ret			;99f2
empieza_mira:		; El boton o la barra en el titulo: 0xE046 si se pulsa uno de los dos
	ld de,0e046h		;99f3   ; la barra
	ld hl,0e045h		;99f6
	call barra_lee		;99f9
	ld a,(de)			;99fc   ; guardada
	ld (0e199h),a		;99fd
	ld hl,0e041h		;9a00   ; el boton
	call boton_lee		;9a03
	ld a,(de)			;9a06
	ld b,a			;9a07
	ld a,(0e199h)		;9a08   ; uno de los dos
	or b			;9a0b
	ld (de),a			;9a0c
	ret			;9a0d
boton_lee:		; GTTRIG 1 (el boton del mando): (DE) = 1 y (HL) = 1 si se acaba de pulsar; suelto, (HL) = 0
	ld a,001h		;9a0e
	call 000d8h		;9a10   ; GTTRIG
	and a			;9a13
	jr nz,boton_pulsado		;9a14   ; pulsado?
boton_suelto:
	ld (hl),000h		;9a16
	ret			;9a18
boton_pulsado:
	ld a,(hl)			;9a19   ; ya sostenido?
	and a			;9a1a
	ret nz			;9a1b
	inc a			;9a1c
	ld (hl),a			;9a1d   ; sostenido
	ld (de),a			;9a1e   ; recien pulsado
	ret			;9a1f
barra_lee:		; La barra (fila 8, bit 0): lo mismo
	ld a,008h		;9a20
	call 00141h		;9a22   ; SNSMAT
	rrca			;9a25   ; el bit 0: pulsada = 0
	jr nc,boton_pulsado		;9a26
	jr boton_suelto		;9a28
titulo_avion:		; En el titulo, cada 8 cuadros: el avion de cuatro filas de casillas (0x9A8D, 17 por fila) entra por la derecha una columna mas (0xE1C1), en las filas 12-15, con el sonido 7 de B y C; a 24 columnas para y se calla
	ld hl,00000h		;9a2a   ; HL = - (0xE1C1 + 1)...
	ld a,(0e1c1h)		;9a2d
	ld b,a			;9a30   ; ...las columnas que ya ha entrado
	inc b			;9a31
L_9A32:
	dec hl			;9a32
	djnz L_9A32		;9a33
	push hl			;9a35   ; la fila 12, desde la derecha
	ld de,01980h		;9a36
	add hl,de			;9a39
	ex de,hl			;9a3a
	ld hl,09a8dh		;9a3b   ; la primera fila del avion
	call titulo_avion_fila		;9a3e
	pop hl			;9a41
	push hl			;9a42
	ld de,019a0h		;9a43   ; la fila 13
	add hl,de			;9a46
	ex de,hl			;9a47
	ld hl,09a9eh		;9a48   ; la segunda
	call titulo_avion_fila		;9a4b
	pop hl			;9a4e
	push hl			;9a4f
	ld de,019c0h		;9a50   ; la fila 14
	add hl,de			;9a53
	ex de,hl			;9a54
	ld hl,09aafh		;9a55   ; la tercera
	call titulo_avion_fila		;9a58
	pop hl			;9a5b
	ld de,019e0h		;9a5c   ; la fila 15
	add hl,de			;9a5f
	ex de,hl			;9a60
	ld hl,09ac0h		;9a61   ; la cuarta
	call titulo_avion_fila		;9a64
	ld a,(0e1c1h)		;9a67   ; una columna mas...
	inc a			;9a6a
	cp 018h		;9a6b   ; ...hasta 24
	jr nc,titulo_avion_para		;9a6d
	ld (0e1c1h),a		;9a6f
	ld a,007h		;9a72   ; el sonido 7 de B y C
	call sonido_bc_pide		;9a74
	ret			;9a77
titulo_avion_para:
	call sonido_para		;9a78   ; el sonido parado
	ret			;9a7b
titulo_avion_fila:		; Una fila del avion: tantas casillas como columnas ha entrado (como mucho 17), de HL a la VRAM DE
	ld a,(0e1c1h)		;9a7c   ; las columnas + 1...
	inc a			;9a7f
	cp 012h		;9a80   ; ...17 como mucho
	jr c,L_9A86		;9a82
	ld a,011h		;9a84
L_9A86:
	ld c,a			;9a86
	ld b,000h		;9a87
	call 0005ch		;9a89   ; LDIRVM
	ret			;9a8c

; ----------------------------------------------------------------------
; DATOS titulo_avion_casillas: El avion del titulo: cuatro filas de 17
;   casillas (0x10 en blanco, 0x96-0xB9)
;   0x9a8d..0x9ad1  (68 bytes)
DATA_titulo_avion_casillas:
	defb 010h,010h,010h,010h,010h,010h,010h,010h,010h,010h,010h,010h,010h,010h,0b2h,0b6h	; 9a8d  ................
	defb 010h,010h,010h,010h,010h,010h,010h,010h,010h,010h,010h,097h,0aah,0adh,0afh,0b3h	; 9a9d  ................
	defb 0b7h,010h,010h,097h,099h,09bh,09dh,09fh,0a1h,0a1h,0a4h,0a6h,0a8h,0abh,0abh,0b0h	; 9aad  ................
	defb 0b4h,0b8h,010h,096h,098h,09ah,09ch,09eh,0a0h,0a2h,0a3h,0a5h,0a7h,0a9h,0ach,0aeh	; 9abd  ................
	defb 0b1h,0b5h,0b9h,010h	; 9acd

; ----------------------------------------------------------------------
; DATOS relleno_9ad1: Bytes sin orden (restos en la EPROM) hasta el motor de
;   sonido: ningun puntero ni tabla llega aqui; su lectura esta por medir
;   0x9ad1..0xa000  (1327 bytes)
DATA_relleno_9ad1:
	defb 008h,0dfh,088h,0dch,000h,0dch,008h,0ddh,048h,0dch,008h,0ffh,080h,0dfh,040h,0a8h	; 9ad1  ........H.....@.
	defb 0d8h,0e8h,089h,008h,0bbh,0e1h,089h,009h,0e4h,0a8h,088h,028h,090h,0a8h,09ah,0b6h	; 9ae1  ...........(....
	defb 0c8h,09bh,0a8h,0a3h,0b0h,089h,008h,08ch,089h,081h,0e0h,0abh,0a8h,0a4h,0a8h,002h	; 9af1  ................
	defb 0d3h,00ah,0b6h,002h,0d7h,000h,0d7h,002h,0f7h,002h,0d7h,042h,0fbh,0c0h,0b7h,0dfh	; 9b01  ...........B....
	defb 042h,0fbh,001h,0f3h,000h,0f3h,040h,0ffh,002h,0bfh,008h,0dfh,000h,0b7h,022h,033h	; 9b11  B.....@......."3
	defb 0a7h,088h,0a6h,02ah,0abh,038h,02fh,056h,0adh,068h,0a5h,030h,0eeh,0aah,0aeh,01ah	; 9b21  ...*.8/V.h.0....
	defb 069h,0e6h,01ah,02eh,008h,00ch,028h,06fh,008h,08fh,079h,0aeh,02ah,0a0h,062h,020h	; 9b31  i.....(o..y.*.b 
	defb 0ffh,002h,0ffh,000h,0f3h,010h,0b5h,000h,0ffh,000h,077h,020h,0f7h,028h,0b0h,0fbh	; 9b41  ..........w .(..
	defb 030h,0f7h,010h,0f7h,000h,0ffh,030h,0feh,020h,0bbh,020h,0ffh,020h,0f1h,008h,0b8h	; 9b51  0.....0. . . ...
	defb 0a8h,002h,0ach,06ah,08fh,06ah,0a0h,022h,0c8h,0aah,02ah,050h,0aeh,068h,0a2h,0bfh	; 9b61  ...j.j."..*P.h..
	defb 07ah,089h,02ah,0aah,062h,02dh,048h,0abh,020h,02ch,0a8h,0a8h,028h,08ah,020h,000h	; 9b71  z.*.b-H. ,..(. .
	defb 0fdh,020h,0f7h,000h,0fdh,000h,0ddh,020h,0fdh,000h,0f7h,020h,0f7h,020h,0ddh,0ffh	; 9b81  . ..... ... . ..
	defb 000h,0e4h,020h,0f5h,000h,0dfh,020h,0d5h,000h,0ddh,020h,0d7h,020h,0fdh,000h,000h	; 9b91  .. ... ... . ...
	defb 083h,020h,088h,000h,0e9h,088h,0c2h,000h,091h,008h,0b8h,000h,0abh,0a8h,08dh,0bah	; 9ba1  . ..............
	defb 080h,082h,000h,088h,000h,087h,008h,0ach,000h,041h,000h,0adh,000h,0e5h,080h,000h	; 9bb1  .........A......
	defb 0dfh,000h,0d9h,000h,0d7h,000h,0dfh,000h,0ddh,008h,097h,000h,0d5h,000h,0dch,0dfh	; 9bc1  ................
	defb 000h,0dfh,000h,0dfh,000h,0cfh,000h,0d5h,000h,0ffh,080h,0ddh,000h,0dfh,000h,020h	; 9bd1  ............... 
	defb 0f1h,000h,0cfh,000h,0d9h,024h,0cdh,080h,09dh,080h,080h,000h,0b9h,000h,0e1h,0dbh	; 9be1  .....$..........
	defb 080h,08dh,080h,0fdh,008h,0cch,0a0h,0bch,000h,09dh,020h,0f9h,000h,094h,088h,020h	; 9bf1  .......... .... 
	defb 0f5h,030h,0bch,020h,0fdh,000h,0e4h,000h,0f5h,000h,0f5h,000h,0e4h,000h,0adh,0edh	; 9c01  .0. ............
	defb 010h,0a1h,020h,0fdh,020h,0b4h,030h,0e5h,080h,0fch,020h,0f9h,000h,0bdh,080h,020h	; 9c11  .. . .0... .... 
	defb 0aah,002h,002h,000h,00eh,028h,08ah,020h,088h,008h,0a0h,008h,026h,008h,000h,0a1h	; 9c21  .....(. ....&...
	defb 000h,02dh,028h,08ah,020h,0a2h,000h,011h,020h,0bbh,020h,082h,020h,023h,000h,000h	; 9c31  .-(. ... . . #..
	defb 0fah,010h,0eah,010h,012h,010h,0cfh,000h,09fh,010h,0c0h,010h,0f9h,000h,0f6h,0ffh	; 9c41  ................
	defb 000h,077h,000h,0d6h,000h,0dfh,010h,0e1h,000h,06bh,000h,09fh,000h,0cfh,000h,000h	; 9c51  .w.......k......
	defb 090h,000h,088h,040h,091h,020h,0aah,020h,0fbh,000h,0b0h,028h,008h,030h,0b4h,0b6h	; 9c61  ...@. . ...(.0..
	defb 020h,094h,008h,0a8h,028h,026h,010h,024h,018h,0b5h,068h,02ah,000h,0a6h,000h,000h	; 9c71   ...(&.$..h*....
	defb 0efh,0c8h,0fdh,088h,0fdh,020h,0f5h,020h,0efh,020h,0ddh,021h,0fdh,020h,0d7h,0f5h	; 9c81  ..... . . .!. ..
	defb 0a0h,0a7h,080h,0e5h,000h,0cdh,000h,0fdh,028h,0edh,000h,0fdh,008h,0edh,020h,0f9h	; 9c91  ........(..... .
	defb 0abh,0a0h,08dh,021h,0d7h,0c8h,09eh,0c0h,08dh,0d1h,00bh,099h,08dh,00dh,029h,0fdh	; 9ca1  ...!..........).
	defb 002h,085h,069h,091h,088h,04dh,0a2h,08bh,028h,0c9h,0e8h,0a5h,088h,08fh,019h,020h	; 9cb1  ..i..M..(...... 
	defb 0ddh,0e0h,0e7h,080h,0fdh,000h,0edh,020h,0f7h,0e0h,0f7h,080h,0b5h,000h,0c5h,0fdh	; 9cc1  ....... ........
	defb 000h,0f5h,0a0h,0f5h,000h,0fdh,020h,0ffh,040h,0efh,020h,0ddh,0a0h,0f4h,000h,0a8h	; 9cd1  ...... .@. .....
	defb 0fdh,0f0h,091h,014h,07bh,038h,058h,09ah,0d5h,0c0h,0dch,0b8h,0dch,028h,0b5h,0fch	; 9ce1  ....{8X......(..
	defb 030h,0d8h,0fch,0f4h,0b8h,0f0h,0f0h,0d1h,010h,090h,038h,097h,0b8h,0bdh,0b0h,038h	; 9cf1  0.........8....8
	defb 0ffh,030h,0aeh,028h,0bfh,018h,0e3h,038h,0ffh,03ah,0efh,030h,0feh,02ah,03ah,07eh	; 9d01  .0.(...8.:.0.*:~
	defb 02ah,0feh,008h,0ffh,028h,0abh,00ah,0feh,028h,07bh,028h,0ffh,028h,06fh,008h,03ah	; 9d11  *...(...({(.(o.:
	defb 039h,078h,002h,078h,0c8h,079h,06eh,078h,08bh,05ch,0a6h,020h,022h,0aah,0a9h,0bdh	; 9d21  9x.x.ynx.\. "...
	defb 078h,088h,079h,0aah,028h,0aah,068h,08bh,038h,0abh,01ah,08ah,020h,0aah,03ah,008h	; 9d31  x.y.(.h.8... .:.
	defb 0bfh,00ah,02fh,008h,057h,00ah,01fh,008h,09fh,00ah,06bh,008h,0dfh,008h,0bfh,03fh	; 9d41  ../.W.....k....?
	defb 008h,0feh,000h,0bfh,008h,0bfh,002h,0ffh,020h,03bh,00ah,07fh,008h,0ffh,008h,07ah	; 9d51  ........ ;.....z
	defb 0abh,068h,0afh,039h,0abh,0a8h,0abh,028h,027h,068h,089h,020h,0bbh,068h,098h,0e9h	; 9d61  .h.9...('h. .h..
	defb 028h,0aeh,02ah,0afh,020h,08bh,02ah,0abh,022h,03bh,06ah,009h,068h,0abh,068h,0a0h	; 9d71  (.*. .*.";j.h.h.
	defb 0f7h,0a0h,0fdh,000h,0d7h,080h,0f5h,000h,0f7h,0e0h,0f4h,080h,0fdh,0a8h,0ffh,0efh	; 9d81  ................
	defb 0a0h,0bdh,0a0h,0ffh,020h,0f5h,020h,0fdh,000h,0fdh,0a0h,0f7h,080h,0e7h,080h,0a8h	; 9d91  .... . .........
	defb 0e9h,0a9h,0a8h,0c8h,0edh,0e8h,098h,0a8h,0e1h,0e9h,0a1h,031h,0c4h,080h,080h,0e6h	; 9da1  ...........1....
	defb 008h,088h,0a1h,0edh,028h,0a8h,021h,0b9h,02ah,0c8h,0c0h,0e7h,080h,0c8h,0e8h,000h	; 9db1  ....(.!.*.......
	defb 0dfh,080h,0d7h,000h,0dfh,008h,0d7h,000h,087h,000h,0ffh,001h,0ddh,000h,0e7h,0dfh	; 9dc1  ................
	defb 000h,0d7h,000h,0dfh,000h,0cfh,000h,0d7h,000h,093h,000h,0bfh,000h,09fh,008h,092h	; 9dd1  ................
	defb 0edh,07bh,0fch,038h,0f4h,0f9h,0cch,08ah,0ffh,051h,0e6h,0b8h,0fdh,0c9h,038h,0c9h	; 9de1  .{.8.....Q....8.
	defb 025h,0ech,048h,0dah,048h,0b7h,0c1h,081h,048h,0c6h,0cah,0d5h,0ach,0e5h,0a8h,020h	; 9df1  %.H.H...H...... 
	defb 0b7h,000h,033h,000h,0ffh,000h,0d0h,000h,0d7h,000h,0b9h,000h,0ffh,020h,0c7h,0fbh	; 9e01  ..3.......... ..
	defb 000h,05bh,000h,0eeh,000h,0f3h,000h,0ffh,000h,0f2h,008h,03bh,000h,09bh,000h,028h	; 9e11  .[.........;...(
	defb 08bh,038h,0abh,068h,0a1h,06ah,082h,04bh,082h,07ah,02ah,032h,01bh,028h,0aah,0a9h	; 9e21  .8.h.j.K.z*2.(..
	defb 022h,062h,0b8h,002h,068h,0abh,020h,0d3h,022h,0eah,03ah,0f2h,033h,0feh,020h,00ah	; 9e31  "b..h. .".:.3. .
	defb 0ffh,06ah,0ffh,022h,0efh,07ah,0ffh,02ah,0efh,010h,0bbh,028h,0ffh,01ah,0efh,0f7h	; 9e41  .j.".z.*...(....
	defb 028h,0f7h,040h,0ffh,022h,0fbh,02ah,0dfh,060h,0fbh,068h,0ffh,02ah,0afh,05ah,07bh	; 9e51  (.@.".*.`.h.*.Z{
	defb 0bbh,04bh,0aah,078h,0bbh,0fah,0a9h,060h,08eh,03ah,02ah,062h,0aah,039h,028h,0efh	; 9e61  .K.x...`.:*b.9(.
	defb 040h,0aah,03ah,0bbh,02ah,01ah,028h,0bbh,02ah,0abh,039h,0aah,04ah,08ah,02ah,000h	; 9e71  @.:.*.(.*.9.J.*.
	defb 0ddh,0a2h,0f5h,081h,0f7h,0c1h,0f1h,0a8h,0f7h,021h,0e7h,080h,0e7h,0a0h,0feh,0f7h	; 9e81  .........!......
	defb 000h,0d7h,080h,0ffh,003h,0ddh,000h,0f7h,080h,0f7h,0a8h,0f7h,002h,0d7h,000h,068h	; 9e91  ...............h
	defb 0ddh,0a8h,0b9h,090h,0c7h,0a8h,089h,060h,089h,0c0h,0cch,0c8h,0fch,0a0h,0cch,0cch	; 9ea1  .......`........
	defb 0a0h,094h,088h,0a1h,0e1h,090h,038h,0a5h,0a8h,090h,0f8h,0cch,0a1h,0e1h,0a2h,008h	; 9eb1  ......8.........
	defb 0fdh,040h,05dh,008h,0ddh,008h,05dh,000h,0fdh,080h,0ddh,000h,0fdh,008h,09dh,0fdh	; 9ec1  .@]...].........
	defb 008h,05dh,008h,0dfh,008h,0ddh,008h,0dfh,000h,0dfh,008h,0fdh,008h,0edh,000h,0a0h	; 9ed1  .]..............
	defb 09ch,0a9h,083h,0a8h,08dh,099h,085h,0a8h,0adh,0eah,084h,08ah,0abh,082h,08ch,0c9h	; 9ee1  ................
	defb 080h,005h,04ah,0fbh,00bh,085h,00ah,088h,0e8h,0cbh,089h,0cdh,081h,08fh,0a9h,00ah	; 9ef1  ..J.............
	defb 0ffh,028h,0eah,040h,0bfh,008h,0fah,06ah,07fh,02ah,0b6h,062h,0bfh,04ah,0bfh,0bfh	; 9f01  .(.@...j.*.b.J..
	defb 028h,07eh,022h,0ffh,028h,03fh,048h,03fh,02ah,0ffh,028h,0ffh,020h,0efh,048h,022h	; 9f11  (~".(?H?*.(. .H"
	defb 0ach,0a0h,0aeh,028h,021h,068h,0aah,048h,0adh,068h,026h,0a2h,09ch,042h,0aah,0aah	; 9f21  ...(!h.H.h&..B..
	defb 068h,0beh,0a8h,0ach,068h,02ah,02ah,00eh,002h,02fh,02ah,0a9h,018h,0ach,04ah,008h	; 9f31  h...h**../*...J.
	defb 0dfh,018h,0fch,038h,0dfh,018h,0afh,008h,0ffh,008h,0f7h,018h,0deh,008h,0bfh,0fdh	; 9f41  ...8............
	defb 000h,0fbh,008h,0ffh,000h,0ddh,000h,0eah,008h,0efh,018h,0ffh,008h,07fh,008h,00ah	; 9f51  ................
	defb 0aah,03ah,02ah,04ah,0abh,06bh,0aeh,06ah,0aah,0dah,0aah,038h,0aeh,026h,0a8h,0abh	; 9f61  .:*J.k.j...8.&..
	defb 02ah,0c9h,03bh,0aah,07ah,0fah,07bh,0eah,01ah,04bh,048h,06fh,008h,088h,00ah,020h	; 9f71  *.;.z.{..KHo... 
	defb 0b5h,020h,0e5h,000h,0f7h,000h,0f9h,0a0h,0ffh,000h,0efh,020h,0ffh,000h,0f5h,0fdh	; 9f81  . ......... ....
	defb 020h,0b7h,020h,0f5h,0a0h,0f7h,000h,0ffh,020h,0ffh,080h,0f7h,020h,0f5h,020h,000h	; 9f91   . ..... ... . .
	defb 0f9h,008h,0bdh,020h,0ddh,0a0h,08dh,000h,0bdh,020h,085h,080h,0abh,000h,09fh,08fh	; 9fa1  ... ..... ......
	defb 000h,09fh,028h,0d7h,080h,0e5h,028h,085h,020h,08fh,000h,0b7h,028h,0ddh,028h,008h	; 9fb1  ..(...(. ...(.(.
	defb 0fdh,000h,0efh,000h,0ddh,008h,0ffh,000h,0fdh,008h,0ddh,000h,0dfh,000h,0fdh,0fdh	; 9fc1  ................
	defb 000h,0ddh,000h,0ddh,000h,0ddh,000h,0fdh,000h,0edh,000h,0ffh,000h,0ddh,000h,008h	; 9fd1  ................
	defb 089h,0a0h,016h,000h,0ech,0a0h,0a2h,020h,0ddh,000h,0a3h,020h,0a1h,0a0h,08eh,08bh	; 9fe1  ....... ... ....
	defb 028h,09ch,000h,08bh,020h,0a8h,000h,08dh,028h,0cch,008h,0bch,000h,086h,028h	; 9ff1  (... ...(.....(

; ======================================================================
; CODIGO 0xa000..0xa323  (803 bytes)
; ======================================================================


sonido_a_pide:		; Pide el efecto A del canal A (0xE2C0): si ya hay uno pedido de numero menor, gana el menor
	ld b,a			;a000
	ld a,(0e2c0h)		;a001   ; el pedido
	and a			;a004   ; ninguno?
	jr z,sonido_a_pon		;a005
	cp b			;a007   ; menor que el nuevo?
	jr nc,sonido_a_pon		;a008
	ret			;a00a
sonido_a_pon:
	ld a,b			;a00b
	ld (0e2c0h),a		;a00c   ; pedido
	ret			;a00f
sonido_bc_pide:		; Pide el efecto A de los canales B y C (0xE2C2), con la misma prioridad; el 4, solo jugando
	ld b,a			;a010
	cp 004h		;a011   ; el 4...
	jr nz,sonido_bc_mira		;a013
	ld a,(0e000h)		;a015   ; ...solo jugando
	and a			;a018
	ret z			;a019
sonido_bc_mira:
	ld a,(0e2c2h)		;a01a   ; el pedido
	and a			;a01d
	jr z,sonido_bc_pon		;a01e
	cp b			;a020   ; menor que el nuevo?
	jr nc,sonido_bc_pon		;a021
	ret			;a023
sonido_bc_pon:
	ld a,b			;a024
	ld (0e2c2h),a		;a025   ; pedido
	ret			;a028
musica_pide:		; Pide la musica A (0xE2BE), con la misma prioridad; salvo la 1 y la 3, solo jugando
	ld b,a			;a029
	cp 001h		;a02a   ; la 1...
	jr z,musica_mira		;a02c
	cp 003h		;a02e   ; ...o la 3: siempre
	jr z,musica_mira		;a030
	ld a,(0e000h)		;a032   ; las otras, solo jugando
	and a			;a035
	ret z			;a036
musica_mira:
	ld a,(0e2beh)		;a037   ; la pedida
	and a			;a03a
	jr z,musica_pon		;a03b
	cp b			;a03d   ; menor que la nueva?
	jr nc,musica_pon		;a03e
	ret			;a040
musica_pon:
	ld a,b			;a041
	ld (0e2beh),a		;a042   ; pedida
	ret			;a045
sonido:		; El sonido de cada cuadro: los pedidos (la musica 0xE2BE en los tres canales, el efecto del canal A 0xE2C0, el de B y C 0xE2C2) empiezan si ganan a lo que suena (0xE2BD, 0xE2BF, 0xE2C1); despues un paso de cada canal (A en 0xE280, B en 0xE292, C en 0xE2A4) y el barrido del ruido
	ld hl,0e2bdh		;a046   ; la musica sonando?
	xor a			;a049
	cp (hl)			;a04a
	jr nz,sonido_musica_gana		;a04b
	inc hl			;a04d   ; una pedida?
	cp (hl)			;a04e
	jp nz,musica_empieza		;a04f   ; empieza
	inc hl			;a052   ; el efecto A sonando?
	cp (hl)			;a053
	jr nz,sonido_a_gana		;a054
	inc hl			;a056   ; uno pedido?
	cp (hl)			;a057
	jp nz,sonido_a_empieza		;a058   ; empieza
sonido_bc_mira2:
	xor a			;a05b
	inc hl			;a05c   ; el de B y C sonando?
	cp (hl)			;a05d
	jr nz,sonido_bc_gana		;a05e
	inc hl			;a060   ; uno pedido?
	cp (hl)			;a061
	jp nz,sonido_bc_empieza		;a062   ; empieza
sonido_musica_gana:
	call pedido_gana		;a065   ; la pedida gana a la que suena?
	jp c,musica_empieza		;a068
	jr sonido_canal_a		;a06b
sonido_a_gana:
	call pedido_gana		;a06d   ; el pedido gana?
	jp c,sonido_a_empieza		;a070
	jr sonido_bc_mira2		;a073
sonido_bc_gana:
	call pedido_gana		;a075   ; el pedido gana?
	jp c,sonido_bc_empieza		;a078
sonido_canal_a:		; El canal A: con la musica o el efecto A, un paso (0xA130); al acabar la pieza (1), la musica sigue o se acaba (0xA399); con 0xF7 (2), el efecto se acaba (0xA3E7)
	ld a,(0e2bdh)		;a07b   ; la musica?
	and a			;a07e
	jr nz,L_A088		;a07f
	ld a,(0e2bfh)		;a081   ; o el efecto A?
	and a			;a084
	jp z,sonido_canal_b		;a085
L_A088:
	ld hl,0e280h		;a088   ; el canal A...
	call canal_a_trabajo		;a08b   ; ...al de trabajo
	ld bc,00008h		;a08e   ; los registros 0 y 1, volumen el 8
	xor a			;a091   ; el canal 0
	ld (0e2d5h),a		;a092
	call canal_paso		;a095   ; un paso
	push af			;a098
	ld de,0e280h		;a099   ; de vuelta
	call canal_de_trabajo		;a09c
	pop af			;a09f
	and a			;a0a0   ; 0: sigue
	jr z,sonido_canal_b		;a0a1
	cp 001h		;a0a3   ; 1: acabada
	jp z,musica_acaba		;a0a5
	cp 002h		;a0a8   ; 2: callada
	jp z,sonido_a_acaba		;a0aa
sonido_canal_b:		; Los canales B y C: con la musica o el efecto de B y C, un paso de cada uno (los registros 2-3 y 9, 4-5 y 10); al acabar, 0xA447
	ld a,(0e2bdh)		;a0ad   ; la musica?
	and a			;a0b0
	jr nz,L_A0BA		;a0b1
	ld a,(0e2c1h)		;a0b3   ; o el efecto de B y C?
	and a			;a0b6
	jp z,sonido_fin		;a0b7
L_A0BA:
	ld hl,0e292h		;a0ba   ; el canal B
	call canal_a_trabajo		;a0bd
	ld bc,00209h		;a0c0   ; los registros 2 y 3, volumen el 9
	ld a,(0e088h)		;a0c3   ; los bits del mezclador, corridos al canal B
	rrca			;a0c6
	ld (0e088h),a		;a0c7
	ld a,001h		;a0ca   ; el canal 1
	ld (0e2d5h),a		;a0cc
	call canal_paso		;a0cf   ; un paso
	push af			;a0d2
	ld de,0e292h		;a0d3   ; de vuelta
	call canal_de_trabajo		;a0d6
	pop af			;a0d9
	cp 003h		;a0da   ; 3: sigue
	jr z,sonido_canal_c		;a0dc
	ld b,a			;a0de
	ld a,(0e088h)		;a0df   ; los bits de vuelta
	rlca			;a0e2
	ld (0e088h),a		;a0e3
	ld a,b			;a0e6
	and a			;a0e7
	jp nz,sonido_bc_acaba		;a0e8   ; acabado
sonido_canal_c:
	ld hl,0e2a4h		;a0eb   ; el canal C
	call canal_a_trabajo		;a0ee
	ld bc,0040ah		;a0f1   ; los registros 4 y 5, volumen el 10
	ld a,(0e088h)		;a0f4   ; los bits del mezclador, corridos al canal C
	rrca			;a0f7
	rrca			;a0f8
	ld (0e088h),a		;a0f9
	ld a,002h		;a0fc   ; el canal 2
	ld (0e2d5h),a		;a0fe
	call canal_paso		;a101   ; un paso
	push af			;a104
	ld de,0e2a4h		;a105   ; de vuelta
	call canal_de_trabajo		;a108
	pop af			;a10b
	cp 003h		;a10c   ; 3: sigue
	jp z,ruido_barrido		;a10e
	ld b,a			;a111
	ld a,(0e088h)		;a112   ; los bits de vuelta
	rlca			;a115
	rlca			;a116
	ld (0e088h),a		;a117
	ld a,b			;a11a
	and a			;a11b   ; acabado
	jp nz,sonido_bc_acaba		;a11c   ; a 0xA447
	jp ruido_barrido		;a11f
canal_a_trabajo:		; Copia el bloque del canal (HL, 18 bytes) a 0xE2C3
	ld de,0e2c3h		;a122   ; al canal de trabajo
copia18:
	ld bc,00012h		;a125   ; 18 bytes
	ldir		;a128
	ret			;a12a
canal_de_trabajo:		; Y de vuelta a DE
	ld hl,0e2c3h		;a12b
	jr copia18		;a12e
canal_paso:		; Un paso del canal de trabajo: si la nota sigue, nada; si no, el byte siguiente de la pieza: una nota (menos de 0xF0) o una orden
	ld hl,0e2cdh		;a130   ; la nota sigue?
	ld a,(hl)			;a133
	and a			;a134
	jr z,canal_byte		;a135
	call canal_cuenta		;a137   ; su cuenta
	and a			;a13a
	ret z			;a13b
canal_byte:		; El byte siguiente de la pieza (0xE2C3): menos de 0xF0, una nota (duracion y volumen, el tono) y 3; si no, una orden
	ld iy,0e2cdh		;a13c
	ld hl,(0e2c3h)		;a140
	ld a,(hl)			;a143   ; el byte
	cp 0f0h		;a144   ; 0xF0 o mas: una orden
	jr nc,canal_orden		;a146
	call nota_pon		;a148   ; la duracion y el volumen
	call nota_tono		;a14b   ; el tono
	ld (0e2c3h),hl		;a14e   ; apuntado
	ld a,(0e088h)		;a151   ; el canal con tono, sin ruido
	res 0,a		;a154
	set 3,a		;a156
canal_mezcla:
	ld c,a			;a158
	ld a,(0e2d5h)		;a159   ; corrido al canal
	and a			;a15c
	ld b,a			;a15d
	ld a,c			;a15e
	jr z,canal_mezcla_pon		;a15f
canal_mezcla_corre:
	rlca			;a161
	djnz canal_mezcla_corre		;a162
canal_mezcla_pon:
	ld (0e088h),a		;a164   ; el registro 7
	call mezclador		;a167
	ld a,003h		;a16a   ; 3: nota nueva
	ret			;a16c
canal_orden:		; Las ordenes: 0xF0 ruido, 0xFF el final (1), 0xF7 callar (2), 0xFE otra vez, 0xFD-0xFC, 0xFB-0xFA y 0xF9-0xF8 tres bucles con su cuenta
	jp z,canal_ruido		;a16d   ; 0xF0: ruido
	cp 0ffh		;a170   ; 0xFF: el final
	jr nz,canal_orden_f7		;a172
	ld a,001h		;a174   ; 1
	ret			;a176
canal_orden_f7:
	cp 0f7h		;a177   ; 0xF7: callar
	jr nz,canal_orden_fe		;a179
	ld a,002h		;a17b   ; 2
	ret			;a17d
canal_orden_fe:
	cp 0feh		;a17e   ; 0xFE: al principio
	jr nz,canal_orden_fd		;a180
	ld hl,(0e2c5h)		;a182   ; la pieza otra vez desde su principio
	ld (0e2c3h),hl		;a185
	jr canal_byte		;a188
canal_orden_fd:
	cp 0fdh		;a18a   ; 0xFD n: el primer bucle, n veces
	jr nz,canal_orden_fc		;a18c
	inc hl			;a18e
	ld a,(hl)			;a18f
	ld (iy+005h),a		;a190   ; la cuenta
	inc hl			;a193
	ld (0e2c7h),hl		;a194   ; su principio
	ld (0e2c3h),hl		;a197
	jr canal_byte		;a19a
canal_orden_fc:
	cp 0fch		;a19c   ; 0xFC: el final del primer bucle
	jr nz,canal_orden_fb		;a19e
	dec (iy+005h)		;a1a0   ; una vuelta menos
	jr nz,canal_fc_otra		;a1a3
	inc hl			;a1a5   ; acabado: sigue
	ld (0e2c3h),hl		;a1a6
	jr canal_byte		;a1a9
canal_fc_otra:
	ld hl,(0e2c7h)		;a1ab   ; otra vez desde su principio
	ld (0e2c3h),hl		;a1ae
	jr canal_byte		;a1b1
canal_orden_fb:
	cp 0fbh		;a1b3   ; 0xFB n: el segundo bucle
	jr nz,canal_orden_fa		;a1b5
	inc hl			;a1b7
	ld a,(hl)			;a1b8
	ld (iy+006h),a		;a1b9   ; la cuenta
	inc hl			;a1bc
	ld (0e2c9h),hl		;a1bd   ; su principio
	ld (0e2c3h),hl		;a1c0
	jp canal_byte		;a1c3
canal_orden_fa:
	cp 0fah		;a1c6   ; 0xFA: su final
	jr nz,canal_orden_f9		;a1c8
	dec (iy+006h)		;a1ca   ; una vuelta menos
	jr nz,canal_fa_otra		;a1cd
	inc hl			;a1cf
	ld (0e2c3h),hl		;a1d0
	jp canal_byte		;a1d3
canal_fa_otra:
	ld hl,(0e2c9h)		;a1d6
	ld (0e2c3h),hl		;a1d9
	jp canal_byte		;a1dc
canal_orden_f9:
	cp 0f9h		;a1df   ; 0xF9 n: el tercer bucle
	jr nz,canal_orden_f8		;a1e1
	inc hl			;a1e3
	ld a,(hl)			;a1e4
	ld (iy+007h),a		;a1e5   ; la cuenta
	inc hl			;a1e8
	ld (0e2cbh),hl		;a1e9   ; su principio
	ld (0e2c3h),hl		;a1ec
	jp canal_byte		;a1ef
canal_orden_f8:		; 0xF8: el final del tercer bucle: otra vez desde 0xF9 mientras quede cuenta
	dec (iy+007h)		;a1f2   ; una vuelta menos
	jr nz,canal_f8_otra		;a1f5
	inc hl			;a1f7
	ld (0e2c3h),hl		;a1f8
	jp canal_byte		;a1fb
canal_f8_otra:
	ld hl,(0e2cbh)		;a1fe   ; otra vez desde su principio
	ld (0e2c3h),hl		;a201
	jp canal_byte		;a204
canal_ruido:		; 0xF0: una nota de ruido (0xA25A, el periodo y el barrido), su duracion y el canal con ruido sin tono
	call ruido_pon		;a207
	inc hl			;a20a
	call nota_pon		;a20b   ; la duracion y el volumen
	inc hl			;a20e
	ld (0e2c3h),hl		;a20f   ; apuntado
	ld a,(0e088h)		;a212   ; el mezclador: con ruido, sin tono
	res 3,a		;a215
	set 0,a		;a217
	jp canal_mezcla		;a219
ruido_barrido:		; El barrido del ruido: con ruido de barrido (0xE2B6, 0xE2B7) y pasos que quedan (0xE2B9), cada 0xE2BA cuadros el periodo (registro 6) + el paso (0xE2BC)
	ld a,(0e2b6h)		;a21c   ; hay ruido?
	and a			;a21f
	jr z,sonido_fin		;a220
	ld a,(0e2b7h)		;a222   ; con barrido?
	and a			;a225
	jr z,sonido_fin		;a226
	ld a,(0e2b9h)		;a228   ; quedan pasos?
	and a			;a22b
	jr z,sonido_fin		;a22c
	ld a,(0e2bbh)		;a22e   ; la espera
	dec a			;a231
	ld (0e2bbh),a		;a232
	jr nz,sonido_fin		;a235
	ld a,(0e2b9h)		;a237   ; un paso menos
	dec a			;a23a
	ld (0e2b9h),a		;a23b
	ld a,(0e2bah)		;a23e   ; otra vez la espera
	ld (0e2bbh),a		;a241
	ld a,(0e2b8h)		;a244   ; el periodo...
	ld b,a			;a247
	ld a,(0e2bch)		;a248   ; ...mas el paso
	add a,b			;a24b
	ld (0e2b8h),a		;a24c
	call ruido_periodo		;a24f
sonido_fin:
	ret			;a252
pedido_gana:		; (HL) el que suena, (HL+1) el pedido: Z sin pedido; C si el pedido es de numero menor (gana)
	ld b,(hl)			;a253   ; el que suena
	inc hl			;a254
	ld a,(hl)			;a255   ; el pedido
	and a			;a256
	ret z			;a257   ; ninguno: Z
	cp b			;a258   ; C si gana
	ret			;a259
ruido_pon:		; El ruido: su periodo fijo o con barrido (periodo, cuantas veces, cada cuanto, el paso)
	ld (iy+000h),a		;a25a   ; la nota
	inc hl			;a25d
	ld a,(hl)			;a25e   ; con barrido?
	ld (0e2b7h),a		;a25f   ; con barrido (cuantas veces)?
	and a			;a262
	jr nz,ruido_barre		;a263
	inc hl			;a265
	ld a,(hl)			;a266   ; el periodo...
	ld (0e2b8h),a		;a267
	call ruido_periodo		;a26a   ; ...registro 6
	xor a			;a26d   ; sin barrido
	ld (0e2b9h),a		;a26e
	ld (0e2bah),a		;a271
	ld (0e2bbh),a		;a274
	ld (0e2bch),a		;a277
	inc a			;a27a   ; hay ruido
	ld (0e2b6h),a		;a27b
	ret			;a27e
ruido_barre:
	ld (0e2b6h),a		;a27f   ; hay ruido con barrido
	ld (0e2bch),a		;a282
	inc hl			;a285
	ld a,(hl)			;a286   ; el periodo...
	ld (0e2b8h),a		;a287
	call ruido_periodo		;a28a   ; ...registro 6
	inc hl			;a28d
	ld a,(hl)			;a28e
	ld (0e2b9h),a		;a28f
	inc hl			;a292
	ld a,(hl)			;a293
	ld (0e2bah),a		;a294
	ld (0e2bbh),a		;a297
	ret			;a29a
canal_cuenta:		; La nota que suena: su duracion una menos (al acabar, 1); el volumen baja uno cada tantos cuadros (la envolvente); con 15, a la mitad de la duracion se calla
	inc hl			;a29b   ; la duracion
	dec (hl)			;a29c   ; una menos
	jp z,canal_cuenta_fin		;a29d
	inc hl			;a2a0
	ld a,(hl)			;a2a1   ; la envolvente
	and a			;a2a2   ; ninguna: sigue
	jp z,canal_cuenta_sigue		;a2a3
	cp 00fh		;a2a6   ; 15: la envolvente corta
	jr z,canal_cuenta_15		;a2a8
	inc hl			;a2aa
	dec (hl)			;a2ab   ; la cuenta de la envolvente
	jr nz,canal_cuenta_sigue		;a2ac
	dec hl			;a2ae
	ld a,(hl)			;a2af   ; la espera...
	inc hl			;a2b0
	ld (hl),a			;a2b1   ; ...otra vez
	inc hl			;a2b2
	dec (hl)			;a2b3   ; el volumen, uno menos
	ld a,(hl)			;a2b4
	call psg_c		;a2b5   ; al PSG
	and a			;a2b8
	jr nz,canal_cuenta_sigue		;a2b9
	dec hl			;a2bb   ; volumen 0: sin envolvente
	dec hl			;a2bc
	ld (hl),a			;a2bd
canal_cuenta_sigue:
	xor a			;a2be
	ret			;a2bf
canal_cuenta_15:
	inc hl			;a2c0
	dec (hl)			;a2c1   ; la cuenta
	jr nz,canal_cuenta_sigue		;a2c2
	xor a			;a2c4
	dec hl			;a2c5
	ld (hl),a			;a2c6   ; el volumen a 0
	call psg_c		;a2c7
	ret			;a2ca
canal_cuenta_fin:
	dec hl			;a2cb   ; acabada
	xor a			;a2cc
	ld (hl),a			;a2cd
	ld a,001h		;a2ce   ; 1
	ret			;a2d0
nota_pon:		; Una nota: el byte de arriba es la duracion (0xA539, o el byte siguiente con 0xE), el de abajo el volumen (15: la mitad)
	ld a,(hl)			;a2d1   ; la nota...
	ld (iy+000h),a		;a2d2
	and 00fh		;a2d5   ; ...el volumen (la mitad baja)
	ld (iy+002h),a		;a2d7
	ld a,(hl)			;a2da   ; la duracion (la mitad alta)...
	and 0f0h		;a2db
	rrca			;a2dd
	rrca			;a2de
	rrca			;a2df
	rrca			;a2e0
	cp 00eh		;a2e1   ; ...0xE: en el byte siguiente
	jr z,nota_duracion_byte		;a2e3
	ld de,0a323h		;a2e5   ; la tabla de duraciones
	add a,e			;a2e8
	jr nc,nota_duracion		;a2e9
	inc d			;a2eb
nota_duracion:
	ld e,a			;a2ec
	ld a,(de)			;a2ed   ; la duracion
	jr nota_volumen		;a2ee
nota_duracion_byte:
	inc hl			;a2f0
	ld a,(hl)			;a2f1
nota_volumen:
	ld (iy+001h),a		;a2f2
	ld a,(iy+002h)		;a2f5   ; volumen 15?
	cp 00fh		;a2f8
	jr nz,nota_cuenta		;a2fa
	ld a,(iy+001h)		;a2fc   ; la duracion...
	push bc			;a2ff
	ld c,a			;a300
	srl a		;a301   ; ...menos la mitad: la espera
	ld b,a			;a303
	ld a,c			;a304
	sub b			;a305
	pop bc			;a306
nota_cuenta:
	ld (iy+003h),a		;a307   ; la cuenta de la envolvente
	ld a,00fh		;a30a   ; el volumen 15
	ld (iy+004h),a		;a30c
	call psg_c		;a30f
	ret			;a312
nota_tono:		; El tono de la nota: un byte de periodo bajo (0x10 o mas) o dos (el alto y el bajo), al registro B (+1 el alto)
	inc hl			;a313
	ld a,(hl)			;a314   ; el primer byte
	cp 010h		;a315   ; menos de 0x10: el alto
	jr nc,L_A31E		;a317
	call psg_b1		;a319   ; al registro B + 1
	inc hl			;a31c
	ld a,(hl)			;a31d   ; el bajo
L_A31E:
	call psg_b		;a31e   ; al registro B
	inc hl			;a321
	ret			;a322

; ----------------------------------------------------------------------
; DATOS duraciones: Las 14 duraciones de las notas (la mitad alta del byte;
;   0xE: en el byte siguiente)
;   0xa323..0xa331  (14 bytes)
DATA_duraciones:
	defb 080h,060h,040h,030h,020h,018h,010h,00ch,008h,006h,004h,003h,002h,001h	; a323  .`@0 .........

; ======================================================================
; CODIGO 0xa331..0xa466  (309 bytes)
; ======================================================================


psg_c:		; WRTPSG: el registro C
	ld e,a			;a331   ; el valor...
	ld a,c			;a332   ; ...el registro C
psg_pon:		; WRTPSG con E el valor
	call 00093h		;a333
	ret			;a336
psg_b:		; WRTPSG: el registro B
	ld e,a			;a337
	ld a,b			;a338
	jr psg_pon		;a339
psg_b1:		; WRTPSG: el registro B + 1
	ld e,a			;a33b
	ld a,b			;a33c
	inc a			;a33d
	jr psg_pon		;a33e
mezclador:		; WRTPSG: el registro 7 (el mezclador)
	ld e,a			;a340
	ld a,007h		;a341
	jr psg_pon		;a343
ruido_periodo:		; WRTPSG: el registro 6 (el periodo del ruido)
	ld e,a			;a345
	ld a,006h		;a346
	jr psg_pon		;a348
musica_empieza:		; La musica pedida (0xE2BE) empieza: sus tres piezas de la tabla 0xA466 (6 bytes por musica) en los canales A, B y C
	ld hl,0a466h		;a34a   ; la tabla
	ld a,(0e2beh)		;a34d   ; la pedida...
	ld (0e2bdh),a		;a350   ; ...suena
	ld b,a			;a353   ; x 6
	add a,b			;a354
	add a,b			;a355
	add a,b			;a356
	add a,b			;a357
	add a,b			;a358
	add a,l			;a359
	jr nc,L_A35D		;a35a
	inc h			;a35c
L_A35D:
	ld l,a			;a35d
	ld e,(hl)			;a35e   ; la pieza del canal A...
	inc hl			;a35f
	ld d,(hl)			;a360
	ld (0e280h),de		;a361   ; ...y su principio
	ld (0e282h),de		;a365
	inc hl			;a369
canales_bc:		; Los canales B y C desde la tabla HL
	ld e,(hl)			;a36a   ; el canal B: su pieza...
	inc hl			;a36b
	ld d,(hl)			;a36c
	ld (0e292h),de		;a36d   ; ...y su principio
	ld (0e294h),de		;a371
	inc hl			;a375
	ld e,(hl)			;a376   ; el canal C
	inc hl			;a377
	ld d,(hl)			;a378
	ld (0e2a4h),de		;a379
	ld (0e2a6h),de		;a37d
	xor a			;a381   ; sin nota en marcha
	ld (0e28ah),a		;a382
	ld (0e29ch),a		;a385
	ld (0e2aeh),a		;a388
	ld (0e2beh),a		;a38b   ; el pedido, gastado
	ld a,0f8h		;a38e   ; el mezclador: los tres canales con tono
	ld (0e088h),a		;a390
	call mezclador		;a393
	jp sonido_canal_a		;a396   ; y un paso
musica_acaba:		; La pieza del canal A acabada: si hay otra musica pedida, empieza; si no, todo callado (0xA3A9)
	ld a,(0e2beh)		;a399   ; una pedida?
	and a			;a39c
	jr nz,musica_empieza		;a39d
	ld (0e2bdh),a		;a39f   ; ninguna suena
	dec a			;a3a2   ; el mezclador: todo callado
	ld (0e088h),a		;a3a3
	call mezclador		;a3a6
canales_borra:		; Los tres canales y lo demas (0xE280, 0x43 bytes) a cero
	ld hl,0e280h		;a3a9
	ld b,043h		;a3ac   ; 0x43 bytes
canales_borra_byte:
	ld (hl),000h		;a3ae
	inc hl			;a3b0
	djnz canales_borra_byte		;a3b1
	ret			;a3b3
sonido_a_empieza:		; El efecto pedido del canal A (0xE2C0) empieza: su pieza de la tabla 0xA48A (2 bytes por efecto)
	ld hl,0a48ah		;a3b4   ; la tabla
	ld a,(0e2c0h)		;a3b7   ; el pedido...
	ld (0e2bfh),a		;a3ba   ; ...suena
	ld b,a			;a3bd   ; x 2
	add a,b			;a3be
	add a,l			;a3bf
	jr nc,L_A3C3		;a3c0
	inc hl			;a3c2
L_A3C3:
	ld l,a			;a3c3
	ld e,(hl)			;a3c4   ; la pieza...
	inc hl			;a3c5
	ld d,(hl)			;a3c6
	ld (0e280h),de		;a3c7   ; ...y su principio
	ld (0e282h),de		;a3cb
	xor a			;a3cf   ; sin nota en marcha
	ld (0e28ah),a		;a3d0
	ld (0e2c0h),a		;a3d3   ; el pedido, gastado
	ld a,(0e088h)		;a3d6   ; el canal A con tono
	res 0,a		;a3d9
	ld (0e088h),a		;a3db
	call mezclador		;a3de
	ld hl,0e2c0h		;a3e1   ; y los de B y C
	jp sonido_bc_mira2		;a3e4
sonido_a_acaba:		; El efecto del canal A acabado (0xF7): otro pedido, o el canal A callado
	ld a,(0e2c0h)		;a3e7   ; otro pedido?
	and a			;a3ea
	jr nz,sonido_a_empieza		;a3eb
	ld (0e2bfh),a		;a3ed   ; ninguno suena
	ld hl,0e280h		;a3f0   ; el canal A a cero
	ld b,012h		;a3f3
L_A3F5:
	ld (hl),000h		;a3f5
	inc hl			;a3f7
	djnz L_A3F5		;a3f8
	ld a,(0e088h)		;a3fa   ; el mezclador: el canal A callado (bits 0 y 3)
	or 009h		;a3fd
	ld (0e088h),a		;a3ff
	call mezclador		;a402
	ret			;a405
sonido_bc_empieza:		; El efecto pedido de B y C (0xE2C2) empieza: sus dos piezas de la tabla 0xA494 (4 bytes por efecto)
	ld hl,0a494h		;a406   ; la tabla
	ld a,(0e2c2h)		;a409   ; el pedido...
	ld (0e2c1h),a		;a40c   ; ...suena
	ld b,a			;a40f   ; x 4
	add a,b			;a410
	add a,b			;a411
	add a,b			;a412
	add a,l			;a413
	jr nc,L_A417		;a414
	inc h			;a416
L_A417:
	ld l,a			;a417
	ld e,(hl)			;a418   ; la pieza del canal B
	inc hl			;a419
	ld d,(hl)			;a41a
	ld (0e292h),de		;a41b
	ld (0e294h),de		;a41f
	inc hl			;a423
	ld e,(hl)			;a424   ; la del canal C
	inc hl			;a425
	ld d,(hl)			;a426
	ld (0e2a4h),de		;a427
	ld (0e2a6h),de		;a42b
	xor a			;a42f   ; sin nota en marcha
	ld (0e29ch),a		;a430
	ld (0e2aeh),a		;a433
	ld (0e2c2h),a		;a436   ; el pedido, gastado
	ld a,(0e088h)		;a439   ; el mezclador: B y C con tono
	and 0f9h		;a43c
	ld (0e088h),a		;a43e
	call mezclador		;a441
	jp sonido_canal_a		;a444
sonido_bc_acaba:		; Los canales B y C acabados: otro pedido, o los dos callados
	ld a,(0e2c2h)		;a447   ; otro pedido?
	and a			;a44a
	jr nz,sonido_bc_empieza		;a44b
	ld (0e2c1h),a		;a44d   ; ninguno suena
	ld hl,0e292h		;a450   ; los canales B y C a cero
	ld b,024h		;a453
L_A455:
	ld (hl),000h		;a455
	inc hl			;a457
	djnz L_A455		;a458
	ld a,(0e088h)		;a45a   ; el mezclador: B y C callados
	or 036h		;a45d
	ld (0e088h),a		;a45f
	call mezclador		;a462
	ret			;a465

; ----------------------------------------------------------------------
; DATOS musicas: Las 6 musicas (6 bytes: las piezas de los canales A, B y C):
;   la 0 en silencio; la 1 al empezar la fase (0x8296), la 2 GAME OVER
;   (0x967D), la 3 la nave tocada (0x9603), la 4 el aterrizaje (0x970B); la 5
;   no la pide nadie (las cuatro llamadas a musica_pide llevan 1-4)
;   0xa466..0xa48a  (36 bytes)
DATA_musicas:
	defb 0b8h,0a4h,0b8h,0a4h,0b8h,0a4h,095h,0a5h,0aeh,0a5h,0e8h,0a5h,05dh,0a5h,073h,0a5h	; a466  ............].s.
	defb 083h,0a5h,0e2h,0a4h,0ebh,0a4h,0ebh,0a4h,0bch,0a4h,0c0h,0a4h,0cdh,0a4h,018h,0a6h	; a476  ................
	defb 0f0h,0a5h,023h,0a5h	; a486

; ----------------------------------------------------------------------
; DATOS sonidos_a: Los 5 efectos del canal A (2 bytes: su pieza); el 0 en
;   silencio
;   0xa48a..0xa494  (10 bytes)
DATA_sonidos_a:
	defb 0b4h,0a4h,027h,0a5h,03fh,0a5h,049h,0a5h,059h,0a5h	; a48a  ..'.?.I.Y.

; ----------------------------------------------------------------------
; DATOS sonidos_bc: Los 8 efectos de los canales B y C (4 bytes: las piezas de
;   B y de C); el 0 en silencio
;   0xa494..0xa4b4  (32 bytes)
DATA_sonidos_bc:
	defb 0b8h,0a4h,0b8h,0a4h,007h,0a5h,0f4h,0a4h,00eh,0a5h,01eh,0a5h,033h,0a6h,038h,0a6h	; a494  ............3.8.
	defb 033h,0a6h,038h,0a6h,03ch,0a6h,041h,0a6h,045h,0a6h,04ah,0a6h,04eh,0a6h,053h,0a6h	; a4a4  3.8.<.A.E.J.N.S.

; ----------------------------------------------------------------------
; DATOS piezas: Las piezas: notas (la duracion en la mitad alta, el volumen en
;   la baja, el tono en uno o dos bytes) y las ordenes 0xF0-0xFF
;   0xa4b4..0xa65f  (427 bytes)
DATA_piezas:
	defb 000h,000h,000h,0f7h,000h,000h,000h,0ffh,00dh,002h,03bh,0ffh,062h,000h,000h,02dh	; a4b4  ..........;.b..-
	defb 001h,0ach,04dh,001h,0ach,00dh,000h,000h,0feh,064h,000h,000h,064h,000h,000h,066h	; a4c4  ..M......d..d..f
	defb 001h,053h,043h,040h,082h,053h,082h,07dh,04dh,053h,00dh,000h,000h,0feh,0f0h,000h	; a4d4  .SC@.S.}MS......
	defb 01fh,040h,0f0h,000h,01fh,00ch,0ffh,0f0h,000h,01fh,040h,0f0h,000h,01fh,00ch,0feh	; a4e4  .@........@.....
	defb 0d1h,000h,050h,0d1h,001h,010h,0d1h,000h,080h,0d1h,001h,080h,0d1h,000h,0f0h,0d1h	; a4f4  ..P.............
	defb 001h,0f0h,0feh,0f0h,002h,001h,01fh,002h,040h,0ffh,0d1h,000h,0d6h,0d1h,0beh,0d1h	; a504  ........@.......
	defb 0aah,0d1h,097h,0d1h,087h,0d1h,078h,0d1h,06bh,0ffh,0f0h,000h,014h,080h,0feh,000h	; a514  ......x.k.......
	defb 000h,000h,0feh,0d1h,000h,0f0h,0d1h,0e0h,0d1h,0d0h,0d1h,0c0h,0d1h,0b0h,0d1h,0a0h	; a524  ................
	defb 0d1h,090h,0d1h,080h,0d1h,070h,0d1h,060h,0d1h,050h,0f7h,0c1h,002h,000h,0c1h,0f0h	; a534  .....p.`.P......
	defb 0c1h,040h,0c1h,080h,0f7h,0d1h,000h,010h,0d1h,020h,0d1h,030h,0d1h,040h,0d1h,050h	; a544  .@....... .0.@.P
	defb 0d1h,060h,0d1h,070h,0f7h,081h,000h,040h,0f7h,060h,001h,040h,060h,001h,01dh,040h	; a554  .`.p...@.`.@`..@
	defb 000h,0feh,040h,001h,01dh,040h,001h,040h,040h,001h,053h,020h,001h,053h,0ffh,060h	; a564  ..@..@.@@.S .S.`
	defb 000h,0d6h,060h,0beh,040h,0aah,040h,0beh,040h,0d6h,040h,0e2h,020h,0d6h,0ffh,060h	; a574  ..`.@.@.@.@. ..`
	defb 000h,0feh,060h,0e2h,040h,0d6h,040h,0e2h,040h,0feh,040h,001h,01dh,020h,001h,01dh	; a584  ..`.@.@.@.@.. ..
	defb 0ffh,0fdh,008h,081h,005h,04dh,0fch,0fdh,008h,081h,005h,001h,0fch,0fdh,008h,081h	; a594  .....M..........
	defb 004h,075h,0fch,0fdh,008h,081h,003h,0f9h,0fch,0ffh,0fdh,004h,0a1h,001h,053h,0a1h	; a5a4  .u............S.
	defb 001h,01dh,0a1h,000h,0e2h,0a1h,000h,0aah,0fch,0fdh,004h,0a1h,001h,040h,0a1h,000h	; a5b4  .............@..
	defb 0feh,0a1h,000h,0d6h,0a1h,000h,0a0h,0fch,0fdh,004h,0a1h,001h,01dh,0a1h,000h,0e2h	; a5c4  ................
	defb 0a1h,000h,0beh,0a1h,000h,08fh,0fch,0fdh,004h,0a1h,000h,0feh,0a1h,0d6h,0a1h,0aah	; a5d4  ................
	defb 0a1h,0d6h,0fch,0feh,082h,000h,0feh,0a1h,07fh,0a1h,08fh,0feh,0fdh,002h,054h,003h	; a5e4  ..............T.
	defb 057h,082h,004h,075h,082h,002h,0fah,082h,002h,0a7h,082h,002h,081h,082h,002h,03bh	; a5f4  W..u...........;
	defb 054h,002h,081h,082h,001h,0fch,082h,002h,0fah,082h,002h,0a7h,082h,002h,081h,082h	; a604  T...............
	defb 002h,03bh,0fch,0ffh,0fdh,002h,063h,001h,0ach,063h,0ach,082h,0fch,082h,002h,03bh	; a614  .;....c..c.....;
	defb 082h,081h,053h,0a7h,063h,0a7h,082h,03bh,082h,001h,0fch,063h,07dh,0fch,0ffh,0f0h	; a624  ..S.c..;...c}...
	defb 000h,00eh,0a0h,0ffh,0a0h,000h,03fh,0ffh,0f0h,000h,014h,080h,0ffh,080h,000h,03eh	; a634  ......?........>
	defb 0ffh,0f0h,000h,018h,080h,0ffh,080h,000h,03fh,0ffh,0f0h,000h,01ch,080h,0ffh,080h	; a644  ........?.......
	defb 000h,040h,0ffh,008h,0ffh,008h,03fh,028h,0ffh,028h,0ffh	; a654  .@....?(.(.

; ----------------------------------------------------------------------
; DATOS relleno_a65f: Bytes sin orden despues de las piezas del sonido; ningun
;   puntero llega aqui; su lectura esta por medir
;   0xa65f..0xa800  (417 bytes)
DATA_relleno_a65f:
	defb 000h,008h,0a2h,04ah,081h,068h,0aah,028h,080h,038h,0abh,06ah,063h,030h,0bfh,020h	; a65f  ...J.h.(.8.jc0. 
	defb 0a8h,06fh,0e0h,02ah,0eeh,0aah,028h,0bfh,000h,0ach,0a0h,0b6h,0ffh,0abh,038h,0ebh	; a66f  .o.*..(.......8.
	defb 083h,000h,0ffh,010h,0cch,040h,0fch,000h,0d4h,020h,0d5h,040h,0e5h,000h,0dfh,020h	; a67f  .....@... .@... 
	defb 0e4h,0d5h,000h,05ch,000h,0f7h,060h,0d5h,000h,0ddh,000h,0f5h,000h,0d5h,000h,0dfh	; a68f  ...\..`.........
	defb 000h,0a2h,08dh,00ah,081h,0c9h,09ah,040h,0cdh,080h,0a1h,0abh,0f7h,088h,0b2h,098h	; a69f  .......@........
	defb 0e8h,0adh,0e0h,0beh,0f2h,0fdh,088h,099h,0a8h,0a8h,040h,089h,0f1h,0b1h,080h,0e7h	; a6af  ..........@.....
	defb 060h,008h,0ffh,088h,0efh,000h,0ffh,0c8h,0ffh,028h,0f7h,028h,09eh,008h,0ffh,008h	; a6bf  `........(.(....
	defb 0fdh,0ffh,0a0h,0deh,020h,0ffh,000h,0ffh,028h,0ffh,000h,0ffh,028h,0ffh,0a0h,0f7h	; a6cf  .... ...(...(...
	defb 080h,02ah,0e8h,098h,082h,00ah,0ddh,0c0h,0a8h,040h,08dh,0b0h,0a8h,0b9h,091h,088h	; a6df  .*.......@......
	defb 08dh,0f5h,000h,0c7h,0e3h,0ddh,042h,0ech,049h,08dh,088h,08dh,0f8h,0edh,0a8h,0e3h	; a6ef  ......B.I.......
	defb 031h,018h,0ffh,042h,0fbh,008h,07fh,029h,0ebh,042h,0ffh,028h,03bh,058h,0ffh,002h	; a6ff  1..B...).B.(;X..
	defb 002h,0fbh,028h,0feh,040h,0ffh,028h,0ffh,002h,0ffh,058h,0efh,030h,07fh,020h,0fah	; a70f  ..(.@.(...X.0. .
	defb 019h,028h,0abh,0a8h,0b1h,002h,0a3h,022h,02eh,078h,0a8h,002h,0a2h,032h,02eh,020h	; a71f  .(.....".x...2. 
	defb 0a8h,0aeh,028h,00bh,022h,0a3h,0b2h,0aah,040h,022h,069h,0aeh,08dh,09bh,050h,0a3h	; a72f  ..(."...@"i...P.
	defb 03ch,022h,0f7h,018h,07bh,000h,0ffh,02ah,0b3h,012h,06fh,00ah,0ebh,018h,0ffh,008h	; a73f  <"..{..*..o.....
	defb 02fh,0ffh,020h,0efh,00ah,0ffh,038h,0ffh,02ah,0fbh,028h,0bfh,008h,0fdh,032h,0efh	; a74f  /. ...8.*.(...2.
	defb 028h,038h,0aah,022h,02bh,00ah,0aeh,060h,0abh,022h,0a6h,078h,08bh,028h,0eah,07ah	; a75f  (8."+..`.".x.(.z
	defb 020h,0aah,008h,083h,087h,0b3h,070h,0abh,070h,02bh,073h,0a8h,0b8h,0a2h,038h,08fh	; a76f   .....p.p+s...8.
	defb 096h,000h,0fdh,000h,09dh,008h,05fh,008h,0b5h,020h,0ffh,008h,0b4h,028h,0fdh,000h	; a77f  ......_.. ...(..
	defb 0fdh,0fdh,020h,0dfh,020h,0efh,020h,0ddh,000h,0deh,000h,05fh,000h,0ffh,000h,0ffh	; a78f  .. . . ...._....
	defb 008h,000h,099h,001h,087h,001h,0a9h,000h,087h,000h,0b5h,000h,081h,020h,089h,008h	; a79f  ............. ..
	defb 084h,0e5h,021h,080h,021h,0c7h,020h,08dh,022h,097h,000h,0a1h,011h,0cdh,000h,0c5h	; a7af  ..!.!. .".......
	defb 0c5h,000h,0ffh,080h,0fdh,000h,0ddh,088h,0dfh,008h,0cdh,000h,0feh,008h,0ddh,000h	; a7bf  ................
	defb 0cfh,0dfh,008h,0d9h,000h,0cfh,000h,0ddh,008h,0efh,000h,0dfh,000h,0dfh,000h,0dfh	; a7cf  ................
	defb 000h,008h,045h,020h,0c8h,008h,08dh,0a0h,0c8h,048h,0c0h,060h,0c8h,008h,0cdh,008h	; a7df  ..E .....H.`....
	defb 085h,0a9h,000h,0c8h,0c9h,0b9h,000h,088h,000h,0a8h,000h,0cdh,045h,0e8h,000h,0edh	; a7ef  ............E...
	defb 04dh	; a7ff

; ----------------------------------------------------------------------
; DATOS fase_dibujos: Los dibujos de las casillas de la fase: 0x600 bytes (las
;   0xC0 casillas desde la 0x40, 0x958E); despues 0x200 a cero (0xAE00, los
;   que copiaria el codigo suelto de 0x9886)
;   0xa800..0xb000  (2048 bytes)
DATA_fase_dibujos:
	defb 0ffh,0ffh,0ffh,000h,0ffh,000h,0ffh,000h,000h,0ffh,000h,000h,0ffh,000h,000h,000h	; a800  ................
	defb 0ffh,000h,000h,000h,000h,000h,0ffh,000h,000h,000h,000h,000h,000h,000h,0ffh,000h	; a810  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,0ffh,000h,000h,000h,000h,000h	; a820  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,0ffh,000h,000h,000h,000h,000h,000h	; a830  ................
	defb 000h,000h,000h,000h,000h,000h,000h,0ffh,000h,000h,000h,000h,000h,000h,000h,000h	; a840  ................
	defb 000h,000h,000h,000h,000h,0ffh,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; a850  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,0ffh,0ffh,0ffh,0feh,0fch,0fch,0f8h,0f0h	; a860  ................
	defb 01fh,01fh,03fh,03fh,07fh,07fh,0ffh,0ffh,000h,01ch,07eh,0bfh,01fh,00fh,007h,003h	; a870  ..??......~.....
	defb 0feh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,000h,000h,000h,000h,080h,0c0h,0e0h,0f8h	; a880  ................
	defb 003h,080h,0c0h,0e0h,0f0h,0f0h,0e0h,0c0h,003h,007h,00fh,01fh,07fh,0ffh,0ffh,0ffh	; a890  ................
	defb 0ffh,0ffh,07fh,03fh,01fh,007h,003h,001h,00fh,007h,0c1h,0f0h,0f8h,0feh,0feh,0ffh	; a8a0  ...?............
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,03fh,00fh,000h,000h	; a8b0  ............?...
	defb 080h,0f0h,0f8h,0fch,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0f8h,0c0h,000h,000h,000h,088h	; a8c0  ................
	defb 0c0h,0e0h,0f0h,0f8h,0feh,0ffh,03fh,07fh,0f8h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; a8d0  ......?.........
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,01fh,00fh,007h,080h,0f8h,0feh,0ffh,07fh	; a8e0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,07fh,03fh,01fh,00fh,003h	; a8f0  ............?...
	defb 0c0h,0e0h,0e0h,0e0h,0f0h,0e0h,0c0h,080h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; a900  ................
	defb 0ffh,07fh,07fh,03fh,01fh,00fh,003h,000h,0f8h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; a910  ...?............
	defb 000h,0feh,0feh,0feh,0feh,0feh,0feh,0feh,0feh,0feh,0feh,0feh,0feh,000h,000h,0feh	; a920  ................
	defb 0feh,0feh,0feh,0feh,0feh,0feh,0feh,0feh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,000h	; a930  ................
	defb 000h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,018h,018h,018h,018h,018h,018h,018h,018h	; a940  ................
	defb 018h,024h,000h,000h,000h,000h,000h,000h,000h,07fh,07fh,07fh,0ffh,0ffh,0ffh,0ffh	; a950  .$..............
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,000h,000h,0feh,0feh,0feh,0ffh,0ffh,0ffh,0ffh	; a960  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,000h,000h,07fh,07fh,07fh,07fh,07fh,07fh,07fh	; a970  ................
	defb 07fh,07fh,07fh,07fh,07fh,000h,000h,07fh,07fh,07fh,07fh,07fh,07fh,07fh,07fh,07fh	; a980  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,000h,0feh,0feh,0feh,0feh,0feh,0feh,0feh,0feh	; a990  ................
	defb 000h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,000h,000h,07fh,07fh,07fh,07fh,07fh,07fh,000h	; a9a0  ................
	defb 000h,03fh,03fh,03fh,03fh,03fh,03fh,000h,000h,01fh,01fh,01fh,01fh,01fh,01fh,000h	; a9b0  .??????.........
	defb 000h,00fh,00fh,00fh,00fh,00fh,00fh,000h,000h,007h,007h,007h,007h,007h,007h,000h	; a9c0  ................
	defb 000h,003h,003h,003h,003h,003h,003h,000h,000h,001h,001h,001h,001h,001h,001h,000h	; a9d0  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,07fh,07fh,07fh,07fh,07fh,07fh,07fh,07fh	; a9e0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,07fh,07fh,07fh,07fh,07fh,07fh,07fh,07fh	; a9f0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,000h,018h,0ffh,07eh,018h,018h,024h,000h,000h	; aa00  ..........~..$..
	defb 018h,0ffh,07eh,018h,018h,018h,018h,024h,07fh,07fh,07fh,07fh,07fh,07fh,07fh,000h	; aa10  ..~....$........
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,000h,0feh,0feh,0feh,0feh,0feh,0feh,0feh,000h	; aa20  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; aa30  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; aa40  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; aa50  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; aa60  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; aa70  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; aa80  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; aa90  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,001h,001h,001h,001h,003h,004h	; aaa0  ................
	defb 000h,000h,000h,000h,000h,000h,080h,040h,0fch,007h,000h,000h,000h,000h,000h,000h	; aab0  .......@........
	defb 07eh,0c0h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,010h,008h,005h,002h	; aac0  ~...............
	defb 000h,000h,000h,004h,008h,010h,020h,0c0h,004h,002h,003h,004h,008h,010h,020h,000h	; aad0  ...... ....... .
	defb 040h,080h,000h,000h,000h,000h,000h,000h,000h,000h,000h,020h,010h,008h,004h,003h	; aae0  @.......... ....
	defb 000h,000h,000h,000h,008h,010h,0a0h,040h,002h,001h,000h,000h,000h,000h,000h,000h	; aaf0  .......@........
	defb 020h,040h,0c0h,020h,010h,008h,004h,000h,018h,018h,03ch,07eh,0ffh,018h,03ch,000h	; ab00   @. ......<~..<.
	defb 000h,03eh,01ch,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,0f8h,070h	; ab10  .>.............p
	defb 01fh,00eh,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,01fh,00eh	; ab20  ................
	defb 0f8h,070h,000h,000h,000h,000h,000h,000h,018h,018h,03ch,07eh,0ffh,018h,018h,03ch	; ab30  .p........<~...<
	defb 080h,080h,080h,0bfh,0ffh,0ffh,0ffh,07fh,000h,000h,03fh,0ffh,0ffh,000h,07fh,07fh	; ab40  ..........?.....
	defb 000h,000h,0ffh,0ffh,000h,07fh,07fh,07fh,000h,000h,000h,000h,000h,000h,03ch,07eh	; ab50  ..............<~
	defb 07eh,0ffh,0ffh,0ffh,000h,0ffh,0ffh,000h,0ffh,000h,000h,000h,000h,000h,000h,000h	; ab60  ~...............
	defb 001h,0ffh,0ffh,000h,07fh,07fh,0ffh,000h,0f7h,000h,000h,000h,000h,000h,000h,000h	; ab70  ................
	defb 000h,000h,000h,000h,000h,03ch,07eh,07eh,0ffh,0ffh,000h,0f7h,0f7h,0ffh,0ffh,000h	; ab80  .....<~~........
	defb 000h,000h,000h,000h,000h,001h,003h,003h,0fbh,00bh,0fbh,0fbh,0f0h,00fh,0ffh,000h	; ab90  ................
	defb 018h,018h,03ch,05ah,0d9h,0dah,0dbh,0dbh,0dah,0dah,0dah,0dbh,018h,0e7h,0e7h,0e7h	; aba0  ..<Z............
	defb 018h,0ffh,07eh,018h,024h,000h,000h,000h,000h,000h,000h,000h,000h,080h,0c0h,0c0h	; abb0  ..~.$...........
	defb 09fh,090h,09fh,09fh,00fh,0f0h,0ffh,000h,080h,0ffh,0ffh,000h,0feh,0feh,0ffh,0ffh	; abc0  ................
	defb 0efh,000h,000h,000h,000h,000h,000h,000h,000h,000h,0fch,0ffh,0ffh,000h,07eh,07eh	; abd0  ..............~~
	defb 001h,001h,001h,0fdh,0ffh,0ffh,0ffh,0feh,0ffh,0feh,0ffh,0f0h,080h,001h,000h,00fh	; abe0  ................
	defb 000h,0c0h,0e0h,0f0h,0ffh,0ffh,0ffh,0ffh,0fch,031h,003h,007h,0bfh,0ffh,0ffh,0ffh	; abf0  .........1......
	defb 0fbh,071h,020h,000h,000h,0f0h,0f8h,0fch,003h,0ffh,0ffh,0ffh,0ffh,0ffh,0e5h,0c2h	; ac00  .q .............
	defb 0e7h,0ffh,0ffh,0ffh,07fh,03fh,01fh,000h,000h,000h,0c0h,0f0h,0ffh,0ffh,0ffh,0dfh	; ac10  .....?..........
	defb 03fh,0dfh,0efh,0ffh,0ffh,0c0h,080h,000h,000h,000h,000h,000h,080h,0c0h,0e0h,0c0h	; ac20  ?...............
	defb 0c0h,080h,080h,000h,000h,000h,000h,000h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0f8h	; ac30  ................
	defb 0f8h,0f0h,0e0h,0c0h,0c0h,0e0h,0f0h,0ffh,0fch,0f0h,0f8h,0e0h,0c0h,080h,00dh,001h	; ac40  ................
	defb 003h,03fh,00fh,0fch,010h,000h,003h,00fh,0e7h,003h,001h,0cfh,0dfh,07fh,0ffh,0ffh	; ac50  .?..............
	defb 0ffh,0ffh,0ffh,0ffh,01fh,00eh,0c0h,0dfh,000h,000h,000h,020h,0f0h,0f8h,0ffh,0ffh	; ac60  ........... ....
	defb 0ffh,0ffh,0feh,0f8h,0e0h,03fh,000h,000h,0c3h,000h,003h,080h,0f0h,000h,000h,000h	; ac70  .....?..........
	defb 080h,080h,000h,000h,000h,000h,000h,000h,000h,00fh,0ffh,07ch,001h,08fh,000h,000h	; ac80  ...........|....
	defb 003h,007h,00fh,00fh,00fh,006h,000h,000h,00ch,01eh,0ffh,07fh,00fh,003h,000h,000h	; ac90  ................
	defb 0fch,0feh,0feh,0ffh,07eh,03ch,008h,000h,000h,000h,080h,0c0h,080h,000h,000h,000h	; aca0  ....~<..........
	defb 000h,000h,0c0h,0f0h,0fdh,0ffh,0ffh,0feh,000h,007h,01fh,03fh,07fh,0ffh,07fh,038h	; acb0  ...........?...8
	defb 0ffh,0ffh,08eh,0c4h,0e1h,0ffh,0ffh,0ffh,07fh,03fh,017h,002h,004h,000h,000h,000h	; acc0  .........?......
	defb 000h,000h,080h,0e0h,0f0h,0f8h,0fch,0f0h,0c0h,080h,000h,000h,000h,000h,000h,000h	; acd0  ................
	defb 000h,000h,001h,003h,01fh,07fh,0ffh,07ch,007h,02fh,0e7h,0f3h,0ffh,0f9h,0e0h,000h	; ace0  .......|./......
	defb 0f0h,0f8h,0ffh,0ffh,0ffh,0ffh,07bh,001h,000h,000h,000h,0c8h,0fch,0f8h,0e0h,0c0h	; acf0  ......{.........
	defb 000h,000h,0f8h,0fch,0f8h,090h,000h,087h,000h,080h,038h,006h,001h,040h,0e0h,0f0h	; ad00  ..........8..@..
	defb 0e0h,080h,001h,003h,007h,000h,007h,0ffh,000h,000h,000h,000h,000h,000h,000h,000h	; ad10  ................
	defb 000h,000h,000h,000h,0f0h,000h,000h,060h,0c0h,0a3h,00dh,07fh,0ffh,04eh,004h,001h	; ad20  .......`.....N..
	defb 000h,000h,0fch,0f0h,000h,000h,000h,078h,0f8h,0fch,0feh,073h,007h,08fh,0fch,0f8h	; ad30  .......x...s....
	defb 000h,007h,000h,000h,007h,003h,001h,003h,000h,07fh,03fh,0ffh,0ffh,0fdh,0f0h,000h	; ad40  ..........?.....
	defb 000h,000h,000h,07fh,0e0h,0f0h,0f8h,0fch,0feh,0ffh,0ffh,0ffh,0ffh,0dfh,00fh,000h	; ad50  ................
	defb 000h,0e0h,0f0h,0f0h,0f0h,0e0h,0c0h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; ad60  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; ad70  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; ad80  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; ad90  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; ada0  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; adb0  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; adc0  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; add0  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; ade0  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; adf0  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; ae00  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; ae10  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; ae20  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; ae30  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; ae40  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; ae50  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; ae60  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; ae70  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; ae80  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; ae90  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; aea0  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; aeb0  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; aec0  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; aed0  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; aee0  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; aef0  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; af00  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; af10  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; af20  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; af30  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; af40  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; af50  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; af60  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; af70  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; af80  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; af90  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; afa0  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; afb0  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; afc0  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; afd0  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; afe0  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; aff0  ................

; ----------------------------------------------------------------------
; DATOS fase_colores: Los colores de esas casillas (0x600 bytes) y 0x200 que
;   nadie copia
;   0xb000..0xb800  (2048 bytes)
DATA_fase_colores:
	defb 0f0h,0f0h,0f0h,00ah,0f0h,00ah,0f0h,00ah,00ah,0f0h,00ah,00ah,0f0h,00ah,00ah,00ah	; b000  ................
	defb 0f0h,00ah,00ah,00ah,00ah,00ah,0f0h,00ah,00ah,00ah,00ah,00ah,00ah,00ah,0f0h,00ah	; b010  ................
	defb 00ah,00ah,00ah,00ah,00ah,00ah,00ah,00ah,00ah,00ah,0f0h,00ah,00ah,00ah,00ah,00ah	; b020  ................
	defb 00ah,00ah,00ah,00ah,00ah,00ah,00ah,00ah,00ah,0f0h,00ah,00ah,00ah,00ah,00ah,00ah	; b030  ................
	defb 00ah,00ah,00ah,00ah,00ah,00ah,00ah,0f0h,00ah,00ah,00ah,00ah,00ah,00ah,00ah,00ah	; b040  ................
	defb 00ah,00ah,0f0h,00ah,00ah,00ah,00ah,00ah,00ah,00ah,00ah,00ah,00ah,00ah,00ah,00ah	; b050  ................
	defb 001h,001h,001h,001h,001h,001h,001h,001h,010h,010h,010h,013h,013h,013h,013h,013h	; b060  ................
	defb 031h,031h,031h,031h,031h,031h,030h,030h,001h,0c1h,0c1h,0c3h,0c3h,0c3h,0c3h,0c3h	; b070  11111100........
	defb 03ch,030h,030h,030h,030h,030h,030h,030h,001h,001h,001h,001h,0c1h,0c1h,0c3h,0c3h	; b080  <0000000........
	defb 03ch,03ch,03ch,03ch,03ch,03ch,03ch,03ch,0c1h,031h,031h,031h,031h,030h,030h,030h	; b090  <<<<<<<<.1111000
	defb 030h,030h,03ch,03ch,03ch,03ch,03ch,03ch,01ch,01ch,0cch,03ch,03ch,03ch,03ch,030h	; b0a0  00<<<<<<...<<<<0
	defb 030h,030h,030h,030h,030h,030h,030h,030h,010h,010h,010h,010h,01ch,03ch,00ch,00ch	; b0b0  00000000.....<..
	defb 03ch,03ch,03ch,03ch,030h,030h,030h,030h,010h,010h,013h,013h,003h,003h,003h,0c3h	; b0c0  <<<<0000........
	defb 0c3h,0c3h,0c3h,0c3h,0c3h,0c0h,0c3h,0c3h,01ch,030h,030h,030h,030h,030h,030h,030h	; b0d0  .........0000000
	defb 030h,030h,030h,030h,030h,030h,030h,030h,01ch,01ch,01ch,03ch,03ch,03ch,030h,03ch	; b0e0  00000000...<<<0<
	defb 030h,030h,030h,030h,030h,030h,030h,030h,010h,010h,010h,01ch,01ch,01ch,01ch,01ch	; b0f0  00000000........
	defb 03ch,03ch,03ch,03ch,03ch,03ch,03ch,03ch,010h,010h,010h,010h,010h,010h,010h,010h	; b100  <<<<<<<<........
	defb 010h,01ch,01ch,01ch,01ch,01ch,01ch,00ch,01ch,030h,030h,030h,030h,030h,030h,030h	; b110  .........0000000
	defb 007h,017h,017h,017h,017h,017h,017h,017h,017h,017h,017h,017h,017h,007h,007h,017h	; b120  ................
	defb 017h,017h,017h,017h,017h,017h,017h,017h,010h,010h,010h,010h,010h,010h,010h,007h	; b130  ................
	defb 017h,010h,010h,010h,010h,010h,010h,010h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h	; b140  ................
	defb 0f0h,0f0h,000h,000h,000h,000h,000h,000h,007h,017h,017h,017h,010h,010h,010h,010h	; b150  ................
	defb 010h,010h,010h,010h,010h,010h,010h,007h,007h,017h,017h,010h,010h,010h,010h,010h	; b160  ................
	defb 017h,017h,017h,007h,010h,010h,010h,007h,007h,017h,017h,017h,017h,017h,017h,017h	; b170  ................
	defb 017h,017h,017h,017h,017h,007h,007h,017h,017h,017h,017h,017h,017h,017h,017h,017h	; b180  ................
	defb 010h,010h,010h,010h,010h,010h,010h,007h,01fh,01fh,01fh,01fh,01fh,01fh,01fh,01fh	; b190  ................
	defb 00fh,010h,010h,010h,010h,010h,010h,00fh,00fh,015h,015h,015h,015h,015h,015h,00fh	; b1a0  ................
	defb 00fh,015h,015h,015h,015h,015h,015h,00fh,00fh,015h,015h,015h,015h,015h,015h,00fh	; b1b0  ................
	defb 00fh,015h,015h,015h,015h,015h,015h,00fh,00fh,015h,015h,015h,015h,015h,015h,00fh	; b1c0  ................
	defb 00fh,015h,015h,015h,015h,015h,015h,00fh,00fh,015h,015h,015h,015h,015h,015h,00fh	; b1d0  ................
	defb 00fh,005h,005h,005h,005h,005h,005h,00fh,01fh,01fh,01fh,01fh,01fh,01fh,01fh,01fh	; b1e0  ................
	defb 0e0h,0e0h,0e0h,0e0h,0e0h,0e0h,0e0h,0e0h,0efh,0efh,0efh,0efh,0efh,0efh,0efh,0efh	; b1f0  ................
	defb 010h,010h,010h,010h,010h,010h,010h,007h,0feh,0f0h,0f0h,0e0h,0f0h,0f0h,000h,000h	; b200  ................
	defb 0feh,0f0h,0f0h,0e0h,0f0h,0f0h,0f0h,0f0h,017h,017h,017h,017h,017h,017h,017h,017h	; b210  ................
	defb 010h,010h,010h,010h,010h,010h,010h,007h,017h,017h,017h,017h,017h,017h,017h,017h	; b220  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; b230  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; b240  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; b250  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; b260  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; b270  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; b280  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; b290  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h	; b2a0  ................
	defb 000h,000h,000h,000h,000h,000h,0f0h,0f0h,0f0h,0f0h,000h,000h,000h,000h,000h,000h	; b2b0  ................
	defb 0f0h,0f0h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,0f0h,0f0h,0f0h,0f0h	; b2c0  ................
	defb 000h,000h,000h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,000h	; b2d0  ................
	defb 0f0h,0f0h,000h,000h,000h,000h,000h,000h,000h,000h,000h,0f0h,0f0h,0f0h,0f0h,0f0h	; b2e0  ................
	defb 000h,000h,000h,000h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,000h,000h,000h,000h,000h,000h	; b2f0  ................
	defb 0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,000h,050h,050h,050h,050h,050h,050h,050h,000h	; b300  ........PPPPPPP.
	defb 000h,000h,090h,090h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,090h,090h	; b310  ................
	defb 090h,090h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,090h,090h	; b320  ................
	defb 090h,090h,000h,000h,000h,000h,000h,000h,0b0h,0b0h,0b0h,0b0h,0b0h,0b0h,0b0h,0b0h	; b330  ................
	defb 0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,00eh,0feh,0feh	; b340  ................
	defb 000h,000h,0f0h,0f0h,00eh,0feh,0feh,0feh,000h,000h,000h,000h,000h,000h,0f0h,0f0h	; b350  ................
	defb 0e0h,0f0h,0f0h,0f0h,00eh,0f0h,0f0h,00eh,0f0h,000h,000h,000h,000h,000h,000h,000h	; b360  ................
	defb 0f0h,0f0h,0f0h,0feh,0feh,0feh,0f0h,00eh,0f0h,000h,000h,000h,000h,000h,000h,000h	; b370  ................
	defb 000h,000h,000h,000h,000h,0f0h,0f0h,0e0h,0f0h,0f0h,00eh,0feh,0feh,0f0h,0f0h,00eh	; b380  ................
	defb 000h,000h,000h,000h,000h,0f0h,0f0h,0f0h,0feh,0feh,0feh,0feh,0feh,0f0h,0f0h,0f0h	; b390  ................
	defb 0f0h,0f0h,0f0h,0f0h,0feh,0feh,0feh,0feh,0feh,0feh,0feh,0feh,0feh,0feh,0feh,0feh	; b3a0  ................
	defb 0feh,0f0h,0f0h,0e0h,0f0h,000h,000h,000h,000h,000h,000h,000h,000h,0f0h,0f0h,0f0h	; b3b0  ................
	defb 0feh,0feh,0feh,0feh,0feh,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,00eh,0feh,0feh,0f0h,0f0h	; b3c0  ................
	defb 0f0h,000h,000h,000h,000h,000h,000h,000h,000h,000h,0f0h,0f0h,0f0h,00eh,0feh,0feh	; b3d0  ................
	defb 0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,000h,00eh,000h,00eh,00eh,0feh,00eh,0feh	; b3e0  ................
	defb 00eh,00eh,00eh,00eh,000h,000h,000h,000h,00eh,0feh,0feh,0feh,0feh,0f0h,0f0h,0f0h	; b3f0  ................
	defb 0feh,0feh,0feh,00eh,00eh,00eh,00eh,00eh,00eh,0f0h,0f0h,0f0h,0f0h,0f0h,0feh,0feh	; b400  ................
	defb 0feh,0f0h,0f0h,0f0h,0feh,0feh,0feh,00eh,000h,000h,0f0h,0f0h,0f0h,0f0h,0f0h,0feh	; b410  ................
	defb 0feh,0feh,0feh,0f0h,0f0h,0f0h,0f0h,000h,000h,000h,000h,000h,0f0h,0f0h,0f0h,0f0h	; b420  ................
	defb 0f0h,0f0h,0f0h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,00eh	; b430  ................
	defb 00eh,00eh,00eh,00eh,00eh,00eh,00eh,000h,00eh,00eh,00eh,00eh,00eh,00eh,0feh,0feh	; b440  ................
	defb 0feh,0feh,0feh,0feh,0feh,00eh,00eh,00eh,00eh,00eh,00eh,0feh,0feh,0feh,0f0h,0f0h	; b450  ................
	defb 0f0h,0f0h,0f0h,0f0h,0feh,0feh,00eh,00eh,000h,000h,000h,0f0h,0f0h,0f0h,0f0h,0f0h	; b460  ................
	defb 0f0h,0f0h,0f0h,0f0h,0f0h,00eh,000h,000h,00eh,00eh,0feh,00eh,00eh,000h,000h,0f0h	; b470  ................
	defb 0f0h,0f0h,000h,000h,000h,000h,000h,000h,000h,0f0h,0f0h,0feh,00eh,00eh,000h,000h	; b480  ................
	defb 0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,000h,000h,0f0h,0f0h,0f0h,0feh,0f0h,0f0h,000h,000h	; b490  ................
	defb 0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,000h,000h,000h,0f0h,0f0h,0f0h,000h,000h,000h	; b4a0  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h	; b4b0  ................
	defb 0f0h,0f0h,0feh,0feh,0feh,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,000h,000h,000h	; b4c0  ................
	defb 000h,000h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,000h,000h,000h,000h,000h	; b4d0  ................
	defb 000h,000h,0f0h,0f0h,0f0h,0f0h,0f0h,0e0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,000h	; b4e0  ................
	defb 0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,000h,000h,000h,0f0h,0f0h,0f0h,0f0h,0f0h	; b4f0  ................
	defb 000h,000h,00eh,00eh,00eh,00eh,00eh,00fh,000h,00eh,0feh,0feh,0feh,00eh,00eh,00eh	; b500  ................
	defb 00eh,00eh,0feh,0feh,0feh,00eh,00eh,000h,000h,000h,000h,000h,000h,000h,00eh,00eh	; b510  ................
	defb 000h,000h,000h,000h,00eh,00eh,00eh,0feh,0feh,0feh,0feh,0feh,0f0h,0feh,0feh,0feh	; b520  ................
	defb 000h,000h,00eh,00eh,00eh,00eh,00eh,0feh,0feh,0feh,0feh,0feh,0feh,0feh,0f0h,0f0h	; b530  ................
	defb 000h,00eh,00eh,00eh,0feh,0feh,0feh,0feh,00eh,0feh,0feh,0f0h,0f0h,0f0h,0f0h,000h	; b540  ................
	defb 000h,000h,000h,00eh,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,000h	; b550  ................
	defb 000h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; b560  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; b570  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; b580  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; b590  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; b5a0  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; b5b0  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; b5c0  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; b5d0  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; b5e0  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; b5f0  ................
	defb 0f0h,0f0h,0f0h,0f0h,0f0h,0feh,0feh,000h,000h,000h,000h,000h,000h,000h,0f0h,0f0h	; b600  ................
	defb 0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0feh,0feh,000h,000h,000h,0f0h,0f0h,0f0h,0f0h,0f0h	; b610  ................
	defb 0feh,0feh,0feh,0feh,0feh,0feh,00eh,00eh,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h	; b620  ................
	defb 0f0h,0f0h,0f0h,0f0h,0feh,0feh,00eh,00eh,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0feh	; b630  ................
	defb 0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,00eh,00eh,000h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,00eh	; b640  ................
	defb 000h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,00eh,000h,000h,0f0h,00eh,0f0h,0f0h,000h,0f0h	; b650  ................
	defb 000h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,00eh,00eh,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,00eh	; b660  ................
	defb 000h,0f0h,00eh,0f0h,00eh,0f0h,00eh,0f0h,00eh,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,00eh	; b670  ................
	defb 0f0h,0f0h,00eh,0f0h,00eh,0f0h,0feh,0f0h,00eh,0f0h,0f0h,0f0h,0f0h,0f0h,00eh,00eh	; b680  ................
	defb 0f0h,0f0h,0feh,0feh,0f0h,00eh,0f0h,0f0h,00eh,0f0h,0f0h,0f0h,0f0h,000h,00eh,00eh	; b690  ................
	defb 000h,000h,000h,000h,000h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,00eh,0f0h,00eh,0f0h,0f0h	; b6a0  ................
	defb 00eh,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,00eh,000h,000h,000h,0f0h,0f0h,0f0h,0f0h,0f0h	; b6b0  ................
	defb 00eh,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,000h,000h,000h,0f0h,0f0h,0f0h,0f0h,0feh	; b6c0  ................
	defb 0feh,0feh,0feh,0feh,0feh,0feh,0f0h,0feh,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0feh,000h	; b6d0  ................
	defb 00bh,0f0h,00bh,0f0h,0f0h,0f0h,0f0h,0f0h,0feh,0feh,0feh,0feh,0feh,0feh,0feh,0feh	; b6e0  ................
	defb 0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0feh,0f0h,0f0h,0f0h,0f0h,0f0h,0feh,0f0h,0f0h	; b6f0  ................
	defb 00bh,0f0h,00bh,0feh,0feh,0feh,0feh,0feh,0feh,0feh,0feh,0feh,0feh,0feh,0feh,0feh	; b700  ................
	defb 0feh,0feh,0feh,0feh,0feh,0feh,0feh,0feh,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h	; b710  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; b720  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; b730  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; b740  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; b750  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; b760  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; b770  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; b780  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; b790  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; b7a0  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; b7b0  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; b7c0  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; b7d0  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; b7e0  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; b7f0  ................

; ----------------------------------------------------------------------
; DATOS sprites_datos: Los dibujos de los sprites (0x800 bytes a 0x3800,
;   0x987A): el avion, los enemigos, sus tiros, las explosiones
;   0xb800..0xc000  (2048 bytes)
DATA_sprites_datos:
	defb 004h,084h,044h,044h,064h,074h,0dfh,0dfh,0e7h,0dbh,0a5h,0a5h,0dbh,03ch,000h,000h	; b800  ..DDdt.......<..
	defb 000h,000h,000h,000h,000h,000h,000h,0c0h,0f8h,0ffh,080h,0e0h,0f0h,0f0h,000h,000h	; b810  ................
	defb 000h,000h,000h,000h,000h,000h,000h,003h,01fh,0ffh,001h,007h,00fh,00fh,000h,000h	; b820  ................
	defb 020h,021h,022h,022h,026h,02eh,0fbh,0fbh,0e7h,0dbh,0a5h,0a5h,0dbh,03ch,000h,000h	; b830   !""&........<..
	defb 000h,004h,004h,084h,044h,0a4h,0fch,0e7h,0dbh,0a5h,0a5h,0dah,03ch,000h,000h,000h	; b840  ....D.......<...
	defb 000h,000h,000h,000h,000h,000h,000h,000h,0ffh,0e0h,000h,000h,000h,000h,000h,000h	; b850  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,0ffh,007h,000h,000h,000h,000h,000h,000h	; b860  ................
	defb 000h,020h,020h,021h,022h,025h,03fh,0e7h,0dbh,0a5h,0a5h,05bh,03ch,000h,000h,000h	; b870  .  !"%?....[<...
	defb 000h,004h,004h,084h,044h,044h,064h,0ffh,0e7h,0dbh,0a5h,0a5h,0dah,03ch,000h,000h	; b880  ....DDd......<..
	defb 000h,000h,000h,000h,000h,000h,000h,000h,0f0h,0ffh,000h,0f0h,000h,000h,000h,000h	; b890  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,00fh,0ffh,000h,00fh,000h,000h,000h,000h	; b8a0  ................
	defb 000h,020h,020h,021h,022h,022h,026h,0ffh,0e7h,0dbh,0a5h,0a5h,05bh,03ch,000h,000h	; b8b0  .  !""&.....[<..
	defb 004h,004h,004h,004h,004h,01fh,0d8h,0a5h,0a5h,0dbh,0dfh,080h,000h,000h,000h,000h	; b8c0  ................
	defb 000h,000h,000h,000h,000h,000h,0e0h,0c0h,0ffh,0f0h,000h,000h,000h,000h,000h,000h	; b8d0  ................
	defb 000h,000h,000h,000h,000h,000h,007h,003h,0ffh,00fh,000h,000h,000h,000h,000h,000h	; b8e0  ................
	defb 020h,020h,020h,020h,020h,0fch,01bh,0a5h,0a5h,0dbh,0ffh,001h,000h,000h,000h,000h	; b8f0       ...........
	defb 000h,000h,000h,0e0h,010h,090h,0f9h,0fdh,0e7h,0dah,0a5h,0a5h,05ah,03ch,000h,000h	; b900  ............Z<..
	defb 000h,000h,000h,080h,080h,080h,000h,000h,000h,0e0h,0fch,0dfh,000h,000h,000h,000h	; b910  ................
	defb 000h,000h,000h,000h,0e0h,03dh,00fh,003h,000h,000h,000h,000h,000h,000h,000h,000h	; b920  .....=..........
	defb 010h,010h,010h,020h,021h,0e3h,0ffh,0e7h,05bh,0a5h,0a5h,05bh,03dh,000h,000h,000h	; b930  ... !...[..[=...
	defb 000h,000h,000h,0e0h,010h,008h,0d8h,0f8h,0fdh,0e7h,05ah,0a5h,0a5h,05bh,03ch,000h	; b940  ..........Z..[<.
	defb 000h,000h,000h,000h,040h,040h,080h,080h,000h,000h,0c0h,0e0h,0f0h,01ch,007h,000h	; b950  ....@@..........
	defb 000h,0e0h,038h,01eh,007h,001h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; b960  ..8.............
	defb 008h,008h,010h,010h,0e1h,0fbh,0e7h,05ah,0a5h,0a5h,05ah,03ch,000h,000h,000h,000h	; b970  .......Z..Z<....
	defb 008h,008h,008h,004h,084h,0edh,0ddh,0a6h,0dbh,0a5h,0a5h,0dah,0bch,000h,000h,000h	; b980  ................
	defb 000h,000h,000h,000h,007h,0bch,0f0h,0c0h,000h,000h,000h,000h,000h,000h,000h,000h	; b990  ................
	defb 000h,000h,000h,001h,001h,001h,000h,000h,000h,007h,03fh,0fbh,000h,000h,000h,000h	; b9a0  ..........?.....
	defb 000h,000h,000h,007h,008h,009h,08fh,09fh,0e7h,0dbh,0a5h,0a5h,05ah,03ch,000h,000h	; b9b0  ............Z<..
	defb 010h,010h,008h,008h,087h,0dfh,0e7h,05bh,0a5h,0a5h,05ah,03ch,000h,000h,000h,000h	; b9c0  .......[..Z<....
	defb 000h,007h,01ch,078h,0e0h,080h,000h,080h,000h,000h,000h,000h,000h,000h,000h,000h	; b9d0  ...x............
	defb 000h,000h,000h,000h,002h,002h,001h,001h,000h,001h,003h,007h,00fh,038h,0e0h,000h	; b9e0  .............8..
	defb 000h,000h,000h,007h,008h,008h,01bh,03fh,0ffh,0a7h,05ah,0a5h,0a5h,05ah,03ch,000h	; b9f0  .......?..Z..Z<.
	defb 001h,001h,003h,003h,006h,006h,00ch,00ch,019h,019h,033h,033h,067h,067h,0cfh,0cfh	; ba00  ..........33gg..
	defb 09fh,09fh,03fh,03fh,07fh,07fh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; ba10  ..??............
	defb 0f9h,0f9h,0fch,0fch,0feh,0feh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; ba20  ................
	defb 080h,080h,0c0h,0c0h,060h,060h,030h,030h,098h,098h,0cch,0cch,0e6h,0e6h,0f3h,0f3h	; ba30  ....``00........
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,001h,003h,000h,001h	; ba40  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,080h,0c0h,0e0h,080h,0c0h	; ba50  ................
	defb 000h,000h,020h,026h,027h,027h,07fh,07fh,07bh,0edh,03bh,001h,000h,000h,000h,000h	; ba60  .. &''..{.;.....
	defb 000h,000h,020h,010h,038h,0b8h,07ch,0f7h,0dch,0e0h,020h,0e0h,060h,000h,000h,000h	; ba70  .. .8.|... .`...
	defb 000h,008h,008h,010h,010h,039h,0bbh,0fbh,06fh,03fh,007h,006h,003h,001h,000h,000h	; ba80  .....9..o?......
	defb 000h,010h,010h,008h,008h,09ch,0ddh,0dfh,0f6h,0fch,0e0h,060h,0c0h,080h,000h,000h	; ba90  ...........`....
	defb 002h,004h,008h,008h,01ch,01ch,03ch,0efh,03bh,007h,004h,007h,006h,000h,000h,000h	; baa0  ......<.;.......
	defb 000h,000h,004h,064h,0e4h,0e4h,0feh,0feh,0deh,0b7h,0dch,080h,000h,000h,000h,000h	; bab0  ...d............
	defb 000h,000h,002h,002h,002h,002h,003h,00fh,03eh,0f7h,004h,003h,002h,000h,000h,000h	; bac0  ........>.......
	defb 000h,000h,000h,000h,000h,000h,0beh,0f8h,0c0h,0c0h,040h,0c0h,080h,000h,000h,000h	; bad0  ..........@.....
	defb 000h,000h,000h,001h,001h,001h,001h,003h,0ffh,01eh,007h,004h,003h,005h,000h,000h	; bae0  ................
	defb 000h,000h,000h,000h,000h,000h,000h,080h,0feh,0f0h,0c0h,040h,080h,040h,000h,000h	; baf0  ...........@.@..
	defb 000h,000h,000h,000h,000h,000h,0fbh,03fh,006h,007h,004h,00fh,002h,000h,000h,000h	; bb00  .......?........
	defb 000h,000h,080h,080h,080h,080h,080h,0e0h,0f8h,0dfh,040h,080h,080h,000h,000h,000h	; bb10  ..........@.....
	defb 000h,000h,004h,004h,002h,003h,007h,00fh,03ah,00bh,00fh,0f0h,008h,014h,000h,000h	; bb20  ........:.......
	defb 000h,000h,000h,000h,000h,038h,0e0h,0a0h,0beh,0e0h,090h,028h,000h,000h,000h,000h	; bb30  .....8.....(....
	defb 000h,000h,001h,001h,001h,001h,003h,007h,03bh,00ah,0ffh,013h,028h,000h,000h,000h	; bb40  ........;...(...
	defb 000h,000h,000h,000h,000h,000h,080h,0c0h,0b8h,0a0h,0feh,090h,028h,000h,000h,000h	; bb50  ............(...
	defb 000h,000h,000h,000h,000h,039h,00fh,00bh,0fah,00fh,013h,028h,000h,000h,000h,000h	; bb60  .....9.....(....
	defb 000h,000h,040h,040h,080h,080h,0c0h,0e0h,0b8h,0a0h,0e0h,01eh,020h,050h,000h,000h	; bb70  ..@@........ P..
	defb 000h,000h,002h,003h,003h,001h,003h,003h,00fh,019h,07dh,0e7h,000h,000h,000h,000h	; bb80  ..........}.....
	defb 000h,000h,000h,000h,000h,080h,0beh,0f8h,090h,0d0h,070h,080h,000h,000h,000h,000h	; bb90  ..........p.....
	defb 000h,000h,001h,001h,001h,001h,003h,00fh,07fh,0fbh,08ah,00bh,00eh,000h,000h,000h	; bba0  ................
	defb 000h,000h,000h,000h,000h,000h,080h,0e0h,0fch,0beh,0a2h,0a0h,0e0h,000h,000h,000h	; bbb0  ................
	defb 000h,000h,000h,000h,001h,0e1h,07bh,03fh,013h,017h,01dh,003h,000h,000h,000h,000h	; bbc0  ......{?........
	defb 000h,000h,080h,080h,080h,080h,000h,080h,0e0h,030h,07ch,0ceh,000h,000h,000h,000h	; bbd0  .........0|.....
	defb 000h,000h,000h,010h,018h,00ch,005h,007h,01fh,0ffh,075h,005h,007h,000h,000h,000h	; bbe0  ..........u.....
	defb 000h,020h,020h,020h,020h,030h,0ffh,0feh,0e8h,0e8h,0b8h,000h,000h,000h,000h,000h	; bbf0  .    0..........
	defb 000h,000h,008h,008h,00ch,004h,00dh,0ffh,03fh,00bh,00bh,00eh,000h,000h,000h,000h	; bc00  ........?.......
	defb 000h,000h,010h,010h,030h,020h,0b0h,0ffh,0fch,0d0h,0d0h,070h,000h,000h,000h,000h	; bc10  ....0 .....p....
	defb 000h,002h,002h,002h,002h,0f2h,07fh,01fh,017h,017h,01dh,000h,000h,000h,000h,000h	; bc20  ................
	defb 000h,000h,000h,008h,018h,030h,0a0h,0e0h,0f0h,0ffh,0aeh,0a0h,0e0h,000h,000h,000h	; bc30  .....0..........
	defb 000h,000h,000h,001h,007h,00eh,01bh,007h,00eh,03fh,073h,0d0h,028h,010h,000h,000h	; bc40  .........?s.(...
	defb 000h,000h,080h,080h,006h,01ch,0f8h,0e8h,0d4h,088h,000h,000h,000h,000h,000h,000h	; bc50  ................
	defb 000h,000h,000h,000h,000h,00fh,001h,003h,007h,03fh,0feh,013h,029h,010h,000h,000h	; bc60  .........?..)...
	defb 000h,000h,000h,000h,000h,0e0h,000h,080h,0c0h,0f8h,0feh,090h,028h,010h,000h,000h	; bc70  ............(...
	defb 000h,000h,004h,007h,0c1h,070h,03fh,02fh,056h,023h,003h,000h,000h,000h,000h,000h	; bc80  .....p?/V#......
	defb 000h,000h,000h,000h,0c0h,0e0h,0b0h,0c0h,0e0h,0f8h,01ch,016h,028h,010h,000h,000h	; bc90  ............(...
	defb 000h,000h,000h,000h,000h,000h,03dh,0c7h,0ffh,03eh,003h,001h,000h,000h,000h,000h	; bca0  ......=..>......
	defb 000h,000h,000h,000h,076h,09eh,03eh,0f2h,0ffh,003h,0fch,0c6h,072h,01eh,000h,000h	; bcb0  ....v.>.....r...
	defb 000h,000h,000h,060h,030h,018h,00ch,006h,007h,006h,007h,003h,001h,000h,000h,000h	; bcc0  ...`0...........
	defb 000h,000h,000h,000h,000h,008h,090h,060h,0e0h,0d0h,040h,0e0h,0f0h,018h,00ch,006h	; bcd0  .......`..@.....
	defb 000h,000h,000h,000h,06eh,079h,07fh,04ch,0feh,0cfh,004h,004h,007h,000h,000h,000h	; bce0  ....ny.L........
	defb 000h,000h,000h,000h,000h,000h,0bch,07fh,07fh,0f8h,040h,080h,000h,000h,000h,000h	; bcf0  ..........@.....
	defb 000h,000h,022h,014h,008h,015h,022h,004h,004h,004h,00fh,018h,030h,060h,040h,000h	; bd00  .."...".....0`@.
	defb 000h,006h,00ch,018h,030h,0e0h,020h,020h,040h,080h,000h,000h,000h,000h,000h,000h	; bd10  ....0.  @.......
	defb 000h,000h,000h,000h,000h,002h,005h,002h,007h,000h,000h,000h,000h,000h,000h,000h	; bd20  ................
	defb 000h,000h,000h,000h,000h,080h,080h,080h,040h,0e0h,070h,030h,008h,000h,000h,000h	; bd30  ........@.p0....
	defb 000h,000h,000h,000h,000h,001h,001h,001h,002h,007h,00eh,00ch,010h,000h,000h,000h	; bd40  ................
	defb 000h,000h,000h,000h,000h,040h,0a0h,040h,0e0h,000h,000h,000h,000h,000h,000h,000h	; bd50  .....@.@........
	defb 000h,000h,000h,000h,004h,002h,005h,002h,001h,001h,001h,003h,001h,001h,000h,000h	; bd60  ................
	defb 000h,000h,000h,000h,020h,040h,0a0h,040h,080h,080h,080h,0c0h,080h,080h,000h,000h	; bd70  .... @.@........
	defb 000h,000h,000h,001h,002h,000h,001h,001h,003h,007h,00eh,00ch,010h,000h,000h,000h	; bd80  ................
	defb 000h,000h,000h,000h,080h,0a0h,0c0h,070h,0c8h,010h,000h,000h,000h,000h,000h,000h	; bd90  .......p........
	defb 003h,00fh,03fh,0ffh,03fh,00fh,003h,000h,000h,000h,000h,000h,000h,000h,00fh,0ffh	; bda0  ..?.?...........
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0e0h,0c0h,000h,000h,000h,001h,006h,01ch,0f8h,0ffh	; bdb0  ................
	defb 07fh,07fh,07fh,03fh,07fh,07fh,000h,000h,003h,03ch,040h,0a0h,010h,010h,010h,0ffh	; bdc0  ...?.....<@.....
	defb 0ffh,0ffh,0ffh,0ffh,06fh,0b7h,000h,000h,0e0h,01fh,004h,004h,004h,07fh,0e0h,0efh	; bdd0  ....o...........
	defb 0e0h,0f7h,0fbh,0fdh,0feh,0ffh,000h,000h,000h,0c0h,03fh,003h,003h,03fh,000h,0ffh	; bde0  ..........?..?..
	defb 000h,0ffh,0ffh,0ffh,0ffh,07fh,03fh,000h,000h,000h,0ffh,000h,0ffh,0ffh,000h,0ffh	; bdf0  ......?.........
	defb 000h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,000h,0ffh,00fh,0f0h,0ffh,0ffh,0ffh,0ffh,000h	; be00  ................
	defb 000h,0feh,000h,0ffh,000h,0ffh,000h,0ffh,000h,0ffh,03fh,0c0h,0ffh,0ffh,0ffh,000h	; be10  ..........?.....
	defb 0ffh,0ffh,000h,0ffh,000h,0ffh,0ffh,0ffh,000h,0ffh,0ffh,07fh,081h,0feh,000h,000h	; be20  ................
	defb 0ffh,0ffh,003h,0fch,0ffh,000h,0ffh,0ffh,000h,0ffh,0ffh,0ffh,0ffh,000h,000h,000h	; be30  ................
	defb 000h,000h,000h,000h,000h,007h,0ffh,0ffh,0ffh,0ffh,0ffh,000h,0ffh,000h,0ffh,0ffh	; be40  ................
	defb 000h,0ffh,0ffh,0ffh,0ffh,0ffh,00fh,000h,000h,000h,000h,003h,01fh,0ffh,0ffh,0ffh	; be50  ................
	defb 000h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,01ch,000h,000h,000h,080h,0e1h,0f1h,0e3h,0c2h	; be60  ................
	defb 086h,085h,08dh,00bh,0fbh,007h,0ffh,0c0h,0bfh,0bfh,0bfh,0dfh,0efh,0d0h,080h,000h	; be70  ................
	defb 000h,00fh,000h,01bh,017h,037h,02fh,06fh,05fh,05fh,0dfh,0bfh,0bfh,07fh,07fh,07fh	; be80  .....7/o__......
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0fch,000h,07fh,0bfh,0dfh,0efh,0f7h,003h,003h,001h	; be90  ................
	defb 000h,0ffh,000h,0ffh,0c0h,0dfh,0dfh,0dfh,0dfh,0dfh,0dfh,0bfh,0bfh,080h,0bfh,0bfh	; bea0  ................
	defb 07fh,07fh,07fh,07fh,000h,07fh,00fh,000h,0f8h,0f8h,0fch,0feh,0ffh,0ffh,0ffh,0feh	; beb0  ................
	defb 001h,00ah,01fh,02ch,045h,060h,049h,038h,020h,03eh,000h,022h,020h,014h,007h,000h	; bec0  ...,E`I8 >." ...
	defb 080h,060h,0d0h,068h,034h,014h,00ch,02eh,0f0h,032h,0cah,034h,09ch,0f8h,000h,000h	; bed0  .`.h4....2.4....
	defb 000h,000h,000h,000h,001h,005h,003h,007h,01fh,07fh,010h,000h,000h,000h,000h,000h	; bee0  ................
	defb 000h,000h,000h,000h,000h,040h,080h,0c0h,0f0h,0fch,010h,000h,000h,000h,000h,000h	; bef0  .....@..........
	defb 000h,000h,004h,00ch,00ch,07ch,026h,042h,082h,082h,09ah,0e5h,040h,041h,001h,000h	; bf00  .....|&B....@A..
	defb 000h,000h,000h,000h,044h,0feh,000h,000h,000h,000h,000h,0f9h,000h,0e0h,0e0h,000h	; bf10  ....D...........
	defb 000h,000h,000h,000h,000h,001h,001h,021h,071h,071h,000h,000h,018h,03ch,03ch,018h	; bf20  .......!qq...<<.
	defb 000h,000h,000h,000h,0bah,001h,0ffh,0ffh,0ffh,0ffh,0feh,000h,006h,00fh,00fh,006h	; bf30  ................
	defb 000h,000h,000h,010h,008h,004h,002h,001h,001h,002h,004h,000h,000h,000h,000h,000h	; bf40  ................
	defb 000h,000h,000h,000h,000h,020h,040h,080h,080h,040h,020h,010h,008h,000h,000h,000h	; bf50  ..... @..@ .....
	defb 000h,000h,000h,001h,008h,004h,003h,00dh,001h,012h,005h,004h,000h,000h,000h,000h	; bf60  ................
	defb 000h,000h,000h,000h,020h,0a0h,048h,080h,0b0h,0c0h,020h,010h,080h,000h,000h,000h	; bf70  .... .H... .....
	defb 000h,000h,000h,002h,000h,00bh,016h,009h,003h,019h,004h,00ah,000h,001h,000h,000h	; bf80  ................
	defb 000h,000h,0c0h,000h,090h,054h,0a8h,064h,0d0h,0e8h,084h,030h,098h,040h,000h,000h	; bf90  .....T.d...0.@..
	defb 000h,003h,009h,00ah,036h,078h,017h,069h,01fh,00fh,05dh,04fh,06eh,00ah,003h,010h	; bfa0  ....6x.i..]On...
	defb 000h,020h,024h,0d8h,0a8h,0e8h,0b6h,072h,0cah,06ah,0c8h,0f6h,0d4h,0a4h,050h,000h	; bfb0  . $....r.j....P.
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,080h,080h,080h	; bfc0  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,001h,001h,001h	; bfd0  ................
	defb 001h,000h,021h,005h,00bh,005h,002h,0b0h,02dh,003h,004h,009h,000h,040h,000h,000h	; bfe0  ..!.....-....@..
	defb 000h,002h,020h,048h,010h,0a8h,0d0h,080h,055h,0e0h,0a8h,0b0h,088h,080h,002h,080h	; bff0  .. H....U.......
