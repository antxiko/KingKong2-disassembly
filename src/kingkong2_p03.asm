; ==========================================================================
; KING KONG 2: YOMIGAERU DENSETSU - Konami (1986) - MSX - MegaROM RC-745 de 128 KB (Konami4) - banco 03 (se ejecuta en 0xa000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x0a000


; ----------------------------------------------------------------------
; DATOS call_partido: el resto (0x729E) de call 0x729E que empieza en
;   p02:9FFF: el codigo sigue de largo de p02:9FFC a p03:A002
;   0xa000..0xa002  (2 bytes)
DATA_call_partido:
	defb 09eh,072h	; a000

; ======================================================================
; CODIGO 0xa002..0xa362  (864 bytes)
; ======================================================================


L_A002:
	ld hl,0bf32h		;a002   ; velocidades: 16 entradas de 4 bytes que p03:BF19 pone en ix+8, ix+7, ix+0x0A e ix+9 (dos velocidades de 16 bits) segun A; se entra por 0xBF32, 0xBF42, 0xBF52 y 0xBF62
L_A005:
	ld (ix+015h),a		;a005   ; guarda su direccion
	jp velocidad_de_la_tabla_4		;a008   ; velocidad_de_la_tabla_4: las dos velocidades de las 4 bytes HL + 4*A: [vy alta][vy baja][vx alta][vx baja]
L_A00B:
	call spider_cuadros		;a00b   ; PASO 1: parada ix+0x12 cuadros y vuelta al paso 0 con otro rumbo...
	ld a,(0dfb0h)		;a00e
	dec a			;a011
	jr z,L_A01E		;a012
	dec (ix+012h)		;a014   ; baja la espera
	ret nz			;a017
	dec (ix+001h)		;a018   ; baja el paso en que va
	jp 09f6ah		;a01b
L_A01E:
	xor a			;a01e   ; ...salvo si tocaron su ficha 0x0D: apunta donde esta (0xDFB1, 0xDFB2), quieta 0x30 cuadros (paso 2)...
	ld (0dfb0h),a		;a01f
	ld a,(ix+003h)		;a022   ; lee la y del enemigo
	ld (0dfb1h),a		;a025
	ld a,(ix+005h)		;a028   ; lee la x del enemigo
	ld (0dfb2h),a		;a02b
	ld (ix+001h),002h		;a02e   ; el paso en que va = 0x02
	ld (ix+014h),030h		;a032   ; la espera = 0x30
	ld (ix+006h),000h		;a036   ; si se mueve = 0x00
	ld a,(ix+000h)		;a03a   ; ...y REDSPIDER saldra en vertical hacia la mitad de Mitchel; BIGSPIDER, hacia el a 0x90
	cp 00bh		;a03d   ; REDSPIDER (tipo 0x0B)?
	jr nz,L_A053		;a03f
	ld b,000h		;a041
	ld a,(0c303h)		;a043   ; lee la Y de Mitchel
	cp 058h		;a046
	jr c,L_A04C		;a048
	ld b,002h		;a04a
L_A04C:
	ld a,b			;a04c
	ld hl,0bf42h		;a04d
	jp L_A005		;a050
L_A053:
	ld a,090h		;a053
	jp L_A165		;a055
L_A058:
	call spider_cuadros		;a058   ; PASO 3: en marcha hasta salirse de la zona (y 0x28-0x88, 0x18-0x88 BIGSPIDER; x 0x18-0x98) o tocar a Mitchel (+-0x10)...
	ld b,09fh		;a05b
	ld a,(ix+000h)		;a05d   ; lee el tipo del enemigo
	cp 00bh		;a060   ; REDSPIDER (tipo 0x0B)?
	jr z,L_A066		;a062
	ld b,08fh		;a064
L_A066:
	ld a,(ix+003h)		;a066   ; lee la y del enemigo
	add a,077h		;a069
	cp b			;a06b
	jr c,L_A095		;a06c
	ld a,(ix+005h)		;a06e   ; lee la x del enemigo
	add a,067h		;a071
	cp 07fh		;a073
	jr c,L_A095		;a075
	ld a,(0c303h)		;a077   ; lee la Y de Mitchel
	sub 010h		;a07a
	cp (ix+003h)		;a07c   ; compara con la y del enemigo
	ret nc			;a07f
	add a,020h		;a080
	cp (ix+003h)		;a082   ; compara con la y del enemigo
	ret c			;a085
	ld a,(0c305h)		;a086   ; lee la X de Mitchel
	sub 010h		;a089
	cp (ix+005h)		;a08b   ; compara con la x del enemigo
	ret nc			;a08e
	add a,020h		;a08f
	cp (ix+005h)		;a091   ; compara con la x del enemigo
	ret c			;a094
L_A095:
	inc (ix+001h)		;a095   ; ...entonces quieta 0x10 cuadros y con la velocidad al reves (paso 4)
	ld (ix+014h),010h		;a098   ; la espera = 0x10
	ld (ix+006h),000h		;a09c   ; si se mueve = 0x00
	ld a,(ix+008h)		;a0a0   ; lee la velocidad vertical
	cpl			;a0a3
	ld h,a			;a0a4
	ld a,(ix+007h)		;a0a5   ; lee la velocidad vertical (baja)
	cpl			;a0a8
	ld l,a			;a0a9
	inc hl			;a0aa
	ld (ix+008h),h		;a0ab   ; guarda la velocidad vertical
	ld (ix+007h),l		;a0ae   ; guarda la velocidad vertical (baja)
	ld a,(ix+00ah)		;a0b1   ; lee la velocidad horizontal
	cpl			;a0b4
	ld h,a			;a0b5
	ld a,(ix+009h)		;a0b6   ; lee la velocidad horizontal (baja)
	cpl			;a0b9
	ld l,a			;a0ba
	inc hl			;a0bb
	ld (ix+00ah),h		;a0bc   ; guarda la velocidad horizontal
	ld (ix+009h),l		;a0bf   ; guarda la velocidad horizontal (baja)
	ret			;a0c2
L_A0C3:
	call spider_cuadros		;a0c3   ; PASO 4: quieta, y en marcha (de vuelta) al paso 5
L_A0C6:
	dec (ix+014h)		;a0c6   ; PASO 2: quieta ix+0x14 cuadros; luego en marcha
	ret nz			;a0c9
	ld (ix+006h),001h		;a0ca   ; si se mueve = 0x01
	inc (ix+001h)		;a0ce   ; sube el paso en que va
	ret			;a0d1
L_A0D2:
	call spider_cuadros		;a0d2   ; PASO 5: de vuelta hasta su y (REDSPIDER) o su x (BIGSPIDER) de antes...
	ld a,(ix+000h)		;a0d5   ; lee el tipo del enemigo
	cp 00bh		;a0d8   ; REDSPIDER (tipo 0x0B)?
	jr z,L_A0E4		;a0da
	ld a,(0dfb2h)		;a0dc
	cp (ix+005h)		;a0df   ; compara con la x del enemigo
	jr z,L_A0EB		;a0e2
L_A0E4:
	ld a,(0dfb1h)		;a0e4
	cp (ix+003h)		;a0e7   ; compara con la y del enemigo
	ret nz			;a0ea
L_A0EB:
	xor a			;a0eb   ; ...alli, en su sitio y al paso 0; si su ficha 0x0D sigue tocada, quieta...
	ld (ix+001h),a		;a0ec   ; guarda el paso en que va
	ld (ix+002h),a		;a0ef
	ld (ix+004h),a		;a0f2
	ld a,(0dfb1h)		;a0f5
	ld (ix+003h),a		;a0f8   ; guarda la y del enemigo
	ld a,(0dfb2h)		;a0fb
	ld (ix+005h),a		;a0fe   ; guarda la x del enemigo
	push ix		;a101
	call spider_recorre_las_fichas		;a103   ; spider_recorre_las_fichas: si una ficha del tipo 0x0D esta en el paso 2, 0xDFB0 = 1
	pop ix		;a106
	ld a,(0dfb0h)		;a108
	and a			;a10b
	jp nz,para_la_ficha		;a10c   ; para_la_ficha: las dos velocidades a 0
	ld a,(ix+000h)		;a10f   ; ...si no, REDSPIDER hacia la derecha o la izquierda (lo contrario del lado en que esta)
	cp 00bh		;a112
	jp nz,09ffch		;a114
	ld b,003h		;a117
	ld a,(ix+005h)		;a119
	cp 080h		;a11c
	jp nc,L_A123		;a11e
	ld b,001h		;a121
L_A123:
	ld a,b			;a123
	jp L_A002		;a124
spider_cuadros:
	ld hl,0bfb0h		;a127   ; su cuadro de p03:BFB0, alternando cada ix+0x16 cuadros
	ld (ix+019h),000h		;a12a
	jp cuadro_cada_ix16		;a12e   ; cuadro_cada_ix16: salvo con ix+0x19 = 4, cada ix+0x16 cuadros el cuadro alterna entre los dos de HL + 2*ix+0x19
spider_recorre_las_fichas:
	ld ix,0d000h		;a131   ; si una ficha del tipo 0x0D esta en el paso 2, 0xDFB0 = 1
	ld de,00080h		;a135
	ld b,00dh		;a138
	ld a,00dh		;a13a
L_A13C:
	cp (ix+000h)		;a13c   ; compara con el tipo del enemigo
	jr z,L_A146		;a13f
	add ix,de		;a141
	djnz L_A13C		;a143
	ret			;a145
L_A146:
	ld a,(ix+001h)		;a146   ; lee el paso en que va
	cp 002h		;a149
	ret nz			;a14b
	ld a,001h		;a14c
	ld (0dfb0h),a		;a14e
	ret			;a151
L_A152:
	ld (ix+013h),014h		;a152   ; AL CREAR la ficha 0x0D: 0x14 en ix+0x13, cuadro 8, en marcha, sonido 4, hacia Mitchel a 0x60
	ld (ix+00bh),008h		;a156   ; el cuadro del enemigo = 0x08
	ld (ix+006h),001h		;a15a   ; si se mueve = 0x01
	ld a,004h		;a15e
	call 05488h		;a160   ; p00:sonido_si_juega: solo con el bit 6 de 0xC102 (la partida de verdad, no la demostracion)
	ld a,060h		;a163
L_A165:
	call 0716fh		;a165   ; rumbo hacia Mitchel: DE horizontal y HL vertical
L_A168:
	call 04318h		;a168   ; p00:pon_velocidad_horizontal: DE: la velocidad horizontal (ix+9, ix+0x0A)
	ex de,hl			;a16b
	jp 04311h		;a16c   ; p00:pon_velocidad_vertical: DE: la velocidad vertical de la ficha (ix+7, ix+8)
L_A16F:
	ld a,(ix+001h)		;a16f   ; LA FICHA 0x0D (la que sueltan las aranas): paso 1 (p03:A192), paso 2 pegada a Mitchel (p02:870C)...
	dec a			;a172
	jr z,L_A192		;a173
	dec a			;a175
	jp z,0870ch		;a176
	ld a,(ix+01eh)		;a179   ; ...paso 0: cuando algo la toca (bit 0 de ix+0x1E), al paso 1...
	rra			;a17c
	jr nc,L_A183		;a17d
	inc (ix+001h)		;a17f   ; sube el paso en que va
	ret			;a182
L_A183:
	ld a,(0dfb5h)		;a183   ; ...y si es de REDSPIDER, en la mitad izquierda desaparece
	cp 00bh		;a186
	ret nz			;a188
	ld a,(ix+005h)		;a189   ; lee la x del enemigo
	cp 058h		;a18c
	ret nc			;a18e
	jp 0694bh		;a18f   ; p01:quita_la_ficha: se borra la ficha y sus sprites se dejan libres (y = 0xE0)
L_A192:
	ld a,001h		;a192   ; PASO 1: 0xDFB0 = 1 (la arana lo ve) y quieta
	ld (0dfb0h),a		;a194
	inc (ix+001h)		;a197   ; sube el paso en que va
	ld hl,00000h		;a19a
	ld d,l			;a19d
	ld e,h			;a19e
	jr L_A168		;a19f
L_A1A1:
	ld a,(0dfb0h)		;a1a1   ; AL CREAR GROUNDER: el primero (0xDFB0 = 0) con Mitchel a la izquierda aparece en (0x50, 0xA0)...
	and 0ffh		;a1a4
	jr nz,L_A1E8		;a1a6
	ld a,(0c305h)		;a1a8   ; lee la X de Mitchel
	cp 058h		;a1ab
	jr nc,L_A1BB		;a1ad
	ld (ix+003h),050h		;a1af   ; la y del enemigo = 0x50
	ld (ix+005h),0a0h		;a1b3   ; la x del enemigo = 0xA0
	xor a			;a1b7
	ld (0dfb5h),a		;a1b8
L_A1BB:
	ld bc,00000h		;a1bb   ; ...mirando hacia Mitchel, apunta su sitio (0xDFB1, 0xDFB2), cuadro 0x0E, 6 en ix+0x1C
	call 0729eh		;a1be   ; p01:apunta_a_mitchel: APUNTA: la velocidad C...
	ld (ix+013h),a		;a1c1   ; guarda su direccion
	call grounder_cuadro		;a1c4   ; grounder_cuadro: la direccion A en ix+0x13 (la de antes en ix+0x14), su cuadro de p03:A362 y sus velocidades de p03:BF42
	ld a,(ix+003h)		;a1c7   ; lee la y del enemigo
	ld (0dfb1h),a		;a1ca
	ld a,(ix+005h)		;a1cd   ; lee la x del enemigo
	ld (0dfb2h),a		;a1d0
	ld (ix+006h),001h		;a1d3   ; si se mueve = 0x01
	ld (ix+012h),000h		;a1d7   ; si ya probo el rumbo = 0x00
	ld (ix+00bh),00eh		;a1db   ; el cuadro del enemigo = 0x0E
	ld (ix+01ch),006h		;a1df   ; cuantos quedan de su grupo = 0x06
	res 1,(ix+00eh)		;a1e3
	ret			;a1e7
L_A1E8:
	ld a,(0dfb0h)		;a1e8   ; los otros: su numero (0xDFB0) en ix+0x15 y su direccion (numero & 3); cuadro 0x0E
	ld (ix+015h),a		;a1eb   ; guarda su numero
	cp 006h		;a1ee
	jr z,L_A1F6		;a1f0
	res 1,(ix+00eh)		;a1f2
L_A1F6:
	and 003h		;a1f6
	ld (ix+01ah),a		;a1f8   ; guarda su dibujo
	ld (ix+006h),001h		;a1fb   ; si se mueve = 0x01
	ld (ix+00bh),00eh		;a1ff   ; el cuadro del enemigo = 0x0E
	ld (ix+01bh),004h		;a203   ; la cuenta de 4 = 0x04
	ld (ix+01ch),006h		;a207   ; cuantos quedan de su grupo = 0x06
	ld (ix+00fh),0ffh		;a20b   ; su hueco (su numero en la lista de la pantalla) = 0xFF
	jp L_A318		;a20f
L_A212:
	ld a,(ix+015h)		;a212   ; GROUNDER: los que no son el primero, por p03:A2E0
	and 0ffh		;a215
	jp nz,L_A2E0		;a217
	ld a,(ix+01ch)		;a21a   ; sin ix+0x1C, ix+0x0E sube de 2 en 2
	cp 000h		;a21d
	jr nz,L_A229		;a21f
	ld a,(ix+00eh)		;a221
	add a,002h		;a224
	ld (ix+00eh),a		;a226
L_A229:
	xor a			;a229
	ld (0dfb4h),a		;a22a
	ld a,(ix+003h)		;a22d   ; alineado a 16 en el eje por el que va (0xDFB4 = 1)...
	bit 0,(ix+013h)		;a230   ; mira el bit 0 de su direccion
	jr z,L_A239		;a234
	ld a,(ix+005h)		;a236   ; lee la x del enemigo
L_A239:
	and 00fh		;a239
	ret nz			;a23b
	ld a,001h		;a23c
	ld (0dfb4h),a		;a23e
	ld a,(ix+012h)		;a241   ; ...prueba el rumbo; si quedan menos de 6, crea otro
	and 001h		;a244
	jr z,grounder_prueba_rumbo		;a246
	ld a,(ix+015h)		;a248   ; lee su numero
	cp 002h		;a24b
	call nc,grounder_prueba_rumbo		;a24d   ; grounder_prueba_rumbo: si choca, p03:A2A9; si no, hacia Mitchel salvo si es dar media vuelta...
	ld a,(0dfb0h)		;a250
	cp 006h		;a253
	push ix		;a255
	call c,grounder_crea_otro		;a257   ; grounder_crea_otro: otro GROUNDER (0xDFB0 + 1) en el sitio del primero (0xDFB1, 0xDFB2)
	pop ix		;a25a
	ld a,(ix+015h)		;a25c
	cp 002h		;a25f
	ret nc			;a261
grounder_prueba_rumbo:
	ld a,001h		;a262   ; si choca, p03:A2A9; si no, hacia Mitchel salvo si es dar media vuelta...
	ld (ix+012h),a		;a264
	ld e,000h		;a267
	ld a,(ix+013h)		;a269
	call 07303h		;a26c   ; p01:choca_la_ficha: desde la ficha: acarreo si hacia la direccion A no se puede pasar
	jr c,L_A2A9		;a26f
L_A271:
	ld bc,00000h		;a271
	call 0729eh		;a274   ; p01:apunta_a_mitchel: APUNTA: la velocidad C...
	ld b,a			;a277
	ld a,(ix+013h)		;a278
	xor 002h		;a27b
	cp b			;a27d
	jr z,L_A284		;a27e
	ld a,b			;a280
	jp grounder_cuadro		;a281   ; grounder_cuadro: la direccion A en ix+0x13 (la de antes en ix+0x14), su cuadro de p03:A362 y sus velocidades de p03:BF42
L_A284:
	ld (ix+016h),a		;a284   ; ...en ese caso la primera direccion por la que se pueda, sin dar media vuelta
	xor a			;a287
	ld (0dfb3h),a		;a288
L_A28B:
	cp (ix+016h)		;a28b   ; compara con la direccion contraria
	jr z,L_A298		;a28e
	ld e,000h		;a290
	call 07303h		;a292   ; p01:choca_la_ficha: desde la ficha: acarreo si hacia la direccion A no se puede pasar
	jp nc,grounder_cuadro		;a295   ; grounder_cuadro: la direccion A en ix+0x13 (la de antes en ix+0x14), su cuadro de p03:A362 y sus velocidades de p03:BF42
L_A298:
	ld a,(0dfb3h)		;a298
	inc a			;a29b
	ld (0dfb3h),a		;a29c
	cp 004h		;a29f
	jr c,L_A28B		;a2a1
	ld a,(ix+016h)		;a2a3   ; lee la direccion contraria
	jp grounder_cuadro		;a2a6   ; grounder_cuadro: la direccion A en ix+0x13 (la de antes en ix+0x14), su cuadro de p03:A362 y sus velocidades de p03:BF42
L_A2A9:
	ld a,(ix+005h)		;a2a9   ; choca: dentro de x 0x30-0x7F, hacia Mitchel; fuera, una vez si y otra no (0xDFB5)
	add a,080h		;a2ac
	cp 0b0h		;a2ae
	jr c,L_A271		;a2b0
	ld a,(0dfb5h)		;a2b2
	dec a			;a2b5
	jr nz,L_A2BE		;a2b6
	xor a			;a2b8
	ld (0dfb5h),a		;a2b9
	jr L_A271		;a2bc
L_A2BE:
	ld a,001h		;a2be
	ld (0dfb5h),a		;a2c0
	ld bc,00000h		;a2c3
	call 0729eh		;a2c6   ; p01:apunta_a_mitchel: APUNTA: la velocidad C...
	jp grounder_cuadro		;a2c9   ; grounder_cuadro: la direccion A en ix+0x13 (la de antes en ix+0x14), su cuadro de p03:A362 y sus velocidades de p03:BF42
grounder_crea_otro:
	ld a,(0dfb0h)		;a2cc   ; otro GROUNDER (0xDFB0 + 1) en el sitio del primero (0xDFB1, 0xDFB2)
	inc a			;a2cf
	ld (0dfb0h),a		;a2d0
	ld c,02ch		;a2d3
	ld a,(0dfb1h)		;a2d5
	ld e,a			;a2d8
	ld a,(0dfb2h)		;a2d9
	ld d,a			;a2dc
	jp 05a69h		;a2dd   ; p00:crea_una_ficha: una ficha nueva en 0xD000-0xD67F (13 de 0x80): C el tipo, DE la posicion, B
L_A2E0:
	res 1,(ix+00eh)		;a2e0   ; LOS DEMAS GROUNDER: cada 4 cuadros el cuadro siguiente de los 4 de p03:A366...
	ld a,(ix+01ch)		;a2e4   ; lee cuantos quedan de su grupo
	cp (ix+015h)		;a2e7   ; compara con su numero
	jr nz,L_A2F4		;a2ea
	ld a,(ix+00eh)		;a2ec
	add a,002h		;a2ef
	ld (ix+00eh),a		;a2f1
L_A2F4:
	dec (ix+01bh)		;a2f4   ; cada 4 cuadros...
	jr nz,L_A313		;a2f7
	ld (ix+01bh),004h		;a2f9   ; la cuenta de 4 = 0x04
	ld a,(ix+01ah)		;a2fd   ; ...el dibujo siguiente de los 4
	inc a			;a300
	cp 004h		;a301
	jr nz,L_A306		;a303
	xor a			;a305
L_A306:
	ld (ix+01ah),a		;a306   ; guarda su dibujo
	ld hl,0a366h		;a309
	call 04255h		;a30c   ; p00:hl_mas_a
	ld a,(hl)			;a30f
	ld (ix+00bh),a		;a310   ; guarda el cuadro del enemigo
L_A313:
	ld a,(0dfb4h)		;a313   ; ...y cuando el primero esta alineado (0xDFB4), siguen al de delante (ix+0x15 - 1)...
	dec a			;a316
	ret nz			;a317
L_A318:
	ld e,(ix+015h)		;a318   ; lee su numero
	dec e			;a31b
	push ix		;a31c
	ld ix,0d000h		;a31e   ; apunta a las fichas de los enemigos (13 de 0x80)
L_A322:
	ld a,(ix+000h)		;a322   ; lee el tipo del enemigo
	cp 02ch		;a325   ; GROUNDER (tipo 0x2C)?
	jr z,L_A330		;a327
L_A329:
	ld bc,00080h		;a329
	add ix,bc		;a32c
	jr L_A322		;a32e
L_A330:
	ld a,(ix+015h)		;a330   ; lee su numero
	cp e			;a333
	jr nz,L_A329		;a334
	ld a,(ix+014h)		;a336   ; ...tomando la direccion que el llevaba antes (su ix+0x14): van en fila
	pop ix		;a339
	ld b,(ix+013h)		;a33b
	ld (ix+014h),b		;a33e
	ld (ix+013h),a		;a341
	jr L_A35C		;a344
grounder_cuadro:
	ld b,(ix+013h)		;a346   ; la direccion A en ix+0x13 (la de antes en ix+0x14), su cuadro de p03:A362 y sus velocidades de p03:BF42
	ld (ix+014h),b		;a349
	ld (ix+013h),a		;a34c
	ld hl,0a362h		;a34f   ; cuadros_A362: 8 bytes: el cuadro (ix+0x0B) segun ix+0x13 (p03:A34F) o ix+0x1A (desde 0xA366, p03:A309)
	call 04255h		;a352   ; p00:hl_mas_a
	ld a,(hl)			;a355
	ld (ix+00bh),a		;a356
	ld a,(ix+013h)		;a359
L_A35C:
	ld hl,0bf42h		;a35c
	jp velocidad_de_la_tabla_4		;a35f   ; velocidad_de_la_tabla_4: las dos velocidades de las 4 bytes HL + 4*A: [vy alta][vy baja][vx alta][vx baja]

; ----------------------------------------------------------------------
; DATOS cuadros_A362: 8 bytes: el cuadro (ix+0x0B) segun ix+0x13 (p03:A34F) o
;   ix+0x1A (desde 0xA366, p03:A309)
;   0xa362..0xa36a  (8 bytes)
DATA_cuadros_A362:
	defb 009h,00ch,00dh,008h,00ah,00bh,00eh,00fh	; a362  ........

; ======================================================================
; CODIGO 0xa36a..0xa3ee  (132 bytes)
; ======================================================================


L_A36A:
	ld (ix+001h),003h		;a36a   ; AL CREAR POLEMAN, BOOMERANG, BLOWMIRE, FALCONER, JUMPMAN y CLINGMAN: paso 3 (esperando 0x0F cuadros), mirando abajo (2), 8 pasos
	xor a			;a36e
	ld (ix+007h),a		;a36f   ; guarda la velocidad vertical (baja)
	ld (ix+009h),a		;a372   ; guarda la velocidad horizontal (baja)
	ld (ix+018h),00fh		;a375   ; el punto de la curva = 0x0F
	ld (ix+019h),002h		;a379   ; su direccion = 0x02
	call saltarines_elige		;a37d   ; saltarines_elige: EL CUADRO: POLEMAN, BOOMERANG y FALCONER, direccion*2 y el siguiente cada 4 cuadros...
	ld (ix+01ah),008h		;a380   ; los pasos = 0x08
	ld (ix+01bh),008h		;a384   ; los pasos = 0x08
	ret			;a388
L_A389:
	ld a,(ix+001h)		;a389   ; BLOWMIRE y FALCONER: en el paso 5, sin mas...
	cp 005h		;a38c
	jr z,L_A3E8		;a38e
	call 04308h		;a390   ; ...si no, en diagonal exacta con Mitchel (redondeado a 8)...
	ld a,004h		;a393
	add a,e			;a395
	and 0f8h		;a396
	sub (ix+003h)		;a398   ; le resta la y del enemigo
	jr nc,L_A39F		;a39b
	neg		;a39d
L_A39F:
	ld c,a			;a39f
	ld a,004h		;a3a0
	add a,d			;a3a2
	and 0f8h		;a3a3
	sub (ix+005h)		;a3a5   ; le resta la x del enemigo
	jr nc,L_A3AC		;a3a8
	neg		;a3aa
L_A3AC:
	cp c			;a3ac
	jr nz,L_A3E8		;a3ad
	ld a,(ix+000h)		;a3af   ; ...BLOWMIRE tira (cuadro 7); FALCONER suelta un FALCONBAT (tipo 0x28) y espera 0x3C cuadros en el paso 5
	cp 019h		;a3b2   ; BLOWMIRE (tipo 0x19)?
	ld a,007h		;a3b4
	jp z,L_A5BE		;a3b6
	ld c,028h		;a3b9
	ld e,(ix+003h)		;a3bb   ; lee la y del enemigo
	ld d,(ix+005h)		;a3be   ; lee la x del enemigo
	push ix		;a3c1
	call 05a69h		;a3c3   ; p00:crea_una_ficha: una ficha nueva en 0xD000-0xD67F (13 de 0x80): C el tipo, DE la posicion, B
	pop ix		;a3c6
	ld (ix+001h),005h		;a3c8
	ld (ix+006h),000h		;a3cc
	ld (ix+017h),03ch		;a3d0
	jr L_A3E8		;a3d4
L_A3D6:
	ld a,(ix+01eh)		;a3d6   ; CLINGMAN: si toca a Mitchel (bit 0 de ix+0x1E), se le pega (paso 4)
	and 001h		;a3d9
	jr z,L_A3E8		;a3db
	ld (ix+001h),004h		;a3dd
	xor a			;a3e1
	ld (ix+006h),a		;a3e2
	ld (ix+019h),a		;a3e5
L_A3E8:
	ld a,(ix+001h)		;a3e8   ; LOS QUE TIRAN Y SALTAN, por pasos: 0 (p03:A3FA), 1 (A442), 2 el salto (A48F), 3 espera (A4F4), 4 pegado (A505), 5 tras tirar (A511)
	call 0425fh		;a3eb   ; p00:despacha: Salta a la entrada A de la tabla de palabras que va pegada detras del `call`.

; ----------------------------------------------------------------------
; DATOS tabla_A3EE: 6 destinos del despachador de 0x425F (call en p03:A3EB):
;   0xA3FA, 0xA442, 0xA48F, 0xA4F4, 0xA505, 0xA511; lo leen p03:A3EB (12
;   bytes)
;   0xa3ee..0xa3fa  (12 bytes)
DATA_tabla_A3EE:
	defb 0fah,0a3h	; a3ee
	defb 042h,0a4h	; a3f0
	defb 08fh,0a4h	; a3f2
	defb 0f4h,0a4h	; a3f4
	defb 005h,0a5h	; a3f6
	defb 011h,0a5h	; a3f8

; ======================================================================
; CODIGO 0xa3fa..0xa6a0  (678 bytes)
; ======================================================================


L_A3FA:
	call saltarines_elige		;a3fa   ; PASO 0, alineado a 8: si choca, se aparta de Mitchel...
	call 09a9fh		;a3fd   ; p02:sigue_si_esta_en_casilla: si la ficha no esta alineada a 8 en x e y, vuelve al que llamo al que llamo
	ld a,(ix+019h)		;a400
	ld e,000h		;a403
	call 07303h		;a405   ; p01:choca_la_ficha: desde la ficha: acarreo si hacia la direccion A no se puede pasar
	jp c,L_A67F		;a408
	ld a,(ix+000h)		;a40b   ; ...en la columna de Mitchel (salvo FALCONER, JUMPMAN y CLINGMAN) o en su fila, puede tirar o saltar...
	cp 024h		;a40e
	jr z,L_A41A		;a410
	sub 036h		;a412
	jr z,L_A41A		;a414
	dec a			;a416
	call nz,saltarines_alineado_en_x		;a417   ; saltarines_alineado_en_x: EN SU COLUMNA: si Mitchel esta en la misma x (redondeada a 8) y a 0x30 o mas...
L_A41A:
	call saltarines_alineado_en_y		;a41a   ; saltarines_alineado_en_y: EN SU FILA: si Mitchel esta en la misma y y a menos de 0x30, se aparta...
	dec (ix+01ah)		;a41d   ; ...y a los 8 pasos se aparta de Mitchel (paso 1), o hacia una esquina al azar si no puede
	ret nz			;a420
	ld (ix+001h),001h		;a421
	ld (ix+01ah),008h		;a425
	ld (ix+01bh),008h		;a429
	ld bc,00000h		;a42d
	call 0729eh		;a430   ; p01:apunta_a_mitchel: APUNTA: la velocidad C...
	add a,002h		;a433
	and 003h		;a435
	ld e,000h		;a437
	call 07303h		;a439   ; p01:choca_la_ficha: desde la ficha: acarreo si hacia la direccion A no se puede pasar
	jp nc,L_A535		;a43c
	jp L_A51D		;a43f
L_A442:
	call saltarines_elige		;a442   ; PASO 1: si choca, hacia Mitchel...
	call 09a9fh		;a445   ; p02:sigue_si_esta_en_casilla: si la ficha no esta alineada a 8 en x e y, vuelve al que llamo al que llamo
	ld a,(ix+019h)		;a448   ; lee su direccion
	ld e,000h		;a44b
	call 07303h		;a44d   ; p01:choca_la_ficha: desde la ficha: acarreo si hacia la direccion A no se puede pasar
	jr nc,L_A45B		;a450
	ld bc,00000h		;a452
	call 0729eh		;a455   ; p01:apunta_a_mitchel: APUNTA: la velocidad C...
	jp L_A535		;a458
L_A45B:
	ld a,(ix+000h)		;a45b   ; ...lo mismo de tirar o saltar...
	cp 024h		;a45e   ; FALCONER (tipo 0x24)?
	jr z,L_A46A		;a460
	sub 036h		;a462
	jr z,L_A46A		;a464
	dec a			;a466
	call nz,saltarines_alineado_en_x		;a467   ; saltarines_alineado_en_x: EN SU COLUMNA: si Mitchel esta en la misma x (redondeada a 8) y a 0x30 o mas...
L_A46A:
	call saltarines_alineado_en_y		;a46a   ; saltarines_alineado_en_y: EN SU FILA: si Mitchel esta en la misma y y a menos de 0x30, se aparta...
	dec (ix+01ah)		;a46d   ; ...y a los 8 pasos, al paso 0 hacia la y de Mitchel (arriba o abajo)
	ret nz			;a470
	ld (ix+01ah),008h		;a471   ; los pasos = 0x08
	ld (ix+001h),000h		;a475   ; el paso en que va = 0x00
	ld a,(0c303h)		;a479   ; lee la Y de Mitchel
	cp (ix+003h)		;a47c   ; compara con la y del enemigo
	ld a,002h		;a47f
	jr nc,L_A484		;a481
	xor a			;a483
L_A484:
	ld e,000h		;a484
	call 07303h		;a486   ; p01:choca_la_ficha: desde la ficha: acarreo si hacia la direccion A no se puede pasar
	jp c,L_A51D		;a489
	jp L_A535		;a48c
L_A48F:
	ld a,(ix+003h)		;a48f   ; PASO 2, EL SALTO: al volver a la y de salida (ix+0x16), al paso 1...
	cp (ix+016h)		;a492   ; compara con la y de donde salto
	ld (ix+001h),001h		;a495   ; el paso en que va = 0x01
	jp z,L_A51D		;a499
	ld (ix+001h),002h		;a49c   ; ...si no, si choca en x se queda en su x (alineada a 8 salvo CLINGMAN) sin velocidad horizontal...
	ld l,(ix+016h)		;a4a0   ; lee la y de donde salto
	ld a,(ix+000h)		;a4a3   ; lee el tipo del enemigo
	cp 037h		;a4a6   ; CLINGMAN (tipo 0x37)?
	ld a,(ix+005h)		;a4a8   ; lee la x del enemigo
	jr z,L_A4AF		;a4ab
	and 0f8h		;a4ad
L_A4AF:
	ld h,a			;a4af
	ld c,a			;a4b0
	ld a,(ix+019h)		;a4b1   ; lee su direccion
	ld e,000h		;a4b4
	call 07309h		;a4b6   ; p01:choca_desde_hl: desde (L, H) = (y, x): acarreo si hacia la direccion A no se puede pasar
	jr nc,L_A4C2		;a4b9
	ld (ix+005h),c		;a4bb   ; guarda la x del enemigo
	ld (ix+00ah),000h		;a4be   ; la velocidad horizontal = 0x00
L_A4C2:
	ld a,(ix+000h)		;a4c2   ; ...y la velocidad vertical de la curva: p03:A6A0 (CLINGMAN, 0x18 puntos) o p03:A6B8 (0x10), subiendo y luego al reves bajando
	ld hl,0a6a0h		;a4c5   ; tablas_A6A0: tres tablas de 16 bytes: 0xA6A0 (tipo 0x37) y 0xA6B8 (los demas) segun ix+0x18 (p03:A4C2), y parejas desde 0xA6C8 segun ix+0x19 (p03:A553)
	ld bc,018d1h		;a4c8
	cp 037h		;a4cb   ; CLINGMAN (tipo 0x37)?
	jr z,L_A4D5		;a4cd
	ld hl,0a6b8h		;a4cf
	ld bc,010e1h		;a4d2
L_A4D5:
	ld a,(ix+018h)		;a4d5   ; lee el punto de la curva
	cp b			;a4d8
	jr c,L_A4E9		;a4d9
	add a,c			;a4db
	neg		;a4dc
	call 04255h		;a4de   ; p00:hl_mas_a
	ld a,(hl)			;a4e1
	neg		;a4e2
	ld (ix+008h),a		;a4e4   ; guarda la velocidad vertical
	jr L_A4F0		;a4e7
L_A4E9:
	call 04255h		;a4e9   ; p00:hl_mas_a
	ld a,(hl)			;a4ec
	ld (ix+008h),a		;a4ed   ; guarda la velocidad vertical
L_A4F0:
	inc (ix+018h)		;a4f0   ; sube el punto de la curva
	ret			;a4f3
L_A4F4:
	call saltarines_elige		;a4f4   ; PASO 3: espera ix+0x18 cuadros y a andar
	dec (ix+018h)		;a4f7   ; baja el punto de la curva
	ret nz			;a4fa
	ld (ix+001h),000h		;a4fb   ; el paso en que va = 0x00
	ld (ix+006h),001h		;a4ff   ; si se mueve = 0x01
	jr L_A51D		;a503
L_A505:
	call 04308h		;a505   ; PASO 4: pegado a Mitchel
	ld (ix+003h),e		;a508   ; guarda la y del enemigo
	ld (ix+005h),d		;a50b   ; guarda la x del enemigo
	jp saltarines_elige		;a50e   ; saltarines_elige: EL CUADRO: POLEMAN, BOOMERANG y FALCONER, direccion*2 y el siguiente cada 4 cuadros...
L_A511:
	dec (ix+017h)		;a511   ; PASO 5: espera ix+0x17 cuadros y a andar
	ret nz			;a514
	ld (ix+001h),000h		;a515   ; el paso en que va = 0x00
	ld (ix+006h),001h		;a519   ; si se mueve = 0x01
L_A51D:
	ld bc,00200h		;a51d   ; hacia una esquina al azar de p02:93EF
	ld a,r		;a520
	xor (ix+00ch)		;a522   ; XOR con la cuenta de cuadros
	and 003h		;a525
	ld hl,093efh		;a527
	call 04255h		;a52a   ; p00:hl_mas_a
	ld a,(hl)			;a52d
	ld d,a			;a52e
	inc hl			;a52f
	ld a,(hl)			;a530
	ld e,a			;a531
	call 0729eh		;a532   ; p01:apunta_a_mitchel: APUNTA: la velocidad C...
L_A535:
	ld (ix+019h),a		;a535   ; la direccion en ix+0x19 y sus velocidades de p02:9AB9
	ld hl,09ab9h		;a538
	jp 098b4h		;a53b   ; p02:velocidad_de_la_tabla: la pareja A de la tabla de HL en ix+8 e ix+0x0A
saltarines_elige:
	ld a,(ix+000h)		;a53e   ; EL CUADRO: POLEMAN, BOOMERANG y FALCONER, direccion*2 y el siguiente cada 4 cuadros...
	sub 017h		;a541
	jr z,L_A566		;a543
	dec a			;a545
	jr z,L_A566		;a546
	dec a			;a548
	jr z,L_A577		;a549
	sub 00bh		;a54b
	jr z,L_A566		;a54d
	ld a,(ix+019h)		;a54f   ; ...JUMPMAN y CLINGMAN, los de p03:A6C8 por direccion...
	add a,a			;a552
	ld hl,0a6c8h		;a553
	call 04255h		;a556   ; p00:hl_mas_a
	ld a,(ix+00ch)		;a559   ; lee la cuenta de cuadros
	and 004h		;a55c
	jr z,L_A561		;a55e
	inc hl			;a560
L_A561:
	ld a,(hl)			;a561
	ld (ix+00bh),a		;a562   ; guarda el cuadro del enemigo
	ret			;a565
L_A566:
	ld a,(ix+019h)		;a566   ; lee su direccion
	add a,a			;a569
	ld (ix+00bh),a		;a56a   ; guarda el cuadro del enemigo
	ld a,(ix+00ch)		;a56d   ; lee la cuenta de cuadros
	and 004h		;a570
	ret nz			;a572
	inc (ix+00bh)		;a573   ; sube el cuadro del enemigo
	ret			;a576
L_A577:
	ld a,(ix+00ch)		;a577   ; ...BLOWMIRE, 3, 4, 5 y 5
	and 00ch		;a57a
	srl a		;a57c
	srl a		;a57e
	add a,003h		;a580
	cp 006h		;a582
	jr nz,L_A587		;a584
	dec a			;a586
L_A587:
	ld (ix+00bh),a		;a587   ; guarda el cuadro del enemigo
	ret			;a58a
saltarines_alineado_en_x:
	call 04308h		;a58b   ; EN SU COLUMNA: si Mitchel esta en la misma x (redondeada a 8) y a 0x30 o mas...
	ld a,004h		;a58e
	add a,d			;a590
	and 0f8h		;a591
	cp (ix+005h)		;a593   ; compara con la x del enemigo
	ret nz			;a596
	ld a,e			;a597
	sub (ix+003h)		;a598   ; le resta la y del enemigo
	jr nc,L_A59F		;a59b
	neg		;a59d
L_A59F:
	cp 030h		;a59f
	ret c			;a5a1
L_A5A2:
	ld a,r		;a5a2   ; ...la mitad de las veces TIRA: mira a Mitchel (BLOWMIRE, cuadro 7)...
	xor (ix+00ch)		;a5a4   ; XOR con la cuenta de cuadros
	rra			;a5a7
	ret nc			;a5a8
	ld a,(ix+000h)		;a5a9   ; lee el tipo del enemigo
	cp 019h		;a5ac   ; BLOWMIRE (tipo 0x19)?
	ld a,007h		;a5ae
	jr z,L_A5BD		;a5b0
	ld bc,00000h		;a5b2
	call 0729eh		;a5b5   ; p01:apunta_a_mitchel: APUNTA: la velocidad C...
	ld (ix+019h),a		;a5b8   ; guarda su direccion
	ld b,a			;a5bb
	add a,a			;a5bc
L_A5BD:
	pop hl			;a5bd   ; ...sin volver a quien llamo: al paso 5, quieto 0x20 cuadros (BOOMERANG 0x48, con los cuadros + 8)...
L_A5BE:
	ld (ix+001h),005h		;a5be   ; el paso en que va = 0x05
	ld (ix+00bh),a		;a5c2   ; guarda el cuadro del enemigo
	ld c,020h		;a5c5
	ld a,(ix+000h)		;a5c7   ; lee el tipo del enemigo
	cp 018h		;a5ca   ; BOOMERANG (tipo 0x18)?
	jr nz,L_A5D6		;a5cc
	ld a,b			;a5ce
	add a,008h		;a5cf
	ld (ix+00bh),a		;a5d1   ; guarda el cuadro del enemigo
	ld c,048h		;a5d4
L_A5D6:
	ld (ix+017h),c		;a5d6   ; guarda la espera tras tirar
	ld (ix+01ah),008h		;a5d9   ; los pasos = 0x08
	ld (ix+01bh),008h		;a5dd   ; los pasos = 0x08
	ld (ix+006h),000h		;a5e1   ; si se mueve = 0x00
	ld e,(ix+003h)		;a5e5   ; ...y la figura de su tipo + 0x70 en su sitio
	ld d,(ix+005h)		;a5e8   ; lee la x del enemigo
	ld a,(ix+000h)		;a5eb   ; lee el tipo del enemigo
	add a,070h		;a5ee
	ld c,a			;a5f0
	jp 0709ah		;a5f1   ; p01:crea_una_figura: CREA UNA FIGURA: el tipo C en DE
saltarines_alineado_en_y:
	call 04308h		;a5f4   ; EN SU FILA: si Mitchel esta en la misma y y a menos de 0x30, se aparta...
	ld a,004h		;a5f7
	add a,e			;a5f9
	and 0f8h		;a5fa
	cp (ix+003h)		;a5fc   ; compara con la y del enemigo
	ret nz			;a5ff
	ld a,d			;a600
	sub (ix+005h)		;a601   ; le resta la x del enemigo
	jr nc,L_A608		;a604
	neg		;a606
L_A608:
	cp 030h		;a608
	jr c,L_A67F		;a60a
	ld a,(ix+000h)		;a60c   ; ...a 0x30 o mas: POLEMAN, BOOMERANG y BLOWMIRE tiran; FALCONER no hace nada...
	sub 017h		;a60f
	jr z,L_A5A2		;a611
	dec a			;a613
	jr z,L_A5A2		;a614
	dec a			;a616
	jr z,L_A5A2		;a617
	pop hl			;a619
	ld (ix+01ah),008h		;a61a   ; los pasos = 0x08
	ld (ix+01bh),008h		;a61e   ; los pasos = 0x08
	ld a,(ix+000h)		;a622   ; lee el tipo del enemigo
	cp 024h		;a625   ; FALCONER (tipo 0x24)?
	ret z			;a627
	ld (ix+001h),002h		;a628   ; ...JUMPMAN y CLINGMAN SALTAN hacia Mitchel (CLINGMAN, con la figura 0x8D), con el sonido 0x0B...
	cp 036h		;a62c   ; JUMPMAN (tipo 0x36)?
	jr z,L_A63B		;a62e
	ld c,08dh		;a630
	ld e,(ix+003h)		;a632   ; lee la y del enemigo
	ld d,(ix+005h)		;a635   ; lee la x del enemigo
	call 0709ah		;a638   ; p01:crea_una_figura: CREA UNA FIGURA: el tipo C en DE
L_A63B:
	ld a,00bh		;a63b
	call 05488h		;a63d   ; p00:sonido_si_juega: solo con el bit 6 de 0xC102 (la partida de verdad, no la demostracion)
	ld a,(ix+003h)		;a640   ; ...desde su y (ix+0x16), por la curva de p03:A6A0 o p03:A6B8, a -2 (CLINGMAN) o -3 en x...
	ld (ix+016h),a		;a643   ; guarda la y de donde salto
	ld (ix+018h),001h		;a646   ; el punto de la curva = 0x01
	ld a,(ix+000h)		;a64a   ; lee el tipo del enemigo
	ld hl,0a6a0h		;a64d   ; tablas_A6A0: tres tablas de 16 bytes: 0xA6A0 (tipo 0x37) y 0xA6B8 (los demas) segun ix+0x18 (p03:A4C2), y parejas desde 0xA6C8 segun ix+0x19 (p03:A553)
	ld b,0feh		;a650
	cp 037h		;a652   ; CLINGMAN (tipo 0x37)?
	jr z,L_A65A		;a654
	ld hl,0a6b8h		;a656
	dec b			;a659
L_A65A:
	ld a,(0c305h)		;a65a   ; lee la X de Mitchel
	cp (ix+005h)		;a65d   ; compara con la x del enemigo
	ld a,(hl)			;a660
	ld (ix+008h),a		;a661   ; guarda la velocidad vertical
	ld a,b			;a664
	ld (ix+00ah),a		;a665   ; guarda la velocidad horizontal
	ld (ix+019h),003h		;a668   ; su direccion = 0x03
	ld (ix+00bh),005h		;a66c   ; el cuadro del enemigo = 0x05
	ret c			;a670   ; ...o a la derecha si Mitchel esta a su derecha (cuadro 0x0A)
	neg		;a671
	ld (ix+00ah),a		;a673   ; guarda la velocidad horizontal
	ld (ix+019h),001h		;a676   ; su direccion = 0x01
	ld (ix+00bh),00ah		;a67a   ; el cuadro del enemigo = 0x0A
	ret			;a67e
L_A67F:
	ld (ix+01ah),008h		;a67f   ; SE APARTA: cambia entre los pasos 0 y 1 y se va al lado contrario de Mitchel (o a una esquina si no puede)
	ld a,(ix+001h)		;a683   ; lee el paso en que va
	xor 001h		;a686
	ld (ix+001h),a		;a688   ; guarda el paso en que va
	ld bc,00000h		;a68b
	call 0729eh		;a68e   ; p01:apunta_a_mitchel: APUNTA: la velocidad C...
	add a,002h		;a691
	and 003h		;a693
	ld e,000h		;a695
	call 07303h		;a697   ; p01:choca_la_ficha: desde la ficha: acarreo si hacia la direccion A no se puede pasar
	jp nc,L_A535		;a69a
	jp L_A51D		;a69d

; ----------------------------------------------------------------------
; DATOS tablas_A6A0: tres tablas de 16 bytes: 0xA6A0 (tipo 0x37) y 0xA6B8 (los
;   demas) segun ix+0x18 (p03:A4C2), y parejas desde 0xA6C8 segun ix+0x19
;   (p03:A553)
;   0xa6a0..0xa6d0  (48 bytes)
DATA_tablas_A6A0:
	defb 0feh,0feh,0feh,0feh,0feh,0ffh,0feh,0ffh,0feh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; a6a0  ................
	defb 0ffh,0ffh,0ffh,000h,0ffh,000h,000h,000h,0ffh,0ffh,0ffh,0ffh,000h,0ffh,0ffh,0ffh	; a6b0  ................
	defb 000h,0ffh,000h,000h,0ffh,000h,000h,000h,002h,008h,009h,00bh,000h,007h,004h,006h	; a6c0  ................

; ======================================================================
; CODIGO 0xa6d0..0xa7fa  (298 bytes)
; ======================================================================


L_A6D0:
	ld d,0f0h		;a6d0   ; AL CREAR THE NASTY: su figura de 0x20x0x20 puntos desde (0xE0, 0xA8), 0x10 arriba y a la izquierda, y el fondo 4x4...
	ld hl,0e0a8h		;a6d2
	ld bc,02004h		;a6d5
L_A6D8:
	ld (ix+00bh),000h		;a6d8   ; ...cuadro 0, ix+0x11 = 1, 0x10 cuadros; la figura con LMMM, el fondo guardado y hay jefe
	ld (ix+011h),001h		;a6dc   ; si tiene el fondo guardado = 0x01
	ld (ix+012h),010h		;a6e0   ; la espera = 0x10
	ld (ix+013h),000h		;a6e4   ; la cuenta de cuadros = 0x00
	ld a,(ix+003h)		;a6e8   ; lee la y del enemigo
	add a,d			;a6eb
	ld e,a			;a6ec
	ld a,(ix+005h)		;a6ed   ; lee la x del enemigo
	add a,d			;a6f0
	ld d,a			;a6f1
	push bc			;a6f2
	ld c,b			;a6f3
	ld a,048h		;a6f4
	call 0481bh		;a6f6   ; p00:lmmm: orden LMMM del V9938: lo mismo con operacion logica (A: paginas y operacion; 8 = TIMP)
	pop bc			;a6f9
	ld b,c			;a6fa
	call 04333h		;a6fb   ; p00:guarda_el_fondo: GUARDA EL FONDO: lo que hay debajo de la ficha, desde su esquina
	jp 06979h		;a6fe   ; p01:hay_jefe: 0xC151 = 1: hay jefe
L_A701:
	ld hl,00806h		;a701   ; THE NASTY: suelta fichas del tipo 6 (GARGOYLE) 8 por debajo (0xE800-0xE801)...
	ld (0e800h),hl		;a704
	ld hl,0e0a8h		;a707
	ld de,0e0c8h		;a70a
	ld bc,0f020h		;a70d
L_A710:
	ld a,(ix+00ch)		;a710   ; ...ix+0x13 cuenta los cuadros de dos en dos...
	and 001h		;a713
	jr nz,L_A71A		;a715
	inc (ix+013h)		;a717   ; sube la cuenta de cuadros
L_A71A:
	dec (ix+012h)		;a71a   ; ...cada ix+0x12 cuadros abre o cierra (cuadro 1: 0x20 cuadros abierto; 0: 0x10 cerrado)...
	ret nz			;a71d
	push bc			;a71e
	push de			;a71f
	push hl			;a720
	ld a,(ix+00bh)		;a721   ; lee el cuadro del enemigo
	and a			;a724
	ld b,020h		;a725
	jr nz,L_A72B		;a727
	ld b,010h		;a729
L_A72B:
	cpl			;a72b
	and 001h		;a72c
	ld (ix+00bh),a		;a72e   ; guarda el cuadro del enemigo
	ld (ix+012h),b		;a731   ; guarda la espera
	bit 0,(ix+00bh)		;a734   ; mira el bit 0 de el cuadro del enemigo
	jr z,L_A770		;a738
	ld a,(ix+013h)		;a73a   ; ...al abrir, si ix+0x13 no ha llegado a 0x80 y quedan en 0xDFA4, crea una (y quedan una menos)...
	cp 080h		;a73d
	jr nc,L_A768		;a73f
	ld a,(0dfa4h)		;a741   ; lee los GARGOYLE que quedan por soltar
	and a			;a744
	jr z,L_A768		;a745
	ld a,(0e800h)		;a747
	ld c,a			;a74a
	ld b,0ffh		;a74b
	ld a,(0e801h)		;a74d
	ld d,a			;a750
	ld a,(ix+003h)		;a751   ; lee la y del enemigo
	add a,d			;a754
	ld e,a			;a755
	ld d,(ix+005h)		;a756   ; lee la x del enemigo
	push ix		;a759
	call 05a69h		;a75b   ; p00:crea_una_ficha: una ficha nueva en 0xD000-0xD67F (13 de 0x80): C el tipo, DE la posicion, B
	pop ix		;a75e
	jr nc,L_A768		;a760
	ld hl,0dfa4h		;a762   ; apunta a los GARGOYLE que quedan por soltar
	dec (hl)			;a765
	jr L_A770		;a766
L_A768:
	ld (ix+00bh),000h		;a768   ; ...si no, se queda cerrado 0x20 cuadros
	ld (ix+012h),020h		;a76c
L_A770:
	pop hl			;a770
	pop de			;a771
	pop bc			;a772
	bit 0,(ix+00bh)		;a773   ; pinta la boca abierta (DE) o cerrada (HL) con LMMM
	jr z,L_A77A		;a777
	ex de,hl			;a779
L_A77A:
	ld a,(ix+003h)		;a77a
	add a,b			;a77d
	ld e,a			;a77e
	ld a,(ix+005h)		;a77f
	add a,0f0h		;a782
	ld d,a			;a784
	ld b,020h		;a785
	ld a,048h		;a787
	jp 0481bh		;a789   ; p00:lmmm: orden LMMM del V9938: lo mismo con operacion logica (A: paginas y operacion; 8 = TIMP)
L_A78C:
	ld d,0e0h		;a78c   ; AL CREAR BADPRIEST: su figura de 0x40x0x40 puntos desde (0xC0, 0xA8), 0x20 arriba y a la izquierda, y el fondo 8x8
	ld hl,0c0a8h		;a78e
	ld bc,04008h		;a791
	jp L_A6D8		;a794
L_A797:
	ld hl,01008h		;a797   ; BADPRIEST: igual que THE NASTY, soltando fichas del tipo 8 (GARGOYLE) 0x10 por debajo; boca cerrada desde (0xD0, 0xD0), abierta desde (0xA0, 0xA8)
	ld (0e800h),hl		;a79a
	ld hl,0d0d0h		;a79d
	ld de,0a0a8h		;a7a0
	ld bc,00818h		;a7a3
	jp L_A710		;a7a6
L_A7A9:
	ld de,0a7fah		;a7a9   ; AL CREAR GARGOYLE (tipo 6, lo que suelta THE NASTY): cuadro 0x10, sus velocidades de p03:A7FA segun el contador de cuadros (bits 4-6)...
	ld hl,0a81ah		;a7ac
	ld bc,0dfa1h		;a7af
L_A7B2:
	push bc			;a7b2
	push hl			;a7b3
	push de			;a7b4
	ld (ix+00bh),010h		;a7b5   ; el cuadro del enemigo = 0x10
	ld (ix+00eh),000h		;a7b9
	ld a,(0c103h)		;a7bd   ; lee el contador de cuadros
	and 070h		;a7c0
	rra			;a7c2
	rra			;a7c3
	rra			;a7c4
	rra			;a7c5
	pop hl			;a7c6
	push af			;a7c7
	add a,a			;a7c8
	add a,a			;a7c9
	call 04255h		;a7ca   ; p00:hl_mas_a
	ld e,(hl)			;a7cd
	inc hl			;a7ce
	ld d,(hl)			;a7cf
	inc hl			;a7d0
	ld c,(hl)			;a7d1
	inc hl			;a7d2
	ld b,(hl)			;a7d3
	call 04311h		;a7d4   ; p00:pon_velocidad_vertical: DE: la velocidad vertical de la ficha (ix+7, ix+8)
	ld e,c			;a7d7
	ld d,b			;a7d8
	call 04318h		;a7d9   ; p00:pon_velocidad_horizontal: DE: la velocidad horizontal (ix+9, ix+0x0A)
	pop af			;a7dc
	pop hl			;a7dd   ; ...su espera de p03:A81A, 4 en ix+0x13...
	call 04255h		;a7de   ; p00:hl_mas_a
	ld a,(hl)			;a7e1
	ld (ix+012h),a		;a7e2   ; guarda los saltos
	ld (ix+013h),004h		;a7e5   ; la espera o el punto del salto = 0x04
	pop hl			;a7e9   ; ...y ix+0x1A de p03:A822 segun cuantos van (0xDFA1)
	inc (hl)			;a7ea
	ld a,(hl)			;a7eb
	and 007h		;a7ec
	ld hl,0a822h		;a7ee
	call 04255h		;a7f1   ; p00:hl_mas_a
	ld a,(hl)			;a7f4
	ld (ix+01ah),a		;a7f5   ; guarda su punto del guion
	scf			;a7f8
	ret			;a7f9

; ----------------------------------------------------------------------
; DATOS tablas_A7FA: 32 bytes desde 0xA7FA (DE) y 0xA81A (HL) que p03:A7A9
;   recorre con 0xDFA1; 0xA822, 8 bytes que p03:A7EE pone en ix+0x1A; p01:63EE
;   entra por 0xA808
;   0xa7fa..0xa82a  (48 bytes)
DATA_tablas_A7FA:
	defb 000h,002h,000h,0ffh,000h,002h,080h,0ffh,000h,002h,000h,000h,000h,002h,080h,000h	; a7fa  ................
	defb 000h,002h,000h,001h,080h,001h,080h,001h,000h,001h,000h,002h,080h,000h,000h,002h	; a80a  ................
	defb 010h,020h,018h,020h,018h,020h,010h,010h,000h,004h,008h,00ch,010h,014h,018h,01ch	; a81a  . . . ..........

; ======================================================================
; CODIGO 0xa82a..0xa830  (6 bytes)
; ======================================================================


L_A82A:
	ld a,(ix+001h)		;a82a   ; LAS RANAS (GARGOYLE, POISNFROG, MIREFROG), por pasos (p03:A830)
	call 0425fh		;a82d   ; p00:despacha: Salta a la entrada A de la tabla de palabras que va pegada detras del `call`.

; ----------------------------------------------------------------------
; DATOS tabla_A830: 10 destinos del despachador de 0x425F (call en p03:A82D):
;   0xA844, 0xA860, 0xA88C, 0xA8C0, 0xA8F4, 0xA928, 0xA95B, 0xA99D ...; lo
;   leen p03:A82D (20 bytes)
;   0xa830..0xa844  (20 bytes)
DATA_tabla_A830:
	defb 044h,0a8h	; a830
	defb 060h,0a8h	; a832
	defb 08ch,0a8h	; a834
	defb 0c0h,0a8h	; a836
	defb 0f4h,0a8h	; a838
	defb 028h,0a9h	; a83a
	defb 05bh,0a9h	; a83c
	defb 09dh,0a9h	; a83e
	defb 0dfh,0a9h	; a840
	defb 021h,0aah	; a842

; ======================================================================
; CODIGO 0xa844..0xaad4  (656 bytes)
; ======================================================================


L_A844:
	dec (ix+013h)		;a844   ; PASO 0: tras ix+0x13 cuadros, en marcha, con sus colores (1 y 0x44) y el sonido 0x1C
	ret nz			;a847
	inc (ix+001h)		;a848   ; sube el paso en que va
	ld (ix+006h),001h		;a84b   ; si se mueve = 0x01
	ld (ix+00eh),003h		;a84f
	ld (ix+025h),001h		;a853
	ld (ix+02ah),044h		;a857
	ld a,01ch		;a85b
	jp 05488h		;a85d   ; p00:sonido_si_juega: solo con el bit 6 de 0xC102 (la partida de verdad, no la demostracion)
L_A860:
	dec (ix+012h)		;a860   ; PASO 1: tras ix+0x12 cuadros, sentada mirando abajo (cuadro 0x10), y apunta su sitio en ix+0x14-0x17
	ret nz			;a863
	inc (ix+001h)		;a864   ; sube el paso en que va
	ld (ix+00bh),010h		;a867   ; el cuadro del enemigo = 0x10
	ld (ix+006h),000h		;a86b   ; si se mueve = 0x00
	ld (ix+013h),00ch		;a86f   ; la espera o el punto del salto = 0x0C
	ld a,(ix+002h)		;a873
	ld (ix+014h),a		;a876   ; guarda la y en el suelo (baja)
	ld a,(ix+003h)		;a879   ; lee la y del enemigo
	ld (ix+015h),a		;a87c   ; guarda la y en el suelo
	ld a,(ix+004h)		;a87f
	ld (ix+016h),a		;a882   ; guarda la x en el suelo (baja)
	ld a,(ix+005h)		;a885   ; lee la x del enemigo
	ld (ix+017h),a		;a888   ; guarda la x en el suelo
	ret			;a88b
L_A88C:
	ld (ix+00bh),010h		;a88c   ; PASOS 2-5, SENTADA mirando abajo (2), a la izquierda (3), a la derecha (4) o arriba (5): tras ix+0x13 cuadros...
L_A890:
	dec (ix+013h)		;a890   ; baja la espera o el punto del salto
	ret nz			;a893
	bit 0,(ix+019h)		;a894   ; mira el bit 0 de si ya giro
	jr nz,L_A8A1		;a898
	call ranas_siguiente_movimiento		;a89a   ; ...el movimiento siguiente; si es hacia donde mira (o ya giro, ix+0x19), SALTA (paso 6)...
	cp 002h		;a89d
	jr nz,L_A8B8		;a89f
L_A8A1:
	ld (ix+001h),006h		;a8a1   ; ...a 2 hacia abajo
	call ranas_espera_segun_el_tipo		;a8a5   ; ranas_espera_segun_el_tipo: CUANTO DURA EL SALTO: GARGOYLE (6) 0x0C, POISNFROG y MIREFROG 8, GARGOYLE (8) 0x10...
	ld (ix+019h),000h		;a8a8   ; si ya giro = 0x00
	ld de,00200h		;a8ac
	call 04311h		;a8af   ; p00:pon_velocidad_vertical: DE: la velocidad vertical de la ficha (ix+7, ix+8)
	ld de,00000h		;a8b2
	jp 04318h		;a8b5   ; p00:pon_velocidad_horizontal: DE: la velocidad horizontal (ix+9, ix+0x0A)
L_A8B8:
	call ranas_velocidad		;a8b8   ; ...si no, gira hacia alli
	ld (ix+013h),00ch		;a8bb   ; la espera o el punto del salto = 0x0C
	ret			;a8bf
L_A8C0:
	ld (ix+00bh),014h		;a8c0   ; el cuadro del enemigo = 0x14
L_A8C4:
	dec (ix+013h)		;a8c4   ; baja la espera o el punto del salto
	ret nz			;a8c7
	bit 0,(ix+019h)		;a8c8   ; mira el bit 0 de si ya giro
	jr nz,L_A8D5		;a8cc
	call ranas_siguiente_movimiento		;a8ce   ; ranas_siguiente_movimiento: EL MOVIMIENTO SIGUIENTE, del guion de 32 de p03:AAD8: 1 hacia un punto al azar, 2 hacia Mitchel...
	cp 003h		;a8d1
	jr nz,L_A8EC		;a8d3
L_A8D5:
	ld (ix+001h),007h		;a8d5   ; salta a la izquierda (paso 7)
	call ranas_espera_segun_el_tipo		;a8d9   ; ranas_espera_segun_el_tipo: CUANTO DURA EL SALTO: GARGOYLE (6) 0x0C, POISNFROG y MIREFROG 8, GARGOYLE (8) 0x10...
	ld (ix+019h),000h		;a8dc   ; si ya giro = 0x00
	ld de,00000h		;a8e0
	call 04311h		;a8e3   ; p00:pon_velocidad_vertical: DE: la velocidad vertical de la ficha (ix+7, ix+8)
	ld de,0fe00h		;a8e6
	jp 04318h		;a8e9   ; p00:pon_velocidad_horizontal: DE: la velocidad horizontal (ix+9, ix+0x0A)
L_A8EC:
	call ranas_velocidad		;a8ec   ; ranas_velocidad: GIRA hacia A: arriba paso 5, derecha 4, abajo 2, izquierda 3; 0x0C cuadros y ix+0x19 = 1 (la proxima, salta)
	ld (ix+013h),00ch		;a8ef   ; la espera o el punto del salto = 0x0C
	ret			;a8f3
L_A8F4:
	ld (ix+00bh),016h		;a8f4   ; el cuadro del enemigo = 0x16
L_A8F8:
	dec (ix+013h)		;a8f8   ; baja la espera o el punto del salto
	ret nz			;a8fb
	bit 0,(ix+019h)		;a8fc   ; mira el bit 0 de si ya giro
	jr nz,L_A909		;a900
	call ranas_siguiente_movimiento		;a902   ; ranas_siguiente_movimiento: EL MOVIMIENTO SIGUIENTE, del guion de 32 de p03:AAD8: 1 hacia un punto al azar, 2 hacia Mitchel...
	cp 001h		;a905
	jr nz,L_A920		;a907
L_A909:
	ld (ix+001h),008h		;a909   ; salta a la derecha (paso 8)
	call ranas_espera_segun_el_tipo		;a90d   ; ranas_espera_segun_el_tipo: CUANTO DURA EL SALTO: GARGOYLE (6) 0x0C, POISNFROG y MIREFROG 8, GARGOYLE (8) 0x10...
	ld (ix+019h),000h		;a910   ; si ya giro = 0x00
	ld de,00000h		;a914
	call 04311h		;a917   ; p00:pon_velocidad_vertical: DE: la velocidad vertical de la ficha (ix+7, ix+8)
	ld de,00200h		;a91a
	jp 04318h		;a91d   ; p00:pon_velocidad_horizontal: DE: la velocidad horizontal (ix+9, ix+0x0A)
L_A920:
	call ranas_velocidad		;a920   ; ranas_velocidad: GIRA hacia A: arriba paso 5, derecha 4, abajo 2, izquierda 3; 0x0C cuadros y ix+0x19 = 1 (la proxima, salta)
	ld (ix+013h),00ch		;a923   ; la espera o el punto del salto = 0x0C
	ret			;a927
L_A928:
	ld (ix+00bh),012h		;a928   ; el cuadro del enemigo = 0x12
L_A92C:
	dec (ix+013h)		;a92c   ; baja la espera o el punto del salto
	ret nz			;a92f
	bit 0,(ix+019h)		;a930   ; mira el bit 0 de si ya giro
	jr nz,L_A93C		;a934
	call ranas_siguiente_movimiento		;a936   ; ranas_siguiente_movimiento: EL MOVIMIENTO SIGUIENTE, del guion de 32 de p03:AAD8: 1 hacia un punto al azar, 2 hacia Mitchel...
	and a			;a939
	jr nz,L_A953		;a93a
L_A93C:
	ld (ix+001h),009h		;a93c   ; salta hacia arriba (paso 9)
	call ranas_espera_segun_el_tipo		;a940   ; ranas_espera_segun_el_tipo: CUANTO DURA EL SALTO: GARGOYLE (6) 0x0C, POISNFROG y MIREFROG 8, GARGOYLE (8) 0x10...
	ld (ix+019h),000h		;a943   ; si ya giro = 0x00
	ld de,0fe00h		;a947
	call 04311h		;a94a   ; p00:pon_velocidad_vertical: DE: la velocidad vertical de la ficha (ix+7, ix+8)
	ld de,00000h		;a94d
	jp 04318h		;a950   ; p00:pon_velocidad_horizontal: DE: la velocidad horizontal (ix+9, ix+0x0A)
L_A953:
	call ranas_velocidad		;a953   ; ranas_velocidad: GIRA hacia A: arriba paso 5, derecha 4, abajo 2, izquierda 3; 0x0C cuadros y ix+0x19 = 1 (la proxima, salta)
	ld (ix+013h),00ch		;a956   ; la espera o el punto del salto = 0x0C
	ret			;a95a
L_A95B:
	ld (ix+00bh),011h		;a95b   ; PASOS 6-9, EL SALTO: su sitio en el suelo (ix+0x14-0x17) avanza con la velocidad...
L_A95F:
	dec (ix+013h)		;a95f   ; baja la espera o el punto del salto
	bit 0,(ix+018h)		;a962   ; mira el bit 0 de si no avanza
	jr nz,L_A96B		;a966
	call ranas_suma_velocidad		;a968   ; ranas_suma_velocidad: el sitio en el suelo (ix+0x14/15 y, ix+0x16/17 x) mas las velocidades
L_A96B:
	call ranas_recorrido_segun_el_tipo		;a96b   ; ...y la altura del salto se le suma...
	ld a,(ix+013h)		;a96e   ; ...cada 4 cuadros, si desde el suelo choca por ahi, deja de avanzar (ix+0x18 = 1)...
	and 003h		;a971
	jr nz,L_A988		;a973
	ld l,(ix+015h)		;a975   ; lee la y en el suelo
	ld h,(ix+017h)		;a978   ; lee la x en el suelo
	ld e,000h		;a97b
	ld a,002h		;a97d
	call 07309h		;a97f   ; p01:choca_desde_hl: desde (L, H) = (y, x): acarreo si hacia la direccion A no se puede pasar
	jr nc,L_A988		;a982
	ld (ix+018h),001h		;a984   ; si no avanza = 0x01
L_A988:
	ld a,(ix+013h)		;a988   ; ...y al acabar, sentada otra vez mirando hacia alli (0x0C cuadros) y un salto mas en ix+0x12
	and a			;a98b
	ret nz			;a98c
	ld (ix+001h),002h		;a98d   ; el paso en que va = 0x02
	ld (ix+013h),00ch		;a991   ; la espera o el punto del salto = 0x0C
	ld (ix+018h),000h		;a995   ; si no avanza = 0x00
	inc (ix+012h)		;a999   ; sube los saltos
	ret			;a99c
L_A99D:
	ld (ix+00bh),015h		;a99d   ; el cuadro del enemigo = 0x15
L_A9A1:
	dec (ix+013h)		;a9a1   ; baja la espera o el punto del salto
	bit 0,(ix+018h)		;a9a4   ; mira el bit 0 de si no avanza
	jr nz,L_A9AD		;a9a8
	call ranas_suma_velocidad		;a9aa   ; ranas_suma_velocidad: el sitio en el suelo (ix+0x14/15 y, ix+0x16/17 x) mas las velocidades
L_A9AD:
	call ranas_recorrido_segun_el_tipo		;a9ad   ; ranas_recorrido_segun_el_tipo: LA ALTURA DEL SALTO: su tabla por tipo (GARGOYLE 6 p03:AB88, POISNFROG y MIREFROG p03:ABA4, GARGOYLE 8 p03:AB94; otro, p03:AB88 o, uno de cada 4, p03:ABAC)...
	ld a,(ix+013h)		;a9b0   ; lee la espera o el punto del salto
	and 003h		;a9b3
	jr nz,L_A9CA		;a9b5
	ld l,(ix+015h)		;a9b7   ; lee la y en el suelo
	ld h,(ix+017h)		;a9ba   ; lee la x en el suelo
	ld e,000h		;a9bd
	ld a,003h		;a9bf
	call 07309h		;a9c1   ; p01:choca_desde_hl: desde (L, H) = (y, x): acarreo si hacia la direccion A no se puede pasar
	jr nc,L_A9CA		;a9c4
	ld (ix+018h),001h		;a9c6   ; si no avanza = 0x01
L_A9CA:
	ld a,(ix+013h)		;a9ca   ; lee la espera o el punto del salto
	and a			;a9cd
	ret nz			;a9ce
	ld (ix+001h),003h		;a9cf   ; el paso en que va = 0x03
	ld (ix+013h),00ch		;a9d3   ; la espera o el punto del salto = 0x0C
	ld (ix+018h),000h		;a9d7   ; si no avanza = 0x00
	inc (ix+012h)		;a9db   ; sube los saltos
	ret			;a9de
L_A9DF:
	ld (ix+00bh),017h		;a9df   ; el cuadro del enemigo = 0x17
L_A9E3:
	dec (ix+013h)		;a9e3   ; baja la espera o el punto del salto
	bit 0,(ix+018h)		;a9e6   ; mira el bit 0 de si no avanza
	jr nz,L_A9EF		;a9ea
	call ranas_suma_velocidad		;a9ec   ; ranas_suma_velocidad: el sitio en el suelo (ix+0x14/15 y, ix+0x16/17 x) mas las velocidades
L_A9EF:
	call ranas_recorrido_segun_el_tipo		;a9ef   ; ranas_recorrido_segun_el_tipo: LA ALTURA DEL SALTO: su tabla por tipo (GARGOYLE 6 p03:AB88, POISNFROG y MIREFROG p03:ABA4, GARGOYLE 8 p03:AB94; otro, p03:AB88 o, uno de cada 4, p03:ABAC)...
	ld a,(ix+013h)		;a9f2   ; lee la espera o el punto del salto
	and 003h		;a9f5
	jr nz,L_AA0C		;a9f7
	ld l,(ix+015h)		;a9f9   ; lee la y en el suelo
	ld h,(ix+017h)		;a9fc   ; lee la x en el suelo
	ld e,000h		;a9ff
	ld a,001h		;aa01
	call 07309h		;aa03   ; p01:choca_desde_hl: desde (L, H) = (y, x): acarreo si hacia la direccion A no se puede pasar
	jr nc,L_AA0C		;aa06
	ld (ix+018h),001h		;aa08   ; si no avanza = 0x01
L_AA0C:
	ld a,(ix+013h)		;aa0c   ; lee la espera o el punto del salto
	and a			;aa0f
	ret nz			;aa10
	ld (ix+001h),004h		;aa11   ; el paso en que va = 0x04
	ld (ix+013h),00ch		;aa15   ; la espera o el punto del salto = 0x0C
	ld (ix+018h),000h		;aa19   ; si no avanza = 0x00
	inc (ix+012h)		;aa1d   ; sube los saltos
	ret			;aa20
L_AA21:
	ld (ix+00bh),013h		;aa21   ; el cuadro del enemigo = 0x13
L_AA25:
	dec (ix+013h)		;aa25   ; baja la espera o el punto del salto
	bit 0,(ix+018h)		;aa28   ; mira el bit 0 de si no avanza
	jr nz,L_AA31		;aa2c
	call ranas_suma_velocidad		;aa2e   ; ranas_suma_velocidad: el sitio en el suelo (ix+0x14/15 y, ix+0x16/17 x) mas las velocidades
L_AA31:
	call ranas_recorrido_segun_el_tipo		;aa31   ; ranas_recorrido_segun_el_tipo: LA ALTURA DEL SALTO: su tabla por tipo (GARGOYLE 6 p03:AB88, POISNFROG y MIREFROG p03:ABA4, GARGOYLE 8 p03:AB94; otro, p03:AB88 o, uno de cada 4, p03:ABAC)...
	ld a,(ix+013h)		;aa34   ; lee la espera o el punto del salto
	and 003h		;aa37
	jr nz,L_AA4D		;aa39
	ld l,(ix+015h)		;aa3b   ; lee la y en el suelo
	ld h,(ix+017h)		;aa3e   ; lee la x en el suelo
	ld e,000h		;aa41
	xor a			;aa43
	call 07309h		;aa44   ; p01:choca_desde_hl: desde (L, H) = (y, x): acarreo si hacia la direccion A no se puede pasar
	jr nc,L_AA4D		;aa47
	ld (ix+018h),001h		;aa49   ; si no avanza = 0x01
L_AA4D:
	ld a,(ix+013h)		;aa4d   ; lee la espera o el punto del salto
	and a			;aa50
	ret nz			;aa51
	ld (ix+001h),005h		;aa52   ; el paso en que va = 0x05
	ld (ix+013h),00ch		;aa56   ; la espera o el punto del salto = 0x0C
	ld (ix+018h),000h		;aa5a   ; si no avanza = 0x00
	inc (ix+012h)		;aa5e   ; sube los saltos
	ret			;aa61
ranas_espera_segun_el_tipo:
	ld a,(ix+000h)		;aa62   ; CUANTO DURA EL SALTO: GARGOYLE (6) 0x0C, POISNFROG y MIREFROG 8, GARGOYLE (8) 0x10...
	cp 006h		;aa65   ; GARGOYLE (tipo 0x06)?
	ld c,00ch		;aa67
	jr z,L_AA8B		;aa69
	cp 007h		;aa6b   ; POISNFROG (tipo 0x07)?
	ld c,008h		;aa6d
	jr z,L_AA8B		;aa6f
	cp 03eh		;aa71   ; MIREFROG (tipo 0x3E)?
	jr z,L_AA8B		;aa73
	cp 008h		;aa75   ; GARGOYLE (tipo 0x08)?
	ld c,010h		;aa77
	jr z,L_AA8B		;aa79
	ld a,(ix+012h)		;aa7b   ; ...otro tipo: 0x0C, y uno de cada 4 saltos 0x18 con el sonido 0x0B
	and 003h		;aa7e
	ld c,00ch		;aa80
	jr nz,L_AA8B		;aa82
	ld c,018h		;aa84
	ld a,00bh		;aa86
	call 05488h		;aa88   ; p00:sonido_si_juega: solo con el bit 6 de 0xC102 (la partida de verdad, no la demostracion)
L_AA8B:
	ld (ix+013h),c		;aa8b   ; guarda la espera o el punto del salto
	ret			;aa8e
ranas_siguiente_movimiento:
	inc (ix+01ah)		;aa8f   ; EL MOVIMIENTO SIGUIENTE, del guion de 32 de p03:AAD8: 1 hacia un punto al azar, 2 hacia Mitchel...
	ld a,(ix+01ah)		;aa92   ; lee su punto del guion
	and 01fh		;aa95
	ld hl,0aad8h		;aa97
	call 04255h		;aa9a   ; p00:hl_mas_a
	ld a,(hl)			;aa9d
	dec a			;aa9e
	jr z,L_AAA6		;aa9f
	dec a			;aaa1
	jr z,L_AAB6		;aaa2
	jr L_AABC		;aaa4
L_AAA6:
	ld a,r		;aaa6
	rla			;aaa8
	rla			;aaa9
	ld e,a			;aaaa
	ld a,r		;aaab
	rla			;aaad
	rla			;aaae
	ld d,a			;aaaf
	ld bc,00200h		;aab0
	jp 0729eh		;aab3   ; p01:apunta_a_mitchel: APUNTA: la velocidad C...
L_AAB6:
	ld bc,00000h		;aab6
	jp 0729eh		;aab9   ; p01:apunta_a_mitchel: APUNTA: la velocidad C...
L_AABC:
	ld a,(ix+001h)		;aabc   ; ...otro: hacia donde mira (p03:AAD4), o al azar si choca
	sub 002h		;aabf
	ld hl,0aad4h		;aac1   ; tablas_AAD4: 4 bytes segun ix+1 - 2 (p03:AAC1) y 32 codigos segun ix+0x1A & 31 (1, 2 u otro; p03:AA97) desde 0xAAD8
	call 04255h		;aac4   ; p00:hl_mas_a
	ld a,(hl)			;aac7
	ld c,a			;aac8
	push bc			;aac9
	ld e,000h		;aaca
	call 07303h		;aacc   ; p01:choca_la_ficha: desde la ficha: acarreo si hacia la direccion A no se puede pasar
	pop bc			;aacf
	jr c,L_AAA6		;aad0
	ld a,c			;aad2
	ret			;aad3

; ----------------------------------------------------------------------
; DATOS tablas_AAD4: 4 bytes segun ix+1 - 2 (p03:AAC1) y 32 codigos segun
;   ix+0x1A & 31 (1, 2 u otro; p03:AA97) desde 0xAAD8
;   0xaad4..0xaaf8  (36 bytes)
DATA_tablas_AAD4:
	defb 002h,003h,001h,000h,001h,0ffh,0ffh,001h,002h,0ffh,0ffh,001h,001h,0ffh,002h,0ffh	; aad4  ................
	defb 002h,001h,001h,002h,0ffh,001h,0ffh,002h,001h,002h,002h,001h,0ffh,002h,001h,0ffh	; aae4  ................
	defb 0ffh,001h,001h,002h	; aaf4

; ======================================================================
; CODIGO 0xaaf8..0xab88  (144 bytes)
; ======================================================================


ranas_velocidad:
	and a			;aaf8   ; GIRA hacia A: arriba paso 5, derecha 4, abajo 2, izquierda 3; 0x0C cuadros y ix+0x19 = 1 (la proxima, salta)
	ld c,005h		;aaf9
	jr z,L_AB09		;aafb
	dec a			;aafd
	ld c,004h		;aafe
	jr z,L_AB09		;ab00
	dec a			;ab02
	ld c,002h		;ab03
	jr z,L_AB09		;ab05
	ld c,003h		;ab07
L_AB09:
	ld (ix+001h),c		;ab09   ; guarda el paso en que va
	ld (ix+013h),00ch		;ab0c   ; la espera o el punto del salto = 0x0C
	ld (ix+019h),001h		;ab10   ; si ya giro = 0x01
	ret			;ab14
ranas_suma_velocidad:
	ld l,(ix+014h)		;ab15   ; el sitio en el suelo (ix+0x14/15 y, ix+0x16/17 x) mas las velocidades
	ld h,(ix+015h)		;ab18   ; lee la y en el suelo
	ld e,(ix+007h)		;ab1b   ; lee la velocidad vertical (baja)
	ld d,(ix+008h)		;ab1e   ; lee la velocidad vertical
	add hl,de			;ab21
	ld (ix+014h),l		;ab22   ; guarda la y en el suelo (baja)
	ld (ix+015h),h		;ab25   ; guarda la y en el suelo
	ld l,(ix+016h)		;ab28   ; lee la x en el suelo (baja)
	ld h,(ix+017h)		;ab2b   ; lee la x en el suelo
	ld e,(ix+009h)		;ab2e   ; lee la velocidad horizontal (baja)
	ld d,(ix+00ah)		;ab31   ; lee la velocidad horizontal
	add hl,de			;ab34
	ld (ix+016h),l		;ab35   ; guarda la x en el suelo (baja)
	ld (ix+017h),h		;ab38   ; guarda la x en el suelo
	ret			;ab3b
ranas_recorrido_segun_el_tipo:
	ld a,(ix+000h)		;ab3c   ; LA ALTURA DEL SALTO: su tabla por tipo (GARGOYLE 6 p03:AB88, POISNFROG y MIREFROG p03:ABA4, GARGOYLE 8 p03:AB94; otro, p03:AB88 o, uno de cada 4, p03:ABAC)...
	cp 006h		;ab3f   ; GARGOYLE (tipo 0x06)?
	ld hl,0ab88h		;ab41   ; recorridos_AB88: pasos que elige p03:AB41 segun el tipo: 0xAB88 (tipos 6 y otros), 0xABA4 (7 y 0x3E), 0xAB94 (8) y 0xABAC
	jr z,L_AB65		;ab44
	cp 007h		;ab46   ; POISNFROG (tipo 0x07)?
	ld hl,0aba4h		;ab48
	jr z,L_AB65		;ab4b
	cp 03eh		;ab4d   ; MIREFROG (tipo 0x3E)?
	jr z,L_AB65		;ab4f
	cp 008h		;ab51   ; GARGOYLE (tipo 0x08)?
	ld hl,0ab94h		;ab53
	jr z,L_AB65		;ab56
	ld a,(ix+012h)		;ab58   ; lee los saltos
	and 003h		;ab5b
	ld hl,0ab88h		;ab5d   ; recorridos_AB88: pasos que elige p03:AB41 segun el tipo: 0xAB88 (tipos 6 y otros), 0xABA4 (7 y 0x3E), 0xAB94 (8) y 0xABAC
	jr nz,L_AB65		;ab60
	ld hl,0abach		;ab62
L_AB65:
	ld a,(ix+013h)		;ab65   ; ...su byte ix+0x13 sumado a la y del suelo; la x, la del suelo
	call 04255h		;ab68   ; p00:hl_mas_a
	ld d,(hl)			;ab6b
	ld e,000h		;ab6c
	ld l,(ix+014h)		;ab6e   ; lee la y en el suelo (baja)
	ld h,(ix+015h)		;ab71   ; lee la y en el suelo
	add hl,de			;ab74
	ld (ix+002h),l		;ab75
	ld (ix+003h),h		;ab78   ; guarda la y del enemigo
	ld a,(ix+016h)		;ab7b   ; lee la x en el suelo (baja)
	ld (ix+004h),a		;ab7e
	ld a,(ix+017h)		;ab81   ; lee la x en el suelo
	ld (ix+005h),a		;ab84   ; guarda la x del enemigo
	ret			;ab87

; ----------------------------------------------------------------------
; DATOS recorridos_AB88: pasos que elige p03:AB41 segun el tipo: 0xAB88 (tipos
;   6 y otros), 0xABA4 (7 y 0x3E), 0xAB94 (8) y 0xABAC
;   0xab88..0xabc4  (60 bytes)
DATA_recorridos_AB88:
	defb 000h,0feh,0fbh,0f9h,0f7h,0f4h,0f7h,0f9h,0fbh,0fdh,0feh,0ffh,000h,0feh,0fbh,0f8h	; ab88  ................
	defb 0f6h,0f4h,0f2h,0f1h,0f0h,0f1h,0f2h,0f4h,0f6h,0f8h,0fbh,0feh,000h,0feh,0fbh,0f9h	; ab98  ................
	defb 0f8h,0f9h,0fbh,0feh,000h,0feh,0fbh,0f9h,0f7h,0f4h,0f0h,0ech,0e9h,0e6h,0e3h,0e1h	; aba8  ................
	defb 0e0h,0e1h,0e3h,0e6h,0e9h,0ech,0f0h,0f4h,0f7h,0f9h,0fbh,0feh	; abb8  ............

; ======================================================================
; CODIGO 0xabc4..0xabd0  (12 bytes)
; ======================================================================


L_ABC4:
	ld de,0abd0h		;abc4   ; AL CREAR GARGOYLE (tipo 8, lo que suelta BADPRIEST): como p03:A7A9, con p03:ABD0, p03:ABF0 y 0xDFA2
	ld hl,0abf0h		;abc7
	ld bc,0dfa2h		;abca
	jp L_A7B2		;abcd

; ----------------------------------------------------------------------
; DATOS tablas_ABD0: 32 bytes desde 0xABD0 (DE) y 8 desde 0xABF0 (HL) que
;   p03:ABC4 pasa a p03:A7B2 con 0xDFA2
;   0xabd0..0xabf8  (40 bytes)
DATA_tablas_ABD0:
	defb 080h,000h,000h,0feh,080h,001h,000h,0feh,000h,002h,000h,0ffh,000h,002h,080h,0ffh	; abd0  ................
	defb 000h,002h,080h,000h,000h,002h,000h,001h,080h,001h,000h,002h,080h,000h,000h,002h	; abe0  ................
	defb 020h,020h,020h,020h,020h,020h,020h,020h	; abf0

; ======================================================================
; CODIGO 0xabf8..0xac2d  (53 bytes)
; ======================================================================


L_ABF8:
	jp L_A82A		;abf8   ; ENTRADA de GARGOYLE (tipo 0x08), con su ficha en IX
L_ABFB:
	ld hl,0df92h		;abfb   ; CADA 32 CUADROS (0xDF92), mientras quedan en 0xDF93, un POISNFROG (tipo 7) en (0x30, 0x28) o en (0x20, 0x40), alternando
	dec (hl)			;abfe
	ld a,(hl)			;abff
	and 01fh		;ac00
	ret nz			;ac02
	ld hl,0df93h		;ac03   ; apunta a las ranas que quedan por salir
	ld a,(hl)			;ac06
	and a			;ac07
	ret z			;ac08
	dec (hl)			;ac09
	bit 0,(hl)		;ac0a
	ld de,02830h		;ac0c
	jr nz,L_AC14		;ac0f
	ld de,04020h		;ac11
L_AC14:
	ld bc,0ff07h		;ac14
	jp 05a69h		;ac17   ; p00:crea_una_ficha: una ficha nueva en 0xD000-0xD67F (13 de 0x80): C el tipo, DE la posicion, B
L_AC1A:
	ld (ix+00bh),000h		;ac1a   ; AL CREAR POISNFROG: cuadro 0, 0x20 cuadros
	ld (ix+00eh),000h		;ac1e
	ld (ix+012h),020h		;ac22   ; los saltos = 0x20
	ret			;ac26
L_AC27:
	ld a,(ix+001h)		;ac27   ; ENTRADA de POISNFROG (tipo 0x07), con su ficha en IX
	call 0425fh		;ac2a   ; p00:despacha: Salta a la entrada A de la tabla de palabras que va pegada detras del `call`.

; ----------------------------------------------------------------------
; DATOS tabla_AC2D: 10 destinos del despachador de 0x425F (call en p03:AC2A):
;   0xAC41, 0xAC7A, 0xAC7E, 0xAC85, 0xAC8C, 0xAC93, 0xAC9A, 0xACA1 ...; lo
;   leen p03:AC2A (20 bytes)
;   0xac2d..0xac41  (20 bytes)
DATA_tabla_AC2D:
	defb 041h,0ach	; ac2d
	defb 07ah,0ach	; ac2f
	defb 07eh,0ach	; ac31
	defb 085h,0ach	; ac33
	defb 08ch,0ach	; ac35
	defb 093h,0ach	; ac37
	defb 09ah,0ach	; ac39
	defb 0a1h,0ach	; ac3b
	defb 0a8h,0ach	; ac3d
	defb 0afh,0ach	; ac3f

; ======================================================================
; CODIGO 0xac41..0xacea  (169 bytes)
; ======================================================================


L_AC41:
	bit 3,(ix+012h)		;ac41   ; PASO 0: parpadea (cuadro 0 o 1) ix+0x12 cuadros; luego sentada (cuadro 4), 8 cuadros, y apunta su sitio en el suelo
	ld a,000h		;ac45
	jr z,L_AC4B		;ac47
	ld a,001h		;ac49
L_AC4B:
	ld (ix+00bh),a		;ac4b   ; guarda el cuadro del enemigo
	dec (ix+012h)		;ac4e   ; baja los saltos
	ret nz			;ac51
	inc (ix+001h)		;ac52   ; sube el paso en que va
	ld (ix+00bh),004h		;ac55   ; el cuadro del enemigo = 0x04
	ld (ix+00eh),003h		;ac59
	ld (ix+013h),008h		;ac5d   ; la espera o el punto del salto = 0x08
	ld a,(ix+002h)		;ac61
	ld (ix+014h),a		;ac64   ; guarda la y en el suelo (baja)
	ld a,(ix+003h)		;ac67   ; lee la y del enemigo
	ld (ix+015h),a		;ac6a   ; guarda la y en el suelo
	ld a,(ix+004h)		;ac6d
	ld (ix+016h),a		;ac70   ; guarda la x en el suelo (baja)
	ld a,(ix+005h)		;ac73   ; lee la x del enemigo
	ld (ix+017h),a		;ac76   ; guarda la x en el suelo
	ret			;ac79
L_AC7A:
	inc (ix+001h)		;ac7a   ; POISNFROG, paso 1
	ret			;ac7d
L_AC7E:
	ld (ix+00bh),004h		;ac7e   ; los pasos de las ranas (p03:A88C y siguientes), con sus cuadros
	jp L_A890		;ac82
L_AC85:
	ld (ix+00bh),007h		;ac85   ; POISNFROG, paso 3
	jp L_A8C4		;ac89
L_AC8C:
	ld (ix+00bh),009h		;ac8c   ; POISNFROG, paso 4
	jp L_A8F8		;ac90
L_AC93:
	ld (ix+00bh),006h		;ac93   ; POISNFROG, paso 5
	jp L_A92C		;ac97
L_AC9A:
	ld (ix+00bh),003h		;ac9a   ; POISNFROG, paso 6
	jp L_A95F		;ac9e
L_ACA1:
	ld (ix+00bh),008h		;aca1   ; POISNFROG, paso 7
	jp L_A9A1		;aca5
L_ACA8:
	ld (ix+00bh),00ah		;aca8   ; POISNFROG, paso 8
	jp L_A9E3		;acac
L_ACAF:
	ld (ix+00bh),005h		;acaf   ; POISNFROG, paso 9
	jp L_AA25		;acb3
L_ACB6:
	ld a,(0c125h)		;acb6   ; LOS MIREFROG: en la pantalla 6 solo en su plano alterno; cada 32 cuadros, mientras quedan en 0xDF93...
	cp 006h		;acb9   ; la pantalla 0x06?
	jr nz,L_ACC2		;acbb
	ld a,(0c131h)		;acbd   ; lee el plano de la pantalla (0, el exterior)
	and a			;acc0
	ret z			;acc1
L_ACC2:
	ld hl,0df92h		;acc2   ; apunta a la cuenta de cuadros para la rana siguiente
	dec (hl)			;acc5
	ld a,(hl)			;acc6
	and 01fh		;acc7
	ret nz			;acc9
	ld hl,0df93h		;acca   ; apunta a las ranas que quedan por salir
	ld a,(hl)			;accd
	and a			;acce
	ret z			;accf
	dec (hl)			;acd0
	ld a,(0c125h)		;acd1   ; ...uno (tipo 0x3E) en uno de los sitios de p03:ACEA (2 en la pantalla 6, 4 en las demas)
	cp 006h		;acd4   ; la pantalla 0x06?
	ld c,001h		;acd6
	jr z,L_ACDC		;acd8
	ld c,003h		;acda
L_ACDC:
	ld a,(hl)			;acdc
	and c			;acdd
	ld de,0aceah		;acde   ; dibujos_ACEA: 4 palabras segun A & C que p03:ACDE pasa a p00:5A69
	call 042ffh		;ace1   ; p00:palabra_de_la_tabla: DE = la palabra A de la tabla de DE
	ld bc,0ff3eh		;ace4
	jp 05a69h		;ace7   ; p00:crea_una_ficha: una ficha nueva en 0xD000-0xD67F (13 de 0x80): C el tipo, DE la posicion, B

; ----------------------------------------------------------------------
; DATOS dibujos_ACEA: 4 palabras segun A & C que p03:ACDE pasa a p00:5A69
;   0xacea..0xacf2  (8 bytes)
DATA_dibujos_ACEA:
	defb 080h,080h,030h,080h,030h,028h,080h,028h	; acea  ..0.0(.(

; ======================================================================
; CODIGO 0xacf2..0xad05  (19 bytes)
; ======================================================================


L_ACF2:
	ld (ix+00bh),003h		;acf2   ; AL CREAR MIREFROG: cuadro 3, 0x20 cuadros
	ld (ix+00eh),000h		;acf6
	ld (ix+012h),020h		;acfa   ; los saltos = 0x20
	ret			;acfe
L_ACFF:
	ld a,(ix+001h)		;acff   ; ENTRADA de MIREFROG (tipo 0x3E), con su ficha en IX
	call 0425fh		;ad02   ; p00:despacha: Salta a la entrada A de la tabla de palabras que va pegada detras del `call`.

; ----------------------------------------------------------------------
; DATOS tabla_AD05: 10 destinos del despachador de 0x425F (call en p03:AD02):
;   0xAD19, 0xAD52, 0xAD56, 0xAD5D, 0xAD64, 0xAD6B, 0xAD72, 0xAD79 ...; lo
;   leen p03:AD02 (20 bytes)
;   0xad05..0xad19  (20 bytes)
DATA_tabla_AD05:
	defb 019h,0adh	; ad05
	defb 052h,0adh	; ad07
	defb 056h,0adh	; ad09
	defb 05dh,0adh	; ad0b
	defb 064h,0adh	; ad0d
	defb 06bh,0adh	; ad0f
	defb 072h,0adh	; ad11
	defb 079h,0adh	; ad13
	defb 080h,0adh	; ad15
	defb 087h,0adh	; ad17

; ======================================================================
; CODIGO 0xad19..0xadc1  (168 bytes)
; ======================================================================


L_AD19:
	bit 3,(ix+012h)		;ad19   ; PASO 0: parpadea (cuadro 3 o 4) ix+0x12 cuadros; luego sentada (cuadro 7) y apunta su sitio en el suelo
	ld a,003h		;ad1d
	jr z,L_AD23		;ad1f
	ld a,004h		;ad21
L_AD23:
	ld (ix+00bh),a		;ad23   ; guarda el cuadro del enemigo
	dec (ix+012h)		;ad26   ; baja los saltos
	ret nz			;ad29
	inc (ix+001h)		;ad2a   ; sube el paso en que va
	ld (ix+00bh),007h		;ad2d   ; el cuadro del enemigo = 0x07
	ld (ix+00eh),003h		;ad31
	ld (ix+013h),008h		;ad35   ; la espera o el punto del salto = 0x08
	ld a,(ix+002h)		;ad39
	ld (ix+014h),a		;ad3c   ; guarda la y en el suelo (baja)
	ld a,(ix+003h)		;ad3f   ; lee la y del enemigo
	ld (ix+015h),a		;ad42   ; guarda la y en el suelo
	ld a,(ix+004h)		;ad45
	ld (ix+016h),a		;ad48   ; guarda la x en el suelo (baja)
	ld a,(ix+005h)		;ad4b   ; lee la x del enemigo
	ld (ix+017h),a		;ad4e   ; guarda la x en el suelo
	ret			;ad51
L_AD52:
	inc (ix+001h)		;ad52   ; MIREFROG, paso 1
	ret			;ad55
L_AD56:
	ld (ix+00bh),007h		;ad56   ; los pasos de las ranas, con sus cuadros
	jp L_A890		;ad5a
L_AD5D:
	ld (ix+00bh),00ah		;ad5d   ; MIREFROG, paso 3
	jp L_A8C4		;ad61
L_AD64:
	ld (ix+00bh),00ch		;ad64   ; MIREFROG, paso 4
	jp L_A8F8		;ad68
L_AD6B:
	ld (ix+00bh),009h		;ad6b   ; MIREFROG, paso 5
	jp L_A92C		;ad6f
L_AD72:
	ld (ix+00bh),006h		;ad72   ; MIREFROG, paso 6
	jp L_A95F		;ad76
L_AD79:
	ld (ix+00bh),00bh		;ad79   ; MIREFROG, paso 7
	jp L_A9A1		;ad7d
L_AD80:
	ld (ix+00bh),00dh		;ad80   ; MIREFROG, paso 8
	jp L_A9E3		;ad84
L_AD87:
	ld (ix+00bh),008h		;ad87   ; MIREFROG, paso 9
	jp L_AA25		;ad8b
L_AD8E:
	ld a,(0c303h)		;ad8e   ; AL CREAR DUNGROLL: mirando arriba (cuadro 0x11) si Mitchel esta por encima de y 0x60, si no abajo (0x10)...
	cp 060h		;ad91
	ld a,001h		;ad93
	ld (ix+00bh),011h		;ad95   ; el cuadro del enemigo = 0x11
	jr c,L_ADA0		;ad99
	ld (ix+00bh),010h		;ad9b   ; el cuadro del enemigo = 0x10
	dec a			;ad9f
L_ADA0:
	ld (ix+015h),a		;ada0   ; guarda si mira arriba
	ld (ix+006h),001h		;ada3   ; si se mueve = 0x01
	ld hl,0dfa5h		;ada7   ; ...cada cuantos cuadros para (ix+0x12) de p03:ADC1 segun cuantos van (0xDFA5), y hacia la izquierda a 1
	inc (hl)			;adaa
	ld a,(hl)			;adab
	and 007h		;adac
	ld hl,0adc1h		;adae   ; byte_12_ADC1: 8 bytes: lo que p03:ADAE pone en ix+0x12 segun (HL) & 7
	call 04255h		;adb1   ; p00:hl_mas_a
	ld a,(hl)			;adb4
	ld (ix+012h),a		;adb5   ; guarda los cuadros hasta parar
	ld hl,00000h		;adb8
	ld de,0ff00h		;adbb
	jp 08bdch		;adbe   ; p02:pon_velocidades: la ficha se mueve (ix+6), con DE de velocidad horizontal y HL de vertical

; ----------------------------------------------------------------------
; DATOS byte_12_ADC1: 8 bytes: lo que p03:ADAE pone en ix+0x12 segun (HL) & 7
;   0xadc1..0xadc9  (8 bytes)
DATA_byte_12_ADC1:
	defb 020h,060h,040h,080h,030h,010h,050h,070h	; adc1   `@.0.Pp

; ======================================================================
; CODIGO 0xadc9..0xadd5  (12 bytes)
; ======================================================================


L_ADC9:
	dec (ix+012h)		;adc9   ; cada ix+0x12 cuadros se para a empujar (paso 2)
	call z,dungroll_empieza_a_rodar		;adcc   ; dungroll_empieza_a_rodar: A EMPUJAR: el paso de ahora a ix+0x13, 0x18 cuadros en el paso 2, parado
	ld a,(ix+001h)		;adcf   ; lee el paso en que va
	call 0425fh		;add2   ; p00:despacha: Salta a la entrada A de la tabla de palabras que va pegada detras del `call`.

; ----------------------------------------------------------------------
; DATOS tabla_ADD5: 3 destinos del despachador de 0x425F (call en p03:ADD2):
;   0xADDB, 0xADF4, 0xAE0D; lo leen p03:ADD2 (6 bytes)
;   0xadd5..0xaddb  (6 bytes)
DATA_tabla_ADD5:
	defb 0dbh,0adh	; add5
	defb 0f4h,0adh	; add7
	defb 00dh,0aeh	; add9

; ======================================================================
; CODIGO 0xaddb..0xae92  (183 bytes)
; ======================================================================


L_ADDB:
	call dungroll_cuadro		;addb   ; PASO 0: hacia la izquierda hasta chocar (alineado a 8); luego a la derecha (paso 1)
	ld a,(ix+005h)		;adde   ; lee la x del enemigo
	and 007h		;ade1
	ld a,003h		;ade3
	ld e,000h		;ade5
	call z,07303h		;ade7   ; p01:choca_la_ficha: desde la ficha: acarreo si hacia la direccion A no se puede pasar
	ret nc			;adea
	inc (ix+001h)		;adeb   ; sube el paso en que va
	ld de,00100h		;adee
	jp 04318h		;adf1   ; p00:pon_velocidad_horizontal: DE: la velocidad horizontal (ix+9, ix+0x0A)
L_ADF4:
	call dungroll_cuadro		;adf4   ; PASO 1: hacia la derecha hasta chocar; luego a la izquierda (paso 0)
	ld a,(ix+005h)		;adf7   ; lee la x del enemigo
	and 007h		;adfa
	ld a,001h		;adfc
	ld e,000h		;adfe
	call z,07303h		;ae00   ; p01:choca_la_ficha: desde la ficha: acarreo si hacia la direccion A no se puede pasar
	ret nc			;ae03
	dec (ix+001h)		;ae04   ; baja el paso en que va
	ld de,0ff00h		;ae07
	jp 04318h		;ae0a   ; p00:pon_velocidad_horizontal: DE: la velocidad horizontal (ix+9, ix+0x0A)
L_AE0D:
	dec (ix+014h)		;ae0d   ; PASO 2, 0x18 cuadros: a los 0x10 empuja...
	ld a,(ix+014h)		;ae10   ; lee la cuenta del empujon
	cp 010h		;ae13
	jr z,L_AE43		;ae15
	jr nc,L_AE1C		;ae17
	cp 008h		;ae19
	ret nc			;ae1b
L_AE1C:
	dec a			;ae1c   ; ...al acabar, sigue con el paso y el lado de antes, y 0x50 cuadros para la parada siguiente
	jr z,L_AE2D		;ae1d
	bit 0,(ix+015h)		;ae1f   ; mira el bit 0 de si mira arriba
	ld (ix+00bh),010h		;ae23   ; el cuadro del enemigo = 0x10
	ret z			;ae27
	ld (ix+00bh),011h		;ae28   ; el cuadro del enemigo = 0x11
	ret			;ae2c
L_AE2D:
	ld a,(ix+013h)		;ae2d   ; lee el paso de antes
	ld (ix+001h),a		;ae30   ; guarda el paso en que va
	and a			;ae33
	ld de,0ff00h		;ae34
	jr z,L_AE3B		;ae37
	ld d,001h		;ae39
L_AE3B:
	call 04318h		;ae3b   ; p00:pon_velocidad_horizontal: DE: la velocidad horizontal (ix+9, ix+0x0A)
	ld (ix+012h),050h		;ae3e   ; los cuadros hasta parar = 0x50
	ret			;ae42
L_AE43:
	bit 0,(ix+015h)		;ae43   ; EMPUJA: si por debajo no choca, la figura 0x85, 8 por debajo (o por encima si mira arriba), con su cuadro en 0xE806
	ld (ix+00bh),010h		;ae47   ; el cuadro del enemigo = 0x10
	jr z,L_AE51		;ae4b
	ld (ix+00bh),011h		;ae4d   ; el cuadro del enemigo = 0x11
L_AE51:
	ld a,002h		;ae51
	ld e,000h		;ae53
	call 07303h		;ae55   ; p01:choca_la_ficha: desde la ficha: acarreo si hacia la direccion A no se puede pasar
	ret c			;ae58
	ld a,(ix+00bh)		;ae59   ; lee el cuadro del enemigo
	ld (0e806h),a		;ae5c
	ld c,085h		;ae5f
	ld d,(ix+005h)		;ae61   ; lee la x del enemigo
	bit 0,(ix+015h)		;ae64   ; mira el bit 0 de si mira arriba
	ld a,008h		;ae68
	jr z,L_AE6E		;ae6a
	ld a,0f8h		;ae6c
L_AE6E:
	ld e,(ix+003h)		;ae6e   ; lee la y del enemigo
	add a,e			;ae71
	ld e,a			;ae72
	jp 0709ah		;ae73   ; p01:crea_una_figura: CREA UNA FIGURA: el tipo C en DE
dungroll_cuadro:
	ld a,(ix+00ch)		;ae76   ; el cuadro de p03:AE92 (mirando abajo) o p03:AE94 (arriba), cambiando cada 8 cuadros
	and 008h		;ae79
	rra			;ae7b
	rra			;ae7c
	rra			;ae7d
	bit 0,(ix+015h)		;ae7e   ; mira el bit 0 de si mira arriba
	ld hl,0ae92h		;ae82   ; cuadros_AE92: dos parejas de cuadros (ix+0x0B) segun el bit 0 de ix+0x15 (p03:AE82)
	jr z,L_AE8A		;ae85
	ld hl,0ae94h		;ae87
L_AE8A:
	call 04255h		;ae8a   ; p00:hl_mas_a
	ld a,(hl)			;ae8d
	ld (ix+00bh),a		;ae8e   ; guarda el cuadro del enemigo
	ret			;ae91

; ----------------------------------------------------------------------
; DATOS cuadros_AE92: dos parejas de cuadros (ix+0x0B) segun el bit 0 de
;   ix+0x15 (p03:AE82)
;   0xae92..0xae96  (4 bytes)
DATA_cuadros_AE92:
	defb 010h,012h,011h,013h	; ae92

; ======================================================================
; CODIGO 0xae96..0xaf0f  (121 bytes)
; ======================================================================


dungroll_empieza_a_rodar:
	ld (ix+012h),0ffh		;ae96   ; A EMPUJAR: el paso de ahora a ix+0x13, 0x18 cuadros en el paso 2, parado
	ld (ix+014h),018h		;ae9a   ; la cuenta del empujon = 0x18
	ld a,(ix+001h)		;ae9e   ; lee el paso en que va
	ld (ix+013h),a		;aea1   ; guarda el paso de antes
	ld (ix+001h),002h		;aea4   ; el paso en que va = 0x02
	ld de,00000h		;aea8
	jp 04318h		;aeab   ; p00:pon_velocidad_horizontal: DE: la velocidad horizontal (ix+9, ix+0x0A)
L_AEAE:
	ld a,(ix+003h)		;aeae   ; AL CREAR FIRETOTEM: su franja de y (0-3: 0x30, 0x50, 0x80)...
	cp 030h		;aeb1   ; y < 0x30: 0...
	ld c,000h		;aeb3
	jr c,L_AEC5		;aeb5
	cp 050h		;aeb7   ; ...< 0x50: 2; < 0x80: 4; si no, 6
	ld c,002h		;aeb9
	jr c,L_AEC5		;aebb
	cp 080h		;aebd
	ld c,004h		;aebf
	jr c,L_AEC5		;aec1
	ld c,006h		;aec3
L_AEC5:
	ld a,(ix+005h)		;aec5   ; ...a la izquierda de 0x58 empieza hacia la derecha (paso 3); a la derecha, hacia la izquierda (paso 0)...
	cp 058h		;aec8
	ld b,003h		;aeca
	ld d,000h		;aecc
	jr c,L_AED4		;aece
	ld b,d			;aed0
	ld d,002h		;aed1
	inc c			;aed3
L_AED4:
	ld (ix+001h),b		;aed4   ; guarda el paso en que va
	ld (ix+015h),d		;aed7   ; guarda los saltos para lanzar
	ld a,(0c125h)		;aeda   ; ...en la pantalla 0x20, otras parejas...
	cp 020h		;aedd   ; la pantalla 0x20?
	jr nz,L_AEE5		;aedf
	ld a,c			;aee1
	add a,004h		;aee2
	ld c,a			;aee4
L_AEE5:
	ld a,c			;aee5   ; ...cuantos saltos da hacia cada lado (ix+0x12) y hacia donde (ix+0x19), de p03:AF0F; cuadro 0x10, 0x20 cuadros, y su y en el suelo
	add a,a			;aee6
	ld hl,0af0fh		;aee7   ; parejas_AF0F: 12 parejas que p03:AEE7 pone en ix+0x12 e ix+0x19 segun C
	call 04255h		;aeea   ; p00:hl_mas_a
	ld a,(hl)			;aeed
	ld (ix+012h),a		;aeee   ; guarda los saltos por lado
	inc hl			;aef1
	ld a,(hl)			;aef2
	ld (ix+019h),a		;aef3   ; guarda el sentido (bit 0 arriba o abajo, bit 1 el lado)
	ld (ix+00bh),010h		;aef6   ; el cuadro del enemigo = 0x10
	ld (ix+014h),020h		;aefa   ; la cuenta = 0x20
	ld (ix+013h),000h		;aefe   ; los saltos dados = 0x00
	ld a,(ix+002h)		;af02
	ld (ix+016h),a		;af05   ; guarda la y en el suelo (baja)
	ld a,(ix+003h)		;af08   ; lee la y del enemigo
	ld (ix+017h),a		;af0b   ; guarda la y en el suelo
	ret			;af0e

; ----------------------------------------------------------------------
; DATOS parejas_AF0F: 12 parejas que p03:AEE7 pone en ix+0x12 e ix+0x19 segun
;   C
;   0xaf0f..0xaf27  (24 bytes)
DATA_parejas_AF0F:
	defb 008h,003h,008h,001h,008h,002h,008h,000h,008h,003h,008h,001h,008h,002h,008h,000h	; af0f  ................
	defb 006h,003h,006h,001h,006h,002h,006h,000h	; af1f  ........

; ======================================================================
; CODIGO 0xaf27..0xaf2d  (6 bytes)
; ======================================================================


L_AF27:
	ld a,(ix+001h)		;af27   ; ENTRADA de FIRETOTEM (tipo 0x29), con su ficha en IX
	call 0425fh		;af2a   ; p00:despacha: Salta a la entrada A de la tabla de palabras que va pegada detras del `call`.

; ----------------------------------------------------------------------
; DATOS tabla_AF2D: 6 destinos del despachador de 0x425F (call en p03:AF2A):
;   0xAF39, 0xAFAC, 0xAFAC, 0xAFCF, 0xAFDE, 0xAFDE; lo leen p03:AF2A (12
;   bytes)
;   0xaf2d..0xaf39  (12 bytes)
DATA_tabla_AF2D:
	defb 039h,0afh	; af2d
	defb 0ach,0afh	; af2f
	defb 0ach,0afh	; af31
	defb 0cfh,0afh	; af33
	defb 0deh,0afh	; af35
	defb 0deh,0afh	; af37

; ======================================================================
; CODIGO 0xaf39..0xaffc  (195 bytes)
; ======================================================================


L_AF39:
	ld hl,00001h		;af39   ; PASO 0 (hacia la izquierda): 0xE800 el paso del salto, 0xE801 la velocidad en x (-1), 0xE803 el paso al cambiar de lado...
	ld (0e800h),hl		;af3c
	ld hl,003ffh		;af3f
	ld (0e802h),hl		;af42
L_AF45:
	ld a,(ix+018h)		;af45   ; ...parado ix+0x14 cuadros (cuadro 0x11 si va a lanzar); a 8 del final, LANZA...
	and a			;af48
	ld a,011h		;af49
	jr nz,L_AF4F		;af4b
	ld a,010h		;af4d
L_AF4F:
	ld (ix+00bh),a		;af4f   ; guarda el cuadro del enemigo
	dec (ix+014h)		;af52   ; baja la cuenta
	jr z,L_AF65		;af55
	ld a,(ix+014h)		;af57   ; lee la cuenta
	cp 008h		;af5a
	ret nz			;af5c
	ld a,(ix+018h)		;af5d   ; lee si va a lanzar
	and a			;af60
	call nz,firetotem_lanza		;af61   ; firetotem_lanza: la figura 0x8C en su sitio
	ret			;af64
L_AF65:
	ld (ix+018h),000h		;af65   ; ...luego otro salto, arriba o abajo segun el bit 0 de ix+0x19, 0x0E cuadros...
	inc (ix+013h)		;af69   ; un salto mas; a los ix+0x12, cambia de lado
	ld a,(ix+013h)		;af6c   ; lee los saltos dados
	cp (ix+012h)		;af6f   ; compara con los saltos por lado
	jr z,L_AF95		;af72
	bit 0,(ix+019h)		;af74   ; bit 0 de ix+0x19: arriba (-1) o abajo (+1, y el paso siguiente)
	ld a,(0e800h)		;af78
	ld de,0ff00h		;af7b
	jr z,L_AF84		;af7e
	ld de,00100h		;af80
	inc a			;af83
L_AF84:
	ld (ix+001h),a		;af84   ; guarda el paso en que va
	ld (ix+014h),00eh		;af87   ; la cuenta = 0x0E
	call 04311h		;af8b   ; p00:pon_velocidad_vertical: DE: la velocidad vertical de la ficha (ix+7, ix+8)
	ld de,(0e801h)		;af8e
	jp 04318h		;af92   ; p00:pon_velocidad_horizontal: DE: la velocidad horizontal (ix+9, ix+0x0A)
L_AF95:
	ld (ix+013h),000h		;af95   ; ...y al dar ix+0x12 saltos, cambia de lado (bit 1 de ix+0x19) con 8 cuadros de espera
	ld a,(0e803h)		;af99
	ld (ix+001h),a		;af9c   ; guarda el paso en que va
	ld (ix+014h),008h		;af9f   ; la cuenta = 0x08
	ld a,(ix+019h)		;afa3   ; lee el sentido (bit 0 arriba o abajo, bit 1 el lado)
	xor 002h		;afa6
	ld (ix+019h),a		;afa8   ; guarda el sentido (bit 0 arriba o abajo, bit 1 el lado)
	ret			;afab
L_AFAC:
	xor a			;afac   ; PASO 1 (y 2, 4): EL SALTO, cada cuadro su dibujo, su sitio en el suelo y su altura...
L_AFAD:
	push af			;afad
	call firetotem_cuadro		;afae   ; firetotem_cuadro: el cuadro de p03:B040 segun ix+0x14
	call firetotem_suma_velocidad		;afb1   ; firetotem_suma_velocidad: la y del suelo (ix+0x16/17) mas la velocidad vertical; la x, con la horizontal
	call firetotem_altura		;afb4   ; firetotem_altura: la y: la del suelo mas p03:AFFC segun ix+0x14
	pop af			;afb7
	dec (ix+014h)		;afb8   ; ...y al acabar, al paso de espera con 0x10 cuadros, un salto mas contado y el otro sentido en y
	ret nz			;afbb
	ld (ix+001h),a		;afbc   ; guarda el paso en que va
	ld (ix+014h),010h		;afbf   ; la cuenta = 0x10
	call firetotem_cuenta		;afc3   ; firetotem_cuenta: cada 4 saltos, ix+0x18 = 1: en la espera siguiente lanza
	ld a,(ix+019h)		;afc6   ; lee el sentido (bit 0 arriba o abajo, bit 1 el lado)
	xor 001h		;afc9
	ld (ix+019h),a		;afcb   ; guarda el sentido (bit 0 arriba o abajo, bit 1 el lado)
	ret			;afce
L_AFCF:
	ld hl,00004h		;afcf   ; PASO 3: como el 0 hacia la derecha (+1), volviendo al paso 0 al cambiar de lado
	ld (0e800h),hl		;afd2
	ld hl,00001h		;afd5
	ld (0e802h),hl		;afd8
	jp L_AF45		;afdb
L_AFDE:
	ld a,003h		;afde   ; FIRETOTEM, paso 4
	jr L_AFAD		;afe0
firetotem_altura:
	ld hl,0affch		;afe2   ; la y: la del suelo mas p03:AFFC segun ix+0x14
	ld a,(ix+014h)		;afe5   ; lee la cuenta
	call 04255h		;afe8   ; p00:hl_mas_a
	ld e,000h		;afeb
	ld d,(hl)			;afed
	ld l,(ix+016h)		;afee   ; lee la y en el suelo (baja)
	ld h,(ix+017h)		;aff1   ; lee la y en el suelo
	add hl,de			;aff4
	ld (ix+002h),l		;aff5
	ld (ix+003h),h		;aff8   ; guarda la y del enemigo
	ret			;affb

; ----------------------------------------------------------------------
; DATOS alturas_AFFC: 15 bytes: lo que p03:AFE2 suma a la palabra ix+0x16
;   segun ix+0x14
;   0xaffc..0xb00b  (15 bytes)
DATA_alturas_AFFC:
	defb 000h,0ffh,0feh,0fch,0fbh,0fah,0f9h,0f8h,0f8h,0f9h,0fah,0fbh,0fch,0feh,0ffh	; affc  ...............

; ======================================================================
; CODIGO 0xb00b..0xb040  (53 bytes)
; ======================================================================


firetotem_suma_velocidad:
	ld l,(ix+016h)		;b00b   ; la y del suelo (ix+0x16/17) mas la velocidad vertical; la x, con la horizontal
	ld h,(ix+017h)		;b00e   ; lee la y en el suelo
	ld e,(ix+007h)		;b011   ; lee la velocidad vertical (baja)
	ld d,(ix+008h)		;b014   ; lee la velocidad vertical
	add hl,de			;b017
	ld (ix+016h),l		;b018   ; guarda la y en el suelo (baja)
	ld (ix+017h),h		;b01b   ; guarda la y en el suelo
	ld l,(ix+004h)		;b01e
	ld h,(ix+005h)		;b021   ; lee la x del enemigo
	ld e,(ix+009h)		;b024   ; lee la velocidad horizontal (baja)
	ld d,(ix+00ah)		;b027   ; lee la velocidad horizontal
	add hl,de			;b02a
	ld (ix+004h),l		;b02b
	ld (ix+005h),h		;b02e   ; guarda la x del enemigo
	ret			;b031
firetotem_cuadro:
	ld hl,0b040h		;b032   ; el cuadro de p03:B040 segun ix+0x14
	ld a,(ix+014h)		;b035   ; lee la cuenta
	call 04255h		;b038   ; p00:hl_mas_a
	ld a,(hl)			;b03b
	ld (ix+00bh),a		;b03c   ; guarda el cuadro del enemigo
	ret			;b03f

; ----------------------------------------------------------------------
; DATOS cuadros_B040: 15 bytes: el cuadro (ix+0x0B) segun ix+0x14 (p03:B032)
;   0xb040..0xb04f  (15 bytes)
DATA_cuadros_B040:
	defb 010h,010h,010h,010h,010h,010h,010h,010h,010h,010h,010h,010h,010h,010h,010h	; b040  ...............

; ======================================================================
; CODIGO 0xb04f..0xb08d  (62 bytes)
; ======================================================================


firetotem_cuenta:
	inc (ix+015h)		;b04f   ; cada 4 saltos, ix+0x18 = 1: en la espera siguiente lanza
	ld a,(ix+015h)		;b052   ; lee los saltos para lanzar
	and 003h		;b055
	ret nz			;b057
	ld (ix+018h),001h		;b058   ; si va a lanzar = 0x01
	ret			;b05c
firetotem_lanza:
	ld c,08ch		;b05d   ; la figura 0x8C en su sitio
	ld e,(ix+003h)		;b05f   ; lee la y del enemigo
	ld d,(ix+005h)		;b062   ; lee la x del enemigo
	jp 0709ah		;b065   ; p01:crea_una_figura: CREA UNA FIGURA: el tipo C en DE
L_B068:
	ld (ix+00bh),009h		;b068   ; AL CREAR HUMPEDMAN: cuadro 9, 0x0C cuadros, y apunta su sitio en ix+0x14-0x17
	ld (ix+012h),000h		;b06c   ; los saltos = 0x00
	ld (ix+013h),00ch		;b070   ; la espera o el punto del salto = 0x0C
	ld a,(ix+002h)		;b074
	ld (ix+014h),a		;b077   ; guarda la y en el suelo (baja)
	ld a,(ix+003h)		;b07a   ; lee la y del enemigo
	ld (ix+015h),a		;b07d   ; guarda la y en el suelo
	ld a,(ix+004h)		;b080
	ld (ix+016h),a		;b083   ; guarda la x en el suelo (baja)
	ld a,(ix+005h)		;b086   ; lee la x del enemigo
	ld (ix+017h),a		;b089   ; guarda la x en el suelo
	ret			;b08c

; ----------------------------------------------------------------------
; DATOS codigo_B08D: codigo que no llama nadie: sube 0xDFA3 y pone en ix+0x1A
;   un byte de su tabla de 8 (0xB09F)
;   0xb08d..0xb0a7  (26 bytes)
DATA_codigo_B08D:
	defb 021h,0a3h,0dfh,034h,07eh,0e6h,007h,021h,09fh,0b0h,0cdh,055h,042h,07eh,0ddh,077h	; b08d  !..4~..!...UB~.w
	defb 01ah,0c9h,000h,004h,008h,00ch,010h,014h,018h,01ch	; b09d  ..........

; ======================================================================
; CODIGO 0xb0a7..0xb0ad  (6 bytes)
; ======================================================================


L_B0A7:
	ld a,(ix+001h)		;b0a7   ; ENTRADA de HUMPEDMAN (tipo 0x30), con su ficha en IX
	call 0425fh		;b0aa   ; p00:despacha: Salta a la entrada A de la tabla de palabras que va pegada detras del `call`.

; ----------------------------------------------------------------------
; DATOS tabla_B0AD: 10 destinos del despachador de 0x425F (call en p03:B0AA):
;   0xB0C1, 0xB0C1, 0xB0C5, 0xB0CC, 0xB0D3, 0xB0DA, 0xB0E1, 0xB0E8 ...; lo
;   leen p03:B0AA (20 bytes)
;   0xb0ad..0xb0c1  (20 bytes)
DATA_tabla_B0AD:
	defb 0c1h,0b0h	; b0ad
	defb 0c1h,0b0h	; b0af
	defb 0c5h,0b0h	; b0b1
	defb 0cch,0b0h	; b0b3
	defb 0d3h,0b0h	; b0b5
	defb 0dah,0b0h	; b0b7
	defb 0e1h,0b0h	; b0b9
	defb 0e8h,0b0h	; b0bb
	defb 0efh,0b0h	; b0bd
	defb 0f6h,0b0h	; b0bf

; ======================================================================
; CODIGO 0xb0c1..0xb11d  (92 bytes)
; ======================================================================


L_B0C1:
	inc (ix+001h)		;b0c1   ; al paso 1 (el de las ranas, p03:A860)
	ret			;b0c4
L_B0C5:
	ld (ix+00bh),009h		;b0c5   ; los pasos de las ranas (p03:A88C y siguientes), con sus cuadros
	jp L_A890		;b0c9
L_B0CC:
	ld (ix+00bh),00dh		;b0cc   ; HUMPEDMAN, paso 3
	jp L_A8C4		;b0d0
L_B0D3:
	ld (ix+00bh),00fh		;b0d3   ; HUMPEDMAN, paso 4
	jp L_A8F8		;b0d7
L_B0DA:
	ld (ix+00bh),00bh		;b0da   ; HUMPEDMAN, paso 5
	jp L_A92C		;b0de
L_B0E1:
	ld (ix+00bh),00ah		;b0e1   ; HUMPEDMAN, paso 6
	jp L_A95F		;b0e5
L_B0E8:
	ld (ix+00bh),00eh		;b0e8   ; HUMPEDMAN, paso 7
	jp L_A9A1		;b0ec
L_B0EF:
	ld (ix+00bh),010h		;b0ef   ; HUMPEDMAN, paso 8
	jp L_A9E3		;b0f3
L_B0F6:
	ld (ix+00bh),00ch		;b0f6   ; HUMPEDMAN, paso 9
	jp L_AA25		;b0fa
L_B0FD:
	ld hl,0df95h		;b0fd   ; AL CREAR PIGWORM: cuadro 0, y su punto de partida en el guion (ix+0x15) de p03:B11D segun cuantos van (0xDF95)...
L_B100:
	ld (ix+00bh),000h		;b100   ; el cuadro del enemigo = 0x00
L_B104:
	ld (ix+014h),000h		;b104
	inc (hl)			;b108
	ld a,(hl)			;b109
	and 007h		;b10a
	ld hl,0b11dh		;b10c   ; byte_15_B11D: 8 bytes: lo que p03:B10C pone en ix+0x15 segun (HL) & 7
	call 04255h		;b10f   ; p00:hl_mas_a
	ld a,(hl)			;b112
	ld (ix+015h),a		;b113
	rra			;b116   ; ...y la espera, ese valor / 4 + 1
	rra			;b117
	inc a			;b118
	ld (ix+013h),a		;b119
	ret			;b11c

; ----------------------------------------------------------------------
; DATOS byte_15_B11D: 8 bytes: lo que p03:B10C pone en ix+0x15 segun (HL) & 7
;   0xb11d..0xb125  (8 bytes)
DATA_byte_15_B11D:
	defb 000h,004h,008h,00ch,010h,014h,018h,01ch	; b11d  ........

; ======================================================================
; CODIGO 0xb125..0xb12b  (6 bytes)
; ======================================================================


L_B125:
	ld a,(ix+001h)		;b125   ; ENTRADA de PIGWORM (tipo 0x01), con su ficha en IX
	call 0425fh		;b128   ; p00:despacha: Salta a la entrada A de la tabla de palabras que va pegada detras del `call`.

; ----------------------------------------------------------------------
; DATOS tabla_B12B: 5 destinos del despachador de 0x425F (call en p03:B128):
;   0xB135, 0xB143, 0xB15F, 0xB163, 0xB167; lo leen p03:B128 (10 bytes)
;   0xb12b..0xb135  (10 bytes)
DATA_tabla_B12B:
	defb 035h,0b1h	; b12b
	defb 043h,0b1h	; b12d
	defb 05fh,0b1h	; b12f
	defb 063h,0b1h	; b131
	defb 067h,0b1h	; b133

; ======================================================================
; CODIGO 0xb135..0xb1fb  (198 bytes)
; ======================================================================


L_B135:
	dec (ix+013h)		;b135   ; PASO 0: tras ix+0x13 cuadros, 8 pasos y a elegir rumbo
	ret nz			;b138
	ld (ix+012h),008h		;b139
	ld (ix+013h),001h		;b13d
	jr L_B16B		;b141
L_B143:
	ld c,002h		;b143   ; PASOS 1-4, abajo, izquierda, derecha y arriba (C el lado): cada ix+0x13 cuadros...
L_B145:
	ld a,(ix+013h)		;b145
	and a			;b148
	jr z,L_B14F		;b149
	dec (ix+013h)		;b14b
	ret			;b14e
L_B14F:
	call gusanos_cuadro		;b14f   ; ...su cuadro y un paso; a los 8, espera 8 cuadros y elige rumbo
	call 06913h		;b152   ; p01:mueve_la_ficha: un paso: la y (ix+2, ix+3) mas la velocidad vertical...
	dec (ix+012h)		;b155
	ret nz			;b158
	ld (ix+013h),008h		;b159
	jr L_B16B		;b15d
L_B15F:
	ld c,003h		;b15f   ; PIGWORM, paso 2
	jr L_B145		;b161
L_B163:
	ld c,001h		;b163   ; PIGWORM, paso 3
	jr L_B145		;b165
L_B167:
	ld c,000h		;b167   ; PIGWORM, paso 4
	jr L_B145		;b169
L_B16B:
	ld a,0ffh		;b16b   ; ELIGE RUMBO, con el guion de 32 codigos de p03:B20F (ix+0x15)...
L_B16D:
	ld (0e800h),a		;b16d
	inc (ix+015h)		;b170
	ld a,(ix+015h)		;b173
	and 01fh		;b176
	ld hl,0b20fh		;b178
	call 04255h		;b17b   ; p00:hl_mas_a
	ld a,(hl)			;b17e
	and a			;b17f
	jr z,L_B190		;b180
	dec a			;b182
	jr z,L_B1AC		;b183
	dec a			;b185
	jr z,L_B1BE		;b186
	ld a,(ix+001h)		;b188   ; lee el paso en que va
	and a			;b18b
	jr nz,L_B1C6		;b18c
	jr L_B1AC		;b18e
L_B190:
	ld a,(0c107h)		;b190   ; ...0: si el jugador pulsa alguna tecla, al reves de hacia donde mira Mitchel (p03:B1FB)...
	and 00fh		;b193
	jr z,L_B1AC		;b195
	ld a,(0c306h)		;b197   ; lee hacia donde mira Mitchel (0 arriba, 1 abajo, 2 izquierda, 3 derecha)
	ld hl,0b1fbh		;b19a   ; tablas_B1FB: 0xB1FB, 0xB1FF y 0xB203 segun la direccion de Mitchel (p03:B19A, B1CA, B1DB) y 32 codigos desde 0xB20F segun ix+0x15 & 31 (p03:B178)
	call 04255h		;b19d   ; p00:hl_mas_a
	ld a,(hl)			;b1a0
	ld b,a			;b1a1
	push bc			;b1a2
	ld e,000h		;b1a3
	call 07303h		;b1a5   ; p01:choca_la_ficha: desde la ficha: acarreo si hacia la direccion A no se puede pasar
	pop bc			;b1a8
	ld a,b			;b1a9
	jr nc,L_B1DB		;b1aa
L_B1AC:
	ld a,r		;b1ac   ; ...1: hacia un punto al azar...
	rla			;b1ae
	rla			;b1af
	ld e,a			;b1b0
	ld a,r		;b1b1
	rla			;b1b3
	rla			;b1b4
	ld d,a			;b1b5
	ld bc,00200h		;b1b6
	call 0729eh		;b1b9   ; p01:apunta_a_mitchel: APUNTA: la velocidad C...
	jr L_B1DB		;b1bc
L_B1BE:
	ld bc,00000h		;b1be   ; ...2: hacia Mitchel...
	call 0729eh		;b1c1   ; p01:apunta_a_mitchel: APUNTA: la velocidad C...
	jr L_B1DB		;b1c4
L_B1C6:
	ld hl,0e800h		;b1c6   ; ...0xFF: recto (p03:B1FF, desde el paso + 0xE800), o al azar si choca
	add a,(hl)			;b1c9
	ld hl,0b1ffh		;b1ca
	call 04255h		;b1cd   ; p00:hl_mas_a
	ld a,(hl)			;b1d0
	push af			;b1d1
	ld e,000h		;b1d2
	call 07303h		;b1d4   ; p01:choca_la_ficha: desde la ficha: acarreo si hacia la direccion A no se puede pasar
	pop bc			;b1d7
	jr c,L_B1AC		;b1d8
	ld a,b			;b1da
L_B1DB:
	ld hl,0b203h		;b1db   ; de p03:B203 [vy][vx][paso] de la direccion, y 8 pasos
	ld c,a			;b1de
	add a,a			;b1df
	add a,c			;b1e0
	call 04255h		;b1e1   ; p00:hl_mas_a
	ld e,000h		;b1e4
	ld d,(hl)			;b1e6
	call 04311h		;b1e7   ; p00:pon_velocidad_vertical: DE: la velocidad vertical de la ficha (ix+7, ix+8)
	inc hl			;b1ea
	ld e,000h		;b1eb
	ld d,(hl)			;b1ed
	call 04318h		;b1ee   ; p00:pon_velocidad_horizontal: DE: la velocidad horizontal (ix+9, ix+0x0A)
	inc hl			;b1f1
	ld a,(hl)			;b1f2
	ld (ix+001h),a		;b1f3   ; guarda el paso en que va
	ld (ix+012h),008h		;b1f6
	ret			;b1fa

; ----------------------------------------------------------------------
; DATOS tablas_B1FB: 0xB1FB, 0xB1FF y 0xB203 segun la direccion de Mitchel
;   (p03:B19A, B1CA, B1DB) y 32 codigos desde 0xB20F segun ix+0x15 & 31
;   (p03:B178)
;   0xb1fb..0xb22f  (52 bytes)
DATA_tablas_B1FB:
	defb 002h,000h,001h,003h,002h,003h,001h,000h,0ffh,000h,004h,000h,001h,003h,001h,000h	; b1fb  ................
	defb 001h,000h,0ffh,002h,001h,0ffh,0ffh,0ffh,001h,0ffh,0ffh,002h,0ffh,0ffh,001h,0ffh	; b20b  ................
	defb 0ffh,0ffh,001h,0ffh,0ffh,0ffh,000h,0ffh,0ffh,002h,0ffh,0ffh,001h,0ffh,0ffh,0ffh	; b21b  ................
	defb 001h,0ffh,0ffh,0ffh	; b22b

; ======================================================================
; CODIGO 0xb22f..0xb23e  (15 bytes)
; ======================================================================


gusanos_cuadro:
	ld a,(ix+012h)		;b22f   ; el cuadro de p03:B23E segun el paso que va dando (ix+0x12)
	dec a			;b232
	ld hl,0b23eh		;b233   ; cuadros_B23E: 9 bytes: el cuadro (ix+0x0B) segun ix+0x12 - 1 (p03:B233)
	call 04255h		;b236   ; p00:hl_mas_a
	ld a,(hl)			;b239
	ld (ix+00bh),a		;b23a   ; guarda el cuadro del enemigo
	ret			;b23d

; ----------------------------------------------------------------------
; DATOS cuadros_B23E: 9 bytes: el cuadro (ix+0x0B) segun ix+0x12 - 1
;   (p03:B233)
;   0xb23e..0xb247  (9 bytes)
DATA_cuadros_B23E:
	defb 000h,000h,001h,001h,002h,002h,001h,001h,000h	; b23e  .........

; ======================================================================
; CODIGO 0xb247..0xb257  (16 bytes)
; ======================================================================


L_B247:
	ld (ix+00bh),026h		;b247   ; AL CREAR BUCKLER: cuadro 0x26, con 0xDF96
	ld hl,0df96h		;b24b
	jp L_B104		;b24e
L_B251:
	ld a,(ix+001h)		;b251   ; ENTRADA de BUCKLER (tipo 0x44), con su ficha en IX
	call 0425fh		;b254   ; p00:despacha: Salta a la entrada A de la tabla de palabras que va pegada detras del `call`.

; ----------------------------------------------------------------------
; DATOS tabla_B257: 9 destinos del despachador de 0x425F (call en p03:B254):
;   0xB135, 0xB269, 0xB27F, 0xB28B, 0xB297, 0xB2A3, 0xB2C3, 0xB2CC ...; lo
;   leen p03:B254 (18 bytes)
;   0xb257..0xb269  (18 bytes)
DATA_tabla_B257:
	defb 035h,0b1h	; b257
	defb 069h,0b2h	; b259
	defb 07fh,0b2h	; b25b
	defb 08bh,0b2h	; b25d
	defb 097h,0b2h	; b25f
	defb 0a3h,0b2h	; b261
	defb 0c3h,0b2h	; b263
	defb 0cch,0b2h	; b265
	defb 0d5h,0b2h	; b267

; ======================================================================
; CODIGO 0xb269..0xb2e9  (128 bytes)
; ======================================================================


L_B269:
	ld (ix+07fh),002h		;b269   ; PASOS 1-4, QUIETO mirando abajo (cuadro 0x26), a la izquierda (0x2C), a la derecha (0x28) o arriba (0x27), con el lado en ix+0x7F...
	ld (ix+00bh),026h		;b26d   ; el cuadro del enemigo = 0x26
	ld a,005h		;b271
L_B273:
	dec (ix+012h)		;b273   ; ...ix+0x12 cuadros; luego en marcha por ese lado (pasos 5-8), 0x30 cuadros
	ret nz			;b276
	ld (ix+001h),a		;b277   ; guarda el paso en que va
	ld (ix+012h),030h		;b27a   ; los pasos = 0x30
	ret			;b27e
L_B27F:
	ld (ix+07fh),003h		;b27f   ; BUCKLER, paso 2
	ld (ix+00bh),02ch		;b283   ; el cuadro del enemigo = 0x2C
	ld a,006h		;b287
	jr L_B273		;b289
L_B28B:
	ld (ix+07fh),001h		;b28b   ; BUCKLER, paso 3
	ld (ix+00bh),028h		;b28f   ; el cuadro del enemigo = 0x28
	ld a,007h		;b293
	jr L_B273		;b295
L_B297:
	ld (ix+07fh),000h		;b297   ; BUCKLER, paso 4
	ld (ix+00bh),027h		;b29b   ; el cuadro del enemigo = 0x27
	ld a,008h		;b29f
	jr L_B273		;b2a1
L_B2A3:
	ld c,000h		;b2a3   ; PASOS 5-8, EN MARCHA: su cuadro y un paso cada cuadro...
	call buckler_cuadros		;b2a5   ; buckler_cuadros: los cuadros de p03:B2E9
	ld c,002h		;b2a8
L_B2AA:
	call 06913h		;b2aa   ; p01:mueve_la_ficha: un paso: la y (ix+2, ix+3) mas la velocidad vertical...
	dec (ix+012h)		;b2ad   ; ...y al acabar o chocar (mirado cada 8), elige rumbo (con 0xE800 = -5: pasos 5-8)
	jp z,L_B2DE		;b2b0
	ld a,(ix+012h)		;b2b3   ; lee los pasos
	and 007h		;b2b6
	ret nz			;b2b8
	ld e,000h		;b2b9
	ld a,c			;b2bb
	call 07303h		;b2bc   ; p01:choca_la_ficha: desde la ficha: acarreo si hacia la direccion A no se puede pasar
	ret nc			;b2bf
	jp L_B2DE		;b2c0
L_B2C3:
	ld c,001h		;b2c3   ; BUCKLER, paso 6
	call buckler_cuadros		;b2c5   ; buckler_cuadros: los cuadros de p03:B2E9
	ld c,003h		;b2c8
	jr L_B2AA		;b2ca
L_B2CC:
	ld c,002h		;b2cc   ; BUCKLER, paso 7
	call buckler_cuadros		;b2ce   ; buckler_cuadros: los cuadros de p03:B2E9
	ld c,001h		;b2d1
	jr L_B2AA		;b2d3
L_B2D5:
	ld c,003h		;b2d5   ; BUCKLER, paso 8
	call buckler_cuadros		;b2d7   ; buckler_cuadros: los cuadros de p03:B2E9
	ld c,000h		;b2da
	jr L_B2AA		;b2dc
L_B2DE:
	ld a,0fbh		;b2de
	jp L_B16D		;b2e0
buckler_cuadros:
	ld hl,0b2e9h		;b2e3   ; los cuadros de p03:B2E9
	jp L_B34B		;b2e6

; ----------------------------------------------------------------------
; DATOS cuadros_B2E9: 8 cuadros que p03:B34B elige segun el bit 3 de ix+0x0C y
;   C (entrada p03:B2E3)
;   0xb2e9..0xb2f1  (8 bytes)
DATA_cuadros_B2E9:
	defb 026h,02ah,02ch,02dh,028h,029h,027h,02bh	; b2e9  &*,-()'+

; ======================================================================
; CODIGO 0xb2f1..0xb301  (16 bytes)
; ======================================================================


L_B2F1:
	ld (ix+00bh),000h		;b2f1   ; AL CREAR GRASSOGRE: cuadro 0, con 0xDF97
	ld hl,0df97h		;b2f5
	jp L_B104		;b2f8
L_B2FB:
	ld a,(ix+001h)		;b2fb   ; ENTRADA de GRASSOGRE (tipo 0x43), con su ficha en IX
	call 0425fh		;b2fe   ; p00:despacha: Salta a la entrada A de la tabla de palabras que va pegada detras del `call`.

; ----------------------------------------------------------------------
; DATOS tabla_B301: 5 destinos del despachador de 0x425F (call en p03:B2FE):
;   0xB135, 0xB30B, 0xB32B, 0xB334, 0xB33E; lo leen p03:B2FE (10 bytes)
;   0xb301..0xb30b  (10 bytes)
DATA_tabla_B301:
	defb 035h,0b1h	; b301
	defb 00bh,0b3h	; b303
	defb 02bh,0b3h	; b305
	defb 034h,0b3h	; b307
	defb 03eh,0b3h	; b309

; ======================================================================
; CODIGO 0xb30b..0xb35f  (84 bytes)
; ======================================================================


L_B30B:
	ld c,000h		;b30b   ; PASOS 1-4, EN MARCHA abajo, izquierda, derecha o arriba: su cuadro y un paso cada cuadro...
	call grassogre_cuadros		;b30d   ; grassogre_cuadros: los cuadros de p03:B35F...
	ld c,002h		;b310
L_B312:
	call 06913h		;b312   ; p01:mueve_la_ficha: un paso: la y (ix+2, ix+3) mas la velocidad vertical...
	dec (ix+012h)		;b315   ; ...y al acabar o chocar (mirado cada 8), elige rumbo
	jp z,L_B16B		;b318
	ld a,(ix+012h)		;b31b   ; lee los pasos
	and 007h		;b31e
	ret nz			;b320
	ld e,000h		;b321
	ld a,c			;b323
	call 07303h		;b324   ; p01:choca_la_ficha: desde la ficha: acarreo si hacia la direccion A no se puede pasar
	ret nc			;b327
	jp L_B16B		;b328
L_B32B:
	ld c,001h		;b32b   ; GRASSOGRE, paso 2
	call grassogre_cuadros		;b32d   ; grassogre_cuadros: los cuadros de p03:B35F...
	ld c,003h		;b330
	jr L_B312		;b332
L_B334:
	ld c,002h		;b334   ; GRASSOGRE, paso 3
	call grassogre_cuadros		;b336   ; grassogre_cuadros: los cuadros de p03:B35F...
	ld c,001h		;b339
	jp L_B312		;b33b
L_B33E:
	ld c,003h		;b33e   ; GRASSOGRE, paso 4
	call grassogre_cuadros		;b340   ; grassogre_cuadros: los cuadros de p03:B35F...
	ld c,000h		;b343
	jp L_B312		;b345
grassogre_cuadros:
	ld hl,0b35fh		;b348   ; los cuadros de p03:B35F...
L_B34B:
	bit 3,(ix+00ch)		;b34b   ; ...el de la direccion C (C*2) y el siguiente, alternando cada 8 cuadros
	ld b,000h		;b34f
	jr nz,L_B354		;b351
	inc b			;b353
L_B354:
	ld a,c			;b354
	add a,a			;b355
	add a,b			;b356
	call 04255h		;b357   ; p00:hl_mas_a
	ld a,(hl)			;b35a
	ld (ix+00bh),a		;b35b   ; guarda el cuadro del enemigo
	ret			;b35e

; ----------------------------------------------------------------------
; DATOS cuadros_B35F: lo mismo para p03:B348
;   0xb35f..0xb367  (8 bytes)
DATA_cuadros_B35F:
	defb 000h,004h,002h,003h,006h,007h,001h,005h	; b35f  ........

; ======================================================================
; CODIGO 0xb367..0xb37e  (23 bytes)
; ======================================================================


L_B367:
	ld hl,0df98h		;b367   ; AL CREAR SLIPSLIME: cuadro 0, con 0xDF98
	jp L_B100		;b36a
L_B36D:
	ld a,(ix+01eh)		;b36d   ; SLIPSLIME (y WOODWORM): si toca a Mitchel (bit 0 de ix+0x1E), se le pega (paso 5)
	and 001h		;b370
	jr z,L_B378		;b372
	ld (ix+001h),005h		;b374   ; el paso en que va = 0x05
L_B378:
	ld a,(ix+001h)		;b378   ; lee el paso en que va
	call 0425fh		;b37b   ; p00:despacha: Salta a la entrada A de la tabla de palabras que va pegada detras del `call`.

; ----------------------------------------------------------------------
; DATOS tabla_B37E: 6 destinos del despachador de 0x425F (call en p03:B37B):
;   0xB135, 0xB143, 0xB15F, 0xB163, 0xB167, 0xB38A; lo leen p03:B37B (12
;   bytes)
;   0xb37e..0xb38a  (12 bytes)
DATA_tabla_B37E:
	defb 035h,0b1h	; b37e
	defb 043h,0b1h	; b380
	defb 05fh,0b1h	; b382
	defb 063h,0b1h	; b384
	defb 067h,0b1h	; b386
	defb 08ah,0b3h	; b388

; ======================================================================
; CODIGO 0xb38a..0xb4cb  (321 bytes)
; ======================================================================


L_B38A:
	ld hl,(0c302h)		;b38a   ; PEGADO: en el sitio de Mitchel (0xC302-0xC305, con los bajos)
	ld (ix+002h),l		;b38d
	ld (ix+003h),h		;b390   ; guarda la y del enemigo
	ld hl,(0c304h)		;b393
	ld (ix+004h),l		;b396
	ld (ix+005h),h		;b399   ; guarda la x del enemigo
	ret			;b39c
L_B39D:
	ld hl,0df99h		;b39d   ; AL CREAR WOODWORM: cuadro 0, con 0xDF99
	jp L_B100		;b3a0
L_B3A3:
	jp L_B36D		;b3a3   ; ENTRADA de WOODWORM (tipo 0x03), con su ficha en IX
L_B3A6:
	ld (ix+017h),040h		;b3a6   ; AL CREAR GRASSWORM: su caja (ix+0x17-0x1A: y 0x40-0x80, x 0x20-0x90), velocidad 3, vida 0x10, colores 1/0x44, 3 partes...
	ld (ix+018h),081h		;b3aa   ; la y maxima del centro = 0x81
	ld (ix+019h),020h		;b3ae   ; la x minima del centro = 0x20
	ld (ix+01ah),091h		;b3b2   ; la x maxima del centro = 0x91
	ld (ix+01bh),003h		;b3b6   ; la velocidad de la vuelta = 0x03
	ld a,010h		;b3ba
	ld (0e807h),a		;b3bc
	ld hl,04401h		;b3bf
	ld (0e805h),hl		;b3c2
	ld a,003h		;b3c5
L_B3C7:
	ld c,a			;b3c7   ; ...cuadro 0x11 la cabeza y 0x10 el cuerpo...
	ld (0e802h),a		;b3c8
	ld hl,01011h		;b3cb
	ld (0e803h),hl		;b3ce
L_B3D1:
	ld a,(0e803h)		;b3d1   ; ...LA CABEZA: su cuadro, 0xC0 en ix+0x12, su centro (ix+0x15 x, ix+0x16 y)...
	ld (ix+00bh),a		;b3d4   ; guarda el cuadro del enemigo
	ld (ix+012h),0c0h		;b3d7
	ld (ix+013h),000h		;b3db
	ld a,(ix+005h)		;b3df   ; lee la x del enemigo
	ld (ix+015h),a		;b3e2
	ld a,(ix+003h)		;b3e5   ; lee la y del enemigo
	ld (ix+016h),a		;b3e8
	ld a,(0e802h)		;b3eb
	ld (ix+01ch),a		;b3ee   ; guarda cuantos quedan de su grupo
	ld hl,0dd00h		;b3f1   ; ...y el rastro de 0xDD00 (128 sitios [y][x]) lleno con su sitio de ahora
	ld b,080h		;b3f4
	ld e,(ix+003h)		;b3f6   ; lee la y del enemigo
	ld d,(ix+005h)		;b3f9   ; lee la x del enemigo
L_B3FC:
	ld (hl),e			;b3fc   ; 128 veces [y][x]
	inc hl			;b3fd
	ld (hl),d			;b3fe
	inc hl			;b3ff
	djnz L_B3FC		;b400
	push ix		;b402   ; LAS PARTES, en las fichas siguientes: el mismo tipo en el paso 2, en su sitio, quietas...
	pop iy		;b404
	push iy		;b406
	pop hl			;b408
	ld a,002h		;b409   ; 0xE800 el hueco de sprite siguiente (desde 2), 0xE801 el numero de parte (desde 1)
	ld (0e800h),a		;b40b
	dec a			;b40e
	ld (0e801h),a		;b40f
	ld b,c			;b412   ; B = cuantas partes, C el retraso (0x40 menos cada vez)
	ld c,000h		;b413
	ld de,00080h		;b415
L_B418:
	ld a,c			;b418
	sub 040h		;b419
	ld c,a			;b41b
	add ix,de		;b41c
	ld a,(iy+000h)		;b41e
	ld (ix+000h),a		;b421   ; guarda el tipo del enemigo
	ld (ix+001h),002h		;b424   ; el paso en que va = 0x02
	ld a,(iy+002h)		;b428
	ld (ix+002h),a		;b42b
	ld a,(iy+003h)		;b42e
	ld (ix+003h),a		;b431   ; guarda la y del enemigo
	ld a,(iy+004h)		;b434
	ld (ix+004h),a		;b437
	ld a,(iy+005h)		;b43a
	ld (ix+005h),a		;b43d   ; guarda la x del enemigo
	xor a			;b440
	ld (ix+006h),a		;b441   ; guarda si se mueve
	ld (ix+00ch),a		;b444   ; guarda la cuenta de cuadros
	ld (ix+00eh),003h		;b447
	ld (ix+00fh),0ffh		;b44b   ; su hueco (su numero en la lista de la pantalla) = 0xFF
	ld (ix+010h),a		;b44f   ; guarda si sus sprites no se mueven
	ld (ix+011h),a		;b452   ; guarda si tiene el fondo guardado
	ld (ix+01dh),a		;b455
	ld (ix+01eh),a		;b458   ; guarda los toques (bit 0: toca a Mitchel; bit 1: le han dado)
	ld a,(0e804h)		;b45b   ; ...su cuadro, su vida, su retraso en el rastro (ix+0x13, 0x40 menos cada una), la cabeza en ix+0x14/15, su numero en ix+0x16...
	ld (ix+00bh),a		;b45e   ; guarda el cuadro del enemigo
	ld a,(0e807h)		;b461
	ld (ix+00dh),a		;b464   ; guarda la vida del enemigo (BCD)
	ld (ix+013h),c		;b467
	ld (ix+014h),l		;b46a
	ld (ix+015h),h		;b46d
	ld a,(0e801h)		;b470
	ld (ix+016h),a		;b473
	inc a			;b476
	ld (0e801h),a		;b477
	ld a,(0e802h)		;b47a
	ld (ix+01ch),a		;b47d   ; guarda cuantos quedan de su grupo
	ld (ix+020h),002h		;b480   ; ...2 sprites con sus colores, y sus huecos en la tabla de sprites (y 0xE1)
	ld a,(0e805h)		;b484
	ld (ix+025h),a		;b487
	ld a,(0e806h)		;b48a
	ld (ix+02ah),a		;b48d
	ld a,(0e800h)		;b490
	ld (ix+021h),a		;b493
	inc a			;b496
	ld (ix+026h),a		;b497
	inc a			;b49a
	ld (0e800h),a		;b49b
	push bc			;b49e
	push hl			;b49f
	ld b,002h		;b4a0
	ld c,(ix+021h)		;b4a2
L_B4A5:
	ld a,(0c132h)		;b4a5
	and a			;b4a8
	ld hl,0e618h		;b4a9
	jr z,L_B4B1		;b4ac
	ld hl,0e628h		;b4ae
L_B4B1:
	ld a,c			;b4b1   ; 4 bytes por sprite...
	add a,a			;b4b2
	add a,a			;b4b3
	call 04255h		;b4b4   ; p00:hl_mas_a
	ld (hl),0e1h		;b4b7   ; ...y = 0xE1: el hueco, ocupado sin verse
	ld c,(ix+026h)		;b4b9
	djnz L_B4A5		;b4bc
	pop hl			;b4be
	pop bc			;b4bf
	dec b			;b4c0   ; la parte siguiente
	jp nz,L_B418		;b4c1
	ret			;b4c4
L_B4C5:
	ld a,(ix+001h)		;b4c5   ; ENTRADA de GRASSWORM (tipo 0x12), con su ficha en IX
	call 0425fh		;b4c8   ; p00:despacha: Salta a la entrada A de la tabla de palabras que va pegada detras del `call`.

; ----------------------------------------------------------------------
; DATOS tabla_B4CB: 3 destinos del despachador de 0x425F (call en p03:B4C8):
;   0xB4D1, 0xB575, 0xB629; lo leen p03:B4C8 (6 bytes)
;   0xb4cb..0xb4d1  (6 bytes)
DATA_tabla_B4CB:
	defb 0d1h,0b4h	; b4cb
	defb 075h,0b5h	; b4cd
	defb 029h,0b6h	; b4cf

; ======================================================================
; CODIGO 0xb4d1..0xb659  (392 bytes)
; ======================================================================


L_B4D1:
	call gusanos_color		;b4d1   ; PASO 0 (la cabeza, vuelta de arriba): su cuadro...
L_B4D4:
	ld a,(ix+013h)		;b4d4   ; ...avanza en el rastro (ix+0x13, 0-0x7F)...
	inc a			;b4d7
	ld (ix+013h),a		;b4d8
	sub 080h		;b4db
	jr c,L_B4E3		;b4dd
	ld (ix+013h),000h		;b4df
L_B4E3:
	ld a,(ix+00ch)		;b4e3   ; ...uno de cada dos cuadros el centro se acerca a Mitchel, sin salir de la caja...
	rra			;b4e6
	jr c,L_B549		;b4e7
	ld a,(0c303h)		;b4e9   ; lee la Y de Mitchel
	ld c,(ix+016h)		;b4ec
	sub c			;b4ef
	jr z,L_B519		;b4f0
	jr nc,L_B507		;b4f2
	dec (ix+016h)		;b4f4
	ld a,(ix+016h)		;b4f7
	cp (ix+017h)		;b4fa   ; compara con la y minima del centro
	jr nc,L_B519		;b4fd
	ld a,(ix+017h)		;b4ff   ; lee la y minima del centro
	ld (ix+016h),a		;b502
	jr L_B519		;b505
L_B507:
	inc (ix+016h)		;b507   ; hacia abajo, sin llegar a ix+0x18
	ld a,(ix+016h)		;b50a
	cp (ix+018h)		;b50d   ; compara con la y maxima del centro
	jr c,L_B519		;b510
	ld a,(ix+018h)		;b512   ; lee la y maxima del centro
	dec a			;b515
	ld (ix+016h),a		;b516
L_B519:
	ld a,(0c305h)		;b519   ; la x del centro hacia Mitchel...
	ld c,(ix+015h)		;b51c
	sub c			;b51f
	jr z,L_B549		;b520
	jr nc,L_B537		;b522
	dec (ix+015h)		;b524   ; ...a la izquierda, sin bajar de ix+0x19
	ld a,(ix+015h)		;b527
	cp (ix+019h)		;b52a   ; compara con la x minima del centro
	jr nc,L_B549		;b52d
	ld a,(ix+019h)		;b52f   ; lee la x minima del centro
	ld (ix+015h),a		;b532
	jr L_B549		;b535
L_B537:
	inc (ix+015h)		;b537   ; hacia la derecha, sin llegar a ix+0x1A
	ld a,(ix+015h)		;b53a
	cp (ix+01ah)		;b53d   ; compara con la x maxima del centro
	jr c,L_B549		;b540
	ld a,(ix+01ah)		;b542   ; lee la x maxima del centro
	dec a			;b545
	ld (ix+015h),a		;b546
L_B549:
	ld a,(ix+016h)		;b549   ; ...da la vuelta alrededor del centro, 0x10 por encima, con la curva de p03:B737...
	sub 010h		;b54c
	ld (ix+014h),a		;b54e
	xor a			;b551
	ld (0e800h),a		;b552
	call gusanos_paso		;b555   ; gusanos_paso: LA VUELTA: con ix+0x12 (0-0xFF, sube ix+0x1B cada vez) y los 65 bytes de p03:B737...
	ld hl,0dd00h		;b558   ; ...apunta su sitio en el rastro...
	ld a,(ix+013h)		;b55b
	add a,a			;b55e
	call 04255h		;b55f   ; p00:hl_mas_a
	ld a,(ix+003h)		;b562   ; lee la y del enemigo
	ld (hl),a			;b565
	inc hl			;b566
	ld a,(ix+005h)		;b567   ; lee la x del enemigo
	ld (hl),a			;b56a
	ld a,(ix+012h)		;b56b   ; ...y al acabar la vuelta (ix+0x12 = 0xC0), la de abajo (paso 1)
	cp 0c0h		;b56e
	ret nz			;b570
	inc (ix+001h)		;b571   ; sube el paso en que va
	ret			;b574
L_B575:
	call gusanos_color		;b575   ; PASO 1 (vuelta de abajo): lo mismo, 0x10 por debajo del centro; al acabar, al paso 0
L_B578:
	ld a,(ix+013h)		;b578   ; el sitio en el rastro (0-0x7F)
	inc a			;b57b
	ld (ix+013h),a		;b57c
	sub 080h		;b57f
	jr c,L_B587		;b581
	ld (ix+013h),000h		;b583
L_B587:
	ld a,(ix+00ch)		;b587   ; lee la cuenta de cuadros
	rra			;b58a
	jr c,L_B5ED		;b58b
	ld a,(0c303h)		;b58d   ; lee la Y de Mitchel
	ld c,(ix+016h)		;b590
	sub c			;b593
	jr z,L_B5BD		;b594
	jr nc,L_B5AB		;b596
	dec (ix+016h)		;b598
	ld a,(ix+016h)		;b59b
	cp (ix+017h)		;b59e   ; compara con la y minima del centro
	jr nc,L_B5BD		;b5a1
	ld a,(ix+017h)		;b5a3   ; lee la y minima del centro
	ld (ix+016h),a		;b5a6
	jr L_B5BD		;b5a9
L_B5AB:
	inc (ix+016h)		;b5ab   ; hacia abajo, sin llegar a ix+0x18
	ld a,(ix+016h)		;b5ae
	cp (ix+018h)		;b5b1   ; compara con la y maxima del centro
	jr c,L_B5BD		;b5b4
	ld a,(ix+018h)		;b5b6   ; lee la y maxima del centro
	dec a			;b5b9
	ld (ix+016h),a		;b5ba
L_B5BD:
	ld a,(0c305h)		;b5bd   ; la x del centro hacia Mitchel...
	ld c,(ix+015h)		;b5c0
	sub c			;b5c3
	jr z,L_B5ED		;b5c4
	jr nc,L_B5DB		;b5c6
	dec (ix+015h)		;b5c8   ; ...a la izquierda, sin bajar de ix+0x19
	ld a,(ix+015h)		;b5cb
	cp (ix+019h)		;b5ce   ; compara con la x minima del centro
	jr nc,L_B5ED		;b5d1
	ld a,(ix+019h)		;b5d3   ; lee la x minima del centro
	ld (ix+015h),a		;b5d6
	jr L_B5ED		;b5d9
L_B5DB:
	inc (ix+015h)		;b5db   ; hacia la derecha, sin llegar a ix+0x1A
	ld a,(ix+015h)		;b5de
	cp (ix+01ah)		;b5e1   ; compara con la x maxima del centro
	jr c,L_B5ED		;b5e4
	ld a,(ix+01ah)		;b5e6   ; lee la x maxima del centro
	dec a			;b5e9
	ld (ix+015h),a		;b5ea
L_B5ED:
	ld a,(ix+016h)		;b5ed
	add a,010h		;b5f0
	ld (ix+014h),a		;b5f2
	ld a,001h		;b5f5
	ld (0e800h),a		;b5f7
	call gusanos_paso		;b5fa   ; gusanos_paso: LA VUELTA: con ix+0x12 (0-0xFF, sube ix+0x1B cada vez) y los 65 bytes de p03:B737...
	ld hl,0dd00h		;b5fd
	ld a,(ix+013h)		;b600
	add a,a			;b603
	call 04255h		;b604   ; p00:hl_mas_a
	ld a,(ix+003h)		;b607   ; lee la y del enemigo
	ld (hl),a			;b60a
	inc hl			;b60b
	ld a,(ix+005h)		;b60c   ; lee la x del enemigo
	ld (hl),a			;b60f
	ld a,(ix+012h)		;b610
	cp 0c0h		;b613
	ret nz			;b615
	dec (ix+001h)		;b616   ; baja el paso en que va
	ret			;b619
gusanos_color:
	ld a,(ix+00ch)		;b61a   ; el cuadro 0x11 o 0x12, cambiando cada 16 cuadros
	and 010h		;b61d
	ld a,011h		;b61f
	jr z,L_B625		;b621
	ld a,012h		;b623
L_B625:
	ld (ix+00bh),a		;b625   ; guarda el cuadro del enemigo
	ret			;b628
L_B629:
	ld l,(ix+014h)		;b629   ; PASO 2 (cada parte): donde estuvo la cabeza hace ix+0x13 (+ p03:B659 segun su numero) pasos del rastro
	ld h,(ix+015h)		;b62c
	ld a,013h		;b62f
	call 04255h		;b631   ; p00:hl_mas_a
	ld c,(hl)			;b634
	ld a,(ix+016h)		;b635
	dec a			;b638
	ld hl,0b659h		;b639   ; sumas_B659: 5 bytes que p03:B639 suma a C segun ix+0x16 - 1
	call 04255h		;b63c   ; p00:hl_mas_a
	ld a,(hl)			;b63f
	add a,c			;b640
	ld c,a			;b641
	sub 080h		;b642
	jr c,L_B647		;b644
	ld c,a			;b646
L_B647:
	ld hl,0dd00h		;b647
	ld a,c			;b64a
	add a,a			;b64b
	call 04255h		;b64c   ; p00:hl_mas_a
	ld a,(hl)			;b64f
	ld (ix+003h),a		;b650   ; guarda la y del enemigo
	inc hl			;b653
	ld a,(hl)			;b654
	ld (ix+005h),a		;b655   ; guarda la x del enemigo
	ret			;b658

; ----------------------------------------------------------------------
; DATOS sumas_B659: 5 bytes que p03:B639 suma a C segun ix+0x16 - 1
;   0xb659..0xb65e  (5 bytes)
DATA_sumas_B659:
	defb 078h,070h,068h,060h,058h	; b659

; ======================================================================
; CODIGO 0xb65e..0xb737  (217 bytes)
; ======================================================================


gusanos_paso:
	ld a,(ix+01bh)		;b65e   ; LA VUELTA: con ix+0x12 (0-0xFF, sube ix+0x1B cada vez) y los 65 bytes de p03:B737...
	ld d,a			;b661
	ld e,004h		;b662
	ld hl,0b737h		;b664   ; pasos_B737: 65 bytes que recorren p03:B664, p03:B6A7 y p03:B6F9 segun ix+0x12
	ld a,(ix+012h)		;b667   ; ...la x alrededor del centro, a un lado u otro segun el cuarto de vuelta...
	cp 040h		;b66a
	ld c,001h		;b66c
	jr c,L_B68B		;b66e
	cp 080h		;b670
	jr nc,L_B67C		;b672
	sub 080h		;b674
	neg		;b676
	ld c,000h		;b678
	jr L_B68B		;b67a
L_B67C:
	cp 0c0h		;b67c
	jr nc,L_B686		;b67e
	ld c,000h		;b680
	sub 080h		;b682
	jr L_B68B		;b684
L_B686:
	ld c,001h		;b686
	ld b,a			;b688
	xor a			;b689
	sub b			;b68a
L_B68B:
	call gusanos_de_la_tabla		;b68b   ; gusanos_de_la_tabla: A = el byte de la tabla >> E, con el signo de C en el acarreo
	jr c,L_B695		;b68e
	add a,(ix+015h)		;b690
	jr L_B69A		;b693
L_B695:
	ld b,a			;b695
	ld a,(ix+015h)		;b696
	sub b			;b699
L_B69A:
	ld (ix+005h),a		;b69a   ; guarda la x del enemigo
	ld a,(0e800h)		;b69d   ; ...y la y, en un sentido (0xE800 = 0) o en el otro (p03:B6F6): un ocho
	and a			;b6a0
	jp nz,L_B6F6		;b6a1
	ld a,(ix+012h)		;b6a4
	ld hl,0b737h		;b6a7   ; pasos_B737: 65 bytes que recorren p03:B664, p03:B6A7 y p03:B6F9 segun ix+0x12
	cp 040h		;b6aa
	jr nc,L_B6B6		;b6ac
	ld c,001h		;b6ae
	ld b,a			;b6b0
	ld a,040h		;b6b1
	sub b			;b6b3
	jr L_B6D0		;b6b4
L_B6B6:
	cp 080h		;b6b6
	jr nc,L_B6C0		;b6b8
	ld c,001h		;b6ba
	sub 040h		;b6bc
	jr L_B6D0		;b6be
L_B6C0:
	cp 0c0h		;b6c0   ; tercer cuarto: 0xC0 - ix+0x12, hacia abajo
	jr nc,L_B6CC		;b6c2
	ld c,000h		;b6c4
	ld b,a			;b6c6
	ld a,0c0h		;b6c7
	sub b			;b6c9
	jr L_B6D0		;b6ca
L_B6CC:
	ld c,000h		;b6cc
	sub 0c0h		;b6ce
L_B6D0:
	call gusanos_de_la_tabla		;b6d0   ; gusanos_de_la_tabla: A = el byte de la tabla >> E, con el signo de C en el acarreo
	jr c,L_B6DA		;b6d3
	add a,(ix+014h)		;b6d5
	jr L_B6DF		;b6d8
L_B6DA:
	ld b,a			;b6da
	ld a,(ix+014h)		;b6db
	sub b			;b6de
L_B6DF:
	ld (ix+003h),a		;b6df   ; guarda la y del enemigo
L_B6E2:
	ld a,(ix+012h)		;b6e2
	add a,d			;b6e5
	ld (ix+012h),a		;b6e6
	ret			;b6e9
gusanos_de_la_tabla:
	call 04255h		;b6ea   ; A = el byte de la tabla >> E, con el signo de C en el acarreo
	ld a,(hl)			;b6ed
	ld b,e			;b6ee
L_B6EF:
	srl a		;b6ef
	djnz L_B6EF		;b6f1
	rr c		;b6f3
	ret			;b6f5
L_B6F6:
	ld a,(ix+012h)		;b6f6
	ld hl,0b737h		;b6f9   ; pasos_B737: 65 bytes que recorren p03:B664, p03:B6A7 y p03:B6F9 segun ix+0x12
	cp 040h		;b6fc
	jr nc,L_B708		;b6fe
	ld c,000h		;b700
	ld b,a			;b702
	ld a,040h		;b703
	sub b			;b705
	jr L_B722		;b706
L_B708:
	cp 080h		;b708
	jr nc,L_B712		;b70a
	ld c,000h		;b70c
	sub 040h		;b70e
	jr L_B722		;b710
L_B712:
	cp 0c0h		;b712   ; tercer cuarto: 0xC0 - ix+0x12, hacia arriba
	jr nc,L_B71E		;b714
	ld c,001h		;b716
	ld b,a			;b718
	ld a,0c0h		;b719
	sub b			;b71b
	jr L_B722		;b71c
L_B71E:
	ld c,001h		;b71e
	sub 0c0h		;b720
L_B722:
	call gusanos_de_la_tabla		;b722   ; gusanos_de_la_tabla: A = el byte de la tabla >> E, con el signo de C en el acarreo
	jr c,L_B72C		;b725
	add a,(ix+014h)		;b727
	jr L_B731		;b72a
L_B72C:
	ld b,a			;b72c
	ld a,(ix+014h)		;b72d
	sub b			;b730
L_B731:
	ld (ix+003h),a		;b731   ; guarda la y del enemigo
	jp L_B6E2		;b734

; ----------------------------------------------------------------------
; DATOS pasos_B737: 65 bytes que recorren p03:B664, p03:B6A7 y p03:B6F9 segun
;   ix+0x12
;   0xb737..0xb778  (65 bytes)
DATA_pasos_B737:
	defb 0ffh,0ffh,0ffh,0ffh,0feh,0feh,0fdh,0fch,0fbh,0f9h,0f8h,0f6h,0f4h,0f3h,0f1h,0eeh	; b737  ................
	defb 0ech,0eah,0e7h,0e4h,0e1h,0deh,0dch,0d9h,0d4h,0d1h,0cdh,0c9h,0c5h,0c1h,0bdh,0b9h	; b747  ................
	defb 0b5h,0b0h,0abh,0a7h,0a2h,09dh,098h,093h,08eh,088h,083h,07eh,078h,073h,069h,067h	; b757  ...........~xsig
	defb 061h,05ch,056h,050h,04ah,044h,03eh,038h,030h,02bh,025h,01fh,019h,012h,00ch,006h	; b767  a\VPJD>80+%.....
	defb 000h	; b777

; ======================================================================
; CODIGO 0xb778..0xb7d3  (91 bytes)
; ======================================================================


L_B778:
	ld (ix+017h),040h		;b778   ; AL CREAR MIREWORM: la misma caja, vida 0x20, colores 1/0x46, 5 partes
	ld (ix+018h),081h		;b77c   ; y hasta 0x80, x de 0x20 a 0x90, velocidad 3
	ld (ix+019h),020h		;b780   ; la x minima del centro = 0x20
	ld (ix+01ah),091h		;b784   ; la x maxima del centro = 0x91
	ld (ix+01bh),003h		;b788   ; la velocidad de la vuelta = 0x03
	ld a,020h		;b78c   ; vida 0x20
	ld (0e807h),a		;b78e
	ld hl,04601h		;b791
	ld (0e805h),hl		;b794
	ld a,005h		;b797
	jp L_B3C7		;b799
L_B79C:
	jp L_B4C5		;b79c   ; MIREWORM usa lo de GRASSWORM
L_B79F:
	ld (ix+017h),030h		;b79f   ; AL CREAR CENTIPEDE: caja y 0x30-0x70, x 0x30-0x90, vida 0x15, 3 partes, cuadros 0x10 y 0x12, colores 1/0x46
	ld (ix+018h),071h		;b7a3   ; la y maxima del centro = 0x71
	ld (ix+019h),030h		;b7a7   ; la x minima del centro = 0x30
	ld (ix+01ah),091h		;b7ab   ; la x maxima del centro = 0x91
	ld (ix+01bh),003h		;b7af   ; la velocidad de la vuelta = 0x03
	ld a,015h		;b7b3
	ld (0e807h),a		;b7b5
	ld a,003h		;b7b8
L_B7BA:
	ld c,a			;b7ba   ; cuantas partes (A) y los cuadros 0x10 (cabeza) y 0x12 (partes)
	ld (0e802h),a		;b7bb
	ld hl,01210h		;b7be
	ld (0e803h),hl		;b7c1
	ld hl,04601h		;b7c4
	ld (0e805h),hl		;b7c7
	jp L_B3D1		;b7ca
L_B7CD:
	ld a,(ix+001h)		;b7cd   ; ENTRADA de CENTIPEDE (tipo 0x13), con su ficha en IX
	call 0425fh		;b7d0   ; p00:despacha: Salta a la entrada A de la tabla de palabras que va pegada detras del `call`.

; ----------------------------------------------------------------------
; DATOS tabla_B7D3: 3 destinos del despachador de 0x425F (call en p03:B7D0):
;   0xB7D9, 0xB7DF, 0xB7E5; lo leen p03:B7D0 (6 bytes)
;   0xb7d3..0xb7d9  (6 bytes)
DATA_tabla_B7D3:
	defb 0d9h,0b7h	; b7d3
	defb 0dfh,0b7h	; b7d5
	defb 0e5h,0b7h	; b7d7

; ======================================================================
; CODIGO 0xb7d9..0xb829  (80 bytes)
; ======================================================================


L_B7D9:
	call centipede_color		;b7d9   ; PASO 0: su cuadro (0x10 o 0x11) y la vuelta de arriba de GRASSWORM
	jp L_B4D4		;b7dc
L_B7DF:
	call centipede_color		;b7df   ; PASO 1: la vuelta de abajo
	jp L_B578		;b7e2
L_B7E5:
	ld a,(ix+00ch)		;b7e5   ; PASO 2 (las partes): cuadro 0x12 o 0x13, cambiando cada 16, y siguen el rastro
	and 010h		;b7e8
	ld a,012h		;b7ea
	jr nz,L_B7F0		;b7ec
	ld a,013h		;b7ee
L_B7F0:
	ld (ix+00bh),a		;b7f0   ; guarda el cuadro del enemigo
	jp L_B629		;b7f3
centipede_color:
	ld a,(ix+00ch)		;b7f6   ; el cuadro 0x10 o 0x11, cambiando cada 16 cuadros
	and 010h		;b7f9
	ld a,010h		;b7fb
	jr nz,L_B801		;b7fd
	ld a,011h		;b7ff
L_B801:
	ld (ix+00bh),a		;b801   ; guarda el cuadro del enemigo
	ret			;b804
L_B805:
	ld (ix+017h),040h		;b805   ; AL CREAR CENTIPEDE (tipo 0x14): caja y 0x40-0x70, x 0x20-0x90, vida 0x20, 5 partes
	ld (ix+018h),071h		;b809   ; la y maxima del centro = 0x71
	ld (ix+019h),020h		;b80d   ; la x minima del centro = 0x20
	ld (ix+01ah),091h		;b811   ; la x maxima del centro = 0x91
	ld (ix+01bh),003h		;b815   ; la velocidad de la vuelta = 0x03
	ld a,020h		;b819
	ld (0e807h),a		;b81b
	ld a,005h		;b81e
	jp L_B7BA		;b820
L_B823:
	ld a,(ix+001h)		;b823   ; CENTIPEDE (0x14) usa los pasos del 0x13
	call 0425fh		;b826   ; p00:despacha: Salta a la entrada A de la tabla de palabras que va pegada detras del `call`.

; ----------------------------------------------------------------------
; DATOS tabla_B829: 3 destinos del despachador de 0x425F (call en p03:B826):
;   0xB82F, 0xB832, 0xB835; lo leen p03:B826 (6 bytes)
;   0xb829..0xb82f  (6 bytes)
DATA_tabla_B829:
	defb 02fh,0b8h	; b829
	defb 032h,0b8h	; b82b
	defb 035h,0b8h	; b82d

; ======================================================================
; CODIGO 0xb82f..0xb8b2  (131 bytes)
; ======================================================================


L_B82F:
	jp L_B7D9		;b82f   ; CENTIPEDE, paso 0
L_B832:
	jp L_B7DF		;b832   ; CENTIPEDE, paso 1
L_B835:
	jp L_B7E5		;b835   ; CENTIPEDE, paso 2
L_B838:
	ld a,020h		;b838   ; AL CREAR LA FIGURA 0x8C (la tira FIRETOTEM): hacia Mitchel a 0x20, cuadro 0x12, sonido 5
	call 0716fh		;b83a   ; p01:rumbo_hacia_mitchel: RUMBO HACIA MITCHEL a velocidad A: el angulo...
	call 08bdch		;b83d   ; p02:pon_velocidades: la ficha se mueve (ix+6), con DE de velocidad horizontal y HL de vertical
	ld (ix+00bh),012h		;b840   ; el cuadro del enemigo = 0x12
	ld a,005h		;b844
	jp 05488h		;b846   ; p00:sonido_si_juega: solo con el bit 6 de 0xC102 (la partida de verdad, no la demostracion)
L_B849:
	bit 2,(ix+00ch)		;b849   ; LA FIGURA 0x8C, cada cuadro: cuadro 0x12 o 0x13 cada 4 cuadros...
	ld a,012h		;b84d
	jr nz,L_B853		;b84f
	ld a,013h		;b851
L_B853:
	ld (ix+00bh),a		;b853   ; guarda el cuadro del enemigo
	ld a,(0c131h)		;b856   ; ...y desaparece al pasar de y 0x48 en el exterior, o por encima de 0x58 en un plano alterno
	and a			;b859
	jr nz,L_B864		;b85a
	ld a,(ix+003h)		;b85c   ; lee la y del enemigo
	cp 048h		;b85f
	ret c			;b861
	jr L_B86A		;b862
L_B864:
	ld a,(ix+003h)		;b864   ; lee la y del enemigo
	cp 058h		;b867
	ret nc			;b869
L_B86A:
	jp 0694bh		;b86a   ; p01:quita_la_ficha: se borra la ficha y sus sprites se dejan libres (y = 0xE0)
L_B86D:
	ld (ix+006h),001h		;b86d   ; AL CREAR LA FIGURA 0x85 (la tira DUNGROLL): en marcha, cuadro 0x0C, hacia abajo (con el cuadro 0x10 de DUNGROLL en 0xE806) o hacia arriba, a 1
	ld (ix+00bh),00ch		;b871   ; el cuadro del enemigo = 0x0C
	ld a,(0e806h)		;b875
	cp 010h		;b878
	ld de,00100h		;b87a
	jr z,L_B881		;b87d
	ld d,0ffh		;b87f
L_B881:
	call 04311h		;b881   ; p00:pon_velocidad_vertical: DE: la velocidad vertical de la ficha (ix+7, ix+8)
	ld d,000h		;b884
	jp 04318h		;b886   ; p00:pon_velocidad_horizontal: DE: la velocidad horizontal (ix+9, ix+0x0A)
L_B889:
	ld a,(ix+00ch)		;b889   ; LA FIGURA 0x85, cada cuadro: su cuadro de p03:B8B2 cada 4...
	and 00ch		;b88c
	rra			;b88e
	rra			;b88f
	ld hl,0b8b2h		;b890   ; cuadros_B8B2: 4 bytes: el cuadro (ix+0x0B) segun el paso (p03:B890)
	call 04255h		;b893   ; p00:hl_mas_a
	ld a,(hl)			;b896
	ld (ix+00bh),a		;b897   ; guarda el cuadro del enemigo
	ld a,(ix+003h)		;b89a   ; ...y alineada a 8, desaparece si choca por donde va
	and 007h		;b89d
	ret nz			;b89f
	ld e,000h		;b8a0
	ld a,(ix+008h)		;b8a2   ; lee la velocidad vertical
	rla			;b8a5
	ld a,e			;b8a6
	jr c,L_B8AB		;b8a7
	ld a,002h		;b8a9
L_B8AB:
	call 07303h		;b8ab   ; p01:choca_la_ficha: desde la ficha: acarreo si hacia la direccion A no se puede pasar
	ret nc			;b8ae
	jp 0694bh		;b8af   ; p01:quita_la_ficha: se borra la ficha y sus sprites se dejan libres (y = 0xE0)

; ----------------------------------------------------------------------
; DATOS cuadros_B8B2: 4 bytes: el cuadro (ix+0x0B) segun el paso (p03:B890)
;   0xb8b2..0xb8b6  (4 bytes)
DATA_cuadros_B8B2:
	defb 00ch,00dh,00eh,00fh	; b8b2

; ======================================================================
; CODIGO 0xb8b6..0xb90c  (86 bytes)
; ======================================================================


L_B8B6:
	ld a,040h		;b8b6   ; AL CREAR LA FIGURA 0x84 (la tira TWINMIRES): hacia Mitchel a 0x40, cuadro 8...
	call 0716fh		;b8b8   ; p01:rumbo_hacia_mitchel: RUMBO HACIA MITCHEL a velocidad A: el angulo...
	call para_y_cuadro_8		;b8bb   ; para_y_cuadro_8: ...en marcha, cuadro 8
	ld d,(ix+005h)		;b8be   ; ...y dos mas en su sitio, las 0x90 y 0x91
	ld e,(ix+003h)		;b8c1   ; lee la y del enemigo
	push de			;b8c4
	ld c,090h		;b8c5
	call 0709ah		;b8c7   ; p01:crea_una_figura: CREA UNA FIGURA: el tipo C en DE
	pop de			;b8ca
	ld c,091h		;b8cb
	jp 0709ah		;b8cd   ; p01:crea_una_figura: CREA UNA FIGURA: el tipo C en DE
L_B8D0:
	sub 005h		;b8d0   ; AL CREAR LA FIGURA 0x90: el rumbo del angulo A - 5...
	jr L_B8D6		;b8d2
L_B8D4:
	add a,00ah		;b8d4   ; AL CREAR LA FIGURA 0x91: el del angulo A + 0x0A...
L_B8D6:
	call 07186h		;b8d6   ; p01:rumbo_con_angulo: el rumbo del angulo A (0x40 un cuarto de vuelta): DE y HL las velocidades, del seno y el coseno de p01:725E
para_y_cuadro_8:
	call 08bdch		;b8d9   ; ...en marcha, cuadro 8
	ld (ix+00bh),008h		;b8dc   ; el cuadro del enemigo = 0x08
	ret			;b8e0
L_B8E1:
	ld a,(0c125h)		;b8e1   ; LA FIGURA 0x88 (el boomerang de BOOMERANG): en la pantalla 0x21, fuera por encima de y 0x58...
	cp 021h		;b8e4   ; la pantalla 0x21?
	jr nz,L_B8F0		;b8e6
	ld a,(ix+003h)		;b8e8   ; lee la y del enemigo
	cp 058h		;b8eb
	jp c,0694bh		;b8ed   ; p01:quita_la_ficha: se borra la ficha y sus sprites se dejan libres (y = 0xE0)
L_B8F0:
	dec (ix+017h)		;b8f0   ; ...a los 0x20 cuadros (ix+0x17) vuelve por donde vino (la direccion contraria, p03:B90C), una vez (ix+0x16)...
	jr nz,$+38		;b8f3
	ld a,(ix+016h)		;b8f5
	or a			;b8f8
	jr nz,$+27		;b8f9
	inc (ix+016h)		;b8fb
	ld (ix+017h),020h		;b8fe
	ld a,(ix+015h)		;b902
	add a,002h		;b905
	and 003h		;b907
	call 0425fh		;b909   ; p00:despacha: Salta a la entrada A de la tabla de palabras que va pegada detras del `call`.

; ----------------------------------------------------------------------
; DATOS tabla_B90C: 4 destinos del despachador de 0x425F (call en p03:B909):
;   0xB96B, 0xB961, 0xB94B, 0xB97F; lo leen p03:B909 (8 bytes)
;   0xb90c..0xb914  (8 bytes)
DATA_tabla_B90C:
	defb 06bh,0b9h	; b90c
	defb 061h,0b9h	; b90e
	defb 04bh,0b9h	; b910
	defb 07fh,0b9h	; b912

; ======================================================================
; CODIGO 0xb914..0xba06  (242 bytes)
; ======================================================================


L_B914:
	ld (ix+003h),0e1h		;b914   ; ...y a los 0x20 siguientes, fuera (y 0xE1)
	ret			;b918
L_B919:
	ld a,(ix+00ch)		;b919   ; mientras, el cuadro sube cada 4 cuadros, de 0x0C a 0x0F
	and 003h		;b91c
	ret nz			;b91e
	inc (ix+00bh)		;b91f   ; sube el cuadro del enemigo
	ld a,(ix+00bh)		;b922   ; lee el cuadro del enemigo
	cp 010h		;b925
	ret c			;b927
	ld (ix+00bh),00ch		;b928   ; el cuadro del enemigo = 0x0C
	ret			;b92c
L_B92D:
	inc (ix+006h)		;b92d   ; AL CREAR LAS FIGURAS 0x87 y 0x88 (las tiran POLEMAN y BOOMERANG): en marcha, cuadro 0x0C, 0x20 cuadros...
	ld (ix+00bh),00ch		;b930   ; el cuadro del enemigo = 0x0C
	ld (ix+017h),020h		;b934
	ld (ix+016h),000h		;b938
	ld hl,0c303h		;b93c   ; ...hacia Mitchel a 0x1A0 (1,6 puntos por cuadro): en vertical si no esta en su fila...
	ld a,(hl)			;b93f
	add a,004h		;b940
	and 0f8h		;b942
	cp (ix+003h)		;b944   ; compara con la y del enemigo
	jr z,L_B955		;b947
	jr c,L_B96B		;b949
L_B94B:
	ld a,002h		;b94b
	ld de,001a0h		;b94d
	call 04311h		;b950   ; p00:pon_velocidad_vertical: DE: la velocidad vertical de la ficha (ix+7, ix+8)
	jr L_B972		;b953
L_B955:
	inc hl			;b955   ; ...en horizontal si lo esta
	inc hl			;b956
	ld a,(hl)			;b957
	add a,004h		;b958
	and 0f8h		;b95a
	cp (ix+005h)		;b95c   ; compara con la x del enemigo
	jr c,L_B97F		;b95f
L_B961:
	ld a,001h		;b961
	ld de,001a0h		;b963
	call 04318h		;b966   ; p00:pon_velocidad_horizontal: DE: la velocidad horizontal (ix+9, ix+0x0A)
	jr L_B987		;b969
L_B96B:
	xor a			;b96b
	ld de,0fe60h		;b96c
	call 04311h		;b96f   ; p00:pon_velocidad_vertical: DE: la velocidad vertical de la ficha (ix+7, ix+8)
L_B972:
	ld (ix+014h),000h		;b972   ; ix+0x14 = 0 (vertical) o 1, ix+0x15 la direccion
	ld (ix+015h),a		;b976
	ld de,00000h		;b979
	jp 04318h		;b97c   ; p00:pon_velocidad_horizontal: DE: la velocidad horizontal (ix+9, ix+0x0A)
L_B97F:
	ld a,003h		;b97f
	ld de,0fe60h		;b981
	call 04318h		;b984   ; p00:pon_velocidad_horizontal: DE: la velocidad horizontal (ix+9, ix+0x0A)
L_B987:
	ld (ix+014h),001h		;b987
	ld (ix+015h),a		;b98b
	ld de,00000h		;b98e
	jp 04311h		;b991   ; p00:pon_velocidad_vertical: DE: la velocidad vertical de la ficha (ix+7, ix+8)
L_B994:
	ld d,008h		;b994   ; LA FIGURA 0x8A (la bola de BOWLER): si choca a 8 puntos, rebota...
	call 073ddh		;b996   ; p01:choca_o_da_la_vuelta: si a D puntos hay casilla que no se pasa, da la vuelta (p01:7423)
	ld a,(ix+017h)		;b999   ; ...y cuando se acaba ix+0x17, fuera...
	or a			;b99c
	jr nz,L_B9A3		;b99d
	ld (ix+003h),0e1h		;b99f   ; la y del enemigo = 0xE1
L_B9A3:
	ld a,(ix+00ch)		;b9a3   ; ...su cuadro, de 8 a 0x0B cada 4 cuadros
	and 003h		;b9a6
	ret nz			;b9a8
	inc (ix+00bh)		;b9a9   ; sube el cuadro del enemigo
	ld a,(ix+00bh)		;b9ac   ; lee el cuadro del enemigo
	cp 00ch		;b9af
	ret c			;b9b1
	ld (ix+00bh),008h		;b9b2   ; el cuadro del enemigo = 0x08
	ret			;b9b6
L_B9B7:
	ld a,008h		;b9b7   ; AL CREAR LA FIGURA 0x8A: cuadro 8, 8 en ix+0x17, en marcha a 2 hacia Mitchel en diagonal
	ld (ix+017h),a		;b9b9
	ld (ix+00bh),a		;b9bc   ; guarda el cuadro del enemigo
	ld (ix+006h),001h		;b9bf   ; si se mueve = 0x01
	ld hl,0c305h		;b9c3   ; apunta a la X de Mitchel
	ld a,(ix+005h)		;b9c6   ; lee la x del enemigo
	sub (hl)			;b9c9
	ld de,00200h		;b9ca
	jr c,L_B9D2		;b9cd
	ld de,0fe00h		;b9cf
L_B9D2:
	call 04318h		;b9d2   ; p00:pon_velocidad_horizontal: DE: la velocidad horizontal (ix+9, ix+0x0A)
	dec hl			;b9d5
	dec hl			;b9d6
	ld a,(ix+003h)		;b9d7   ; lee la y del enemigo
	sub (hl)			;b9da
	ld de,00200h		;b9db
	jr c,L_B9E3		;b9de
	ld de,0fe00h		;b9e0
L_B9E3:
	jp 04311h		;b9e3   ; p00:pon_velocidad_vertical: DE: la velocidad vertical de la ficha (ix+7, ix+8)

; ----------------------------------------------------------------------
; Al morir un enemigo: p03:BA66 + tipo - 1 da el numero de rutina (0xFF =
; nada) y p03:BA06 + 2*numero la rutina, con B = la pantalla (0xC125) y
; DE = donde estaba. Las que miran el bit 2 de 0xC103 (un contador que
; p01:65C2 sube cada cuadro) sueltan la mitad de las veces.
; ----------------------------------------------------------------------
lo_que_suelta:
	ld a,(ix+01fh)		;b9e6   ; LO QUE SUELTA AL MORIR: su tipo de antes (ix+0x1F) en p03:BA66 (0xFF: nada)...
	ld hl,0ba66h		;b9e9   ; p03:BA66: tipo -> rutina
	dec a			;b9ec
	call 04255h		;b9ed   ; p00:hl_mas_a
	ld a,(hl)			;b9f0
	inc a			;b9f1
	ret z			;b9f2
	ld a,(0c125h)		;b9f3   ; B = la pantalla
	ld b,a			;b9f6
	ld a,(hl)			;b9f7
	ld de,0ba06h		;b9f8   ; ...la rutina de p03:BA06, con B la pantalla y DE su sitio
	call 042ffh		;b9fb   ; p00:palabra_de_la_tabla: DE = la palabra A de la tabla de DE
	ex de,hl			;b9fe
	ld e,(ix+003h)		;b9ff   ; lee la y del enemigo
	ld d,(ix+005h)		;ba02   ; lee la x del enemigo
	jp (hl)			;ba05

; ----------------------------------------------------------------------
; DATOS rutinas_de_lo_que_sueltan: 48 palabras: la rutina que suelta el objeto
;   de cada enemigo (p03:BA66 usa las 47 primeras; la ultima, 0xBB18, no la
;   pide ningun tipo); p03:B9FB salta con jp (hl); lo leen p03:B9FB (96 bytes)
;   0xba06..0xba66  (96 bytes)
DATA_rutinas_de_lo_que_sueltan:
	defb 0abh,0bah	; ba06
	defb 0b4h,0bah	; ba08
	defb 0bbh,0bah	; ba0a
	defb 0c8h,0bah	; ba0c
	defb 0d3h,0bah	; ba0e
	defb 0deh,0bah	; ba10
	defb 0ech,0bah	; ba12
	defb 018h,0bbh	; ba14
	defb 0f8h,0bah	; ba16
	defb 006h,0bbh	; ba18
	defb 018h,0bbh	; ba1a
	defb 01fh,0bbh	; ba1c
	defb 037h,0bbh	; ba1e
	defb 04dh,0bbh	; ba20
	defb 059h,0bbh	; ba22
	defb 064h,0bbh	; ba24
	defb 077h,0bbh	; ba26
	defb 082h,0bbh	; ba28
	defb 08eh,0bbh	; ba2a
	defb 09ah,0bbh	; ba2c
	defb 0cdh,0bbh	; ba2e
	defb 0edh,0bbh	; ba30
	defb 004h,0bch	; ba32
	defb 00bh,0bch	; ba34
	defb 019h,0bch	; ba36
	defb 01eh,0bch	; ba38
	defb 029h,0bch	; ba3a
	defb 035h,0bch	; ba3c
	defb 048h,0bch	; ba3e
	defb 048h,0bch	; ba40
	defb 04fh,0bch	; ba42
	defb 05ah,0bch	; ba44
	defb 06dh,0bch	; ba46
	defb 07bh,0bch	; ba48
	defb 087h,0bch	; ba4a
	defb 08eh,0bch	; ba4c
	defb 099h,0bch	; ba4e
	defb 0a6h,0bch	; ba50
	defb 0b2h,0bch	; ba52
	defb 0bdh,0bch	; ba54
	defb 0c8h,0bch	; ba56
	defb 0d6h,0bch	; ba58
	defb 0b4h,0bah	; ba5a
	defb 0e2h,0bch	; ba5c
	defb 0f9h,0bch	; ba5e
	defb 000h,0bdh	; ba60
	defb 01fh,0bdh	; ba62
	defb 018h,0bbh	; ba64

; ----------------------------------------------------------------------
; DATOS lo_que_suelta_cada_enemigo: 69 bytes, uno por tipo de enemigo (el 69,
;   0xFF, es de un tipo 0x45 que no hay): el numero de rutina de p03:BA06
;   (0xFF = no suelta nada); p03:B9E6 con 0xBA66 + tipo - 1; lo leen p03:B9ED
;   (69 bytes)
;   0xba66..0xbaab  (69 bytes)
DATA_lo_que_suelta_cada_enemigo:
	defb 0ffh,0ffh,0ffh,000h,001h,0ffh,002h,0ffh,003h,004h,005h,006h,0ffh,0ffh,0ffh,008h	; ba66  ................
	defb 009h,00ah,00bh,00ch,00dh,0ffh,00eh,00fh,010h,011h,012h,013h,014h,015h,016h,017h	; ba76  ................
	defb 018h,019h,01ah,0ffh,01bh,01ch,01dh,01eh,01fh,020h,021h,022h,0ffh,007h,023h,0ffh	; ba86  ......... !"..#.
	defb 0ffh,024h,025h,026h,027h,0ffh,028h,029h,02ah,02bh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; ba96  .$%&'.()*+......
	defb 0ffh,02ch,02dh,02eh,0ffh	; baa6

; ======================================================================
; CODIGO 0xbaab..0xbd82  (727 bytes)
; ======================================================================


L_BAAB:
	push ix		;baab   ; LO QUE SUELTA CLUBMAN al morir
	ld b,049h		;baad   ; 49 piedras...
	call suelta_piedras		;baaf   ; suelta_piedras: el objeto 8 (piedras), B unidades
	pop ix		;bab2
L_BAB4:
	ld c,028h		;bab4   ; LO QUE SUELTAN MUDARMOR y REVOLVER: el objeto 0x28: el suceso 5 (se quita el decorado de ese tipo; el 8 en la pantalla 0x5D)
	ld b,000h		;bab6
	jp 07852h		;bab8   ; p01:pon_objeto: Pone el objeto C en la pantalla, en (E, D) redondeado a 8, con B
L_BABB:
	ld a,(0c103h)		;babb   ; LO QUE SUELTA POISNFROG: la mitad de las veces (bit 2 del contador de cuadros a 0)...
	and 004h		;babe
	ret nz			;bac0
	ld b,005h		;bac1   ; ...5 de oro
L_BAC3:
	ld c,026h		;bac3   ; el objeto 0x26, el oro: B (en BCD)
	jp 07852h		;bac5   ; p01:pon_objeto: Pone el objeto C en la pantalla, en (E, D) redondeado a 8, con B
L_BAC8:
	ld a,(0c103h)		;bac8   ; LO QUE SUELTA ROCKMAN: la mitad de las veces, 4 de oro
	and 004h		;bacb
	ret nz			;bacd
	ld b,004h		;bace
	jp L_BAC3		;bad0
L_BAD3:
	ld a,(0c103h)		;bad3   ; LO QUE SUELTA WILDBOAR: la mitad de las veces, 5 de oro
	and 004h		;bad6
	ret nz			;bad8
	ld b,005h		;bad9
	jp L_BAC3		;badb
L_BADE:
	push ix		;bade   ; LO QUE SUELTA REDSPIDER: ぱぴるす (0x1D) y el suceso 5
	ld c,01dh		;bae0   ; el objeto 0x1D, ぱぴるす
	ld b,000h		;bae2
	call 07852h		;bae4   ; p01:pon_objeto: Pone el objeto C en la pantalla, en (E, D) redondeado a 8, con B
	pop ix		;bae7
	jp L_BAB4		;bae9
L_BAEC:
	ld a,(0c362h)		;baec   ; LO QUE SUELTA BIGSPIDER: si no se lleva la llave de madera, きのかぎ (0x23)
	and a			;baef
	ret nz			;baf0
	ld c,023h		;baf1   ; el objeto 0x23, きのかぎ
	ld b,000h		;baf3
	jp 07852h		;baf5   ; p01:pon_objeto: Pone el objeto C en la pantalla, en (E, D) redondeado a 8, con B
L_BAF8:
	ld hl,0dfd1h		;baf8   ; LO QUE SUELTA BATT: cada 6 muertes (0xDFD1), una carne
	dec (hl)			;bafb
	ret nz			;bafc
	ld (hl),006h		;bafd
	ld b,001h		;baff
suelta_carne:
	ld c,015h		;bb01   ; el objeto 0x15 (carne), B unidades
	jp 07852h		;bb03   ; p01:pon_objeto: Pone el objeto C en la pantalla, en (E, D) redondeado a 8, con B
L_BB06:
	ld a,b			;bb06   ; LO QUE SUELTA RATT: en la pantalla 9, cada 3 muertes (0xDFD2), una やくそう (0x10)
	cp 009h		;bb07
	ret nz			;bb09
	ld hl,0dfd2h		;bb0a   ; apunta a las muertes que faltan para que RATT suelte やくそう
	dec (hl)			;bb0d
	ret nz			;bb0e
	ld (hl),003h		;bb0f
	ld b,001h		;bb11
L_BB13:
	ld c,010h		;bb13   ; el objeto 0x10, やくそう
	jp 07852h		;bb15   ; p01:pon_objeto: Pone el objeto C en la pantalla, en (E, D) redondeado a 8, con B
suelta_alguien_que_habla:
	ld c,025h		;bb18   ; LO QUE SUELTAN GRASSWORM y MIREWORM: el objeto 0x25: al tocarlo, la conversacion de la pantalla
	ld b,000h		;bb1a
	jp 07852h		;bb1c   ; p01:pon_objeto: Pone el objeto C en la pantalla, en (E, D) redondeado a 8, con B
L_BB1F:
	ld hl,0dfc0h		;bb1f   ; LO QUE SUELTA CENTIPEDE: uno de cada 4 (0xDFC0): el 1, 99 piedras; el 3, alguien que habla
	inc (hl)			;bb22
	ld a,(hl)			;bb23
	and 003h		;bb24
	dec a			;bb26
	jr z,L_BB30		;bb27
	dec a			;bb29
	ret z			;bb2a
	dec a			;bb2b
	ret nz			;bb2c
	jp suelta_alguien_que_habla		;bb2d   ; suelta_alguien_que_habla: LO QUE SUELTAN GRASSWORM y MIREWORM: el objeto 0x25: al tocarlo, la conversacion de la pantalla
L_BB30:
	ld b,099h		;bb30
suelta_piedras:
	ld c,008h		;bb32   ; el objeto 8 (piedras), B unidades
	jp 07852h		;bb34   ; p01:pon_objeto: Pone el objeto C en la pantalla, en (E, D) redondeado a 8, con B
L_BB37:
	ld hl,0dfc1h		;bb37   ; LO QUE SUELTA CENTIPEDE: lo mismo, con 0xDFC1
	inc (hl)			;bb3a
	ld a,(hl)			;bb3b
	and 003h		;bb3c
	dec a			;bb3e
	jr z,L_BB48		;bb3f
	dec a			;bb41
	ret z			;bb42
	dec a			;bb43
	ret nz			;bb44
	jp suelta_alguien_que_habla		;bb45   ; suelta_alguien_que_habla: LO QUE SUELTAN GRASSWORM y MIREWORM: el objeto 0x25: al tocarlo, la conversacion de la pantalla
L_BB48:
	ld b,099h		;bb48
	jp suelta_piedras		;bb4a   ; suelta_piedras: el objeto 8 (piedras), B unidades
L_BB4D:
	ld hl,0dfd3h		;bb4d   ; LO QUE SUELTA DUNGROLL: cada 5 muertes (0xDFD3), 99 piedras
	dec (hl)			;bb50
	ret nz			;bb51
	ld (hl),005h		;bb52
	ld b,099h		;bb54
	jp suelta_piedras		;bb56   ; suelta_piedras: el objeto 8 (piedras), B unidades
L_BB59:
	ld a,(0c103h)		;bb59   ; LO QUE SUELTA POLEMAN: la mitad de las veces, 5 de oro
	and 002h		;bb5c
	ret nz			;bb5e
	ld b,005h		;bb5f
	jp L_BAC3		;bb61
L_BB64:
	ld a,b			;bb64   ; LO QUE SUELTA BOOMERANG: en la pantalla 0x21 siempre; en las demas cada 5 muertes (0xDFD4)...
	cp 021h		;bb65
	jr z,L_BB70		;bb67
	ld hl,0dfd4h		;bb69   ; apunta a las muertes que faltan para que BOOMERANG suelte el boomerang
	dec (hl)			;bb6c
	ret nz			;bb6d
	ld (hl),005h		;bb6e
L_BB70:
	ld c,00ah		;bb70   ; ...un ぶーめらん (0x0A)
	ld b,001h		;bb72
	jp 07852h		;bb74   ; p01:pon_objeto: Pone el objeto C en la pantalla, en (E, D) redondeado a 8, con B
L_BB77:
	ld a,(0c103h)		;bb77   ; LO QUE SUELTA BLOWMIRE: la mitad de las veces, 5 de oro
	and 004h		;bb7a
	ret nz			;bb7c
	ld b,005h		;bb7d
	jp L_BAC3		;bb7f
L_BB82:
	ld hl,0dfc4h		;bb82   ; LO QUE SUELTA TWINMIRES: al acabar la cuenta de 0xDFC4 (una vez), el objeto 0x2B: el suceso 1
	dec (hl)			;bb85
	ret nz			;bb86
	ld c,02bh		;bb87
	ld b,000h		;bb89
	jp 07852h		;bb8b   ; p01:pon_objeto: Pone el objeto C en la pantalla, en (E, D) redondeado a 8, con B
L_BB8E:
	ld hl,0dfd5h		;bb8e   ; LO QUE SUELTA SEALOUSE: cada 16 muertes (0xDFD5), una やくそう
	dec (hl)			;bb91
	ret nz			;bb92
	ld (hl),010h		;bb93
	ld b,001h		;bb95
	jp L_BB13		;bb97
L_BB9A:
	ld a,b			;bb9a   ; LO QUE SUELTA BOWLER: en la pantalla 0x22, cada 5 muertes (0xDFD6), alguien que habla...
	cp 022h		;bb9b
	jr nz,L_BBA9		;bb9d
	ld hl,0dfd6h		;bb9f   ; apunta a las muertes de BOWLER que faltan para alguien que habla
	dec (hl)			;bba2
	ret nz			;bba3
	ld (hl),005h		;bba4
	jp suelta_alguien_que_habla		;bba6   ; suelta_alguien_que_habla: LO QUE SUELTAN GRASSWORM y MIREWORM: el objeto 0x25: al tocarlo, la conversacion de la pantalla
L_BBA9:
	ld hl,0dfc2h		;bba9   ; ...en las demas, cada 16 (0xDFC2), EL HACHA (おの, 0x05) si no se lleva...
	dec (hl)			;bbac
	jr nz,L_BBBE		;bbad
	ld (hl),010h		;bbaf
	ld a,(0c344h)		;bbb1   ; lee cuantos objetos 0x05 se llevan (BCD; 0xFF sin cuenta)
	and a			;bbb4
	jr nz,L_BBBE		;bbb5
	ld c,005h		;bbb7   ; el objeto 0x05, おの
	ld b,000h		;bbb9
	jp 07852h		;bbbb   ; p01:pon_objeto: Pone el objeto C en la pantalla, en (E, D) redondeado a 8, con B
L_BBBE:
	ld a,b			;bbbe   ; ...y en la pantalla 0x17, la mitad de las veces, 5 de oro
	cp 017h		;bbbf
	ret nz			;bbc1
	ld a,(0c103h)		;bbc2   ; lee el contador de cuadros
	and 004h		;bbc5
	ret nz			;bbc7
	ld b,005h		;bbc8
	jp L_BAC3		;bbca
L_BBCD:
	ld hl,0dfd7h		;bbcd   ; LO QUE SUELTA THICKSKIN: cada 5 muertes (0xDFD7), かいてん (0x22) si no se lleva; si no, la mitad de las veces 0x10 de oro
	dec (hl)			;bbd0
	jr z,L_BBDE		;bbd1
	ld a,(0c103h)		;bbd3   ; lee el contador de cuadros
	and 004h		;bbd6
	ret nz			;bbd8
L_BBD9:
	ld b,010h		;bbd9
	jp L_BAC3		;bbdb
L_BBDE:
	ld (hl),005h		;bbde
	ld a,(0c361h)		;bbe0   ; lee cuantos objetos 0x22 se llevan (BCD; 0xFF sin cuenta)
	and a			;bbe3
	jr nz,L_BBD9		;bbe4
	ld c,022h		;bbe6   ; el objeto 0x22, かいてん
	ld b,000h		;bbe8
	jp 07852h		;bbea   ; p01:pon_objeto: Pone el objeto C en la pantalla, en (E, D) redondeado a 8, con B
L_BBED:
	ld a,b			;bbed   ; LO QUE SUELTA GRIZZLY: en la pantalla 0x1A, alguien que habla y el suceso 5; en la 0x1F, 2 carnes
	cp 01ah		;bbee
	jr z,L_BBFA		;bbf0
	cp 01fh		;bbf2
	ret nz			;bbf4
	ld b,002h		;bbf5
	jp suelta_carne		;bbf7   ; suelta_carne: el objeto 0x15 (carne), B unidades
L_BBFA:
	push ix		;bbfa
	call suelta_alguien_que_habla		;bbfc   ; suelta_alguien_que_habla: LO QUE SUELTAN GRASSWORM y MIREWORM: el objeto 0x25: al tocarlo, la conversacion de la pantalla
	pop ix		;bbff
	jp L_BAB4		;bc01
L_BC04:
	ld a,b			;bc04   ; LO QUE SUELTA MRRUINS: en la pantalla 0x3A, alguien que habla
	cp 03ah		;bc05
	ret nz			;bc07
	jp suelta_alguien_que_habla		;bc08   ; suelta_alguien_que_habla: LO QUE SUELTAN GRASSWORM y MIREWORM: el objeto 0x25: al tocarlo, la conversacion de la pantalla
L_BC0B:
	ld hl,0dfd8h		;bc0b   ; LO QUE SUELTA CAVEMAN: cada 10 muertes (0xDFD8), 10 ほのおのたま (0x09)
	dec (hl)			;bc0e
	ret nz			;bc0f
	ld (hl),00ah		;bc10
	ld c,009h		;bc12   ; el objeto 0x09, ほのおのたま
	ld b,010h		;bc14
	jp 07852h		;bc16   ; p01:pon_objeto: Pone el objeto C en la pantalla, en (E, D) redondeado a 8, con B
L_BC19:
	ld b,050h		;bc19   ; LO QUE SUELTA CAVERNMAN: 50 de oro
	jp L_BAC3		;bc1b
L_BC1E:
	ld a,(0c103h)		;bc1e   ; LO QUE SUELTA PROWLER: la mitad de las veces, 20 de oro
	and 004h		;bc21
	ret nz			;bc23
	ld b,020h		;bc24
	jp L_BAC3		;bc26
L_BC29:
	ld a,(0c35eh)		;bc29   ; LO QUE SUELTA CAVERNBIG: si no se lleva, 99 きいろいいし (0x1F)
	and a			;bc2c
	ret nz			;bc2d
	ld c,01fh		;bc2e   ; el objeto 0x1F, きいろいいし
	ld b,099h		;bc30
	jp 07852h		;bc32   ; p01:pon_objeto: Pone el objeto C en la pantalla, en (E, D) redondeado a 8, con B
L_BC35:
	ld a,b			;bc35   ; LO QUE SUELTA WATCHMAN: en la pantalla 0x6E, al acabar la cuenta de 0xDFC5, el objeto 0x2A: aparece un pasadizo (las casillas 0xC0-0xC3 en (0x50, 0x30))
	cp 06eh		;bc36
	ret nz			;bc38
	ld hl,0dfc5h		;bc39   ; apunta a las muertes de WATCHMAN que faltan para el pasadizo
	ld a,(hl)			;bc3c
	and a			;bc3d
	ret z			;bc3e
	dec (hl)			;bc3f
	ret nz			;bc40
	ld c,02ah		;bc41
	ld b,000h		;bc43
	jp 07852h		;bc45   ; p01:pon_objeto: Pone el objeto C en la pantalla, en (E, D) redondeado a 8, con B
L_BC48:
	ld c,024h		;bc48   ; LO QUE SUELTAN BIGGUARD y SAVAGE: てつのかぎ (0x24), la llave de hierro
	ld b,001h		;bc4a
	jp 07852h		;bc4c   ; p01:pon_objeto: Pone el objeto C en la pantalla, en (E, D) redondeado a 8, con B
L_BC4F:
	ld a,(0c103h)		;bc4f   ; LO QUE SUELTA FALCONBAT: la mitad de las veces, una carne
	and 004h		;bc52
	ret nz			;bc54
	ld b,001h		;bc55
	jp suelta_carne		;bc57   ; suelta_carne: el objeto 0x15 (carne), B unidades
L_BC5A:
	ld hl,0dfc3h		;bc5a   ; LO QUE SUELTA FIRETOTEM: cada 12 muertes (0xDFC3), こんぼう (0x03) si no se lleva
	dec (hl)			;bc5d
	ret nz			;bc5e
	ld (hl),00ch		;bc5f
	ld a,(0c342h)		;bc61   ; lee cuantos objetos 0x03 se llevan (BCD; 0xFF sin cuenta)
	and a			;bc64
	ret nz			;bc65
	ld c,003h		;bc66   ; el objeto 0x03, こんぼう
	ld b,000h		;bc68
	jp 07852h		;bc6a   ; p01:pon_objeto: Pone el objeto C en la pantalla, en (E, D) redondeado a 8, con B
L_BC6D:
	push ix		;bc6d   ; LO QUE SUELTA THE NASTY: もり (0x0B), el arpon, y el suceso 5
	ld c,00bh		;bc6f   ; el objeto 0x0B, もり
	ld b,000h		;bc71
	call 07852h		;bc73   ; p01:pon_objeto: Pone el objeto C en la pantalla, en (E, D) redondeado a 8, con B
	pop ix		;bc76
	jp L_BAB4		;bc78
L_BC7B:
	push ix		;bc7b   ; LO QUE SUELTA BADPRIEST: 4 carnes y el suceso 5
	ld b,004h		;bc7d
	call suelta_carne		;bc7f   ; suelta_carne: el objeto 0x15 (carne), B unidades
	pop ix		;bc82
	jp L_BAB4		;bc84
L_BC87:
	ld b,016h		;bc87   ; LO QUE SUELTA GROUNDER: 0x16 de MP...
L_BC89:
	ld c,02ch		;bc89   ; ...el objeto 0x2C: suma B al MP
	jp 07852h		;bc8b   ; p01:pon_objeto: Pone el objeto C en la pantalla, en (E, D) redondeado a 8, con B
L_BC8E:
	ld a,(0c103h)		;bc8e   ; LO QUE SUELTA THE NOT: la mitad de las veces, 5 de oro
	and 004h		;bc91
	ret nz			;bc93
	ld b,005h		;bc94
	jp L_BAC3		;bc96
L_BC99:
	ld hl,0dfd9h		;bc99   ; LO QUE SUELTA CROW: cada 2 muertes (0xDFD9), alguien que habla en (0x80, 0x20)
	dec (hl)			;bc9c
	ret nz			;bc9d
	ld (hl),002h		;bc9e
	ld de,02080h		;bca0
	jp suelta_alguien_que_habla		;bca3   ; suelta_alguien_que_habla: LO QUE SUELTAN GRASSWORM y MIREWORM: el objeto 0x25: al tocarlo, la conversacion de la pantalla
L_BCA6:
	ld a,(0c346h)		;bca6   ; LO QUE SUELTA RED FMAN: si no se lleva, つめ (0x07), la garra
	and a			;bca9
	ret nz			;bcaa
	ld c,007h		;bcab   ; el objeto 0x07, つめ
	ld b,000h		;bcad
	jp 07852h		;bcaf   ; p01:pon_objeto: Pone el objeto C en la pantalla, en (E, D) redondeado a 8, con B
L_BCB2:
	ld a,(0c103h)		;bcb2   ; LO QUE SUELTA B FMAN: una vez de cada 4 (bits 1-2 del contador), 0x10 de MP
	and 006h		;bcb5
	ret nz			;bcb7
	ld b,010h		;bcb8
	jp L_BC89		;bcba
L_BCBD:
	ld a,(0c103h)		;bcbd   ; LO QUE SUELTA D FMAN: una vez de cada 4, 0x20 de MP
	and 006h		;bcc0
	ret nz			;bcc2
	ld b,020h		;bcc3
	jp L_BC89		;bcc5
L_BCC8:
	ld a,b			;bcc8   ; LO QUE SUELTA CLINGMAN: en la pantalla 0x4F, cada 6 muertes (0xDFDA), alguien que habla
	cp 04fh		;bcc9
	ret nz			;bccb
	ld hl,0dfdah		;bccc   ; apunta a las muertes de CLINGMAN que faltan para alguien que habla
	dec (hl)			;bccf
	ret nz			;bcd0
	ld (hl),006h		;bcd1
	jp suelta_alguien_que_habla		;bcd3   ; suelta_alguien_que_habla: LO QUE SUELTAN GRASSWORM y MIREWORM: el objeto 0x25: al tocarlo, la conversacion de la pantalla
L_BCD6:
	ld a,(0c353h)		;bcd6   ; LO QUE SUELTA REVOLVER: si no se lleva, あぐのす (0x14)
	and a			;bcd9
	ret nz			;bcda
	ld c,014h		;bcdb   ; el objeto 0x14, あぐのす
	ld b,000h		;bcdd
	jp 07852h		;bcdf   ; p01:pon_objeto: Pone el objeto C en la pantalla, en (E, D) redondeado a 8, con B
L_BCE2:
	ld a,b			;bce2   ; LO QUE SUELTA WHITEFIRE: en la pantalla 0x6A, cada 6 muertes (0xDFDB), らめらのえき (0x0F) si no se tiene (0xC144)
	cp 06ah		;bce3
	ret nz			;bce5
	ld hl,0dfdbh		;bce6   ; apunta a las muertes que faltan para que WHITEFIRE suelte らめらのえき
	dec (hl)			;bce9
	ret nz			;bcea
	ld (hl),006h		;bceb
	ld a,(0c144h)		;bced
	and a			;bcf0
	ret nz			;bcf1
	ld c,00fh		;bcf2   ; el objeto 0x0F, らめらのえき
	ld b,000h		;bcf4
	jp 07852h		;bcf6   ; p01:pon_objeto: Pone el objeto C en la pantalla, en (E, D) redondeado a 8, con B
L_BCF9:
	ld c,029h		;bcf9   ; LO QUE SUELTA BIGFLOWER: el objeto 0x29: nada
	ld b,000h		;bcfb
	jp 07852h		;bcfd   ; p01:pon_objeto: Pone el objeto C en la pantalla, en (E, D) redondeado a 8, con B
L_BD00:
	ld hl,0dfc6h		;bd00   ; LO QUE SUELTA GRASSOGRE: cada 16 muertes (0xDFC6), el ROD (0x02) si no se lleva; si no, la mitad de las veces 1 de MP
	dec (hl)			;bd03
	jr nz,L_BD14		;bd04
	ld (hl),010h		;bd06
	ld a,(0c341h)		;bd08   ; lee cuantos objetos 0x02 se llevan (BCD; 0xFF sin cuenta)
	and a			;bd0b
	ret nz			;bd0c
	ld c,002h		;bd0d   ; el objeto 0x02, ROD
	ld b,000h		;bd0f
	jp 07852h		;bd11   ; p01:pon_objeto: Pone el objeto C en la pantalla, en (E, D) redondeado a 8, con B
L_BD14:
	ld a,(0c103h)		;bd14   ; lee el contador de cuadros
	and 004h		;bd17
	ret nz			;bd19
	ld b,001h		;bd1a
	jp L_BC89		;bd1c
L_BD1F:
	ld a,(0c103h)		;bd1f   ; LO QUE SUELTA BUCKLER: la mitad de las veces, 2 de MP
	and 004h		;bd22
	ret nz			;bd24
	ld b,002h		;bd25
	jp L_BC89		;bd27
L_BD2A:
	ld (ix+00bh),065h		;bd2a   ; AL CREAR la ficha del tipo 0x3D: cuadro 0x65, en marcha; su tabla segun la pantalla (0x7E, 0x7F, 0x82, 0x83 u otra)...
	ld (ix+00eh),001h		;bd2e
	ld (ix+006h),001h		;bd32   ; si se mueve = 0x01
	ld a,(0c125h)		;bd36   ; lee la PANTALLA
	cp 07eh		;bd39   ; la pantalla 0x7E?
	ld c,000h		;bd3b
	jr z,L_BD4F		;bd3d
	inc c			;bd3f
	cp 07fh		;bd40   ; la pantalla 0x7F?
	jr z,L_BD4F		;bd42
	inc c			;bd44
	cp 082h		;bd45   ; la pantalla 0x82?
	jr z,L_BD4F		;bd47
	inc c			;bd49
	cp 083h		;bd4a   ; la pantalla 0x83?
	jr z,L_BD4F		;bd4c
	inc c			;bd4e
L_BD4F:
	ld a,c			;bd4f   ; ...de p03:BD82, la terna numero 0xDFE0 (una mas cada vez): ix+0x12 el eje y el sentido, ix+0x13 e ix+0x14 los dos extremos...
	ld de,0bd82h		;bd50   ; fichas_BD82: 5 punteros segun C a fichas de 9 bytes (p03:BD50)
	call 042ffh		;bd53   ; p00:palabra_de_la_tabla: DE = la palabra A de la tabla de DE
	ld hl,0dfe0h		;bd56   ; apunta a la ficha 0x3D que va (su terna de p03:BD82)
	inc (hl)			;bd59
	ld a,(hl)			;bd5a
	ld c,a			;bd5b
	add a,a			;bd5c
	add a,c			;bd5d
	call 0425ah		;bd5e   ; p00:de_mas_a
	ld a,(de)			;bd61
	ld (ix+012h),a		;bd62   ; guarda el eje y el sentido
	inc de			;bd65
	ld a,(de)			;bd66
	ld (ix+013h),a		;bd67   ; guarda un extremo
	inc de			;bd6a
	ld a,(de)			;bd6b
	ld (ix+014h),a		;bd6c   ; guarda el otro extremo
	ld a,(ix+012h)		;bd6f   ; ...y su velocidad de p03:BDB9, en vertical (bit 1 de ix+0x12 a 0) o en horizontal
	ld de,0bdb9h		;bd72   ; velocidades_BDB9: 4 palabras segun ix+0x12 que p03:BD72 pone en ix+7 o ix+9
	call 042ffh		;bd75   ; p00:palabra_de_la_tabla: DE = la palabra A de la tabla de DE
	bit 1,(ix+012h)		;bd78   ; mira el bit 1 de el eje y el sentido
	jp z,04311h		;bd7c   ; p00:pon_velocidad_vertical: DE: la velocidad vertical de la ficha (ix+7, ix+8)
	jp 04318h		;bd7f   ; p00:pon_velocidad_horizontal: DE: la velocidad horizontal (ix+9, ix+0x0A)

; ----------------------------------------------------------------------
; DATOS fichas_BD82: 5 punteros segun C a fichas de 9 bytes (p03:BD50)
;   0xbd82..0xbd8c  (10 bytes)
DATA_fichas_BD82:
	defb 08ch,0bdh,095h,0bdh,09eh,0bdh,0a7h,0bdh,0b0h,0bdh	; bd82  ..........

; ----------------------------------------------------------------------
; DATOS fichas_BD8C: las 5 fichas de 9 bytes de p03:BD82
;   0xbd8c..0xbdb9  (45 bytes)
DATA_fichas_BD8C:
	defb 002h,028h,088h,003h,028h,048h,003h,068h,088h,003h,050h,088h,001h,028h,068h,001h	; bd8c  .(..(H.h..P..(h.
	defb 050h,068h,002h,028h,088h,001h,058h,078h,000h,058h,088h,000h,028h,088h,001h,038h	; bd9c  Ph.(..Xx.X..(..8
	defb 068h,002h,048h,088h,001h,028h,088h,003h,028h,068h,000h,048h,088h	; bdac  h.H..(..(h.H.

; ----------------------------------------------------------------------
; DATOS velocidades_BDB9: 4 palabras segun ix+0x12 que p03:BD72 pone en ix+7 o
;   ix+9
;   0xbdb9..0xbdc1  (8 bytes)
DATA_velocidades_BDB9:
	defb 000h,0ffh,000h,001h,000h,0ffh,000h,001h	; bdb9  ........

; ======================================================================
; CODIGO 0xbdc1..0xbdc7  (6 bytes)
; ======================================================================


L_BDC1:
	ld a,(ix+001h)		;bdc1   ; ENTRADA de la ficha del tipo 0x3D, con ella en IX
	call 0425fh		;bdc4   ; p00:despacha: Salta a la entrada A de la tabla de palabras que va pegada detras del `call`.

; ----------------------------------------------------------------------
; DATOS tabla_BDC7: 2 destinos del despachador de 0x425F (call en p03:BDC4):
;   0xBDCB, 0xBDF5; lo leen p03:BDC4 (4 bytes)
;   0xbdc7..0xbdcb  (4 bytes)
DATA_tabla_BDC7:
	defb 0cbh,0bdh	; bdc7
	defb 0f5h,0bdh	; bdc9

; ======================================================================
; CODIGO 0xbdcb..0xbe34  (105 bytes)
; ======================================================================


L_BDCB:
	bit 0,(ix+012h)		;bdcb   ; PASO 0: va hasta el extremo (ix+0x13 o ix+0x14 segun el bit 0 de ix+0x12) en su eje...
	jr nz,L_BDD6		;bdcf
	ld c,(ix+013h)		;bdd1   ; lee un extremo
	jr L_BDD9		;bdd4
L_BDD6:
	ld c,(ix+014h)		;bdd6   ; lee el otro extremo
L_BDD9:
	bit 1,(ix+012h)		;bdd9   ; mira el bit 1 de el eje y el sentido
	jr nz,L_BDE4		;bddd
	ld a,(ix+003h)		;bddf   ; lee la y del enemigo
	jr L_BDE7		;bde2
L_BDE4:
	ld a,(ix+005h)		;bde4   ; lee la x del enemigo
L_BDE7:
	cp c			;bde7
	ret nz			;bde8
	inc (ix+001h)		;bde9   ; ...y alli, parada 0x10 cuadros (paso 1)
	ld (ix+015h),010h		;bdec   ; la espera = 0x10
	ld (ix+006h),000h		;bdf0   ; si se mueve = 0x00
	ret			;bdf4
L_BDF5:
	dec (ix+015h)		;bdf5   ; PASO 1: tras la espera, hacia el otro extremo con la velocidad al reves
	ret nz			;bdf8
	dec (ix+001h)		;bdf9   ; baja el paso en que va
	ld (ix+006h),001h		;bdfc   ; si se mueve = 0x01
	ld a,(ix+012h)		;be00   ; lee el eje y el sentido
	xor 001h		;be03
	ld (ix+012h),a		;be05   ; guarda el eje y el sentido
	bit 1,a		;be08
	ld e,(ix+007h)		;be0a   ; lee la velocidad vertical (baja)
	ld d,(ix+008h)		;be0d   ; lee la velocidad vertical
	jr z,L_BE18		;be10
	ld e,(ix+009h)		;be12   ; lee la velocidad horizontal (baja)
	ld d,(ix+00ah)		;be15   ; lee la velocidad horizontal
L_BE18:
	call 071f8h		;be18   ; p01:niega_de: DE = -DE
	bit 1,(ix+012h)		;be1b   ; mira el bit 1 de el eje y el sentido
	jp z,04311h		;be1f   ; p00:pon_velocidad_vertical: DE: la velocidad vertical de la ficha (ix+7, ix+8)
	jp 04318h		;be22   ; p00:pon_velocidad_horizontal: DE: la velocidad horizontal (ix+9, ix+0x0A)
L_BE25:
	ld (ix+00bh),007h		;be25   ; AL CREAR RUINSBAT: cuadro 7, 0x10 cuadros
	ld (ix+012h),010h		;be29   ; la espera = 0x10
	ret			;be2d
L_BE2E:
	ld a,(ix+001h)		;be2e   ; ENTRADA de RUINSBAT (tipo 0x3F), con su ficha en IX
	call 0425fh		;be31   ; p00:despacha: Salta a la entrada A de la tabla de palabras que va pegada detras del `call`.

; ----------------------------------------------------------------------
; DATOS tabla_BE34: 2 destinos del despachador de 0x425F (call en p03:BE31):
;   0xBE38, 0xBE7B; lo leen p03:BE31 (4 bytes)
;   0xbe34..0xbe38  (4 bytes)
DATA_tabla_BE34:
	defb 038h,0beh	; be34
	defb 07bh,0beh	; be36

; ======================================================================
; CODIGO 0xbe38..0xbeda  (162 bytes)
; ======================================================================


L_BE38:
	dec (ix+012h)		;be38   ; PASO 0: aletea 0x10 cuadros; luego vuela (paso 1)...
	jr nz,ruinsbat_anima		;be3b
	inc (ix+001h)		;be3d   ; sube el paso en que va
	ld a,(0c303h)		;be40   ; ...hacia un punto: una vez la y de Mitchel con una x al azar, otra la x de Mitchel con una y al azar...
	ld e,a			;be43
	ld a,(0c305h)		;be44   ; lee la X de Mitchel
	ld d,a			;be47
	ld a,r		;be48
	and 07fh		;be4a
	inc (ix+013h)		;be4c   ; sube hacia que eje va
	bit 0,(ix+013h)		;be4f   ; mira el bit 0 de hacia que eje va
	jr z,L_BE58		;be53
	ld e,a			;be55
	jr L_BE59		;be56
L_BE58:
	ld d,a			;be58
L_BE59:
	ld (0e800h),de		;be59
	ld e,(ix+003h)		;be5d   ; ...a 0x50
	ld d,(ix+005h)		;be60   ; lee la x del enemigo
	ld a,050h		;be63
	ld (0e80fh),a		;be65
	call 071c8h		;be68   ; p01:angulo_hacia_e800: el angulo (0xE815) desde DE hacia el punto de 0xE800 (y) y 0xE801 (x): dy con su signo en 0xE810...
	call 07183h		;be6b   ; p01:rumbo_del_angulo_e815: ...el seno y el coseno (p01:725E) del angulo de 0xE815...
	ld (ix+007h),l		;be6e   ; guarda la velocidad vertical (baja)
	ld (ix+008h),h		;be71   ; guarda la velocidad vertical
	ld (ix+009h),e		;be74   ; guarda la velocidad horizontal (baja)
	ld (ix+00ah),d		;be77   ; guarda la velocidad horizontal
	ret			;be7a
L_BE7B:
	call ruinsbat_anima		;be7b   ; PASO 1: aletea y se mueve...
	call 06913h		;be7e   ; p01:mueve_la_ficha: un paso: la y (ix+2, ix+3) mas la velocidad vertical...
	ld e,(ix+003h)		;be81   ; ...hasta salirse de 0x10-0xA0 en y o en x: se queda en el borde, 0x10 cuadros en el paso 0
	ld d,(ix+005h)		;be84   ; lee la x del enemigo
	ld l,000h		;be87
	ld bc,010a0h		;be89
	ld a,e			;be8c
	cp 010h		;be8d
	jr c,L_BE96		;be8f
	ld b,c			;be91
	cp 0a1h		;be92
	jr c,L_BE9B		;be94
L_BE96:
	ld (ix+003h),b		;be96   ; guarda la y del enemigo
	ld l,001h		;be99
L_BE9B:
	ld bc,010a0h		;be9b   ; la x, entre 0x10 y 0xA0...
	ld a,d			;be9e
	cp 010h		;be9f
	jr c,L_BEA8		;bea1
	ld b,c			;bea3   ; ...fuera, al borde
	cp 0a1h		;bea4
	jr c,L_BEAD		;bea6
L_BEA8:
	ld (ix+005h),b		;bea8   ; guarda la x del enemigo
	ld l,001h		;beab
L_BEAD:
	bit 0,l		;bead
	ret z			;beaf
	ld (ix+012h),010h		;beb0   ; la espera = 0x10
	dec (ix+001h)		;beb4   ; baja el paso en que va
	ret			;beb7
ruinsbat_anima:
	ld a,(ix+00ch)		;beb8   ; cada 4 cuadros, el cuadro siguiente de los 6 de p03:BEDA
	and 003h		;bebb
	ret nz			;bebd
	inc (ix+014h)		;bebe   ; sube su dibujo
	ld a,(ix+014h)		;bec1   ; lee su dibujo
	cp 006h		;bec4
	jr nz,L_BECC		;bec6
	ld (ix+014h),000h		;bec8   ; su dibujo = 0x00
L_BECC:
	ld a,(ix+014h)		;becc   ; lee su dibujo
	ld hl,0bedah		;becf   ; cuadros_BEDA: 6 bytes: el cuadro (ix+0x0B) segun ix+0x14 (p03:BECF)
	call 04255h		;bed2   ; p00:hl_mas_a
	ld a,(hl)			;bed5
	ld (ix+00bh),a		;bed6   ; guarda el cuadro del enemigo
	ret			;bed9

; ----------------------------------------------------------------------
; DATOS cuadros_BEDA: 6 bytes: el cuadro (ix+0x0B) segun ix+0x14 (p03:BECF)
;   0xbeda..0xbee0  (6 bytes)
DATA_cuadros_BEDA:
	defb 007h,008h,009h,00ah,009h,008h	; beda

; ======================================================================
; CODIGO 0xbee0..0xbf32  (82 bytes)
; ======================================================================


L_BEE0:
	ld a,(ix+00ch)		;bee0   ; LA FIGURA 0x87 (la tira POLEMAN, p03:A5EE), cada cuadro
	and 003h		;bee3
	ret nz			;bee5
	inc (ix+00bh)		;bee6   ; sube el cuadro del enemigo
	ld a,(ix+00bh)		;bee9   ; lee el cuadro del enemigo
	cp 010h		;beec
	ret c			;beee
	ld (ix+00bh),00ch		;beef   ; el cuadro del enemigo = 0x0C
	ret			;bef3
L_BEF4:
	ld (ix+00bh),008h		;bef4   ; AL CREAR LA FIGURA 0x89 (la tira BLOWMIRE, p03:A5EE)
	ld a,040h		;bef8
	call 0716fh		;befa   ; p01:rumbo_hacia_mitchel: RUMBO HACIA MITCHEL a velocidad A: el angulo...
	jp 08bdch		;befd   ; p02:pon_velocidades: la ficha se mueve (ix+6), con DE de velocidad horizontal y HL de vertical
para_la_ficha:
	xor a			;bf00   ; las dos velocidades a 0
	ld (ix+008h),a		;bf01   ; guarda la velocidad vertical
	ld (ix+007h),a		;bf04   ; guarda la velocidad vertical (baja)
	ld (ix+00ah),a		;bf07   ; guarda la velocidad horizontal
	ld (ix+009h),a		;bf0a   ; guarda la velocidad horizontal (baja)
	ret			;bf0d
al_azar:
	ld a,r		;bf0e   ; A al azar: el registro R, con los nibbles cambiados, XOR el contador de cuadros
	rrca			;bf10
	rrca			;bf11
	rrca			;bf12
	rrca			;bf13
	ld hl,0c103h		;bf14   ; apunta a el contador de cuadros
	xor (hl)			;bf17
	ret			;bf18
velocidad_de_la_tabla_4:
	add a,a			;bf19   ; las dos velocidades de las 4 bytes HL + 4*A: [vy alta][vy baja][vx alta][vx baja]
	add a,a			;bf1a
	call 04255h		;bf1b   ; p00:hl_mas_a
	ld a,(hl)			;bf1e
	ld (ix+008h),a		;bf1f   ; guarda la velocidad vertical
	inc hl			;bf22
	ld a,(hl)			;bf23
	ld (ix+007h),a		;bf24   ; guarda la velocidad vertical (baja)
	inc hl			;bf27
	ld a,(hl)			;bf28
	ld (ix+00ah),a		;bf29   ; guarda la velocidad horizontal
	inc hl			;bf2c
	ld a,(hl)			;bf2d
	ld (ix+009h),a		;bf2e   ; guarda la velocidad horizontal (baja)
	ret			;bf31

; ----------------------------------------------------------------------
; DATOS velocidades: 16 entradas de 4 bytes que p03:BF19 pone en ix+8, ix+7,
;   ix+0x0A e ix+9 (dos velocidades de 16 bits) segun A; se entra por 0xBF32,
;   0xBF42, 0xBF52 y 0xBF62
;   0xbf32..0xbf72  (64 bytes)
DATA_velocidades:
	defb 0ffh,080h,000h,000h,000h,000h,000h,080h,000h,080h,000h,000h,000h,000h,0ffh,080h	; bf32  ................
	defb 0ffh,000h,000h,000h,000h,000h,001h,000h,001h,000h,000h,000h,000h,000h,0ffh,000h	; bf42  ................
	defb 0fch,000h,000h,000h,000h,000h,004h,000h,004h,000h,000h,000h,000h,000h,0fch,000h	; bf52  ................
	defb 0fbh,000h,000h,000h,0fdh,000h,001h,040h,0fdh,000h,000h,000h,0fdh,000h,0feh,0c0h	; bf62  .......@........

; ======================================================================
; CODIGO 0xbf72..0xbf96  (36 bytes)
; ======================================================================


cuadro_cada_ix16:
	ld a,(ix+019h)		;bf72   ; salvo con ix+0x19 = 4, cada ix+0x16 cuadros el cuadro alterna entre los dos de HL + 2*ix+0x19
	cp 004h		;bf75
	ret z			;bf77
	dec (ix+017h)		;bf78
	ret nz			;bf7b
	ld b,(ix+016h)		;bf7c
	ld (ix+017h),b		;bf7f
	add a,a			;bf82
	call 04255h		;bf83   ; p00:hl_mas_a
	ld a,(ix+018h)		;bf86
	xor 001h		;bf89
	ld (ix+018h),a		;bf8b
	jr z,L_BF91		;bf8e
	inc hl			;bf90
L_BF91:
	ld a,(hl)			;bf91
	ld (ix+00bh),a		;bf92   ; guarda el cuadro del enemigo
	ret			;bf95

; ----------------------------------------------------------------------
; DATOS parejas_de_cuadros: parejas de cuadros que p03:BF72 alterna (ix+0x18)
;   segun ix+0x19; se entra por 0xBF96, 0xBF9E, 0xBFA6 y 0xBFA8 (p02)
;   0xbf96..0xbfb2  (28 bytes)
DATA_parejas_de_cuadros:
	defb 00fh,014h,015h,016h,00eh,013h,010h,011h,002h,006h,007h,008h,001h,005h,003h,004h	; bf96  ................
	defb 018h,019h,004h,005h,002h,003h,000h,001h,006h,007h,023h,024h	; bfa6  ..........#$

; ======================================================================
; CODIGO 0xbfb2..0xbfdf  (45 bytes)
; ======================================================================


hacia_mitchel_en_x:
	ld (ix+006h),001h		;bfb2   ; en marcha hacia la x de Mitchel, a 2, con el cuadro 0x0C y 0x20 cuadros en ix+0x1A
	xor a			;bfb6
	ld (ix+007h),a		;bfb7   ; guarda la velocidad vertical (baja)
	ld (ix+008h),a		;bfba   ; guarda la velocidad vertical
	ld (ix+009h),a		;bfbd   ; guarda la velocidad horizontal (baja)
	ld a,(0c305h)		;bfc0   ; lee la X de Mitchel
	cp (ix+005h)		;bfc3   ; compara con la x del enemigo
	ld a,002h		;bfc6
	jr nc,L_BFCC		;bfc8
	neg		;bfca
L_BFCC:
	ld (ix+00ah),a		;bfcc   ; guarda la velocidad horizontal
	ld (ix+00bh),00ch		;bfcf   ; el cuadro del enemigo = 0x0C
	ld (ix+01ah),020h		;bfd3
	ret			;bfd7
muere_al_acabar_ix1a:
	dec (ix+01ah)		;bfd8   ; cuenta ix+0x1A y a 0 se borra la ficha
	ret nz			;bfdb
	jp 0694bh		;bfdc   ; p01:quita_la_ficha: se borra la ficha y sus sprites se dejan libres (y = 0xE0)

; ----------------------------------------------------------------------
; DATOS game_over: [x][y] "GAME  OVER" y 0xFE, que sigue con p03:BFEC:
;   p01:673D escribe las dos lineas
;   0xbfdf..0xbfec  (13 bytes)
DATA_game_over:
	defb 050h,038h,047h,041h,04dh,045h,000h,000h,04fh,056h,045h,052h,0feh	; bfdf  P8GAME..OVER.

; ----------------------------------------------------------------------
; DATOS continue_f5: [x][y] "CONTINUE F5" 0xFF: p01:66EE
;   0xbfec..0xbff9  (13 bytes)
DATA_continue_f5:
	defb 050h,050h,043h,04fh,04eh,054h,049h,04eh,055h,045h,000h,046h,035h	; bfec  PPCONTINUE.F5

; ----------------------------------------------------------------------
; DATOS relleno_p03: 0xFF hasta el final del banco
;   0xbff9..0xc000  (7 bytes)
DATA_relleno_p03:
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bff9
