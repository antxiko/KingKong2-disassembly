; ==========================================================================
; KING KONG 2: YOMIGAERU DENSETSU - Konami (1986) - MSX - MegaROM RC-745 de 128 KB (Konami4) - banco 02 (se ejecuta en 0x8000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x08000


; ----------------------------------------------------------------------
; DATOS tabla_7FFC_cola: 6 destinos del despachador de 0x425F (call en
;   p01:7FF9): 0x8008, 0x8017, 0x8025, 0x8039, 0x8065, 0x8039 (sigue del banco
;   anterior, 0x7FFC); lo leen p01:7FF9 (8 bytes)
;   0x8000..0x8008  (8 bytes)
DATA_tabla_7FFC_cola:
	defb 025h,080h	; 8000
	defb 039h,080h	; 8002
	defb 065h,080h	; 8004
	defb 039h,080h	; 8006

; ======================================================================
; CODIGO 0x8008..0x806c  (100 bytes)
; ======================================================================


L_8008:
	xor a			;8008
	ld (0c14dh),a		;8009   ; guarda la linea de la conversacion
	ld (0c14ch),a		;800c   ; guarda la accion de la linea
	ld (0c15dh),a		;800f   ; guarda la linea a la que se salta tras la accion
L_8012:
	ld hl,0c14bh		;8012   ; apunta a el paso de la conversacion
	inc (hl)			;8015
	ret			;8016
L_8017:
	call 06428h		;8017   ; p01:borra_la_ventana_de_texto: 160x24 puntos en (8, 0xB0): debajo del decorado
	call busca_la_linea		;801a
	ld a,(0c14ch)		;801d   ; lee la accion de la linea
	inc a			;8020
	jr z,L_8045		;8021
	jr L_8012		;8023
L_8025:
	call escribe_la_conversacion		;8025   ; escribe_la_conversacion: una letra cada 5 cuadros (0xC156), con su sonido; 0xFD salta de renglon, 0xFF acaba la linea
	ld a,(0c155h)		;8028
	and a			;802b
	ret z			;802c
	ld a,(0c14ch)		;802d   ; lee la accion de la linea
	and a			;8030
	jr z,L_8012		;8031
	ld a,004h		;8033
	ld (0c14bh),a		;8035   ; guarda el paso de la conversacion
	ret			;8038
L_8039:
	ld a,(0c106h)		;8039   ; lee las teclas nuevas del cuadro (bit 4 SHOT1, bit 5 SHOT2)
	bit 4,a		;803c
	ret z			;803e
	ld a,001h		;803f
	ld (0c14bh),a		;8041   ; guarda el paso de la conversacion
	ret			;8044
L_8045:
	call 06428h		;8045   ; p01:borra_la_ventana_de_texto: 160x24 puntos en (8, 0xB0): debajo del decorado
	ld a,(0c149h)		;8048
	and a			;804b
	jr nz,L_8056		;804c
	xor a			;804e
	ld (0c300h),a		;804f   ; guarda el estado de Mitchel
	inc a			;8052
	ld (0c306h),a		;8053   ; guarda hacia donde mira Mitchel (0 arriba, 1 abajo, 2 izquierda, 3 derecha)
L_8056:
	xor a			;8056
	ld (0c201h),a		;8057   ; guarda el estado de la partida (0 jugando, 1 cambio de pantalla, 3 conversacion, 5 y 6 sucesos, 7 GAME OVER)
	ld hl,0c15fh		;805a
	ld a,(hl)			;805d
	and a			;805e
	ret z			;805f
	ld (hl),000h		;8060
	jp 07d00h		;8062

; ----------------------------------------------------------------------
; Cada linea de una conversacion empieza por un byte de ACCION (0xC14C);
; con la tabla de p02:806C se salta a una de las 34 rutinas de p12
; (0xB500-0xB8FC), con los bancos 10-11-12.
; ----------------------------------------------------------------------
accion_de_la_linea:
	ld a,(0c14ch)		;8065   ; lee la accion de la linea
	dec a			;8068
	call 0425fh		;8069   ; p00:despacha: Salta a la entrada A de la tabla de palabras que va pegada detras del `call`.

; ----------------------------------------------------------------------
; DATOS tabla_806C: 34 destinos del despachador de 0x425F (call en p02:8069):
;   0xB500, 0xB537, 0xB55D, 0xB56C, 0xB587, 0xB5BF, 0xB5DF, 0xB5E7 ...; lo
;   leen p02:8069 (68 bytes)
;   0x806c..0x80b0  (68 bytes)
DATA_tabla_806C:
	defb 000h,0b5h	; 806c
	defb 037h,0b5h	; 806e
	defb 05dh,0b5h	; 8070
	defb 06ch,0b5h	; 8072
	defb 087h,0b5h	; 8074
	defb 0bfh,0b5h	; 8076
	defb 0dfh,0b5h	; 8078
	defb 0e7h,0b5h	; 807a
	defb 002h,0b6h	; 807c
	defb 00ah,0b6h	; 807e
	defb 05ah,0b6h	; 8080
	defb 081h,0b6h	; 8082
	defb 0cah,0b6h	; 8084
	defb 013h,0b7h	; 8086
	defb 01bh,0b7h	; 8088
	defb 053h,0b7h	; 808a
	defb 087h,0b7h	; 808c
	defb 0afh,0b7h	; 808e
	defb 0d5h,0b7h	; 8090
	defb 0dfh,0b7h	; 8092
	defb 0fdh,0b7h	; 8094
	defb 03ah,0b8h	; 8096
	defb 059h,0b8h	; 8098
	defb 06fh,0b8h	; 809a
	defb 0aeh,0b8h	; 809c
	defb 0b1h,0b8h	; 809e
	defb 0d0h,0b8h	; 80a0
	defb 0d8h,0b8h	; 80a2
	defb 020h,0b6h	; 80a4
	defb 0e5h,0b6h	; 80a6
	defb 031h,0b7h	; 80a8
	defb 069h,0b7h	; 80aa
	defb 0eeh,0b8h	; 80ac
	defb 0fch,0b8h	; 80ae

; ======================================================================
; CODIGO 0x80b0..0x823a  (394 bytes)
; ======================================================================


busca_la_linea:
	ld a,(0c14ah)		;80b0   ; lee la CONVERSACION
	ld de,0a66eh		;80b3   ; p12:A66E + 2*conversacion: su lista de lineas...
	call 042ffh		;80b6   ; p00:palabra_de_la_tabla: DE = la palabra A de la tabla de DE
	ld a,(0c14dh)		;80b9   ; lee la linea de la conversacion
	call 042ffh		;80bc   ; ...y la palabra de la linea 0xC14D; 0 = se acabo
	ld a,e			;80bf
	or d			;80c0
	jr nz,L_80C9		;80c1
	ld a,0ffh		;80c3
	ld (0c14ch),a		;80c5   ; guarda la accion de la linea
	ret			;80c8
L_80C9:
	ex de,hl			;80c9
	ld a,(hl)			;80ca
	ld (0c14ch),a		;80cb   ; el primer byte es la accion; luego el texto
	inc hl			;80ce
	ld de,008b0h		;80cf
	ld (0c157h),hl		;80d2   ; guarda la letra de la conversacion que toca
	ld (0c159h),de		;80d5
	ld (0c15bh),de		;80d9
	ld a,001h		;80dd
	ld (0c156h),a		;80df   ; guarda la cuenta de la letra siguiente de la conversacion
	xor a			;80e2
	ld (0c155h),a		;80e3
	ret			;80e6
escribe_la_conversacion:
	ld hl,0c156h		;80e7   ; una letra cada 5 cuadros (0xC156), con su sonido; 0xFD salta de renglon, 0xFF acaba la linea
	dec (hl)			;80ea
	ret nz			;80eb
	ld (hl),005h		;80ec
	ld a,001h		;80ee
	call 05488h		;80f0   ; p00:sonido_si_juega: solo con el bit 6 de 0xC102 (la partida de verdad, no la demostracion)
	ld de,(0c159h)		;80f3
	ld hl,(0c157h)		;80f7   ; lee la letra de la conversacion que toca
	ld a,(hl)			;80fa
	inc hl			;80fb
	ld (0c157h),hl		;80fc   ; guarda la letra de la conversacion que toca
	cp 0fdh		;80ff
	jr z,L_8120		;8101
	cp 0ffh		;8103
	jr z,L_812A		;8105
	call 04952h		;8107   ; p00:escribe_una_letra
	ld a,d			;810a
	add a,008h		;810b
	ld d,a			;810d
	cp 0a8h		;810e
	jr c,L_811B		;8110
	ld d,008h		;8112
	ld a,e			;8114
	add a,d			;8115
	ld e,a			;8116
L_8117:
	ld (0c15bh),de		;8117
L_811B:
	ld (0c159h),de		;811b
	ret			;811f
L_8120:
	ld de,(0c15bh)		;8120
	ld a,e			;8124
	add a,008h		;8125
	ld e,a			;8127
	jr L_8117		;8128
L_812A:
	ld hl,0c14dh		;812a   ; apunta a la linea de la conversacion
	inc (hl)			;812d
	ld hl,0c155h		;812e
	inc (hl)			;8131
	ld hl,0c15dh		;8132   ; apunta a la linea a la que se salta tras la accion
	ld a,(hl)			;8135
	ld (hl),000h		;8136
	and a			;8138
	ret z			;8139
	ld (0c14dh),a		;813a   ; guarda la linea de la conversacion
	ret			;813d
decorado_de_la_pantalla:
	ld a,(0c125h)		;813e   ; lee la PANTALLA
	dec a			;8141
	jr z,L_815E		;8142
	cp 004h		;8144
	jr z,L_815E		;8146
	cp 005h		;8148
	jr z,L_8165		;814a
	cp 00ch		;814c
	jr z,L_815E		;814e
	cp 00dh		;8150
	jr z,L_8165		;8152
	cp 032h		;8154
	jr z,L_815E		;8156
	cp 055h		;8158
	jr nz,L_816A		;815a
	jr L_8165		;815c
L_815E:
	ld a,(0c131h)		;815e   ; lee el plano de la pantalla (0, el exterior)
	and a			;8161
	ret z			;8162
	jr L_816A		;8163
L_8165:
	ld a,(0c131h)		;8165   ; lee el plano de la pantalla (0, el exterior)
	and a			;8168
	ret nz			;8169
L_816A:
	call banco_9_en_a000		;816a
	call busca_el_decorado_de_la_pantalla		;816d   ; busca_el_decorado_de_la_pantalla: p09:B3FD: las pantallas con decorado que se quita
	call pinta_el_decorado_que_cambia		;8170
	jp 042bch		;8173   ; p00:bancos_1_2_3: LAS PUERTAS: A, A+1 y A+2 en los tres registros del mapper y en sus copias
banco_9_en_a000:
	di			;8176
	ld a,009h		;8177
	ld (0a000h),a		;8179   ; el mapper: el banco de A en 0xA000
	ld (0f0f3h),a		;817c   ; guarda la copia del banco de 0xA000
	ei			;817f
	ret			;8180
busca_el_decorado_de_la_pantalla:
	ld a,(0c125h)		;8181   ; p09:B3FD: las pantallas con decorado que se quita
	ld c,a			;8184
	ld hl,0b3fdh		;8185
	ld b,000h		;8188
L_818A:
	ld a,(hl)			;818a
	inc hl			;818b
	and a			;818c
	ret z			;818d
	push hl			;818e
	push bc			;818f
	cp c			;8190
	call z,copia_la_ficha_de_decorado		;8191
	pop bc			;8194
	pop hl			;8195
	inc b			;8196
	jr L_818A		;8197
copia_la_ficha_de_decorado:
	ld a,b			;8199
	ld de,0b423h		;819a
	call 042ffh		;819d   ; p00:palabra_de_la_tabla: DE = la palabra A de la tabla de DE
	call hueco_para_decorado		;81a0   ; hueco_para_decorado: el primero libre de 0xC500, 0xC520 y 0xC540 (acarreo si no hay)
	ret c			;81a3
	ex de,hl			;81a4
	ld bc,00009h		;81a5
	ldir		;81a8
	dec de			;81aa
	ld a,(de)			;81ab
	ld hl,0c580h		;81ac   ; apunta a las banderas del decorado ya quitado
	call 04255h		;81af   ; p00:hl_mas_a
	ld a,(hl)			;81b2
	and a			;81b3
	ret nz			;81b4
	ld a,e			;81b5
	and 0e0h		;81b6
	ld e,a			;81b8
	xor a			;81b9
	ld (de),a			;81ba
	ret			;81bb
hueco_para_decorado:
	ld b,003h		;81bc   ; el primero libre de 0xC500, 0xC520 y 0xC540 (acarreo si no hay)
	ld hl,0c500h		;81be   ; apunta a el decorado que se quita (3 fichas de 32 bytes)
L_81C1:
	ld a,(hl)			;81c1
	and a			;81c2
	ret z			;81c3
	ld a,020h		;81c4
	call 04255h		;81c6   ; p00:hl_mas_a
	djnz L_81C1		;81c9
	scf			;81cb
	ret			;81cc
pinta_el_decorado_que_cambia:
	ld ix,0c500h		;81cd   ; apunta a el decorado que se quita (3 fichas de 32 bytes)
	call pinta_una_cosa_de_decorado		;81d1
	ld ix,0c520h		;81d4
	call pinta_una_cosa_de_decorado		;81d8
	ld ix,0c540h		;81db
pinta_una_cosa_de_decorado:
	ld a,(ix+000h)		;81df   ; lee el tipo de decorado (el suceso que lo quita)
	and a			;81e2
	ret z			;81e3
	call guarda_lo_de_debajo		;81e4
	call banco_9_en_a000		;81e7
	ld a,(ix+007h)		;81ea   ; lee la figura del decorado
	ld hl,0b5bah		;81ed
	add a,a			;81f0
	call 04255h		;81f1   ; p00:hl_mas_a
	ld e,(hl)			;81f4
	inc hl			;81f5
	ld d,(hl)			;81f6
	ex de,hl			;81f7
	ld c,(ix+003h)		;81f8   ; lee cuantas filas
	ld b,(ix+004h)		;81fb   ; lee cuantas columnas
	ld e,(ix+001h)		;81fe   ; lee la y del decorado
	ld d,(ix+002h)		;8201   ; lee la x del decorado
	jp 04eb5h		;8204   ; p00:pinta_figura_sin_bancos: HL' = la casilla del mapa de la RAM de la esquina
guarda_lo_de_debajo:
	ld a,(ix+000h)		;8207   ; lee el tipo del enemigo
	cp 005h		;820a   ; MUDARMOR (tipo 0x05)?
	jr nz,L_820E		;820c
L_820E:
	ld l,(ix+001h)		;820e   ; lee el paso en que va
	ld h,(ix+002h)		;8211
	call 0431fh		;8214   ; p00:casilla_en_ram: HL = la casilla de 8x8 del punto (L, H) en el mapa de la RAM (0xE000, 32 por fila)
	ld e,(ix+005h)		;8217   ; lee la x del enemigo
	ld d,(ix+006h)		;821a   ; lee si se mueve
	ld c,(ix+003h)		;821d   ; lee la y del enemigo
L_8220:
	push hl			;8220
	ld b,(ix+004h)		;8221
L_8224:
	ld a,(hl)			;8224
	inc hl			;8225
	ld (de),a			;8226
	inc de			;8227
	djnz L_8224		;8228
	pop hl			;822a
	ld a,020h		;822b
	call 04255h		;822d   ; p00:hl_mas_a
	dec c			;8230
	jr nz,L_8220		;8231
	ret			;8233
L_8234:
	ld a,(0c681h)		;8234
	call 0425fh		;8237   ; p00:despacha: Salta a la entrada A de la tabla de palabras que va pegada detras del `call`.

; ----------------------------------------------------------------------
; DATOS tabla_823A: 3 destinos del despachador de 0x425F (call en p02:8237):
;   0x8240, 0x8265, 0x8271; lo leen p02:8237 (6 bytes)
;   0x823a..0x8240  (6 bytes)
DATA_tabla_823A:
	defb 040h,082h	; 823a
	defb 065h,082h	; 823c
	defb 071h,082h	; 823e

; ======================================================================
; CODIGO 0x8240..0x8675  (1077 bytes)
; ======================================================================


L_8240:
	ld de,05858h		;8240
	ld c,017h		;8243   ; el objeto 0x17, どりあん
	call 07852h		;8245   ; p01:pon_objeto: Pone el objeto C en la pantalla, en (E, D) redondeado a 8, con B
	call 0792fh		;8248
	call 0454ch		;824b
	xor a			;824e
	ld (0c356h),a		;824f   ; guarda cuantos objetos 0x17 se llevan (BCD; 0xFF sin cuenta)
	ld (0c141h),a		;8252   ; guarda SHOT2, el objeto que se lleva
	ld (0c140h),a		;8255   ; guarda SHOT1, el arma que se lleva (0 el puno)
	call 062deh		;8258
	ld a,01eh		;825b
	ld (0c682h),a		;825d
L_8260:
	ld hl,0c681h		;8260
	inc (hl)			;8263
	ret			;8264
L_8265:
	ld hl,0c682h		;8265
	dec (hl)			;8268
	ret nz			;8269
	ld a,081h		;826a
	call 05488h		;826c   ; p00:sonido_si_juega: solo con el bit 6 de 0xC102 (la partida de verdad, no la demostracion)
	jr L_8260		;826f
L_8271:
	call 054bdh		;8271   ; p00:hay_musica: Z si no suena nada que importe: sin fundido (0xC08B) ni musica (0xC08D)
	ret nz			;8274
	ld a,05fh		;8275
	ld (0c125h),a		;8277   ; guarda la PANTALLA
	ld hl,04810h		;827a
	ld (0c321h),hl		;827d   ; guarda el punto de entrada (y, x)
	ld a,002h		;8280
	ld (0c130h),a		;8282   ; guarda el lado por el que se entra en una salida especial
	dec a			;8285
	ld (0c323h),a		;8286
	ld (0c132h),a		;8289
	ld (0c600h),a		;828c   ; guarda la figura que sigue a Mitchel
	ld (0c201h),a		;828f   ; guarda el estado de la partida (0 jugando, 1 cambio de pantalla, 3 conversacion, 5 y 6 sucesos, 7 GAME OVER)
	call 06428h		;8292   ; p01:borra_la_ventana_de_texto: 160x24 puntos en (8, 0xB0): debajo del decorado
	ld a,082h		;8295
	jp 05488h		;8297   ; p00:sonido_si_juega: solo con el bit 6 de 0xC102 (la partida de verdad, no la demostracion)
L_829A:
	ld a,(0c600h)		;829a   ; lee la figura que sigue a Mitchel
	dec a			;829d
	ret m			;829e
	jr nz,L_82EA		;829f
	ld a,(0c300h)		;82a1   ; lee el estado de Mitchel
	dec a			;82a4
	cp 004h		;82a5
	ret nc			;82a7
	ld hl,0c60fh		;82a8
	ld a,(hl)			;82ab
	inc a			;82ac
	cp 016h		;82ad
	jr c,L_82B2		;82af
	xor a			;82b1
L_82B2:
	ld (hl),a			;82b2
	add a,a			;82b3
	add a,(hl)			;82b4
	ld de,0c610h		;82b5
	call 0425ah		;82b8   ; p00:de_mas_a
	ld a,(de)			;82bb
	ld (0c603h),a		;82bc
	ld a,(0c303h)		;82bf   ; lee la Y de Mitchel
	sub 008h		;82c2
	ld (de),a			;82c4
	inc de			;82c5
	ld a,(de)			;82c6
	ld (0c605h),a		;82c7
	ld a,(0c305h)		;82ca   ; lee la X de Mitchel
	ld (de),a			;82cd
	inc de			;82ce
	ld a,(de)			;82cf
	ld (0c601h),a		;82d0
	ld b,a			;82d3
	ld a,(0c306h)		;82d4   ; lee hacia donde mira Mitchel (0 arriba, 1 abajo, 2 izquierda, 3 derecha)
	ld (de),a			;82d7
	ld hl,0c602h		;82d8
	inc (hl)			;82db
	ld a,(hl)			;82dc
	rra			;82dd
	rra			;82de
	rra			;82df
	and 001h		;82e0
	ld c,a			;82e2
	ld a,b			;82e3
	add a,a			;82e4
	add a,c			;82e5
	ld (0c606h),a		;82e6   ; guarda el cuadro de la figura que sigue (direccion*2 + paso)
	ret			;82e9
L_82EA:
	ld hl,0c603h		;82ea
	ld a,(0c303h)		;82ed   ; lee la Y de Mitchel
	sub (hl)			;82f0
	add a,018h		;82f1
	cp 030h		;82f3
	ret nc			;82f5
	inc hl			;82f6
	inc hl			;82f7
	ld a,(0c305h)		;82f8   ; lee la X de Mitchel
	sub (hl)			;82fb
	add a,018h		;82fc
	cp 030h		;82fe
	ret nc			;8300
	ld a,001h		;8301
	ld (0c600h),a		;8303   ; guarda la figura que sigue a Mitchel
	ld a,(0c603h)		;8306
	ld e,a			;8309
	ld a,(0c605h)		;830a
	ld d,a			;830d
	ld hl,0c610h		;830e
	ld b,016h		;8311
	ld a,(0c601h)		;8313
L_8316:
	ld (hl),e			;8316
	inc l			;8317
	ld (hl),d			;8318
	inc l			;8319
	ld (hl),a			;831a
	inc l			;831b
	djnz L_8316		;831c
	xor a			;831e
	ld (0c60fh),a		;831f
	ret			;8322
L_8323:
	ld a,(0c132h)		;8323
	and a			;8326
	ret z			;8327
	ld a,(0c600h)		;8328   ; lee la figura que sigue a Mitchel
	and a			;832b
	jr z,L_835D		;832c
	call suceso_de_la_que_sigue		;832e
	ret c			;8331
	ld a,(0c125h)		;8332   ; lee la PANTALLA
	ld (0c680h),a		;8335
	xor a			;8338
	ld (0c60fh),a		;8339
	ld b,016h		;833c
	ld hl,0c610h		;833e
L_8341:
	ld (hl),0e1h		;8341
	inc l			;8343
	inc l			;8344
	ld (hl),a			;8345
	inc l			;8346
	djnz L_8341		;8347
	ld a,0e1h		;8349
	ld (0c603h),a		;834b
	ld hl,0c607h		;834e
	ld de,04201h		;8351
	ld b,004h		;8354
L_8356:
	ld (hl),e			;8356
	inc hl			;8357
	ld (hl),d			;8358
	inc hl			;8359
	djnz L_8356		;835a
	ret			;835c
L_835D:
	ld a,(0c680h)		;835d
	ld hl,0c125h		;8360   ; apunta a la PANTALLA
	cp (hl)			;8363
	ret nz			;8364
	ld a,002h		;8365
	ld (0c600h),a		;8367   ; guarda la figura que sigue a Mitchel
	ret			;836a
suceso_de_la_que_sigue:
	ld a,(0c600h)		;836b   ; lee la figura que sigue a Mitchel
	cp 002h		;836e
	jr z,L_838A		;8370
	ld a,(0c125h)		;8372   ; lee la PANTALLA
	cp 05ch		;8375   ; la pantalla 0x5C?
	jr z,L_839A		;8377
	cp 03ch		;8379   ; la pantalla 0x3C?
	jr z,L_8383		;837b
	cp 057h		;837d   ; la pantalla 0x57?
	jr z,L_838A		;837f
L_8381:
	xor a			;8381
	ret			;8382
L_8383:
	ld a,(0c130h)		;8383   ; lee el lado por el que se entra en una salida especial
	cp 002h		;8386
	jr nz,L_8381		;8388
L_838A:
	xor a			;838a
	ld (0c600h),a		;838b   ; guarda la figura que sigue a Mitchel
	ld hl,0e608h		;838e
	ld b,020h		;8391
L_8393:
	ld (hl),0e0h		;8393
	inc hl			;8395
	djnz L_8393		;8396
	scf			;8398
	ret			;8399
L_839A:
	ld a,(0c580h)		;839a   ; lee las banderas del decorado ya quitado
	and a			;839d
	ret z			;839e
	ld a,(0c130h)		;839f   ; lee el lado por el que se entra en una salida especial
	dec a			;83a2
	jr z,L_838A		;83a3
	xor a			;83a5
	ret			;83a6
persigue_a_mitchel_83A7:
	call 04308h		;83a7   ; p00:posicion_de_mitchel: E = la y de Mitchel, D = su x
	call tipo_segun_la_pantalla_73		;83aa
	call distancia_en_x		;83ad
	ld a,e			;83b0
	cp d			;83b1
	jr nc,L_8419		;83b2
	call 04308h		;83b4   ; p00:posicion_de_mitchel: E = la y de Mitchel, D = su x
	ld b,000h		;83b7
	ld a,(ix+003h)		;83b9   ; lee la y del enemigo
	cp e			;83bc
	ld a,(0c125h)		;83bd   ; lee la PANTALLA
	jr c,L_83E4		;83c0
	ld c,0e8h		;83c2
	cp 073h		;83c4   ; la pantalla 0x73?
	jr z,L_83CA		;83c6
	ld c,0e0h		;83c8
L_83CA:
	ld a,(ix+008h)		;83ca   ; lee la velocidad vertical
	or (ix+007h)		;83cd   ; OR con la velocidad vertical (baja)
	and a			;83d0
	jr z,L_83DC		;83d1
	bit 7,(ix+008h)		;83d3   ; mira el bit 7 de la velocidad vertical
	jr z,L_83DC		;83d7
	inc b			;83d9
	jr L_8403		;83da
L_83DC:
	ld a,(0c306h)		;83dc   ; lee hacia donde mira Mitchel (0 arriba, 1 abajo, 2 izquierda, 3 derecha)
	cp 002h		;83df   ; mira a la izquierda?
	ret nc			;83e1
	jr L_8403		;83e2
L_83E4:
	ld c,018h		;83e4
	cp 073h		;83e6
	jr z,L_83EC		;83e8
	ld c,021h		;83ea
L_83EC:
	ld a,(ix+008h)		;83ec   ; lee la velocidad vertical
	or (ix+007h)		;83ef   ; OR con la velocidad vertical (baja)
	jr z,L_83FD		;83f2
	bit 7,(ix+008h)		;83f4   ; mira el bit 7 de la velocidad vertical
	jr nz,L_83FD		;83f8
	inc b			;83fa
	jr L_8403		;83fb
L_83FD:
	ld a,(0c306h)		;83fd   ; lee hacia donde mira Mitchel (0 arriba, 1 abajo, 2 izquierda, 3 derecha)
	cp 002h		;8400   ; mira a la izquierda?
	ret nc			;8402
L_8403:
	ld hl,0c300h		;8403   ; apunta a el estado de Mitchel
	ld a,(hl)			;8406
	cp 005h		;8407
	jr nc,L_840D		;8409
	ld (hl),000h		;840b
L_840D:
	ld a,(ix+003h)		;840d   ; lee la y del enemigo
	add a,c			;8410
	ld (0c303h),a		;8411   ; guarda la Y de Mitchel
	ld a,b			;8414
	and a			;8415
	ret z			;8416
	jr mitchel_contra_el_decorado		;8417
L_8419:
	call 04308h		;8419   ; p00:posicion_de_mitchel: E = la y de Mitchel, D = su x
	ld a,(ix+005h)		;841c   ; lee la x del enemigo
	cp d			;841f
	ld b,000h		;8420
	ld a,(ix+00ah)		;8422   ; lee la velocidad horizontal
	jr c,L_8437		;8425
	or (ix+009h)		;8427   ; OR con la velocidad horizontal (baja)
	jr z,L_8433		;842a
	bit 7,(ix+00ah)		;842c   ; mira el bit 7 de la velocidad horizontal
	jr z,L_8433		;8430
	inc b			;8432
L_8433:
	ld c,0e8h		;8433
	jr L_8445		;8435
L_8437:
	or (ix+009h)		;8437   ; OR con la velocidad horizontal (baja)
	jr z,L_8443		;843a
	bit 7,(ix+00ah)		;843c   ; mira el bit 7 de la velocidad horizontal
	jr nz,L_8443		;8440
	inc b			;8442
L_8443:
	ld c,018h		;8443
L_8445:
	ld hl,0c300h		;8445   ; apunta a el estado de Mitchel
	ld a,(hl)			;8448
	cp 005h		;8449
	jr nc,L_844F		;844b
	ld (hl),000h		;844d
L_844F:
	ld a,(ix+005h)		;844f   ; lee la x del enemigo
	add a,c			;8452
	ld (0c305h),a		;8453   ; guarda la X de Mitchel
mitchel_contra_el_decorado:
	ld a,(0c303h)		;8456   ; lee la Y de Mitchel
	sub 008h		;8459
	ld l,a			;845b
	ld a,(0c305h)		;845c   ; lee la X de Mitchel
	sub 008h		;845f
	ld h,a			;8461
	call 0431fh		;8462   ; p00:casilla_en_ram: HL = la casilla de 8x8 del punto (L, H) en el mapa de la RAM (0xE000, 32 por fila)
	ld a,(0c148h)		;8465   ; lee el juego de dibujos de la pantalla
	ld de,073d0h		;8468   ; p01:byte_por_juego_de_dibujos: un byte por juego de dibujos (0xC148, 13): lo que p01:7332 pone en 0xE802
	call 0425ah		;846b   ; p00:de_mas_a
	ex de,hl			;846e
	call choca_con_el_decorado		;846f
	jp c,06c7bh		;8472   ; p01:mitchel_muere: LIFE a cero, lo lanzado se borra y 0x50 cuadros de espera
	ret			;8475
choca_con_el_decorado:
	call casilla_libre_para_la_ficha		;8476
	ret c			;8479
	ld a,01fh		;847a
	call 0425ah		;847c   ; p00:de_mas_a
	call casilla_libre_para_la_ficha		;847f
	ret c			;8482
	ld a,(0c303h)		;8483   ; lee la Y de Mitchel
	and 007h		;8486
	ret z			;8488
	ld a,01fh		;8489
	call 0425ah		;848b   ; p00:de_mas_a
casilla_libre_para_la_ficha:
	ld a,(de)			;848e
	cp 0f0h		;848f
	scf			;8491
	ret z			;8492
	cp (hl)			;8493
	ret c			;8494
	inc de			;8495
	ld a,(de)			;8496
	cp 0f0h		;8497
	scf			;8499
	ret z			;849a
	cp (hl)			;849b
	ret			;849c
tipo_segun_la_pantalla_73:
	ld c,018h		;849d
	ld a,(0c125h)		;849f   ; lee la PANTALLA
	cp 073h		;84a2   ; la pantalla 0x73?
	jr z,L_84A8		;84a4
	ld c,01ch		;84a6
L_84A8:
	ld a,(ix+003h)		;84a8   ; lee la y del enemigo
	sub e			;84ab
	jr c,L_84B0		;84ac
	neg		;84ae
L_84B0:
	add a,c			;84b0
	jp p,L_84B5		;84b1
	xor a			;84b4
L_84B5:
	ld e,a			;84b5
	ret			;84b6
distancia_en_x:
	ld a,(ix+005h)		;84b7   ; lee la x del enemigo
	sub d			;84ba
	jr c,L_84BF		;84bb
	neg		;84bd
L_84BF:
	add a,018h		;84bf
	ld d,a			;84c1
	ret			;84c2
cerca_de_mitchel_84C3:
	ld a,(0c303h)		;84c3   ; lee la Y de Mitchel
	sub (ix+003h)		;84c6   ; le resta la y del enemigo
	jr c,L_84CE		;84c9
	cp 00ch		;84cb
	ret nc			;84cd
L_84CE:
	ld a,(ix+006h)		;84ce   ; lee si se mueve
	and a			;84d1
	jr z,L_8512		;84d2
	ld a,(ix+008h)		;84d4   ; lee la velocidad vertical
	and a			;84d7
	jr z,L_84E7		;84d8
	ld c,000h		;84da
	add a,a			;84dc
	jr c,L_84E0		;84dd
	inc c			;84df
L_84E0:
	ld a,e			;84e0
	and 007h		;84e1
	jr nz,L_84FA		;84e3
	jr L_84F5		;84e5
L_84E7:
	ld a,(ix+00ah)		;84e7   ; lee la velocidad horizontal
	ld c,002h		;84ea
	add a,c			;84ec
	jr c,L_84F0		;84ed
	inc c			;84ef
L_84F0:
	ld a,d			;84f0
	and 007h		;84f1
	jr nz,L_84FA		;84f3
L_84F5:
	call 06fd3h		;84f5   ; p01:casilla_hacia
	jr c,L_8512		;84f8
L_84FA:
	ld a,(0c147h)		;84fa
	and a			;84fd
	jr nz,L_8512		;84fe
	ld a,(0c303h)		;8500   ; lee la Y de Mitchel
	add a,(ix+008h)		;8503   ; le suma la velocidad vertical
	ld (0c303h),a		;8506   ; guarda la Y de Mitchel
	ld a,(0c305h)		;8509   ; lee la X de Mitchel
	add a,(ix+00ah)		;850c   ; le suma la velocidad horizontal
	ld (0c305h),a		;850f   ; guarda la X de Mitchel
L_8512:
	ld a,001h		;8512
	ld (0c168h),a		;8514
	ret			;8517
L_8518:
	ld (ix+011h),001h		;8518
	ld a,(ix+003h)		;851c   ; lee la y del enemigo
	add a,0ech		;851f
	ld e,a			;8521
	ld a,(ix+005h)		;8522   ; lee la x del enemigo
	add a,0ech		;8525
	ld d,a			;8527
	ld hl,0d0a8h		;8528
	ld bc,03028h		;852b
	ld a,048h		;852e
	call 0481bh		;8530   ; p00:lmmm: orden LMMM del V9938: lo mismo con operacion logica (A: paginas y operacion; 8 = TIMP)
	ld bc,00808h		;8533
	call 04333h		;8536
	call 06979h		;8539
	ld bc,00403h		;853c
	jp 043b6h		;853f
L_8542:
	ret			;8542
L_8543:
	ld a,(ix+005h)		;8543   ; lee la x del enemigo
	cp 068h		;8546
	ld de,00030h		;8548
	jr c,L_8554		;854b
	ld de,0ffd0h		;854d
	cp 088h		;8550
	jr c,L_8557		;8552
L_8554:
	call 04318h		;8554
L_8557:
	ld bc,00001h		;8557
	call 0729eh		;855a   ; p01:apunta_a_mitchel
	add a,a			;855d
	add a,009h		;855e
	ld hl,0df94h		;8560   ; apunta a el grafico de jefe que hay subido
	ld b,a			;8563
	ld a,(hl)			;8564
	rra			;8565
	ld a,000h		;8566
	jr c,L_856B		;8568
	inc a			;856a
L_856B:
	add a,b			;856b
	ld (hl),a			;856c
	cp 00eh		;856d
	ld a,040h		;856f
	jr z,L_8575		;8571
	ld a,03fh		;8573
L_8575:
	ld (ix+00bh),a		;8575   ; guarda el cuadro del enemigo
L_8578:
	dec (ix+014h)		;8578
	ld a,(ix+014h)		;857b
	and 007h		;857e
	ret nz			;8580
	ld hl,0df94h		;8581   ; apunta a el grafico de jefe que hay subido
	ld a,(hl)			;8584
	ld c,a			;8585
	ld b,001h		;8586
	and b			;8588
	jr nz,L_859A		;8589
	ld a,0ffh		;858b
L_858D:
	add a,c			;858d
	ld (hl),a			;858e
	cp 016h		;858f
	ld a,03fh		;8591
	jr nz,L_8596		;8593
	inc a			;8595
L_8596:
	ld (ix+00bh),a		;8596   ; guarda el cuadro del enemigo
	ret			;8599
L_859A:
	ld a,00ch		;859a
	call 05488h		;859c   ; p00:sonido_si_juega: solo con el bit 6 de 0xC102 (la partida de verdad, no la demostracion)
	ld a,b			;859f
	jr L_858D		;85a0
L_85A2:
	call 04308h		;85a2   ; p00:posicion_de_mitchel: E = la y de Mitchel, D = su x
	ld b,(ix+005h)		;85a5   ; lee la x del enemigo
	ld c,(ix+003h)		;85a8   ; lee la y del enemigo
	ld h,009h		;85ab
	ld a,d			;85ad
	sub b			;85ae
	jr nc,L_85B3		;85af
	neg		;85b1
L_85B3:
	cp h			;85b3
	jr nc,L_85C5		;85b4
	ld a,e			;85b6
	sub c			;85b7
	jr nc,L_85BC		;85b8
	neg		;85ba
L_85BC:
	cp h			;85bc
	jr nc,L_85C5		;85bd
	ld (ix+006h),000h		;85bf   ; si se mueve = 0x00
	jr L_8578		;85c3
L_85C5:
	ld (ix+006h),001h		;85c5   ; si se mueve = 0x01
	ld b,007h		;85c9
	ld a,(ix+015h)		;85cb
	rra			;85ce
	jr c,L_85D9		;85cf
	ld a,(ix+003h)		;85d1   ; lee la y del enemigo
	and b			;85d4
	jr z,L_85DF		;85d5
	jr L_8632		;85d7
L_85D9:
	ld a,(ix+005h)		;85d9   ; lee la x del enemigo
	and b			;85dc
	jr nz,L_8632		;85dd
L_85DF:
	ld bc,00000h		;85df
	call 0729eh		;85e2   ; p01:apunta_a_mitchel
	cp (ix+015h)		;85e5
	jr z,L_8632		;85e8
	ld bc,00001h		;85ea
	call 0729eh		;85ed   ; p01:apunta_a_mitchel
	ld b,a			;85f0
	or a			;85f1
	jr z,L_8604		;85f2
	dec a			;85f4
	jr z,L_860E		;85f5
	dec a			;85f7
	jr z,L_861E		;85f8
	ld a,017h		;85fa
	ld de,0ff00h		;85fc
	call 04318h		;85ff
	jr L_8616		;8602
L_8604:
	ld a,011h		;8604
	ld de,0ff00h		;8606
	call 04311h		;8609
	jr L_8626		;860c
L_860E:
	ld a,013h		;860e
	ld de,00100h		;8610
	call 04318h		;8613
L_8616:
	ld de,00000h		;8616
	call 04311h		;8619
	jr L_862C		;861c
L_861E:
	ld a,015h		;861e
	ld de,00100h		;8620
	call 04311h		;8623
L_8626:
	ld de,00000h		;8626
	call 04318h		;8629
L_862C:
	ld (0df94h),a		;862c   ; guarda el grafico de jefe que hay subido
	ld (ix+015h),b		;862f
L_8632:
	jp L_8578		;8632
L_8635:
	ld de,00100h		;8635
	call 04318h		;8638
	ld de,00000h		;863b
	call 04311h		;863e
	ld a,011h		;8641
	jr L_8653		;8643
L_8645:
	ld de,00030h		;8645
	call 04318h		;8648
	ld de,00000h		;864b
	call 04311h		;864e
	ld a,009h		;8651
L_8653:
	ld (0df94h),a		;8653   ; guarda el grafico de jefe que hay subido
	inc (ix+006h)		;8656   ; sube si se mueve
	ld (ix+00bh),03fh		;8659   ; el cuadro del enemigo = 0x3F
	jp 06979h		;865d
L_8660:
	call batt_cambia_de_cuadro		;8660
	ld a,(ix+019h)		;8663
	or a			;8666
	ld hl,08675h		;8667   ; tablas_8675: dos tablas de tres palabras (0x8675 y 0x867B, segun ix+0x19) que p02:866F reparte por ix+1 con p00:4260
	jr z,L_866F		;866a
	ld hl,0867bh		;866c
L_866F:
	ld a,(ix+001h)		;866f   ; lee el paso en que va
	jp 04260h		;8672   ; p00:despacha_hl

; ----------------------------------------------------------------------
; DATOS tablas_8675: dos tablas de tres palabras (0x8675 y 0x867B, segun
;   ix+0x19) que p02:866F reparte por ix+1 con p00:4260
;   0x8675..0x8681  (12 bytes)
DATA_tablas_8675:
	defb 081h,086h,0afh,086h,00ch,087h,016h,087h,044h,087h,00ch,087h	; 8675  ........D...

; ======================================================================
; CODIGO 0x8681..0x8839  (440 bytes)
; ======================================================================


L_8681:
	call 04308h		;8681   ; p00:posicion_de_mitchel: E = la y de Mitchel, D = su x
	ld a,(ix+003h)		;8684   ; lee la y del enemigo
	sub 004h		;8687
	cp e			;8689
	ret nc			;868a
	add a,008h		;868b
	cp e			;868d
	ret c			;868e
	ld a,(ix+005h)		;868f   ; lee la x del enemigo
	cp d			;8692
	ld de,00500h		;8693
	jr c,L_869B		;8696
	ld de,0fb00h		;8698
L_869B:
	call 04318h		;869b
	ld de,00000h		;869e
	call 04311h		;86a1
	ld (ix+006h),001h		;86a4   ; si se mueve = 0x01
	ld (ix+00bh),002h		;86a8   ; el cuadro del enemigo = 0x02
	jp L_8910		;86ac
L_86AF:
	ld de,00200h		;86af
	dec (ix+014h)		;86b2
	ld a,(ix+014h)		;86b5
	and 004h		;86b8
	jr nz,L_86BF		;86ba
	ld de,0fe00h		;86bc
L_86BF:
	ld l,(ix+002h)		;86bf
	ld h,(ix+003h)		;86c2   ; lee la y del enemigo
	add hl,de			;86c5
	ld (ix+002h),l		;86c6
	ld (ix+003h),h		;86c9   ; guarda la y del enemigo
	ld a,(ix+005h)		;86cc   ; lee la x del enemigo
	cp 020h		;86cf
	jr c,L_86F7		;86d1
	cp 090h		;86d3
	jr nc,L_86F7		;86d5
	call 04308h		;86d7   ; p00:posicion_de_mitchel: E = la y de Mitchel, D = su x
	ld a,(ix+005h)		;86da   ; lee la x del enemigo
	sub 004h		;86dd
	cp d			;86df
	ret nc			;86e0
	add a,008h		;86e1
	cp d			;86e3
	ret c			;86e4
	ld a,(ix+003h)		;86e5   ; lee la y del enemigo
	sub 004h		;86e8
	cp e			;86ea
	ret nc			;86eb
	add a,008h		;86ec
	cp e			;86ee
	ret c			;86ef
	ld (ix+006h),000h		;86f0   ; si se mueve = 0x00
	jp L_8910		;86f4
L_86F7:
	ld (ix+005h),a		;86f7   ; guarda la x del enemigo
	cp 058h		;86fa
	ld a,020h		;86fc
	jr c,L_8702		;86fe
	ld a,090h		;8700
L_8702:
	ld (ix+005h),a		;8702   ; guarda la x del enemigo
	ld (ix+006h),000h		;8705   ; si se mueve = 0x00
	jp vuelve_al_paso_0		;8709
L_870C:
	call 04308h		;870c   ; p00:posicion_de_mitchel: E = la y de Mitchel, D = su x
	ld (ix+003h),e		;870f   ; guarda la y del enemigo
	ld (ix+005h),d		;8712   ; guarda la x del enemigo
	ret			;8715
L_8716:
	call 04308h		;8716   ; p00:posicion_de_mitchel: E = la y de Mitchel, D = su x
	ld a,(ix+005h)		;8719   ; lee la x del enemigo
	sub 006h		;871c
	cp d			;871e
	ret nc			;871f
	add a,00ch		;8720
	cp d			;8722
	ret c			;8723
	ld a,(ix+003h)		;8724   ; lee la y del enemigo
	cp e			;8727
	ld de,00500h		;8728
	jr c,L_8730		;872b
	ld de,0fb00h		;872d
L_8730:
	call 04311h		;8730
	ld de,00000h		;8733
	call 04318h		;8736
	ld (ix+006h),001h		;8739   ; si se mueve = 0x01
	ld (ix+00bh),002h		;873d   ; el cuadro del enemigo = 0x02
	jp L_8910		;8741
L_8744:
	ld de,00200h		;8744
	dec (ix+014h)		;8747
	ld a,(ix+014h)		;874a
	and 004h		;874d
	jr nz,L_8754		;874f
	ld de,0fe00h		;8751
L_8754:
	ld l,(ix+004h)		;8754
	ld h,(ix+005h)		;8757   ; lee la x del enemigo
	add hl,de			;875a
	ld (ix+004h),l		;875b
	ld (ix+005h),h		;875e   ; guarda la x del enemigo
	ld a,(ix+003h)		;8761   ; lee la y del enemigo
	cp 010h		;8764
	jr c,L_878C		;8766
	cp 0a0h		;8768
	jr nc,L_878C		;876a
	call 04308h		;876c   ; p00:posicion_de_mitchel: E = la y de Mitchel, D = su x
	ld a,(ix+003h)		;876f   ; lee la y del enemigo
	sub 004h		;8772
	cp e			;8774
	ret nc			;8775
	add a,008h		;8776
	cp e			;8778
	ret c			;8779
	ld a,(ix+005h)		;877a   ; lee la x del enemigo
	sub 004h		;877d
	cp d			;877f
	ret nc			;8780
	add a,008h		;8781
	cp d			;8783
	ret c			;8784
	ld (ix+006h),000h		;8785   ; si se mueve = 0x00
	jp L_8910		;8789
L_878C:
	ld (ix+003h),a		;878c   ; guarda la y del enemigo
	cp 058h		;878f
	ld a,010h		;8791
	jr c,L_8797		;8793
	ld a,0a0h		;8795
L_8797:
	ld (ix+003h),a		;8797   ; guarda la y del enemigo
	ld (ix+006h),000h		;879a   ; si se mueve = 0x00
	jp vuelve_al_paso_0		;879e
batt_cambia_de_cuadro:
	ld a,(ix+00ch)		;87a1   ; lee la cuenta de cuadros
	and 003h		;87a4
	ret nz			;87a6
	ld a,(ix+013h)		;87a7
	ld b,a			;87aa
	add a,(ix+00bh)		;87ab   ; le suma el cuadro del enemigo
	and 007h		;87ae
	cp 007h		;87b0
	jr z,L_87B8		;87b2
	cp 004h		;87b4
	jr nz,L_87C5		;87b6
L_87B8:
	ld a,b			;87b8
	neg		;87b9
	ld (ix+013h),a		;87bb
	cp 0ffh		;87be
	ld a,002h		;87c0
	jr z,L_87C5		;87c2
	dec a			;87c4
L_87C5:
	ld e,000h		;87c5
	ld d,a			;87c7
	ld a,(0c125h)		;87c8   ; lee la PANTALLA
	cp 01bh		;87cb   ; la pantalla 0x1B?
	jr z,L_87D3		;87cd
	cp 01ch		;87cf   ; la pantalla 0x1C?
	jr nz,L_87D5		;87d1
L_87D3:
	ld e,008h		;87d3
L_87D5:
	ld a,d			;87d5
	or e			;87d6
	ld (ix+00bh),a		;87d7   ; guarda el cuadro del enemigo
	ret			;87da
L_87DB:
	ld b,000h		;87db
	ld a,(ix+003h)		;87dd   ; lee la y del enemigo
	cp 020h		;87e0
	jr c,L_87E8		;87e2
	cp 080h		;87e4
	jr c,L_87E9		;87e6
L_87E8:
	inc b			;87e8
L_87E9:
	ld (ix+019h),b		;87e9
	ld (ix+013h),001h		;87ec
	ld (ix+00bh),000h		;87f0   ; el cuadro del enemigo = 0x00
	ret			;87f4
L_87F5:
	ld de,0ff00h		;87f5
	ld b,005h		;87f8
	ld a,(ix+005h)		;87fa   ; lee la x del enemigo
	cp 0a0h		;87fd
	jr nc,L_880A		;87ff
	cp 010h		;8801
	jr nc,L_8818		;8803
	ld b,009h		;8805
	ld de,00100h		;8807
L_880A:
	ld (ix+00bh),b		;880a   ; guarda el cuadro del enemigo
	call 04318h		;880d
	ld a,001h		;8810
	xor (ix+014h)		;8812
	ld (ix+014h),a		;8815
L_8818:
	ld a,(ix+00ch)		;8818   ; lee la cuenta de cuadros
	and 003h		;881b
	jr nz,L_8833		;881d
	ld a,(ix+00bh)		;881f   ; lee el cuadro del enemigo
	sub 002h		;8822
	ld hl,08876h		;8824   ; cuadro_siguiente_8876: 8 bytes: el cuadro siguiente (ix+0x0B) segun el de ahora menos 2 (p02:8824)
	ld b,007h		;8827
L_8829:
	dec a			;8829
	jr z,L_882F		;882a
	inc hl			;882c
	djnz L_8829		;882d
L_882F:
	ld a,(hl)			;882f
	ld (ix+00bh),a		;8830   ; guarda el cuadro del enemigo
L_8833:
	ld a,(ix+001h)		;8833   ; lee el paso en que va
	call 0425fh		;8836   ; p00:despacha: Salta a la entrada A de la tabla de palabras que va pegada detras del `call`.

; ----------------------------------------------------------------------
; DATOS tabla_8839: 3 destinos del despachador de 0x425F (call en p02:8836):
;   0x883F, 0x887E, 0x870C; lo leen p02:8836 (6 bytes)
;   0x8839..0x883f  (6 bytes)
DATA_tabla_8839:
	defb 03fh,088h	; 8839
	defb 07eh,088h	; 883b
	defb 00ch,087h	; 883d

; ======================================================================
; CODIGO 0x883f..0x8876  (55 bytes)
; ======================================================================


L_883F:
	call 04308h		;883f   ; p00:posicion_de_mitchel: E = la y de Mitchel, D = su x
	ld a,(ix+005h)		;8842   ; lee la x del enemigo
	sub 004h		;8845
	cp d			;8847
	ret nc			;8848
	add a,008h		;8849
	cp d			;884b
	ret c			;884c
	ld a,e			;884d
	ld de,00400h		;884e
	sub (ix+003h)		;8851   ; le resta la y del enemigo
	jr nc,L_8859		;8854
	ld de,0fc00h		;8856
L_8859:
	call 04311h		;8859
	ld de,00000h		;885c
	call 04318h		;885f
	ld (ix+006h),001h		;8862   ; si se mueve = 0x01
	ld a,(ix+003h)		;8866   ; lee la y del enemigo
	cp 058h		;8869
	ld a,003h		;886b
	jr c,L_8870		;886d
	inc a			;886f
L_8870:
	ld (ix+00bh),a		;8870   ; guarda el cuadro del enemigo
	jp L_8910		;8873

; ----------------------------------------------------------------------
; DATOS cuadro_siguiente_8876: 8 bytes: el cuadro siguiente (ix+0x0B) segun el
;   de ahora menos 2 (p02:8824)
;   0x8876..0x887e  (8 bytes)
DATA_cuadro_siguiente_8876:
	defb 007h,008h,006h,005h,003h,004h,00ah,009h	; 8876  ........

; ======================================================================
; CODIGO 0x887e..0x88ff  (129 bytes)
; ======================================================================


L_887E:
	call 04308h		;887e   ; p00:posicion_de_mitchel: E = la y de Mitchel, D = su x
	ld a,e			;8881
	ld e,(ix+003h)		;8882   ; lee la y del enemigo
	sub 004h		;8885
	cp e			;8887
	jr nc,L_88A3		;8888
	add a,008h		;888a
	cp e			;888c
	jr c,L_88A3		;888d
	ld a,d			;888f
	ld d,(ix+005h)		;8890   ; lee la x del enemigo
	sub 004h		;8893
	cp d			;8895
	jr nc,L_88A3		;8896
	add a,008h		;8898
	cp d			;889a
	jr c,L_88A3		;889b
	dec (ix+006h)		;889d   ; baja si se mueve
	jp L_8910		;88a0
L_88A3:
	ld a,(ix+003h)		;88a3   ; lee la y del enemigo
	cp 030h		;88a6
	jr c,L_88AD		;88a8
	cp 0a0h		;88aa
	ret c			;88ac
L_88AD:
	ld a,000h		;88ad
	jr c,L_88B3		;88af
	ld a,002h		;88b1
L_88B3:
	push af			;88b3
	ld e,000h		;88b4
	call 07303h		;88b6
	pop de			;88b9
	ret nc			;88ba
	call vuelve_al_paso_0		;88bb
	ld a,(ix+014h)		;88be
	or a			;88c1
	jr z,L_88CD		;88c2
L_88C4:
	ld a,009h		;88c4
	ld b,001h		;88c6
	ld de,00100h		;88c8
	jr L_88D4		;88cb
L_88CD:
	ld a,005h		;88cd
	ld b,000h		;88cf
	ld de,0ff00h		;88d1
L_88D4:
	ld (ix+014h),b		;88d4
	ld (ix+00bh),a		;88d7   ; guarda el cuadro del enemigo
	ld hl,00000h		;88da
	jp pon_velocidades		;88dd   ; pon_velocidades: la ficha se mueve (ix+6), con DE de velocidad vertical y HL de horizontal
L_88E0:
	call bowler_paso_3		;88e0
	ld a,(ix+016h)		;88e3
	or a			;88e6
	jr z,L_88EE		;88e7
	dec (ix+016h)		;88e9
	jr nz,L_88F9		;88ec
L_88EE:
	ld l,(ix+018h)		;88ee
	ld h,(ix+019h)		;88f1
	ld a,(hl)			;88f4
	or a			;88f5
	call z,bowler_mira_a_mitchel		;88f6
L_88F9:
	ld a,(ix+001h)		;88f9   ; lee el paso en que va
	call 0425fh		;88fc   ; p00:despacha: Salta a la entrada A de la tabla de palabras que va pegada detras del `call`.

; ----------------------------------------------------------------------
; DATOS tabla_88FF: 4 destinos del despachador de 0x425F (call en p02:88FC):
;   0x8907, 0x8986, 0x89E2, 0x8A15; lo leen p02:88FC (8 bytes)
;   0x88ff..0x8907  (8 bytes)
DATA_tabla_88FF:
	defb 007h,089h	; 88ff
	defb 086h,089h	; 8901
	defb 0e2h,089h	; 8903
	defb 015h,08ah	; 8905

; ======================================================================
; CODIGO 0x8907..0x8a22  (283 bytes)
; ======================================================================


L_8907:
	dec (ix+015h)		;8907
	jr nz,L_8914		;890a
	ld (ix+015h),090h		;890c
L_8910:
	inc (ix+001h)		;8910   ; sube el paso en que va
	ret			;8913
L_8914:
	ld b,007h		;8914
	ld a,(ix+014h)		;8916
	rra			;8919
	jr c,L_8923		;891a
	ld a,(ix+003h)		;891c   ; lee la y del enemigo
	and b			;891f
	ret nz			;8920
	jr L_8928		;8921
L_8923:
	ld a,(ix+005h)		;8923   ; lee la x del enemigo
	and b			;8926
	ret nz			;8927
L_8928:
	ld bc,00000h		;8928
	ld a,(0c103h)		;892b   ; lee el contador de cuadros
	and 020h		;892e
	jr nz,L_893E		;8930
	ld a,r		;8932
	rla			;8934
	rla			;8935
	ld e,a			;8936
	ld a,r		;8937
	rla			;8939
	rla			;893a
	ld d,a			;893b
	ld b,002h		;893c
L_893E:
	call 0729eh		;893e   ; p01:apunta_a_mitchel
	jr nc,L_8948		;8941
	ld (ix+006h),000h		;8943   ; si se mueve = 0x00
	ret			;8947
L_8948:
	ld b,a			;8948
	or a			;8949
	jr z,L_8957		;894a
	dec a			;894c
	jr z,L_895C		;894d
	dec a			;894f
	jr z,L_8967		;8950
	ld de,0ff00h		;8952
	jr L_895F		;8955
L_8957:
	ld hl,0ff00h		;8957
	jr L_896A		;895a
L_895C:
	ld de,00100h		;895c
L_895F:
	ld hl,00000h		;895f
	call pon_velocidades		;8962   ; pon_velocidades: la ficha se mueve (ix+6), con DE de velocidad vertical y HL de horizontal
	jr L_8970		;8965
L_8967:
	ld hl,00100h		;8967
L_896A:
	ld de,00000h		;896a
	call pon_velocidades		;896d   ; pon_velocidades: la ficha se mueve (ix+6), con DE de velocidad vertical y HL de horizontal
L_8970:
	ld a,(ix+000h)		;8970   ; lee el tipo del enemigo
	cp 019h		;8973   ; BLOWMIRE (tipo 0x19)?
	ret z			;8975
	ld (ix+014h),b		;8976
	ld a,(ix+00bh)		;8979   ; lee el cuadro del enemigo
	and 001h		;897c
	ld c,a			;897e
	ld a,b			;897f
	add a,a			;8980
	add a,c			;8981
	ld (ix+00bh),a		;8982   ; guarda el cuadro del enemigo
	ret			;8985
L_8986:
	dec (ix+015h)		;8986
	jr nz,L_8994		;8989
L_898B:
	ld (ix+015h),090h		;898b
	call vuelve_al_paso_0		;898f
	jr L_8928		;8992
L_8994:
	ld b,007h		;8994
	ld a,(ix+014h)		;8996
	rra			;8999
	jr c,L_89A3		;899a
	ld a,(ix+003h)		;899c   ; lee la y del enemigo
	and b			;899f
	ret nz			;89a0
	jr L_89A8		;89a1
L_89A3:
	ld a,(ix+005h)		;89a3   ; lee la x del enemigo
	and b			;89a6
	ret nz			;89a7
L_89A8:
	ld a,(0c107h)		;89a8   ; lee las teclas que se tienen pulsadas (0 arriba, 1 abajo, 2 izquierda, 3 derecha)
	or a			;89ab
	jr nz,L_89B2		;89ac
	ld (ix+006h),a		;89ae   ; guarda si se mueve
	ret			;89b1
L_89B2:
	ld (ix+006h),001h		;89b2   ; si se mueve = 0x01
	ld b,a			;89b6
	ld a,b			;89b7
	rra			;89b8
	ld b,000h		;89b9
	jr c,L_89D4		;89bb
	rra			;89bd
	ld b,002h		;89be
	jr c,L_89D4		;89c0
	rra			;89c2
	ld b,003h		;89c3
	jr c,L_89D4		;89c5
	rra			;89c7
	ld b,001h		;89c8
	jr c,L_89D4		;89ca
bowler_se_para:
	ld de,00000h		;89cc
	ld h,d			;89cf
	ld l,e			;89d0
	jp pon_velocidades		;89d1   ; pon_velocidades: la ficha se mueve (ix+6), con DE de velocidad vertical y HL de horizontal
L_89D4:
	ld a,b			;89d4
	ld e,000h		;89d5
	push af			;89d7
	call 07303h		;89d8
	pop de			;89db
	jr c,bowler_se_para		;89dc
	ld a,d			;89de
	jp L_893E		;89df
L_89E2:
	dec (ix+016h)		;89e2
	jr z,L_898B		;89e5
	ld b,007h		;89e7
	ld a,(ix+014h)		;89e9
	rra			;89ec
	jr c,L_89F6		;89ed
	ld a,(ix+003h)		;89ef   ; lee la y del enemigo
	and b			;89f2
	ret nz			;89f3
	jr L_89FB		;89f4
L_89F6:
	ld a,(ix+005h)		;89f6   ; lee la x del enemigo
	and b			;89f9
	ret nz			;89fa
L_89FB:
	ld bc,00000h		;89fb
	call 0729eh		;89fe   ; p01:apunta_a_mitchel
	add a,002h		;8a01
	and 003h		;8a03
	ld e,000h		;8a05
	call 07303h		;8a07
	jp nc,L_893E		;8a0a
	call bowler_se_para		;8a0d
	ld (ix+006h),000h		;8a10   ; si se mueve = 0x00
	ret			;8a14
L_8A15:
	dec (ix+016h)		;8a15
	ret nz			;8a18
	ld (ix+006h),001h		;8a19   ; si se mueve = 0x01
vuelve_al_paso_0:
	ld (ix+001h),000h		;8a1d   ; el paso en que va = 0x00
	ret			;8a21

; ----------------------------------------------------------------------
; DATOS codigo_8A22: codigo que no llama nadie: call 0x8CB4 y 8 ceros, de DE
;   en DE, desde HL
;   0x8a22..0x8a2d  (11 bytes)
DATA_codigo_8A22:
	defb 0cdh,0b4h,08ch,0afh,006h,008h,077h,019h,010h,0fch,0c9h	; 8a22  ......w....

; ======================================================================
; CODIGO 0x8a2d..0x8add  (176 bytes)
; ======================================================================


bowler_mira_a_mitchel:
	call 04308h		;8a2d   ; p00:posicion_de_mitchel: E = la y de Mitchel, D = su x
	ld h,(ix+005h)		;8a30   ; lee la x del enemigo
	ld l,(ix+003h)		;8a33   ; lee la y del enemigo
	cp l			;8a36
	jr nz,L_8A43		;8a37
	ld a,d			;8a39
	cp h			;8a3a
	ld b,003h		;8a3b
	jr c,L_8A4E		;8a3d
	ld b,001h		;8a3f
	jr L_8A4E		;8a41
L_8A43:
	ld a,d			;8a43
	cp h			;8a44
	ret nz			;8a45
	ld a,e			;8a46
	cp l			;8a47
	ld b,000h		;8a48
	jr c,L_8A4E		;8a4a
	ld b,002h		;8a4c
L_8A4E:
	ld (ix+006h),000h		;8a4e   ; si se mueve = 0x00
	ld (ix+016h),090h		;8a52
	ld (ix+001h),003h		;8a56   ; el paso en que va = 0x03
	pop de			;8a5a
	ld c,08ah		;8a5b
L_8A5D:
	ld d,(ix+005h)		;8a5d   ; lee la x del enemigo
	ld e,(ix+003h)		;8a60   ; lee la y del enemigo
	call 0709ah		;8a63
	ld (ix+018h),l		;8a66
	ld (ix+019h),h		;8a69
	ret			;8a6c
bowler_paso_3:
	ld a,(ix+001h)		;8a6d   ; lee el paso en que va
	cp 003h		;8a70
	ret z			;8a72
alterna_el_cuadro:
	ld a,(ix+00ch)		;8a73   ; cada 8 cuadros (ix+0x0C) cambia el bit 0 del cuadro (ix+0x0B)
	and 007h		;8a76
	ret nz			;8a78
	ld a,001h		;8a79
	xor (ix+00bh)		;8a7b   ; XOR con el cuadro del enemigo
	ld (ix+00bh),a		;8a7e   ; guarda el cuadro del enemigo
	ret			;8a81
L_8A82:
	ld (ix+00bh),000h		;8a82   ; el cuadro del enemigo = 0x00
	ld (ix+015h),090h		;8a86
	ld c,08ah		;8a8a
	jr L_8A5D		;8a8c
L_8A8E:
	call alterna_el_cuadro		;8a8e   ; alterna_el_cuadro: cada 8 cuadros (ix+0x0C) cambia el bit 0 del cuadro (ix+0x0B)
	dec (ix+014h)		;8a91
	ret nz			;8a94
	ld (ix+014h),040h		;8a95
	ld d,(ix+005h)		;8a99   ; lee la x del enemigo
	dec d			;8a9c
	ld a,(ix+003h)		;8a9d   ; lee la y del enemigo
	sub 00ch		;8aa0
	ld e,a			;8aa2
	ld c,084h		;8aa3
	jp 0709ah		;8aa5
L_8AA8:
	call 06979h		;8aa8
	ld (ix+011h),002h		;8aab
	ld (ix+014h),020h		;8aaf
	ld bc,00504h		;8ab3
	call 04333h		;8ab6
	ld (ix+00bh),060h		;8ab9   ; el cuadro del enemigo = 0x60
	ld a,(ix+005h)		;8abd   ; lee la x del enemigo
	sub 014h		;8ac0
	ld d,a			;8ac2
	ld a,(ix+003h)		;8ac3   ; lee la y del enemigo
	sub 010h		;8ac6
	ld e,a			;8ac8
	ld hl,0d8b0h		;8ac9
	ld bc,02820h		;8acc
	ld a,048h		;8acf
	jp 0481bh		;8ad1   ; p00:lmmm: orden LMMM del V9938: lo mismo con operacion logica (A: paginas y operacion; 8 = TIMP)
L_8AD4:
	call batt_cambia_de_cuadro		;8ad4
	ld a,(ix+001h)		;8ad7   ; lee el paso en que va
	call 0425fh		;8ada   ; p00:despacha: Salta a la entrada A de la tabla de palabras que va pegada detras del `call`.

; ----------------------------------------------------------------------
; DATOS tabla_8ADD: 4 destinos del despachador de 0x425F (call en p02:8ADA):
;   0x8AE5, 0x8B22, 0x8B53, 0x870C; lo leen p02:8ADA (8 bytes)
;   0x8add..0x8ae5  (8 bytes)
DATA_tabla_8ADD:
	defb 0e5h,08ah	; 8add
	defb 022h,08bh	; 8adf
	defb 053h,08bh	; 8ae1
	defb 00ch,087h	; 8ae3

; ======================================================================
; CODIGO 0x8ae5..0x8bba  (213 bytes)
; ======================================================================


L_8AE5:
	ld d,(ix+019h)		;8ae5
	ld e,(ix+018h)		;8ae8
	ld b,(ix+005h)		;8aeb   ; lee la x del enemigo
	ld c,(ix+003h)		;8aee   ; lee la y del enemigo
	ld a,d			;8af1
	sub b			;8af2
	jr nc,L_8AF7		;8af3
	neg		;8af5
L_8AF7:
	ld h,a			;8af7
	ld a,e			;8af8
	sub c			;8af9
	jr nc,L_8AFE		;8afa
	neg		;8afc
L_8AFE:
	cp h			;8afe
	jr c,L_8B0C		;8aff
	ld a,e			;8b01
	sub 00ch		;8b02
	cp c			;8b04
	ret nc			;8b05
	add a,018h		;8b06
	cp c			;8b08
	ret c			;8b09
	jr L_8B15		;8b0a
L_8B0C:
	ld a,d			;8b0c
	sub 00ch		;8b0d
	cp b			;8b0f
	ret nc			;8b10
	add a,018h		;8b11
	cp b			;8b13
	ret c			;8b14
L_8B15:
	nop			;8b15
	ld (ix+005h),d		;8b16   ; guarda la x del enemigo
	ld (ix+003h),e		;8b19   ; guarda la y del enemigo
	dec (ix+006h)		;8b1c   ; baja si se mueve
	jp L_8910		;8b1f
L_8B22:
	call 05bd6h		;8b22
	call 04308h		;8b25   ; p00:posicion_de_mitchel: E = la y de Mitchel, D = su x
	ld a,058h		;8b28
	ld b,000h		;8b2a
	cp e			;8b2c
	jr nc,L_8B30		;8b2d
	inc b			;8b2f
L_8B30:
	cp d			;8b30
	jr nc,L_8B35		;8b31
	set 1,b		;8b33
L_8B35:
	ld d,(ix+005h)		;8b35   ; lee la x del enemigo
	ld e,(ix+003h)		;8b38   ; lee la y del enemigo
	ld c,000h		;8b3b
	cp e			;8b3d
	jr nc,L_8B41		;8b3e
	inc c			;8b40
L_8B41:
	cp d			;8b41
	jr nc,L_8B46		;8b42
	set 1,c		;8b44
L_8B46:
	ld a,c			;8b46
	cp b			;8b47
	ret nz			;8b48
	call falconbat_velocidad		;8b49
	ld (ix+01eh),000h		;8b4c
	jp L_8910		;8b50
L_8B53:
	ld a,(ix+01eh)		;8b53
	rra			;8b56
	ret nc			;8b57
	ld (ix+006h),000h		;8b58   ; si se mueve = 0x00
	jp L_8910		;8b5c
L_8B5F:
	ld (ix+00bh),008h		;8b5f   ; el cuadro del enemigo = 0x08
	ld (ix+013h),001h		;8b63
	ld a,028h		;8b67
	call cuenta_las_fichas		;8b69
	cp 004h		;8b6c
	jr c,L_8B75		;8b6e
	ld (ix+003h),0e0h		;8b70   ; la y del enemigo = 0xE0
	ret			;8b74
L_8B75:
	call 04308h		;8b75   ; p00:posicion_de_mitchel: E = la y de Mitchel, D = su x
	ld (ix+01bh),d		;8b78
	ld (ix+01ah),e		;8b7b
	ld b,000h		;8b7e
	ld a,058h		;8b80
	cp d			;8b82
	jr nc,L_8B86		;8b83
	inc b			;8b85
L_8B86:
	cp e			;8b86
	ld a,b			;8b87
	jr nc,L_8B8C		;8b88
	or 002h		;8b8a
L_8B8C:
	ld b,a			;8b8c
	add a,a			;8b8d
	add a,b			;8b8e
	ld hl,08bbah		;8b8f   ; ternas_8BBA: 4 ternas que p02:8B8F pone en ix+0x18, ix+0x19 e ix+0x14 (3*A)
	call 04255h		;8b92   ; p00:hl_mas_a
	ld b,(hl)			;8b95
	inc hl			;8b96
	ld c,(hl)			;8b97
	inc hl			;8b98
	ld a,(hl)			;8b99
	ld (ix+018h),b		;8b9a
	ld (ix+019h),c		;8b9d
	ld (ix+014h),a		;8ba0
	ld hl,0c303h		;8ba3   ; apunta a la Y de Mitchel
	ld (hl),b			;8ba6
	inc hl			;8ba7
	inc hl			;8ba8
	ld (hl),c			;8ba9
	push hl			;8baa
	call falconbat_velocidad		;8bab
	pop hl			;8bae
	ld b,(ix+01ah)		;8baf
	ld c,(ix+01bh)		;8bb2
	ld (hl),c			;8bb5
	dec hl			;8bb6
	dec hl			;8bb7
	ld (hl),b			;8bb8
	ret			;8bb9

; ----------------------------------------------------------------------
; DATOS ternas_8BBA: 4 ternas que p02:8B8F pone en ix+0x18, ix+0x19 e ix+0x14
;   (3*A)
;   0x8bba..0x8bc6  (12 bytes)
DATA_ternas_8BBA:
	defb 085h,02bh,009h,02bh,02bh,019h,02bh,085h,029h,085h,085h,039h	; 8bba  .+.++.+.)..9

