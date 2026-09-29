; ==========================================================================
; KING KONG 2: YOMIGAERU DENSETSU - Konami (1986) - MSX - MegaROM RC-745 de 128 KB (Konami4) - banco 00 (se ejecuta en 0x4000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x04000


; ----------------------------------------------------------------------
; DATOS cabecera_ab: la cabecera del cartucho: 'AB', INIT (0x4269) y
;   STATEMENT, DEVICE y TEXT a cero; lo leen la BIOS (16 bytes)
;   0x4000..0x4010  (16 bytes)
DATA_cabecera_ab:
	defb 041h,042h,069h,042h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 4000  ABiB............

; ----------------------------------------------------------------------
; DATOS cabecera_de_konami: 'CD', 0x07 y 0x45: la cabecera que lee el Konami
;   Game Master (RC-745); lo leen el Game Master (4 bytes)
;   0x4010..0x4014  (4 bytes)
DATA_cabecera_de_konami:
	defb 043h,044h,007h,045h	; 4010

; ----------------------------------------------------------------------
; DATOS gm_resto: 0xFF en las banderas (el Game Master no toma ningun campo) y
;   59 bytes que no lee nada de este cartucho: direcciones de su RAM (0xC100,
;   0xC104, 0xC120-0xC121, 0xC116, las del sonido 0xC01A-0xC096) y 0x66D8, la
;   tabla de piezas de p04
;   0x4014..0x4050  (60 bytes)
DATA_gm_resto:
	defb 0ffh,000h,0c1h,004h,021h,0c1h,005h,020h,0c1h,016h,0c1h,016h,0c1h,000h,000h,000h	; 4014  ....!.. ........
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,094h,0c0h,08fh,0c0h	; 4024  ................
	defb 08fh,0c0h,08fh,0c0h,01ah,0c0h,01bh,0c0h,02eh,0c0h,02fh,0c0h,042h,0c0h,043h,0c0h	; 4034  ........../.B.C.
	defb 0d8h,066h,082h,0c0h,096h,0c0h,080h,0c0h,062h,0c0h,063h,0c0h	; 4044  .f......b.c.

; ======================================================================
; CODIGO 0x4050..0x405c  (12 bytes)
; ======================================================================



; ----------------------------------------------------------------------
; LOS PUENTES. De seis bytes, `call X / jp 0x4215`: se llaman desde cualquier
; banco para ejecutar X con los bancos 1-2-3 y volver por la salida comun
; (p00:4215), que vuelve a poner en 0xA000 el banco de reserva (0xF0F6).
; ----------------------------------------------------------------------
puente_borra_la_ventana_de_texto:
	call 06428h		;4050   ; p01:borra_la_ventana_de_texto: 160x24 puntos en (8, 0xB0): debajo del decorado
	jp L_4215		;4053
puente_rotulo:
	call rotulo		;4056   ; rotulo: [x][y] letras, 0xFE [x][y] otro sitio, 0xFF acaba
	jp L_4215		;4059

; ----------------------------------------------------------------------
; DATOS puente_405C: un puente que no usa nadie: call 0x4919 / jp 0x4215
;   0x405c..0x4062  (6 bytes)
DATA_puente_405C:
	defb 0cdh,019h,049h,0c3h,015h,042h	; 405c

; ======================================================================
; CODIGO 0x4062..0x40aa  (72 bytes)
; ======================================================================


puente_pinta_el_panel:
	call 062c3h		;4062   ; p01:pinta_el_panel: los rotulos y las seis cifras (DAYS, LIFE, EXP, LEVEL, MP, GOLD)
	jp L_4215		;4065
puente_da_un_objeto:
	call 079ceh		;4068   ; p01:79CE: da el objeto A, una unidad (lo usan las conversaciones de p12)
	jp L_4215		;406b
puente_apaga_la_pantalla:
	call apaga_la_pantalla		;406e   ; apaga_la_pantalla: bit 6 del registro 1 del VDP a cero
	jp L_4215		;4071
puente_oculta_los_sprites:
	call oculta_los_sprites		;4074   ; oculta_los_sprites: los 128 bytes de atributos de sprite (0xF600) a 0xE0
	jp L_4215		;4077
puente_hmmv:
	call hmmv		;407a   ; hmmv: el color, a un lado
	jp L_4215		;407d
puente_rellena_la_vram:
	call rellena_la_vram		;4080   ; rellena_la_vram: BC bytes con A desde la VRAM de HL
	jp L_4215		;4083
puente_enciende_la_pantalla:
	call enciende_la_pantalla		;4086   ; enciende_la_pantalla: la copia de R#1 (0xF3E0), con la pantalla encendida
	jp L_4215		;4089
puente_hl_mas_a:
	call hl_mas_a		;408c
	jp L_4215		;408f
puente_escribe_numero_bcd:
	call 0637eh		;4092   ; p01:escribe_numero_bcd: los ceros de la izquierda no se escriben...
	jp L_4215		;4095
puente_de_mas_a:
	call de_mas_a		;4098
	jp L_4215		;409b
puente_limpia_la_pantalla:
	call limpia_la_pantalla		;409e   ; limpia_la_pantalla: LIMPIA: sin sprites, pantalla apagada...
	jp L_4215		;40a1
puente_pinta_los_bordes:
	call 063a7h		;40a4   ; p01:pinta_los_bordes
	jp L_4215		;40a7

; ----------------------------------------------------------------------
; DATOS puente_40AA: un puente que no usa nadie: call 0x6433 / jp 0x4215
;   0x40aa..0x40b0  (6 bytes)
DATA_puente_40AA:
	defb 0cdh,033h,064h,0c3h,015h,042h	; 40aa

; ======================================================================
; CODIGO 0x40b0..0x4194  (228 bytes)
; ======================================================================


puente_borra_el_hueco_de_la_derecha:
	call 0641dh		;40b0   ; p01:borra_el_hueco_de_la_derecha: 72x72 puntos en (0xB0, 0x80): los enemigos del panel
	jp L_4215		;40b3
puente_enemigos_en_el_panel:
	call 06192h		;40b6   ; p01:enemigos_en_el_panel: los enemigos del panel: hasta tres (0xC220, 3 bytes cada uno)
	jp L_4215		;40b9
puente_monta_la_pantalla:
	call monta_la_pantalla		;40bc   ; monta_la_pantalla: MONTA LA PANTALLA: el decorado...
	jp L_4215		;40bf
puente_sitio_de_la_casilla:
	call sitio_de_la_casilla		;40c2   ; sitio_de_la_casilla: L es la columna: 16 puntos cada una, desde 0x10
	jp L_4215		;40c5
puente_pinta_icono:
	call 07962h		;40c8   ; p01:pinta_icono: el 0x26 (oro) se pinta con el dibujo del 6 (la bolsa)
	jp L_4215		;40cb
puente_escribe_nombre_de_la_casilla:
	call escribe_nombre_de_la_casilla		;40ce   ; escribe_nombre_de_la_casilla: la casilla del objeto (0xE80A)...
	jp L_4215		;40d1
puente_vram_para_escribir:
	call vram_para_escribir		;40d4   ; vram_para_escribir: prepara el V9938 para escribir en la direccion de VRAM HL (R#14 y el puerto 1)
	jp L_4215		;40d7
puente_decorado_de_la_pantalla:
	call 0813eh		;40da   ; p02:decorado_de_la_pantalla: EL DECORADO QUE SE QUITA, al entrar: en las pantallas partidas depende del plano...
	jp L_4215		;40dd
puente_posicion_de_mitchel:
	call posicion_de_mitchel		;40e0   ; posicion_de_mitchel: E = la y de Mitchel, D = su x
	jp L_4215		;40e3
puente_sonido_si_juega:
	call sonido_si_juega		;40e6   ; sonido_si_juega: solo con el bit 6 de 0xC102 (la partida de verdad, no la demostracion)
	jp L_4215		;40e9
puente_pantalla_vecina:
	call 0616bh		;40ec   ; p01:pantalla_vecina: p09:B1C5 + 4*pantalla + C: arriba, abajo, izquierda, derecha
	jp L_4215		;40ef
puente_pon_paleta:
	call pon_paleta		;40f2   ; pon_paleta: lista [color][RB][G] ... 0xFF
	jp L_4215		;40f5
puente_pon_un_color:
	call pon_un_color		;40f8   ; pon_un_color: color A de la paleta = D (RB) y E (G)
	jp L_4215		;40fb
puente_escribe_una_letra:
	call escribe_una_letra		;40fe
	jp L_4215		;4101
puente_guarda_las_teclas:
	call 064f6h		;4104   ; p01:guarda_las_teclas
	jp L_4215		;4107
puente_pinta_figura_BA05:
	call pinta_figura_BA05		;410a
	jp L_4215		;410d
puente_borra_la_parte_de_abajo:
	call borra_la_parte_de_abajo		;4110   ; borra_la_parte_de_abajo: desde la linea 0x98, 60 lineas...
	jp L_4215		;4113
puente_espera_al_vdp:
	call espera_al_vdp		;4116   ; espera_al_vdp: espera a que el V9938 acabe la orden (bit 0 de S#2)
	jp L_4215		;4119
puente_sube_dibujos:
	call sube_dibujos		;411c   ; sube_dibujos: B dibujos de 8x8 a 4 bits de HL a la VRAM de DE
	jp L_4215		;411f
puente_pinta_figura_BA15:
	call pinta_figura_BA15		;4122
	jp L_4215		;4125
puente_pinta_figura_BA38:
	call pinta_figura_BA38		;4128
	jp L_4215		;412b
puente_pinta_figura_BA4C:
	call pinta_figura_BA4C		;412e
	jp L_4215		;4131
puente_pinta_figura_BA68:
	call pinta_figura_BA68		;4134
	jp L_4215		;4137
puente_multiplica_en_bcd:
	call multiplica_en_bcd		;413a   ; multiplica_en_bcd: A*E en BCD: los ocho bits de H, de uno en uno
	jp L_4215		;413d
puente_cambia_el_enemigo_del_panel:
	call 0643eh		;4140   ; p01:cambia_el_enemigo_del_panel: el enemigo C golpeado: en el panel se subraya un rato
	jp L_4215		;4143
puente_escribe_level:
	call 06362h		;4146   ; p01:escribe_level
	jp L_4215		;4149
puente_escribe_exp:
	call 06358h		;414c   ; p01:escribe_exp: EXP: 3 bytes en (0x38, 0xC8)
	jp L_4215		;414f
puente_mata_la_ficha:
	call mata_la_ficha		;4152   ; mata_la_ficha: el enemigo muere: guarda su tipo en ix+0x1F y se convierte en la explosion de p15:A3CA
	jp L_4215		;4155
puente_rebota_lo_lanzado:
	call 07668h		;4158   ; p01:rebota_lo_lanzado: a la mitad (0x1C cuadros) da la vuelta...
	jp L_4215		;415b
puente_escribe_life:
	call 0634eh		;415e   ; p01:escribe_life: LIFE: 2 bytes en (0x30, 0xD8)
	jp L_4215		;4161
puente_quita_un_objeto_del_suelo:
	call 0797fh		;4164   ; p01:quita_un_objeto_del_suelo: el objeto se quita: vuelven las cuatro casillas de debajo
	jp L_4215		;4167
puente_escribe_gold:
	call 06376h		;416a   ; p01:escribe_gold: GOLD: 2 bytes en (0x50, 0xD8)
	jp L_4215		;416d
puente_conversacion_de_la_pantalla:
	call 07ed9h		;4170   ; p01:conversacion_de_la_pantalla
	jp L_4215		;4173
puente_da_objeto_b:
	call 079d0h		;4176   ; p01:79D0: da el objeto A, B unidades (al recogerlo del suelo, p09:BC03)
	jp L_4215		;4179
puente_marco:
	call marco		;417c   ; marco: cuatro rayas: un marco de E por D en HL
	jp L_4215		;417f
puente_lmmm:
	call lmmm		;4182   ; lmmm: orden LMMM del V9938: lo mismo con operacion logica (A: paginas y operacion; 8 = TIMP)
	jp L_4215		;4185
puente_paleta_inicial:
	call paleta_inicial		;4188   ; paleta_inicial: los 16 colores de p00:46AF
	jp L_4215		;418b
puente_rle_con_destino:
	call rle_con_destino		;418e   ; rle_con_destino: la palabra de DE es la direccion de VRAM; detras, el RLE
	jp L_4215		;4191

; ----------------------------------------------------------------------
; DATOS puente_4194: un puente que no usa nadie: call 0x4EB2 / jp 0x4215
;   0x4194..0x419a  (6 bytes)
DATA_puente_4194:
	defb 0cdh,0b2h,04eh,0c3h,015h,042h	; 4194

; ======================================================================
; CODIGO 0x419a..0x41be  (36 bytes)
; ======================================================================


puente_pon_objeto:
	call 07852h		;419a   ; p01:7852: pone el objeto C (B unidades) en (E, D) de la pantalla
	jp L_4215		;419d
puente_persigue_a_mitchel_83A7:
	call 083a7h		;41a0   ; p02:persigue_a_mitchel_83A7: EL ENEMIGO ARRASTRA A MITCHEL: por el eje en que esten mas lejos...
	jp L_4215		;41a3
puente_mitchel_muere:
	call 06c7bh		;41a6   ; p01:mitchel_muere: los colores de Mitchel otra vez los de siempre
	jp L_4215		;41a9
puente_modo_de_pantalla:
	call modo_de_pantalla		;41ac   ; modo_de_pantalla: 0xFAF6 = 1...
	jp L_4215		;41af
puente_sube_letras:
	call sube_letras		;41b2   ; sube_letras: B letras de 1 bit de HL, en color C, a la hoja de la pagina 1 desde (D, E)
	jp L_4215		;41b5
puente_sube_sprites_4C92:
	call sube_sprites_4C92		;41b8
	jp L_4215		;41bb

; ----------------------------------------------------------------------
; DATOS puente_41BE: un puente que no usa nadie: call 0x52FF / jp 0x4215
;   0x41be..0x41c4  (6 bytes)
DATA_puente_41BE:
	defb 0cdh,0ffh,052h,0c3h,015h,042h	; 41be

; ======================================================================
; CODIGO 0x41c4..0x41d0  (12 bytes)
; ======================================================================


puente_pinta_figura_sin_bancos:
	call pinta_figura_sin_bancos		;41c4   ; pinta_figura_sin_bancos: HL' = la casilla del mapa de la RAM de la esquina
	jp L_4215		;41c7
puente_casilla_en_ram:
	call casilla_en_ram		;41ca   ; casilla_en_ram: HL = la casilla de 8x8 del punto (L, H) en el mapa de la RAM (0xE000, 32 por fila)
	jp L_4215		;41cd

; ----------------------------------------------------------------------
; DATOS puente_41D0: un puente que no usa nadie: call 0x4667 / jp 0x4215
;   0x41d0..0x41d6  (6 bytes)
DATA_puente_41D0:
	defb 0cdh,067h,046h,0c3h,015h,042h	; 41d0

; ======================================================================
; CODIGO 0x41d6..0x435d  (391 bytes)
; ======================================================================


puente_copia_lineas_a_la_pagina_1:
	call copia_lineas_a_la_pagina_1		;41d6   ; copia_lineas_a_la_pagina_1: la linea 0xEC de la pagina 0 a la 1...
	jp L_4215		;41d9
puente_cerca_de_mitchel_84C3:
	call 084c3h		;41dc   ; p02:cerca_de_mitchel_84C3
	jp L_4215		;41df
puente_guarda_el_fondo_del_jefe:
	call guarda_el_fondo_del_jefe		;41e2   ; guarda_el_fondo_del_jefe: 0xDFE3: si hay fondo guardado
	jp L_4215		;41e5
puente_repone_el_fondo_del_jefe:
	call repone_el_fondo_del_jefe		;41e8   ; repone_el_fondo_del_jefe: sin fondo guardado, a p02:8E67
	jp L_4215		;41eb
puente_paleta_de_las_pantallas_oscuras:
	call 07dd7h		;41ee   ; p01:paleta_de_las_pantallas_oscuras
	jp L_4215		;41f1
puente_hmmm:
	call hmmm		;41f4   ; hmmm: orden HMMM del V9938: copia BxC puntos de (H, L) a (D, E); A lleva las paginas
	jp L_4215		;41f7
puente_escribe_has_cogido:
	call escribe_has_cogido		;41fa   ; escribe_has_cogido: el nombre del objeto A en (0x10, 0xB8) y "を とりました。" detras
	jp L_4215		;41fd
puente_pon_la_paleta_de_la_pantalla:
	call pon_la_paleta_de_la_pantalla		;4200   ; pon_la_paleta_de_la_pantalla: la comun (0x6128), la del juego de dibujos (0x6059) y la de la pantalla (0x61CF)
	jp L_4215		;4203
puente_sube_los_colores_de_sprite:
	call sube_los_colores_de_sprite		;4206
	jp L_4215		;4209
puente_mitchel_contra_el_decorado:
	call 08456h		;420c   ; p02:mitchel_contra_el_decorado
	jp L_4215		;420f
L_4212:
	call hay_musica		;4212   ; en marcha si 0xC08B o 0xC08D no son cero (A = 0xC08F)
L_4215:
	call bancos_1_2_3		;4215   ; LA SALIDA COMUN de los puentes: vuelven los bancos 1-2-3...
	push af			;4218
	ld a,(0f0f6h)		;4219   ; lee el banco de reserva de 0xA000 (el que devuelve p00:4215)
	and a			;421c   ; ...y si hay un banco de reserva...
	jr z,L_4227		;421d
	di			;421f
	ld (0a000h),a		;4220   ; el mapper: el banco de A en 0xA000
	ld (0f0f3h),a		;4223   ; guarda la copia del banco de 0xA000
	ei			;4226
L_4227:
	pop af			;4227
	ret			;4228
L_4229:
	di			;4229   ; LA INTERRUPCION (H.TIMI): primero el sonido, con los bancos 4 y 5
	ld a,004h		;422a
	ld (06000h),a		;422c   ; el mapper: el banco de A en 0x6000
	inc a			;422f
	ld (08000h),a		;4230   ; el mapper: el banco de A en 0x8000
	call 06228h		;4233   ; p04:6228: el sonido de este cuadro
	ld a,(0f0f1h)		;4236   ; devuelve los dos bancos de antes
	ld (06000h),a		;4239   ; el mapper: el banco de A en 0x6000
	ld a,(0f0f2h)		;423c   ; lee la copia del banco de 0x8000
	ld (08000h),a		;423f   ; el mapper: el banco de A en 0x8000
	ld hl,0c105h		;4242   ; 0xC105: el juego no se mete dos veces (si el cuadro anterior no acabo)
	bit 0,(hl)		;4245
	jp nz,L_4253		;4247
	inc (hl)			;424a
	ei			;424b
	call 065c2h		;424c   ; p01:65C2: el juego entero, un cuadro
	xor a			;424f
	ld (0c105h),a		;4250
L_4253:
	ei			;4253
	ret			;4254
hl_mas_a:
	add a,l			;4255
	ld l,a			;4256
	ret nc			;4257
	inc h			;4258
	ret			;4259
de_mas_a:
	add a,e			;425a
	ld e,a			;425b
	ret nc			;425c
	inc d			;425d
	ret			;425e

; ----------------------------------------------------------------------
; Salta a la entrada A de la tabla de palabras que va pegada detras del `call`.
; ----------------------------------------------------------------------
despacha:
	pop hl			;425f
despacha_hl:
	add a,a			;4260
	call hl_mas_a		;4261
	ld e,(hl)			;4264
	inc hl			;4265
	ld d,(hl)			;4266
	ex de,hl			;4267
	jp (hl)			;4268
L_4269:
	di			;4269   ; INIT: el cartucho arranca aqui (cabecera AB)
	ld sp,0f0f0h		;426a   ; la pila, debajo de las copias del mapper
	call 00138h		;426d   ; BIOS RSLREG - Reads the primary slot register | la ranura primaria de la pagina 1 (la del cartucho)...
	rrca			;4270
	rrca			;4271
	and 003h		;4272
	ld c,a			;4274
	ld b,000h		;4275
	ld hl,0fcc1h		;4277   ; ...y si esta expandida, la secundaria (0xFCC1 + ranura)...
	add hl,bc			;427a
	ld a,(hl)			;427b
	and 080h		;427c
	or c			;427e
	ld c,a			;427f
	inc hl			;4280
	inc hl			;4281
	inc hl			;4282
	inc hl			;4283
	ld a,(hl)			;4284
	and 00ch		;4285
	or c			;4287
	ld h,080h		;4288   ; ...para poner el cartucho tambien en la pagina 2 (0x8000-0xBFFF)
	call 00024h		;428a   ; BIOS ENASLT - Switches to specified slot and page definitively
	ld hl,0c000h		;428d   ; 0x30EF ceros desde 0xC000: toda la RAM del juego
	ld de,0c001h		;4290
	ld bc,030efh		;4293
	ld (hl),000h		;4296
	ldir		;4298
	call bancos_1_2_3		;429a   ; bancos_1_2_3: LAS PUERTAS: A, A+1 y A+2 en los tres registros del mapper y en sus copias
	xor a			;429d   ; las otras copias del mapper a cero
	ld hl,0f0f4h		;429e
	ld (hl),a			;42a1
	inc hl			;42a2
	ld (hl),a			;42a3
	inc hl			;42a4
	ld (hl),a			;42a5
	call 06492h		;42a6   ; p01:6492: el VDP y el sonido
	di			;42a9
	ld a,0c3h		;42aa   ; engancha la interrupcion: jp 0x4229 en H.TIMI (0xFD9F)
	ld (0fd9fh),a		;42ac
	ld hl,L_4229		;42af
	ld (0fda0h),hl		;42b2
	xor a			;42b5
	ld (0f3dbh),a		;42b6
	ei			;42b9
L_42BA:
	jr L_42BA		;42ba   ; y aqui se queda: el juego corre desde la interrupcion
bancos_1_2_3:
	di			;42bc   ; LAS PUERTAS: A, A+1 y A+2 en los tres registros del mapper y en sus copias
	push af			;42bd
	ld a,001h		;42be
	jr pon_tres_bancos		;42c0
bancos_4_5_6:
	di			;42c2
	push af			;42c3
	ld a,004h		;42c4
pon_tres_bancos:
	push hl			;42c6
	ld hl,0f0f1h		;42c7   ; apunta a la copia del banco de 0x6000
	ld (06000h),a		;42ca   ; el mapper: el banco de A en 0x6000
	ld (hl),a			;42cd
	inc a			;42ce   ; el siguiente banco...
	inc hl			;42cf
	ld (08000h),a		;42d0   ; el mapper: el banco de A en 0x8000
	ld (hl),a			;42d3
	inc a			;42d4   ; ...y el tercero
	ld (0a000h),a		;42d5   ; el mapper: el banco de A en 0xA000
	inc hl			;42d8
	ld (hl),a			;42d9
	pop hl			;42da
	pop af			;42db
	ei			;42dc
	ret			;42dd
bancos_7_8_9:
	di			;42de
	push af			;42df
	ld a,007h		;42e0
	jr pon_tres_bancos		;42e2
bancos_10_11_12:
	di			;42e4
	push af			;42e5
	ld a,00ah		;42e6
	jr pon_tres_bancos		;42e8
bancos_13_14_15:
	di			;42ea
	push af			;42eb
	ld a,00dh		;42ec
	jr pon_tres_bancos		;42ee
escribe_has_cogido:
	ld hl,010b8h		;42f0   ; el nombre del objeto A en (0x10, 0xB8) y "を とりました。" detras
	call escribe_nombre_de_objeto		;42f3   ; escribe_nombre_de_objeto: el nombre del objeto A (p15:A069 + 2*A) en HL
	ld hl,0a062h		;42f6   ; "を とりました。"
	call escribe_letras		;42f9
	jp bancos_1_2_3		;42fc   ; y los bancos de siempre
palabra_de_la_tabla:
	ld l,a			;42ff   ; DE = la palabra A de la tabla de DE
	ld h,000h		;4300   ; HL = 2*A...
	add hl,hl			;4302
	add hl,de			;4303   ; ...+ DE
	ld e,(hl)			;4304   ; la palabra
	inc hl			;4305
	ld d,(hl)			;4306
	ret			;4307
posicion_de_mitchel:
	ld a,(0c303h)		;4308   ; E = la y de Mitchel, D = su x
	ld e,a			;430b
	ld a,(0c305h)		;430c   ; lee la X de Mitchel
	ld d,a			;430f
	ret			;4310
pon_velocidad_vertical:
	ld (ix+007h),e		;4311   ; DE: la velocidad vertical de la ficha (ix+7, ix+8)
	ld (ix+008h),d		;4314
	ret			;4317
pon_velocidad_horizontal:
	ld (ix+009h),e		;4318   ; DE: la velocidad horizontal (ix+9, ix+0x0A)
	ld (ix+00ah),d		;431b
	ret			;431e
casilla_en_ram:
	ld a,l			;431f   ; HL = la casilla de 8x8 del punto (L, H) en el mapa de la RAM (0xE000, 32 por fila)
	rra			;4320   ; L / 8 (la fila de casillas)...
	rra			;4321
	rra			;4322
	rra			;4323
	rr h		;4324   ; ...repartido entre H y L: L = fila*32 + H/8
	rra			;4326
	rr h		;4327
	rra			;4329
	rr h		;432a
	ld l,h			;432c
	and 003h		;432d   ; la fila alta...
	add a,0e0h		;432f   ; ...a partir de 0xE000
	ld h,a			;4331
	ret			;4332
guarda_el_fondo:
	call esquina_de_la_ficha		;4333   ; GUARDA EL FONDO: lo que hay debajo de la ficha, desde su esquina
	call casilla_en_ram		;4336   ; casilla_en_ram: HL = la casilla de 8x8 del punto (L, H) en el mapa de la RAM (0xE000, 32 por fila)
	push hl			;4339   ; la casilla de la esquina
	ld de,04365h		;433a   ; bufferes_4365: 13 palabras, de 0x42 en 0x42 desde 0xD680: la zona de RAM de cada ficha segun ix+0x0F (p00:433A y p00:437F)
	ld a,(ix+00fh)		;433d   ; el hueco de la ficha (ix+0x0F)
	call palabra_de_la_tabla		;4340   ; palabra_de_la_tabla: DE = la palabra A de la tabla de DE
	ld a,c			;4343   ; primero, cuantas columnas (C)...
	ld (de),a			;4344
	inc de			;4345
	ld a,b			;4346   ; ...y cuantas filas (B)
	ld (de),a			;4347
	inc de			;4348
	pop hl			;4349
L_434A:
	push bc			;434a
	push hl			;434b
L_434C:
	ld a,(hl)			;434c   ; y las casillas, fila a fila
	ld (de),a			;434d
	inc hl			;434e
	inc de			;434f
	djnz L_434C		;4350
	pop hl			;4352
	pop bc			;4353
	ld a,020h		;4354   ; la fila siguiente del mapa (32 casillas)
	call hl_mas_a		;4356
	dec c			;4359
	jr nz,L_434A		;435a
	ret			;435c

; ----------------------------------------------------------------------
; DATOS desplazamientos_435D: 8 bytes (0, -8, -12 ... -32): lo que p00:4399
;   resta segun C - 1 y B - 1
;   0x435d..0x4365  (8 bytes)
DATA_desplazamientos_435D:
	defb 000h,0f8h,0f4h,0f0h,0ech,0e8h,0e4h,0e0h	; 435d  ........

; ----------------------------------------------------------------------
; DATOS bufferes_4365: 13 palabras, de 0x42 en 0x42 desde 0xD680: la zona de
;   RAM de cada ficha segun ix+0x0F (p00:433A y p00:437F)
;   0x4365..0x437f  (26 bytes)
DATA_bufferes_4365:
	defb 080h,0d6h,0c2h,0d6h,004h,0d7h,046h,0d7h,088h,0d7h,0cah,0d7h,00ch,0d8h,04eh,0d8h	; 4365  ......F.......N.
	defb 090h,0d8h,0d2h,0d8h,014h,0d9h,056h,0d9h,098h,0d9h	; 4375  ......V...

; ======================================================================
; CODIGO 0x437f..0x445c  (221 bytes)
; ======================================================================


repinta_el_fondo_de_la_ficha:
	ld de,04365h		;437f   ; bufferes_4365: 13 palabras, de 0x42 en 0x42 desde 0xD680: la zona de RAM de cada ficha segun ix+0x0F (p00:433A y p00:437F)
	ld a,(ix+00fh)		;4382   ; el hueco de la ficha
	call palabra_de_la_tabla		;4385   ; palabra_de_la_tabla: DE = la palabra A de la tabla de DE
	ld a,(de)			;4388   ; lo guardado: columnas...
	ld c,a			;4389
	inc de			;438a
	ld a,(de)			;438b   ; ...y filas
	ld b,a			;438c
	inc de			;438d
	push de			;438e
	push bc			;438f
	call esquina_de_la_ficha		;4390   ; la esquina de la ficha...
	pop bc			;4393
	pop de			;4394
	ex de,hl			;4395   ; ...y se pinta lo guardado encima
	jp pinta_figura		;4396   ; pinta_figura: B columnas x C filas de numeros de dibujo de HL, con transparencia, en DE
esquina_de_la_ficha:
	ld a,c			;4399   ; medio ancho hacia la izquierda (C columnas)...
	dec a			;439a
	ld hl,0435dh		;439b   ; desplazamientos_435D: 8 bytes (0, -8, -12 ... -32): lo que p00:4399 resta segun C - 1 y B - 1
	call hl_mas_a		;439e
	ld e,(hl)			;43a1
	ld a,b			;43a2   ; ...y medio alto hacia arriba (B filas)
	dec a			;43a3
	ld hl,0435dh		;43a4   ; desplazamientos_435D: 8 bytes (0, -8, -12 ... -32): lo que p00:4399 resta segun C - 1 y B - 1
	call hl_mas_a		;43a7
	ld d,(hl)			;43aa
	ld a,(ix+003h)		;43ab   ; L = la y de la ficha menos el medio alto
	add a,e			;43ae
	ld l,a			;43af
	ld a,(ix+005h)		;43b0   ; H = la x menos el medio ancho
	add a,d			;43b3
	ld h,a			;43b4
	ret			;43b5
casilla_que_no_se_pisa:
	ld a,0f0h		;43b6   ; 0xF0 en las BxC casillas de debajo de la ficha: la casilla que no se pisa
casilla_de_la_ficha:
	ld (0e800h),a		;43b8   ; PON UNA CASILLA: A en las BxC casillas de debajo de la ficha
	call esquina_de_la_ficha		;43bb   ; esquina_de_la_ficha: medio ancho hacia la izquierda (C columnas)...
	call casilla_en_ram		;43be   ; casilla_en_ram: HL = la casilla de 8x8 del punto (L, H) en el mapa de la RAM (0xE000, 32 por fila)
L_43C1:
	push bc			;43c1
	push hl			;43c2
	ld a,(0e800h)		;43c3
L_43C6:
	ld (hl),a			;43c6   ; una fila de B
	inc hl			;43c7
	djnz L_43C6		;43c8
	pop hl			;43ca
	pop bc			;43cb
	ld a,020h		;43cc   ; la siguiente
	call hl_mas_a		;43ce
	dec c			;43d1
	jr nz,L_43C1		;43d2
	ret			;43d4
multiplica_en_bcd:
	ld a,e			;43d5   ; A*E en BCD: los ocho bits de H, de uno en uno
	exx			;43d6
	ld l,a			;43d7
	ld h,000h		;43d8
	exx			;43da
	ld d,000h		;43db
	ld c,d			;43dd
	ld l,c			;43de
	ld b,008h		;43df   ; 8 vueltas
L_43E1:
	rr h		;43e1   ; bit de H: si esta, se suma DE
	jr nc,L_43ED		;43e3
	ld a,l			;43e5
	add a,e			;43e6
	daa			;43e7
	ld l,a			;43e8
	ld a,c			;43e9
	adc a,d			;43ea
	daa			;43eb
	ld c,a			;43ec
L_43ED:
	ld a,b			;43ed   ; a la mitad, lo que se suma sube de 10 en 10
	cp 005h		;43ee
	jr nz,L_4400		;43f0
	exx			;43f2
	add hl,hl			;43f3
	add hl,hl			;43f4
	add hl,hl			;43f5
	add hl,hl			;43f6
	ld a,l			;43f7
	exx			;43f8
	ld e,a			;43f9
	exx			;43fa
	ld a,h			;43fb
	exx			;43fc
	ld d,a			;43fd
	jr L_4408		;43fe
L_4400:
	ld a,e			;4400   ; si no, DE se dobla (en BCD)
	add a,a			;4401
	daa			;4402
	ld e,a			;4403
	ld a,d			;4404
	adc a,a			;4405
	daa			;4406
	ld d,a			;4407
L_4408:
	djnz L_43E1		;4408
	ld h,c			;440a   ; la parte alta del resultado en H
	ret			;440b
escribe_nombre_de_la_casilla:
	ld hl,(0e80ah)		;440c   ; la casilla del objeto (0xE80A)...
	call sitio_de_la_casilla		;440f   ; sitio_de_la_casilla: L es la columna: 16 puntos cada una, desde 0x10
	ld a,018h		;4412   ; ...24 puntos a la derecha del icono...
	add a,h			;4414
	ld h,a			;4415
	ld a,(0e80ch)		;4416   ; ...su nombre
	call escribe_nombre_de_objeto		;4419   ; escribe_nombre_de_objeto: el nombre del objeto A (p15:A069 + 2*A) en HL
	jp bancos_1_2_3		;441c   ; bancos_1_2_3: LAS PUERTAS: A, A+1 y A+2 en los tres registros del mapper y en sus copias
escribe_nombre_de_objeto:
	call bancos_13_14_15		;441f   ; el nombre del objeto A (p15:A069 + 2*A) en HL
	push hl			;4422   ; el sitio
	ld de,0a069h		;4423   ; p15:A069 + 2*A: el nombre
	call palabra_de_la_tabla		;4426   ; palabra_de_la_tabla: DE = la palabra A de la tabla de DE
	pop hl			;4429
	ex de,hl			;442a   ; HL = el nombre, DE = el sitio
	ld c,0ffh		;442b   ; C = 0xFF: con la fuente normal
	jp escribe_letras		;442d
sitio_de_la_casilla:
	ld a,l			;4430   ; L es la columna: 16 puntos cada una, desde 0x10
	add a,a			;4431
	add a,a			;4432
	add a,a			;4433
	add a,a			;4434
	add a,010h		;4435
	cp 050h		;4437   ; hueco en el medio...
	jr c,L_443D		;4439
	add a,018h		;443b
L_443D:
	cp 0d0h		;443d   ; ...y otro al final
	jr c,L_4443		;443f
	add a,010h		;4441
L_4443:
	ld l,a			;4443
	ld a,h			;4444   ; H es la fila (0, 1 o 2): y = 0x10, 0x60 o 0xB0
	ld h,010h		;4445
	and a			;4447
	ret z			;4448
	ld h,060h		;4449
	dec a			;444b
	ret z			;444c
	ld h,0b0h		;444d
	ret			;444f
L_4450:
	ld hl,0445ch		;4450   ; la figura de 9x2 dibujos (0xD0-0xE1) en (8, 0xB0)
	ld bc,00902h		;4453
	ld de,0b008h		;4456
	jp pinta_figura		;4459   ; pinta_figura: B columnas x C filas de numeros de dibujo de HL, con transparencia, en DE

; ----------------------------------------------------------------------
; DATOS figura_445C: 9 columnas x 2 filas de numeros de dibujo (0xD0-0xE1) que
;   p00:4450 pinta en (8, 0xB0)
;   0x445c..0x446e  (18 bytes)
DATA_figura_445C:
	defb 0d0h,0d1h,0d2h,0d3h,0d4h,0d5h,0d6h,0d7h,0d8h,0d9h,0dah,0dbh,0dch,0ddh,0deh,0dfh	; 445c  ................
	defb 0e0h,0e1h	; 446c

; ======================================================================
; CODIGO 0x446e..0x459f  (305 bytes)
; ======================================================================


guarda_el_fondo_del_jefe:
	xor a			;446e   ; 0xDFE3: si hay fondo guardado
	ld (0dfe3h),a		;446f
	ld ix,0d000h		;4472   ; apunta a las fichas de los enemigos (13 de 0x80)
	ld b,00dh		;4476   ; las 13 fichas
L_4478:
	ld a,(ix+000h)		;4478   ; lee el tipo del enemigo
	cp 01ah		;447b   ; TWINMIRES (tipo 0x1A)?
	jr z,L_4493		;447d
	cp 02ah		;447f   ; THE NASTY (tipo 0x2A)?
	jr z,L_4493		;4481
	cp 02bh		;4483   ; BADPRIEST (tipo 0x2B)?
	jr z,L_4493		;4485
	cp 038h		;4487   ; REVOLVER (tipo 0x38)?
	jr z,L_4493		;4489
	cp 039h		;448b   ; REVOLVER (tipo 0x39)?
	jr z,L_4493		;448d
	cp 042h		;448f   ; BIGFLOWER (tipo 0x42)?
	jr nz,L_44B2		;4491
L_4493:
	ld a,(ix+003h)		;4493   ; la esquina: 0x20 arriba y a la izquierda
	sub 020h		;4496
	ld l,a			;4498
	ld a,(ix+005h)		;4499   ; lee la x del enemigo
	sub 020h		;449c
	ld h,a			;449e
	ld (0dfe1h),hl		;449f   ; donde se guardo (0xDFE1)
	ld de,06090h		;44a2   ; 64x64 puntos a (0x90, 0x60) de la pagina 1
	ld bc,04040h		;44a5
	ld a,018h		;44a8   ; LMMM de la pagina 0 a la 1
	call lmmm		;44aa   ; lmmm: orden LMMM del V9938: lo mismo con operacion logica (A: paginas y operacion; 8 = TIMP)
	ld a,001h		;44ad   ; hay fondo guardado
	ld (0dfe3h),a		;44af
L_44B2:
	ld de,00080h		;44b2   ; la ficha siguiente
	add ix,de		;44b5
	djnz L_4478		;44b7
	ret			;44b9
repone_el_fondo_del_jefe:
	ld a,(0dfe3h)		;44ba   ; sin fondo guardado, a p02:8E67
	and a			;44bd
	jp z,08e67h		;44be
	ld de,(0dfe1h)		;44c1   ; donde estaba
	ld hl,06090h		;44c5   ; los 64x64 guardados, de vuelta
	ld bc,04040h		;44c8
	ld a,048h		;44cb   ; LMMM de la pagina 1 a la 0 con TIMP
	call lmmm		;44cd   ; lmmm: orden LMMM del V9938: lo mismo con operacion logica (A: paginas y operacion; 8 = TIMP)
	ld a,(0c125h)		;44d0   ; lee la PANTALLA
	cp 057h		;44d3   ; la pantalla 0x57?
	ret nz			;44d5
	ld a,(0d000h)		;44d6   ; lee las fichas de los enemigos (13 de 0x80)
	cp 042h		;44d9   ; y si la primera ficha es BIGFLOWER (0x42)...
	ret nz			;44db
	ld ix,0d000h		;44dc   ; ...pone 0xF0 en sus 4x3 casillas: no se pisa
	ld bc,00403h		;44e0
	jp casilla_que_no_se_pisa		;44e3   ; casilla_que_no_se_pisa: 0xF0 en las BxC casillas de debajo de la ficha: la casilla que no se pisa
indice_del_jefe:
	ld a,c			;44e6   ; C = el tipo; L = su numero de jefe (de dos en dos) y acarreo; sin acarreo, no es jefe
	cp 004h		;44e7
	ld l,000h		;44e9
	jr z,L_4548		;44eb
	cp 005h		;44ed
	ld l,002h		;44ef
	jr z,L_4548		;44f1
	cp 00bh		;44f3
	ld l,004h		;44f5
	jr z,L_4548		;44f7
	cp 02ah		;44f9
	ld l,00eh		;44fb
	jr z,L_4548		;44fd
	cp 02bh		;44ff
	ld l,010h		;4501
	jr z,L_4548		;4503
	cp 039h		;4505
	ld l,012h		;4507
	jr z,L_4548		;4509
	cp 042h		;450b
	ld l,014h		;450d
	jr z,L_4548		;450f
	cp 026h		;4511
	ld l,016h		;4513
	jr z,L_4548		;4515
	cp 01eh		;4517
	jr nz,L_4528		;4519
	ld a,(0c125h)		;451b   ; lee la PANTALLA
	cp 01ah		;451e   ; la pantalla 0x1A?
	ld l,00ah		;4520
	jr z,L_4548		;4522
	ld l,00ch		;4524
	jr L_4548		;4526
L_4528:
	cp 027h		;4528
	jr nz,L_4539		;452a
	ld a,(0c125h)		;452c   ; lee la PANTALLA
	cp 077h		;452f   ; la pantalla 0x77?
	ld l,018h		;4531
	jr z,L_4548		;4533
	ld l,01ah		;4535
	jr L_4548		;4537
L_4539:
	cp 01ah		;4539
	jr nz,L_454A		;453b
	ld a,(0c125h)		;453d   ; lee la PANTALLA
	cp 031h		;4540   ; la pantalla 0x31?
	ld l,006h		;4542
	jr z,L_4548		;4544
	ld l,008h		;4546
L_4548:
	scf			;4548   ; es jefe
	ret			;4549
L_454A:
	and a			;454a   ; no es jefe
	ret			;454b
L_454C:
	call bancos_10_11_12		;454c   ; el texto de p12:B4D4 con los bancos 10-11-12
	ld hl,0b4d4h		;454f   ; p12:ya_no_basta: [x][y] "これだけでは まんぞくできぬ。" 0xFE [x][y] "あいてむの こうりょくも いただく。" 0xFF: lo que escribe p00:454C
	call rotulo		;4552   ; rotulo: [x][y] letras, 0xFE [x][y] otro sitio, 0xFF acaba
	jp bancos_1_2_3		;4555   ; bancos_1_2_3: LAS PUERTAS: A, A+1 y A+2 en los tres registros del mapper y en sus copias
lee_de_la_vram:
	call vram_para_leer		;4558   ; LEE BC bytes de la VRAM de HL a DE
	call cuenta_para_otir		;455b   ; B y A: las vueltas de 256 de inir
	ex af,af'			;455e
	ld a,(00006h)		;455f   ; el puerto de datos del VDP (0x0006 de la BIOS)
	ld c,a			;4562
	ex af,af'			;4563
L_4564:
	inir		;4564   ; una tanda de B bytes...
	dec a			;4566   ; ...y otra, hasta A
	jr nz,L_4564		;4567
	ex de,hl			;4569
	ret			;456a
cuenta_para_otir:
	ex de,hl			;456b   ; DE <-> HL; B = C (lo que sobra) y A = B, +1 si sobra algo: las vueltas de 256
	ld a,c			;456c
	or a			;456d
	ld a,b			;456e
	ld b,c			;456f
	ret z			;4570
	inc a			;4571
	ret			;4572
copia_a_la_vram:
	ex de,hl			;4573   ; BC bytes de HL a la VRAM de DE
	call vram_para_escribir		;4574   ; el sitio de la VRAM
	call cuenta_para_otir		;4577   ; cuenta_para_otir: DE <-> HL; B = C (lo que sobra) y A = B, +1 si sobra algo: las vueltas de 256
	ex af,af'			;457a
	ld a,(00007h)		;457b   ; el puerto de datos del VDP (0x0007 de la BIOS)
	ld c,a			;457e
	ex af,af'			;457f
L_4580:
	otir		;4580   ; una tanda de B bytes...
	dec a			;4582   ; ...y otra, hasta A
	jr nz,L_4580		;4583
	ret			;4585
rellena_la_vram:
	push de			;4586   ; BC bytes con A desde la VRAM de HL
	push af			;4587
	call vram_para_escribir		;4588   ; el sitio de la VRAM
	ld d,c			;458b   ; D: lo que sobra de 256...
	ld a,c			;458c
	or a			;458d
	jr z,L_4591		;458e
	inc b			;4590   ; ...y B, las vueltas enteras
L_4591:
	ld a,(00007h)		;4591   ; el puerto de datos
	ld c,a			;4594
	pop af			;4595
L_4596:
	out (c),a		;4596   ; A, BC veces
	dec d			;4598
	jr nz,L_4596		;4599
	djnz L_4596		;459b
	pop de			;459d
	ret			;459e

; ----------------------------------------------------------------------
; DATOS codigo_459F: codigo que no llama nadie: escribe A en la VRAM de HL
;   (p00:45AD y el puerto de 0x0007)
;   0x459f..0x45ad  (14 bytes)
DATA_codigo_459F:
	defb 0c5h,0f5h,0cdh,0adh,045h,03ah,007h,000h,04fh,0f1h,0edh,079h,0c1h,0c9h	; 459f  ....E:..O..y..

; ======================================================================
; CODIGO 0x45ad..0x46af  (258 bytes)
; ======================================================================


vram_para_escribir:
	push bc			;45ad   ; prepara el V9938 para escribir en la direccion de VRAM HL (R#14 y el puerto 1)
	ld a,(00007h)		;45ae   ; el puerto de registros del VDP (el de datos + 1)
	inc a			;45b1
	ld c,a			;45b2   ; los dos bits altos de la direccion...
	ld a,h			;45b3
	rlca			;45b4
	rlca			;45b5
	and 003h		;45b6
	di			;45b8
	out (c),a		;45b9   ; ...en R#14
	ld a,08eh		;45bb
	out (c),a		;45bd
	ld a,l			;45bf   ; el byte bajo...
	out (c),a		;45c0
	ld a,h			;45c2   ; ...y los seis siguientes, con el bit 6: para escribir
	and 03fh		;45c3
	or 040h		;45c5
	out (c),a		;45c7
	pop bc			;45c9
	ei			;45ca
	ret			;45cb
vram_para_leer:
	push bc			;45cc
	ld a,(00007h)		;45cd   ; lo mismo que p00:45AD...
	inc a			;45d0
	ld c,a			;45d1
	ld a,h			;45d2
	rlca			;45d3
	rlca			;45d4
	and 003h		;45d5
	di			;45d7
	out (c),a		;45d8
	ld a,08eh		;45da
	out (c),a		;45dc
	ld a,l			;45de
	out (c),a		;45df
	ld a,h			;45e1   ; ...sin el bit 6: para leer
	and 03fh		;45e2
	out (c),a		;45e4
	pop bc			;45e6
	ei			;45e7
	ret			;45e8
rle_con_destino:
	ex de,hl			;45e9   ; la palabra de DE es la direccion de VRAM; detras, el RLE
	ld e,(hl)			;45ea   ; la direccion de VRAM de la palabra de DE
	inc hl			;45eb
	ld d,(hl)			;45ec
	inc hl			;45ed
	ex de,hl			;45ee
rle_a_la_vram:
	call vram_para_escribir		;45ef   ; el RLE de DE a la VRAM de HL (n con el bit 7: n bytes tal cual; sin el, repetir; 0 acaba)
	ld a,(00007h)		;45f2   ; el puerto de datos
	ld c,a			;45f5
L_45F6:
	ld a,(de)			;45f6   ; n
	and a			;45f7   ; 0: se acabo
	ret z			;45f8
	inc de			;45f9
	ld b,a			;45fa   ; con el bit 7...
	and 07fh		;45fb
	cp b			;45fd   ; ...sin el: repetir
	jr z,L_460A		;45fe
	and a			;4600   ; 0x80: otra direccion de VRAM (p00:45E9)
	jr z,rle_con_destino		;4601
	ex de,hl			;4603   ; n & 0x7F bytes tal cual
	ld b,a			;4604
	otir		;4605
	ex de,hl			;4607
	jr L_45F6		;4608
L_460A:
	ld a,(de)			;460a   ; el byte que se repite, B veces
	inc de			;460b
L_460C:
	out (c),a		;460c
	djnz L_460C		;460e
	jr L_45F6		;4610
limpia_la_pantalla:
	call oculta_los_sprites		;4612   ; LIMPIA: sin sprites, pantalla apagada...
	ld bc,000d4h		;4615   ; ...y los 256x212 puntos de la pagina 0 a cero
	push bc			;4618
	call apaga_la_pantalla		;4619   ; apaga_la_pantalla: bit 6 del registro 1 del VDP a cero
	pop bc			;461c
	call borra_la_pagina_0		;461d   ; borra_la_pagina_0: desde arriba (con BC = 0xD4: 212 lineas)
enciende_la_pantalla:
	ld a,(0f3e0h)		;4620   ; la copia de R#1 (0xF3E0), con la pantalla encendida
	or 040h		;4623
	ld b,a			;4625
	ld c,001h		;4626
	call 00047h		;4628   ; BIOS WRTVDP - Writes data in the VDP-register
	jr enciende_los_sprites		;462b   ; y los sprites tambien
apaga_la_pantalla:
	ld a,(0f3e0h)		;462d   ; bit 6 del registro 1 del VDP a cero
	and 0bfh		;4630   ; la copia de R#1, con la pantalla apagada
	ld b,a			;4632
	ld c,001h		;4633
	call 00047h		;4635   ; BIOS WRTVDP - Writes data in the VDP-register
	jr apaga_los_sprites		;4638   ; y los sprites tambien
borra_la_parte_de_abajo:
	ld hl,00098h		;463a   ; desde la linea 0x98, 60 lineas...
	ld bc,0003ch		;463d
	jr borra_y_sin_scroll		;4640
borra_la_pagina_0:
	ld hl,00000h		;4642   ; desde arriba (con BC = 0xD4: 212 lineas)
borra_y_sin_scroll:
	xor a			;4645   ; HMMV con 0 en la pagina 0...
	ld d,a			;4646
	call hmmv		;4647   ; hmmv: el color, a un lado
	ld b,000h		;464a   ; ...y R#23 (el scroll vertical) a cero
	ld c,017h		;464c
	jp 00047h		;464e   ; BIOS WRTVDP - Writes data in the VDP-register
oculta_los_sprites:
	ld hl,0f600h		;4651   ; los 128 bytes de atributos de sprite (0xF600) a 0xE0
	ld a,0e0h		;4654
	ld bc,00080h		;4656
	call rellena_la_vram		;4659   ; rellena_la_vram: BC bytes con A desde la VRAM de HL
apaga_los_sprites:
	ld a,(0ffe7h)		;465c   ; la copia de R#8 (0xFFE7)...
	or 002h		;465f
	ld b,a			;4661
	ld c,008h		;4662
	jp 00047h		;4664   ; BIOS WRTVDP - Writes data in the VDP-register
enciende_los_sprites:
	ld a,(0ffe7h)		;4667   ; la copia de R#8 sin el bit 1: se ven los sprites
	and 0fdh		;466a
	ld b,a			;466c
	ld c,008h		;466d
	jp 00047h		;466f   ; BIOS WRTVDP - Writes data in the VDP-register
pon_un_color:
	push bc			;4672   ; color A de la paleta = D (RB) y E (G)
	push hl			;4673
	ld b,a			;4674   ; el numero de color
	ld a,(00007h)		;4675   ; el puerto de registros
	inc a			;4678
	ld c,a			;4679
	di			;467a
	out (c),b		;467b   ; R#16 = el color...
	ld a,090h		;467d
	out (c),a		;467f
	inc c			;4681   ; ...y el puerto de la paleta: RB y G
	out (c),d		;4682
	push af			;4684
	pop af			;4685
	out (c),e		;4686
	dec c			;4688
	ld hl,0f680h		;4689   ; y tambien en la copia de la paleta en la VRAM (0xF680 + 2*color)
	ld a,b			;468c
	add a,a			;468d
	add a,l			;468e
	ld l,a			;468f
	call vram_para_escribir		;4690   ; vram_para_escribir: prepara el V9938 para escribir en la direccion de VRAM HL (R#14 y el puerto 1)
	dec c			;4693
	out (c),d		;4694   ; RB y G a la VRAM
	out (c),e		;4696
	pop hl			;4698
	pop bc			;4699
	ei			;469a
	ret			;469b
paleta_inicial:
	ld hl,046afh		;469c   ; los 16 colores de p00:46AF
	ld b,010h		;469f
	xor a			;46a1
L_46A2:
	ld d,(hl)			;46a2   ; [RB][G] de cada color
	inc hl			;46a3
	ld e,(hl)			;46a4
	inc hl			;46a5
	push af			;46a6
	call pon_un_color		;46a7   ; pon_un_color: color A de la paleta = D (RB) y E (G)
	pop af			;46aa
	inc a			;46ab   ; el siguiente color
	djnz L_46A2		;46ac
	ret			;46ae

; ----------------------------------------------------------------------
; DATOS paleta_inicial: los 16 colores [RB][G] que pone p00:469C; lo leen
;   p00:46A2 (32 bytes)
;   0x46af..0x46cf  (32 bytes)
DATA_paleta_inicial:
	defb 000h,000h	; 46af
	defb 000h,000h	; 46b1
	defb 011h,006h	; 46b3
	defb 033h,007h	; 46b5
	defb 017h,001h	; 46b7
	defb 027h,003h	; 46b9
	defb 051h,001h	; 46bb
	defb 027h,006h	; 46bd
	defb 071h,001h	; 46bf
	defb 073h,003h	; 46c1
	defb 061h,006h	; 46c3
	defb 064h,006h	; 46c5
	defb 011h,004h	; 46c7
	defb 065h,002h	; 46c9
	defb 077h,007h	; 46cb
	defb 077h,007h	; 46cd

; ======================================================================
; CODIGO 0x46cf..0x4afb  (1068 bytes)
; ======================================================================


pon_paleta:
	ld a,(hl)			;46cf   ; lista [color][RB][G] ... 0xFF
	inc hl			;46d0
	inc a			;46d1   ; 0xFF acaba
	ret z			;46d2
	dec a			;46d3
	ld d,(hl)			;46d4   ; RB y G
	inc hl			;46d5
	ld e,(hl)			;46d6
	inc hl			;46d7
	call pon_un_color		;46d8   ; pon_un_color: color A de la paleta = D (RB) y E (G)
	jr pon_paleta		;46db
espera_al_vdp:
	ld a,002h		;46dd   ; espera a que el V9938 acabe la orden (bit 0 de S#2)
	call lee_estado_del_vdp		;46df   ; lee_estado_del_vdp: lee el registro de estado A del V9938
	rra			;46e2   ; el bit 0 de S#2 (CE): la orden sigue en marcha
	jr c,espera_al_vdp		;46e3
	ret			;46e5
lee_estado_del_vdp:
	push bc			;46e6   ; lee el registro de estado A del V9938
	push hl			;46e7
	ld hl,(00006h)		;46e8   ; los puertos del VDP (0x0006) + 1
	inc h			;46eb
	inc l			;46ec
	ld c,h			;46ed
	di			;46ee
	out (c),a		;46ef   ; R#15 = A...
	ld a,08fh		;46f1
	out (c),a		;46f3
	ld c,l			;46f5   ; ...se lee el registro de estado...
	in a,(c)		;46f6
	push af			;46f8
	xor a			;46f9   ; ...y R#15 vuelve a 0 (la BIOS lo espera asi)
	ld c,h			;46fa
	out (c),a		;46fb
	ld a,08fh		;46fd
	out (c),a		;46ff
	pop af			;4701
	pop hl			;4702
	pop bc			;4703
	ei			;4704
	ret			;4705
raya_horizontal:
	call espera_al_vdp		;4706   ; orden LINE del V9938 (MAJ = 0): de (H, L), B-1 puntos
	push bc			;4709
	ld a,(00007h)		;470a
	inc a			;470d
	ld c,a			;470e
	ld a,024h		;470f   ; desde R#36...
	di			;4711
	out (c),a		;4712
	ld a,091h		;4714
	out (c),a		;4716
	inc c			;4718   ; ...el puerto de los registros seguidos (R#17 auto)
	inc c			;4719
	out (c),h		;471a   ; DX = H
	xor a			;471c
	out (c),a		;471d
	out (c),l		;471f   ; DY = L
	out (c),a		;4721
	pop hl			;4723   ; lo largo: B - 1 puntos
	dec h			;4724
	out (c),h		;4725
	xor a			;4727
	out (c),a		;4728
	xor a			;472a
	out (c),a		;472b
	out (c),a		;472d
	out (c),l		;472f
	out (c),a		;4731
	ld a,070h		;4733   ; LINE con IMP
	out (c),a		;4735
	ei			;4737
	ret			;4738
raya_vertical:
	call espera_al_vdp		;4739   ; orden LINE con MAJ = 1: la raya va hacia abajo
	push bc			;473c
	ld a,(00007h)		;473d
	inc a			;4740
	ld c,a			;4741
	ld a,024h		;4742
	di			;4744
	out (c),a		;4745
	ld a,091h		;4747
	out (c),a		;4749
	inc c			;474b
	inc c			;474c
	out (c),h		;474d
	xor a			;474f
	out (c),a		;4750
	out (c),l		;4752
	out (c),a		;4754
	pop hl			;4756
	dec h			;4757
	out (c),h		;4758
	xor a			;475a
	out (c),a		;475b
	xor a			;475d
	out (c),a		;475e
	out (c),a		;4760
	out (c),l		;4762
	inc a			;4764   ; ARG con MAJ = 1: el lado largo es el vertical
	out (c),a		;4765
	ld a,070h		;4767
	out (c),a		;4769
	ei			;476b
	ret			;476c
marco:
	ld b,e			;476d   ; cuatro rayas: un marco de E por D en HL
	call raya_vertical_guardando		;476e   ; la raya de la izquierda (E puntos)
	ld b,d			;4771
	call raya_horizontal_guardando		;4772   ; la de arriba (D puntos)
	push hl			;4775   ; la de abajo: L + E - 1
	ld a,l			;4776
	dec a			;4777
	add a,e			;4778
	ld l,a			;4779
	ld b,d			;477a
	call raya_horizontal_guardando		;477b
	pop hl			;477e
	ld a,h			;477f   ; la de la derecha: H + D - 1
	dec a			;4780
	add a,d			;4781
	ld h,a			;4782
	ld b,e			;4783
	jp raya_vertical_guardando		;4784
raya_vertical_guardando:
	push hl			;4787
	push de			;4788
	push bc			;4789
	call raya_vertical		;478a   ; raya_vertical: orden LINE con MAJ = 1: la raya va hacia abajo
	pop bc			;478d
	pop de			;478e
	pop hl			;478f
	ret			;4790
raya_horizontal_guardando:
	push hl			;4791
	push de			;4792
	push bc			;4793
	call raya_horizontal		;4794   ; raya_horizontal: orden LINE del V9938 (MAJ = 0): de (H, L), B-1 puntos
	pop bc			;4797
	pop de			;4798
	pop hl			;4799
	ret			;479a
hmmv:
	ex af,af'			;479b   ; el color, a un lado
	call espera_al_vdp		;479c   ; espera_al_vdp: espera a que el V9938 acabe la orden (bit 0 de S#2)
	push bc			;479f
	ld a,(00007h)		;47a0
	inc a			;47a3
	ld c,a			;47a4
	ld a,024h		;47a5   ; desde R#36
	di			;47a7
	out (c),a		;47a8
	ld a,091h		;47aa
	out (c),a		;47ac
	inc c			;47ae
	inc c			;47af
	out (c),h		;47b0   ; DX = H
	xor a			;47b2
	out (c),a		;47b3
	out (c),l		;47b5   ; DY = L y la pagina D
	out (c),d		;47b7
	pop hl			;47b9   ; NX = B (0 = 256)
	out (c),h		;47ba
	cp h			;47bc
	jr nz,L_47C0		;47bd
	inc a			;47bf
L_47C0:
	out (c),a		;47c0
	xor a			;47c2
	out (c),l		;47c3   ; NY = C (0 = 256)
	cp l			;47c5
	jr nz,L_47C9		;47c6
	inc a			;47c8
L_47C9:
	out (c),a		;47c9
	ex af,af'			;47cb   ; CLR = el color
	out (c),a		;47cc
	xor a			;47ce
	out (c),a		;47cf
	ld a,0c0h		;47d1   ; HMMV
	out (c),a		;47d3
	ei			;47d5
	ret			;47d6
hmmm:
	ex af,af'			;47d7   ; orden HMMM del V9938: copia BxC puntos de (H, L) a (D, E); A lleva las paginas
	call espera_al_vdp		;47d8   ; espera_al_vdp: espera a que el V9938 acabe la orden (bit 0 de S#2)
	push bc			;47db   ; desde R#32 (SX)
	ld a,(00007h)		;47dc
	inc a			;47df
	ld c,a			;47e0
	ld a,020h		;47e1
	di			;47e3
	out (c),a		;47e4
	ld a,091h		;47e6
	out (c),a		;47e8
	inc c			;47ea
	inc c			;47eb
	out (c),h		;47ec   ; SX = H
	xor a			;47ee
	out (c),a		;47ef
	out (c),l		;47f1   ; SY = L...
	ex af,af'			;47f3
	ld l,a			;47f4   ; ...y la pagina de origen: bits 0-1 de A
	and 003h		;47f5
	out (c),a		;47f7
	out (c),d		;47f9   ; DX = D
	xor a			;47fb
	out (c),a		;47fc
	out (c),e		;47fe   ; DY = E...
	ld a,l			;4800   ; ...y la pagina de destino: bits 2-3 de A
	rra			;4801
	rra			;4802
	and 003h		;4803
	out (c),a		;4805
	pop hl			;4807
	out (c),h		;4808   ; NX = B
	xor a			;480a
	out (c),a		;480b
	out (c),l		;480d   ; NY = C
	out (c),a		;480f
	out (c),a		;4811
	out (c),a		;4813
	ld a,0d0h		;4815   ; HMMM
	out (c),a		;4817
	ei			;4819
	ret			;481a
lmmm:
	ex af,af'			;481b   ; orden LMMM del V9938: lo mismo con operacion logica (A: paginas y operacion; 8 = TIMP)
	call espera_al_vdp		;481c   ; espera_al_vdp: espera a que el V9938 acabe la orden (bit 0 de S#2)
	push bc			;481f   ; desde R#32
	ld a,(00007h)		;4820
	inc a			;4823
	ld c,a			;4824
	ld a,020h		;4825
	di			;4827
	out (c),a		;4828
	ld a,091h		;482a
	out (c),a		;482c
	inc c			;482e
	inc c			;482f
	out (c),h		;4830   ; SX = H
	xor a			;4832
	out (c),a		;4833
	out (c),l		;4835   ; SY = L...
	ex af,af'			;4837
	rlca			;4838   ; ...y la pagina de origen: bits 6-7 de A
	rlca			;4839
	ld l,a			;483a
	and 003h		;483b
	out (c),a		;483d
	out (c),d		;483f   ; DX = D
	xor a			;4841
	out (c),a		;4842
	out (c),e		;4844   ; DY = E...
	ld a,l			;4846   ; ...y la pagina de destino: bits 4-5
	ld e,a			;4847
	rlca			;4848
	rlca			;4849
	and 003h		;484a
	out (c),a		;484c
	pop hl			;484e
	out (c),h		;484f   ; NX = B
	xor a			;4851
	out (c),a		;4852
	out (c),l		;4854   ; NY = C
	out (c),a		;4856
	out (c),a		;4858
	out (c),a		;485a
	ld a,e			;485c   ; LMMM con la operacion de los bits 0-3 (8 = TIMP)
	rra			;485d
	rra			;485e
	and 00fh		;485f
	or 090h		;4861
	out (c),a		;4863
	ei			;4865
	ret			;4866
sube_letras:
	call sube_una_letra		;4867   ; B letras de 1 bit de HL, en color C, a la hoja de la pagina 1 desde (D, E)
	call siguiente_sitio		;486a   ; siguiente_sitio: D + 8; al dar la vuelta, E + 8
	djnz sube_letras		;486d   ; la siguiente letra
	ret			;486f
sube_una_letra:
	push bc			;4870
	push de			;4871
	push hl			;4872
	push de			;4873   ; 1 bit a 4 bits, en 0xE800
	call expande_letra		;4874   ; expande_letra: una letra de 1 bit a 4 bits, en 0xE800, con el color C
	pop de			;4877
	ld b,d			;4878   ; D y E cambiados...
	ld d,e			;4879
	ld e,b			;487a
	srl d		;487b   ; ...y (y*256 + x)/2: el byte de la VRAM...
	rr e		;487d
	ld a,d			;487f   ; ...en la pagina 1 (0x8000)
	add a,080h		;4880
	ld d,a			;4882
	ld hl,0e800h		;4883   ; los 32 bytes de 0xE800
	call sube_un_dibujo		;4886   ; sube_un_dibujo: un dibujo de 8x8 a 4 bits (32 bytes) de HL a la VRAM de DE
	pop hl			;4889
	ld bc,00008h		;488a   ; 8 bytes de fuente por letra
	add hl,bc			;488d
	pop de			;488e
	pop bc			;488f
	ret			;4890
sube_un_dibujo:
	push de			;4891   ; un dibujo de 8x8 a 4 bits (32 bytes) de HL a la VRAM de DE
	ld b,008h		;4892   ; 8 filas
L_4894:
	push bc			;4894
	ld bc,00004h		;4895   ; de 4 bytes (8 puntos)
	call copia_a_la_vram		;4898   ; copia_a_la_vram: BC bytes de HL a la VRAM de DE
	ex de,hl			;489b
	ld bc,00080h		;489c   ; la fila de abajo: 128 bytes de VRAM
	add hl,bc			;489f
	ex de,hl			;48a0
	pop bc			;48a1
	djnz L_4894		;48a2
	pop de			;48a4
	ret			;48a5
sube_dibujos:
	push bc			;48a6   ; B dibujos de 8x8 a 4 bits de HL a la VRAM de DE
	call sube_un_dibujo		;48a7   ; sube_un_dibujo: un dibujo de 8x8 a 4 bits (32 bytes) de HL a la VRAM de DE
	ld a,004h		;48aa   ; el siguiente, 4 bytes (8 puntos) a la derecha...
	add a,e			;48ac
	cp 080h		;48ad   ; ...y al llegar al borde (0x80), 8 lineas mas abajo
	jr nz,L_48B6		;48af
	ld a,004h		;48b1
	add a,d			;48b3
	ld d,a			;48b4
	xor a			;48b5
L_48B6:
	ld e,a			;48b6
	pop bc			;48b7
	djnz sube_dibujos		;48b8   ; el siguiente dibujo
	ret			;48ba
sube_un_dibujo_de_16:
	push de			;48bb
	ld b,010h		;48bc   ; 16 filas
L_48BE:
	push bc			;48be
	ld bc,00008h		;48bf   ; de 8 bytes (16 puntos)
	call copia_a_la_vram		;48c2   ; copia_a_la_vram: BC bytes de HL a la VRAM de DE
	ex de,hl			;48c5
	ld bc,00080h		;48c6   ; la fila de abajo
	add hl,bc			;48c9
	ex de,hl			;48ca
	pop bc			;48cb
	djnz L_48BE		;48cc
	pop de			;48ce
	ret			;48cf
sube_dibujos_de_16:
	push bc			;48d0
	call sube_un_dibujo_de_16		;48d1
	ld a,008h		;48d4   ; el siguiente, 16 puntos (8 bytes) a la derecha
	add a,e			;48d6   ; el siguiente, 8 bytes (16 puntos) a la derecha...
	cp 080h		;48d7   ; al llegar a 0x80 (256 puntos), 16 lineas mas abajo
	jr nz,L_48E0		;48d9
	ld a,008h		;48db   ; ...y al llegar al borde, 16 lineas mas abajo
	add a,d			;48dd
	ld d,a			;48de
	xor a			;48df
L_48E0:
	ld e,a			;48e0
	pop bc			;48e1
	djnz sube_dibujos_de_16		;48e2   ; el siguiente dibujo
	ret			;48e4
expande_letra:
	ld b,008h		;48e5   ; una letra de 1 bit a 4 bits, en 0xE800, con el color C
	ld de,0e800h		;48e7
L_48EA:
	push bc			;48ea
	push hl			;48eb
	ex de,hl			;48ec
	ld a,(de)			;48ed   ; la fila de la letra
	ld d,a			;48ee
	ld b,004h		;48ef   ; 8 puntos, de dos en dos
L_48F1:
	ld a,c			;48f1   ; el punto encendido, en color C...
	rl d		;48f2
	jr c,L_48F7		;48f4
	xor a			;48f6   ; ...apagado, 0
L_48F7:
	rld		;48f7   ; al nibble...
	ld a,c			;48f9
	rl d		;48fa
	jr c,L_48FF		;48fc
	xor a			;48fe
L_48FF:
	rld		;48ff   ; ...y el siguiente punto al otro nibble
	inc hl			;4901   ; el byte siguiente
	djnz L_48F1		;4902
	ex de,hl			;4904
	pop hl			;4905
	inc hl			;4906   ; la fila siguiente de la letra
	pop bc			;4907
	djnz L_48EA		;4908
	ret			;490a
L_490B:
	ld c,080h		;490b   ; con C = 0x80: la segunda copia de la fuente (color 3)
	jr rotulo_en_color		;490d
rotulo:
	ld c,0ffh		;490f   ; [x][y] letras, 0xFE [x][y] otro sitio, 0xFF acaba
	jr rotulo_en_color		;4911
L_4913:
	ld c,000h		;4913   ; con C = 0: letras en blanco (el dibujo 0)
rotulo_en_color:
	ld d,(hl)			;4915   ; [x][y]: donde empieza
	inc hl			;4916
	ld e,(hl)			;4917
	inc hl			;4918
escribe_letras:
	ld a,(hl)			;4919
	inc hl			;491a
	cp 0ffh		;491b   ; 0xFF acaba
	ret z			;491d
	cp 0feh		;491e   ; 0xFE: otro sitio
	jr z,rotulo_en_color		;4920
	call escribe_una_letra		;4922
	ld a,d			;4925   ; la siguiente, 8 puntos a la derecha
	add a,008h		;4926
	ld d,a			;4928
	jr escribe_letras		;4929
pinta_lista_de_dibujos:
	push de			;492b   ; numeros de dibujo; 0xFE, otra fila; 0xFF acaba
L_492C:
	ld a,(hl)			;492c   ; numero de dibujo
	inc hl			;492d
	ld c,a			;492e
	inc a			;492f   ; 0xFF acaba
	jr z,L_4950		;4930
	inc a			;4932   ; 0xFE: la fila siguiente...
	jr nz,L_493C		;4933
	pop de			;4935   ; ...8 lineas mas abajo, desde el principio
	ld a,008h		;4936
	add a,e			;4938
	ld e,a			;4939
	jr pinta_lista_de_dibujos		;493a
L_493C:
	ld a,c			;493c   ; el dibujo c de la fila 0xA0 de la hoja...
	sla a		;493d
	sla a		;493f
	sla a		;4941
	push hl			;4943
	ld h,a			;4944
	ld l,0a0h		;4945
	call copia_8x8_en_la_hoja		;4947   ; ...copiado de 8x8 en la pagina 1
	call siguiente_sitio		;494a   ; siguiente_sitio: D + 8; al dar la vuelta, E + 8
	pop hl			;494d
	jr L_492C		;494e
L_4950:
	pop de			;4950
	ret			;4951
escribe_una_letra:
	push bc			;4952
	push hl			;4953
	push de			;4954
	and a			;4955   ; el 0 es un espacio: el dibujo de (0, 0)
	ld hl,00000h		;4956
	jr z,L_496F		;4959
	dec c			;495b   ; con C = 0, tambien
	inc c			;495c
	jr z,L_496F		;495d
	add a,010h		;495f   ; la letra c es el dibujo c + 0x10...
	call sitio_del_dibujo		;4961   ; sitio_del_dibujo: H = (A & 31)*8, L = (A >> 5)*8: donde esta el dibujo A en la hoja
	ld a,c			;4964   ; ...30 lineas mas abajo, o 0x48 con C = 0x80
	cp 080h		;4965
	ld a,030h		;4967
	jr nz,L_496D		;4969
	ld a,048h		;496b
L_496D:
	add a,l			;496d
	ld l,a			;496e
L_496F:
	ld bc,00808h		;496f   ; 8x8 puntos
	ld a,001h		;4972   ; HMMM de la pagina 1 a la 0
	call hmmm		;4974   ; hmmm: orden HMMM del V9938: copia BxC puntos de (H, L) a (D, E); A lleva las paginas
	pop de			;4977
	pop hl			;4978
	pop bc			;4979
	ret			;497a
pon_dibujo:
	push bc			;497b   ; el dibujo A de la hoja (pagina 1) en (D, E) de la pagina 0
	push hl			;497c
	push de			;497d
	call sitio_del_dibujo		;497e   ; sitio_del_dibujo: H = (A & 31)*8, L = (A >> 5)*8: donde esta el dibujo A en la hoja
	ld bc,00808h		;4981   ; 8x8, de la pagina 1 a la 0
	ld a,001h		;4984
	call hmmm		;4986   ; hmmm: orden HMMM del V9938: copia BxC puntos de (H, L) a (D, E); A lleva las paginas
	pop de			;4989
	pop hl			;498a
	pop bc			;498b
	ret			;498c
pon_dibujo_transparente:
	push bc			;498d   ; lo mismo con LMMM + TIMP: el color 0 no pinta
	push hl			;498e
	push de			;498f
	call sitio_del_dibujo		;4990   ; sitio_del_dibujo: H = (A & 31)*8, L = (A >> 5)*8: donde esta el dibujo A en la hoja
	ld bc,00808h		;4993   ; 8x8 con LMMM y TIMP, de la pagina 1 a la 0
	ld a,048h		;4996
	call lmmm		;4998   ; lmmm: orden LMMM del V9938: lo mismo con operacion logica (A: paginas y operacion; 8 = TIMP)
	pop de			;499b
	pop hl			;499c
	pop bc			;499d
	ret			;499e
copia_dibujo_en_la_hoja:
	push bc			;499f
	push hl			;49a0
	push de			;49a1
	call sitio_del_dibujo		;49a2   ; sitio_del_dibujo: H = (A & 31)*8, L = (A >> 5)*8: donde esta el dibujo A en la hoja
	ld bc,00808h		;49a5   ; 8x8, dentro de la pagina 1
	ld a,005h		;49a8
	call hmmm		;49aa   ; hmmm: orden HMMM del V9938: copia BxC puntos de (H, L) a (D, E); A lleva las paginas
	pop de			;49ad
	pop hl			;49ae
	pop bc			;49af
	ret			;49b0
copia_8x8_en_la_hoja:
	push bc			;49b1
	push hl			;49b2
	push de			;49b3
	ld bc,00808h		;49b4   ; 8x8 de (H, L) a (D, E), dentro de la pagina 1
	ld a,005h		;49b7
	call hmmm		;49b9   ; hmmm: orden HMMM del V9938: copia BxC puntos de (H, L) a (D, E); A lleva las paginas
	pop de			;49bc
	pop hl			;49bd
	pop bc			;49be
	ret			;49bf
sitio_del_dibujo:
	ld b,a			;49c0   ; H = (A & 31)*8, L = (A >> 5)*8: donde esta el dibujo A en la hoja
	and 01fh		;49c1
	add a,a			;49c3
	add a,a			;49c4
	add a,a			;49c5   ; x = (A & 31)*8
	ld h,a			;49c6
	ld a,b			;49c7   ; y = (A >> 5)*8
	and 0e0h		;49c8
	rrca			;49ca
	rrca			;49cb
	ld l,a			;49cc
	ret			;49cd
siguiente_sitio:
	ld a,d			;49ce   ; D + 8; al dar la vuelta, E + 8
	add a,008h		;49cf   ; 8 puntos a la derecha...
	ld d,a			;49d1
	ret nz			;49d2
	ld a,e			;49d3   ; ...y al dar la vuelta, 8 mas abajo
	add a,008h		;49d4
	ld e,a			;49d6
	ret			;49d7
sube_la_hoja_de_la_pantalla:
	call sube_la_hoja		;49d8   ; sube_la_hoja: el juego de dibujos de la pantalla (0xC148) y su lista de subida
	ld a,(0c125h)		;49db   ; lee la PANTALLA
	cp 073h		;49de   ; la pantalla 0x73?
	jr z,L_4A51		;49e0   ; las pantallas 0x73-0x76...
	cp 074h		;49e2   ; la pantalla 0x74?
	jr z,L_4A51		;49e4
	cp 075h		;49e6   ; la pantalla 0x75?
	jr z,L_4A51		;49e8
	cp 076h		;49ea   ; la pantalla 0x76?
	jr z,L_4A51		;49ec
	cp 089h		;49ee   ; la pantalla 0x89?
	jr z,L_49FF		;49f0   ; ...y las de la estatua (0x89, 0x15, 0x28 y 0x60)
	cp 015h		;49f2   ; la pantalla 0x15?
	jr z,L_49FF		;49f4
	cp 028h		;49f6   ; la pantalla 0x28?
	jr z,L_49FF		;49f8
	cp 060h		;49fa   ; la pantalla 0x60?
	jp nz,bancos_1_2_3		;49fc   ; bancos_1_2_3: LAS PUERTAS: A, A+1 y A+2 en los tres registros del mapper y en sus copias
L_49FF:
	call bancos_10_11_12		;49ff   ; LA ESTATUA: su mitad derecha es la izquierda del reves
	ld hl,0a17eh		;4a02   ; p12:volteados_A17E: 16 dibujos de 8x8 que p00:4A1B sube del reves (desde el 17): la mitad derecha de la estatua; se solapan 4 bloques (0xA17E-0xA37E, 0xA17E-0xA51E, 0xA35E-0xA4BE, 0xA4FE-0xA5FE)
	ld de,08044h		;4a05   ; 16 dibujos de p12:A17E al dibujo 17 de la hoja
	ld b,010h		;4a08
	call sube_dibujos_volteados		;4a0a
	ld hl,0a35eh		;4a0d   ; y 11 de p12:A35E al dibujo 96
	ld de,08c00h		;4a10
	ld b,00bh		;4a13
	call sube_dibujos_volteados		;4a15
	jp bancos_1_2_3		;4a18   ; bancos_1_2_3: LAS PUERTAS: A, A+1 y A+2 en los tres registros del mapper y en sus copias
sube_dibujos_volteados:
	push bc			;4a1b
	push de			;4a1c
	ld de,0e803h		;4a1d   ; la fila, del reves, en 0xE800
	ld c,008h		;4a20   ; 8 filas
L_4A22:
	ld b,004h		;4a22   ; de 4 bytes
L_4A24:
	ld a,(hl)			;4a24   ; los dos puntos del byte cambiados de sitio...
	rrca			;4a25
	rrca			;4a26
	rrca			;4a27
	rrca			;4a28
	ld (de),a			;4a29
	inc hl			;4a2a
	dec de			;4a2b   ; ...y el byte de la otra punta
	djnz L_4A24		;4a2c
	ld a,008h		;4a2e   ; la fila siguiente
	call de_mas_a		;4a30
	dec c			;4a33
	jr nz,L_4A22		;4a34
	pop de			;4a36
	push hl			;4a37
	ld hl,0e800h		;4a38   ; el dibujo volteado a la VRAM
	call sube_un_dibujo		;4a3b   ; sube_un_dibujo: un dibujo de 8x8 a 4 bits (32 bytes) de HL a la VRAM de DE
	pop hl			;4a3e
	ld a,e			;4a3f   ; el siguiente, 8 puntos a la derecha (y al borde, 8 mas abajo)
	add a,004h		;4a40
	ld e,a			;4a42
	cp 080h		;4a43
	jr nz,L_4A4D		;4a45
	ld e,000h		;4a47
	ld a,d			;4a49
	add a,004h		;4a4a
	ld d,a			;4a4c
L_4A4D:
	pop bc			;4a4d
	djnz sube_dibujos_volteados		;4a4e
	ret			;4a50
L_4A51:
	call bancos_13_14_15		;4a51   ; LAS PANTALLAS 0x73-0x76: sus dibujos de p15
	ld hl,09ec7h		;4a54   ; p14:sobra_9EC7: 313 bytes detras de la figura a pelo de 0x9BA2 que no lee nadie: p00:4BD0 solo copia una estructura para las pantallas 0x31 y 0x34 (0xE804 = 1)
	ld de,0d000h		;4a57   ; apunta a las fichas de los enemigos (13 de 0x80)
	ld b,00ch		;4a5a
	call sube_dibujos		;4a5c   ; sube_dibujos: B dibujos de 8x8 a 4 bits de HL a la VRAM de DE
	ld hl,0b785h		;4a5f
	ld b,001h		;4a62
	call sube_dibujos		;4a64   ; sube_dibujos: B dibujos de 8x8 a 4 bits de HL a la VRAM de DE
	ld hl,0b725h		;4a67
	ld b,001h		;4a6a
	call sube_dibujos		;4a6c   ; sube_dibujos: B dibujos de 8x8 a 4 bits de HL a la VRAM de DE
	ld hl,0a047h		;4a6f   ; p15:rotulo_del_panel: numeros de dibujo, 0xFE otra fila, 0xFF acaba: el rotulo del panel que p00:4A6F pinta con p00:492B en (0xA8, 0)
	ld de,000a8h		;4a72   ; y el rotulo de p15:A047 en (0xA8, 0)
	call pinta_lista_de_dibujos		;4a75   ; pinta_lista_de_dibujos: numeros de dibujo; 0xFE, otra fila; 0xFF acaba
	jp bancos_1_2_3		;4a78   ; bancos_1_2_3: LAS PUERTAS: A, A+1 y A+2 en los tres registros del mapper y en sus copias
sube_la_hoja:
	call bancos_7_8_9		;4a7b   ; el juego de dibujos de la pantalla (0xC148) y su lista de subida
	ld a,(0c131h)		;4a7e   ; lee el plano de la pantalla (0, el exterior)
	and a			;4a81   ; en una cueva (0xC131), su nibble desde 0x6000...
	jr z,L_4A8A		;4a82
	dec a			;4a84
	ld hl,06000h		;4a85   ; p07:juego_de_cada_plano: 18 nibbles, uno por plano alterno (0xC131 - 1; par = nibble alto): el juego de dibujos
	jr L_4A90		;4a88
L_4A8A:
	ld a,(0c125h)		;4a8a   ; ...y en el exterior, el de la pantalla desde 0x6009
	ld hl,06009h		;4a8d   ; p07:juego_de_cada_pantalla: un nibble por pantalla (pantalla/2; par = nibble alto): el juego de dibujos (0xC148)
L_4A90:
	ld c,a			;4a90   ; el nibble: alto para los pares...
	srl a		;4a91
	call hl_mas_a		;4a93
	ld a,(hl)			;4a96
	bit 0,c		;4a97
	jr nz,L_4A9F		;4a99
	rra			;4a9b
	rra			;4a9c
	rra			;4a9d
	rra			;4a9e
L_4A9F:
	and 00fh		;4a9f   ; ...bajo para los impares
	ld c,a			;4aa1
	ld a,(0c148h)		;4aa2   ; lee el juego de dibujos de la pantalla
	cp c			;4aa5   ; si ya esta subido, nada
	jp z,bancos_1_2_3		;4aa6   ; bancos_1_2_3: LAS PUERTAS: A, A+1 y A+2 en los tres registros del mapper y en sus copias
	ld a,c			;4aa9   ; el juego nuevo
	ld (0c148h),a		;4aaa   ; guarda el juego de dibujos de la pantalla
	push af			;4aad
	call pon_bancos_del_juego		;4aae   ; los bancos de su lista (p00:4AFB)
	pop af			;4ab1
	ld de,054ech		;4ab2   ; lista_de_cada_juego: 13 punteros, uno por juego de dibujos, a su lista de subida
	call palabra_de_la_tabla		;4ab5   ; su lista: p00:54EC + 2*juego
	ex de,hl			;4ab8
L_4AB9:
	ld a,(hl)			;4ab9   ; [destino]
	cp 0ffh		;4aba   ; 0xFF acaba
	jp z,bancos_1_2_3		;4abc   ; bancos_1_2_3: LAS PUERTAS: A, A+1 y A+2 en los tres registros del mapper y en sus copias
	cp 0feh		;4abf   ; 0xFE: lo que queda, de los bancos 10-11-12
	jr nz,L_4AC8		;4ac1
	call bancos_10_11_12		;4ac3
	inc hl			;4ac6
	ld a,(hl)			;4ac7
L_4AC8:
	rra			;4ac8   ; el destino en la hoja: fila (bits 5-7)...
	rra			;4ac9
	rra			;4aca
	and 01ch		;4acb
	or 080h		;4acd
	ld d,a			;4acf
	ld a,(hl)			;4ad0   ; ...y columna (bits 0-4)
	and 01fh		;4ad1
	add a,a			;4ad3
	add a,a			;4ad4
	ld e,a			;4ad5
	inc hl			;4ad6
	ld b,(hl)			;4ad7   ; [cuantos]
	inc hl			;4ad8
	ld a,(hl)			;4ad9   ; [fuente]
	inc hl			;4ada
	push hl			;4adb
	ld h,(hl)			;4adc
	ld l,a			;4add
	call sube_dibujos		;4ade   ; sube_dibujos: B dibujos de 8x8 a 4 bits de HL a la VRAM de DE
	pop hl			;4ae1
	inc hl			;4ae2   ; la entrada siguiente
	jr L_4AB9		;4ae3
sube_iconos_y_hoja_comun:
	call sube_los_38_iconos		;4ae5   ; los iconos y la lista comun de p07:6050
	ld hl,06050h		;4ae8   ; p07:lista_hoja_6050: lista comun: [destino][cuantos][fuente], 0xFE pasa a los bancos 10-11-12, 0xFF acaba (p00:4AB9)
	jr L_4AB9		;4aeb

; ----------------------------------------------------------------------
; Los 38 dibujos de los objetos, 16x16 a 4 bits (128 bytes cada uno), de
; p07:630A a la VRAM 0xB800: la pagina 1 desde la linea 0x70, 16 por fila.
; El objeto n es el dibujo n-1 (p01:7962).
; ----------------------------------------------------------------------
sube_los_38_iconos:
	ld de,0b800h		;4aed   ; a la pagina 1 desde la linea 0x70
	ld hl,0630ah		;4af0   ; p07:iconos_de_objetos: 38 dibujos de 16x16 a 4 bits, 128 bytes cada uno: el objeto n es el dibujo n-1; p00:4AED los sube a la VRAM 0xB800; se solapan 3 bloques (0x630A-0x760A, 0x758A-0x75CA, 0x75CA-0x764A)
	ld b,026h		;4af3   ; 38 dibujos
	jp sube_dibujos_de_16		;4af5
pon_bancos_del_juego:
	call despacha		;4af8   ; despacha: Salta a la entrada A de la tabla de palabras que va pegada detras del `call`.

; ----------------------------------------------------------------------
; DATOS tabla_4AFB: 13 destinos del despachador de 0x425F (call en p00:4AF8):
;   0x42DE, 0x42C2, 0x42DE, 0x42E4, 0x42E4, 0x42E4, 0x42E4, 0x42E4 ...; lo
;   leen p00:4AF8 (26 bytes)
;   0x4afb..0x4b15  (26 bytes)
DATA_tabla_4AFB:
	defb 0deh,042h	; 4afb
	defb 0c2h,042h	; 4afd
	defb 0deh,042h	; 4aff
	defb 0e4h,042h	; 4b01
	defb 0e4h,042h	; 4b03
	defb 0e4h,042h	; 4b05
	defb 0e4h,042h	; 4b07
	defb 0e4h,042h	; 4b09
	defb 0e4h,042h	; 4b0b
	defb 0eah,042h	; 4b0d
	defb 0eah,042h	; 4b0f
	defb 0eah,042h	; 4b11
	defb 0eah,042h	; 4b13

; ======================================================================
; CODIGO 0x4b15..0x4ce4  (463 bytes)
; ======================================================================


sube_los_juegos_de_jefe:
	call bancos_13_14_15		;4b15   ; LOS JEFES: p13:6620 + pantalla dice cual (0, ninguno)
	ld a,(0c125h)		;4b18   ; lee la PANTALLA
	ld hl,06620h		;4b1b   ; p13:jefe_de_cada_pantalla: un byte por pantalla: los graficos de jefe que sube p00:4B15 (0 = ninguno); los cuatro ultimos son los primeros de p13:66AA; se solapan 2 bloques (0x6620-0x66AE, 0x66AA-0x66D2)
	call hl_mas_a		;4b1e
	ld a,(hl)			;4b21
	and a			;4b22
	jr z,L_4B5B		;4b23
	dec a			;4b25   ; p13:66D2 + 8*(jefe-1): cuatro punteros
	ld hl,066d2h		;4b26   ; p13:juegos_de_jefe_1: cuatro punteros a RLE: los cuatro juegos de patrones del jefe 1
	add a,a			;4b29
	add a,a			;4b2a
	add a,a			;4b2b
	call hl_mas_a		;4b2c
	ld de,0e800h		;4b2f   ; los cuatro, a 0xE800
	ld bc,00008h		;4b32
	ldir		;4b35
	ld hl,(0e800h)		;4b37   ; cada RLE, recompuesto en 0xE840, 0xE940, 0xEA40 y 0xEB40
	ld de,0e840h		;4b3a
	call recompone_jefe		;4b3d   ; recompone_jefe: el RLE a 0xEC40...
	ld hl,(0e802h)		;4b40
	ld de,0e940h		;4b43
	call recompone_jefe		;4b46   ; recompone_jefe: el RLE a 0xEC40...
	ld hl,(0e804h)		;4b49
	ld de,0ea40h		;4b4c
	call recompone_jefe		;4b4f   ; recompone_jefe: el RLE a 0xEC40...
	ld hl,(0e806h)		;4b52
	ld de,0eb40h		;4b55
	call recompone_jefe		;4b58   ; recompone_jefe: el RLE a 0xEC40...
L_4B5B:
	jp bancos_1_2_3		;4b5b   ; bancos_1_2_3: LAS PUERTAS: A, A+1 y A+2 en los tres registros del mapper y en sus copias
recompone_jefe:
	push de			;4b5e   ; el RLE a 0xEC40...
	ld de,0ec40h		;4b5f
	call rle_a_la_ram		;4b62   ; rle_a_la_ram: el RLE de HL a la RAM de DE
	pop de			;4b65
	ld hl,0ec40h		;4b66   ; ...y de alli, por cuartos, al destino
	ld bc,00050h		;4b69
	add hl,bc			;4b6c
	call recompone_cuartos		;4b6d   ; recompone_cuartos: cada cuarto de 16x16: cuatro tiras de 16 bytes, en otro orden
	ld bc,0ffa0h		;4b70
	add hl,bc			;4b73
	call recompone_cuartos		;4b74   ; recompone_cuartos: cada cuarto de 16x16: cuatro tiras de 16 bytes, en otro orden
	ld bc,000a0h		;4b77
	add hl,bc			;4b7a
	call recompone_cuartos		;4b7b   ; recompone_cuartos: cada cuarto de 16x16: cuatro tiras de 16 bytes, en otro orden
	ld bc,0ffa0h		;4b7e
	add hl,bc			;4b81
	jp recompone_cuartos		;4b82   ; recompone_cuartos: cada cuarto de 16x16: cuatro tiras de 16 bytes, en otro orden
recompone_cuartos:
	call invierte_16_bytes		;4b85   ; cada cuarto de 16x16: cuatro tiras de 16 bytes, en otro orden
	ld bc,0ffe0h		;4b88
	add hl,bc			;4b8b
	call invierte_16_bytes		;4b8c   ; invierte_16_bytes: 16 bytes...
	ld bc,00020h		;4b8f
	add hl,bc			;4b92
	call invierte_16_bytes		;4b93   ; invierte_16_bytes: 16 bytes...
	ld bc,0ffe0h		;4b96
	add hl,bc			;4b99
	jp invierte_16_bytes		;4b9a   ; invierte_16_bytes: 16 bytes...
invierte_16_bytes:
	ld b,010h		;4b9d   ; 16 bytes...
L_4B9F:
	push bc			;4b9f
	ld c,(hl)			;4ba0   ; ...cada uno con los bits del reves (espejo)
	ld b,008h		;4ba1
L_4BA3:
	rl c		;4ba3   ; el bit 7 de C al bit 0 de A, y asi los ocho
	rra			;4ba5
	djnz L_4BA3		;4ba6
	pop bc			;4ba8
	ld (de),a			;4ba9
	inc hl			;4baa
	inc de			;4bab
	djnz L_4B9F		;4bac
	ret			;4bae
L_4BAF:
	ex de,hl			;4baf
	ld e,(hl)			;4bb0
	inc hl			;4bb1
	ld d,(hl)			;4bb2
	inc hl			;4bb3
rle_a_la_ram:
	ld a,(hl)			;4bb4   ; el RLE de HL a la RAM de DE
	and a			;4bb5   ; 0: se acabo
	ret z			;4bb6
	inc hl			;4bb7
	ld b,a			;4bb8   ; con el bit 7...
	and 07fh		;4bb9
	cp b			;4bbb   ; ...sin el: repetir
	jr z,L_4BC8		;4bbc
	and a			;4bbe
	jr z,L_4BAF		;4bbf
	ld c,a			;4bc1   ; n bytes tal cual
	ld b,000h		;4bc2
	ldir		;4bc4
	jr rle_a_la_ram		;4bc6
L_4BC8:
	ld a,(hl)			;4bc8   ; el byte que se repite, B veces
	inc hl			;4bc9
L_4BCA:
	ld (de),a			;4bca
	inc de			;4bcb
	djnz L_4BCA		;4bcc
	jr rle_a_la_ram		;4bce
figuras_a_pelo:
	call bancos_13_14_15		;4bd0   ; LAS FIGURAS A PELO de siete pantallas: el codigo de cada una en C
	ld a,(0c125h)		;4bd3   ; lee la PANTALLA
	cp 029h		;4bd6   ; la pantalla 0x29?
	ld c,088h		;4bd8
	jr z,L_4BFE		;4bda
	cp 031h		;4bdc   ; la pantalla 0x31?
	ld c,001h		;4bde
	jr z,L_4BFE		;4be0
	cp 034h		;4be2   ; la pantalla 0x34?
	jr z,L_4BFE		;4be4
	cp 053h		;4be6   ; la pantalla 0x53?
	ld c,090h		;4be8
	jr z,L_4BFE		;4bea
	cp 05dh		;4bec   ; la pantalla 0x5D?
	jr z,L_4BFE		;4bee
	cp 057h		;4bf0   ; la pantalla 0x57?
	ld c,004h		;4bf2
	jr z,L_4BFE		;4bf4
	cp 05ch		;4bf6   ; la pantalla 0x5C?
	ld c,082h		;4bf8
	jr z,L_4BFE		;4bfa
	ld c,000h		;4bfc
L_4BFE:
	ld a,c			;4bfe   ; sin codigo, nada
	and a			;4bff
	jp z,L_4C8F		;4c00
	bit 7,a		;4c03   ; con el bit 7, dos estructuras seguidas; si no, una
	ld a,001h		;4c05
	jr z,L_4C0A		;4c07
	inc a			;4c09
L_4C0A:
	ld (0e804h),a		;4c0a
	ld a,c			;4c0d   ; el bit que este puesto elige la estructura de p14
	rra			;4c0e
	ld hl,09ba2h		;4c0f   ; p14:figura_9BA2: figura a pelo de la pantalla 0x31 y 0x34: [bandera de espejo][40 filas][20 bytes][VRAM 0xD46C] y 800 bytes
	jr c,L_4C29		;4c12
	rra			;4c14
	ld hl,090e4h		;4c15   ; p14:figura_90E4: figura a pelo de la pantalla 0x5C: [bandera de espejo][64 filas][16 bytes][VRAM 0xD460] y 1024 bytes
	jr c,L_4C29		;4c18
	rra			;4c1a
	ld hl,08d1fh		;4c1b   ; p14:figura_8D1F: figura a pelo de la pantalla 0x57: [bandera de espejo][40 filas][24 bytes][VRAM 0xD468] y 960 bytes
	jr c,L_4C29		;4c1e
	rra			;4c20
	ld hl,09998h		;4c21   ; p14:figura_9998: figura a pelo de la pantalla 0x29: [bandera de espejo][32 filas][8 bytes][VRAM 0xD470] y 256 bytes
	jr c,L_4C29		;4c24
	ld hl,095aeh		;4c26   ; p14:figura_95AE: figura a pelo de la pantalla 0x53 y 0x5D: [bandera de espejo][40 filas][20 bytes][VRAM 0xD46C] y 800 bytes
L_4C29:
	ld (0e800h),hl		;4c29   ; [bandera][filas][bytes][VRAM]
	inc hl			;4c2c
	ld c,(hl)			;4c2d
	inc hl			;4c2e
	ld b,(hl)			;4c2f
	inc hl			;4c30
	ld e,(hl)			;4c31
	inc hl			;4c32
	ld d,(hl)			;4c33
	ld (0e802h),de		;4c34   ; el sitio de la VRAM
	inc hl			;4c38
	ex de,hl			;4c39
L_4C3A:
	push bc			;4c3a   ; fila a fila...
	push hl			;4c3b
	call vram_para_escribir		;4c3c   ; vram_para_escribir: prepara el V9938 para escribir en la direccion de VRAM HL (R#14 y el puerto 1)
	ld a,(00007h)		;4c3f
	ld c,a			;4c42
	ex de,hl			;4c43
	otir		;4c44   ; ...B bytes tal cual
	ex de,hl			;4c46
	pop hl			;4c47
	ld bc,00080h		;4c48   ; la linea siguiente (128 bytes)
	add hl,bc			;4c4b
	pop bc			;4c4c
	dec c			;4c4d
	jr nz,L_4C3A		;4c4e
	ld hl,(0e800h)		;4c50   ; con la bandera...
	ld a,(hl)			;4c53
	and a			;4c54
	jr z,L_4C88		;4c55
	inc hl			;4c57   ; ...otra vez la misma figura, en espejo, a la derecha
	ld c,(hl)			;4c58
	inc hl			;4c59
	ld b,(hl)			;4c5a
	inc hl			;4c5b
	ld e,(hl)			;4c5c
	inc hl			;4c5d
	ld d,(hl)			;4c5e
	inc hl			;4c5f
	push hl			;4c60
	ld l,b			;4c61   ; desde el ultimo byte de cada fila (VRAM + 2*bytes - 1), hacia atras
	ld h,000h		;4c62
	add hl,hl			;4c64
	add hl,de			;4c65
	dec hl			;4c66
	ld (0e802h),hl		;4c67
	pop de			;4c6a
L_4C6B:
	push bc			;4c6b
	push hl			;4c6c
L_4C6D:
	call vram_para_escribir		;4c6d   ; vram_para_escribir: prepara el V9938 para escribir en la direccion de VRAM HL (R#14 y el puerto 1)
	ld a,(00007h)		;4c70
	ld c,a			;4c73
	ld a,(de)			;4c74   ; cada byte con sus dos puntos cambiados
	rrca			;4c75
	rrca			;4c76
	rrca			;4c77
	rrca			;4c78
	out (c),a		;4c79
	inc de			;4c7b
	dec hl			;4c7c   ; hacia la izquierda
	djnz L_4C6D		;4c7d
	pop hl			;4c7f
	ld bc,00080h		;4c80
	add hl,bc			;4c83
	pop bc			;4c84
	dec c			;4c85
	jr nz,L_4C6B		;4c86
L_4C88:
	ld hl,0e804h		;4c88   ; la estructura siguiente
	dec (hl)			;4c8b
	ex de,hl			;4c8c
	jr nz,L_4C29		;4c8d
L_4C8F:
	jp bancos_1_2_3		;4c8f   ; bancos_1_2_3: LAS PUERTAS: A, A+1 y A+2 en los tres registros del mapper y en sus copias
sube_sprites_4C92:
	call bancos_13_14_15		;4c92   ; tres RLE de p15 a los patrones de sprite 0xF800, 0xF900 y 0xFA00
	ld de,0b069h		;4c95   ; p15:la_que_sigue_B069: el cuadro 4 de la figura que sigue a Mitchel: RLE como el de las poses
	ld hl,0f800h		;4c98
	call rle_a_la_vram		;4c9b   ; rle_a_la_vram: el RLE de DE a la VRAM de HL (n con el bit 7: n bytes tal cual; sin el, repetir; 0 acaba)
	ld de,0b144h		;4c9e   ; p15:la_que_sigue_B144: el cuadro 5 de la figura que sigue a Mitchel: RLE como el de las poses
	ld hl,0f900h		;4ca1
	call rle_a_la_vram		;4ca4   ; rle_a_la_vram: el RLE de DE a la VRAM de HL (n con el bit 7: n bytes tal cual; sin el, repetir; 0 acaba)
	ld de,0b3e5h		;4ca7   ; p15:sprites_B3E5: RLE (p00:45EF) que p00:4C92 sube a la VRAM 0xFA00
	ld hl,0fa00h		;4caa
	call rle_a_la_vram		;4cad   ; rle_a_la_vram: el RLE de DE a la VRAM de HL (n con el bit 7: n bytes tal cual; sin el, repetir; 0 acaba)
	jp bancos_1_2_3		;4cb0   ; bancos_1_2_3: LAS PUERTAS: A, A+1 y A+2 en los tres registros del mapper y en sus copias
sube_los_sprites_de_la_pantalla:
	call bancos_7_8_9		;4cb3   ; LOS SPRITES DE LA PANTALLA: los comunes (p09:B000) a 0xF940...
	ld de,0b000h		;4cb6   ; p09:sprites_comunes: RLE de los 192 bytes de patrones de sprite que p00:4CB6 sube a la VRAM 0xF940 (patrones 0x28-0x3F) al entrar en cada pantalla
	ld hl,0f940h		;4cb9
	call rle_a_la_vram		;4cbc   ; rle_a_la_vram: el RLE de DE a la VRAM de HL (n con el bit 7: n bytes tal cual; sin el, repetir; 0 acaba)
	ld a,(0c125h)		;4cbf   ; lee la PANTALLA
	ld hl,0b0b7h		;4cc2   ; p09:lista_de_sprites_de_cada_pantalla: un byte por pantalla: el numero de lista de sprites (p00:5630); p00:4CB3 con 0xB0B7 + pantalla
	call hl_mas_a		;4cc5
	ld a,(hl)			;4cc8   ; ...y la lista de la pantalla (p09:B0B7 + pantalla)
	ld de,05630h		;4cc9   ; listas_de_sprites: 28 palabras: la lista de patrones de sprite de cada numero (p09:B0B7)
	call palabra_de_la_tabla		;4ccc   ; palabra_de_la_tabla: DE = la palabra A de la tabla de DE
	push de			;4ccf   ; IX = la lista
	pop ix		;4cd0
L_4CD2:
	ld a,(ix+000h)		;4cd2   ; los bancos del nibble alto...
	call bancos_del_nibble		;4cd5   ; bancos_del_nibble: el nibble alto de A elige el trio de bancos (0 1-2-3, 1 4-5-6, 2 7-8-9, 3 10-11-12, si no 13-14-15)
	ld a,(ix+000h)		;4cd8   ; ...y la accion del bajo: 0 acaba
	and 00fh		;4cdb
	dec a			;4cdd
	jp m,bancos_1_2_3		;4cde   ; bancos_1_2_3: LAS PUERTAS: A, A+1 y A+2 en los tres registros del mapper y en sus copias
	call despacha		;4ce1   ; despacha: Salta a la entrada A de la tabla de palabras que va pegada detras del `call`.

; ----------------------------------------------------------------------
; DATOS tabla_4CE4: 4 destinos del despachador de 0x425F (call en p00:4CE1):
;   0x4D03, 0x4D1F, 0x4D2A, 0x4D35; lo leen p00:4CE1 (8 bytes)
;   0x4ce4..0x4cec  (8 bytes)
DATA_tabla_4CE4:
	defb 003h,04dh	; 4ce4
	defb 01fh,04dh	; 4ce6
	defb 02ah,04dh	; 4ce8
	defb 035h,04dh	; 4cea

; ======================================================================
; CODIGO 0x4cec..0x4f64  (632 bytes)
; ======================================================================


bancos_del_nibble:
	and 0f0h		;4cec   ; el nibble alto de A elige el trio de bancos (0 1-2-3, 1 4-5-6, 2 7-8-9, 3 10-11-12, si no 13-14-15)
	jp z,bancos_1_2_3		;4cee   ; C = el nibble alto de la entrada
	cp 010h		;4cf1
	jp z,bancos_4_5_6		;4cf3
	cp 020h		;4cf6
	jp z,bancos_7_8_9		;4cf8
	cp 030h		;4cfb
	jp z,bancos_10_11_12		;4cfd
	jp bancos_13_14_15		;4d00
L_4D03:
	ld l,(ix+001h)		;4d03   ; 1: el RLE de ix+2/ix+3 al patron ix+1 (0xF800 + 8*patron)
	ld h,000h		;4d06
	add hl,hl			;4d08
	add hl,hl			;4d09
	add hl,hl			;4d0a
	ld de,0f800h		;4d0b
	add hl,de			;4d0e
	ld e,(ix+002h)		;4d0f
	ld d,(ix+003h)		;4d12
	call rle_a_la_vram		;4d15   ; rle_a_la_vram: el RLE de DE a la VRAM de HL (n con el bit 7: n bytes tal cual; sin el, repetir; 0 acaba)
L_4D18:
	ld de,00004h		;4d18   ; la entrada siguiente (4 bytes)
	add ix,de		;4d1b
	jr $-75		;4d1d
L_4D1F:
	call lee_patrones		;4d1f   ; 2: copia patrones en espejo
	call espejo_de_patrones		;4d22   ; espejo_de_patrones: ix+3 patrones de 16x16
	call escribe_patrones		;4d25
	jr L_4D18		;4d28
L_4D2A:
	call lee_patrones		;4d2a   ; 3: copia patrones del reves
	call volteo_de_patrones		;4d2d   ; volteo_de_patrones: ix+3 patrones de 16x16, del reves en vertical
	call escribe_patrones		;4d30
	jr L_4D18		;4d33
L_4D35:
	call lee_patrones		;4d35   ; 4: copia patrones en espejo y del reves
	call espejo_de_patrones		;4d38   ; espejo_de_patrones: ix+3 patrones de 16x16
	call volteo_de_patrones		;4d3b   ; volteo_de_patrones: ix+3 patrones de 16x16, del reves en vertical
	call escribe_patrones		;4d3e
	jr L_4D18		;4d41
lee_patrones:
	call bytes_de_los_patrones		;4d43   ; bytes_de_los_patrones: BC = ix+3 * 32
	ld l,(ix+002h)		;4d46   ; del patron ix+2...
	call direccion_del_patron		;4d49   ; direccion_del_patron: HL = 0xF800 + 8*L
	ld de,0e800h		;4d4c   ; ...a 0xE800
	jp lee_de_la_vram		;4d4f   ; lee_de_la_vram: LEE BC bytes de la VRAM de HL a DE
escribe_patrones:
	call bytes_de_los_patrones		;4d52   ; bytes_de_los_patrones: BC = ix+3 * 32
	ld l,(ix+001h)		;4d55   ; al patron ix+1...
	call direccion_del_patron		;4d58   ; direccion_del_patron: HL = 0xF800 + 8*L
	ex de,hl			;4d5b
	ld hl,0e800h		;4d5c   ; ...desde 0xE800
	jp copia_a_la_vram		;4d5f   ; copia_a_la_vram: BC bytes de HL a la VRAM de DE
bytes_de_los_patrones:
	ld l,(ix+003h)		;4d62   ; BC = ix+3 * 32
	ld h,000h		;4d65   ; ix+3 patrones de 16x16: 32 bytes cada uno
	add hl,hl			;4d67
	add hl,hl			;4d68
	add hl,hl			;4d69
	add hl,hl			;4d6a
	add hl,hl			;4d6b
	ld c,l			;4d6c
	ld b,h			;4d6d
	ret			;4d6e
direccion_del_patron:
	ld h,000h		;4d6f   ; HL = 0xF800 + 8*L
	add hl,hl			;4d71   ; 8 bytes por patron de 8x8
	add hl,hl			;4d72
	add hl,hl			;4d73
	ld de,0f800h		;4d74
	add hl,de			;4d77
	ret			;4d78
espejo_de_patrones:
	ld c,(ix+003h)		;4d79   ; ix+3 patrones de 16x16
	ld iy,0e800h		;4d7c
L_4D80:
	ld b,010h		;4d80   ; 16 filas
L_4D82:
	push bc			;4d82
	ld de,00000h		;4d83
	ld h,(iy+000h)		;4d86   ; la fila entera: la columna izquierda (H) y la derecha (L)...
	ld l,(iy+010h)		;4d89
	ld b,010h		;4d8c
L_4D8E:
	add hl,hl			;4d8e   ; ...con los 16 bits del reves
	rr d		;4d8f
	rr e		;4d91
	djnz L_4D8E		;4d93
	ld (iy+000h),d		;4d95   ; y de vuelta, cambiadas de lado
	ld (iy+010h),e		;4d98
	inc iy		;4d9b
	pop bc			;4d9d
	djnz L_4D82		;4d9e
	ld de,00010h		;4da0   ; el patron siguiente (32 bytes)
	add iy,de		;4da3
	dec c			;4da5
	jr nz,L_4D80		;4da6
	ret			;4da8
volteo_de_patrones:
	ld b,(ix+003h)		;4da9   ; ix+3 patrones de 16x16, del reves en vertical
	ld hl,0e800h		;4dac
	ld de,0e80fh		;4daf
L_4DB2:
	push bc			;4db2
	call da_la_vuelta_a_8_filas		;4db3   ; la columna izquierda...
	call da_la_vuelta_a_8_filas		;4db6   ; ...y la derecha
	pop bc			;4db9
	djnz L_4DB2		;4dba
	ret			;4dbc
da_la_vuelta_a_8_filas:
	ld b,008h		;4dbd
L_4DBF:
	ld c,(hl)			;4dbf   ; la fila de arriba por la de abajo
	ld a,(de)			;4dc0
	ld (hl),a			;4dc1
	ld a,c			;4dc2
	ld (de),a			;4dc3
	inc hl			;4dc4
	dec de			;4dc5
	djnz L_4DBF		;4dc6
	ld a,008h		;4dc8   ; a la columna siguiente
	call hl_mas_a		;4dca
	ld a,018h		;4dcd
	jp de_mas_a		;4dcf
pon_la_paleta_de_la_pantalla:
	call bancos_7_8_9		;4dd2   ; la comun (0x6128), la del juego de dibujos (0x6059) y la de la pantalla (0x61CF)
	ld hl,06128h		;4dd5   ; p07:paleta_comun: [color][RB][G] ... 0xFF: la paleta de todas las pantallas
	call pon_paleta		;4dd8   ; pon_paleta: lista [color][RB][G] ... 0xFF
	ld a,(0c148h)		;4ddb   ; lee el juego de dibujos de la pantalla
	ld de,06059h		;4dde   ; p07:paleta_de_cada_juego: 13 punteros a la lista de colores de cada juego de dibujos
	call palabra_de_la_tabla		;4de1   ; la del juego de dibujos
	ex de,hl			;4de4
	call pon_paleta		;4de5   ; pon_paleta: lista [color][RB][G] ... 0xFF
	ld a,(0c125h)		;4de8   ; lee la PANTALLA
	ld hl,06141h		;4deb   ; p07:paleta_de_cada_pantalla: un byte por pantalla: que lista de 0x61CF le toca
	call hl_mas_a		;4dee
	ld a,(hl)			;4df1   ; el numero de paleta de la pantalla (p07:6141 + pantalla)...
	ld de,061cfh		;4df2   ; p07:listas_de_pantalla: 23 punteros a listas de colores por pantalla
	call palabra_de_la_tabla		;4df5   ; ...y su lista de p07:61CF
	ex de,hl			;4df8
	call pon_paleta		;4df9   ; pon_paleta: lista [color][RB][G] ... 0xFF
	jp bancos_1_2_3		;4dfc   ; bancos_1_2_3: LAS PUERTAS: A, A+1 y A+2 en los tres registros del mapper y en sus copias
monta_la_pantalla:
	call pinta_el_decorado		;4dff   ; MONTA LA PANTALLA: el decorado...
	ld a,(0f0f6h)		;4e02   ; lee el banco de reserva de 0xA000 (el que devuelve p00:4215)
	push af			;4e05   ; ...y con el banco 6, p06:BB57...
	ld a,006h		;4e06
	call banco_en_a000		;4e08   ; banco_en_a000: el banco A en 0xA000, y en su copia (0xF0F3) y en la reserva (0xF0F6)
	call 0bb57h		;4e0b
	pop af			;4e0e
	ld (0f0f6h),a		;4e0f   ; guarda el banco de reserva de 0xA000 (el que devuelve p00:4215)
	call bancos_1_2_3		;4e12   ; bancos_1_2_3: LAS PUERTAS: A, A+1 y A+2 en los tres registros del mapper y en sus copias
	jp suceso_de_la_pantalla_5E		;4e15   ; ...y el suceso de la pantalla 0x5E
pinta_el_decorado:
	xor a			;4e18   ; los 5x5 bloques (0xE800 la fila, 0xE801 la columna)...
	ld (0e800h),a		;4e19
L_4E1C:
	xor a			;4e1c
	ld (0e801h),a		;4e1d
L_4E20:
	xor a			;4e20   ; ...y los 16 dibujos de cada bloque (0xE802)
	ld (0e802h),a		;4e21
L_4E24:
	call pon_bancos_del_mapa		;4e24   ; el bloque...
	call bancos_7_8_9		;4e27
	call dibujos_del_bloque		;4e2a   ; ...su dibujo...
	call apunta_dibujo_en_el_mapa		;4e2d   ; ...al mapa de la RAM
	ld hl,0e802h		;4e30   ; el dibujo siguiente del bloque
	inc (hl)			;4e33
	ld a,(hl)			;4e34
	cp 010h		;4e35
	jr nz,L_4E24		;4e37
	dec hl			;4e39   ; la columna siguiente
	inc (hl)			;4e3a
	ld a,(hl)			;4e3b
	cp 005h		;4e3c
	jr nz,L_4E20		;4e3e
	dec hl			;4e40   ; la fila siguiente
	inc (hl)			;4e41
	ld a,(hl)			;4e42
	cp 005h		;4e43
	jr nz,L_4E1C		;4e45
	call bancos_1_2_3		;4e47   ; bancos_1_2_3: LAS PUERTAS: A, A+1 y A+2 en los tres registros del mapper y en sus copias
	call pinta_las_casillas		;4e4a   ; el mapa entero a la pantalla
	ld a,(0c125h)		;4e4d   ; lee la PANTALLA
	cp 015h		;4e50   ; la pantalla 0x15?
	jr z,L_4E76		;4e52   ; las pantallas de la estatua: 0x15, 0x28...
	cp 028h		;4e54   ; la pantalla 0x28?
	jr z,L_4E76		;4e56
	cp 089h		;4e58   ; la pantalla 0x89?
	jr z,L_4EA9		;4e5a   ; ...0x89 (mas abajo)...
	cp 060h		;4e5c   ; la pantalla 0x60?
	ret nz			;4e5e   ; ...y 0x60, con las dos piezas de los lados
	ld de,03820h		;4e5f
	call pinta_la_estatua		;4e62   ; la estatua en (0x38, 0x20)
	ld de,02848h		;4e65
	call pinta_figura_B9F6		;4e68   ; una pieza en (0x28, 0x48)...
	ld de,07848h		;4e6b   ; ...y otra en (0x78, 0x48)
pinta_figura_B9F6:
	ld hl,0b9f6h		;4e6e   ; 3 columnas x 5 filas de p15:B9F6
	ld bc,00305h		;4e71
	jr pinta_figura		;4e74
L_4E76:
	ld de,03820h		;4e76
	jr pinta_la_estatua		;4e79
pinta_figura_BA15:
	ld hl,0ba15h		;4e7b   ; 7x5 dibujos de p15:BA15 en (0x40, 0x64)
	ld de,06440h		;4e7e
	ld bc,00705h		;4e81
	jr pinta_figura		;4e84
pinta_figura_BA38:
	ld hl,0ba38h		;4e86   ; 5x4 dibujos de p15:BA38 en (0x47, 0x70)
	ld de,07047h		;4e89
	ld bc,00504h		;4e8c
	jr pinta_figura		;4e8f
pinta_figura_BA4C:
	ld hl,0ba4ch		;4e91   ; 7x4 dibujos de p15:BA4C, donde diga DE
	ld bc,00704h		;4e94
	jr pinta_figura		;4e97
pinta_figura_BA68:
	ld hl,0ba68h		;4e99   ; 4x4 dibujos de p15:BA68 en (0x60, 0xA8)
	ld de,0a860h		;4e9c
	ld bc,00404h		;4e9f
	jr pinta_figura		;4ea2
pinta_figura_BA05:
	ld hl,0ba05h		;4ea4   ; 4x4 dibujos de p15:BA05, donde diga DE
	jr pinta_figura		;4ea7
L_4EA9:
	ld de,03828h		;4ea9   ; la estatua de la pantalla 0x89, 8 puntos mas abajo
pinta_la_estatua:
	ld hl,0b9a5h		;4eac   ; 9x9 dibujos de p15:B9A5
	ld bc,00909h		;4eaf
pinta_figura:
	call bancos_13_14_15		;4eb2   ; B columnas x C filas de numeros de dibujo de HL, con transparencia, en DE
pinta_figura_sin_bancos:
	push de			;4eb5   ; HL' = la casilla del mapa de la RAM de la esquina
	exx			;4eb6
	pop hl			;4eb7
	call casilla_en_ram		;4eb8   ; casilla_en_ram: HL = la casilla de 8x8 del punto (L, H) en el mapa de la RAM (0xE000, 32 por fila)
	exx			;4ebb
L_4EBC:
	push bc			;4ebc   ; fila a fila
	push de			;4ebd
	exx			;4ebe
	push hl			;4ebf
	exx			;4ec0
L_4EC1:
	ld a,(hl)			;4ec1   ; el numero de dibujo...
	exx			;4ec2
	and a			;4ec3   ; ...el 0 no pinta...
	jr z,L_4EC7		;4ec4
	ld (hl),a			;4ec6   ; ...y los demas se apuntan tambien en el mapa de la RAM
L_4EC7:
	inc hl			;4ec7
	exx			;4ec8
	inc hl			;4ec9
	call pon_dibujo_transparente		;4eca   ; el dibujo, con transparencia
	ld a,d			;4ecd   ; el siguiente, 8 puntos a la derecha
	add a,008h		;4ece
	ld d,a			;4ed0
	djnz L_4EC1		;4ed1
	exx			;4ed3
	pop hl			;4ed4   ; la fila siguiente del mapa (32 casillas)...
	ld a,020h		;4ed5
	call hl_mas_a		;4ed7
	exx			;4eda
	pop de			;4edb   ; ...y 8 lineas mas abajo en la pantalla
	ld a,e			;4edc
	add a,008h		;4edd
	ld e,a			;4edf
	pop bc			;4ee0
	dec c			;4ee1
	jr nz,L_4EBC		;4ee2
	jp bancos_1_2_3		;4ee4   ; bancos_1_2_3: LAS PUERTAS: A, A+1 y A+2 en los tres registros del mapper y en sus copias
pinta_las_casillas:
	ld hl,0e021h		;4ee7   ; los 20x20 dibujos del mapa de 0xE021 en la pantalla desde (8, 8)
	ld de,00808h		;4eea   ; desde el punto (8, 8)
	ld c,014h		;4eed   ; 20 filas
L_4EEF:
	ld b,014h		;4eef   ; de 20 dibujos
L_4EF1:
	ld a,(hl)			;4ef1   ; el numero de dibujo de la casilla...
	inc hl			;4ef2
	call pon_dibujo		;4ef3   ; pon_dibujo: el dibujo A de la hoja (pagina 1) en (D, E) de la pagina 0
	ld a,d			;4ef6   ; ...8 puntos a la derecha
	add a,008h		;4ef7
	ld d,a			;4ef9
	djnz L_4EF1		;4efa
	ld a,00ch		;4efc   ; las 12 casillas que sobran de cada fila de 32
	call hl_mas_a		;4efe
	ld d,008h		;4f01   ; la fila siguiente, 8 lineas mas abajo
	ld a,e			;4f03
	add a,008h		;4f04
	ld e,a			;4f06
	dec c			;4f07
	jr nz,L_4EEF		;4f08
	ret			;4f0a
pon_bancos_del_mapa:
	call bancos_4_5_6		;4f0b   ; los bancos de las cuevas (4-5-6) si 0xC131 no es cero...
	ld a,(0c131h)		;4f0e   ; lee el plano de la pantalla (0, el exterior)
	sub 001h		;4f11
	jr nc,L_4F1B		;4f13
	call bancos_10_11_12		;4f15   ; ...y los del exterior (10-11-12) si lo es, con la pantalla
	ld a,(0c125h)		;4f18   ; lee la PANTALLA
L_4F1B:
	ld l,a			;4f1b   ; HL = 25*n...
	ld h,000h		;4f1c
	ld c,l			;4f1e
	ld b,h			;4f1f
	add hl,hl			;4f20
	add hl,hl			;4f21
	add hl,hl			;4f22
	ld e,l			;4f23
	ld d,h			;4f24
	add hl,hl			;4f25
	add hl,de			;4f26
	add hl,bc			;4f27
	ld a,(0c131h)		;4f28   ; lee el plano de la pantalla (0, el exterior)
	ld de,06000h		;4f2b   ; ...desde 0x6000 (exterior, banco 10) o 0x7E76 (cuevas, banco 4)
	and a			;4f2e
	jr z,L_4F34		;4f2f
	ld de,07e76h		;4f31
L_4F34:
	add hl,de			;4f34
	ld a,(0e800h)		;4f35   ; + 5*fila + columna
	ld c,a			;4f38
	add a,a			;4f39
	add a,a			;4f3a
	add a,c			;4f3b
	ld c,a			;4f3c
	ld a,(0e801h)		;4f3d
	add a,c			;4f40
	call hl_mas_a		;4f41
	ld a,(hl)			;4f44   ; el bloque
	ret			;4f45
dibujos_del_bloque:
	push af			;4f46   ; los 16 dibujos del bloque A...
	ld a,(0c148h)		;4f47   ; lee el juego de dibujos de la pantalla
	ld de,04f64h		;4f4a   ; bloques_de_cada_juego: 13 punteros, uno por juego de dibujos, a sus bloques de 4x4 dibujos
	call palabra_de_la_tabla		;4f4d   ; ...en la tabla del juego de dibujos (p07:4F64 + 2*juego)
	pop af			;4f50
	ld l,a			;4f51   ; 16 bytes por bloque
	ld h,000h		;4f52
	add hl,hl			;4f54
	add hl,hl			;4f55
	add hl,hl			;4f56
	add hl,hl			;4f57
	add hl,de			;4f58
	ld a,(0e802h)		;4f59   ; el dibujo 0xE802 del bloque
	call hl_mas_a		;4f5c
	ld a,(hl)			;4f5f
	ld (0e803h),a		;4f60
	ret			;4f63

; ----------------------------------------------------------------------
; DATOS bloques_de_cada_juego: 13 punteros, uno por juego de dibujos, a sus
;   bloques de 4x4 dibujos; lo leen p00:4F4D (26 bytes)
;   0x4f64..0x4f7e  (26 bytes)
DATA_bloques_de_cada_juego:
	defb 08ah,078h	; 4f64
	defb 03ah,07dh	; 4f66
	defb 0bah,07eh	; 4f68
	defb 0bah,082h	; 4f6a
	defb 0dah,084h	; 4f6c
	defb 0bah,086h	; 4f6e
	defb 08ah,088h	; 4f70
	defb 07ah,08ch	; 4f72
	defb 05ah,08dh	; 4f74
	defb 04ah,095h	; 4f76
	defb 04ah,095h	; 4f78
	defb 04ah,095h	; 4f7a
	defb 04ah,095h	; 4f7c

; ======================================================================
; CODIGO 0x4f7e..0x4fc4  (70 bytes)
; ======================================================================


apunta_dibujo_en_el_mapa:
	ld de,0e021h		;4f7e   ; el dibujo de 0xE803 en la casilla del bloque (0xE800, 0xE801) y su parte (0xE802) del mapa de 0xE021
	ld a,(0e800h)		;4f81   ; la fila de bloques: 4 filas de 32 casillas cada una...
	ld h,a			;4f84
	ld l,000h		;4f85
	srl h		;4f87
	rr l		;4f89
	add hl,de			;4f8b
	ld a,(0e801h)		;4f8c   ; ...la columna: 4 casillas...
	add a,a			;4f8f
	add a,a			;4f90
	call hl_mas_a		;4f91
	ld a,(0e802h)		;4f94   ; ...y dentro del bloque, la columna (bits 0-1)...
	ld b,a			;4f97
	and 003h		;4f98
	ld c,a			;4f9a
	ld a,b			;4f9b   ; ...y la fila (bits 2-3)
	and 00ch		;4f9c
	add a,a			;4f9e
	add a,a			;4f9f
	add a,a			;4fa0
	add a,c			;4fa1
	ld c,a			;4fa2
	call hl_mas_a		;4fa3
	ld a,(0e803h)		;4fa6   ; el dibujo a su casilla
	ld (hl),a			;4fa9
	ret			;4faa
suceso_de_la_pantalla_5E:
	ld a,(0c125h)		;4fab   ; lee la PANTALLA
	cp 05eh		;4fae   ; la pantalla 0x5E?
	ret nz			;4fb0
	ld hl,0c810h		;4fb1   ; 0xC810: si hay algo...
	ld a,(hl)			;4fb4
	and a			;4fb5
	ret z			;4fb6
	inc l			;4fb7   ; ...en su (y, x)...
	ld e,(hl)			;4fb8
	inc l			;4fb9
	ld d,(hl)			;4fba
	ld hl,04fc4h		;4fbb   ; figura_4FC4: 4 columnas x 3 filas de numeros de dibujo (0xE2-0xEA) que p00:4FBB pinta donde dice su ficha
	ld bc,00403h		;4fbe   ; ...pone 0xF0 en 4x3 casillas: no se pisa
	jp pinta_figura		;4fc1   ; pinta_figura: B columnas x C filas de numeros de dibujo de HL, con transparencia, en DE

; ----------------------------------------------------------------------
; DATOS figura_4FC4: 4 columnas x 3 filas de numeros de dibujo (0xE2-0xEA) que
;   p00:4FBB pinta donde dice su ficha
;   0x4fc4..0x4fd0  (12 bytes)
DATA_figura_4FC4:
	defb 0e2h,0e3h,0e3h,0e4h,0e5h,0e6h,0e6h,0e7h,0e8h,0e9h,0e9h,0eah	; 4fc4  ............

; ======================================================================
; CODIGO 0x4fd0..0x5064  (148 bytes)
; ======================================================================


sprites_de_mitchel:
	call mitchel_en_su_sitio		;4fd0   ; mitchel_en_su_sitio: los dos sprites de Mitchel (0xE600) en su y-8 y x-8
	call colores_de_mitchel		;4fd3   ; colores_de_mitchel: 16 bytes del color de cada uno de sus dos sprites (0xC309 y 0xC30A) en 0xE400
	ld a,(0c600h)		;4fd6   ; lee la figura que sigue a Mitchel
	and a			;4fd9   ; con la figura que sigue a Mitchel, tambien la suya
	ret z			;4fda
	jp sube_la_que_sigue		;4fdb   ; sube_la_que_sigue: los patrones de la figura que sigue (0xF840)...
colores_de_mitchel:
	ld de,0e400h		;4fde   ; 16 bytes del color de cada uno de sus dos sprites (0xC309 y 0xC30A) en 0xE400
	ld hl,0c309h		;4fe1   ; apunta a el color del primer sprite de Mitchel
	call dieciseis_veces		;4fe4   ; el color del primero, en sus 16 lineas...
	inc hl			;4fe7   ; ...y el del segundo
dieciseis_veces:
	ld a,(hl)			;4fe8   ; (HL), 16 veces a DE
	ld b,010h		;4fe9
L_4FEB:
	ld (de),a			;4feb
	inc e			;4fec
	djnz L_4FEB		;4fed
	ret			;4fef
sube_la_pose_de_mitchel:
	call bancos_13_14_15		;4ff0
	ld hl,0f800h		;4ff3   ; a los patrones 0 y 4 de sprite (0xF800)
	call vram_para_escribir		;4ff6   ; vram_para_escribir: prepara el V9938 para escribir en la direccion de VRAM HL (R#14 y el puerto 1)
	ld a,(0c160h)		;4ff9   ; lee Mitchel metido en el agua
	ld de,07d9bh		;4ffc   ; p13:poses_7D9B: 17 punteros, uno por pose de Mitchel (0xC310), cuando 0xC160 = 0
	and a			;4fff   ; en el agua (0xC160), la otra tabla de poses
	jr z,L_5005		;5000
	ld de,07dbdh		;5002   ; p13:poses_7DBD: 17 punteros, uno por pose de Mitchel (0xC310), cuando 0xC160 distinto de 0
L_5005:
	ld a,(0c310h)		;5005   ; lee la POSE de Mitchel
L_5008:
	call palabra_de_la_tabla		;5008   ; el puntero de la pose
	ex de,hl			;500b
L_500C:
	ld a,(00007h)		;500c   ; el puerto de datos del VDP
	ld c,a			;500f
rle_de_la_pose:
	ld a,(hl)			;5010   ; n: 0 acaba
	and 07fh		;5011
	jp z,bancos_1_2_3		;5013   ; bancos_1_2_3: LAS PUERTAS: A, A+1 y A+2 en los tres registros del mapper y en sus copias
	cp (hl)			;5016   ; con el bit 7...
	jr z,L_501F		;5017
	ld b,a			;5019   ; ...n bytes tal cual
	inc hl			;501a
	otir		;501b
	jr rle_de_la_pose		;501d
L_501F:
	ld b,a			;501f   ; sin el: el byte siguiente, n veces
	inc hl			;5020
	ld a,(hl)			;5021
	inc hl			;5022
L_5023:
	out (c),a		;5023
	djnz L_5023		;5025
	jr rle_de_la_pose		;5027
mitchel_en_su_sitio:
	ld hl,0e600h		;5029   ; los dos sprites de Mitchel (0xE600) en su y-8 y x-8
	ld a,(0c303h)		;502c   ; lee la Y de Mitchel
	sub 008h		;502f   ; la y menos 8...
	ld c,a			;5031
	ld a,(0c305h)		;5032   ; lee la X de Mitchel
	sub 008h		;5035   ; ...y la x menos 8
	ld (hl),c			;5037   ; el sprite 0: y, x y patron 0...
	inc l			;5038
	ld (hl),a			;5039
	inc l			;503a
	ld (hl),000h		;503b
	inc l			;503d
	inc l			;503e
	ld (hl),c			;503f   ; ...y el sprite 1 encima: patron 4
	inc l			;5040
	ld (hl),a			;5041
	inc l			;5042
	ld (hl),004h		;5043
	ret			;5045
sube_el_arma:
	call bancos_13_14_15		;5046
	ld a,(0c140h)		;5049   ; lee SHOT1, el arma que se lleva (0 el puno)
	dec a			;504c   ; sin arma (0), nada
	jp m,bancos_1_2_3		;504d   ; bancos_1_2_3: LAS PUERTAS: A, A+1 y A+2 en los tres registros del mapper y en sus copias
	cp 00bh		;5050   ; de la 11 en adelante, el dibujo de la 7
	jr c,L_5056		;5052
	ld a,007h		;5054
L_5056:
	push af			;5056
	ld hl,0f840h		;5057   ; al patron 8 de sprite (0xF840)
	call vram_para_escribir		;505a   ; vram_para_escribir: prepara el V9938 para escribir en la direccion de VRAM HL (R#14 y el puerto 1)
	pop af			;505d
	ld de,05064h		;505e   ; sprites_de_armas: 11 punteros: el sprite del arma de SHOT1 (0xC140 - 1; de 11 en adelante, el 7); p00:5046 lo sube a 0xF840
	jp L_5008		;5061   ; su RLE (p00:5064 + 2*(arma-1))

; ----------------------------------------------------------------------
; DATOS sprites_de_armas: 11 punteros: el sprite del arma de SHOT1 (0xC140 -
;   1; de 11 en adelante, el 7); p00:5046 lo sube a 0xF840; lo leen p00:505E
;   (22 bytes)
;   0x5064..0x507a  (22 bytes)
DATA_sprites_de_armas:
	defb 0f9h,081h	; 5064
	defb 095h,082h	; 5066
	defb 07bh,087h	; 5068
	defb 05eh,086h	; 506a
	defb 02eh,083h	; 506c
	defb 03fh,082h	; 506e
	defb 0ddh,086h	; 5070
	defb 0f0h,084h	; 5072
	defb 08bh,085h	; 5074
	defb 0f8h,083h	; 5076
	defb 08fh,084h	; 5078

; ======================================================================
; CODIGO 0x507a..0x50ca  (80 bytes)
; ======================================================================


la_que_sigue_en_su_sitio:
	ld a,(0c600h)		;507a   ; lee la figura que sigue a Mitchel
	and a			;507d   ; sin figura que sigue, nada
	ret z			;507e
	ld hl,050cah		;507f   ; figura_que_sigue: 8 parejas [dy][dx]: donde va cada uno de los 8 sprites de la figura que sigue a Mitchel (0xC600); p00:507A
	ld de,0e608h		;5082   ; sus 8 sprites, desde el 2 (0xE608)
	ld b,008h		;5085
	ld c,008h		;5087
L_5089:
	ld a,(0c603h)		;5089   ; la y + la de la plantilla (con 0xE1 no se ve: se queda)
	cp 0e1h		;508c
	jr z,L_5091		;508e
	add a,(hl)			;5090
L_5091:
	ld (de),a			;5091
	inc hl			;5092
	inc de			;5093
	ld a,(0c605h)		;5094   ; la x + la de la plantilla
	add a,(hl)			;5097
	ld (de),a			;5098
	inc hl			;5099
	inc de			;509a
	ld a,c			;509b   ; el patron: 8, 12, 16...
	ld (de),a			;509c
	add a,004h		;509d
	ld c,a			;509f
	inc de			;50a0
	inc de			;50a1
	djnz L_5089		;50a2
	ld hl,0c607h		;50a4   ; los 8 colores de 0xC607, 16 lineas cada uno
	ld de,0e420h		;50a7
	ld c,008h		;50aa
L_50AC:
	ld a,(hl)			;50ac
	ld b,010h		;50ad
L_50AF:
	ld (de),a			;50af
	inc de			;50b0
	djnz L_50AF		;50b1
	inc hl			;50b3
	dec c			;50b4
	jr nz,L_50AC		;50b5
	ret			;50b7
sube_la_que_sigue:
	ld hl,0f840h		;50b8   ; los patrones de la figura que sigue (0xF840)...
	call vram_para_escribir		;50bb   ; vram_para_escribir: prepara el V9938 para escribir en la direccion de VRAM HL (R#14 y el puerto 1)
	call bancos_13_14_15		;50be
	ld a,(0c606h)		;50c1   ; lee el cuadro de la figura que sigue (direccion*2 + paso)
	ld de,050dah		;50c4   ; cuadros_de_la_que_sigue: 8 punteros: los patrones de la figura que sigue a Mitchel segun 0xC606 (direccion*2 + paso, p02:82E6); p00:50B8
	jp L_5008		;50c7   ; ...del RLE de su cuadro (0xC606)

; ----------------------------------------------------------------------
; DATOS figura_que_sigue: 8 parejas [dy][dx]: donde va cada uno de los 8
;   sprites de la figura que sigue a Mitchel (0xC600); p00:507A; lo leen
;   p00:5090 (16 bytes)
;   0x50ca..0x50da  (16 bytes)
DATA_figura_que_sigue:
	defb 0f0h,0f0h	; 50ca
	defb 0f0h,0f0h	; 50cc
	defb 0f0h,000h	; 50ce
	defb 0f0h,000h	; 50d0
	defb 000h,0f0h	; 50d2
	defb 000h,0f0h	; 50d4
	defb 000h,000h	; 50d6
	defb 000h,000h	; 50d8

; ----------------------------------------------------------------------
; DATOS cuadros_de_la_que_sigue: 8 punteros: los patrones de la figura que
;   sigue a Mitchel segun 0xC606 (direccion*2 + paso, p02:82E6); p00:50B8; lo
;   leen p00:50C4 (16 bytes)
;   0x50da..0x50ea  (16 bytes)
DATA_cuadros_de_la_que_sigue:
	defb 0c1h,0ach	; 50da
	defb 0abh,0adh	; 50dc
	defb 095h,0aeh	; 50de
	defb 07fh,0afh	; 50e0
	defb 069h,0b0h	; 50e2
	defb 044h,0b1h	; 50e4
	defb 028h,0b2h	; 50e6
	defb 002h,0b3h	; 50e8

; ======================================================================
; CODIGO 0x50ea..0x519a  (176 bytes)
; ======================================================================


L_50EA:
	ld hl,0f840h		;50ea   ; el RLE de p14:8804 a 0xF840
	call vram_para_escribir		;50ed   ; vram_para_escribir: prepara el V9938 para escribir en la direccion de VRAM HL (R#14 y el puerto 1)
	call bancos_13_14_15		;50f0
	ld hl,08804h		;50f3   ; p14:sprite_8804: RLE como el de las poses que p00:50EA sube a 0xF840
	jp L_500C		;50f6
cuadro_de_la_ficha:
	ld a,(ix+020h)		;50f9   ; sin sprites, nada
	or a			;50fc
	ret z			;50fd
	call bancos_4_5_6		;50fe
	ld a,(ix+000h)		;5101   ; las explosiones (0xF0 en adelante) van aparte
	cp 0f0h		;5104
	jr nc,L_5151		;5106
	ld a,(ix+00bh)		;5108   ; el cuadro (ix+0x0B): su lista en p05:9CC3
	ld de,09cc3h		;510b
	call palabra_de_la_tabla		;510e   ; palabra_de_la_tabla: DE = la palabra A de la tabla de DE
	push ix		;5111   ; HL = ix+0x20: cuantos sprites...
	pop hl			;5113
	set 5,l		;5114
	ld b,(hl)			;5116
	inc l			;5117   ; ...y desde ix+0x22, cinco bytes por sprite [y][x][patron][color][...]
	inc l			;5118
	ld a,(ix+010h)		;5119   ; con ix+0x10 puesto, no se mueven los sprites
	and a			;511c
	jr z,L_5123		;511d
	inc l			;511f
	inc l			;5120
	jr L_514C		;5121
L_5123:
	ld a,(de)			;5123   ; el byte de la lista
	ld c,a			;5124
	inc de			;5125
	sub 080h		;5126   ; 0x80-0x86: una plantilla de p00:519A
	jr z,L_5154		;5128
	dec a			;512a
	jr z,L_515A		;512b
	dec a			;512d
	jr z,L_5160		;512e
	dec a			;5130
	jr z,L_5166		;5131
	dec a			;5133
	jr z,L_516C		;5134
	dec a			;5136
	jr z,L_5172		;5137
	dec a			;5139
	jr z,L_5178		;513a
	ld a,c			;513c   ; si no: dy...
	add a,(ix+003h)		;513d
	ld (hl),a			;5140
	inc l			;5141
	ld a,(de)			;5142   ; ...dx...
	add a,(ix+005h)		;5143
	ld (hl),a			;5146
	inc de			;5147
	inc l			;5148
	ld a,(de)			;5149   ; ...y el patron
	ld (hl),a			;514a
	inc de			;514b
L_514C:
	inc l			;514c   ; al sprite siguiente
	inc l			;514d
	inc l			;514e
	djnz L_5123		;514f
L_5151:
	jp bancos_1_2_3		;5151   ; bancos_1_2_3: LAS PUERTAS: A, A+1 y A+2 en los tres registros del mapper y en sus copias
L_5154:
	exx			;5154   ; las plantillas: HL' = sus posiciones
	ld hl,0519ah		;5155   ; plantilla_0: plantilla 0x80: 2 parejas [dy][dx], una por sprite
	jr L_517C		;5158
L_515A:
	exx			;515a
	ld hl,0519eh		;515b   ; plantilla_1: plantilla 0x81: 4 parejas [dy][dx], una por sprite
	jr L_517C		;515e
L_5160:
	exx			;5160
	ld hl,051a6h		;5161   ; plantilla_2: plantilla 0x82: 4 parejas [dy][dx], una por sprite
	jr L_517C		;5164
L_5166:
	exx			;5166
	ld hl,051aeh		;5167   ; plantilla_3: plantilla 0x83: 8 parejas [dy][dx], una por sprite
	jr L_517C		;516a
L_516C:
	exx			;516c
	ld hl,051beh		;516d   ; plantilla_4: plantilla 0x84: 2 parejas [dy][dx], una por sprite
	jr L_517C		;5170
L_5172:
	exx			;5172
	ld hl,051c2h		;5173   ; plantilla_5: plantilla 0x85: 12 parejas [dy][dx], una por sprite
	jr L_517C		;5176
L_5178:
	exx			;5178
	ld hl,051dah		;5179   ; plantilla_6: plantilla 0x86: 8 parejas [dy][dx], una por sprite
L_517C:
	exx			;517c
L_517D:
	exx			;517d
	ld a,(hl)			;517e   ; dy de la plantilla + la y
	inc hl			;517f
	add a,(ix+003h)		;5180
	exx			;5183
	ld (hl),a			;5184
	inc l			;5185
	exx			;5186
	ld a,(hl)			;5187   ; dx de la plantilla + la x
	inc hl			;5188
	add a,(ix+005h)		;5189
	exx			;518c
	ld (hl),a			;518d
	inc l			;518e
	ld a,(de)			;518f   ; y el patron de la lista
	ld (hl),a			;5190
	inc de			;5191
	inc l			;5192   ; al sprite siguiente (5 bytes)
	inc l			;5193
	inc l			;5194
	djnz L_517D		;5195
	jp bancos_1_2_3		;5197   ; bancos_1_2_3: LAS PUERTAS: A, A+1 y A+2 en los tres registros del mapper y en sus copias

; ----------------------------------------------------------------------
; DATOS plantilla_0: plantilla 0x80: 2 parejas [dy][dx], una por sprite; lo
;   leen p00:517E (4 bytes)
;   0x519a..0x519e  (4 bytes)
DATA_plantilla_0:
	defb 0f8h,0f8h	; 519a
	defb 0f8h,0f8h	; 519c

; ----------------------------------------------------------------------
; DATOS plantilla_1: plantilla 0x81: 4 parejas [dy][dx], una por sprite; lo
;   leen p00:517E (8 bytes)
;   0x519e..0x51a6  (8 bytes)
DATA_plantilla_1:
	defb 0f8h,0f8h	; 519e
	defb 0f8h,0f8h	; 51a0
	defb 0f8h,008h	; 51a2
	defb 0f8h,008h	; 51a4

; ----------------------------------------------------------------------
; DATOS plantilla_2: plantilla 0x82: 4 parejas [dy][dx], una por sprite; lo
;   leen p00:517E (8 bytes)
;   0x51a6..0x51ae  (8 bytes)
DATA_plantilla_2:
	defb 0f1h,0f9h	; 51a6
	defb 0f1h,0f9h	; 51a8
	defb 001h,0f9h	; 51aa
	defb 001h,0f9h	; 51ac

; ----------------------------------------------------------------------
; DATOS plantilla_3: plantilla 0x83: 8 parejas [dy][dx], una por sprite; lo
;   leen p00:517E (16 bytes)
;   0x51ae..0x51be  (16 bytes)
DATA_plantilla_3:
	defb 0f0h,0f0h	; 51ae
	defb 0f0h,0f0h	; 51b0
	defb 0f0h,000h	; 51b2
	defb 0f0h,000h	; 51b4
	defb 000h,0f0h	; 51b6
	defb 000h,0f0h	; 51b8
	defb 000h,000h	; 51ba
	defb 000h,000h	; 51bc

; ----------------------------------------------------------------------
; DATOS plantilla_4: plantilla 0x84: 2 parejas [dy][dx], una por sprite; lo
;   leen p00:517E (4 bytes)
;   0x51be..0x51c2  (4 bytes)
DATA_plantilla_4:
	defb 0f8h,0f9h	; 51be
	defb 0f8h,0f9h	; 51c0

; ----------------------------------------------------------------------
; DATOS plantilla_5: plantilla 0x85: 12 parejas [dy][dx], una por sprite; lo
;   leen p00:517E (24 bytes)
;   0x51c2..0x51da  (24 bytes)
DATA_plantilla_5:
	defb 0efh,0f0h	; 51c2
	defb 0efh,0f0h	; 51c4
	defb 0efh,000h	; 51c6
	defb 0efh,000h	; 51c8
	defb 0ffh,0f0h	; 51ca
	defb 0ffh,0f0h	; 51cc
	defb 0ffh,000h	; 51ce
	defb 0ffh,000h	; 51d0
	defb 00fh,0f0h	; 51d2
	defb 00fh,0f0h	; 51d4
	defb 00fh,000h	; 51d6
	defb 00fh,000h	; 51d8

; ----------------------------------------------------------------------
; DATOS plantilla_6: plantilla 0x86: 8 parejas [dy][dx], una por sprite; lo
;   leen p00:517E (16 bytes)
;   0x51da..0x51ea  (16 bytes)
DATA_plantilla_6:
	defb 0f8h,0f0h	; 51da
	defb 0f8h,0f0h	; 51dc
	defb 0f8h,000h	; 51de
	defb 0f8h,000h	; 51e0
	defb 0e0h,000h	; 51e2
	defb 0e0h,000h	; 51e4
	defb 010h,000h	; 51e6
	defb 010h,000h	; 51e8

; ======================================================================
; CODIGO 0x51ea..0x54ec  (770 bytes)
; ======================================================================


sprites_de_las_fichas:
	ld hl,0d000h		;51ea   ; apunta a las fichas de los enemigos (13 de 0x80)
	ld b,00dh		;51ed   ; las 13 fichas
L_51EF:
	push bc			;51ef
	push hl			;51f0
	ld a,(hl)			;51f1   ; las que tienen tipo...
	and a			;51f2
	call nz,sprites_de_una_ficha		;51f3   ; sprites_de_una_ficha: ix+0x20: cuantos sprites
	pop hl			;51f6
	pop bc			;51f7
	ld de,00080h		;51f8   ; la siguiente (0x80 bytes)
	add hl,de			;51fb
	djnz L_51EF		;51fc
	ret			;51fe
sprites_de_una_ficha:
	set 5,l		;51ff   ; ix+0x20: cuantos sprites
	ld b,(hl)			;5201
	ld a,b			;5202
	and a			;5203
	ret z			;5204
	inc l			;5205   ; desde ix+0x21: [hueco][y][x][patron][color] por sprite
L_5206:
	push bc			;5206
	ld a,(hl)			;5207   ; el hueco de la tabla de sprites
	ld b,a			;5208
	inc l			;5209
	ld a,(0c132h)		;520a   ; con 0xC132, la otra mitad de la tabla (0xE628)
	and a			;520d
	ld de,0e618h		;520e
	jr z,L_5216		;5211
	ld de,0e628h		;5213
L_5216:
	ld a,b			;5216   ; 4 bytes por sprite
	add a,a			;5217
	add a,a			;5218
	add a,e			;5219
	ld e,a			;521a
	ld c,0ffh		;521b
	ldi		;521d   ; y, x y patron
	ldi		;521f
	ldi		;5221
	ld a,(hl)			;5223   ; sin color, el sprite no se ve (y = 0xE1)
	and a			;5224
	jr nz,L_5230		;5225
	dec e			;5227
	dec e			;5228
	dec e			;5229
	ld a,0e1h		;522a
	ld (de),a			;522c
	inc e			;522d
	inc e			;522e
	inc e			;522f
L_5230:
	ex de,hl			;5230   ; el color, en sus 16 lineas: 0xE460 + 16*hueco (0x7230*2)...
	ld a,(0c132h)		;5231
	and a			;5234
	ld hl,07230h		;5235
	jr z,L_523D		;5238
	ld hl,07250h		;523a   ; ...o 0xE4A0 + 16*hueco (0x7250*2) con 0xC132
L_523D:
	ld a,b			;523d
	add a,a			;523e
	add a,a			;523f
	add a,a			;5240
	ld c,a			;5241
	ld b,000h		;5242
	add hl,bc			;5244
	add hl,hl			;5245
	ex de,hl			;5246
	ld a,(hl)			;5247   ; el color...
	ld b,010h		;5248
L_524A:
	ld (de),a			;524a   ; ...16 veces
	inc e			;524b
	djnz L_524A		;524c
	pop bc			;524e
	inc l			;524f   ; el sprite siguiente
	djnz L_5206		;5250
	ret			;5252
sube_el_grafico_de_jefe:
	ld a,(0df94h)		;5253   ; lee el grafico de jefe que hay subido
	and a			;5256   ; 0: ninguno
	ret z			;5257
	call bancos_13_14_15		;5258
	ld hl,066aah		;525b   ; p13:66AA + grafico - 1: como va (bit 0, RLE)
	ld a,(0df94h)		;525e   ; lee el grafico de jefe que hay subido
	dec a			;5261
	call hl_mas_a		;5262
	ld c,(hl)			;5265
	ld a,(0df94h)		;5266   ; lee el grafico de jefe que hay subido
	dec a			;5269   ; p13:7D4B + 2*(grafico - 1): de donde
	ld l,a			;526a
	ld h,000h		;526b
	add hl,hl			;526d
	ld de,07d4bh		;526e   ; p13:graficos_de_jefe: 40 palabras: de donde sale cada grafico de jefe (0xDF94 = 1..40)
	add hl,de			;5271
	ld e,(hl)			;5272
	inc hl			;5273
	ld d,(hl)			;5274
	ld hl,0ff00h		;5275   ; a los patrones 224-255 (0xFF00)
	bit 0,c		;5278
	jr nz,L_528B		;527a
	call vram_para_escribir		;527c   ; sin RLE: 256 bytes tal cual
	ld a,(00007h)		;527f
	ld c,a			;5282
	ex de,hl			;5283
	ld b,000h		;5284
	otir		;5286
	jp bancos_1_2_3		;5288   ; bancos_1_2_3: LAS PUERTAS: A, A+1 y A+2 en los tres registros del mapper y en sus copias
L_528B:
	call rle_a_la_vram		;528b   ; con RLE: p00:45EF
	jp bancos_1_2_3		;528e   ; bancos_1_2_3: LAS PUERTAS: A, A+1 y A+2 en los tres registros del mapper y en sus copias
copia_lineas_a_la_pagina_1:
	ld hl,000ech		;5291   ; la linea 0xEC de la pagina 0 a la 1...
	ld d,h			;5294
	ld e,l			;5295
	ld bc,00001h		;5296
	ld a,004h		;5299
	call hmmm		;529b   ; hmmm: orden HMMM del V9938: copia BxC puntos de (H, L) a (D, E); A lleva las paginas
	ld hl,000e8h		;529e   ; ...y las 4 de 0xE8
	ld d,h			;52a1
	ld e,l			;52a2
	ld bc,00004h		;52a3
	ld a,004h		;52a6
	jp hmmm		;52a8   ; hmmm: orden HMMM del V9938: copia BxC puntos de (H, L) a (D, E); A lleva las paginas
sube_los_sprites_girando:
	ld hl,0c10fh		;52ab   ; 0xC10F avanza 0x68: el orden de los sprites da la vuelta cada cuadro, para que los que sobran en una linea parpadeen
	ld a,(hl)			;52ae   ; 0xC10F: el primer sprite de la tabla da la vuelta, 0x68 cada cuadro...
	add a,068h		;52af
	and 078h		;52b1
	ld (hl),a			;52b3
	ld e,000h		;52b4   ; ...para que los que no caben en una linea se turnen (parpadean en vez de desaparecer)
	ld a,(00007h)		;52b6
	ld c,a			;52b9
	call colores_en_orden_girado		;52ba   ; los colores (0x7400)...
	ld hl,07600h		;52bd   ; ...y los atributos (0x7600)
	call vram_para_escribir		;52c0   ; vram_para_escribir: prepara el V9938 para escribir en la direccion de VRAM HL (R#14 y el puerto 1)
atributos_en_orden_girado:
	ld a,(0c10fh)		;52c3   ; lee el giro del orden de los sprites
	ld d,010h		;52c6   ; 16 grupos de 2 sprites, desde 0xE600 + 0xC10F
	ld h,0e6h		;52c8
L_52CA:
	and a			;52ca   ; el grupo 0 va el primero salvo con E = 1
	jr nz,L_52D1		;52cb
	bit 0,e		;52cd
	jr nz,L_52D6		;52cf
L_52D1:
	ld b,008h		;52d1   ; 8 bytes: dos sprites
	ld l,a			;52d3
	otir		;52d4
L_52D6:
	add a,048h		;52d6   ; el grupo siguiente (0x48 mas alla, dando la vuelta a 0x78)
	and 078h		;52d8
	dec d			;52da
	jr nz,L_52CA		;52db
	ret			;52dd
colores_en_orden_girado:
	ld hl,07400h		;52de
	call vram_para_escribir		;52e1   ; vram_para_escribir: prepara el V9938 para escribir en la direccion de VRAM HL (R#14 y el puerto 1)
L_52E4:
	ld a,(0c10fh)		;52e4   ; lee el giro del orden de los sprites
	ld d,010h		;52e7   ; lo mismo con los colores: 32 bytes por grupo desde 0xE400
	add a,a			;52e9
L_52EA:
	ld h,072h		;52ea
	and a			;52ec
	jr nz,L_52F3		;52ed
	bit 0,e		;52ef
	jr nz,L_52F9		;52f1
L_52F3:
	ld l,a			;52f3
	add hl,hl			;52f4
	ld b,020h		;52f5
	otir		;52f7
L_52F9:
	add a,090h		;52f9
	dec d			;52fb
	jr nz,L_52EA		;52fc
	ret			;52fe
sube_los_sprites_de_mitchel_girando:
	ld hl,0c10fh		;52ff   ; apunta a el giro del orden de los sprites
	ld a,(hl)			;5302   ; el giro...
	add a,068h		;5303
	and 078h		;5305
	ld (hl),a			;5307
	ld hl,0e600h		;5308   ; apunta a los atributos de los sprites, para la VRAM
	ld de,07600h		;530b   ; ...pero los dos sprites de Mitchel van siempre los primeros
	ld bc,00008h		;530e
	call copia_a_la_vram		;5311   ; copia_a_la_vram: BC bytes de HL a la VRAM de DE
	ld a,(00007h)		;5314
	ld c,a			;5317
	ld e,001h		;5318
	call atributos_en_orden_girado		;531a
	ld hl,0e400h		;531d   ; apunta a los colores de los sprites, para la VRAM
	ld de,07400h		;5320   ; y sus colores
	ld bc,00020h		;5323
	call copia_a_la_vram		;5326   ; copia_a_la_vram: BC bytes de HL a la VRAM de DE
	ld a,(00007h)		;5329
	ld c,a			;532c
	ld e,001h		;532d
	jr L_52E4		;532f
sube_los_colores_de_sprite:
	ld hl,0e400h		;5331   ; apunta a los colores de los sprites, para la VRAM
	ld de,07400h		;5334   ; los 0x280 bytes de colores de sprite de 0xE400 a 0x7400
	ld bc,00280h		;5337
	jp copia_a_la_vram		;533a   ; copia_a_la_vram: BC bytes de HL a la VRAM de DE
empieza_la_partida:
	call limpia_la_pantalla		;533d   ; EMPIEZA LA PARTIDA: pantalla limpia...
	call bancos_4_5_6		;5340
	call 0bf86h		;5343   ; ...p06:BF86 (los contadores de 0xDE00)...
	call bancos_1_2_3		;5346   ; bancos_1_2_3: LAS PUERTAS: A, A+1 y A+2 en los tres registros del mapper y en sus copias
	call prepara_las_pantallas		;5349   ; ...y la hoja comun y el panel
	ld hl,05890h		;534c   ; Mitchel entra por (0x90, 0x58)
	ld (0c321h),hl		;534f   ; guarda el punto de entrada (y, x)
	xor a			;5352
	ld (0c13ch),a		;5353
	ld a,008h		;5356   ; 0xC153 = 8
	ld (0c153h),a		;5358
	ld hl,05050h		;535b   ; lo de 0xC800 en (0x50, 0x50)
	ld (0c801h),hl		;535e
	ld hl,00200h		;5361   ; GOLD = 200 al empezar
	ld (0c135h),hl		;5364   ; guarda GOLD, los dos bytes bajos (BCD)
	ld hl,00030h		;5367   ; LIFE = 30 al empezar
	ld (0c129h),hl		;536a   ; guarda LIFE, los dos bytes (BCD)
	ld hl,00101h		;536d   ; 0xC370 y 0xC371 a 1...
	ld (0c370h),hl		;5370
	ld a,001h		;5373   ; ...y 0xC373 tambien
	ld (0c373h),a		;5375
	ld hl,0c580h		;5378   ; apunta a las banderas del decorado ya quitado
	ld b,024h		;537b   ; 36 unos seguidos desde 0xC580: nada del decorado esta quitado
L_537D:
	ld (hl),001h		;537d
	inc hl			;537f
	djnz L_537D		;5380
	ld a,(0c11eh)		;5382   ; 0xC11E: con algo, empieza de otra manera
	and a			;5385
	jr z,L_539E		;5386
	ld (0c12eh),a		;5388   ; guarda LEVEL, el nivel de Mitchel (BCD)
	jr L_539E		;538b
L_538D:
	call prepara_las_pantallas		;538d   ; CAMBIO DE PANTALLA
	xor a			;5390   ; ni empujon (0xC163), ni parpadeo (0xC325), ni 0xC147
	ld (0c163h),a		;5391
	ld (0c325h),a		;5394
	ld (0c147h),a		;5397
	inc a			;539a   ; 0xC13B = 1
	ld (0c13bh),a		;539b
L_539E:
	call quita_el_decorado_de_0xC171		;539e   ; el decorado que haya que dar por quitado
	call 06433h		;53a1   ; p01:6433 y el hueco de la derecha del panel
	call 0641dh		;53a4   ; p01:borra_el_hueco_de_la_derecha: 72x72 puntos en (0xB0, 0x80): los enemigos del panel
	call oculta_los_sprites		;53a7   ; sin sprites
	call borra_atributos_7600		;53aa   ; borra_atributos_7600: los 128 atributos de sprite de 0x7600 a 0xE0 (no se ven)
	xor a			;53ad   ; a cero lo de la pantalla anterior: 0xC200...
	ld (0c300h),a		;53ae   ; guarda el estado de Mitchel
	ld (0c200h),a		;53b1
	ld (0c201h),a		;53b4   ; guarda el estado de la partida (0 jugando, 1 cambio de pantalla, 3 conversacion, 5 y 6 sucesos, 7 GAME OVER)
	ld (0c206h),a		;53b7
	ld (0c208h),a		;53ba
	ld (0c500h),a		;53bd   ; guarda el decorado que se quita (3 fichas de 32 bytes)
	ld (0c520h),a		;53c0   ; ...el decorado que se quita (0xC500-0xC540)...
	ld (0c540h),a		;53c3
	ld (0c151h),a		;53c6
	ld (0c15eh),a		;53c9
	ld (0c165h),a		;53cc
	ld (0c168h),a		;53cf
	ld hl,0e600h		;53d2   ; apunta a los atributos de los sprites, para la VRAM
	ld de,0e601h		;53d5   ; ...0xE600: los 128 atributos de sprite, sin ver (0xE0)...
	ld (hl),0e0h		;53d8
	ld bc,00080h		;53da
	ldir		;53dd
	ld hl,0c400h		;53df   ; apunta a los objetos del suelo (4 fichas de 16 bytes)
	ld bc,0003fh		;53e2   ; ...0x40 bytes de 0xC400 (los objetos del suelo)...
	call rellena_con_ceros		;53e5   ; rellena_con_ceros: BC+1 ceros desde HL
	ld hl,0d000h		;53e8   ; apunta a las fichas de los enemigos (13 de 0x80)
	ld bc,0067fh		;53eb   ; ...y las 13 fichas de enemigos (0x680 bytes de 0xD000)
	call rellena_con_ceros		;53ee   ; rellena_con_ceros: BC+1 ceros desde HL
	call 07046h		;53f1   ; p01:mitchel_en_la_entrada: MITCHEL ENTRA: colores de siempre...
	ld a,006h		;53f4   ; con el banco 6, p06:BEC5 (los planos)
	call banco_en_a000		;53f6   ; banco_en_a000: el banco A en 0xA000, y en su copia (0xF0F3) y en la reserva (0xF0F6)
	call 0bec5h		;53f9
	call banco_12_en_a000		;53fc   ; con el banco 12, p12:BDE2
	call 0bde2h		;53ff
	call bancos_1_2_3		;5402   ; bancos_1_2_3: LAS PUERTAS: A, A+1 y A+2 en los tres registros del mapper y en sus copias
	call sube_la_hoja_de_la_pantalla		;5405   ; la hoja...
	call figuras_a_pelo		;5408   ; ...las figuras a pelo...
	call pon_la_paleta_de_la_pantalla		;540b   ; ...la paleta...
	call sube_los_sprites_de_la_pantalla		;540e   ; ...los sprites...
	call sube_los_juegos_de_jefe		;5411   ; ...los graficos del jefe...
	call 08323h		;5414   ; ...p02:8323...
	call bancos_1_2_3		;5417   ; bancos_1_2_3: LAS PUERTAS: A, A+1 y A+2 en los tres registros del mapper y en sus copias
	call apaga_la_pantalla		;541a   ; apaga_la_pantalla: bit 6 del registro 1 del VDP a cero
	call 07dd7h		;541d   ; ...la paleta de las pantallas oscuras...
	call monta_la_pantalla		;5420   ; ...el decorado...
	call 0813eh		;5423   ; ...el que se quita...
	call empieza_la_pantalla		;5426   ; ...los enemigos...
	call 06192h		;5429   ; ...el panel de los enemigos...
	call enciende_la_pantalla		;542c   ; ...y se enciende
	jp 062c3h		;542f   ; y el panel de Mitchel
borra_atributos_7600:
	ld hl,07600h		;5432   ; los 128 atributos de sprite de 0x7600 a 0xE0 (no se ven)
	ld bc,00080h		;5435
	ld a,0e0h		;5438
	jp rellena_la_vram		;543a   ; rellena_la_vram: BC bytes con A desde la VRAM de HL
prepara_las_pantallas:
	xor a			;543d   ; 0xC133 = 0 y 0xC148 = 0xFF: ningun juego de dibujos subido
	ld (0c133h),a		;543e
	dec a			;5441
	ld (0c148h),a		;5442   ; guarda el juego de dibujos de la pantalla
	call apaga_la_pantalla		;5445   ; apaga_la_pantalla: bit 6 del registro 1 del VDP a cero
	call modo_de_pantalla		;5448   ; SCREEN 5 y lo demas
	call bancos_7_8_9		;544b
	call sube_iconos_y_hoja_comun		;544e   ; los iconos y la hoja comun
	call bancos_1_2_3		;5451   ; bancos_1_2_3: LAS PUERTAS: A, A+1 y A+2 en los tres registros del mapper y en sus copias
	jp 063a7h		;5454   ; y los bordes del panel
rellena_con_ceros:
	ld e,l			;5457   ; BC+1 ceros desde HL
	ld d,h			;5458   ; DE = HL + 1...
	inc de			;5459
	ld (hl),000h		;545a   ; ...cero en HL y se arrastra
	ldir		;545c
	ret			;545e
quita_el_decorado_de_0xC171:
	ld hl,0c171h		;545f   ; apunta a el decorado que hay que dar por quitado
	ld a,(hl)			;5462   ; el tipo de decorado que se da por quitado (0xC171)...
	and a			;5463
	ret z			;5464
	ld c,a			;5465
	ld (hl),000h		;5466   ; ...una vez
	ld hl,0c500h		;5468   ; apunta a el decorado que se quita (3 fichas de 32 bytes)
	call quita_si_es_este		;546b   ; se busca en los tres huecos
	ld hl,0c520h		;546e
	call quita_si_es_este		;5471   ; quita_si_es_este: si es de ese tipo...
	ld hl,0c540h		;5474
quita_si_es_este:
	ld a,(hl)			;5477   ; si es de ese tipo...
	cp c			;5478
	ret nz			;5479
	ld a,008h		;547a   ; ...su bandera (byte 8)...
	add a,l			;547c
	ld l,a			;547d
	ld a,(hl)			;547e
	ld de,0c580h		;547f   ; apunta a las banderas del decorado ya quitado
	call de_mas_a		;5482   ; ...en 0xC580 a cero
	xor a			;5485
	ld (de),a			;5486
	ret			;5487
sonido_si_juega:
	push hl			;5488   ; solo con el bit 6 de 0xC102 (la partida de verdad, no la demostracion)
	ld hl,0c102h		;5489   ; apunta a las banderas de la partida (bit 6: de verdad, no la demostracion)
	bit 6,(hl)		;548c   ; la demostracion no suena
	pop hl			;548e
	ret z			;548f
sonido:
	di			;5490   ; pone los bancos 4 y 5 y pide el sonido A a p04:6032
	push hl			;5491
	push de			;5492
	push bc			;5493
	ld hl,(0f0f1h)		;5494   ; lee la copia del banco de 0x6000
	push hl			;5497   ; las copias del mapper de 0x6000 y 0x8000
	push af			;5498
	ld a,004h		;5499   ; los bancos 4 y 5 (el sonido)
	ld (06000h),a		;549b   ; el mapper: el banco de A en 0x6000
	ld (0f0f1h),a		;549e   ; guarda la copia del banco de 0x6000
	inc a			;54a1
	ld (0f0f2h),a		;54a2   ; guarda la copia del banco de 0x8000
	ld (08000h),a		;54a5   ; el mapper: el banco de A en 0x8000
	pop af			;54a8
	call 06032h		;54a9   ; p04:6032 con el sonido A
	pop hl			;54ac   ; y los de antes
	ld (0f0f1h),hl		;54ad   ; guarda la copia del banco de 0x6000
	ld a,l			;54b0
	ld (06000h),a		;54b1   ; el mapper: el banco de A en 0x6000
	ld a,h			;54b4
	ld (08000h),a		;54b5   ; el mapper: el banco de A en 0x8000
	pop bc			;54b8
	pop de			;54b9
	pop hl			;54ba
	ei			;54bb
	ret			;54bc
hay_musica:
	ld a,(0c08bh)		;54bd   ; Z si no suena nada que importe: sin fundido (0xC08B) ni musica (0xC08D)
	or a			;54c0
	jr nz,L_54CB		;54c1
	ld a,(0c08dh)		;54c3
	or a			;54c6
	ld a,(0c08fh)		;54c7
	ret			;54ca
L_54CB:
	ld a,(0c090h)		;54cb   ; con 0xC090, compara con 0xFB; si no, con 0xFA
	or a			;54ce
	jr z,L_54DA		;54cf
	ld a,(0c08ch)		;54d1   ; lee el fundido de la musica (se suma al volumen)
	cp 0fbh		;54d4
	ld a,(0c08fh)		;54d6
	ret			;54d9
L_54DA:
	ld a,(0c08ch)		;54da   ; lee el fundido de la musica (se suma al volumen)
	cp 0fah		;54dd
	ld a,(0c08fh)		;54df
	ret			;54e2
L_54E3:
	call bancos_4_5_6		;54e3   ; p04:6000: el sonido desde cero
	call 06000h		;54e6   ; p04:el_sonido_desde_cero: EL SONIDO DESDE CERO: el mezclador con todo apagado (0xBC)
	jp bancos_1_2_3		;54e9   ; bancos_1_2_3: LAS PUERTAS: A, A+1 y A+2 en los tres registros del mapper y en sus copias

; ----------------------------------------------------------------------
; DATOS lista_de_cada_juego: 13 punteros, uno por juego de dibujos, a su lista
;   de subida; lo leen p00:4AB5 (26 bytes)
;   0x54ec..0x5506  (26 bytes)
DATA_lista_de_cada_juego:
	defb 006h,055h	; 54ec
	defb 030h,055h	; 54ee
	defb 046h,055h	; 54f0
	defb 064h,055h	; 54f2
	defb 086h,055h	; 54f4
	defb 0a4h,055h	; 54f6
	defb 0bdh,055h	; 54f8
	defb 0efh,055h	; 54fa
	defb 0f8h,055h	; 54fc
	defb 012h,056h	; 54fe
	defb 012h,056h	; 5500
	defb 012h,056h	; 5502
	defb 012h,056h	; 5504

; ----------------------------------------------------------------------
; DATOS lista_hoja_5506: lista del juego 0: [destino][cuantos][fuente], 0xFE
;   pasa a los bancos 10-11-12, 0xFF acaba (p00:4AB9); lo leen p00:4AB9 (42
;   bytes)
;   0x5506..0x5530  (42 bytes)
DATA_lista_hoja_5506:
	defb 001h,00ch,0dbh,09dh	; 5506
	defb 02ah,009h,01bh,0a3h	; 550a
	defb 060h,01eh,05bh,09fh	; 550e
	defb 083h,00dh,03bh,0a4h	; 5512
	defb 094h,00ch,0dbh,0a5h	; 5516
	defb 0c0h,004h,0cah,075h	; 551a
	defb 033h,00ah,05bh,0a7h	; 551e
	defb 090h,002h,09bh,0a8h	; 5522
	defb 0feh,050h,010h,09eh	; 5526
	defb 09ah,040h,008h,09eh	; 552a
	defb 09eh,0ffh	; 552e

; ----------------------------------------------------------------------
; DATOS lista_hoja_5530: lista del juego 1: [destino][cuantos][fuente], 0xFE
;   pasa a los bancos 10-11-12, 0xFF acaba (p00:4AB9); lo leen p00:4AB9 (22
;   bytes)
;   0x5530..0x5546  (22 bytes)
DATA_lista_hoja_5530:
	defb 001h,00ch,043h,096h	; 5530
	defb 025h,006h,063h,09ah	; 5534
	defb 060h,015h,0c3h,097h	; 5538
	defb 07bh,011h,023h,09bh	; 553c
	defb 0feh,050h,010h,09eh	; 5540
	defb 09ah,0ffh	; 5544

; ----------------------------------------------------------------------
; DATOS lista_hoja_5546: lista del juego 2: [destino][cuantos][fuente], 0xFE
;   pasa a los bancos 10-11-12, 0xFF acaba (p00:4AB9); lo leen p00:4AB9 (30
;   bytes)
;   0x5546..0x5564  (30 bytes)
DATA_lista_hoja_5546:
	defb 001h,00ch,0dbh,0a8h	; 5546
	defb 023h,006h,0dbh,0ach	; 554a
	defb 036h,00ah,044h,00ah	; 554e
	defb 060h,014h,05bh,0aah	; 5552
	defb 079h,00dh,09bh,0adh	; 5556
	defb 0feh,050h,010h,09eh	; 555a
	defb 09ah,020h,002h,01eh	; 555e
	defb 0a1h,0ffh	; 5562

; ----------------------------------------------------------------------
; DATOS lista_hoja_5564: lista del juego 3: [destino][cuantos][fuente], 0xFE
;   pasa a los bancos 10-11-12, 0xFF acaba (p00:4AB9); lo leen p00:4AB9 (34
;   bytes)
;   0x5564..0x5586  (34 bytes)
DATA_lista_hoja_5564:
	defb 001h,00ch,0deh,06dh	; 5564
	defb 02ah,009h,09eh,072h	; 5568
	defb 044h,009h,05eh,075h	; 556c
	defb 060h,01ah,05eh,06fh	; 5570
	defb 083h,00dh,0beh,073h	; 5574
	defb 098h,008h,07eh,076h	; 5578
	defb 0a5h,003h,07eh,077h	; 557c
	defb 0feh,050h,010h,09eh	; 5580
	defb 09ah,0ffh	; 5584

; ----------------------------------------------------------------------
; DATOS lista_hoja_5586: lista del juego 4: [destino][cuantos][fuente], 0xFE
;   pasa a los bancos 10-11-12, 0xFF acaba (p00:4AB9); lo leen p00:4AB9 (30
;   bytes)
;   0x5586..0x55a4  (30 bytes)
DATA_lista_hoja_5586:
	defb 001h,00ch,0deh,077h	; 5586
	defb 01ah,008h,09eh,07ah	; 558a
	defb 060h,00ah,05eh,079h	; 558e
	defb 072h,007h,09eh,07bh	; 5592
	defb 0feh,050h,010h,09eh	; 5596
	defb 09ah,030h,008h,09eh	; 559a
	defb 09ch,038h,008h,09eh	; 559e
	defb 09fh,0ffh	; 55a2

; ----------------------------------------------------------------------
; DATOS lista_hoja_55A4: lista del juego 5: [destino][cuantos][fuente], 0xFE
;   pasa a los bancos 10-11-12, 0xFF acaba (p00:4AB9); lo leen p00:4AB9 (25
;   bytes)
;   0x55a4..0x55bd  (25 bytes)
DATA_lista_hoja_55A4:
	defb 001h,010h,07eh,07ch	; 55a4
	defb 035h,007h,01eh,081h	; 55a8
	defb 071h,01dh,07eh,0a1h	; 55ac
	defb 090h,015h,07eh,07eh	; 55b0
	defb 0abh,005h,0deh,081h	; 55b4
	defb 0b4h,008h,07eh,082h	; 55b8
	defb 0ffh	; 55bc

; ----------------------------------------------------------------------
; DATOS lista_hoja_55BD: lista del juego 6: [destino][cuantos][fuente], 0xFE
;   pasa a los bancos 10-11-12, 0xFF acaba (p00:4AB9); lo leen p00:4AB9 (50
;   bytes)
;   0x55bd..0x55ef  (50 bytes)
DATA_lista_hoja_55BD:
	defb 001h,00ch,07eh,083h	; 55bd
	defb 025h,009h,01eh,088h	; 55c1
	defb 071h,01dh,07eh,0a1h	; 55c5
	defb 090h,019h,0feh,084h	; 55c9
	defb 0aeh,012h,03eh,089h	; 55cd
	defb 050h,00fh,09eh,09ah	; 55d1
	defb 038h,008h,09eh,09fh	; 55d5
	defb 040h,008h,09eh,09dh	; 55d9
	defb 030h,008h,0feh,0a4h	; 55dd
	defb 0e2h,009h,05eh,08bh	; 55e1
	defb 0feh,020h,002h,01eh	; 55e5
	defb 0a1h,022h,001h,05eh	; 55e9
	defb 0a1h,0ffh	; 55ed

; ----------------------------------------------------------------------
; DATOS lista_hoja_55EF: lista del juego 7: [destino][cuantos][fuente], 0xFE
;   pasa a los bancos 10-11-12, 0xFF acaba (p00:4AB9); lo leen p00:4AB9 (9
;   bytes)
;   0x55ef..0x55f8  (9 bytes)
DATA_lista_hoja_55EF:
	defb 001h,00ch,07eh,08ch	; 55ef
	defb 060h,01dh,0feh,08dh	; 55f3
	defb 0ffh	; 55f7

; ----------------------------------------------------------------------
; DATOS lista_hoja_55F8: lista del juego 8: [destino][cuantos][fuente], 0xFE
;   pasa a los bancos 10-11-12, 0xFF acaba (p00:4AB9); lo leen p00:4AB9 (26
;   bytes)
;   0x55f8..0x5612  (26 bytes)
DATA_lista_hoja_55F8:
	defb 001h,00ch,09eh,091h	; 55f8
	defb 04ch,004h,01eh,09ah	; 55fc
	defb 071h,01dh,07eh,0a1h	; 5600
	defb 090h,030h,01eh,093h	; 5604
	defb 0c4h,008h,01eh,099h	; 5608
	defb 0feh,050h,010h,09eh	; 560c
	defb 09ah,0ffh	; 5610

; ----------------------------------------------------------------------
; DATOS lista_hoja_5612: lista del juego 9: [destino][cuantos][fuente], 0xFE
;   pasa a los bancos 10-11-12, 0xFF acaba (p00:4AB9); lo leen p00:4AB9 (30
;   bytes)
;   0x5612..0x5630  (30 bytes)
DATA_lista_hoja_5612:
	defb 001h,008h,025h,0b5h	; 5612
	defb 009h,006h,025h,0b6h	; 5616
	defb 060h,012h,0e5h,0b6h	; 561a
	defb 018h,004h,025h,0b9h	; 561e
	defb 0feh,020h,002h,01eh	; 5622
	defb 0a1h,022h,001h,05eh	; 5626
	defb 0a1h,010h,004h,09eh	; 562a
	defb 0a0h,0ffh	; 562e

; ----------------------------------------------------------------------
; DATOS listas_de_sprites: 28 palabras: la lista de patrones de sprite de cada
;   numero (p09:B0B7); lo leen p00:4CC9 (56 bytes)
;   0x5630..0x5668  (56 bytes)
DATA_listas_de_sprites:
	defb 068h,056h	; 5630
	defb 085h,056h	; 5632
	defb 096h,056h	; 5634
	defb 0abh,056h	; 5636
	defb 0c8h,056h	; 5638
	defb 0d9h,056h	; 563a
	defb 0eeh,056h	; 563c
	defb 0f3h,056h	; 563e
	defb 004h,057h	; 5640
	defb 00dh,057h	; 5642
	defb 026h,057h	; 5644
	defb 03fh,057h	; 5646
	defb 058h,057h	; 5648
	defb 069h,057h	; 564a
	defb 08ah,057h	; 564c
	defb 0abh,057h	; 564e
	defb 0dch,057h	; 5650
	defb 0e5h,057h	; 5652
	defb 0fah,057h	; 5654
	defb 0ffh,057h	; 5656
	defb 00ch,058h	; 5658
	defb 011h,058h	; 565a
	defb 022h,058h	; 565c
	defb 02fh,058h	; 565e
	defb 040h,058h	; 5660
	defb 055h,058h	; 5662
	defb 06ah,058h	; 5664
	defb 073h,058h	; 5666

; ----------------------------------------------------------------------
; DATOS lista_de_sprites_0: entradas [bancos | accion][destino][fuente]: 1
;   RLE, 2 espejo, 3 del reves, 4 las dos; un 0 acaba; lo leen p00:4CD2 (29
;   bytes)
;   0x5668..0x5685  (29 bytes)
DATA_lista_de_sprites_0:
	defb 011h,040h,085h,08eh	; 5668
	defb 002h,078h,040h,002h	; 566c
	defb 002h,080h,050h,002h	; 5670
	defb 002h,088h,060h,006h	; 5674
	defb 011h,0a0h,08ch,094h	; 5678
	defb 011h,0c0h,09fh,081h	; 567c
	defb 002h,0f0h,0e0h,004h	; 5680
	defb 000h	; 5684

; ----------------------------------------------------------------------
; DATOS lista_de_sprites_1: entradas [bancos | accion][destino][fuente]: 1
;   RLE, 2 espejo, 3 del reves, 4 las dos; un 0 acaba; lo leen p00:4CD2 (17
;   bytes)
;   0x5685..0x5696  (17 bytes)
DATA_lista_de_sprites_1:
	defb 011h,040h,0d5h,093h	; 5685
	defb 011h,058h,03fh,095h	; 5689
	defb 002h,078h,058h,008h	; 568d
	defb 011h,0e0h,03ah,084h	; 5691
	defb 000h	; 5695

; ----------------------------------------------------------------------
; DATOS lista_de_sprites_2: entradas [bancos | accion][destino][fuente]: 1
;   RLE, 2 espejo, 3 del reves, 4 las dos; un 0 acaba; lo leen p00:4CD2 (21
;   bytes)
;   0x5696..0x56ab  (21 bytes)
DATA_lista_de_sprites_2:
	defb 011h,040h,0d5h,093h	; 5696
	defb 011h,058h,0b6h,08ah	; 569a
	defb 002h,088h,078h,004h	; 569e
	defb 011h,098h,03fh,095h	; 56a2
	defb 002h,0b8h,098h,008h	; 56a6
	defb 000h	; 56aa

; ----------------------------------------------------------------------
; DATOS lista_de_sprites_3: entradas [bancos | accion][destino][fuente]: 1
;   RLE, 2 espejo, 3 del reves, 4 las dos; un 0 acaba; lo leen p00:4CD2 (29
;   bytes)
;   0x56ab..0x56c8  (29 bytes)
DATA_lista_de_sprites_3:
	defb 011h,040h,0d4h,07fh	; 56ab
	defb 002h,048h,040h,002h	; 56af
	defb 011h,050h,00dh,080h	; 56b3
	defb 002h,068h,060h,002h	; 56b7
	defb 002h,070h,050h,004h	; 56bb
	defb 011h,0a0h,0cbh,080h	; 56bf
	defb 004h,0b0h,0a0h,004h	; 56c3
	defb 000h	; 56c7

; ----------------------------------------------------------------------
; DATOS lista_de_sprites_4: entradas [bancos | accion][destino][fuente]: 1
;   RLE, 2 espejo, 3 del reves, 4 las dos; un 0 acaba; lo leen p00:4CD2 (17
;   bytes)
;   0x56c8..0x56d9  (17 bytes)
DATA_lista_de_sprites_4:
	defb 041h,040h,0dch,0a7h	; 56c8
	defb 011h,098h,03fh,095h	; 56cc
	defb 002h,0b8h,098h,008h	; 56d0
	defb 011h,0e0h,03ah,084h	; 56d4
	defb 000h	; 56d8

; ----------------------------------------------------------------------
; DATOS lista_de_sprites_5: entradas [bancos | accion][destino][fuente]: 1
;   RLE, 2 espejo, 3 del reves, 4 las dos; un 0 acaba; lo leen p00:4CD2 (21
;   bytes)
;   0x56d9..0x56ee  (21 bytes)
DATA_lista_de_sprites_5:
	defb 011h,040h,0d5h,093h	; 56d9
	defb 011h,058h,066h,08dh	; 56dd
	defb 011h,070h,0dfh,08dh	; 56e1
	defb 011h,0c0h,09fh,081h	; 56e5
	defb 002h,0f0h,0e0h,004h	; 56e9
	defb 000h	; 56ed

; ----------------------------------------------------------------------
; DATOS lista_de_sprites_6: entradas [bancos | accion][destino][fuente]: 1
;   RLE, 2 espejo, 3 del reves, 4 las dos; un 0 acaba; lo leen p00:4CD2 (5
;   bytes)
;   0x56ee..0x56f3  (5 bytes)
DATA_lista_de_sprites_6:
	defb 011h,040h,074h,086h	; 56ee
	defb 000h	; 56f2

; ----------------------------------------------------------------------
; DATOS lista_de_sprites_7: lista de patrones de sprite 7 de p00:5630: no la
;   pide ninguna pantalla (p09:B0B7 no da el 7)
;   0x56f3..0x5704  (17 bytes)
DATA_lista_de_sprites_7:
	defb 011h,040h,0d5h,093h,011h,058h,066h,08dh,011h,070h,0dfh,08dh,011h,0e0h,03ah,084h	; 56f3  .@...Xf..p....:.
	defb 000h	; 5703

; ----------------------------------------------------------------------
; DATOS lista_de_sprites_8: entradas [bancos | accion][destino][fuente]: 1
;   RLE, 2 espejo, 3 del reves, 4 las dos; un 0 acaba; lo leen p00:4CD2 (9
;   bytes)
;   0x5704..0x570d  (9 bytes)
DATA_lista_de_sprites_8:
	defb 011h,040h,03ch,089h	; 5704
	defb 011h,078h,074h,086h	; 5708
	defb 000h	; 570c

; ----------------------------------------------------------------------
; DATOS lista_de_sprites_9: entradas [bancos | accion][destino][fuente]: 1
;   RLE, 2 espejo, 3 del reves, 4 las dos; un 0 acaba; lo leen p00:4CD2 (25
;   bytes)
;   0x570d..0x5726  (25 bytes)
DATA_lista_de_sprites_9:
	defb 041h,040h,0deh,0a9h	; 570d
	defb 002h,060h,040h,008h	; 5711
	defb 011h,0a0h,08ch,094h	; 5715
	defb 011h,0c0h,01eh,081h	; 5719
	defb 002h,0d0h,0c0h,004h	; 571d
	defb 011h,0e0h,03ah,084h	; 5721
	defb 000h	; 5725

; ----------------------------------------------------------------------
; DATOS lista_de_sprites_10: entradas [bancos | accion][destino][fuente]: 1
;   RLE, 2 espejo, 3 del reves, 4 las dos; un 0 acaba; lo leen p00:4CD2 (25
;   bytes)
;   0x5726..0x573f  (25 bytes)
DATA_lista_de_sprites_10:
	defb 011h,040h,00dh,083h	; 5726
	defb 002h,068h,048h,008h	; 572a
	defb 021h,088h,0beh,0afh	; 572e
	defb 002h,090h,088h,002h	; 5732
	defb 041h,098h,00eh,0a4h	; 5736
	defb 002h,0d8h,0b0h,00ah	; 573a
	defb 000h	; 573e

; ----------------------------------------------------------------------
; DATOS lista_de_sprites_11: entradas [bancos | accion][destino][fuente]: 1
;   RLE, 2 espejo, 3 del reves, 4 las dos; un 0 acaba; lo leen p00:4CD2 (25
;   bytes)
;   0x573f..0x5758  (25 bytes)
DATA_lista_de_sprites_11:
	defb 041h,040h,0e3h,0a6h	; 573f
	defb 002h,060h,040h,008h	; 5743
	defb 011h,0a0h,08ch,094h	; 5747
	defb 011h,0c0h,01eh,081h	; 574b
	defb 002h,0d0h,0c0h,004h	; 574f
	defb 011h,0e0h,03ah,084h	; 5753
	defb 000h	; 5757

; ----------------------------------------------------------------------
; DATOS lista_de_sprites_12: entradas [bancos | accion][destino][fuente]: 1
;   RLE, 2 espejo, 3 del reves, 4 las dos; un 0 acaba; lo leen p00:4CD2 (17
;   bytes)
;   0x5758..0x5769  (17 bytes)
DATA_lista_de_sprites_12:
	defb 011h,040h,00dh,083h	; 5758
	defb 002h,068h,048h,008h	; 575c
	defb 011h,088h,085h,08eh	; 5760
	defb 002h,0b8h,0a8h,004h	; 5764
	defb 000h	; 5768

; ----------------------------------------------------------------------
; DATOS lista_de_sprites_13: entradas [bancos | accion][destino][fuente]: 1
;   RLE, 2 espejo, 3 del reves, 4 las dos; un 0 acaba; lo leen p00:4CD2 (33
;   bytes)
;   0x5769..0x578a  (33 bytes)
DATA_lista_de_sprites_13:
	defb 011h,040h,0d4h,07fh	; 5769
	defb 002h,048h,040h,002h	; 576d
	defb 011h,050h,00dh,080h	; 5771
	defb 002h,068h,060h,002h	; 5775
	defb 002h,070h,050h,004h	; 5779
	defb 011h,0a0h,0cbh,080h	; 577d
	defb 004h,0b0h,0a0h,004h	; 5781
	defb 011h,080h,074h,086h	; 5785
	defb 000h	; 5789

; ----------------------------------------------------------------------
; DATOS lista_de_sprites_14: entradas [bancos | accion][destino][fuente]: 1
;   RLE, 2 espejo, 3 del reves, 4 las dos; un 0 acaba; lo leen p00:4CD2 (33
;   bytes)
;   0x578a..0x57ab  (33 bytes)
DATA_lista_de_sprites_14:
	defb 011h,040h,0e4h,08ch	; 578a
	defb 003h,050h,040h,004h	; 578e
	defb 004h,060h,040h,004h	; 5792
	defb 002h,070h,040h,004h	; 5796
	defb 041h,080h,0e0h,0aah	; 579a
	defb 002h,0a0h,080h,002h	; 579e
	defb 003h,0a8h,088h,002h	; 57a2
	defb 004h,0b0h,090h,004h	; 57a6
	defb 000h	; 57aa

; ----------------------------------------------------------------------
; DATOS lista_de_sprites_15: entradas [bancos | accion][destino][fuente]: 1
;   RLE, 2 espejo, 3 del reves, 4 las dos; un 0 acaba; lo leen p00:4CD2 (49
;   bytes)
;   0x57ab..0x57dc  (49 bytes)
DATA_lista_de_sprites_15:
	defb 011h,040h,0e8h,090h	; 57ab
	defb 002h,048h,040h,002h	; 57af
	defb 011h,050h,029h,091h	; 57b3
	defb 002h,068h,060h,002h	; 57b7
	defb 002h,070h,050h,004h	; 57bb
	defb 011h,080h,0e7h,091h	; 57bf
	defb 002h,098h,088h,002h	; 57c3
	defb 011h,0a0h,0a3h,092h	; 57c7
	defb 002h,0b0h,0a0h,004h	; 57cb
	defb 021h,0c0h,03bh,0afh	; 57cf
	defb 021h,0d0h,0beh,0afh	; 57d3
	defb 002h,0d8h,0d0h,002h	; 57d7
	defb 000h	; 57db

; ----------------------------------------------------------------------
; DATOS lista_de_sprites_16: entradas [bancos | accion][destino][fuente]: 1
;   RLE, 2 espejo, 3 del reves, 4 las dos; un 0 acaba; lo leen p00:4CD2 (9
;   bytes)
;   0x57dc..0x57e5  (9 bytes)
DATA_lista_de_sprites_16:
	defb 011h,0a8h,044h,090h	; 57dc
	defb 011h,0c0h,0f0h,092h	; 57e0
	defb 000h	; 57e4

; ----------------------------------------------------------------------
; DATOS lista_de_sprites_17: entradas [bancos | accion][destino][fuente]: 1
;   RLE, 2 espejo, 3 del reves, 4 las dos; un 0 acaba; lo leen p00:4CD2 (21
;   bytes)
;   0x57e5..0x57fa  (21 bytes)
DATA_lista_de_sprites_17:
	defb 011h,040h,0efh,087h	; 57e5
	defb 011h,060h,06eh,087h	; 57e9
	defb 011h,070h,06eh,087h	; 57ed
	defb 002h,050h,070h,004h	; 57f1
	defb 011h,080h,068h,088h	; 57f5
	defb 000h	; 57f9

; ----------------------------------------------------------------------
; DATOS lista_de_sprites_18: entradas [bancos | accion][destino][fuente]: 1
;   RLE, 2 espejo, 3 del reves, 4 las dos; un 0 acaba; lo leen p00:4CD2 (5
;   bytes)
;   0x57fa..0x57ff  (5 bytes)
DATA_lista_de_sprites_18:
	defb 011h,040h,0d5h,093h	; 57fa
	defb 000h	; 57fe

; ----------------------------------------------------------------------
; DATOS lista_de_sprites_19: entradas [bancos | accion][destino][fuente]: 1
;   RLE, 2 espejo, 3 del reves, 4 las dos; un 0 acaba; lo leen p00:4CD2 (13
;   bytes)
;   0x57ff..0x580c  (13 bytes)
DATA_lista_de_sprites_19:
	defb 011h,080h,03dh,085h	; 57ff
	defb 002h,0a8h,088h,008h	; 5803
	defb 041h,0c8h,00eh,0a4h	; 5807
	defb 000h	; 580b

; ----------------------------------------------------------------------
; DATOS lista_de_sprites_20: lista de patrones de sprite 20 de p00:5630:
;   tampoco la pide ninguna pantalla
;   0x580c..0x5811  (5 bytes)
DATA_lista_de_sprites_20:
	defb 011h,0e0h,03ah,084h,000h	; 580c

; ----------------------------------------------------------------------
; DATOS lista_de_sprites_21: entradas [bancos | accion][destino][fuente]: 1
;   RLE, 2 espejo, 3 del reves, 4 las dos; un 0 acaba; lo leen p00:4CD2 (17
;   bytes)
;   0x5811..0x5822  (17 bytes)
DATA_lista_de_sprites_21:
	defb 041h,040h,0deh,0a9h	; 5811
	defb 002h,060h,040h,008h	; 5815
	defb 041h,0c0h,065h,0b4h	; 5819
	defb 011h,0e0h,03ah,084h	; 581d
	defb 000h	; 5821

; ----------------------------------------------------------------------
; DATOS lista_de_sprites_22: entradas [bancos | accion][destino][fuente]: 1
;   RLE, 2 espejo, 3 del reves, 4 las dos; un 0 acaba; lo leen p00:4CD2 (13
;   bytes)
;   0x5822..0x582f  (13 bytes)
DATA_lista_de_sprites_22:
	defb 041h,040h,0e4h,0a5h	; 5822
	defb 041h,060h,0e3h,0a6h	; 5826
	defb 002h,080h,040h,010h	; 582a
	defb 000h	; 582e

; ----------------------------------------------------------------------
; DATOS lista_de_sprites_23: entradas [bancos | accion][destino][fuente]: 1
;   RLE, 2 espejo, 3 del reves, 4 las dos; un 0 acaba; lo leen p00:4CD2 (17
;   bytes)
;   0x582f..0x5840  (17 bytes)
DATA_lista_de_sprites_23:
	defb 011h,040h,03dh,085h	; 582f
	defb 002h,068h,048h,008h	; 5833
	defb 041h,088h,0e4h,0abh	; 5837
	defb 002h,0c8h,0b8h,004h	; 583b
	defb 000h	; 583f

; ----------------------------------------------------------------------
; DATOS lista_de_sprites_24: entradas [bancos | accion][destino][fuente]: 1
;   RLE, 2 espejo, 3 del reves, 4 las dos; un 0 acaba; lo leen p00:4CD2 (21
;   bytes)
;   0x5840..0x5855  (21 bytes)
DATA_lista_de_sprites_24:
	defb 011h,040h,066h,08dh	; 5840
	defb 011h,058h,0b6h,08ah	; 5844
	defb 002h,088h,078h,004h	; 5848
	defb 011h,098h,03fh,095h	; 584c
	defb 002h,0b8h,098h,008h	; 5850
	defb 000h	; 5854

; ----------------------------------------------------------------------
; DATOS lista_de_sprites_25: entradas [bancos | accion][destino][fuente]: 1
;   RLE, 2 espejo, 3 del reves, 4 las dos; un 0 acaba; lo leen p00:4CD2 (21
;   bytes)
;   0x5855..0x586a  (21 bytes)
DATA_lista_de_sprites_25:
	defb 011h,040h,0d5h,093h	; 5855
	defb 011h,058h,03fh,095h	; 5859
	defb 002h,078h,058h,008h	; 585d
	defb 041h,098h,00eh,0a4h	; 5861
	defb 002h,0d8h,0b0h,00ah	; 5865
	defb 000h	; 5869

; ----------------------------------------------------------------------
; DATOS lista_de_sprites_26: entradas [bancos | accion][destino][fuente]: 1
;   RLE, 2 espejo, 3 del reves, 4 las dos; un 0 acaba; lo leen p00:4CD2 (9
;   bytes)
;   0x586a..0x5873  (9 bytes)
DATA_lista_de_sprites_26:
	defb 011h,040h,025h,08ch	; 586a
	defb 002h,068h,040h,00ah	; 586e
	defb 000h	; 5872

; ----------------------------------------------------------------------
; DATOS lista_de_sprites_27: entradas [bancos | accion][destino][fuente]: 1
;   RLE, 2 espejo, 3 del reves, 4 las dos; un 0 acaba; lo leen p00:4CD2 (21
;   bytes)
;   0x5873..0x5888  (21 bytes)
DATA_lista_de_sprites_27:
	defb 011h,040h,0d5h,093h	; 5873
	defb 011h,058h,066h,08dh	; 5877
	defb 011h,070h,0b6h,08ah	; 587b
	defb 002h,0a0h,090h,004h	; 587f
	defb 011h,0e0h,03ah,084h	; 5883
	defb 000h	; 5887

; ======================================================================
; CODIGO 0x5888..0x5b1e  (662 bytes)
; ======================================================================


empieza_la_pantalla:
	xor a			;5888   ; EMPIEZA LA PANTALLA: sin grafico de jefe...
	ld (0df94h),a		;5889   ; guarda el grafico de jefe que hay subido
	ld (0dff4h),a		;588c
	ld (0dff5h),a		;588f
	ld de,0dfb1h		;5892   ; ...0xDFB0-0xDFBF a cero...
	ld hl,0dfb0h		;5895
	ld (hl),a			;5898
	ld bc,0000fh		;5899
	ldir		;589c
	ld l,c			;589e   ; ...0xDFA0 = 1...
	ld h,b			;589f
	inc hl			;58a0
	ld (0dfa0h),hl		;58a1
	call posicion_de_mitchel		;58a4   ; ...donde esta Mitchel (0xDFF6)...
	ld hl,0dff6h		;58a7
	ld (hl),e			;58aa
	inc hl			;58ab
	ld (hl),d			;58ac
	ld a,010h		;58ad
	ld (0dfa4h),a		;58af
	ld a,00ah		;58b2
	ld (0df93h),a		;58b4
	xor a			;58b7
	ld (0df92h),a		;58b8
	ld (0df9ah),a		;58bb
	dec a			;58be
	ld (0dfe0h),a		;58bf
	ld a,(0c13bh)		;58c2   ; con 0xC13B, directamente a p00:5992
	and a			;58c5
	jp nz,L_5992		;58c6
	ld a,(0c13ch)		;58c9   ; la pantalla de antes (0xC13C) y la de ahora
	ld c,a			;58cc
	ld a,(0c125h)		;58cd   ; lee la PANTALLA
	ld (0c13ch),a		;58d0
	ld b,a			;58d3
	cp 062h		;58d4   ; la pantalla 0x62?
	jr c,L_58DD		;58d6
	cp 089h		;58d8   ; la pantalla 0x89?
	jp c,L_5992		;58da
L_58DD:
	ld a,c			;58dd   ; de las pantallas 0x62-0x88 no se guarda nada
	cp 062h		;58de
	jr c,L_58E7		;58e0
	cp 089h		;58e2
	jp c,L_5992		;58e4
L_58E7:
	ld a,b			;58e7
	cp 057h		;58e8
	jr nz,L_58F1		;58ea
	ld a,c			;58ec
	cp 05ah		;58ed
	jr z,L_58FB		;58ef
L_58F1:
	ld a,b			;58f1
	cp 05ah		;58f2
	jr nz,L_590B		;58f4
	ld a,c			;58f6
	cp 057h		;58f7
	jr nz,L_590B		;58f9
L_58FB:
	ld hl,0df00h		;58fb   ; entre 0x57 y 0x5A, todo a cero
	ld de,0df01h		;58fe
	ld bc,0008fh		;5901
	ld (hl),000h		;5904
	ldir		;5906
	jp L_5992		;5908

; ----------------------------------------------------------------------
; LA CUADRICULA DE ALREDEDOR. 0xDF00-0xDF8F son 9 tiras de 16 bytes, las
; pantallas de 3x3 alrededor de la de Mitchel (0xDF40 la suya): un byte por
; enemigo de la lista de la pantalla, y si no es cero ese enemigo no vuelve a
; salir (p00:59C4). Al salir por un lado las tiras se corren hacia el otro y
; las que entran nuevas se ponen a cero: lo marcado dura mientras Mitchel se
; mueva por las vecinas.
; ----------------------------------------------------------------------
L_590B:
	ld a,(0c130h)		;590b   ; el lado por el que se ha salido (0xC130: 0 arriba, 1 derecha, 2 abajo, 3 izquierda)
	or a			;590e
	jr z,L_593A		;590f   ; arriba...
	dec a			;5911
	jr z,L_594A		;5912   ; ...derecha...
	dec a			;5914
	jr z,L_597D		;5915   ; ...abajo; y si no, izquierda:
	ld de,0df2fh		;5917   ; cada fila de tres, una tira a la derecha
	ld hl,0df1fh		;591a
	ld bc,00020h		;591d
	ld a,c			;5920
	lddr		;5921
	ld de,0df5fh		;5923
	ld hl,0df4fh		;5926
	ld c,a			;5929
	lddr		;592a
	ld de,0df8fh		;592c
	ld hl,0df7fh		;592f
	ld c,a			;5932
	lddr		;5933
	ld hl,0df00h		;5935   ; y a cero la columna de la izquierda
	jr L_596B		;5938
L_593A:
	ld de,0df8fh		;593a   ; arriba: todo una fila (48 bytes) hacia abajo...
	ld hl,0df5fh		;593d
	ld bc,00060h		;5940
	lddr		;5943
	ld hl,0df00h		;5945   ; ...y a cero la fila de arriba
	jr L_598B		;5948
L_594A:
	ld de,0df00h		;594a   ; derecha: cada fila, una tira a la izquierda...
	ld hl,0df10h		;594d
	ld bc,00020h		;5950
	ld a,c			;5953
	ldir		;5954
	ld de,0df30h		;5956
	ld hl,0df40h		;5959
	ld c,a			;595c
	ldir		;595d
	ld de,0df60h		;595f
	ld hl,0df70h		;5962
	ld c,a			;5965
	ldir		;5966
	ld hl,0df20h		;5968   ; ...y a cero la columna de la derecha
L_596B:
	ld c,003h		;596b   ; tres tiras de 16 a cero, de 0x30 en 0x30
	ld de,00020h		;596d
	xor a			;5970
L_5971:
	ld b,010h		;5971
L_5973:
	ld (hl),a			;5973
	inc hl			;5974
	djnz L_5973		;5975
	dec c			;5977
	jr z,L_5992		;5978
	add hl,de			;597a
	jr L_5971		;597b
L_597D:
	ld de,0df00h		;597d   ; abajo: todo una fila hacia arriba...
	ld hl,0df30h		;5980
	ld bc,00060h		;5983
	ldir		;5986
	ld hl,0df60h		;5988   ; ...y a cero la fila de abajo
L_598B:
	ld b,030h		;598b
	xor a			;598d
L_598E:
	ld (hl),a			;598e
	inc hl			;598f
	djnz L_598E		;5990
L_5992:
	xor a			;5992   ; LOS ENEMIGOS DE LA PANTALLA
	ld (0c13bh),a		;5993
	ld a,(0c125h)		;5996   ; lee la PANTALLA
	cp 08ah		;5999   ; la pantalla 0x8A?
	ret nc			;599b
	call bancos_13_14_15		;599c   ; la lista de p13:6000 + 2*pantalla
	ld de,06000h		;599f   ; p13:enemigos_de_cada_pantalla: 0x8A punteros, uno por pantalla (0x00-0x89), a su lista de enemigos
	ld a,(0c125h)		;59a2   ; lee la PANTALLA
	call palabra_de_la_tabla		;59a5   ; palabra_de_la_tabla: DE = la palabra A de la tabla de DE
	ex de,hl			;59a8
	ld a,(hl)			;59a9   ; cuantos (0: ninguno)
	or a			;59aa
	jp z,bancos_1_2_3		;59ab   ; bancos_1_2_3: LAS PUERTAS: A, A+1 y A+2 en los tres registros del mapper y en sus copias
	inc hl			;59ae
	ld b,000h		;59af   ; B = el numero de enemigo; sus marcas desde 0xDF40
	ld de,0df40h		;59b1
L_59B4:
	call bancos_13_14_15		;59b4
	push af			;59b7
	ld a,(0c125h)		;59b8   ; lee la PANTALLA
	cp 062h		;59bb   ; la pantalla 0x62?
	jr c,L_59C4		;59bd
	cp 089h		;59bf   ; la pantalla 0x89?
	jp c,L_59D1		;59c1
L_59C4:
	ld a,(de)			;59c4   ; con la marca puesta, no sale
	inc de			;59c5
	or a			;59c6
	jr z,L_59D1		;59c7
	call bancos_1_2_3		;59c9   ; bancos_1_2_3: LAS PUERTAS: A, A+1 y A+2 en los tres registros del mapper y en sus copias
	inc hl			;59cc
	inc hl			;59cd
	jp L_5A22		;59ce
L_59D1:
	push de			;59d1
	push bc			;59d2
	ld c,(hl)			;59d3   ; [tipo]: con el bit 7, solo en el plano alterno (0xC131)
	ld a,(0c131h)		;59d4   ; lee el plano de la pantalla (0, el exterior)
	and a			;59d7
	jr nz,L_59E6		;59d8
	bit 7,c		;59da
	jr z,L_59EE		;59dc
L_59DE:
	inc hl			;59de
	inc hl			;59df
	call bancos_1_2_3		;59e0   ; bancos_1_2_3: LAS PUERTAS: A, A+1 y A+2 en los tres registros del mapper y en sus copias
	jp L_5A20		;59e3
L_59E6:
	ld a,c			;59e6
	bit 7,a		;59e7
	jr z,L_59DE		;59e9
	and 07fh		;59eb
	ld c,a			;59ed
L_59EE:
	inc hl			;59ee   ; [x][y]
	ld e,(hl)			;59ef
	inc hl			;59f0
	ld d,(hl)			;59f1
	call bancos_1_2_3		;59f2   ; bancos_1_2_3: LAS PUERTAS: A, A+1 y A+2 en los tres registros del mapper y en sus copias
	ld a,c			;59f5   ; el tipo 0x15 (DUNGROLL) con 0xC130 = 2 sale 0x58 mas abajo
	cp 015h		;59f6
	jr nz,L_5A0A		;59f8
	ld a,(0c130h)		;59fa   ; lee el lado por el que se ha salido (0 arriba, 1 derecha, 2 abajo, 3 izquierda)
	and a			;59fd
	jr z,L_5A0A		;59fe
	dec a			;5a00
	jr z,L_5A0A		;5a01
	dec a			;5a03
	jr nz,L_5A0A		;5a04
	ld a,058h		;5a06
	add a,e			;5a08
	ld e,a			;5a09
L_5A0A:
	push hl			;5a0a   ; los jefes: si ya se mato (0xDE00 + su numero + 1), no sale
	call indice_del_jefe		;5a0b   ; indice_del_jefe: C = el tipo; L = su numero de jefe (de dos en dos) y acarreo; sin acarreo, no es jefe
	jr nc,L_5A1C		;5a0e
	ld a,l			;5a10
	ld hl,0de00h		;5a11
	call hl_mas_a		;5a14
	inc hl			;5a17
	ld a,(hl)			;5a18
	and a			;5a19
	jr z,L_5A1F		;5a1a
L_5A1C:
	call crea_una_ficha		;5a1c   ; crea_una_ficha: una ficha nueva en 0xD000-0xD67F (13 de 0x80): C el tipo, DE la posicion, B
L_5A1F:
	pop hl			;5a1f
L_5A20:
	pop bc			;5a20
	pop de			;5a21
L_5A22:
	inc b			;5a22   ; el siguiente
	inc hl			;5a23
	pop af			;5a24
	dec a			;5a25
	ret z			;5a26
	jp L_59B4		;5a27
L_5A2A:
	ld a,(0c125h)		;5a2a   ; los sucesos de cada pantalla al entrar: 0x03, 0x06, 0x11...
	cp 003h		;5a2d   ; la pantalla 0x03?
	jp z,0abfbh		;5a2f
	cp 006h		;5a32   ; la pantalla 0x06?
L_5A34:
	jp z,0acb6h		;5a34
	cp 011h		;5a37
L_5A39:
	jp z,06a0fh		;5a39
	cp 024h		;5a3c
	jr z,L_5A34		;5a3e
	cp 025h		;5a40
	jr z,L_5A34		;5a42
	cp 03eh		;5a44
	jr z,L_5A39		;5a46
	cp 043h		;5a48
	jr z,L_5A39		;5a4a
	cp 046h		;5a4c
	jr z,L_5A39		;5a4e
	cp 04ah		;5a50
	jr z,L_5A39		;5a52
	cp 073h		;5a54
	jp z,06a52h		;5a56
	cp 074h		;5a59
	jp z,06a93h		;5a5b
	cp 075h		;5a5e
	jp z,06ad3h		;5a60
	cp 076h		;5a63
	jp z,06b30h		;5a65
	ret			;5a68
crea_una_ficha:
	ld (0e800h),bc		;5a69   ; una ficha nueva en 0xD000-0xD67F (13 de 0x80): C el tipo, DE la posicion, B
	ld (0e802h),de		;5a6d   ; la posicion en 0xE802 (el tipo y B en 0xE800)
	ld hl,0d000h		;5a71   ; apunta a las fichas de los enemigos (13 de 0x80)
	ld b,00dh		;5a74   ; busca una ficha libre entre las 13
	xor a			;5a76
	ld de,00080h		;5a77
L_5A7A:
	cp (hl)			;5a7a
	jr z,L_5A82		;5a7b
	add hl,de			;5a7d
	djnz L_5A7A		;5a7e
	xor a			;5a80   ; no hay sitio
	ret			;5a81
L_5A82:
	ld (0e804h),hl		;5a82   ; la ficha nueva
	push hl			;5a85
	pop ix		;5a86
	call bancos_13_14_15		;5a88
	ld a,(0e800h)		;5a8b   ; p15:A16D + tipo: cuantos sprites
	ld hl,0a16dh		;5a8e
	call hl_mas_a		;5a91
	ld a,(hl)			;5a94
	ld (ix+020h),a		;5a95
	ld c,a			;5a98
	call bancos_1_2_3		;5a99   ; bancos_1_2_3: LAS PUERTAS: A, A+1 y A+2 en los tres registros del mapper y en sus copias
	or a			;5a9c   ; sin sprites, directo a llenarla
	jr z,L_5AC8		;5a9d
	ld de,00000h		;5a9f   ; busca huecos libres (y = 0xE0) en la tabla de sprites: desde el 6...
	ld a,(0c132h)		;5aa2
	and a			;5aa5
	ld hl,0e618h		;5aa6
	ld b,01ah		;5aa9
	jr z,L_5AB2		;5aab
	ld hl,0e628h		;5aad   ; ...o desde el 10 con 0xC132
	ld b,016h		;5ab0
L_5AB2:
	ld a,(hl)			;5ab2
	cp 0e0h		;5ab3
	jr nz,L_5ABF		;5ab5
	inc (hl)			;5ab7   ; lo coge (0xE1)...
	call color_de_un_sprite		;5ab8   ; ...y lo apunta en la ficha
	inc e			;5abb
	dec c			;5abc   ; hasta tener todos
	jr z,L_5AC8		;5abd
L_5ABF:
	inc d			;5abf
	inc l			;5ac0
	inc l			;5ac1
	inc l			;5ac2
	inc l			;5ac3
	djnz L_5AB2		;5ac4
	xor a			;5ac6   ; no hay sprites para todos: no se crea
	ret			;5ac7
L_5AC8:
	xor a			;5ac8
	ld hl,(0e804h)		;5ac9
	ld bc,(0e800h)		;5acc
	ld (hl),c			;5ad0   ; el tipo...
	inc l			;5ad1
	ld (hl),a			;5ad2   ; ...el paso 0...
	ld de,(0e802h)		;5ad3
	inc l			;5ad7
	ld (hl),a			;5ad8
	inc l			;5ad9
	ld (hl),e			;5ada   ; ...la y...
	inc l			;5adb
	ld (hl),a			;5adc
	inc l			;5add
	ld (hl),d			;5ade   ; ...y la x
	inc l			;5adf
	ld (hl),a			;5ae0
	ld (ix+00ch),a		;5ae1
	ld (ix+00eh),003h		;5ae4   ; ix+0x0E = 3
	ld (ix+00fh),b		;5ae8   ; ix+0x0F = B: su numero en la lista de la pantalla (su marca en 0xDF40 y su hueco para el fondo)
	ld (ix+010h),a		;5aeb
	ld (ix+011h),a		;5aee
	ld (ix+01ch),0ffh		;5af1   ; ix+0x1C = 0xFF
	ld (ix+01dh),a		;5af5
	ld (ix+01eh),a		;5af8
	ld (ix+01fh),a		;5afb
	call bancos_13_14_15		;5afe
	ld de,0a1b0h		;5b01   ; los colores de sus sprites (p15:A1B0 + 2*tipo)
	call colores_de_la_ficha		;5b04
	ld a,(0e800h)		;5b07   ; la vida: p15:A265 + tipo
	ld de,0a265h		;5b0a   ; p15:byte_0d_de_cada_enemigo: 69 bytes (el 0 no se usa): lo que p00:5B10 pone en ix+0x0D al crear un enemigo de ese tipo
	call de_mas_a		;5b0d
	ld a,(de)			;5b10
	ld (ix+00dh),a		;5b11
	call bancos_1_2_3		;5b14   ; bancos_1_2_3: LAS PUERTAS: A, A+1 y A+2 en los tres registros del mapper y en sus copias
	ld a,(ix+000h)		;5b17   ; y lo de su tipo, por la tabla de p00:5B1E
	dec a			;5b1a
	call despacha		;5b1b   ; despacha: Salta a la entrada A de la tabla de palabras que va pegada detras del `call`.

; ----------------------------------------------------------------------
; DATOS tabla_5B1E: 68 destinos del despachador de 0x425F (call en p00:5B1B):
;   0xB0FD, 0xB367, 0xB39D, 0x8645, 0x8635, 0xA7A9, 0xAC1A, 0xABC4 ...; lo
;   leen p00:5B1B (136 bytes)
;   0x5b1e..0x5ba6  (136 bytes)
DATA_tabla_5B1E:
	defb 0fdh,0b0h	; 5b1e
	defb 067h,0b3h	; 5b20
	defb 09dh,0b3h	; 5b22
	defb 045h,086h	; 5b24
	defb 035h,086h	; 5b26
	defb 0a9h,0a7h	; 5b28
	defb 01ah,0ach	; 5b2a
	defb 0c4h,0abh	; 5b2c
	defb 0f4h,093h	; 5b2e
	defb 011h,092h	; 5b30
	defb 046h,09fh	; 5b32
	defb 046h,09fh	; 5b34
	defb 052h,0a1h	; 5b36
	defb 0a6h,05bh	; 5b38
	defb 0a6h,05bh	; 5b3a
	defb 0dbh,087h	; 5b3c
	defb 0c4h,088h	; 5b3e
	defb 0a6h,0b3h	; 5b40
	defb 09fh,0b7h	; 5b42
	defb 005h,0b8h	; 5b44
	defb 08eh,0adh	; 5b46
	defb 0a6h,05bh	; 5b48
	defb 06ah,0a3h	; 5b4a
	defb 06ah,0a3h	; 5b4c
	defb 06ah,0a3h	; 5b4e
	defb 0a8h,08ah	; 5b50
	defb 0b2h,08fh	; 5b52
	defb 082h,08ah	; 5b54
	defb 00ch,098h	; 5b56
	defb 00ch,098h	; 5b58
	defb 00ch,098h	; 5b5a
	defb 00ch,098h	; 5b5c
	defb 00ch,098h	; 5b5e
	defb 00ch,098h	; 5b60
	defb 00ch,098h	; 5b62
	defb 06ah,0a3h	; 5b64
	defb 00ch,098h	; 5b66
	defb 00ch,098h	; 5b68
	defb 00ch,098h	; 5b6a
	defb 05fh,08bh	; 5b6c
	defb 0aeh,0aeh	; 5b6e
	defb 0d0h,0a6h	; 5b70
	defb 08ch,0a7h	; 5b72
	defb 0a1h,0a1h	; 5b74
	defb 078h,09ch	; 5b76
	defb 078h,0b7h	; 5b78
	defb 04ch,091h	; 5b7a
	defb 068h,0b0h	; 5b7c
	defb 0f4h,093h	; 5b7e
	defb 075h,095h	; 5b80
	defb 0a0h,08ch	; 5b82
	defb 0a0h,08ch	; 5b84
	defb 0a0h,08ch	; 5b86
	defb 06ah,0a3h	; 5b88
	defb 06ah,0a3h	; 5b8a
	defb 02ah,09ch	; 5b8c
	defb 02ah,09ch	; 5b8e
	defb 014h,096h	; 5b90
	defb 06ch,08dh	; 5b92
	defb 0feh,09ah	; 5b94
	defb 02ah,0bdh	; 5b96
	defb 0f2h,0ach	; 5b98
	defb 025h,0beh	; 5b9a
	defb 03dh,08eh	; 5b9c
	defb 076h,08fh	; 5b9e
	defb 018h,085h	; 5ba0
	defb 0f1h,0b2h	; 5ba2
	defb 047h,0b2h	; 5ba4

; ======================================================================
; CODIGO 0x5ba6..0x5c39  (147 bytes)
; ======================================================================


L_5BA6:
	ret			;5ba6
colores_de_la_ficha:
	ld a,(ix+020h)		;5ba7
	and a			;5baa
	ret z			;5bab
	ld a,(ix+000h)		;5bac   ; p15:A1B0 + 2*tipo: la lista de colores
	call palabra_de_la_tabla		;5baf   ; palabra_de_la_tabla: DE = la palabra A de la tabla de DE
	ld hl,(0e804h)		;5bb2   ; los colores, en ix+0x25, +5, +10...
	set 5,l		;5bb5
	ld b,(hl)			;5bb7
	ld a,005h		;5bb8
	add a,l			;5bba
	ld l,a			;5bbb
L_5BBC:
	ld a,(de)			;5bbc
	inc de			;5bbd
	ld (hl),a			;5bbe
	ld a,l			;5bbf
	add a,005h		;5bc0
	ld l,a			;5bc2
	djnz L_5BBC		;5bc3
	ret			;5bc5
color_de_un_sprite:
	push hl			;5bc6
	ld hl,(0e804h)		;5bc7   ; ix+0x21 + 5*E = el hueco de sprite D
	ld a,e			;5bca
	add a,a			;5bcb
	add a,a			;5bcc
	add a,e			;5bcd
	add a,021h		;5bce
	call hl_mas_a		;5bd0
	ld (hl),d			;5bd3
	pop hl			;5bd4
	ret			;5bd5
L_5BD6:
	ld a,(ix+00ch)		;5bd6   ; cada dos cuadros...
	rra			;5bd9
	ret nc			;5bda
	call bancos_7_8_9		;5bdb
	dec (ix+014h)		;5bde   ; ...un paso mas de la vuelta (64 pasos, ix+0x14)...
	ld a,(ix+014h)		;5be1
	inc a			;5be4
	jr nz,L_5BEC		;5be5
	ld a,03fh		;5be7
	ld (ix+014h),a		;5be9
L_5BEC:
	add a,a			;5bec   ; ...con el circulo de p09:B145: y y x alrededor de (0x58, 0x58)
	ld hl,0b145h		;5bed   ; p09:circulo_B145: 64 parejas [dy][dx]: un circulo de radio 0x40; p00:5BED da una vuelta con ix+0x14 (de 0x3F a 0)
	call hl_mas_a		;5bf0
	ld c,058h		;5bf3
	ld d,(hl)			;5bf5
	inc hl			;5bf6
	ld a,d			;5bf7
	add a,c			;5bf8
	ld (ix+003h),a		;5bf9
	ld d,(hl)			;5bfc
	ld a,d			;5bfd
	add a,c			;5bfe
	ld (ix+005h),a		;5bff
	jp bancos_1_2_3		;5c02   ; bancos_1_2_3: LAS PUERTAS: A, A+1 y A+2 en los tres registros del mapper y en sus copias
L_5C05:
	ld hl,0c200h		;5c05   ; EL CUADRO DEL JUEGO (desde p01:65C2): 0xC200 bit 0...
	ld a,(hl)			;5c08
	rra			;5c09
	jp nc,L_5CBC		;5c0a   ; ...sin el, p00:5CBC
	ld a,(0c201h)		;5c0d   ; lee el estado de la partida (0 jugando, 1 cambio de pantalla, 3 conversacion, 5 y 6 sucesos, 7 GAME OVER)
	cp 002h		;5c10
	call nz,copia_lineas_a_la_pagina_1		;5c12   ; copia_lineas_a_la_pagina_1: la linea 0xEC de la pagina 0 a la 1...
	ld hl,0c209h		;5c15   ; cuenta de cuadros 0xC209
	inc (hl)			;5c18
	call 064d9h		;5c19   ; p01:teclas_del_cuadro: sin el bit 6 de 0xC102 (la demostracion), las teclas salen del guion (p01:69D7)
	ld a,(0c102h)		;5c1c   ; lee las banderas de la partida (bit 6: de verdad, no la demostracion)
	and 040h		;5c1f   ; con la partida de verdad...
	jr z,L_5C33		;5c21
	di			;5c23
	ld a,006h		;5c24   ; ...y el suceso de p06:A649 en marcha (0xC139 no es 0xFF)...
	call banco_en_a000		;5c26   ; banco_en_a000: el banco A en 0xA000, y en su copia (0xF0F3) y en la reserva (0xF0F6)
	ld a,(0c139h)		;5c29   ; lee el paso del suceso de p06:A649
	inc a			;5c2c
	call nz,0a649h		;5c2d   ; ...su paso
	call bancos_1_2_3		;5c30   ; bancos_1_2_3: LAS PUERTAS: A, A+1 y A+2 en los tres registros del mapper y en sus copias
L_5C33:
	ld a,(0c201h)		;5c33   ; lo que toca en este estado de la partida (0xC201)
	call despacha		;5c36   ; despacha: Salta a la entrada A de la tabla de palabras que va pegada detras del `call`.

; ----------------------------------------------------------------------
; DATOS tabla_5C39: 8 destinos del despachador de 0x425F (call en p00:5C36):
;   0x5C49, 0x539E, 0x5D91, 0x5D88, 0x5C49, 0x5D72, 0x8234, 0x5D53; lo leen
;   p00:5C36 (16 bytes)
;   0x5c39..0x5c49  (16 bytes)
DATA_tabla_5C39:
	defb 049h,05ch	; 5c39
	defb 09eh,053h	; 5c3b
	defb 091h,05dh	; 5c3d
	defb 088h,05dh	; 5c3f
	defb 049h,05ch	; 5c41
	defb 072h,05dh	; 5c43
	defb 034h,082h	; 5c45
	defb 053h,05dh	; 5c47

; ======================================================================
; CODIGO 0x5c49..0x5fa7  (862 bytes)
; ======================================================================


L_5C49:
	call sube_la_pose_de_mitchel		;5c49   ; LOS SPRITES DEL CUADRO: la pose de Mitchel...
	call sube_el_grafico_de_jefe		;5c4c   ; ...y el grafico del jefe
	ld a,(0c133h)		;5c4f   ; cada cuadro, si no hay nada en marcha (0xC133)...
	and a			;5c52
	jr nz,L_5C64		;5c53
	ld a,(0c112h)		;5c55   ; lee las teclas del teclado (bits 3-5: 1, 2 y 3; bit 2: F5)
	and 001h		;5c58
	jr z,L_5C64		;5c5a
	ld (0c11bh),a		;5c5c   ; ...0xC11B y el sonido 0xFD
	ld a,0fdh		;5c5f
	jp sonido_si_juega		;5c61   ; sonido_si_juega: solo con el bit 6 de 0xC102 (la partida de verdad, no la demostracion)
L_5C64:
	ld hl,0c16dh		;5c64   ; 0xC16D: Mitchel parpadea mientras no sea cero
	ld a,(hl)			;5c67
	and a			;5c68
	jr z,L_5C7C		;5c69
	ld de,04201h		;5c6b
	ld (0c309h),de		;5c6e   ; guarda el color del primer sprite de Mitchel
	dec (hl)			;5c72
	jp z,06428h		;5c73   ; p01:borra_la_ventana_de_texto: 160x24 puntos en (8, 0xB0): debajo del decorado
	call sprites_de_mitchel		;5c76
	jp sube_los_sprites_girando		;5c79   ; sube_los_sprites_girando: 0xC10F avanza 0x68: el orden de los sprites da la vuelta cada cuadro, para que los que sobran en una linea parpadeen
L_5C7C:
	ld hl,0c162h		;5c7c   ; 0xC162: la cuenta de un aviso
	ld a,(hl)			;5c7f
	and a			;5c80
	jr z,L_5C87		;5c81
	dec (hl)			;5c83
	call z,06428h		;5c84   ; p01:borra_la_ventana_de_texto: 160x24 puntos en (8, 0xB0): debajo del decorado
L_5C87:
	call 06578h		;5c87   ; p01:6578: mira las teclas de pausa
	ld a,(0c560h)		;5c8a   ; lee el SUCESO: el tipo de decorado que hay que quitar
	and a			;5c8d
	jp nz,L_5D7D		;5c8e
	ld hl,0c147h		;5c91   ; 0xC147: otra cuenta
	ld a,(hl)			;5c94
	and a			;5c95
	jr z,L_5C99		;5c96
	dec (hl)			;5c98
L_5C99:
	call 06b87h		;5c99   ; lo de cada cuadro: p01:6B87, p02:829A...
	call 0829ah		;5c9c   ; p02:la_que_sigue: LA FIGURA QUE SIGUE A MITCHEL, cada cuadro: 1 le sigue, 2 espera a que Mitchel llegue
	call banco_12_en_a000		;5c9f
	call 0be68h		;5ca2   ; ...p12:BE68...
	call bancos_1_2_3		;5ca5   ; bancos_1_2_3: LAS PUERTAS: A, A+1 y A+2 en los tres registros del mapper y en sus copias
	ld a,(0c300h)		;5ca8   ; lee el estado de Mitchel
	cp 006h		;5cab   ; con Mitchel en el estado 6, nada mas
	jp z,L_5D4E		;5cad
	call 07607h		;5cb0   ; p01:7607, p01:6821 y p01:78FC
	call 06821h		;5cb3
	call 078fch		;5cb6
	jp L_5D4E		;5cb9
L_5CBC:
	call 06476h		;5cbc   ; EL CUADRO IMPAR: teclas, dias (p01:7A5A)...
	call 07a5ah		;5cbf
	ld a,009h		;5cc2   ; ...choques de p09...
	call banco_en_a000		;5cc4   ; banco_en_a000: el banco A en 0xA000, y en su copia (0xF0F3) y en la reserva (0xF0F6)
	call 0bcc7h		;5cc7
	call banco_12_en_a000		;5cca
	call 0bf9bh		;5ccd   ; ...p03:BF9B...
	ld a,006h		;5cd0   ; ...y el banco 6: p06:BE62, BD64 y BD49
	call banco_en_a000		;5cd2   ; banco_en_a000: el banco A en 0xA000, y en su copia (0xF0F3) y en la reserva (0xF0F6)
	call 0be62h		;5cd5
	call 0bd64h		;5cd8
	call 0bd49h		;5cdb
	call bancos_1_2_3		;5cde   ; bancos_1_2_3: LAS PUERTAS: A, A+1 y A+2 en los tres registros del mapper y en sus copias
	ld a,(0c133h)		;5ce1   ; con algo en marcha (0xC133), sin mas
	and a			;5ce4
	jr nz,L_5D17		;5ce5
	call banco_12_en_a000		;5ce7   ; p12: la ventana (con 0xC292)
	ld a,(0c201h)		;5cea   ; lee el estado de la partida (0 jugando, 1 cambio de pantalla, 3 conversacion, 5 y 6 sucesos, 7 GAME OVER)
	and a			;5ced
	call z,07e1dh		;5cee   ; p01:busca_quien_habla
	call bancos_1_2_3		;5cf1   ; bancos_1_2_3: LAS PUERTAS: A, A+1 y A+2 en los tres registros del mapper y en sus copias
	ld a,006h		;5cf4   ; p06:BD9D si 0xC132 es cero
	call banco_en_a000		;5cf6   ; banco_en_a000: el banco A en 0xA000, y en su copia (0xF0F3) y en la reserva (0xF0F6)
	ld a,(0c201h)		;5cf9   ; lee el estado de la partida (0 jugando, 1 cambio de pantalla, 3 conversacion, 5 y 6 sucesos, 7 GAME OVER)
	and a			;5cfc
	call z,0bd9dh		;5cfd
	call bancos_1_2_3		;5d00   ; bancos_1_2_3: LAS PUERTAS: A, A+1 y A+2 en los tres registros del mapper y en sus copias
	ld a,(0c201h)		;5d03   ; lee el estado de la partida (0 jugando, 1 cambio de pantalla, 3 conversacion, 5 y 6 sucesos, 7 GAME OVER)
	and a			;5d06
	call z,06043h		;5d07   ; p01:6043 (las salidas) si 0xC132 es cero
	call banco_12_en_a000		;5d0a
	ld a,(0c201h)		;5d0d   ; lee el estado de la partida (0 jugando, 1 cambio de pantalla, 3 conversacion, 5 y 6 sucesos, 7 GAME OVER)
	and a			;5d10
	call z,0b9d0h		;5d11   ; p12:B9D0 si 0xC133 es cero
	call bancos_1_2_3		;5d14   ; bancos_1_2_3: LAS PUERTAS: A, A+1 y A+2 en los tres registros del mapper y en sus copias
L_5D17:
	call sprites_de_mitchel		;5d17   ; los sprites de Mitchel...
	call banco_12_en_a000		;5d1a
	call 0bf37h		;5d1d   ; ...p12:BF37...
	call bancos_1_2_3		;5d20   ; bancos_1_2_3: LAS PUERTAS: A, A+1 y A+2 en los tres registros del mapper y en sus copias
	call 0792fh		;5d23   ; ...los objetos, lo lanzado, las fichas...
	call 077f5h		;5d26
	call 06853h		;5d29
	call sprites_de_las_fichas		;5d2c   ; ...y sus sprites
	ld a,(0c125h)		;5d2f   ; lee la PANTALLA
	cp 07eh		;5d32   ; la pantalla 0x7E?
	jr z,L_5D46		;5d34   ; en las pantallas de jefe, Mitchel siempre delante
	cp 07fh		;5d36   ; la pantalla 0x7F?
	jr z,L_5D46		;5d38
	cp 082h		;5d3a   ; la pantalla 0x82?
	jr z,L_5D46		;5d3c
	cp 083h		;5d3e   ; la pantalla 0x83?
	jr z,L_5D46		;5d40
	cp 084h		;5d42   ; la pantalla 0x84?
	jr nz,L_5D4B		;5d44
L_5D46:
	call sube_los_sprites_de_mitchel_girando		;5d46
	jr L_5D4E		;5d49
L_5D4B:
	call sube_los_sprites_girando		;5d4b   ; sube_los_sprites_girando: 0xC10F avanza 0x68: el orden de los sprites da la vuelta cada cuadro, para que los que sobran en una linea parpadeen
L_5D4E:
	ld hl,0c200h		;5d4e   ; el paso de 0xC200: pares e impares se turnan
	inc (hl)			;5d51
	ret			;5d52
L_5D53:
	ld a,(0c167h)		;5d53   ; GAME OVER: 0xC167 = 1 espera a que acabe la musica
	dec a			;5d56
	jr z,L_5D68		;5d57
	ld hl,0c682h		;5d59   ; si no, la cuenta de 0xC682...
	dec (hl)			;5d5c
	ret nz			;5d5d
	ld a,0ffh		;5d5e   ; ...y el sonido 0xFF
	call sonido_si_juega		;5d60   ; sonido_si_juega: solo con el bit 6 de 0xC102 (la partida de verdad, no la demostracion)
	ld hl,0c167h		;5d63
	inc (hl)			;5d66
	ret			;5d67
L_5D68:
	call hay_musica		;5d68   ; hay_musica: Z si no suena nada que importe: sin fundido (0xC08B) ni musica (0xC08D)
	ret nz			;5d6b
	ld a,001h		;5d6c   ; 0xC124 = 1
	ld (0c124h),a		;5d6e
	ret			;5d71
L_5D72:
	ld a,00fh		;5d72   ; p15:BE98 con el banco 15
	call banco_en_a000		;5d74   ; banco_en_a000: el banco A en 0xA000, y en su copia (0xF0F3) y en la reserva (0xF0F6)
	call 0be98h		;5d77   ; p15:suceso_BE98
	jp bancos_1_2_3		;5d7a   ; bancos_1_2_3: LAS PUERTAS: A, A+1 y A+2 en los tres registros del mapper y en sus copias
L_5D7D:
	ld a,00fh		;5d7d   ; p15:BD3A: quita el decorado del suceso
	call banco_en_a000		;5d7f   ; banco_en_a000: el banco A en 0xA000, y en su copia (0xF0F3) y en la reserva (0xF0F6)
	call 0bd3ah		;5d82   ; p15:quita_el_decorado_del_suceso: El suceso de 0xC560 (lo dejan los objetos y los conjuros al usarse: el
	jp bancos_1_2_3		;5d85   ; bancos_1_2_3: LAS PUERTAS: A, A+1 y A+2 en los tres registros del mapper y en sus copias
L_5D88:
	call banco_12_en_a000		;5d88   ; p01:7FE9 (la conversacion) con el banco 12
	call 07fe9h		;5d8b
	jp bancos_1_2_3		;5d8e   ; bancos_1_2_3: LAS PUERTAS: A, A+1 y A+2 en los tres registros del mapper y en sus copias
L_5D91:
	call banco_12_en_a000		;5d91   ; p12:B9E7 con el banco 12
	call 0b9e7h		;5d94   ; p12:la_ventana: la primera vez, se prepara...
	jp bancos_1_2_3		;5d97   ; bancos_1_2_3: LAS PUERTAS: A, A+1 y A+2 en los tres registros del mapper y en sus copias
banco_12_en_a000:
	ld a,00ch		;5d9a
banco_en_a000:
	di			;5d9c   ; el banco A en 0xA000, y en su copia (0xF0F3) y en la reserva (0xF0F6)
	ld (0f0f3h),a		;5d9d   ; guarda la copia del banco de 0xA000
	ld (0a000h),a		;5da0   ; el mapper: el banco de A en 0xA000
	ld (0f0f6h),a		;5da3   ; guarda el banco de reserva de 0xA000 (el que devuelve p00:4215)
	ei			;5da6
	ret			;5da7
mata_la_ficha:
	call cuenta_los_de_su_clase		;5da8   ; el enemigo muere: guarda su tipo en ix+0x1F y se convierte en la explosion de p15:A3CA
	call suceso_al_morir_el_jefe		;5dab   ; suceso_al_morir_el_jefe: los tipos 4, 5, 0x0B, 0x2A, 0x2B y 0x39 (y 0x1A y 0x1E en su pantalla) dejan el suceso 0x28 (o 0x2B) con p01:784A
	ld a,(ix+000h)		;5dae   ; su tipo, para lo que suelta (p03:B9E6)
	ld (ix+01fh),a		;5db1
	xor a			;5db4   ; ya no se mueve
	ld (ix+006h),a		;5db5
	ld (ix+00eh),a		;5db8
	call bancos_13_14_15		;5dbb
	ld a,(ix+000h)		;5dbe   ; p15:A3CA + tipo - 1: la explosion
	ld c,a			;5dc1
	dec a			;5dc2
	ld hl,0a3cah		;5dc3   ; p15:explosion_de_cada_enemigo: 68 bytes, uno por tipo: la explosion (0xF0, 0xF3, 0xF6 o 0xF9) en que se convierte al morir; p00:5DA8 guarda antes el tipo en ix+0x1F (el que mira p03:B9E6 para lo que suelta)
	call hl_mas_a		;5dc6
	ld a,(hl)			;5dc9
	ld (ix+000h),a		;5dca
	ld (ix+00eh),000h		;5dcd
	call bancos_1_2_3		;5dd1   ; bancos_1_2_3: LAS PUERTAS: A, A+1 y A+2 en los tres registros del mapper y en sus copias
	ld a,(0c125h)		;5dd4   ; lee la PANTALLA
	cp 062h		;5dd7   ; la pantalla 0x62?
	jr c,L_5DE0		;5dd9   ; en las pantallas 0x62-0x88 no se marca...
	cp 089h		;5ddb   ; la pantalla 0x89?
	jp c,L_5DF1		;5ddd
L_5DE0:
	ld hl,0df40h		;5de0   ; ...en las demas, su marca en 0xDF40 + su numero: no vuelve a salir
	ld a,(ix+00fh)		;5de3
	inc a			;5de6
	jr z,L_5DF1		;5de7
	ld e,(ix+00fh)		;5de9
	ld d,000h		;5dec
	add hl,de			;5dee
	ld (hl),001h		;5def
L_5DF1:
	call indice_del_jefe		;5df1   ; si es jefe, 0xDE00 + su numero + 1 a cero: no vuelve nunca
	jr nc,L_5E00		;5df4
	ld a,l			;5df6
	ld hl,0de00h		;5df7
	call hl_mas_a		;5dfa
	inc hl			;5dfd
	ld (hl),000h		;5dfe
L_5E00:
	ld (ix+00ch),000h		;5e00
	ld a,(ix+000h)		;5e04   ; las explosiones grandes (0xF6 y 0xF9)...
	cp 0f6h		;5e07
	ld a,020h		;5e09
	jr c,L_5E1C		;5e0b
	ld a,(ix+01fh)		;5e0d
	cp 041h		;5e10
	ld a,020h		;5e12
	jr z,L_5E1C		;5e14
	xor a			;5e16   ; ...paran la musica: sonido 0x8C
	ld (0c151h),a		;5e17
	ld a,08ch		;5e1a
L_5E1C:
	call sonido_si_juega		;5e1c   ; sonido_si_juega: solo con el bit 6 de 0xC102 (la partida de verdad, no la demostracion)
	ld a,(ix+011h)		;5e1f   ; con fondo guardado (ix+0x11)...
	and a			;5e22
	ret z			;5e23
	call repinta_el_fondo_de_la_ficha		;5e24   ; ...se repone
	ld a,(ix+01fh)		;5e27   ; BIGFLOWER (0x42): al morir deja paso...
	cp 042h		;5e2a
	ret nz			;5e2c
	ld a,090h		;5e2d   ; ...0x90 en sus 6x6 casillas...
	ld bc,00606h		;5e2f
	call casilla_de_la_ficha		;5e32   ; casilla_de_la_ficha: PON UNA CASILLA: A en las BxC casillas de debajo de la ficha
	ld hl,0c1c0h		;5e35   ; ...y cuatro casillas del mapa de la RAM con otros dibujos
	ld (0e0ceh),hl		;5e38
	ld hl,0c3c2h		;5e3b
	ld (0e0eeh),hl		;5e3e
	ret			;5e41
L_5E42:
	push ix		;5e42   ; la explosion acaba: ix+0x7D baja...
	dec (ix+07dh)		;5e44
	call z,0b9e6h		;5e47   ; p03:lo_que_suelta: Al morir un enemigo: p03:BA66 + tipo - 1 da el numero de rutina (0xFF =
	pop ix		;5e4a
	jp 0694bh		;5e4c   ; ...y la ficha se borra (p01:694B)
L_5E4F:
	inc (ix+00ch)		;5e4f   ; LA EXPLOSION: cuenta de cuadros
	ld a,(ix+00ch)		;5e52
	cp 018h		;5e55   ; a los 0x18 cuadros acaba (p01:694F)
	jp z,0694fh		;5e57
	cp 019h		;5e5a
	jp z,L_5E42		;5e5c
	and 007h		;5e5f   ; cada 8 cuadros, el cuadro siguiente...
	cp 001h		;5e61
	ret nz			;5e63
	ld a,(ix+000h)		;5e64   ; ...con 2, 8 o 12 sprites segun lo grande que sea
	cp 0f3h		;5e67
	jr c,L_5E77		;5e69
	cp 0f9h		;5e6b
	jr nc,L_5E73		;5e6d
	ld b,008h		;5e6f
	jr L_5E79		;5e71
L_5E73:
	ld b,00ch		;5e73
	jr L_5E79		;5e75
L_5E77:
	ld b,002h		;5e77
L_5E79:
	call bancos_13_14_15		;5e79
	ld a,(ix+000h)		;5e7c
	inc (ix+000h)		;5e7f   ; el tipo sube: el cuadro siguiente de la explosion
	sub 0f0h		;5e82
	ld de,0a2aah		;5e84   ; p15:cuadros_de_explosion: 12 punteros por ix+0 - 0xF0 (las explosiones: p00:5E7F sube ix+0 cada vez): grupos de sprites [dy][dx][patron][color] que p00:5E93 suma a la posicion
	call palabra_de_la_tabla		;5e87   ; su grupo de sprites (p15:A2AA)
	ex de,hl			;5e8a
	push ix		;5e8b   ; a los sprites de la ficha (ix+0x22)
	pop de			;5e8d
	ld a,022h		;5e8e
	call de_mas_a		;5e90
L_5E93:
	ld c,(ix+003h)		;5e93   ; y + dy...
	ld a,(hl)			;5e96
	add a,c			;5e97
	ld (de),a			;5e98
	inc de			;5e99
	inc hl			;5e9a
	ld c,(ix+005h)		;5e9b   ; ...x + dx...
	ld a,(hl)			;5e9e
	add a,c			;5e9f
	ld (de),a			;5ea0
	inc de			;5ea1
	inc hl			;5ea2
	ld a,(hl)			;5ea3   ; ...patron...
	ld (de),a			;5ea4
	inc de			;5ea5
	inc hl			;5ea6
	ld a,(hl)			;5ea7   ; ...y color
	ld (de),a			;5ea8
	inc de			;5ea9
	inc de			;5eaa
	inc hl			;5eab
	djnz L_5E93		;5eac
	jp bancos_1_2_3		;5eae   ; bancos_1_2_3: LAS PUERTAS: A, A+1 y A+2 en los tres registros del mapper y en sus copias
cuenta_los_de_su_clase:
	ld a,(ix+000h)		;5eb1   ; tipos 0x12-0x14, 0x2C-0x2E, 0x38 y 0x39: los que van en grupo...
	cp 012h		;5eb4
	jr c,ya_no_quedan		;5eb6
	cp 015h		;5eb8
	jr c,L_5ED4		;5eba
	cp 02ch		;5ebc
	jr z,L_5ED4		;5ebe
	cp 02dh		;5ec0
	jr z,L_5ED0		;5ec2
	cp 02eh		;5ec4
	jr z,L_5ED4		;5ec6
	cp 038h		;5ec8
	jr z,L_5ED0		;5eca
	cp 039h		;5ecc
	jr nz,ya_no_quedan		;5ece
L_5ED0:
	ld hl,0dfb7h		;5ed0   ; ...(0x2D, 0x38 y 0x39 descuentan 0xDFB7)
	dec (hl)			;5ed3
L_5ED4:
	ld b,00dh		;5ed4   ; ...descuentan el ix+0x1C de los demas del grupo
	ld c,080h		;5ed6
	ld de,0d000h		;5ed8   ; apunta a las fichas de los enemigos (13 de 0x80)
	ld hl,0d01ch		;5edb
L_5EDE:
	ld a,(de)			;5ede
	and a			;5edf
	jr z,L_5EF1		;5ee0
	rla			;5ee2
	jr c,L_5EF1		;5ee3
	dec (hl)			;5ee5
	ld (ix+07dh),000h		;5ee6
	ld a,(hl)			;5eea
	inc a			;5eeb
	jr nz,L_5EF1		;5eec   ; al ultimo, ix+0x7D = 1
	call ya_no_quedan		;5eee   ; ya_no_quedan: ix+0x7D = 1: ya no queda ninguno de su grupo
L_5EF1:
	ld a,c			;5ef1
	call hl_mas_a		;5ef2
	ld a,c			;5ef5
	call de_mas_a		;5ef6
	djnz L_5EDE		;5ef9
	ret			;5efb
ya_no_quedan:
	ld (ix+07dh),001h		;5efc   ; ix+0x7D = 1: ya no queda ninguno de su grupo
	ret			;5f00
suceso_al_morir_el_jefe:
	ld c,028h		;5f01   ; los tipos 4, 5, 0x0B, 0x2A, 0x2B y 0x39 (y 0x1A y 0x1E en su pantalla) dejan el suceso 0x28 (o 0x2B) con p01:784A
	ld a,(ix+000h)		;5f03
	cp 004h		;5f06
	jr z,L_5F3C		;5f08
	cp 005h		;5f0a
	jr z,L_5F3C		;5f0c
	cp 00bh		;5f0e
	jr z,L_5F3C		;5f10
	cp 02ah		;5f12
	jr z,L_5F3C		;5f14
	cp 02bh		;5f16
	jr z,L_5F3C		;5f18
	cp 039h		;5f1a
	jr z,L_5F3C		;5f1c
	cp 01ah		;5f1e
	jr nz,L_5F31		;5f20
	ld a,(0dfc4h)		;5f22   ; TWINMIRES en la pantalla 0x31 con 0xDFC4 = 1: el suceso 0x2B
	dec a			;5f25
	jr nz,L_5F31		;5f26
	ld a,(0c125h)		;5f28   ; lee la PANTALLA
	cp 031h		;5f2b   ; la pantalla 0x31?
	ld c,02bh		;5f2d
	jr z,L_5F3C		;5f2f
L_5F31:
	ld c,028h		;5f31   ; GRIZZLY (0x1E), solo en la pantalla 0x1A
	cp 01eh		;5f33
	ret nz			;5f35
	ld a,(0c125h)		;5f36   ; lee la PANTALLA
	cp 01ah		;5f39   ; la pantalla 0x1A?
	ret nz			;5f3b
L_5F3C:
	jp 0784ah		;5f3c   ; p01:784A: pone el suceso C
logotipo_de_konami:
	call apaga_la_pantalla		;5f3f   ; apaga_la_pantalla: bit 6 del registro 1 del VDP a cero
	call paleta_inicial		;5f42   ; paleta_inicial: los 16 colores de p00:46AF
	ld hl,05fa7h		;5f45   ; paleta_de_konami: [color][RB][G] ... 0xFF
	call pon_paleta		;5f48   ; pon_paleta: lista [color][RB][G] ... 0xFF
	ld b,00fh		;5f4b   ; R#7 = 0x0F: el borde
	ld c,007h		;5f4d
	call 00047h		;5f4f   ; BIOS WRTVDP - Writes data in the VDP-register
	ld hl,02840h		;5f52   ; la caja del logotipo en la pagina 1, en negro
	ld bc,0a848h		;5f55
	xor a			;5f58
	ld d,001h		;5f59
	call hmmv		;5f5b   ; hmmv: el color, a un lado
	di			;5f5e
	ld a,008h		;5f5f   ; las letras con los bancos 1-8-3 (el 8 en 0x8000)
	ld (08000h),a		;5f61   ; el mapper: el banco de A en 0x8000
	ld (0f0f2h),a		;5f64   ; guarda la copia del banco de 0x8000
	ei			;5f67
	ld hl,09c3bh		;5f68   ; p08:konami_9C3B: 13 letras de 1 bit del logotipo de Konami (color 1); p00:4867
	ld de,00800h		;5f6b   ; 13 letras de p08:9C3B en color 1
	ld bc,00d01h		;5f6e
	call sube_letras		;5f71   ; sube_letras: B letras de 1 bit de HL, en color C, a la hoja de la pagina 1 desde (D, E)
	ld hl,09ca3h		;5f74   ; p08:konami_9CA3: 13 letras de 1 bit del logotipo de Konami (color 2); p00:4867
	ld de,07000h		;5f77   ; 13 de p08:9CA3 en color 2
	ld bc,00d02h		;5f7a
	call sube_letras		;5f7d   ; sube_letras: B letras de 1 bit de HL, en color C, a la hoja de la pagina 1 desde (D, E)
	ld hl,09d0bh		;5f80   ; p08:konami_9D0B: 26 letras de 1 bit del logotipo de Konami (color 3); p00:4867
	ld de,0d800h		;5f83   ; 26 de p08:9D0B en color 3
	ld bc,01a03h		;5f86
	call sube_letras		;5f89   ; sube_letras: B letras de 1 bit de HL, en color C, a la hoja de la pagina 1 desde (D, E)
	ld de,04040h		;5f8c   ; la composicion de p08:9BFA desde (0x40, 0x40)
	ld hl,09bfah		;5f8f   ; p08:konami_composicion: como se monta el logotipo de Konami: numeros de dibujo, 0xFE [dx] baja una fila, 0xFF acaba (p00:5FDA)
	call compone_konami		;5f92
	call bancos_1_2_3		;5f95   ; bancos_1_2_3: LAS PUERTAS: A, A+1 y A+2 en los tres registros del mapper y en sus copias
	call enciende_la_pantalla		;5f98   ; enciende_la_pantalla: la copia de R#1 (0xF3E0), con la pantalla encendida
	ld hl,0c200h		;5f9b   ; 0xC200 = 0x3C cuadros, 0xC201 = 0x31 lineas por destapar
	ld (hl),03ch		;5f9e
	inc hl			;5fa0
	ld (hl),031h		;5fa1
	inc hl			;5fa3
	ld (hl),000h		;5fa4
	ret			;5fa6

; ----------------------------------------------------------------------
; DATOS paleta_de_konami: [color][RB][G] ... 0xFF; lo leen p00:46CF (16 bytes)
;   0x5fa7..0x5fb7  (16 bytes)
DATA_paleta_de_konami:
	defb 000h,000h,000h	; 5fa7
	defb 001h,070h,003h	; 5faa
	defb 002h,060h,001h	; 5fad
	defb 003h,044h,004h	; 5fb0
	defb 00fh,077h,007h	; 5fb3
	defb 0ffh	; 5fb6

; ======================================================================
; CODIGO 0x5fb7..0x6000  (73 bytes)
; ======================================================================


L_5FB7:
	ld hl,0c200h		;5fb7   ; cada dos cuadros...
	dec (hl)			;5fba
	ld a,(hl)			;5fbb
	and 001h		;5fbc
	ret nz			;5fbe
	inc hl			;5fbf
	dec (hl)			;5fc0   ; ...una linea mas del logotipo...
	jr nz,L_5FC9		;5fc1
	ld a,001h		;5fc3   ; ...y al acabar, 0xC202 = 1
	ld (0c202h),a		;5fc5
	ret			;5fc8
L_5FC9:
	ld a,031h		;5fc9   ; las lineas destapadas: HMMM de la pagina 1 a la 0 (0xA8 de ancho)
	sub (hl)			;5fcb
	ld c,a			;5fcc
	ld b,0a8h		;5fcd
	ld hl,02840h		;5fcf
	ld de,02840h		;5fd2
	ld a,001h		;5fd5
	jp hmmm		;5fd7   ; hmmm: orden HMMM del V9938: copia BxC puntos de (H, L) a (D, E); A lleva las paginas
compone_konami:
	push de			;5fda
L_5FDB:
	ld a,(hl)			;5fdb   ; numero de dibujo
	inc hl			;5fdc
	ld c,a			;5fdd
	inc a			;5fde   ; 0xFF acaba
	jr z,L_5FF8		;5fdf
	inc a			;5fe1   ; 0xFE [dx]: una fila mas abajo, corrida dx
	jr nz,L_5FEF		;5fe2
	pop de			;5fe4
	ld a,(hl)			;5fe5
	inc hl			;5fe6
	add a,d			;5fe7
	ld d,a			;5fe8
	ld a,008h		;5fe9
	add a,e			;5feb
	ld e,a			;5fec
	jr compone_konami		;5fed
L_5FEF:
	ld a,c			;5fef   ; el dibujo, copiado en la pagina 1
	call copia_dibujo_en_la_hoja		;5ff0
	call siguiente_sitio		;5ff3   ; siguiente_sitio: D + 8; al dar la vuelta, E + 8
	jr L_5FDB		;5ff6
L_5FF8:
	pop de			;5ff8
	ret			;5ff9
modo_de_pantalla:
	ld a,001h		;5ffa   ; 0xFAF6 = 1...
	ld (0faf6h),a		;5ffc
	di			;5fff