; ======================================================================
; CODIGO 0x8bc6..0x8bec  (38 bytes)
; ======================================================================


cuenta_las_fichas:
	ld hl,0d000h		;8bc6   ; apunta a las fichas de los enemigos (13 de 0x80)
	ld de,00080h		;8bc9
	ld b,00dh		;8bcc
	ld c,000h		;8bce
L_8BD0:
	cp (hl)			;8bd0
	jr nz,L_8BD4		;8bd1
	inc c			;8bd3
L_8BD4:
	add hl,de			;8bd4
	djnz L_8BD0		;8bd5
	ld a,c			;8bd7
	ret			;8bd8
falconbat_velocidad:
	call 0716dh		;8bd9
pon_velocidades:
	inc (ix+006h)		;8bdc   ; la ficha se mueve (ix+6), con DE de velocidad vertical y HL de horizontal
	call 04318h		;8bdf
	ex de,hl			;8be2
	jp 04311h		;8be3
L_8BE6:
	ld a,(ix+001h)		;8be6   ; lee el paso en que va
	call 0425fh		;8be9   ; p00:despacha: Salta a la entrada A de la tabla de palabras que va pegada detras del `call`.

; ----------------------------------------------------------------------
; DATOS tabla_8BEC: 2 destinos del despachador de 0x425F (call en p02:8BE9):
;   0x8BF0, 0x8C23; lo leen p02:8BE9 (4 bytes)
;   0x8bec..0x8bf0  (4 bytes)
DATA_tabla_8BEC:
	defb 0f0h,08bh	; 8bec
	defb 023h,08ch	; 8bee

; ======================================================================
; CODIGO 0x8bf0..0x8c00  (16 bytes)
; ======================================================================


L_8BF0:
	call alterna_el_cuadro		;8bf0   ; alterna_el_cuadro: cada 8 cuadros (ix+0x0C) cambia el bit 0 del cuadro (ix+0x0B)
	dec (ix+015h)		;8bf3
	ret nz			;8bf6
	ld a,(ix+000h)		;8bf7   ; lee el tipo del enemigo
	cp 033h		;8bfa   ; RED FMAN (tipo 0x33)?
	ld c,060h		;8bfc
	jr $+10		;8bfe

; ----------------------------------------------------------------------
; DATOS codigo_8C00: codigo al que no se llega (p02:8BFE salta por encima): cp
;   0x34 / ld c,0x80 / jr +2 / ld c,0xA0
;   0x8c00..0x8c08  (8 bytes)
DATA_codigo_8C00:
	defb 0feh,034h,00eh,080h,018h,002h,00eh,0a0h	; 8c00  .4......

; ======================================================================
; CODIGO 0x8c08..0x8c64  (92 bytes)
; ======================================================================


L_8C08:
	ld a,c			;8c08
	call 0716fh		;8c09   ; p01:rumbo_hacia_mitchel
	inc (ix+006h)		;8c0c   ; sube si se mueve
	call 04318h		;8c0f
	ex de,hl			;8c12
	call 04311h		;8c13
	call 04308h		;8c16   ; p00:posicion_de_mitchel: E = la y de Mitchel, D = su x
	ld (ix+016h),e		;8c19
	ld (ix+00bh),063h		;8c1c   ; el cuadro del enemigo = 0x63
	jp L_8910		;8c20
L_8C23:
	ld a,00dh		;8c23
	call 05488h		;8c25   ; p00:sonido_si_juega: solo con el bit 6 de 0xC102 (la partida de verdad, no la demostracion)
	ld d,010h		;8c28
	call 073e4h		;8c2a   ; p01:ficha_contra_el_mapa
	jr c,L_8C5D		;8c2d
	ld d,(ix+017h)		;8c2f
	ld e,(ix+016h)		;8c32
	ld a,e			;8c35
	sub (ix+003h)		;8c36   ; le resta la y del enemigo
	ld b,a			;8c39
	ld a,d			;8c3a
	sub (ix+005h)		;8c3b   ; le resta la x del enemigo
	cp b			;8c3e
	jr c,L_8C4F		;8c3f
	ld a,d			;8c41
	sub 004h		;8c42
	ld b,(ix+005h)		;8c44   ; lee la x del enemigo
	cp b			;8c47
	ret nc			;8c48
	add a,008h		;8c49
	cp b			;8c4b
	ret c			;8c4c
	jr $+67		;8c4d
L_8C4F:
	ld a,e			;8c4f
	sub 004h		;8c50
	ld b,(ix+003h)		;8c52   ; lee la y del enemigo
	cp b			;8c55
	ret nc			;8c56
	add a,008h		;8c57
	cp b			;8c59
	ret c			;8c5a
	jr $+53		;8c5b
L_8C5D:
	ld a,b			;8c5d
	ld bc,00ff0h		;8c5e
	call 0425fh		;8c61   ; p00:despacha: Salta a la entrada A de la tabla de palabras que va pegada detras del `call`.

; ----------------------------------------------------------------------
; DATOS tabla_8C64: 4 destinos del despachador de 0x425F (call en p02:8C61):
;   0x8C7F, 0x8C76, 0x8C89, 0x8C6C; lo leen p02:8C61 (8 bytes)
;   0x8c64..0x8c6c  (8 bytes)
DATA_tabla_8C64:
	defb 07fh,08ch	; 8c64
	defb 076h,08ch	; 8c66
	defb 089h,08ch	; 8c68
	defb 06ch,08ch	; 8c6a

; ======================================================================
; CODIGO 0x8c6c..0x8d60  (244 bytes)
; ======================================================================


L_8C6C:
	ld a,(ix+005h)		;8c6c   ; lee la x del enemigo
	add a,b			;8c6f
	and c			;8c70
	ld (ix+005h),a		;8c71   ; guarda la x del enemigo
	jr L_8C90		;8c74
L_8C76:
	ld a,(ix+005h)		;8c76   ; lee la x del enemigo
	and c			;8c79
	ld (ix+005h),a		;8c7a   ; guarda la x del enemigo
	jr L_8C90		;8c7d
L_8C7F:
	ld a,(ix+003h)		;8c7f   ; lee la y del enemigo
	add a,b			;8c82
	and c			;8c83
	ld (ix+003h),a		;8c84   ; guarda la y del enemigo
	jr L_8C90		;8c87
L_8C89:
	ld a,(ix+003h)		;8c89   ; lee la y del enemigo
	and c			;8c8c
	ld (ix+003h),a		;8c8d   ; guarda la y del enemigo
L_8C90:
	ld de,00000h		;8c90
	call 04318h		;8c93
	call 04311h		;8c96
	ld (ix+015h),010h		;8c99
	jp vuelve_al_paso_0		;8c9d
L_8CA0:
	ld (ix+015h),005h		;8ca0
	ld (ix+00bh),062h		;8ca4   ; el cuadro del enemigo = 0x62
	inc (ix+006h)		;8ca8   ; sube si se mueve
	ld de,00000h		;8cab
	call 04318h		;8cae
	jp 04311h		;8cb1
colores_de_los_sprites_de_la_ficha:
	push ix		;8cb4   ; HL = ix+0x25 (el color del primer sprite), DE = 5 (de uno al siguiente)
	pop hl			;8cb6
	push bc			;8cb7
	ld bc,00025h		;8cb8
	add hl,bc			;8cbb
	ld de,00005h		;8cbc
	pop bc			;8cbf
	ret			;8cc0
colores_a_4:
	call colores_de_los_sprites_de_la_ficha		;8cc1   ; colores_de_los_sprites_de_la_ficha: HL = ix+0x25 (el color del primer sprite), DE = 5 (de uno al siguiente)
	ld a,004h		;8cc4
L_8CC6:
	ld (hl),b			;8cc6
	add hl,de			;8cc7
	ld (hl),c			;8cc8
	add hl,de			;8cc9
	dec a			;8cca
	jr nz,L_8CC6		;8ccb
	ret			;8ccd
L_8CCE:
	ld a,(ix+00ch)		;8cce   ; lee la cuenta de cuadros
	and 003h		;8cd1
	jr nz,L_8CED		;8cd3
	ld hl,08d60h		;8cd5   ; cuadro_siguiente_8D60: 8 bytes: el cuadro (ix+0x0B) segun el de ahora menos 3 y el paso (p02:8CD5)
	ld a,(ix+00bh)		;8cd8   ; lee el cuadro del enemigo
	sub 003h		;8cdb
L_8CDD:
	ld b,004h		;8cdd
L_8CDF:
	dec a			;8cdf
	jr z,L_8CE9		;8ce0
	inc hl			;8ce2
	djnz L_8CDF		;8ce3
	sub 004h		;8ce5
	jr L_8CDD		;8ce7
L_8CE9:
	ld a,(hl)			;8ce9
	ld (ix+00bh),a		;8cea   ; guarda el cuadro del enemigo
L_8CED:
	ld b,007h		;8ced
	ld a,(ix+014h)		;8cef
	rra			;8cf2
	jr c,L_8CFC		;8cf3
	ld a,(ix+003h)		;8cf5   ; lee la y del enemigo
	and b			;8cf8
	jr z,L_8D01		;8cf9
	ret			;8cfb
L_8CFC:
	ld a,(ix+005h)		;8cfc   ; lee la x del enemigo
	and b			;8cff
	ret nz			;8d00
L_8D01:
	ld bc,00000h		;8d01
	call 0729eh		;8d04   ; p01:apunta_a_mitchel
	jr nc,L_8D20		;8d07
	ld c,003h		;8d09
L_8D0B:
	inc a			;8d0b
	and 003h		;8d0c
	ld e,000h		;8d0e
	push af			;8d10
	call 07303h		;8d11
	pop de			;8d14
	ld a,d			;8d15
	jr nc,L_8D20		;8d16
	dec c			;8d18
	jr nz,L_8D0B		;8d19
	ld (ix+006h),000h		;8d1b   ; si se mueve = 0x00
	ret			;8d1f
L_8D20:
	ld (ix+006h),001h		;8d20   ; si se mueve = 0x01
	ld b,a			;8d24
	or a			;8d25
	jr z,L_8D33		;8d26
	dec a			;8d28
	jr z,L_8D38		;8d29
	dec a			;8d2b
	jr z,L_8D43		;8d2c
	ld de,0ff00h		;8d2e
	jr L_8D3B		;8d31
L_8D33:
	ld hl,0ff00h		;8d33
	jr L_8D46		;8d36
L_8D38:
	ld de,00100h		;8d38
L_8D3B:
	ld hl,00000h		;8d3b
	call pon_velocidades		;8d3e   ; pon_velocidades: la ficha se mueve (ix+6), con DE de velocidad vertical y HL de horizontal
	jr L_8D4C		;8d41
L_8D43:
	ld hl,00100h		;8d43
L_8D46:
	ld de,00000h		;8d46
	call pon_velocidades		;8d49   ; pon_velocidades: la ficha se mueve (ix+6), con DE de velocidad vertical y HL de horizontal
L_8D4C:
	ld a,b			;8d4c
	cp (ix+014h)		;8d4d
	ret z			;8d50
	ld (ix+014h),b		;8d51
	ld e,b			;8d54
	ld d,000h		;8d55
	ld hl,08d68h		;8d57   ; cuadro_8D68: 4 bytes: el cuadro (ix+0x0B) segun B (p02:8D57)
	add hl,de			;8d5a
	ld a,(hl)			;8d5b
	ld (ix+00bh),a		;8d5c   ; guarda el cuadro del enemigo
	ret			;8d5f

; ----------------------------------------------------------------------
; DATOS cuadro_siguiente_8D60: 8 bytes: el cuadro (ix+0x0B) segun el de ahora
;   menos 3 y el paso (p02:8CD5)
;   0x8d60..0x8d68  (8 bytes)
DATA_cuadro_siguiente_8D60:
	defb 00ch,00dh,007h,006h,004h,005h,00fh,00eh	; 8d60  ........

; ----------------------------------------------------------------------
; DATOS cuadro_8D68: 4 bytes: el cuadro (ix+0x0B) segun B (p02:8D57)
;   0x8d68..0x8d6c  (4 bytes)
DATA_cuadro_8D68:
	defb 005h,00eh,004h,006h	; 8d68

; ======================================================================
; CODIGO 0x8d6c..0x9148  (988 bytes)
; ======================================================================


L_8D6C:
	ld (ix+00bh),004h		;8d6c   ; el cuadro del enemigo = 0x04
	ld (ix+014h),002h		;8d70
	ld de,00000h		;8d74
	ld hl,00100h		;8d77
	jp pon_velocidades		;8d7a   ; pon_velocidades: la ficha se mueve (ix+6), con DE de velocidad vertical y HL de horizontal
L_8D7D:
	ld a,(ix+013h)		;8d7d
	or a			;8d80
	ret nz			;8d81
	ld a,(ix+00ch)		;8d82   ; lee la cuenta de cuadros
	and 003h		;8d85
	ret nz			;8d87
	inc (ix+014h)		;8d88
	ld a,(ix+015h)		;8d8b
	or a			;8d8e
	jr nz,L_8DC8		;8d8f
	ld a,(ix+014h)		;8d91
	and 003h		;8d94
	ld b,a			;8d96
	ld c,(ix+005h)		;8d97   ; lee la x del enemigo
	jr nz,L_8DA4		;8d9a
	ld a,010h		;8d9c
	add a,c			;8d9e
	ld (ix+005h),a		;8d9f   ; guarda la x del enemigo
	ld b,004h		;8da2
L_8DA4:
	rl b		;8da4
	rl b		;8da6
	ld a,010h		;8da8
	jr nz,L_8DAE		;8daa
	sub 010h		;8dac
L_8DAE:
	sub b			;8dae
	ld h,a			;8daf
	ld a,c			;8db0
	add a,b			;8db1
	ld (ix+017h),a		;8db2
	ld a,(0c125h)		;8db5   ; lee la PANTALLA
	cp 073h		;8db8   ; la pantalla 0x73?
	ld a,c			;8dba
	jr nz,L_8DC1		;8dbb
	cp 034h		;8dbd
	jr nc,L_8E33		;8dbf
L_8DC1:
	cp 054h		;8dc1
	jr nc,L_8E33		;8dc3
	ld d,c			;8dc5
	jr L_8DFF		;8dc6
L_8DC8:
	ld a,(ix+014h)		;8dc8
	and 003h		;8dcb
	ld b,a			;8dcd
	ld c,(ix+005h)		;8dce   ; lee la x del enemigo
	jr nz,L_8DDB		;8dd1
	ld a,c			;8dd3
	sub 010h		;8dd4
	ld (ix+005h),a		;8dd6   ; guarda la x del enemigo
	ld b,004h		;8dd9
L_8DDB:
	rl b		;8ddb
	rl b		;8ddd
	ld a,c			;8ddf
	sub b			;8de0
	ld (ix+017h),a		;8de1
	ld c,a			;8de4
	cp 058h		;8de5
	jr c,L_8E33		;8de7
	ld a,(0c125h)		;8de9   ; lee la PANTALLA
	cp 076h		;8dec   ; la pantalla 0x76?
	jr nz,L_8DFC		;8dee
	ld a,(ix+003h)		;8df0   ; lee la y del enemigo
	cp 058h		;8df3
	jr c,L_8DFC		;8df5
	ld a,c			;8df7
	cp 068h		;8df8
	jr c,L_8E33		;8dfa
L_8DFC:
	ld d,c			;8dfc
	ld h,000h		;8dfd
L_8DFF:
	ld a,(ix+003h)		;8dff   ; lee la y del enemigo
	ld (ix+016h),a		;8e02
	sub 00ch		;8e05
	ld e,a			;8e07
	ld c,018h		;8e08
	ld l,0a8h		;8e0a
	ld a,001h		;8e0c
	call 047d7h		;8e0e   ; p00:hmmm: orden HMMM del V9938: copia BxC puntos de (H, L) a (D, E); A lleva las paginas
	ld a,(ix+005h)		;8e11   ; lee la x del enemigo
	ld h,a			;8e14
	and 007h		;8e15
	ret nz			;8e17
	ld a,(ix+003h)		;8e18   ; lee la y del enemigo
	sub 008h		;8e1b
	ld l,a			;8e1d
shut_all_casillas:
	call 0431fh		;8e1e   ; p00:casilla_en_ram: HL = la casilla de 8x8 del punto (L, H) en el mapa de la RAM (0xE000, 32 por fila)
	ld bc,00202h		;8e21
L_8E24:
	ld (hl),0f0h		;8e24
	inc hl			;8e26
	djnz L_8E24		;8e27
	ld de,0001eh		;8e29
	add hl,de			;8e2c
	ld b,002h		;8e2d
	dec c			;8e2f
	jr nz,L_8E24		;8e30
	ret			;8e32
L_8E33:
	inc (ix+013h)		;8e33
	xor a			;8e36
	ld (0dff5h),a		;8e37
	jp L_8910		;8e3a
L_8E3D:
	inc (ix+011h)		;8e3d
	xor a			;8e40
	ld (ix+00eh),a		;8e41
	ld (ix+014h),a		;8e44
	ld (ix+013h),a		;8e47
	ld a,(ix+003h)		;8e4a   ; lee la y del enemigo
	ld (ix+018h),a		;8e4d
	ld a,(ix+005h)		;8e50   ; lee la x del enemigo
	ld (ix+019h),a		;8e53
	cp 058h		;8e56
	jr c,L_8E62		;8e58
	ld (ix+00eh),001h		;8e5a
	ld (ix+015h),001h		;8e5e
L_8E62:
	ld (ix+00eh),000h		;8e62
	ret			;8e66
L_8E67:
	ld ix,0d000h		;8e67   ; apunta a las fichas de los enemigos (13 de 0x80)
	ld b,00dh		;8e6b
L_8E6D:
	ld a,(ix+000h)		;8e6d   ; lee el tipo del enemigo
	cp 040h		;8e70   ; SHUT ALL (tipo 0x40)?
	push bc			;8e72
	call z,cuantos_segun_ix14		;8e73
	pop bc			;8e76
	ld de,00080h		;8e77
	add ix,de		;8e7a
	djnz L_8E6D		;8e7c
	ld de,00008h		;8e7e
	ld hl,0ca20h		;8e81
	ld bc,02014h		;8e84
L_8E87:
	ld a,0f1h		;8e87
	cp (hl)			;8e89
	call z,pinta_dos_casillas		;8e8a
	inc hl			;8e8d
	call 049ceh		;8e8e   ; p00:siguiente_sitio: D + 8; al dar la vuelta, E + 8
	djnz L_8E87		;8e91
	ld b,020h		;8e93
	dec c			;8e95
	jr nz,L_8E87		;8e96
	ret			;8e98
cuantos_segun_ix14:
	ld a,(ix+014h)		;8e99
	sla a		;8e9c
	sla a		;8e9e
	and 0f0h		;8ea0
	rra			;8ea2
	rra			;8ea3
	rra			;8ea4
	rra			;8ea5
	or a			;8ea6
	ret z			;8ea7
	ld b,a			;8ea8
	ld a,(ix+018h)		;8ea9
	sub 00ch		;8eac
	ld e,a			;8eae
	ld a,(ix+019h)		;8eaf
	cp 058h		;8eb2
	ld d,a			;8eb4
	jr c,L_8EC2		;8eb5
	ld a,(ix+014h)		;8eb7
	and 03ch		;8eba
	rla			;8ebc
	rla			;8ebd
	neg		;8ebe
	add a,d			;8ec0
	ld d,a			;8ec1
L_8EC2:
	push bc			;8ec2
	ld hl,000a8h		;8ec3
	ld bc,01018h		;8ec6
	ld a,001h		;8ec9
	push de			;8ecb
	call 047d7h		;8ecc   ; p00:hmmm: orden HMMM del V9938: copia BxC puntos de (H, L) a (D, E); A lleva las paginas
	pop de			;8ecf
	push de			;8ed0
	ld h,d			;8ed1
	ld l,e			;8ed2
	inc l			;8ed3
	inc l			;8ed4
	call shut_all_casillas		;8ed5
	pop de			;8ed8
	pop bc			;8ed9
	ld a,d			;8eda
	add a,010h		;8edb
	ld d,a			;8edd
	djnz L_8EC2		;8ede
	ret			;8ee0
pinta_dos_casillas:
	push hl			;8ee1
	push bc			;8ee2
	push de			;8ee3
	ld d,000h		;8ee4
	call casillas_2x3		;8ee6
	pop de			;8ee9
	push de			;8eea
	ld h,d			;8eeb
	ld l,e			;8eec
	call 0431fh		;8eed   ; p00:casilla_en_ram: HL = la casilla de 8x8 del punto (L, H) en el mapa de la RAM (0xE000, 32 por fila)
	ld d,0f1h		;8ef0
	call casillas_2x3		;8ef2
	pop de			;8ef5
	push de			;8ef6
	ld hl,010a8h		;8ef7
	ld bc,01018h		;8efa
	ld a,001h		;8efd
	call 047d7h		;8eff   ; p00:hmmm: orden HMMM del V9938: copia BxC puntos de (H, L) a (D, E); A lleva las paginas
	pop de			;8f02
	pop bc			;8f03
	pop hl			;8f04
	ret			;8f05
casillas_2x3:
	ld bc,00203h		;8f06
L_8F09:
	ld (hl),d			;8f09
	inc hl			;8f0a
	djnz L_8F09		;8f0b
	ld a,01eh		;8f0d
	add a,l			;8f0f
	ld l,a			;8f10
	jr nc,L_8F14		;8f11
	inc h			;8f13
L_8F14:
	ld b,002h		;8f14
	dec c			;8f16
	jr nz,L_8F09		;8f17
	ret			;8f19
L_8F1A:
	ld b,(ix+00dh)		;8f1a   ; lee la vida del enemigo (BCD)
	ld c,(ix+00bh)		;8f1d   ; lee el cuadro del enemigo
	ld a,(0c125h)		;8f20   ; lee la PANTALLA
	cp 076h		;8f23   ; la pantalla 0x76?
	jr z,L_8F35		;8f25
	ld a,c			;8f27
	sub 048h		;8f28
	jr z,L_8F2E		;8f2a
	jr L_8F44		;8f2c
L_8F2E:
	ld a,b			;8f2e
	cp 018h		;8f2f
	jr nc,L_8F44		;8f31
	jr L_8F41		;8f33
L_8F35:
	ld a,c			;8f35
	sub 066h		;8f36
	jr z,L_8F3C		;8f38
	jr L_8F44		;8f3a
L_8F3C:
	ld a,b			;8f3c
	cp 018h		;8f3d
	jr nc,L_8F44		;8f3f
L_8F41:
	inc (ix+00bh)		;8f41   ; sube el cuadro del enemigo
L_8F44:
	ld a,(ix+014h)		;8f44
	ld c,a			;8f47
	ld e,001h		;8f48
	call 07303h		;8f4a
	ret nc			;8f4d
	ld a,c			;8f4e
	add a,002h		;8f4f
	and 003h		;8f51
	ld b,a			;8f53
	ld (ix+014h),b		;8f54
	dec a			;8f57
	jr z,L_8F70		;8f58
	dec a			;8f5a
	jr z,L_8F65		;8f5b
	dec a			;8f5d
	jr z,L_8F6B		;8f5e
	ld de,0ff60h		;8f60
	jr L_8F68		;8f63
L_8F65:
	ld de,000a0h		;8f65
L_8F68:
	jp 04311h		;8f68
L_8F6B:
	ld de,0ff60h		;8f6b
	jr L_8F73		;8f6e
L_8F70:
	ld de,000a0h		;8f70
L_8F73:
	jp 04318h		;8f73
L_8F76:
	ld a,(0c125h)		;8f76   ; lee la PANTALLA
	cp 073h		;8f79   ; la pantalla 0x73?
	jr nz,L_8F81		;8f7b
	ld (ix+020h),008h		;8f7d   ; cuantos sprites lleva = 0x08
L_8F81:
	cp 076h		;8f81
	ld c,048h		;8f83
	jr nz,L_8F89		;8f85
	ld c,066h		;8f87
L_8F89:
	ld (ix+00bh),c		;8f89   ; guarda el cuadro del enemigo
	inc (ix+006h)		;8f8c   ; sube si se mueve
	cp 073h		;8f8f
	jr nz,L_8F9A		;8f91
	ld a,(ix+00fh)		;8f93
	or a			;8f96
	jr nz,L_8FA6		;8f97
	ret			;8f99
L_8F9A:
	ld (ix+014h),001h		;8f9a
	ld de,000a0h		;8f9e
	ld hl,00000h		;8fa1
	jr L_8FAF		;8fa4
L_8FA6:
	xor a			;8fa6
	ld (ix+014h),a		;8fa7
	ld d,a			;8faa
	ld e,a			;8fab
	ld hl,0ff60h		;8fac
L_8FAF:
	jp pon_velocidades		;8faf   ; pon_velocidades: la ficha se mueve (ix+6), con DE de velocidad vertical y HL de horizontal
L_8FB2:
	ld (ix+006h),001h		;8fb2   ; si se mueve = 0x01
	ld (ix+016h),008h		;8fb6
	ld (ix+017h),008h		;8fba
	xor a			;8fbe
	ld (ix+018h),a		;8fbf
	ld (ix+01ah),a		;8fc2
	call 0bf0eh		;8fc5
	ld c,a			;8fc8
	ld de,00100h		;8fc9
	ld h,d			;8fcc
	ld l,e			;8fcd
	ld a,(ix+003h)		;8fce   ; lee la y del enemigo
	cp 010h		;8fd1
	jr z,L_8FE9		;8fd3
	cp 0a0h		;8fd5
	jr z,L_8FF2		;8fd7
	ld a,(ix+005h)		;8fd9   ; lee la x del enemigo
	cp 010h		;8fdc
	jr z,L_8FFB		;8fde
	call cerca_de_mitchel_en_y		;8fe0
	ld a,c			;8fe3
	rra			;8fe4
	jr nc,L_9004		;8fe5
	jr L_9017		;8fe7
L_8FE9:
	call cerca_de_mitchel_en_x		;8fe9   ; cerca_de_mitchel_en_x: la x de Mitchel +/- 0x20 (al azar) y dentro de la pantalla
	ld a,c			;8fec
	rra			;8fed
	jr nc,L_9017		;8fee
	jr L_9010		;8ff0
L_8FF2:
	call cerca_de_mitchel_en_x		;8ff2   ; cerca_de_mitchel_en_x: la x de Mitchel +/- 0x20 (al azar) y dentro de la pantalla
	ld a,c			;8ff5
	rra			;8ff6
	jr nc,L_9020		;8ff7
	jr L_9004		;8ff9
L_8FFB:
	call cerca_de_mitchel_en_y		;8ffb
	ld a,c			;8ffe
	rra			;8fff
	jr nc,L_9020		;9000
	jr L_9010		;9002
L_9004:
	ld a,002h		;9004
	ld bc,00101h		;9006
	ld de,0ff00h		;9009
	ld h,d			;900c
	ld l,e			;900d
	jr L_9028		;900e
L_9010:
	ld a,006h		;9010
	ld bc,00103h		;9012
	jr L_9028		;9015
L_9017:
	xor a			;9017
	ld bc,00102h		;9018
	ld hl,0ff00h		;901b
	jr L_9028		;901e
L_9020:
	ld a,004h		;9020
	ld bc,00100h		;9022
	ld de,0ff00h		;9025
L_9028:
	ld (ix+00bh),a		;9028   ; guarda el cuadro del enemigo
	ld (ix+012h),b		;902b
	ld (ix+019h),c		;902e
	call 04311h		;9031
	ex de,hl			;9034
	jp 04318h		;9035
cerca_de_mitchel_en_x:
	push hl			;9038   ; la x de Mitchel +/- 0x20 (al azar) y dentro de la pantalla
	push de			;9039
	push bc			;903a
	call veinte_a_un_lado		;903b
	ld a,(0c305h)		;903e   ; lee la X de Mitchel
	call dentro_de_la_pantalla		;9041
	ld (ix+005h),a		;9044   ; guarda la x del enemigo
	pop bc			;9047
	pop de			;9048
	pop hl			;9049
	ret			;904a
cerca_de_mitchel_en_y:
	push hl			;904b
	push de			;904c
	push bc			;904d
	call veinte_a_un_lado		;904e
	ld a,(0c303h)		;9051   ; lee la Y de Mitchel
	call dentro_de_la_pantalla		;9054
	ld (ix+003h),a		;9057   ; guarda la y del enemigo
	pop bc			;905a
	pop de			;905b
	pop hl			;905c
	ret			;905d
veinte_a_un_lado:
	ld c,020h		;905e
	call 0bf0eh		;9060
	and 001h		;9063
	jr z,dentro_de_la_pantalla		;9065
	ld c,0e0h		;9067
	ret			;9069
dentro_de_la_pantalla:
	add a,c			;906a
	cp 020h		;906b
	jr c,L_9075		;906d
	cp 090h		;906f
	ret c			;9071
	sub 040h		;9072
	ret			;9074
L_9075:
	add a,040h		;9075
	ret			;9077
L_9078:
	bit 0,(ix+01ah)		;9078
	jr z,L_909D		;907c
	ld l,(ix+003h)		;907e   ; lee la y del enemigo
	ld h,(ix+005h)		;9081   ; lee la x del enemigo
	call 0431fh		;9084   ; p00:casilla_en_ram: HL = la casilla de 8x8 del punto (L, H) en el mapa de la RAM (0xE000, 32 por fila)
	ld a,(hl)			;9087
	cp 098h		;9088
	jr nc,L_9092		;908a
	cp 075h		;908c
	jr nc,L_9099		;908e
	jr L_909D		;9090
L_9092:
	cp 0a0h		;9092
	jr nc,L_909D		;9094
L_9096:
	jp 0694bh		;9096
L_9099:
	cp 07ah		;9099
	jr c,L_9096		;909b
L_909D:
	ld hl,0bfa8h		;909d
	call 0bf72h		;90a0
	ld hl,09148h		;90a3   ; byte_1b_9148: 4 bytes: lo que p02:90A3 pone en ix+0x1B segun ix+0x19
	ld a,(ix+019h)		;90a6
	call 04255h		;90a9   ; p00:hl_mas_a
	ld a,(hl)			;90ac
	ld (ix+01bh),a		;90ad
	ld (ix+012h),001h		;90b0
	and 00fh		;90b4
	ld e,000h		;90b6
	call 07303h		;90b8
	jr c,L_9114		;90bb
	ld a,(ix+01bh)		;90bd
	rra			;90c0
	rra			;90c1
	rra			;90c2
	rra			;90c3
	and 00fh		;90c4
	ld (ix+01bh),a		;90c6
	ld e,000h		;90c9
	call 07303h		;90cb
	ret nc			;90ce
	ld (ix+012h),0ffh		;90cf
L_90D3:
	ld (ix+01ah),001h		;90d3
	ld a,(ix+019h)		;90d7
	add a,(ix+012h)		;90da
	ld (ix+019h),a		;90dd
	cp 004h		;90e0
	jr z,L_90EE		;90e2
	cp 0ffh		;90e4
	jr nz,L_90F2		;90e6
	ld (ix+019h),003h		;90e8
	jr L_90F2		;90ec
L_90EE:
	ld (ix+019h),000h		;90ee
L_90F2:
	ld (ix+017h),001h		;90f2
	ld hl,0bfa8h		;90f6
	call 0bf72h		;90f9
	bit 0,(ix+01bh)		;90fc
	jr z,invierte_la_velocidad_y		;9100
invierte_la_velocidad_x:
	ld a,(ix+00ah)		;9102   ; lee la velocidad horizontal
	neg		;9105
	ld (ix+00ah),a		;9107   ; guarda la velocidad horizontal
	ret			;910a
invierte_la_velocidad_y:
	ld a,(ix+008h)		;910b   ; lee la velocidad vertical
	neg		;910e
	ld (ix+008h),a		;9110   ; guarda la velocidad vertical
	ret			;9113
L_9114:
	ld a,(ix+01bh)		;9114
	rra			;9117
	rra			;9118
	rra			;9119
	rra			;911a
	and 00fh		;911b
	ld e,000h		;911d
	call 07303h		;911f
	jr nc,L_90D3		;9122
	ld a,(ix+012h)		;9124
	neg		;9127
	ld (ix+012h),a		;9129
	ld (ix+01ah),001h		;912c
	ld a,(ix+019h)		;9130
	xor 002h		;9133
	ld (ix+019h),a		;9135
	call invierte_la_velocidad_x		;9138
	call invierte_la_velocidad_y		;913b
	ld (ix+017h),001h		;913e
	ld hl,0bfa8h		;9142
	jp 0bf72h		;9145

; ----------------------------------------------------------------------
; DATOS byte_1b_9148: 4 bytes: lo que p02:90A3 pone en ix+0x1B segun ix+0x19
;   0x9148..0x914c  (4 bytes)
DATA_byte_1b_9148:
	defb 001h,030h,023h,012h	; 9148

; ======================================================================
; CODIGO 0x914c..0x9201  (181 bytes)
; ======================================================================


L_914C:
	ld a,(ix+00dh)		;914c   ; lee la vida del enemigo (BCD)
	ld (ix+014h),a		;914f
	xor a			;9152
	ld (0dfb5h),a		;9153
	ld (ix+013h),a		;9156
	ld (ix+018h),a		;9159
	inc a			;915c
	ld (ix+00bh),a		;915d   ; guarda el cuadro del enemigo
	ld (ix+006h),a		;9160   ; guarda si se mueve
	inc a			;9163
	ld (ix+019h),a		;9164
	ld (ix+01ah),a		;9167
	ld a,006h		;916a
	ld (ix+016h),a		;916c
	ld (ix+017h),a		;916f
	jp 0bf00h		;9172
L_9175:
	ld hl,0bf9eh		;9175
	call 0bf72h		;9178
	ld b,(ix+003h)		;917b   ; lee la y del enemigo
	bit 0,(ix+019h)		;917e
	jr z,L_9187		;9182
	ld b,(ix+005h)		;9184   ; lee la x del enemigo
L_9187:
	ld a,b			;9187
	and 007h		;9188
	ret nz			;918a
	ld a,(0dfb5h)		;918b
	dec a			;918e
	jr z,L_9199		;918f
	call 0bf0eh		;9191
	and 003h		;9194
	and a			;9196
	jr nz,L_91A7		;9197
L_9199:
	call 0bf0eh		;9199
	and 003h		;919c
	ld e,000h		;919e
	call 07303h		;91a0
	jr c,L_9199		;91a3
	jr L_91D3		;91a5
L_91A7:
	ld a,(ix+014h)		;91a7
	cp (ix+00dh)		;91aa   ; compara con la vida del enemigo (BCD)
	jr z,L_91B4		;91ad
	ld a,001h		;91af
	ld (0dfb5h),a		;91b1
L_91B4:
	ld hl,09201h		;91b4   ; azar_9201: 16 bytes, uno por 0xC107 & 15 (0xFF = nada): lo que p02:91B4 pasa a p01:7303
	ld a,(0c107h)		;91b7   ; lee las teclas que se tienen pulsadas (0 arriba, 1 abajo, 2 izquierda, 3 derecha)
	and 00fh		;91ba
	call 04255h		;91bc   ; p00:hl_mas_a
	ld a,(hl)			;91bf
	cp 0ffh		;91c0
	jr z,L_91F0		;91c2
	ld e,000h		;91c4
	call 07303h		;91c6
	jr c,L_91CD		;91c9
	jr L_91D3		;91cb
L_91CD:
	ld bc,00000h		;91cd
	call 0729eh		;91d0   ; p01:apunta_a_mitchel
L_91D3:
	ld (ix+019h),a		;91d3
	ld hl,0bf42h		;91d6
	call 0bf19h		;91d9
	ld a,(ix+019h)		;91dc
	cp (ix+01ah)		;91df
	ret z			;91e2
	ld (ix+01ah),a		;91e3
	ld (ix+017h),001h		;91e6
	ld hl,0bf9eh		;91ea
	jp 0bf72h		;91ed
L_91F0:
	call 0bf0eh		;91f0
	rra			;91f3
	jr nc,L_9199		;91f4
	ld a,(ix+019h)		;91f6
	ld e,000h		;91f9
	call 07303h		;91fb
	ret nc			;91fe
	jr L_91CD		;91ff

; ----------------------------------------------------------------------
; DATOS azar_9201: 16 bytes, uno por 0xC107 & 15 (0xFF = nada): lo que
;   p02:91B4 pasa a p01:7303
;   0x9201..0x9211  (16 bytes)
DATA_azar_9201:
	defb 0ffh,002h,000h,0ffh,001h,002h,001h,001h,003h,003h,000h,003h,0ffh,002h,000h,0ffh	; 9201  ................

; ======================================================================
; CODIGO 0x9211..0x924c  (59 bytes)
; ======================================================================


L_9211:
	inc (ix+001h)		;9211   ; sube el paso en que va
	xor a			;9214
	ld (ix+016h),a		;9215
	ld a,r		;9218
	and 006h		;921a
	add a,002h		;921c
	ld (ix+018h),a		;921e
	ld (ix+019h),00fh		;9221
	ld bc,00000h		;9225
	call 0729eh		;9228   ; p01:apunta_a_mitchel
	ld (ix+01bh),a		;922b
	call wildboar_en_la_pantalla_3		;922e
	ld a,(ix+01bh)		;9231
	jr nc,L_923D		;9234
	add a,002h		;9236
	and 003h		;9238
	ld (ix+01bh),a		;923a
L_923D:
	ld hl,09ab9h		;923d
	call velocidad_de_la_tabla		;9240   ; velocidad_de_la_tabla: la pareja A de la tabla de HL en ix+8 e ix+0x0A
	jp wildboar_cuadro_9326		;9243
L_9246:
	ld a,(ix+001h)		;9246   ; lee el paso en que va
	call 0425fh		;9249   ; p00:despacha: Salta a la entrada A de la tabla de palabras que va pegada detras del `call`.

; ----------------------------------------------------------------------
; DATOS tabla_924C: 4 destinos del despachador de 0x425F (call en p02:9249):
;   0x9254, 0x934F, 0x9367, 0x9374; lo leen p02:9249 (8 bytes)
;   0x924c..0x9254  (8 bytes)
DATA_tabla_924C:
	defb 054h,092h	; 924c
	defb 04fh,093h	; 924e
	defb 067h,093h	; 9250
	defb 074h,093h	; 9252

; ======================================================================
; CODIGO 0x9254..0x93e7  (403 bytes)
; ======================================================================


L_9254:
	call wildboar_cuadro_9326		;9254
	dec (ix+01ah)		;9257
	ret nz			;925a
	ld (ix+01ah),008h		;925b
	ld a,(0c303h)		;925f   ; lee la Y de Mitchel
	add a,004h		;9262
	and 0f8h		;9264
	cp (ix+003h)		;9266   ; compara con la y del enemigo
	jp z,L_92ED		;9269
	ld a,(0c305h)		;926c   ; lee la X de Mitchel
	add a,004h		;926f
	and 0f8h		;9271
	cp (ix+005h)		;9273   ; compara con la x del enemigo
	jr z,L_92ED		;9276
	dec (ix+019h)		;9278
	jr z,L_928B		;927b
	ld a,(ix+01bh)		;927d
	ld e,000h		;9280
	call 07303h		;9282
	jr c,L_928B		;9285
	call wildboar_en_la_pantalla_3		;9287
	ret nc			;928a
L_928B:
	ld a,(ix+018h)		;928b
	ld (ix+019h),a		;928e
	ld bc,00000h		;9291
	call wildboar_elige_rumbo		;9294
	cp (ix+01bh)		;9297
	jr nz,L_92A7		;929a
	call wildboar_en_la_pantalla_3		;929c
	ret nc			;929f
	ld a,(ix+01bh)		;92a0
	add a,002h		;92a3
	and 003h		;92a5
L_92A7:
	ld (ix+01bh),a		;92a7
	call wildboar_en_la_pantalla_3		;92aa
	ld a,(ix+01bh)		;92ad
	jr nc,L_92B9		;92b0
	add a,002h		;92b2
	and 003h		;92b4
	ld (ix+01bh),a		;92b6
L_92B9:
	ld (ix+001h),001h		;92b9   ; el paso en que va = 0x01
	ld (ix+006h),000h		;92bd   ; si se mueve = 0x00
	ld (ix+019h),018h		;92c1
	ld hl,09ab9h		;92c5
	jp velocidad_de_la_tabla		;92c8   ; velocidad_de_la_tabla: la pareja A de la tabla de HL en ix+8 e ix+0x0A
wildboar_elige_rumbo:
	ld a,(ix+016h)		;92cb
	xor 001h		;92ce
	ld (ix+016h),a		;92d0
	jp z,0729eh		;92d3   ; p01:apunta_a_mitchel
	ld b,002h		;92d6
	ld a,r		;92d8
	add a,(ix+018h)		;92da
	and 003h		;92dd
	ld hl,093efh		;92df
	call 04255h		;92e2   ; p00:hl_mas_a
	ld a,(hl)			;92e5
	ld e,a			;92e6
	inc hl			;92e7
	ld a,(hl)			;92e8
	ld d,a			;92e9
	jp 0729eh		;92ea   ; p01:apunta_a_mitchel
L_92ED:
	ld bc,00000h		;92ed
	call 0729eh		;92f0   ; p01:apunta_a_mitchel
	ld (ix+01bh),a		;92f3
	call wildboar_en_la_pantalla_3		;92f6
	ld a,(ix+01bh)		;92f9
	jr nc,L_9305		;92fc
	add a,002h		;92fe
	and 003h		;9300
	ld (ix+01bh),a		;9302
L_9305:
	ld (ix+001h),000h		;9305   ; el paso en que va = 0x00
	jp c,L_93B1		;9309
	ld (ix+001h),002h		;930c   ; el paso en que va = 0x02
	ld hl,09abeh		;9310
	call velocidad_de_la_tabla		;9313   ; velocidad_de_la_tabla: la pareja A de la tabla de HL en ix+8 e ix+0x0A
	ld (ix+006h),000h		;9316   ; si se mueve = 0x00
	ld (ix+019h),00fh		;931a
	ld (ix+01ah),002h		;931e
	call wildboar_cuadro_9326		;9322
	ret			;9325
wildboar_cuadro_9326:
	ld a,(ix+01bh)		;9326
	add a,a			;9329
	ld b,a			;932a
	ld a,(ix+00ch)		;932b   ; lee la cuenta de cuadros
	and 008h		;932e
	ld a,b			;9330
	jr z,L_9334		;9331
	inc a			;9333
L_9334:
	ld hl,093e7h		;9334   ; cuadros_93E7: 13 bytes: el cuadro (ix+0x0B) que p02:9334 elige (y desde 0x93EF, p02:92DF, p02:9A91 y p03:A527)
	call 04255h		;9337   ; p00:hl_mas_a
	ld a,(hl)			;933a
	ld (ix+00bh),a		;933b   ; guarda el cuadro del enemigo
	ret			;933e
wildboar_cuadro_933F:
	ld a,(ix+01bh)		;933f
	add a,a			;9342
	ld b,a			;9343
	ld a,(ix+00ch)		;9344   ; lee la cuenta de cuadros
	and 004h		;9347
	ld a,b			;9349
	jr z,L_9334		;934a
	inc a			;934c
	jr L_9334		;934d
L_934F:
	call wildboar_cuadro_9326		;934f
	dec (ix+019h)		;9352
	ret nz			;9355
	dec (ix+001h)		;9356   ; baja el paso en que va
	ld a,(ix+018h)		;9359
	ld (ix+019h),a		;935c
	inc (ix+006h)		;935f   ; sube si se mueve
	ld (ix+01ah),008h		;9362
	ret			;9366
L_9367:
	dec (ix+019h)		;9367
	ret nz			;936a
	ld (ix+001h),003h		;936b   ; el paso en que va = 0x03
	ld (ix+006h),001h		;936f   ; si se mueve = 0x01
	ret			;9373
L_9374:
	call wildboar_cuadro_933F		;9374
	dec (ix+01ah)		;9377
	ret nz			;937a
	ld (ix+01ah),002h		;937b
	ld a,(ix+01bh)		;937f
	ld e,000h		;9382
	call 07303h		;9384
	jr c,L_938D		;9387
	call wildboar_en_la_pantalla_3		;9389
	ret nc			;938c
L_938D:
	ld (ix+001h),001h		;938d   ; el paso en que va = 0x01
	ld (ix+006h),000h		;9391   ; si se mueve = 0x00
	ld (ix+019h),018h		;9395
	ld bc,00000h		;9399
	call 0729eh		;939c   ; p01:apunta_a_mitchel
	ld (ix+01bh),a		;939f
	call wildboar_en_la_pantalla_3		;93a2
	ld a,(ix+01bh)		;93a5
	jr nc,L_93B1		;93a8
	add a,002h		;93aa
	and 003h		;93ac
	ld (ix+01bh),a		;93ae
L_93B1:
	ld hl,09ab9h		;93b1
	jp velocidad_de_la_tabla		;93b4   ; velocidad_de_la_tabla: la pareja A de la tabla de HL en ix+8 e ix+0x0A
wildboar_en_la_pantalla_3:
	ld a,(0c125h)		;93b7   ; lee la PANTALLA
	cp 003h		;93ba   ; la pantalla 0x03?
	scf			;93bc
	ccf			;93bd
	ret nz			;93be
	ld a,(ix+01bh)		;93bf
	cp 001h		;93c2
	ret z			;93c4
	cp 002h		;93c5
	ret z			;93c7
	or a			;93c8
	jr z,L_93D9		;93c9
	ld a,(ix+005h)		;93cb   ; lee la x del enemigo
	cp 070h		;93ce
	scf			;93d0
	ccf			;93d1
	ret nz			;93d2
	ld a,(ix+003h)		;93d3   ; lee la y del enemigo
	cp 048h		;93d6
	ret			;93d8
L_93D9:
	ld a,(ix+003h)		;93d9   ; lee la y del enemigo
	cp 048h		;93dc
	scf			;93de
	ccf			;93df
	ret nz			;93e0
	ld a,(ix+005h)		;93e1   ; lee la x del enemigo
	cp 070h		;93e4
	ret			;93e6

; ----------------------------------------------------------------------
; DATOS cuadros_93E7: 13 bytes: el cuadro (ix+0x0B) que p02:9334 elige (y
;   desde 0x93EF, p02:92DF, p02:9A91 y p03:A527)
;   0x93e7..0x93f4  (13 bytes)
DATA_cuadros_93E7:
	defb 00ch,010h,011h,012h,00bh,00fh,00dh,00eh,020h,020h,090h,090h,020h	; 93e7  ........  ..

; ======================================================================
; CODIGO 0x93f4..0x950d  (281 bytes)
; ======================================================================


L_93F4:
	ld (ix+00bh),00eh		;93f4   ; el cuadro del enemigo = 0x0E
	ld (ix+016h),006h		;93f8
	ld (ix+017h),006h		;93fc
	xor a			;9400
	ld (ix+018h),a		;9401
	inc a			;9404
	ld (ix+006h),a		;9405   ; guarda si se mueve
	ld (ix+013h),a		;9408
	inc a			;940b
	ld (ix+019h),a		;940c
	ld (ix+014h),a		;940f
	ret			;9412
L_9413:
	ld a,(ix+001h)		;9413   ; lee el paso en que va
	dec a			;9416
	jp z,L_9519		;9417
	dec a			;941a
	jp z,L_9529		;941b
	ld hl,0bf96h		;941e   ; p03:parejas_de_cuadros: parejas de cuadros que p03:BF72 alterna (ix+0x18) segun ix+0x19; se entra por 0xBF96, 0xBF9E, 0xBFA6 y 0xBFA8 (p02)
	call 0bf72h		;9421
	call rockman_coordenada		;9424
	ret nc			;9427
	ld a,(0c303h)		;9428   ; lee la Y de Mitchel
	cp (ix+003h)		;942b   ; compara con la y del enemigo
	jr z,L_94A4		;942e
	ld a,(0c305h)		;9430   ; lee la X de Mitchel
	cp (ix+005h)		;9433   ; compara con la x del enemigo
	jr z,L_9480		;9436
L_9438:
	dec (ix+013h)		;9438
	jr z,L_9454		;943b
	call 0bf0eh		;943d
	and 004h		;9440
	cp 001h		;9442
	jr z,L_945D		;9444
L_9446:
	call 0bf0eh		;9446
	and 003h		;9449
L_944B:
	ld e,000h		;944b
	call 07303h		;944d
	jr c,L_9446		;9450
	jr L_9463		;9452
L_9454:
	ld (ix+013h),003h		;9454
	ld a,(ix+019h)		;9458
	jr L_944B		;945b
L_945D:
	ld bc,00000h		;945d
	call 0729eh		;9460   ; p01:apunta_a_mitchel
L_9463:
	ld (ix+019h),a		;9463
	ld hl,0bf42h		;9466
	call 0bf19h		;9469
	ld a,(ix+019h)		;946c
	cp (ix+014h)		;946f
	ret z			;9472
	ld (ix+014h),a		;9473
	ld (ix+017h),001h		;9476
	ld hl,0bf96h		;947a   ; p03:parejas_de_cuadros: parejas de cuadros que p03:BF72 alterna (ix+0x18) segun ix+0x19; se entra por 0xBF96, 0xBF9E, 0xBFA6 y 0xBFA8 (p02)
	jp 0bf72h		;947d
L_9480:
	ld a,(ix+005h)		;9480   ; lee la x del enemigo
	ld (ix+01ah),a		;9483
	ld c,030h		;9486
	ld a,(0c303h)		;9488   ; lee la Y de Mitchel
	cp (ix+003h)		;948b   ; compara con la y del enemigo
	jr nc,L_9492		;948e
	ld c,0d0h		;9490
L_9492:
	ld a,(ix+003h)		;9492   ; lee la y del enemigo
	add a,c			;9495
	ld (ix+01bh),a		;9496
	ld b,000h		;9499
	cp (ix+003h)		;949b   ; compara con la y del enemigo
	jr c,L_94C6		;949e
	ld b,002h		;94a0
	jr L_94C6		;94a2
L_94A4:
	ld a,(ix+003h)		;94a4   ; lee la y del enemigo
	ld (ix+01bh),a		;94a7
	ld c,030h		;94aa
	ld a,(0c305h)		;94ac   ; lee la X de Mitchel
	cp (ix+005h)		;94af   ; compara con la x del enemigo
	jr nc,L_94B6		;94b2
	ld c,0d0h		;94b4
L_94B6:
	ld a,(ix+005h)		;94b6   ; lee la x del enemigo
	add a,c			;94b9
	ld (ix+01ah),a		;94ba
	ld b,003h		;94bd
	cp (ix+005h)		;94bf   ; compara con la x del enemigo
	jr c,L_94C6		;94c2
	ld b,001h		;94c4
L_94C6:
	ld a,b			;94c6
	add a,a			;94c7
	ld hl,09511h		;94c8   ; pasos_9511: 4 parejas [dx][dy] segun B (p02:94C8)
	call 04255h		;94cb   ; p00:hl_mas_a
	ld a,(hl)			;94ce
	add a,(ix+003h)		;94cf   ; le suma la y del enemigo
	ld e,a			;94d2
	inc hl			;94d3
	ld a,(hl)			;94d4
	add a,(ix+005h)		;94d5   ; le suma la x del enemigo
	ld d,a			;94d8
	ex de,hl			;94d9
	call 0431fh		;94da   ; p00:casilla_en_ram: HL = la casilla de 8x8 del punto (L, H) en el mapa de la RAM (0xE000, 32 por fila)
	ld a,(hl)			;94dd
	cp 05fh		;94de
	jp c,L_9438		;94e0
	ld c,081h		;94e3
	ld e,(ix+003h)		;94e5   ; lee la y del enemigo
	ld d,(ix+005h)		;94e8   ; lee la x del enemigo
	call 0709ah		;94eb
	ld a,003h		;94ee
	call 05488h		;94f0   ; p00:sonido_si_juega: solo con el bit 6 de 0xC102 (la partida de verdad, no la demostracion)
	ld bc,00000h		;94f3
	call 0729eh		;94f6   ; p01:apunta_a_mitchel
	ld hl,0950dh		;94f9   ; cuadros_950D: 4 bytes: el cuadro (ix+0x0B) segun A (p02:94F9)
	call 04255h		;94fc   ; p00:hl_mas_a
	ld a,(hl)			;94ff
	ld (ix+00bh),a		;9500   ; guarda el cuadro del enemigo
	inc (ix+001h)		;9503   ; sube el paso en que va
	ld (ix+00ch),000h		;9506   ; la cuenta de cuadros = 0x00
	jp 0bf00h		;950a

; ----------------------------------------------------------------------
; DATOS cuadros_950D: 4 bytes: el cuadro (ix+0x0B) segun A (p02:94F9)
;   0x950d..0x9511  (4 bytes)
DATA_cuadros_950D:
	defb 00ch,017h,00bh,012h	; 950d

; ----------------------------------------------------------------------
; DATOS pasos_9511: 4 parejas [dx][dy] segun B (p02:94C8)
;   0x9511..0x9519  (8 bytes)
DATA_pasos_9511:
	defb 0e3h,000h,002h,028h,024h,001h,004h,0d8h	; 9511  ...($...

; ======================================================================
; CODIGO 0x9519..0x9610  (247 bytes)
; ======================================================================


L_9519:
	ld a,(ix+00ch)		;9519   ; lee la cuenta de cuadros
	cp 030h		;951c
	ret nz			;951e
	inc (ix+001h)		;951f   ; sube el paso en que va
	ld (ix+012h),012h		;9522
	jp L_9555		;9526
L_9529:
	ld hl,0bf96h		;9529   ; p03:parejas_de_cuadros: parejas de cuadros que p03:BF72 alterna (ix+0x18) segun ix+0x19; se entra por 0xBF96, 0xBF9E, 0xBFA6 y 0xBFA8 (p02)
	call 0bf72h		;952c
	call rockman_coordenada		;952f
	ret nc			;9532
	dec (ix+012h)		;9533
	jr nz,L_953C		;9536
	ld (ix+001h),000h		;9538   ; el paso en que va = 0x00
L_953C:
	ld d,(ix+01ah)		;953c
	ld e,(ix+01bh)		;953f
	ld a,(ix+003h)		;9542   ; lee la y del enemigo
	cp e			;9545
	jr nz,L_9555		;9546
	ld a,(ix+005h)		;9548   ; lee la x del enemigo
	cp d			;954b
	jr nz,L_9555		;954c
	ld (ix+001h),000h		;954e   ; el paso en que va = 0x00
	jp 0bf00h		;9552
L_9555:
	ld d,(ix+01ah)		;9555
	ld e,(ix+01bh)		;9558
	ld bc,00200h		;955b
	call 0729eh		;955e   ; p01:apunta_a_mitchel
	jp L_9463		;9561
rockman_coordenada:
	ld a,(ix+003h)		;9564   ; lee la y del enemigo
	bit 0,(ix+019h)		;9567
	jr z,L_9570		;956b
	ld a,(ix+005h)		;956d   ; lee la x del enemigo
L_9570:
	and 007h		;9570
	ret nz			;9572
	scf			;9573
	ret			;9574
L_9575:
	ld (ix+00bh),00dh		;9575   ; el cuadro del enemigo = 0x0D
	ld (ix+013h),0ffh		;9579
	ld (ix+014h),020h		;957d
	xor a			;9581
	ld (ix+001h),a		;9582   ; guarda el paso en que va
	ld (ix+010h),a		;9585
	inc a			;9588
	ld (ix+006h),a		;9589   ; guarda si se mueve
	ld (ix+012h),a		;958c
	call 0bf00h		;958f
	ld (ix+008h),003h		;9592   ; la velocidad vertical = 0x03
	ld a,(ix+003h)		;9596   ; lee la y del enemigo
	ld (ix+015h),a		;9599
	ret			;959c
L_959D:
	ld a,(ix+001h)		;959d   ; lee el paso en que va
	dec a			;95a0
	jr z,crow_anima		;95a1
	call crow_anima		;95a3
	ld bc,00080h		;95a6
	ld a,(ix+015h)		;95a9
	cp (ix+003h)		;95ac   ; compara con la y del enemigo
	jr nc,L_95B3		;95af
	ld b,0ffh		;95b1
L_95B3:
	ld h,(ix+008h)		;95b3   ; lee la velocidad vertical
	ld l,(ix+007h)		;95b6   ; lee la velocidad vertical (baja)
	add hl,bc			;95b9
	ld (ix+008h),h		;95ba   ; guarda la velocidad vertical
	ld (ix+007h),l		;95bd   ; guarda la velocidad vertical (baja)
	ld a,(0c303h)		;95c0   ; lee la Y de Mitchel
	sub (ix+003h)		;95c3   ; le resta la y del enemigo
	ret c			;95c6
	ld (ix+01bh),a		;95c7
	ld a,(0c305h)		;95ca   ; lee la X de Mitchel
	sub (ix+005h)		;95cd   ; le resta la x del enemigo
	ret nc			;95d0
	neg		;95d1
	sub (ix+01bh)		;95d3
	jr nc,L_95DA		;95d6
	neg		;95d8
L_95DA:
	cp 010h		;95da
	ret nc			;95dc
	ld a,090h		;95dd
	call 0716fh		;95df   ; p01:rumbo_hacia_mitchel
	call 04318h		;95e2
	ex de,hl			;95e5
	call 04311h		;95e6
	inc (ix+001h)		;95e9   ; sube el paso en que va
	ld a,006h		;95ec
	jp 05488h		;95ee   ; p00:sonido_si_juega: solo con el bit 6 de 0xC102 (la partida de verdad, no la demostracion)
crow_anima:
	dec (ix+012h)		;95f1
	ret nz			;95f4
	ld (ix+012h),008h		;95f5
	ld a,(ix+013h)		;95f9
	inc a			;95fc
	cp 004h		;95fd
	jr nz,L_9602		;95ff
	xor a			;9601
L_9602:
	ld (ix+013h),a		;9602
	ld hl,09610h		;9605   ; cuadros_9610: 4 bytes: el cuadro (ix+0x0B) segun A (p02:9605)
	call 04255h		;9608   ; p00:hl_mas_a
	ld a,(hl)			;960b
	ld (ix+00bh),a		;960c   ; guarda el cuadro del enemigo
	ret			;960f

; ----------------------------------------------------------------------
; DATOS cuadros_9610: 4 bytes: el cuadro (ix+0x0B) segun A (p02:9605)
;   0x9610..0x9614  (4 bytes)
DATA_cuadros_9610:
	defb 00dh,00eh,00fh,00eh	; 9610

; ======================================================================
; CODIGO 0x9614..0x965c  (72 bytes)
; ======================================================================


L_9614:
	inc (ix+006h)		;9614   ; sube si se mueve
	ld (ix+01bh),00fh		;9617
	ld a,(ix+003h)		;961b   ; lee la y del enemigo
	cp 058h		;961e
	ld b,000h		;9620
	jr nc,L_9626		;9622
	ld b,002h		;9624
L_9626:
	ld a,(ix+005h)		;9626   ; lee la x del enemigo
	cp 058h		;9629
	jr c,L_962E		;962b
	inc b			;962d
L_962E:
	ld (ix+016h),b		;962e
	ld a,b			;9631
	add a,a			;9632
	ld hl,097feh		;9633   ; cuadros_97FE: 3 parejas: el cuadro (ix+0x0B) segun ix+0x16 (p02:9633)
	call 04255h		;9636   ; p00:hl_mas_a
	ld a,(hl)			;9639
	ld (ix+00bh),a		;963a   ; guarda el cuadro del enemigo
	ret			;963d
L_963E:
	ld a,(ix+016h)		;963e
	add a,a			;9641
	ld b,a			;9642
	ld a,(ix+00ch)		;9643   ; lee la cuenta de cuadros
	and 008h		;9646
	ld a,b			;9648
	jr z,L_964C		;9649
	inc a			;964b
L_964C:
	ld hl,097feh		;964c   ; cuadros_97FE: 3 parejas: el cuadro (ix+0x0B) segun ix+0x16 (p02:9633)
	call 04255h		;964f   ; p00:hl_mas_a
	ld a,(hl)			;9652
	ld (ix+00bh),a		;9653   ; guarda el cuadro del enemigo
	ld a,(ix+001h)		;9656   ; lee el paso en que va
	call 0425fh		;9659   ; p00:despacha: Salta a la entrada A de la tabla de palabras que va pegada detras del `call`.

; ----------------------------------------------------------------------
; DATOS tabla_965C: 5 destinos del despachador de 0x425F (call en p02:9659):
;   0x9666, 0x967F, 0x96D7, 0x96FA, 0x9739; lo leen p02:9659 (10 bytes)
;   0x965c..0x9666  (10 bytes)
DATA_tabla_965C:
	defb 066h,096h	; 965c
	defb 07fh,096h	; 965e
	defb 0d7h,096h	; 9660
	defb 0fah,096h	; 9662
	defb 039h,097h	; 9664

; ======================================================================
; CODIGO 0x9666..0x97f6  (400 bytes)
; ======================================================================


L_9666:
	dec (ix+01bh)		;9666
	ret nz			;9669
	inc (ix+001h)		;966a   ; sube el paso en que va
	ld a,(ix+003h)		;966d   ; lee la y del enemigo
	ld (ix+019h),a		;9670
	ld a,(ix+005h)		;9673   ; lee la x del enemigo
	ld (ix+01ah),a		;9676
	ld a,(ix+016h)		;9679
	jp whitefire_velocidad		;967c
L_967F:
	call sigue_si_esta_en_casilla		;967f   ; sigue_si_esta_en_casilla: si la ficha no esta alineada a 8 en x e y, vuelve al que llamo al que llamo
	call whitefire_hacia_mitchel		;9682
	jr nz,L_96C4		;9685
	ld a,d			;9687
	ld b,(ix+016h)		;9688
	cp b			;968b
	jr z,L_96C4		;968c
	xor 003h		;968e
	cp b			;9690
	jr z,L_96C4		;9691
	ld (ix+015h),b		;9693
	ld a,d			;9696
	ld (ix+016h),a		;9697
	call whitefire_velocidad		;969a
	call 04308h		;969d   ; p00:posicion_de_mitchel: E = la y de Mitchel, D = su x
	ld a,e			;96a0
	add a,004h		;96a1
	and 0f8h		;96a3
	ld (ix+017h),a		;96a5
	ld a,d			;96a8
	add a,004h		;96a9
	and 0f8h		;96ab
	ld (ix+018h),a		;96ad
	ld a,(ix+003h)		;96b0   ; lee la y del enemigo
	ld (ix+013h),a		;96b3
	ld a,(ix+005h)		;96b6   ; lee la x del enemigo
	ld (ix+012h),a		;96b9
	ld (ix+014h),001h		;96bc
	inc (ix+001h)		;96c0   ; sube el paso en que va
	ret			;96c3
L_96C4:
	call whitefire_prueba_rumbo		;96c4
	ret nc			;96c7
	ld (ix+001h),004h		;96c8   ; el paso en que va = 0x04
	ld a,(ix+016h)		;96cc
	xor 003h		;96cf
	ld (ix+016h),a		;96d1
	jp whitefire_velocidad		;96d4
L_96D7:
	ld a,(ix+003h)		;96d7   ; lee la y del enemigo
	cp (ix+017h)		;96da
	jr nz,L_96E7		;96dd
	ld a,(ix+005h)		;96df   ; lee la x del enemigo
	cp (ix+018h)		;96e2
	jr z,L_96EB		;96e5
L_96E7:
	call whitefire_prueba_rumbo		;96e7
	ret nc			;96ea
L_96EB:
	ld (ix+001h),003h		;96eb   ; el paso en que va = 0x03
	ld a,(ix+016h)		;96ef
	xor 003h		;96f2
	ld (ix+016h),a		;96f4
	jp whitefire_velocidad		;96f7
L_96FA:
	ld a,(ix+003h)		;96fa   ; lee la y del enemigo
	cp (ix+013h)		;96fd
	jr nz,L_970A		;9700
	ld a,(ix+005h)		;9702   ; lee la x del enemigo
	cp (ix+012h)		;9705
	jr z,L_970E		;9708
L_970A:
	call whitefire_prueba_rumbo		;970a
	ret nc			;970d
L_970E:
	ld a,(ix+014h)		;970e
	ld (ix+001h),a		;9711   ; guarda el paso en que va
	ld a,(ix+015h)		;9714
	ld (ix+016h),a		;9717
	call whitefire_prueba_rumbo		;971a
	ld a,(ix+016h)		;971d
	jp nc,whitefire_velocidad		;9720
	inc (ix+001h)		;9723   ; sube el paso en que va
	ld a,(ix+014h)		;9726
	xor 005h		;9729
	ld (ix+001h),a		;972b   ; guarda el paso en que va
	ld a,(ix+015h)		;972e
	xor 003h		;9731
	ld (ix+016h),a		;9733
	jp whitefire_velocidad		;9736
L_9739:
	call sigue_si_esta_en_casilla		;9739   ; sigue_si_esta_en_casilla: si la ficha no esta alineada a 8 en x e y, vuelve al que llamo al que llamo
	call whitefire_hacia_mitchel		;973c
	jr nz,L_977F		;973f
	ld a,d			;9741
	ld b,(ix+016h)		;9742
	cp b			;9745
	jr z,L_977F		;9746
	xor 003h		;9748
	cp b			;974a
	jr z,L_977F		;974b
	ld (ix+015h),b		;974d
	ld a,d			;9750
	ld (ix+016h),a		;9751
	call whitefire_velocidad		;9754
	call 04308h		;9757   ; p00:posicion_de_mitchel: E = la y de Mitchel, D = su x
	ld a,e			;975a
	add a,004h		;975b
	and 0f8h		;975d
	ld (ix+017h),a		;975f
	ld a,d			;9762
	add a,004h		;9763
	and 0f8h		;9765
	ld (ix+018h),a		;9767
	ld a,(ix+003h)		;976a   ; lee la y del enemigo
	ld (ix+013h),a		;976d
	ld a,(ix+005h)		;9770   ; lee la x del enemigo
	ld (ix+012h),a		;9773
	ld (ix+014h),004h		;9776
	ld (ix+001h),002h		;977a   ; el paso en que va = 0x02
	ret			;977e
L_977F:
	ld a,(ix+003h)		;977f   ; lee la y del enemigo
	cp (ix+019h)		;9782
	jr nz,L_978F		;9785
	ld a,(ix+005h)		;9787   ; lee la x del enemigo
	cp (ix+01ah)		;978a
	jr z,L_9793		;978d
L_978F:
	call whitefire_prueba_rumbo		;978f
	ret nc			;9792
L_9793:
	ld a,(ix+016h)		;9793
	xor 003h		;9796
	ld (ix+016h),a		;9798
	call whitefire_velocidad		;979b
	ld (ix+001h),001h		;979e   ; el paso en que va = 0x01
	ret			;97a2
whitefire_hacia_mitchel:
	ld a,(0c303h)		;97a3   ; lee la Y de Mitchel
	add a,004h		;97a6
	and 0f8h		;97a8
	sub (ix+003h)		;97aa   ; le resta la y del enemigo
	ld d,002h		;97ad
	jr z,L_97C9		;97af
	jr nc,L_97B7		;97b1
	ld d,000h		;97b3
	neg		;97b5
L_97B7:
	ld c,a			;97b7
	ld a,(0c305h)		;97b8   ; lee la X de Mitchel
	add a,004h		;97bb
	and 0f8h		;97bd
	sub (ix+005h)		;97bf   ; le resta la x del enemigo
	jr nc,L_97C7		;97c2
	inc d			;97c4
	neg		;97c5
L_97C7:
	cp c			;97c7
	ret			;97c8
L_97C9:
	inc a			;97c9
	ret			;97ca
whitefire_velocidad:
	add a,a			;97cb
	ld hl,097f6h		;97cc   ; velocidades_97F6: 4 parejas que p02:97CC pone en ix+8 e ix+0x0A segun A
	call 04255h		;97cf   ; p00:hl_mas_a
	ld a,(hl)			;97d2
	ld (ix+008h),a		;97d3   ; guarda la velocidad vertical
	inc hl			;97d6
	ld a,(hl)			;97d7
	ld (ix+00ah),a		;97d8   ; guarda la velocidad horizontal
	ret			;97db
whitefire_prueba_rumbo:
	ld a,(ix+016h)		;97dc
	add a,a			;97df
	ld hl,09804h		;97e0   ; parejas_9804: 4 parejas [C][A] segun ix+0x16 que p02:97E0 pasa a p01:7303
	call 04255h		;97e3   ; p00:hl_mas_a
	ld a,(hl)			;97e6
	ld c,a			;97e7
	inc hl			;97e8
	ld a,(hl)			;97e9
	ld e,000h		;97ea
	call 07303h		;97ec
	ret c			;97ef
	ld a,c			;97f0
	ld e,000h		;97f1
	jp 07303h		;97f3

; ----------------------------------------------------------------------
; DATOS velocidades_97F6: 4 parejas que p02:97CC pone en ix+8 e ix+0x0A segun
;   A
;   0x97f6..0x97fe  (8 bytes)
DATA_velocidades_97F6:
	defb 0ffh,001h,0ffh,0ffh,001h,001h,001h,0ffh	; 97f6  ........

; ----------------------------------------------------------------------
; DATOS cuadros_97FE: 3 parejas: el cuadro (ix+0x0B) segun ix+0x16 (p02:9633)
;   0x97fe..0x9804  (6 bytes)
DATA_cuadros_97FE:
	defb 00ah,00bh,002h,003h,008h,009h	; 97fe

; ----------------------------------------------------------------------
; DATOS parejas_9804: 4 parejas [C][A] segun ix+0x16 que p02:97E0 pasa a
;   p01:7303
;   0x9804..0x980c  (8 bytes)
DATA_parejas_9804:
	defb 000h,001h,000h,003h,001h,002h,002h,003h	; 9804  ........

; ======================================================================
; CODIGO 0x980c..0x9941  (309 bytes)
; ======================================================================


L_980C:
	ld (ix+001h),002h		;980c   ; el paso en que va = 0x02
	ld a,(ix+000h)		;9810   ; lee el tipo del enemigo
	sub 01dh		;9813
	ld (ix+016h),a		;9815
	cp 006h		;9818
	jr nz,L_9830		;981a
	ld (ix+001h),003h		;981c   ; el paso en que va = 0x03
	ld (ix+003h),030h		;9820   ; la y del enemigo = 0x30
	ld (ix+005h),088h		;9824   ; la x del enemigo = 0x88
	ld (ix+01bh),05ah		;9828
	ld (ix+00eh),000h		;982c
L_9830:
	ld a,(ix+016h)		;9830
	ld hl,09aaeh		;9833   ; tablas_9AAE: tablas pegadas del mismo enemigo: 0x9AAE (p02:9833), parejas [ix+8][ix+0x0A] desde 0x9AB9 y 0x9ABE (p02:98B4), 0x9AC3 (p02:98C1) y 0x9ACE (p02:98E3)
	call 04255h		;9836   ; p00:hl_mas_a
	ld a,(hl)			;9839
	rra			;983a
	rra			;983b
	rra			;983c
	rra			;983d
	and 00fh		;983e
	ld (ix+018h),a		;9840
	ld a,(hl)			;9843
	and 00fh		;9844
	cp 006h		;9846
	jr z,L_9855		;9848
	ld b,a			;984a
	ld a,r		;984b
	xor (ix+00ch)		;984d   ; XOR con la cuenta de cuadros
	and 006h		;9850
	add a,b			;9852
	add a,a			;9853
	add a,a			;9854
L_9855:
	ld (ix+017h),a		;9855
	ld (ix+019h),a		;9858
	ld (ix+012h),096h		;985b
	ld (ix+014h),014h		;985f
	xor a			;9863
	ld (ix+013h),a		;9864
	ld (ix+015h),a		;9867
	ld (ix+007h),a		;986a   ; guarda la velocidad vertical (baja)
	ld (ix+009h),a		;986d   ; guarda la velocidad horizontal (baja)
	ld hl,09ac3h		;9870
	ld a,(ix+016h)		;9873
	call 04255h		;9876   ; p00:hl_mas_a
	ld a,(hl)			;9879
	add a,004h		;987a
	ld hl,09aceh		;987c
	call 04255h		;987f   ; p00:hl_mas_a
	ld a,(ix+018h)		;9882
	rra			;9885
	ld a,(hl)			;9886
	jr nc,L_988E		;9887
	ld (0df94h),a		;9889   ; guarda el grafico de jefe que hay subido
	ld a,03fh		;988c
L_988E:
	ld (ix+00bh),a		;988e   ; guarda el cuadro del enemigo
	ld a,002h		;9891
	ld (ix+01ah),a		;9893
	ld (ix+07fh),a		;9896
	call cavernicolas_velocidad		;9899
	ld a,(ix+000h)		;989c   ; lee el tipo del enemigo
	cp 01eh		;989f   ; GRIZZLY (tipo 0x1E)?
	jr z,L_98AE		;98a1
	cp 023h		;98a3   ; CAVERNBIG (tipo 0x23)?
	jr z,L_98AE		;98a5
	cp 026h		;98a7   ; BIGGUARD (tipo 0x26)?
	jr z,L_98AE		;98a9
	cp 027h		;98ab   ; SAVAGE (tipo 0x27)?
	ret nz			;98ad
L_98AE:
	jp 06979h		;98ae
cavernicolas_velocidad:
	ld hl,09ab9h		;98b1
velocidad_de_la_tabla:
	call 04255h		;98b4   ; la pareja A de la tabla de HL en ix+8 e ix+0x0A
	ld a,(hl)			;98b7
	ld (ix+008h),a		;98b8   ; guarda la velocidad vertical
	inc hl			;98bb
	ld a,(hl)			;98bc
	ld (ix+00ah),a		;98bd   ; guarda la velocidad horizontal
	ret			;98c0
L_98C1:
	ld hl,09ac3h		;98c1
	ld a,(ix+016h)		;98c4
	call 04255h		;98c7   ; p00:hl_mas_a
	ld a,(hl)			;98ca
	ld b,(ix+01ah)		;98cb
	sla b		;98ce
	add a,b			;98d0
	ld b,a			;98d1
	ld a,(ix+018h)		;98d2
	and 001h		;98d5
	add a,a			;98d7
	add a,a			;98d8
	add a,a			;98d9
	add a,008h		;98da
	and (ix+00ch)		;98dc   ; AND con la cuenta de cuadros
	jr z,L_98E2		;98df
	inc b			;98e1
L_98E2:
	ld a,b			;98e2
	ld hl,09aceh		;98e3
	call 04255h		;98e6   ; p00:hl_mas_a
	ld a,(ix+018h)		;98e9
	rra			;98ec
	ld a,(hl)			;98ed
	jr nc,L_98F5		;98ee
	ld (0df94h),a		;98f0   ; guarda el grafico de jefe que hay subido
	ld a,03fh		;98f3
L_98F5:
	ld (ix+00bh),a		;98f5   ; guarda el cuadro del enemigo
	ld a,(ix+000h)		;98f8   ; lee el tipo del enemigo
	cp 01fh		;98fb   ; MRRUINS (tipo 0x1F)?
	jr z,L_9903		;98fd
	cp 021h		;98ff   ; CAVERNMAN (tipo 0x21)?
	jr nz,L_993B		;9901
L_9903:
	ld a,(ix+018h)		;9903
	and 002h		;9906
	jr z,L_992A		;9908
	ld a,(ix+01eh)		;990a
	ld (ix+01eh),000h		;990d
	and 002h		;9911
	jr z,L_993B		;9913
	ld a,(ix+01ah)		;9915
	cp (ix+07eh)		;9918
	jr z,L_993B		;991b
	add a,002h		;991d
	and 003h		;991f
	cp (ix+07eh)		;9921
	jr z,L_993B		;9924
	ld (ix+018h),001h		;9926
L_992A:
	dec (ix+012h)		;992a
	jr nz,L_993B		;992d
	ld (ix+006h),001h		;992f   ; si se mueve = 0x01
	ld (ix+012h),096h		;9933
	ld (ix+018h),003h		;9937
L_993B:
	ld a,(ix+001h)		;993b   ; lee el paso en que va
	call 0425fh		;993e   ; p00:despacha: Salta a la entrada A de la tabla de palabras que va pegada detras del `call`.

; ----------------------------------------------------------------------
; DATOS tabla_9941: 5 destinos del despachador de 0x425F (call en p02:993E):
;   0x994B, 0x9996, 0x99E9, 0x9A12, 0x9A31; lo leen p02:993E (10 bytes)
;   0x9941..0x994b  (10 bytes)
DATA_tabla_9941:
	defb 04bh,099h	; 9941
	defb 096h,099h	; 9943
	defb 0e9h,099h	; 9945
	defb 012h,09ah	; 9947
	defb 031h,09ah	; 9949

; ======================================================================
; CODIGO 0x994b..0x9aae  (355 bytes)
; ======================================================================


L_994B:
	ld a,(ix+018h)		;994b
	and 002h		;994e
	jr nz,L_995A		;9950
	ld a,(ix+006h)		;9952   ; lee si se mueve
	xor 001h		;9955
	ld (ix+006h),a		;9957   ; guarda si se mueve
L_995A:
	call sigue_si_esta_en_casilla		;995a   ; sigue_si_esta_en_casilla: si la ficha no esta alineada a 8 en x e y, vuelve al que llamo al que llamo
	ld a,(ix+018h)		;995d
	rra			;9960
	jr nc,L_9977		;9961
	dec (ix+013h)		;9963
	jr nz,L_9977		;9966
	ld a,(ix+001h)		;9968   ; lee el paso en que va
	ld (ix+013h),a		;996b
	ld (ix+001h),002h		;996e   ; el paso en que va = 0x02
	ld (ix+006h),000h		;9972   ; si se mueve = 0x00
	ret			;9976
L_9977:
	ld a,(ix+018h)		;9977
	and 001h		;997a
	ld e,a			;997c
	ld a,(ix+01ah)		;997d
	call 07303h		;9980
	jr c,L_9989		;9983
	dec (ix+019h)		;9985
	ret nz			;9988
L_9989:
	call cavernicolas_elige_rumbo		;9989
	jp nc,L_9A61		;998c
	ld (ix+001h),001h		;998f   ; el paso en que va = 0x01
	jp L_9A61		;9993
L_9996:
	ld a,(ix+018h)		;9996
	and 002h		;9999
	jr nz,L_99A5		;999b
	ld a,(ix+006h)		;999d   ; lee si se mueve
	xor 001h		;99a0
	ld (ix+006h),a		;99a2   ; guarda si se mueve
L_99A5:
	call sigue_si_esta_en_casilla		;99a5   ; sigue_si_esta_en_casilla: si la ficha no esta alineada a 8 en x e y, vuelve al que llamo al que llamo
	ld a,(ix+018h)		;99a8
	rra			;99ab
	jr nc,L_99C1		;99ac
	dec (ix+013h)		;99ae
	jr nz,L_99C1		;99b1
	ld a,(ix+001h)		;99b3   ; lee el paso en que va
	ld (ix+013h),a		;99b6
	ld (ix+001h),002h		;99b9   ; el paso en que va = 0x02
	dec (ix+006h)		;99bd   ; baja si se mueve
	ret			;99c0
L_99C1:
	ld a,(ix+018h)		;99c1
	and 001h		;99c4
	ld e,a			;99c6
	ld a,(ix+01ah)		;99c7
	call 07303h		;99ca
	jp c,L_9A5A		;99cd
	ld b,000h		;99d0
	ld a,(ix+018h)		;99d2
	and 001h		;99d5
	ld c,a			;99d7
	call 0729eh		;99d8   ; p01:apunta_a_mitchel
	ret c			;99db
	ld b,(ix+017h)		;99dc
	ld (ix+019h),b		;99df
	ld (ix+001h),000h		;99e2   ; el paso en que va = 0x00
	jp L_9A61		;99e6
L_99E9:
	dec (ix+014h)		;99e9
	ret nz			;99ec
	ld (ix+014h),01eh		;99ed
	ld a,(ix+013h)		;99f1
	ld (ix+001h),a		;99f4   ; guarda el paso en que va
	ld (ix+006h),001h		;99f7   ; si se mueve = 0x01
	ld (ix+013h),008h		;99fb
	ld a,(ix+018h)		;99ff
	and 001h		;9a02
	ld e,a			;9a04
	ld a,(ix+01ah)		;9a05
	call 07303h		;9a08
	ret nc			;9a0b
	call cavernicolas_elige_rumbo		;9a0c
	jp L_9A61		;9a0f
L_9A12:
	dec (ix+01bh)		;9a12
	ret nz			;9a15
	ld (ix+001h),004h		;9a16   ; el paso en que va = 0x04
	ld (ix+01bh),03ch		;9a1a
	ld a,009h		;9a1e
	call 05488h		;9a20   ; p00:sonido_si_juega: solo con el bit 6 de 0xC102 (la partida de verdad, no la demostracion)
	ld a,(0c303h)		;9a23   ; lee la Y de Mitchel
	cp 061h		;9a26
	ret nc			;9a28
	ld (ix+003h),090h		;9a29   ; la y del enemigo = 0x90
	xor a			;9a2d
	jp L_9A61		;9a2e
L_9A31:
	ld a,(ix+00ch)		;9a31   ; lee la cuenta de cuadros
	rra			;9a34
	ld bc,00144h		;9a35
	jr nc,L_9A3D		;9a38
	ld bc,00000h		;9a3a
L_9A3D:
	call colores_a_4		;9a3d
	dec (ix+01bh)		;9a40
	ret nz			;9a43
	ld bc,00144h		;9a44
	call colores_a_4		;9a47
	ld (ix+001h),000h		;9a4a   ; el paso en que va = 0x00
	inc (ix+006h)		;9a4e   ; sube si se mueve
	ld (ix+00eh),003h		;9a51
	ld (ix+013h),008h		;9a55
	ret			;9a59
L_9A5A:
	ld a,(ix+01ah)		;9a5a
	add a,002h		;9a5d
	and 003h		;9a5f
L_9A61:
	ld (ix+01ah),a		;9a61
	ld (ix+07fh),a		;9a64
	jp cavernicolas_velocidad		;9a67
cavernicolas_elige_rumbo:
	ld b,000h		;9a6a
	ld a,(ix+018h)		;9a6c
	and 001h		;9a6f
	ld c,a			;9a71
	ld a,(ix+017h)		;9a72
	cp 006h		;9a75
	ld (ix+019h),a		;9a77
	jp z,0729eh		;9a7a   ; p01:apunta_a_mitchel
	ld a,(ix+015h)		;9a7d
	xor 001h		;9a80
	ld (ix+015h),a		;9a82
	jp z,0729eh		;9a85   ; p01:apunta_a_mitchel
	ld b,002h		;9a88
	ld a,r		;9a8a
	xor (ix+00ch)		;9a8c   ; XOR con la cuenta de cuadros
	and 003h		;9a8f
	ld hl,093efh		;9a91
	call 04255h		;9a94   ; p00:hl_mas_a
	ld a,(hl)			;9a97
	ld d,a			;9a98
	inc hl			;9a99
	ld a,(hl)			;9a9a
	ld e,a			;9a9b
	jp 0729eh		;9a9c   ; p01:apunta_a_mitchel
sigue_si_esta_en_casilla:
	pop hl			;9a9f   ; si la ficha no esta alineada a 8 en x e y, vuelve al que llamo al que llamo
	ld a,(ix+003h)		;9aa0   ; lee la y del enemigo
	and 007h		;9aa3
	ret nz			;9aa5
	ld a,(ix+005h)		;9aa6   ; lee la x del enemigo
	and 007h		;9aa9
	ret nz			;9aab
	push hl			;9aac
	ret			;9aad

; ----------------------------------------------------------------------
; DATOS tablas_9AAE: tablas pegadas del mismo enemigo: 0x9AAE (p02:9833),
;   parejas [ix+8][ix+0x0A] desde 0x9AB9 y 0x9ABE (p02:98B4), 0x9AC3
;   (p02:98C1) y 0x9ACE (p02:98E3)
;   0x9aae..0x9afe  (80 bytes)
DATA_tablas_9AAE:
	defb 021h,016h,037h,022h,037h,022h,016h,000h,022h,036h,036h,0ffh,000h,001h,000h,0ffh	; 9aae  !.7"7".."66.....
	defb 0fch,000h,004h,000h,0fch,000h,010h,018h,008h,018h,020h,018h,000h,020h,028h,028h	; 9abe  .......... .. ((
	defb 001h,005h,002h,003h,000h,004h,006h,007h,002h,006h,007h,008h,001h,005h,003h,004h	; 9ace  ................
	defb 023h,024h,027h,028h,021h,022h,025h,026h,01bh,01ch,01fh,020h,019h,01ah,01dh,01eh	; 9ade  #$'(!"%&... ....
	defb 00ah,00eh,00fh,010h,009h,00dh,00bh,00ch,003h,004h,007h,008h,001h,002h,005h,006h	; 9aee  ................

; ======================================================================
; CODIGO 0x9afe..0x9e22  (804 bytes)
; ======================================================================


L_9AFE:
	ld (ix+00bh),018h		;9afe   ; el cuadro del enemigo = 0x18
	call 0bf0eh		;9b02
	and 00fh		;9b05
	ld (ix+01bh),a		;9b07
	ld (ix+006h),001h		;9b0a   ; si se mueve = 0x01
	ld (ix+016h),008h		;9b0e
	ld (ix+017h),008h		;9b12
	xor a			;9b16
	ld (ix+018h),a		;9b17
	ld (ix+018h),a		;9b1a
	ld (ix+012h),002h		;9b1d
	ld (ix+019h),a		;9b21
	jp 0bf00h		;9b24
L_9B27:
	ld a,(ix+001h)		;9b27   ; lee el paso en que va
	dec a			;9b2a
	jr z,L_9B5A		;9b2b
	dec a			;9b2d
	jr z,L_9B96		;9b2e
	ld hl,0bfa6h		;9b30
	call 0bf72h		;9b33
	ld a,00ah		;9b36
	cp (ix+01bh)		;9b38
	jr z,L_9B45		;9b3b
L_9B3D:
	dec (ix+01bh)		;9b3d
	ret nz			;9b40
	inc (ix+001h)		;9b41   ; sube el paso en que va
	ret			;9b44
L_9B45:
	dec (ix+01bh)		;9b45
	call 0bf0eh		;9b48
	and 003h		;9b4b
	jr nz,L_9B3D		;9b4d
	ld c,08eh		;9b4f
	ld e,(ix+003h)		;9b51   ; lee la y del enemigo
	ld d,(ix+005h)		;9b54   ; lee la x del enemigo
	jp 0709ah		;9b57
L_9B5A:
	ld a,(ix+015h)		;9b5a
	dec a			;9b5d
	jr nz,L_9B6F		;9b5e
	ld a,(ix+012h)		;9b60
	xor 002h		;9b63
	ld e,000h		;9b65
	call 07303h		;9b67
	jp c,L_9C13		;9b6a
	jr L_9B7B		;9b6d
L_9B6F:
	call 0bf0eh		;9b6f
	and 003h		;9b72
	ld e,000h		;9b74
	call 07303h		;9b76
	jr c,L_9B6F		;9b79
L_9B7B:
	ld (ix+012h),a		;9b7b
	ld hl,0bf52h		;9b7e
	call 0bf19h		;9b81
	ld (ix+017h),001h		;9b84
	ld hl,0bfa6h		;9b88
	call 0bf72h		;9b8b
	inc (ix+001h)		;9b8e   ; sube el paso en que va
	ld (ix+01bh),004h		;9b91
	ret			;9b95
L_9B96:
	ld hl,0bfa6h		;9b96
	call 0bf72h		;9b99
	ld a,(ix+003h)		;9b9c   ; lee la y del enemigo
	bit 0,(ix+012h)		;9b9f
	jr z,L_9BA8		;9ba3
	ld a,(ix+005h)		;9ba5   ; lee la x del enemigo
L_9BA8:
	and 007h		;9ba8
	ret nz			;9baa
	dec (ix+01bh)		;9bab
	jr z,L_9C13		;9bae
	ld a,(ix+012h)		;9bb0
	ld e,000h		;9bb3
	call 07303h		;9bb5
	jr c,L_9C13		;9bb8
	ld a,(ix+015h)		;9bba
	dec a			;9bbd
	jr nz,L_9BC4		;9bbe
	ld (ix+015h),a		;9bc0
	ret			;9bc3
L_9BC4:
	ld a,00eh		;9bc4
	ld (0dfb0h),a		;9bc6
	ld d,(ix+003h)		;9bc9   ; lee la y del enemigo
	ld e,(ix+005h)		;9bcc   ; lee la x del enemigo
	push ix		;9bcf
	ld ix,0d000h		;9bd1   ; apunta a las fichas de los enemigos (13 de 0x80)
L_9BD5:
	ld a,(ix+000h)		;9bd5   ; lee el tipo del enemigo
	cp 03ch		;9bd8   ; STONEOGRE (tipo 0x3C)?
	jr z,L_9BEF		;9bda
L_9BDC:
	ld bc,00080h		;9bdc
	add ix,bc		;9bdf
	ld a,(0dfb0h)		;9be1
	dec a			;9be4
	jr z,L_9BEC		;9be5
	ld (0dfb0h),a		;9be7
	jr L_9BD5		;9bea
L_9BEC:
	pop ix		;9bec
	ret			;9bee
L_9BEF:
	ld a,(ix+003h)		;9bef   ; lee la y del enemigo
	sub d			;9bf2
	jr z,L_9C22		;9bf3
	jr nc,L_9BF9		;9bf5
	neg		;9bf7
L_9BF9:
	cp 020h		;9bf9
	jr nc,L_9BDC		;9bfb
	ld a,(ix+005h)		;9bfd   ; lee la x del enemigo
	sub e			;9c00
L_9C01:
	jr nc,L_9C05		;9c01
	neg		;9c03
L_9C05:
	cp 020h		;9c05
	jr nc,L_9BDC		;9c07
	ld (ix+015h),001h		;9c09
	pop ix		;9c0d
	ld (ix+015h),001h		;9c0f
L_9C13:
	ld (ix+001h),000h		;9c13
	call 0bf0eh		;9c17
	and 03fh		;9c1a
	ld (ix+01bh),a		;9c1c
	jp 0bf00h		;9c1f
L_9C22:
	ld a,(ix+005h)		;9c22   ; lee la x del enemigo
	sub e			;9c25
	jr z,L_9BDC		;9c26
	jr L_9C01		;9c28
L_9C2A:
	call 06979h		;9c2a
	xor a			;9c2d
	ld (ix+015h),a		;9c2e
	ld (ix+025h),a		;9c31
	ld (ix+02ah),a		;9c34
	ld (0dfb4h),a		;9c37
	inc a			;9c3a
	ld (0dfb1h),a		;9c3b
	ld (ix+011h),a		;9c3e
	call espera_segun_la_pantalla_53		;9c41
	ld a,b			;9c44
	ld (ix+01ch),a		;9c45
	dec a			;9c48
	ld (0dfb6h),a		;9c49
	ld (0dfb7h),a		;9c4c
	ld a,(ix+003h)		;9c4f   ; lee la y del enemigo
	sub 018h		;9c52
	ld (0dfb3h),a		;9c54
	ld a,(ix+005h)		;9c57   ; lee la x del enemigo
	ld (0dfb2h),a		;9c5a
	ld bc,00505h		;9c5d
	call 04333h		;9c60
	call revolver_pinta_su_figura		;9c63
	call revolver_guarda_el_fondo		;9c66
	ld a,(0dfb3h)		;9c69
	add a,008h		;9c6c
L_9C6E:
	ld e,a			;9c6e
	ld a,(0dfb2h)		;9c6f
	ld d,a			;9c72
	ld c,02dh		;9c73
	jp 05a69h		;9c75   ; p00:crea_una_ficha: una ficha nueva en 0xD000-0xD67F (13 de 0x80): C el tipo, DE la posicion, B
L_9C78:
	ld a,(0dfb5h)		;9c78
	and a			;9c7b
	jr z,L_9CC4		;9c7c
	res 1,(ix+00eh)		;9c7e
	xor a			;9c82
	ld (ix+016h),a		;9c83
	ld (ix+00bh),a		;9c86   ; guarda el cuadro del enemigo
	ld (ix+011h),a		;9c89
	ld (ix+006h),001h		;9c8c   ; si se mueve = 0x01
	ld (ix+013h),012h		;9c90
	ld (ix+019h),008h		;9c94
	ld (ix+00fh),0ffh		;9c98
	call espera_segun_la_pantalla_53		;9c9c
	ld (ix+01ch),b		;9c9f
	ld a,(0dfb1h)		;9ca2
	ld (ix+015h),a		;9ca5
	inc a			;9ca8
	ld (0dfb1h),a		;9ca9
	ld a,(0dfb4h)		;9cac
	ld (ix+018h),a		;9caf
	add a,008h		;9cb2
	ld (0dfb4h),a		;9cb4
	call espera_segun_la_pantalla_53		;9cb7
	ld a,(0dfb1h)		;9cba
	cp b			;9cbd
	ld a,(0dfb3h)		;9cbe
	jr nz,L_9C6E		;9cc1
	ret			;9cc3
L_9CC4:
	ld (ix+015h),000h		;9cc4
	call espera_segun_la_pantalla_53		;9cc8
	ld (ix+01ch),b		;9ccb
	xor a			;9cce
	ld (ix+00bh),a		;9ccf   ; guarda el cuadro del enemigo
	ld (ix+006h),a		;9cd2   ; guarda si se mueve
	inc a			;9cd5
	ld (0dfb5h),a		;9cd6
	ld (ix+00fh),0ffh		;9cd9
	res 1,(ix+00eh)		;9cdd
	ld a,(0dfb3h)		;9ce1
	jp L_9C6E		;9ce4
espera_segun_la_pantalla_53:
	ld b,004h		;9ce7
	ld a,(0c125h)		;9ce9   ; lee la PANTALLA
	cp 053h		;9cec   ; la pantalla 0x53?
	ret z			;9cee
	ld b,008h		;9cef
	ret			;9cf1
L_9CF2:
	ld a,(ix+015h)		;9cf2
	and a			;9cf5
	jp z,L_9D79		;9cf6
	dec a			;9cf9
	jp z,L_9DA4		;9cfa
	jp L_9E30		;9cfd
L_9D00:
	ld a,(ix+001h)		;9d00   ; lee el paso en que va
	dec a			;9d03
	jr z,L_9D21		;9d04
	ld a,(ix+01ch)		;9d06
	and a			;9d09
	jr z,L_9D11		;9d0a
	ld a,(0dfb8h)		;9d0c
	jr L_9D14		;9d0f
L_9D11:
	ld a,(ix+01eh)		;9d11
L_9D14:
	and 002h		;9d14
	ret z			;9d16
	inc (ix+001h)		;9d17   ; sube el paso en que va
	ld (ix+00ch),000h		;9d1a   ; la cuenta de cuadros = 0x00
	jp revolver_pinta_su_figura		;9d1e
L_9D21:
	ld a,(ix+00ch)		;9d21   ; lee la cuenta de cuadros
	cp 005h		;9d24
	jr z,L_9D60		;9d26
	cp 010h		;9d28
	ret nz			;9d2a
	xor a			;9d2b
	ld (ix+001h),a		;9d2c   ; guarda el paso en que va
	ld (ix+01eh),a		;9d2f
revolver_guarda_el_fondo:
	ld bc,01810h		;9d32
	ld hl,0d8d0h		;9d35
	ld a,(ix+003h)		;9d38   ; lee la y del enemigo
	sub 00ch		;9d3b
	ld e,a			;9d3d
	ld a,(ix+005h)		;9d3e   ; lee la x del enemigo
	sub 00ch		;9d41
	ld d,a			;9d43
	ld a,001h		;9d44
	jp 047d7h		;9d46   ; p00:hmmm: orden HMMM del V9938: copia BxC puntos de (H, L) a (D, E); A lleva las paginas
revolver_pinta_su_figura:
	ld bc,02828h		;9d49
	ld hl,0d8a8h		;9d4c
	ld a,(ix+003h)		;9d4f   ; lee la y del enemigo
	sub 014h		;9d52
	ld e,a			;9d54
	ld a,(ix+005h)		;9d55   ; lee la x del enemigo
	sub 014h		;9d58
	ld d,a			;9d5a
	ld a,048h		;9d5b
	jp 0481bh		;9d5d   ; p00:lmmm: orden LMMM del V9938: lo mismo con operacion logica (A: paginas y operacion; 8 = TIMP)
L_9D60:
	ld a,(ix+003h)		;9d60   ; lee la y del enemigo
	add a,002h		;9d63
	ld e,a			;9d65
	ld d,(ix+005h)		;9d66   ; lee la x del enemigo
	ld c,082h		;9d69
	jp 0709ah		;9d6b
sps_suelta_dfb8:
	ld a,(ix+01eh)		;9d6e
	ld (0dfb8h),a		;9d71
	ld (ix+01eh),000h		;9d74
	ret			;9d78
L_9D79:
	call sps_suelta_dfb8		;9d79
	ld a,(0dfb6h)		;9d7c
	ld b,a			;9d7f
	ld a,(0dfb7h)		;9d80
	cp b			;9d83
	jr z,L_9D89		;9d84
	ld (0dfb6h),a		;9d86
L_9D89:
	and a			;9d89
	ret z			;9d8a
	ld c,a			;9d8b
	ld a,(ix+00ch)		;9d8c   ; lee la cuenta de cuadros
	cp 080h		;9d8f
	ret nz			;9d91
	push ix		;9d92
	call sps_recorre_las_fichas		;9d94
	ld e,(ix+003h)		;9d97   ; lee la y del enemigo
	ld d,(ix+005h)		;9d9a   ; lee la x del enemigo
	pop ix		;9d9d
	ld c,08fh		;9d9f
	jp 0709ah		;9da1
L_9DA4:
	call sps_suelta_dfb8		;9da4
	ld a,(ix+001h)		;9da7   ; lee el paso en que va
	dec a			;9daa
	jr z,L_9DC4		;9dab
	ld b,03ah		;9dad
	ld a,(0c125h)		;9daf   ; lee la PANTALLA
	cp 053h		;9db2   ; la pantalla 0x53?
	jr nz,L_9DB8		;9db4
	ld b,01ah		;9db6
L_9DB8:
	inc (ix+018h)		;9db8
	ld a,b			;9dbb
	cp (ix+018h)		;9dbc
	ret nz			;9dbf
	inc (ix+001h)		;9dc0   ; sube el paso en que va
	ret			;9dc3
L_9DC4:
	ld a,(0dfb3h)		;9dc4
	add a,008h		;9dc7
	ld (ix+003h),a		;9dc9   ; guarda la y del enemigo
	ld a,(0dfb2h)		;9dcc
	ld (ix+005h),a		;9dcf   ; guarda la x del enemigo
L_9DD2:
	ld a,(ix+013h)		;9dd2
	ld hl,09efeh		;9dd5   ; circulo_9EFE: 36 parejas [dx][dy]: un circulo de radio 16, que p02:9DD5 divide por 2 (paso ix+0x13)
	add a,a			;9dd8
	call 04255h		;9dd9   ; p00:hl_mas_a
	ld a,(hl)			;9ddc
	sra a		;9ddd
	ld (ix+008h),a		;9ddf   ; guarda la velocidad vertical
	add a,(ix+003h)		;9de2   ; le suma la y del enemigo
	ld (ix+01ah),a		;9de5
	inc hl			;9de8
	ld a,(hl)			;9de9
	sra a		;9dea
	ld (ix+00ah),a		;9dec   ; guarda la velocidad horizontal
	add a,(ix+005h)		;9def   ; le suma la x del enemigo
	ld (ix+01bh),a		;9df2
	dec (ix+019h)		;9df5
	ret nz			;9df8
	ld hl,09e22h		;9df9   ; esperas_9E22: 5 bytes: la espera (ix+0x19) segun ix+0x1C en la pantalla 0x53 (p02:9DF9)
	ld a,(0c125h)		;9dfc   ; lee la PANTALLA
	cp 053h		;9dff   ; la pantalla 0x53?
	jr z,L_9E06		;9e01
	ld hl,09e27h		;9e03   ; esperas_9E27: 9 bytes: lo mismo en las demas pantallas (p02:9E03)
L_9E06:
	ld a,(ix+01ch)		;9e06
	call 04255h		;9e09   ; p00:hl_mas_a
	ld a,(hl)			;9e0c
	ld (ix+019h),a		;9e0d
	ld a,(ix+013h)		;9e10
	inc a			;9e13
	cp 024h		;9e14
	jr nz,L_9E1E		;9e16
	ld a,00ah		;9e18
	call 05488h		;9e1a   ; p00:sonido_si_juega: solo con el bit 6 de 0xC102 (la partida de verdad, no la demostracion)
	xor a			;9e1d
L_9E1E:
	ld (ix+013h),a		;9e1e
	ret			;9e21

; ----------------------------------------------------------------------
; DATOS esperas_9E22: 5 bytes: la espera (ix+0x19) segun ix+0x1C en la
;   pantalla 0x53 (p02:9DF9)
;   0x9e22..0x9e27  (5 bytes)
DATA_esperas_9E22:
	defb 001h,001h,002h,003h,005h	; 9e22

; ----------------------------------------------------------------------
; DATOS esperas_9E27: 9 bytes: lo mismo en las demas pantallas (p02:9E03)
;   0x9e27..0x9e30  (9 bytes)
DATA_esperas_9E27:
	defb 001h,001h,001h,001h,003h,001h,002h,001h,005h	; 9e27  .........

; ======================================================================
; CODIGO 0x9e30..0x9e39  (9 bytes)
; ======================================================================


L_9E30:
	call sps_suelta_dfb8		;9e30
	ld a,(ix+001h)		;9e33   ; lee el paso en que va
	call 0425fh		;9e36   ; p00:despacha: Salta a la entrada A de la tabla de palabras que va pegada detras del `call`.

; ----------------------------------------------------------------------
; DATOS tabla_9E39: 4 destinos del despachador de 0x425F (call en p02:9E36):
;   0x9E75, 0x9E41, 0x9E69, 0x9E84; lo leen p02:9E36 (8 bytes)
;   0x9e39..0x9e41  (8 bytes)
DATA_tabla_9E39:
	defb 075h,09eh	; 9e39
	defb 041h,09eh	; 9e3b
	defb 069h,09eh	; 9e3d
	defb 084h,09eh	; 9e3f

; ======================================================================
; CODIGO 0x9e41..0x9e62  (33 bytes)
; ======================================================================


L_9E41:
	ld (ix+008h),000h		;9e41   ; la velocidad vertical = 0x00
	ld b,0feh		;9e45
	ld a,(0c125h)		;9e47   ; lee la PANTALLA
	cp 05dh		;9e4a   ; la pantalla 0x5D?
	jr z,L_9E50		;9e4c
	ld b,002h		;9e4e
L_9E50:
	ld a,(ix+015h)		;9e50
	add a,b			;9e53
	ld hl,09e62h		;9e54   ; byte_18_9E62: 7 bytes: lo que p02:9E54 pone en ix+0x18 segun ix+0x15 + B
	call 04255h		;9e57   ; p00:hl_mas_a
	ld a,(hl)			;9e5a
	ld (ix+018h),a		;9e5b
	inc (ix+001h)		;9e5e   ; sube el paso en que va
	ret			;9e61

; ----------------------------------------------------------------------
; DATOS byte_18_9E62: 7 bytes: lo que p02:9E54 pone en ix+0x18 segun ix+0x15 +
;   B
;   0x9e62..0x9e69  (7 bytes)
DATA_byte_18_9E62:
	defb 031h,029h,021h,019h,011h,009h,001h	; 9e62

; ======================================================================
; CODIGO 0x9e69..0x9ef5  (140 bytes)
; ======================================================================


L_9E69:
	dec (ix+018h)		;9e69
	ret nz			;9e6c
	inc (ix+001h)		;9e6d   ; sube el paso en que va
	ld (ix+018h),008h		;9e70
	ret			;9e74
L_9E75:
	call 0bf00h		;9e75
	ld (ix+008h),0ffh		;9e78   ; la velocidad vertical = 0xFF
	dec (ix+018h)		;9e7c
	ret nz			;9e7f
	inc (ix+001h)		;9e80   ; sube el paso en que va
	ret			;9e83
L_9E84:
	push ix		;9e84
	call sps_cuenta		;9e86
	ld a,(ix+01ah)		;9e89
	ld b,(ix+01bh)		;9e8c
	pop ix		;9e8f
	ld (ix+003h),a		;9e91
	ld (ix+005h),b		;9e94
	dec (ix+018h)		;9e97
	jr z,L_9EA2		;9e9a
	call 0bf00h		;9e9c
	jp L_9DD2		;9e9f
L_9EA2:
	call 0bf0eh		;9ea2
	ld (ix+018h),002h		;9ea5
	rra			;9ea9
	jr nc,L_9EC2		;9eaa
L_9EAC:
	ld a,005h		;9eac
	cp (ix+016h)		;9eae
	jr z,L_9EC2		;9eb1
	inc (ix+016h)		;9eb3
	ld a,(ix+013h)		;9eb6
	inc a			;9eb9
	cp 024h		;9eba
	jr c,L_9ED5		;9ebc
	sub 024h		;9ebe
	jr L_9ED5		;9ec0
L_9EC2:
	ld a,0fbh		;9ec2
	cp (ix+016h)		;9ec4
	jr z,L_9EAC		;9ec7
	dec (ix+016h)		;9ec9
	ld a,(ix+013h)		;9ecc
	sub 001h		;9ecf
	jr nc,L_9ED5		;9ed1
	add a,024h		;9ed3
L_9ED5:
	ld (ix+013h),a		;9ed5
	jp L_9DD2		;9ed8
sps_cuenta:
	ld c,(ix+015h)		;9edb
	dec c			;9ede
sps_recorre_las_fichas:
	ld ix,0d000h		;9edf   ; apunta a las fichas de los enemigos (13 de 0x80)
	ld b,00dh		;9ee3
L_9EE5:
	ld a,(ix+000h)		;9ee5   ; lee el tipo del enemigo
	cp 02dh		;9ee8   ; SPS (tipo 0x2D)?
	jr z,$+13		;9eea
L_9EEC:
	ld de,00080h		;9eec
	add ix,de		;9eef
	djnz L_9EE5		;9ef1
	scf			;9ef3
	ret			;9ef4

; ----------------------------------------------------------------------
; DATOS codigo_9EF5: un jr hacia atras al que no se llega
;   0x9ef5..0x9ef7  (2 bytes)
DATA_codigo_9EF5:
	defb 018h,0eeh	; 9ef5

; ======================================================================
; CODIGO 0x9ef7..0x9efe  (7 bytes)
; ======================================================================


L_9EF7:
	ld a,(ix+015h)		;9ef7
	cp c			;9efa
	jr nz,$-15		;9efb
	ret			;9efd

; ----------------------------------------------------------------------
; DATOS circulo_9EFE: 36 parejas [dx][dy]: un circulo de radio 16, que
;   p02:9DD5 divide por 2 (paso ix+0x13)
;   0x9efe..0x9f46  (72 bytes)
DATA_circulo_9EFE:
	defb 010h,000h,010h,003h,00fh,005h,00eh,008h,00ch,00ah,00ah,00ch,008h,00eh,005h,00fh	; 9efe  ................
	defb 003h,010h,000h,010h,0fdh,010h,0fbh,00fh,0f8h,00eh,0f6h,00ch,0f4h,00ah,0f2h,008h	; 9f0e  ................
	defb 0f1h,005h,0f0h,003h,0f0h,000h,0f0h,0fdh,0f1h,0fbh,0f2h,0f8h,0f4h,0f6h,0f6h,0f4h	; 9f1e  ................
	defb 0f8h,0f2h,0fbh,0f1h,0fdh,0f0h,000h,0f0h,003h,0f0h,005h,0f1h,008h,0f2h,00ah,0f4h	; 9f2e  ................
	defb 00ch,0f6h,00eh,0f8h,00fh,0fbh,010h,0fdh	; 9f3e  ........

; ======================================================================
; CODIGO 0x9f46..0x9f91  (75 bytes)
; ======================================================================


L_9F46:
	ld a,(ix+000h)		;9f46   ; lee el tipo del enemigo
	ld (0dfb5h),a		;9f49
	ld (ix+01ah),004h		;9f4c
	ld (ix+013h),004h		;9f50
	ld (ix+00bh),023h		;9f54   ; el cuadro del enemigo = 0x23
	inc (ix+006h)		;9f58   ; sube si se mueve
	ld (ix+016h),004h		;9f5b
	ld (ix+017h),004h		;9f5f
	ld (ix+018h),000h		;9f63
	call 06979h		;9f67
L_9F6A:
	ld a,(ix+000h)		;9f6a   ; lee el tipo del enemigo
	cp 00bh		;9f6d   ; REDSPIDER (tipo 0x0B)?
	jr z,L_9F74		;9f6f
	jp L_9FFC		;9f71
L_9F74:
	call 0bf0eh		;9f74
	rra			;9f77
	ld a,001h		;9f78
	jr nc,L_9F7E		;9f7a
	ld a,003h		;9f7c
L_9F7E:
	ld e,000h		;9f7e
	call 07303h		;9f80
	jp nc,0a002h		;9f83
	xor 002h		;9f86
	jp 0a002h		;9f88
L_9F8B:
	ld a,(ix+001h)		;9f8b   ; lee el paso en que va
	call 0425fh		;9f8e   ; p00:despacha: Salta a la entrada A de la tabla de palabras que va pegada detras del `call`.

; ----------------------------------------------------------------------
; DATOS tabla_9F91: 6 destinos del despachador de 0x425F (call en p02:9F8E):
;   0x9F9D, 0xA00B, 0xA0C6, 0xA058, 0xA0C3, 0xA0D2; lo leen p02:9F8E (12
;   bytes)
;   0x9f91..0x9f9d  (12 bytes)
DATA_tabla_9F91:
	defb 09dh,09fh	; 9f91
	defb 00bh,0a0h	; 9f93
	defb 0c6h,0a0h	; 9f95
	defb 058h,0a0h	; 9f97
	defb 0c3h,0a0h	; 9f99
	defb 0d2h,0a0h	; 9f9b

; ======================================================================
; CODIGO 0x9f9d..0x9fff  (98 bytes)
; ======================================================================


L_9F9D:
	call 0a127h		;9f9d   ; p03:spider_cuadros
	ld b,(ix+003h)		;9fa0   ; lee la y del enemigo
	ld c,(ix+002h)		;9fa3
	ld a,(ix+015h)		;9fa6
	rra			;9fa9
	jr nc,L_9FB2		;9faa
	ld b,(ix+005h)		;9fac   ; lee la x del enemigo
	ld c,(ix+004h)		;9faf
L_9FB2:
	ld a,b			;9fb2
	and 007h		;9fb3
	ret nz			;9fb5
	ld a,(0dfb0h)		;9fb6
	dec a			;9fb9
	jr z,$+100		;9fba
	ld a,c			;9fbc
	and a			;9fbd
	ret nz			;9fbe
	dec (ix+01ah)		;9fbf
	jr nz,L_9FD2		;9fc2
	ld (ix+01ah),004h		;9fc4
	inc (ix+001h)		;9fc8   ; sube el paso en que va
	ld (ix+012h),020h		;9fcb
	jp 0bf00h		;9fcf
L_9FD2:
	dec (ix+013h)		;9fd2
	jr nz,L_9FE8		;9fd5
	ld (ix+013h),004h		;9fd7
	ld c,00dh		;9fdb
	ld d,(ix+005h)		;9fdd   ; lee la x del enemigo
	ld e,(ix+003h)		;9fe0   ; lee la y del enemigo
	ld b,0ffh		;9fe3
	jp 05a69h		;9fe5   ; p00:crea_una_ficha: una ficha nueva en 0xD000-0xD67F (13 de 0x80): C el tipo, DE la posicion, B
L_9FE8:
	ld a,(ix+000h)		;9fe8   ; lee el tipo del enemigo
	cp 00bh		;9feb   ; REDSPIDER (tipo 0x0B)?
	jr nz,L_9FFC		;9fed
	ld e,000h		;9fef
	ld a,(ix+015h)		;9ff1
	call 07303h		;9ff4
	ret nc			;9ff7
	xor 002h		;9ff8
	jr $+8		;9ffa
L_9FFC:
	ld bc,00001h		;9ffc

; ----------------------------------------------------------------------
; DATOS call_partido: el primer byte (0xCD) de call 0x729E: p02:9FFC sigue de
;   largo y el resto de la instruccion esta en p03:A000
;   0x9fff..0xa000  (1 bytes)
DATA_call_partido:
	defb 0cdh	; 9fff
