; ==========================================================================
; KING KONG 2: YOMIGAERU DENSETSU - Konami (1986) - MSX - MegaROM RC-745 de 128 KB (Konami4) - banco 01 (se ejecuta en 0x6000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x06000


; ----------------------------------------------------------------------
; Etiquetas que no caen en ninguna posicion emitida del listado
; (destinos fuera del binario o dentro de una instruccion).
; ----------------------------------------------------------------------
L_6ED5:	equ 0x06ed5

; ----------------------------------------------------------------------
; Direcciones que solo aparecen como VALOR -en un `ld`, no en
; un salto-: son punteros que el codigo se pasa o numeros que
; casualmente coinciden con una direccion. No hay nada que
; trazar en ellas; el equ existe para que el listado ensamble.
; ----------------------------------------------------------------------
l7a35h:	equ 0x07a35

; ======================================================================
; CODIGO 0x6000..0x60f6  (246 bytes)
; ======================================================================


L_6000:
	ld a,005h		;6000
	ld (08000h),a		;6002
	ld (0f0f2h),a		;6005
	inc a			;6008
	ld (0a000h),a		;6009
	ld (0f0f3h),a		;600c
	ei			;600f
	ld de,00040h		;6010
	ld hl,09f99h		;6013
	ld bc,0600eh		;6016
	call 04867h		;6019
	ld de,00058h		;601c
	ld hl,09f99h		;601f
	ld bc,06003h		;6022
	call 04867h		;6025
	ld a,(0c102h)		;6028
	and 040h		;602b
	jr nz,L_603B		;602d
	ld hl,0a299h		;602f
	ld bc,0010eh		;6032
	ld de,05040h		;6035
	call 04867h		;6038
L_603B:
	call 042bch		;603b
	xor a			;603e
	ld (0faf6h),a		;603f
	ret			;6042
L_6043:
	ld a,(0c133h)		;6043
	and a			;6046
	ret nz			;6047
	ld a,(0c125h)		;6048
	cp 061h		;604b
	jr nz,L_607C		;604d
	ld a,(0c306h)		;604f
	and a			;6052
	jr nz,L_607C		;6053
	ld a,(0c303h)		;6055
	cp 061h		;6058
	jr nc,L_607C		;605a
	ld a,(0c305h)		;605c
	sub 040h		;605f
	cp 030h		;6061
	jr nc,L_607C		;6063
	ld a,089h		;6065
	ld (0c125h),a		;6067
	ld hl,058a0h		;606a
	ld (0c321h),hl		;606d
	xor a			;6070
	ld (0c130h),a		;6071
	ld (0c323h),a		;6074
	inc a			;6077
	ld (0c201h),a		;6078
	ret			;607b
L_607C:
	ld a,(0c107h)		;607c
	rra			;607f
	call c,L_60C2		;6080
	ret c			;6083
	ld a,(0c107h)		;6084
	bit 1,a		;6087
	call nz,L_60B4		;6089
	ret c			;608c
	ld a,(0c107h)		;608d
	bit 2,a		;6090
	call nz,L_60A8		;6092
	ret c			;6095
	ld a,(0c107h)		;6096
	bit 3,a		;6099
	ret z			;609b
	ld a,(0c305h)		;609c
	cp 0a0h		;609f
	jr c,L_60C0		;60a1
	ld bc,00103h		;60a3
	jr L_60CC		;60a6
L_60A8:
	ld a,(0c305h)		;60a8
	cp 011h		;60ab
	jr nc,L_60C0		;60ad
	ld bc,00302h		;60af
	jr L_60CC		;60b2
L_60B4:
	ld a,(0c303h)		;60b4
	cp 0a0h		;60b7
	jr c,L_60C0		;60b9
	ld bc,00201h		;60bb
	jr L_60CC		;60be
L_60C0:
	xor a			;60c0
	ret			;60c1
L_60C2:
	ld a,(0c303h)		;60c2
	cp 011h		;60c5
	jr nc,L_60C0		;60c7
	ld bc,00000h		;60c9
L_60CC:
	ld a,b			;60cc
	call L_616B		;60cd
	cp 0ffh		;60d0
	ret z			;60d2
	push af			;60d3
	ld a,(0c125h)		;60d4
	ld (0c134h),a		;60d7
	pop af			;60da
	ld (0c125h),a		;60db
	ld a,c			;60de
	ld hl,060f6h		;60df
	call 04255h		;60e2
	ld a,(hl)			;60e5
	ld (0c130h),a		;60e6
	call L_6143		;60e9
	call L_60FA		;60ec
	ld a,001h		;60ef
	ld (0c201h),a		;60f1
	scf			;60f4
	ret			;60f5

; ----------------------------------------------------------------------
; DATOS lado_de_la_salida: 4 bytes: lo que p01:60E5 pone en 0xC130 segun la
;   salida especial por la que se entra (C, 0-3)
;   0x60f6..0x60fa  (4 bytes)
DATA_lado_de_la_salida:
	defb 000h,002h,003h,001h	; 60f6

; ======================================================================
; CODIGO 0x60fa..0x611f  (37 bytes)
; ======================================================================


L_60FA:
	ld a,(0c125h)		;60fa
	sub 0f0h		;60fd
	ret c			;60ff
	ld c,a			;6100
	add a,a			;6101
	add a,c			;6102
	ld hl,0611fh		;6103
	call 04255h		;6106
	ld a,(hl)			;6109
	ld (0c125h),a		;610a
	inc hl			;610d
	ld e,(hl)			;610e
	inc hl			;610f
	ld d,(hl)			;6110
	inc hl			;6111
	ld (0c321h),de		;6112
	ld a,001h		;6116
	ld (0c14fh),a		;6118
	ld (0c323h),a		;611b
	ret			;611e

; ----------------------------------------------------------------------
; DATOS salidas_especiales: 12 salidas especiales (0xF0-0xFB): pantalla de
;   llegada y punto (x, y) donde aparece Mitchel; p01:60FA con 0x611F +
;   3*(n-0xF0); lo leen p01:6109 (36 bytes)
;   0x611f..0x6143  (36 bytes)
DATA_salidas_especiales:
	defb 046h,038h,038h	; 611f
	defb 00dh,040h,080h	; 6122
	defb 07bh,090h,078h	; 6125
	defb 077h,090h,058h	; 6128
	defb 006h,038h,038h	; 612b
	defb 016h,050h,050h	; 612e
	defb 009h,058h,038h	; 6131
	defb 08dh,040h,080h	; 6134
	defb 06eh,058h,038h	; 6137
	defb 030h,078h,038h	; 613a
	defb 00eh,058h,078h	; 613d
	defb 061h,060h,050h	; 6140

; ======================================================================
; CODIGO 0x6143..0x6187  (68 bytes)
; ======================================================================


L_6143:
	ld a,(0c303h)		;6143
	ld l,a			;6146
	ld a,(0c305h)		;6147
	ld h,a			;614a
	ld a,c			;614b
	dec a			;614c
	jr z,L_6159		;614d
	dec a			;614f
	jr z,L_615D		;6150
	dec a			;6152
	jr z,L_6161		;6153
	ld l,0a0h		;6155
	jr L_6163		;6157
L_6159:
	ld l,010h		;6159
	jr L_6163		;615b
L_615D:
	ld h,0a0h		;615d
	jr L_6163		;615f
L_6161:
	ld h,010h		;6161
L_6163:
	ld (0c321h),hl		;6163
	ld a,c			;6166
	ld (0c323h),a		;6167
	ret			;616a
L_616B:
	ld a,(0c125h)		;616b
	ld l,a			;616e
	ld h,000h		;616f
	add hl,hl			;6171
	add hl,hl			;6172
	ld de,0b1c5h		;6173
	add hl,de			;6176
	ld a,009h		;6177
	di			;6179
	ld (0a000h),a		;617a
	ld (0f0f3h),a		;617d
	ld b,000h		;6180
	add hl,bc			;6182
	ld a,(hl)			;6183
	jp 042bch		;6184

; ----------------------------------------------------------------------
; DATOS banco_15_en_a000: codigo que no llama nadie: di / pone el banco 15 en
;   0xA000 y en 0xF0F3 / ei / ret
;   0x6187..0x6192  (11 bytes)
DATA_banco_15_en_a000:
	defb 0f3h,03eh,00fh,032h,000h,0a0h,032h,0f3h,0f0h,0fbh,0c9h	; 6187  .>.2..2....

; ======================================================================
; CODIGO 0x6192..0x628f  (253 bytes)
; ======================================================================


L_6192:
	call L_6230		;6192
	ld b,003h		;6195
	ld hl,0c220h		;6197
L_619A:
	push bc			;619a
	ld (0e800h),hl		;619b
	ld a,(hl)			;619e
	dec a			;619f
	call p,L_61AF		;61a0
	ld hl,(0e800h)		;61a3
	inc hl			;61a6
	inc hl			;61a7
	inc hl			;61a8
	pop bc			;61a9
	djnz L_619A		;61aa
	jp 042bch		;61ac
L_61AF:
	call L_61BD		;61af
	call L_61D2		;61b2
	call L_61ED		;61b5
	call L_620B		;61b8
	jr L_6219		;61bb
L_61BD:
	ld a,b			;61bd
	sub 003h		;61be
	neg		;61c0
	add a,a			;61c2
	add a,a			;61c3
	add a,a			;61c4
	ld c,a			;61c5
	add a,a			;61c6
	add a,c			;61c7
	add a,080h		;61c8
	ld e,a			;61ca
	ld d,0b0h		;61cb
	ld (0c204h),de		;61cd
	ret			;61d1
L_61D2:
	di			;61d2
	ld a,00fh		;61d3
	ld (0a000h),a		;61d5
	ld (0f0f3h),a		;61d8
	ei			;61db
	ld a,(hl)			;61dc
	ld de,0ba76h		;61dd
	call 042ffh		;61e0
	ex de,hl			;61e3
	ld de,(0c204h)		;61e4
	ld c,0ffh		;61e8
	jp 04919h		;61ea
L_61ED:
	ld de,(0c204h)		;61ed
	ld a,e			;61f1
	add a,008h		;61f2
	ld e,a			;61f4
	ld hl,0628fh		;61f5
	ld c,080h		;61f8
	push de			;61fa
	call 04919h		;61fb
	pop de			;61fe
	ld a,e			;61ff
	add a,008h		;6200
	ld e,a			;6202
	ld hl,06294h		;6203
	ld c,080h		;6206
	jp 04919h		;6208
L_620B:
	ld hl,(0e800h)		;620b
	inc l			;620e
	ld de,(0c204h)		;620f
	ld a,e			;6213
	add a,008h		;6214
	ld e,a			;6216
	jr L_6226		;6217
L_6219:
	ld hl,(0e800h)		;6219
	inc l			;621c
	inc l			;621d
	ld de,(0c204h)		;621e
	ld a,e			;6222
	add a,010h		;6223
	ld e,a			;6225
L_6226:
	ld a,d			;6226
	add a,038h		;6227
	ld d,a			;6229
	ld bc,001ffh		;622a
	jp L_637E		;622d
L_6230:
	xor a			;6230
	ld (0c220h),a		;6231
	ld (0c223h),a		;6234
	ld (0c226h),a		;6237
	ld ix,0d000h		;623a
	ld b,00dh		;623e
L_6240:
	ld a,(ix+000h)		;6240
	dec a			;6243
	call p,L_6251		;6244
	ld de,00080h		;6247
	add ix,de		;624a
	djnz L_6240		;624c
	jp 042bch		;624e
L_6251:
	inc a			;6251
	ld c,a			;6252
	cp 02dh		;6253
	ret z			;6255
	cp 03dh		;6256
	ret z			;6258
	cp 040h		;6259
	ret z			;625b
	cp 041h		;625c
	ret z			;625e
	ld hl,0c220h		;625f
	ld e,003h		;6262
L_6264:
	ld a,(hl)			;6264
	and a			;6265
	jr z,L_6271		;6266
	cp c			;6268
	ret z			;6269
	inc l			;626a
	inc l			;626b
	inc l			;626c
	dec e			;626d
	jr nz,L_6264		;626e
	ret			;6270
L_6271:
	ld (hl),c			;6271
	inc l			;6272
	ld a,(ix+00dh)		;6273
	ld (hl),a			;6276
	inc l			;6277
	di			;6278
	ld a,009h		;6279
	ld (0a000h),a		;627b
	ld (0f0f3h),a		;627e
	ei			;6281
	ld a,c			;6282
	ld de,0bc4fh		;6283
	dec a			;6286
	call 0425ah		;6287
	ld a,(de)			;628a
	ld (hl),a			;628b
	jp 042bch		;628c

; ----------------------------------------------------------------------
; DATOS life_y_str: "LIFE" y "STR" (0xFF acaba cada uno): lo que p01:61F5 y
;   p01:6203 escriben junto al enemigo en el panel
;   0x628f..0x6298  (9 bytes)
DATA_life_y_str:
	defb 04ch,049h,046h,045h,0ffh,053h,054h,052h,0ffh	; 628f  LIFE.STR.

; ======================================================================
; CODIGO 0x6298..0x62c0  (40 bytes)
; ======================================================================


L_6298:
	ld hl,0c120h		;6298
	ld bc,02ee0h		;629b
	ld d,h			;629e
	ld e,l			;629f
	inc e			;62a0
	ld (hl),000h		;62a1
	ldir		;62a3
	ld hl,062c0h		;62a5
	ld de,0c120h		;62a8
	ld bc,00003h		;62ab
	ldir		;62ae
	xor a			;62b0
	ld (0c124h),a		;62b1
	ld (0c139h),a		;62b4
	ld (0c13bh),a		;62b7
	ld a,040h		;62ba
	ld (0c13ah),a		;62bc
	ret			;62bf

; ----------------------------------------------------------------------
; DATOS valores_de_c120: 3 bytes que p01:62AF copia a 0xC120-0xC122 al empezar
;   la partida
;   0x62c0..0x62c3  (3 bytes)
DATA_valores_de_c120:
	defb 003h,001h,001h	; 62c0

; ======================================================================
; CODIGO 0x62c3..0x6302  (63 bytes)
; ======================================================================


L_62C3:
	ld hl,0631ch		;62c3
	call 0490bh		;62c6
	call 04450h		;62c9
	call L_6344		;62cc
	call L_634E		;62cf
	call L_6358		;62d2
	call L_6362		;62d5
	call L_636C		;62d8
	call L_6376		;62db
L_62DE:
	ld hl,06302h		;62de
	call 0490fh		;62e1
	call L_62EF		;62e4
	ld a,(0c140h)		;62e7
	ld de,0e058h		;62ea
	jr L_62F5		;62ed
L_62EF:
	ld a,(0c141h)		;62ef
	ld de,0e068h		;62f2
L_62F5:
	and a			;62f5
	jp nz,pinta_icono		;62f6
	ex de,hl			;62f9
	ld bc,01010h		;62fa
	xor a			;62fd
	ld d,a			;62fe
	jp 0479bh		;62ff

; ----------------------------------------------------------------------
; DATOS rotulos_del_panel_1: [x][y] letras, 0xFE [x][y] sigue en otro sitio,
;   0xFF acaba: MITCHEL, SHOT1 y SHOT2; p01:62DE
;   0x6302..0x631c  (26 bytes)
DATA_rotulos_del_panel_1:
	defb 0b8h,020h,04dh,049h,054h,043h,048h,045h,04ch,0feh,0b0h,058h,053h,048h,04fh,054h	; 6302  . MITCHEL..XSHOT
	defb 031h,0feh,0b0h,068h,053h,048h,04fh,054h,032h,0ffh	; 6312  1..hSHOT2.

; ----------------------------------------------------------------------
; DATOS rotulos_del_panel_2: lo mismo: DAYS, MP, GOLD, LIFE, EXP y LEVEL;
;   p01:62C3
;   0x631c..0x6344  (40 bytes)
DATA_rotulos_del_panel_2:
	defb 0b0h,028h,044h,041h,059h,053h,0feh,0b0h,048h,04dh,050h,0feh,0b0h,050h,047h,04fh	; 631c  .(DAYS..HMP..PGO
	defb 04ch,044h,0feh,0b0h,030h,04ch,049h,046h,045h,0feh,0b0h,038h,045h,058h,050h,0feh	; 632c  LD..0LIFE..8EXP.
	defb 0b0h,040h,04ch,045h,056h,045h,04ch,0ffh	; 633c  .@LEVEL.

; ======================================================================
; CODIGO 0x6344..0x64c8  (388 bytes)
; ======================================================================


L_6344:
	ld b,002h		;6344
	ld hl,0c128h		;6346
	ld de,0d828h		;6349
	jr L_637E		;634c
L_634E:
	ld hl,0c12ah		;634e
	ld b,002h		;6351
	ld de,0d830h		;6353
	jr L_637E		;6356
L_6358:
	ld hl,0c12dh		;6358
	ld b,003h		;635b
	ld de,0c838h		;635d
	jr L_637E		;6360
L_6362:
	ld hl,0c12eh		;6362
	ld b,001h		;6365
	ld de,0e840h		;6367
	jr L_637E		;636a
L_636C:
	ld hl,0c12fh		;636c
	ld b,001h		;636f
	ld de,0e848h		;6371
	jr L_637E		;6374
L_6376:
	ld hl,0c136h		;6376
	ld b,002h		;6379
	ld de,0d850h		;637b
L_637E:
	ld c,000h		;637e
L_6380:
	dec b			;6380
	jr nz,L_6385		;6381
	ld c,0ffh		;6383
L_6385:
	inc b			;6385
	ld a,(hl)			;6386
	rra			;6387
	rra			;6388
	rra			;6389
	rra			;638a
	call L_6396		;638b
	ld a,(hl)			;638e
	call L_6396		;638f
	dec hl			;6392
	djnz L_6380		;6393
	ret			;6395
L_6396:
	and 00fh		;6396
	jr z,L_639C		;6398
	ld c,0ffh		;639a
L_639C:
	add a,090h		;639c
	and c			;639e
	call 04952h		;639f
	ld a,d			;63a2
	add a,008h		;63a3
	ld d,a			;63a5
	ret			;63a6
L_63A7:
	call L_63B5		;63a7
	call L_63E6		;63aa
	call L_6407		;63ad
	call L_6428		;63b0
	jr L_6412		;63b3
L_63B5:
	ld de,00000h		;63b5
	ld b,020h		;63b8
	call L_63DA		;63ba
	ld de,0b018h		;63bd
	ld b,009h		;63c0
	call L_63DA		;63c2
	ld de,0b078h		;63c5
	ld b,009h		;63c8
	call L_63DA		;63ca
	ld de,008a8h		;63cd
	ld b,014h		;63d0
	call L_63DA		;63d2
	ld de,000c8h		;63d5
	ld b,020h		;63d8
L_63DA:
	ld a,0f0h		;63da
	call 0497bh		;63dc
	ld a,d			;63df
	add a,008h		;63e0
	ld d,a			;63e2
	djnz L_63DA		;63e3
	ret			;63e5
L_63E6:
	ld de,00008h		;63e6
	ld b,019h		;63e9
	call L_63FB		;63eb
	ld de,0a808h		;63ee
	ld b,018h		;63f1
	call L_63FB		;63f3
	ld de,0f800h		;63f6
	ld b,019h		;63f9
L_63FB:
	ld a,0f1h		;63fb
	call 0497bh		;63fd
	ld a,e			;6400
	add a,008h		;6401
	ld e,a			;6403
	djnz L_63FB		;6404
	ret			;6406
L_6407:
	ld hl,0b008h		;6407
	ld bc,04810h		;640a
	xor a			;640d
	ld d,a			;640e
	jp 0479bh		;640f
L_6412:
	ld hl,0b020h		;6412
	ld bc,04858h		;6415
	xor a			;6418
	ld d,a			;6419
	jp 0479bh		;641a
L_641D:
	ld hl,0b080h		;641d
	ld bc,04848h		;6420
	xor a			;6423
	ld d,a			;6424
	jp 0479bh		;6425
L_6428:
	ld hl,008b0h		;6428
	ld bc,0a018h		;642b
	xor a			;642e
	ld d,a			;642f
	jp 0479bh		;6430
L_6433:
	ld hl,00808h		;6433
	ld bc,0a0a0h		;6436
	xor a			;6439
	ld d,a			;643a
	jp 0479bh		;643b
L_643E:
	bit 7,c		;643e
	ret nz			;6440
	ld hl,0c208h		;6441
	ld a,(hl)			;6444
	cp c			;6445
	ret z			;6446
	ld (hl),c			;6447
	ld a,(0c206h)		;6448
	and a			;644b
	call nz,L_647E		;644c
	ld hl,0c220h		;644f
	ld b,003h		;6452
L_6454:
	ld a,(hl)			;6454
	cp c			;6455
	jr z,L_645E		;6456
	inc l			;6458
	inc l			;6459
	inc l			;645a
	djnz L_6454		;645b
	ret			;645d
L_645E:
	call L_61BD		;645e
	ld a,e			;6461
	add a,008h		;6462
	ld e,a			;6464
	ld (0c207h),a		;6465
	ld a,03ch		;6468
	ld (0c206h),a		;646a
	ex de,hl			;646d
	ld b,038h		;646e
	xor a			;6470
	ld c,008h		;6471
	jp 04706h		;6473
L_6476:
	ld hl,0c206h		;6476
	ld a,(hl)			;6479
	and a			;647a
	ret z			;647b
	dec (hl)			;647c
	ret nz			;647d
L_647E:
	xor a			;647e
	ld (0c208h),a		;647f
	ld (0c206h),a		;6482
	ld a,(0c207h)		;6485
	ld l,a			;6488
	ld h,0b0h		;6489
	xor a			;648b
	ld c,a			;648c
	ld b,038h		;648d
	jp 04706h		;648f
L_6492:
	call 054e3h		;6492
	call 0465ch		;6495
	ld a,005h		;6498
	call 0005fh		;649a   ; BIOS CHGMOD - Switches to given screen mode
	call 0462dh		;649d
	call L_64D0		;64a0
	xor a			;64a3
	ld h,a			;64a4
	ld l,a			;64a5
	ld b,a			;64a6
	ld c,a			;64a7
	ld d,001h		;64a8
	call 0479bh		;64aa
	call 046ddh		;64ad
	ld b,004h		;64b0
	ld hl,064c8h		;64b2
L_64B5:
	push bc			;64b5
	ld c,(hl)			;64b6
	inc hl			;64b7
	ld b,(hl)			;64b8
	inc hl			;64b9
	push hl			;64ba
	call 00047h		;64bb   ; BIOS WRTVDP - Writes data in the VDP-register
	pop hl			;64be
	pop bc			;64bf
	djnz L_64B5		;64c0
	call 04651h		;64c2
	jp 04620h		;64c5

; ----------------------------------------------------------------------
; DATOS registros_del_vdp: 4 parejas [registro][valor] que p01:64B5 escribe
;   con WRTVDP: R1 0x62, R5 0xEF, R6 0x1F, R11 0x01
;   0x64c8..0x64d0  (8 bytes)
DATA_registros_del_vdp:
	defb 001h,062h,005h,0efh,006h,01fh,00bh,001h	; 64c8  .b......

; ======================================================================
; CODIGO 0x64d0..0x65d6  (262 bytes)
; ======================================================================


L_64D0:
	xor a			;64d0
	ld h,a			;64d1
	ld l,a			;64d2
	ld b,a			;64d3
	ld c,a			;64d4
	ld d,a			;64d5
	jp 0479bh		;64d6
L_64D9:
	ld a,(0c102h)		;64d9
	and 040h		;64dc
	jp z,L_69D7		;64de
	ld a,(0c139h)		;64e1
	inc a			;64e4
	jr z,L_64EA		;64e5
	xor a			;64e7
	jr L_64F6		;64e8
L_64EA:
	call L_653B		;64ea
	ld hl,0c113h		;64ed
	call L_64F9		;64f0
	call L_6500		;64f3
L_64F6:
	ld hl,0c107h		;64f6
L_64F9:
	ld c,(hl)			;64f9
	ld (hl),a			;64fa
	xor c			;64fb
	and (hl)			;64fc
	dec hl			;64fd
	ld (hl),a			;64fe
	ret			;64ff
L_6500:
	ld e,08fh		;6500
	ld a,00fh		;6502
	call 00093h		;6504   ; BIOS WRTPSG - Writes data to PSG-register
	ld a,00eh		;6507
	di			;6509
	call 00096h		;650a   ; BIOS RDPSG - Reads value from PSG-register
	ei			;650d
	cpl			;650e
	and 03fh		;650f
	push af			;6511
	ld a,006h		;6512
	call 00141h		;6514   ; BIOS SNSMAT - Returns the value of the specified line from the keyboard matrix
	rra			;6517
	ld e,000h		;6518
	jr c,L_651E		;651a
	ld e,020h		;651c
L_651E:
	ld a,008h		;651e
	call 00141h		;6520   ; BIOS SNSMAT - Returns the value of the specified line from the keyboard matrix
	cpl			;6523
	rrca			;6524
	rrca			;6525
	ld b,a			;6526
	and 004h		;6527
	or e			;6529
	ld c,a			;652a
	ld a,b			;652b
	rrca			;652c
	rrca			;652d
	ld b,a			;652e
	and 018h		;652f
	or c			;6531
	ld c,a			;6532
	ld a,b			;6533
	rrca			;6534
	and 003h		;6535
	or c			;6537
	pop bc			;6538
	or b			;6539
	ret			;653a
L_653B:
	ld a,006h		;653b
	call 00141h		;653d   ; BIOS SNSMAT - Returns the value of the specified line from the keyboard matrix
	cpl			;6540
	rlca			;6541
	rlca			;6542
	rlca			;6543
	ld c,a			;6544
	and 003h		;6545
	ld e,a			;6547
	ld a,c			;6548
	and 004h		;6549
	rlca			;654b
	rlca			;654c
	rlca			;654d
	rlca			;654e
	or e			;654f
	ld e,a			;6550
	ld a,007h		;6551
	call 00141h		;6553   ; BIOS SNSMAT - Returns the value of the specified line from the keyboard matrix
	bit 1,a		;6556
	jr nz,L_655C		;6558
	set 2,e		;655a
L_655C:
	bit 0,a		;655c
	jr nz,L_6562		;655e
	set 7,e		;6560
L_6562:
	bit 3,a		;6562
	ld a,000h		;6564
	jr nz,L_656A		;6566
	ld a,001h		;6568
L_656A:
	ld (0c11fh),a		;656a
	xor a			;656d
	call 00141h		;656e   ; BIOS SNSMAT - Returns the value of the specified line from the keyboard matrix
	cpl			;6571
	add a,a			;6572
	add a,a			;6573
	and 038h		;6574
	or e			;6576
	ret			;6577
L_6578:
	ld a,(0c133h)		;6578
	and a			;657b
	ret nz			;657c
	call 054bdh		;657d
	jr z,L_658E		;6580
	cp 085h		;6582
	ret z			;6584
	cp 081h		;6585
	ret z			;6587
	cp 082h		;6588
	ret z			;658a
	cp 08ch		;658b
	ret z			;658d
L_658E:
	ld b,082h		;658e
	ld a,(0c132h)		;6590
	and a			;6593
	jr nz,L_65A9		;6594
	ld a,(0c151h)		;6596
	ld b,084h		;6599
	and a			;659b
	jr nz,L_65A9		;659c
	ld a,(0c148h)		;659e
	ld b,083h		;65a1
	cp 005h		;65a3
	jr z,L_65A9		;65a5
	ld b,080h		;65a7
L_65A9:
	ld hl,0c154h		;65a9
	call 054bdh		;65ac
	jr z,L_65BC		;65af
	cp b			;65b1
	ret z			;65b2
	ld a,(hl)			;65b3
	and a			;65b4
	ret nz			;65b5
	inc (hl)			;65b6
	ld a,0ffh		;65b7
	jp 05488h		;65b9
L_65BC:
	xor a			;65bc
	ld (hl),a			;65bd
	ld a,b			;65be
	jp 05488h		;65bf
L_65C2:
	ld hl,0c103h		;65c2
	inc (hl)			;65c5
	ld bc,(0c100h)		;65c6
	ld a,c			;65ca
	cp 003h		;65cb
	jr nc,L_65D3		;65cd
	ld hl,0676eh		;65cf
	push hl			;65d2
L_65D3:
	call 0425fh		;65d3

; ----------------------------------------------------------------------
; DATOS tabla_65D6: 10 destinos del despachador de 0x425F (call en p01:65D3):
;   0x65EA, 0x6619, 0x662C, 0x6654, 0x6674, 0x6696, 0x66D6, 0x66DD ...; lo
;   leen p01:65D3 (20 bytes)
;   0x65d6..0x65ea  (20 bytes)
DATA_tabla_65D6:
	defb 0eah,065h	; 65d6
	defb 019h,066h	; 65d8
	defb 02ch,066h	; 65da
	defb 054h,066h	; 65dc
	defb 074h,066h	; 65de
	defb 096h,066h	; 65e0
	defb 0d6h,066h	; 65e2
	defb 0ddh,066h	; 65e4
	defb 046h,067h	; 65e6
	defb 052h,067h	; 65e8

; ======================================================================
; CODIGO 0x65ea..0x67ca  (480 bytes)
; ======================================================================


L_65EA:
	djnz L_65FA		;65ea
	call 05fb7h		;65ec
	ld a,(0c202h)		;65ef
	or a			;65f2
	ret z			;65f3
	call 05ffah		;65f4
	xor a			;65f7
	jr L_664C		;65f8
L_65FA:
	djnz L_6611		;65fa
	ld hl,0c104h		;65fc
	dec (hl)			;65ff
	ret nz			;6600
	di			;6601
	ld a,006h		;6602
	call 05d9ch		;6604
	call 0ba79h		;6607
	call 042bch		;660a
	xor a			;660d
	jp L_668A		;660e
L_6611:
	call 04612h		;6611
	call 05f3fh		;6614
	jr L_664F		;6617
L_6619:
	ld a,006h		;6619
	call 05d9ch		;661b
	call 0b9c8h		;661e
	call 042bch		;6621
	ld hl,0c104h		;6624
	dec (hl)			;6627
	ret nz			;6628
	jp L_6688		;6629
L_662C:
	djnz L_6644		;662c
	call L_69D4		;662e
	ld a,(0c123h)		;6631
	or a			;6634
	ret nz			;6635
L_6636:
	xor a			;6636
	ld (0c102h),a		;6637
L_663A:
	ld (0c100h),a		;663a
	ld a,020h		;663d
	ld (0c104h),a		;663f
	jr L_6691		;6642
L_6644:
	call 04612h		;6644
	call L_697F		;6647
	ld a,020h		;664a
L_664C:
	ld (0c104h),a		;664c
L_664F:
	ld hl,0c101h		;664f
	inc (hl)			;6652
	ret			;6653
L_6654:
	djnz L_666B		;6654
	ld a,006h		;6656
	call 05d9ch		;6658
	call 0ba46h		;665b
	call 042bch		;665e
	ld hl,0c104h		;6661
	dec (hl)			;6664
	ret nz			;6665
	call L_6298		;6666
	jr L_6688		;6669
L_666B:
	ld a,085h		;666b
	call 05490h		;666d
	ld a,050h		;6670
	jr L_664C		;6672
L_6674:
	call 04612h		;6674
	call 0533dh		;6677
	di			;667a
	ld a,006h		;667b
	call 05d9ch		;667d
	call 042bch		;6680
	ld hl,0c123h		;6683
	ld (hl),001h		;6686
L_6688:
	ld a,020h		;6688
L_668A:
	ld (0c104h),a		;668a
	ld hl,0c100h		;668d
	inc (hl)			;6690
L_6691:
	xor a			;6691
	ld (0c101h),a		;6692
	ret			;6695
L_6696:
	call 05c05h		;6696
	ld a,(0c124h)		;6699
	and a			;669c
	ld a,008h		;669d
	jr nz,L_66AF		;669f
	ld a,(0c11bh)		;66a1
	and a			;66a4
	jp nz,L_66BE		;66a5
	ld a,(0c123h)		;66a8
	or a			;66ab
	ret nz			;66ac
	jr L_6688		;66ad
L_66AF:
	ld a,007h		;66af
	ld (0c100h),a		;66b1
	ld a,0ffh		;66b4
	call 05488h		;66b6
	ld a,080h		;66b9
	jp L_668A		;66bb
L_66BE:
	ld a,006h		;66be
	call 00141h		;66c0   ; BIOS SNSMAT - Returns the value of the specified line from the keyboard matrix
	bit 1,a		;66c3
	jr z,L_66CC		;66c5
	call L_67AF		;66c7
	jr L_66D1		;66ca
L_66CC:
	ld a,002h		;66cc
	ld (0c11bh),a		;66ce
L_66D1:
	ld a,009h		;66d1
	jp L_663A		;66d3
L_66D6:
	ld a,089h		;66d6
	call 05490h		;66d8
	jr L_6688		;66db
continuar:
	djnz L_6736		;66dd
	call L_64D9		;66df
	ld hl,0c11ah		;66e2
	ld a,(0c112h)		;66e5
	bit 2,a		;66e8   ; F5 (bit 2 de 0xC112): CONTINUE
	jr z,L_66F4		;66ea
	ld (hl),001h		;66ec
	ld hl,0bfech		;66ee
	call 04913h		;66f1
L_66F4:
	call 054bdh		;66f4
	ret nz			;66f7
	ld a,(0c11ah)		;66f8
	and a			;66fb
	jp z,L_6636		;66fc
	ld hl,0c16eh		;66ff   ; una vez mas (lo mira p06:A85C para el final)
	inc (hl)			;6702
	ld a,(0c12eh)		;6703
	add a,003h		;6706
	daa			;6708
	jr nc,L_670D		;6709
	ld a,099h		;670b
L_670D:
	ld e,a			;670d
	ld l,a			;670e
	ld h,000h		;670f
	ld b,002h		;6711
L_6713:
	ld a,l			;6713
	add a,a			;6714
	daa			;6715
	ld l,a			;6716
	ld a,h			;6717
	adc a,a			;6718
	daa			;6719
	ld h,a			;671a
	djnz L_6713		;671b
	ld a,l			;671d
	add a,e			;671e
	daa			;671f
	ld l,a			;6720
	ld a,h			;6721
	adc a,000h		;6722
	daa			;6724
	ld h,a			;6725
	ld (0c129h),hl		;6726
	call 0538dh		;6729
	ld a,001h		;672c
	ld (0c123h),a		;672e
	ld a,005h		;6731
	jp L_663A		;6733
L_6736:
	call 04612h		;6736
	xor a			;6739
	ld (0c11ah),a		;673a
	ld hl,0bfdfh		;673d
	call 0490fh		;6740
	jp L_664F		;6743
L_6746:
	di			;6746
	ld a,006h		;6747
	call 05d9ch		;6749
	call 0a6cfh		;674c
	jp 042bch		;674f
L_6752:
	call L_64D9		;6752
	ld a,(0c112h)		;6755
	rra			;6758
	ret nc			;6759
	ld hl,0c11bh		;675a
	ld a,(hl)			;675d
	ld (hl),000h		;675e
	dec a			;6760
	call z,L_67D2		;6761
	ld a,0feh		;6764
	call 05488h		;6766
	ld a,005h		;6769
	jp L_663A		;676b
L_676E:
	call L_653B		;676e
	ld hl,0c11ch		;6771
	call L_64F9		;6774
	call L_6500		;6777
	ld hl,0c111h		;677a
	call L_64F9		;677d
	or a			;6780
	ret z			;6781
	ld hl,0c104h		;6782
	ld (hl),000h		;6785
	ld hl,0c100h		;6787
	ld b,(hl)			;678a
	djnz L_679D		;678b
	and 030h		;678d
	ret z			;678f
	call L_67F3		;6790
	ld a,040h		;6793
	ld (0c102h),a		;6795
	ld (hl),003h		;6798
	inc hl			;679a
	ld (hl),b			;679b
	ret			;679c
L_679D:
	ld (hl),001h		;679d
	ld a,000h		;679f
	call 05490h		;67a1
	ld a,006h		;67a4
	call 05d9ch		;67a6
	call 0ba79h		;67a9
	jp 042bch		;67ac
L_67AF:
	ld hl,05054h		;67af
	ld bc,03010h		;67b2
	ld de,0d090h		;67b5
	ld a,004h		;67b8
	push hl			;67ba
	push bc			;67bb
	call 047d7h		;67bc
	pop bc			;67bf
	pop hl			;67c0
	call L_67E0		;67c1
	ld hl,067cah		;67c4
	jp 0490fh		;67c7

; ----------------------------------------------------------------------
; DATOS pausa: [x][y] "PAUSE" 0xFF: lo que escribe p01:67C4 al parar la
;   partida
;   0x67ca..0x67d2  (8 bytes)
DATA_pausa:
	defb 054h,058h,050h,041h,055h,053h,045h,0ffh	; 67ca  TXPAUSE.

; ======================================================================
; CODIGO 0x67d2..0x6885  (179 bytes)
; ======================================================================


L_67D2:
	ld de,05054h		;67d2
	ld bc,03010h		;67d5
	ld hl,0d090h		;67d8
	ld a,001h		;67db
	jp 047d7h		;67dd
L_67E0:
	call L_67E8		;67e0
	ld c,00eh		;67e3
	jp 0476dh		;67e5
L_67E8:
	xor a			;67e8
	ld d,000h		;67e9
	push bc			;67eb
	push hl			;67ec
	call 0479bh		;67ed
	pop hl			;67f0
	pop de			;67f1
	ret			;67f2
L_67F3:
	ld a,(0c11fh)		;67f3
	and a			;67f6
	jr z,L_681A		;67f7
	ld a,(0c11ch)		;67f9
	rra			;67fc
	ld c,010h		;67fd
	jr c,L_681C		;67ff
	rra			;6801
	ld c,020h		;6802
	jr c,L_681C		;6804
	rra			;6806
	ld c,050h		;6807
	jr c,L_681C		;6809
	rra			;680b
	rra			;680c
	rra			;680d
	rra			;680e
	ld c,030h		;680f
	jr c,L_681C		;6811
	rra			;6813
	jr nc,L_681A		;6814
	ld c,040h		;6816
	jr L_681C		;6818
L_681A:
	ld c,000h		;681a
L_681C:
	ld a,c			;681c
	ld (0c11eh),a		;681d
	ret			;6820
L_6821:
	ld a,(0c125h)		;6821
	cp 08ah		;6824
	ret nc			;6826
	ld a,(0c147h)		;6827
	and a			;682a
	call z,05a2ah		;682b
	ld ix,0d000h		;682e
	ld b,00dh		;6832
L_6834:
	ld a,(ix+000h)		;6834
	and a			;6837
	jr z,L_684B		;6838
	push bc			;683a
	call L_686A		;683b
	ld a,(0c147h)		;683e
	and a			;6841
	jr nz,L_6847		;6842
	call L_690E		;6844
L_6847:
	call L_693A		;6847
	pop bc			;684a
L_684B:
	ld de,00080h		;684b
	add ix,de		;684e
	djnz L_6834		;6850
	ret			;6852
L_6853:
	ld ix,0d000h		;6853
	ld b,00dh		;6857
L_6859:
	push bc			;6859
	ld a,(ix+000h)		;685a
	and a			;685d
	call nz,050f9h		;685e
	ld de,00080h		;6861
	add ix,de		;6864
	pop bc			;6866
	djnz L_6859		;6867
	ret			;6869
L_686A:
	ld a,(ix+000h)		;686a
	cp 0f0h		;686d
	jp nc,05e4fh		;686f
	ld c,a			;6872
	ld a,(0c147h)		;6873
	and a			;6876
	ret nz			;6877
	inc (ix+00ch)		;6878
	ld a,c			;687b
	rla			;687c
	ld a,c			;687d
	jp c,L_7072		;687e
	dec a			;6881
	call 0425fh		;6882

; ----------------------------------------------------------------------
; DATOS tabla_6885: 68 destinos del despachador de 0x425F (call en p01:6882):
;   0xB125, 0xB36D, 0xB3A3, 0x8543, 0x85A2, 0xA82A, 0xAC27, 0xABF8 ...; lo
;   leen p01:6882 (136 bytes)
;   0x6885..0x690d  (136 bytes)
DATA_tabla_6885:
	defb 025h,0b1h	; 6885
	defb 06dh,0b3h	; 6887
	defb 0a3h,0b3h	; 6889
	defb 043h,085h	; 688b
	defb 0a2h,085h	; 688d
	defb 02ah,0a8h	; 688f
	defb 027h,0ach	; 6891
	defb 0f8h,0abh	; 6893
	defb 013h,094h	; 6895
	defb 046h,092h	; 6897
	defb 08bh,09fh	; 6899
	defb 08bh,09fh	; 689b
	defb 06fh,0a1h	; 689d
	defb 00dh,069h	; 689f
	defb 00dh,069h	; 68a1
	defb 060h,086h	; 68a3
	defb 0f5h,087h	; 68a5
	defb 0c5h,0b4h	; 68a7
	defb 0cdh,0b7h	; 68a9
	defb 023h,0b8h	; 68ab
	defb 0c9h,0adh	; 68ad
	defb 00dh,069h	; 68af
	defb 0e8h,0a3h	; 68b1
	defb 0e8h,0a3h	; 68b3
	defb 089h,0a3h	; 68b5
	defb 08eh,08ah	; 68b7
	defb 078h,090h	; 68b9
	defb 0e0h,088h	; 68bb
	defb 0c1h,098h	; 68bd
	defb 0c1h,098h	; 68bf
	defb 0c1h,098h	; 68c1
	defb 0c1h,098h	; 68c3
	defb 0c1h,098h	; 68c5
	defb 0c1h,098h	; 68c7
	defb 0c1h,098h	; 68c9
	defb 089h,0a3h	; 68cb
	defb 0c1h,098h	; 68cd
	defb 0c1h,098h	; 68cf
	defb 0c1h,098h	; 68d1
	defb 0d4h,08ah	; 68d3
	defb 027h,0afh	; 68d5
	defb 001h,0a7h	; 68d7
	defb 097h,0a7h	; 68d9
	defb 012h,0a2h	; 68db
	defb 0f2h,09ch	; 68dd
	defb 09ch,0b7h	; 68df
	defb 075h,091h	; 68e1
	defb 0a7h,0b0h	; 68e3
	defb 013h,094h	; 68e5
	defb 09dh,095h	; 68e7
	defb 0e6h,08bh	; 68e9
	defb 0e6h,08bh	; 68eb
	defb 0e6h,08bh	; 68ed
	defb 0e8h,0a3h	; 68ef
	defb 0d6h,0a3h	; 68f1
	defb 000h,09dh	; 68f3
	defb 000h,09dh	; 68f5
	defb 03eh,096h	; 68f7
	defb 0ceh,08ch	; 68f9
	defb 027h,09bh	; 68fb
	defb 0c1h,0bdh	; 68fd
	defb 0ffh,0ach	; 68ff
	defb 02eh,0beh	; 6901
	defb 07dh,08dh	; 6903
	defb 01ah,08fh	; 6905
	defb 042h,085h	; 6907
	defb 0fbh,0b2h	; 6909
	defb 051h,0b2h	; 690b

; ======================================================================
; CODIGO 0x690d..0x69cc  (191 bytes)
; ======================================================================


L_690D:
	ret			;690d
L_690E:
	ld a,(ix+006h)		;690e
	and a			;6911
	ret z			;6912
L_6913:
	ld e,(ix+007h)		;6913
	ld d,(ix+008h)		;6916
	ld l,(ix+002h)		;6919
	ld h,(ix+003h)		;691c
	add hl,de			;691f
	ld (ix+002h),l		;6920
	ld (ix+003h),h		;6923
	ld e,(ix+009h)		;6926
	ld d,(ix+00ah)		;6929
	ld l,(ix+004h)		;692c
	ld h,(ix+005h)		;692f
	add hl,de			;6932
	ld (ix+004h),l		;6933
	ld (ix+005h),h		;6936
	ret			;6939
L_693A:
	ld a,(ix+003h)		;693a
	ld c,0b0h		;693d
	cp c			;693f
	jr nc,L_694B		;6940
	ld a,(ix+005h)		;6942
	cp c			;6945
	jr nc,L_694B		;6946
	cp 007h		;6948
	ret nc			;694a
L_694B:
	xor a			;694b
	ld (ix+000h),a		;694c
L_694F:
	push ix		;694f
	pop hl			;6951
	set 5,l		;6952
	ld c,(hl)			;6954
	ld a,c			;6955
	and a			;6956
	ret z			;6957
	inc l			;6958
	ex de,hl			;6959
L_695A:
	ld a,(0c132h)		;695a
	and a			;695d
	ld hl,0e618h		;695e
	jr z,L_6966		;6961
	ld hl,0e628h		;6963
L_6966:
	ld a,(de)			;6966
	add a,a			;6967
	add a,a			;6968
	add a,l			;6969
	ld l,a			;696a
	ld (hl),0e0h		;696b
	inc e			;696d
	ld a,0e0h		;696e
	ld (de),a			;6970
	ld a,e			;6971
	add a,004h		;6972
	ld e,a			;6974
	dec c			;6975
	jr nz,L_695A		;6976
	ret			;6978
L_6979:
	ld a,001h		;6979
	ld (0c151h),a		;697b
	ret			;697e
L_697F:
	ld hl,0c120h		;697f
	ld bc,02ee0h		;6982
	ld d,h			;6985
	ld e,l			;6986
	inc e			;6987
	ld (hl),000h		;6988
	ldir		;698a
	ld hl,0c10ch		;698c
	ld a,(hl)			;698f
	inc (hl)			;6990
	and 001h		;6991
	add a,a			;6993
	add a,a			;6994
	ld hl,069cch		;6995
	call 04255h		;6998
	ld a,(hl)			;699b
	ld (0c125h),a		;699c
	inc hl			;699f
	ld a,(hl)			;69a0
	ld (0c103h),a		;69a1
	ld a,001h		;69a4
	ld (0c123h),a		;69a6
	ld (0c109h),a		;69a9
	dec a			;69ac
	ld (0c107h),a		;69ad
	ld (0c10ah),a		;69b0
	ld (0c10bh),a		;69b3
	inc hl			;69b6
	ld e,(hl)			;69b7
	inc hl			;69b8
	ld d,(hl)			;69b9
	ld (0c10dh),de		;69ba
	call 0533dh		;69be
	ld a,004h		;69c1
	ld (0c307h),a		;69c3
	ld a,099h		;69c6
	ld (0c12eh),a		;69c8
	ret			;69cb

; ----------------------------------------------------------------------
; DATOS demostraciones: 2 entradas de 4 bytes (0xC10C alterna):
;   [pantalla][0xC103][palabra que lee p01:69B7]; p01:6995
;   0x69cc..0x69d4  (8 bytes)
DATA_demostraciones:
	defb 010h,05ah,031h,0bch,054h,000h,0b7h,0bch	; 69cc  .Z1.T...

; ======================================================================
; CODIGO 0x69d4..0x6a4d  (121 bytes)
; ======================================================================


L_69D4:
	jp 05c05h		;69d4
L_69D7:
	di			;69d7
	ld a,006h		;69d8
	call 05d9ch		;69da
	ld hl,0c109h		;69dd
	dec (hl)			;69e0
	jr z,L_69F7		;69e1
L_69E3:
	ld a,(0c10ah)		;69e3
	cp 0ffh		;69e6
	jr z,L_69F0		;69e8
	call L_64F6		;69ea
	jp 042bch		;69ed
L_69F0:
	xor a			;69f0
	ld (0c123h),a		;69f1
	jp 042bch		;69f4
L_69F7:
	inc hl			;69f7
	inc hl			;69f8
	ld c,(hl)			;69f9
	inc (hl)			;69fa
	ld de,(0c10dh)		;69fb
	ld l,c			;69ff
	ld h,000h		;6a00
	add hl,hl			;6a02
	add hl,de			;6a03
	ld a,(hl)			;6a04
	ld (0c109h),a		;6a05
	inc hl			;6a08
	ld a,(hl)			;6a09
	ld (0c10ah),a		;6a0a
	jr L_69E3		;6a0d
L_6A0F:
	ld hl,0dfa0h		;6a0f
	dec (hl)			;6a12
	ret nz			;6a13
	ld (hl),050h		;6a14
	ld a,(0c125h)		;6a16
	cp 011h		;6a19
	jr nz,L_6A21		;6a1b
	ld b,001h		;6a1d
	jr L_6A3E		;6a1f
L_6A21:
	ld b,002h		;6a21
	cp 03eh		;6a23
	jr z,L_6A3E		;6a25
	cp 046h		;6a27
	jr z,L_6A3E		;6a29
	cp 04ah		;6a2b
	jr nz,L_6A33		;6a2d
	ld b,003h		;6a2f
	jr L_6A3E		;6a31
L_6A33:
	call 0bf0eh		;6a33
	ld b,000h		;6a36
	and 001h		;6a38
	jr z,L_6A3E		;6a3a
	ld b,002h		;6a3c
L_6A3E:
	ld a,b			;6a3e
	ld hl,06a4dh		;6a3f
	call 04255h		;6a42
	ld e,(hl)			;6a45
	inc hl			;6a46
	ld d,(hl)			;6a47
	ld c,01bh		;6a48
	jp 05a69h		;6a4a

; ----------------------------------------------------------------------
; DATOS posiciones_6A4D: 5 bytes que p01:6A3F lee de dos en dos segun B (se
;   solapan): [x][y] para p00:5A69
;   0x6a4d..0x6a52  (5 bytes)
DATA_posiciones_6A4D:
	defb 010h,058h,0a0h,058h,010h	; 6a4d

; ======================================================================
; CODIGO 0x6a52..0x6ace  (124 bytes)
; ======================================================================


L_6A52:
	call L_6B7D		;6a52
	or a			;6a55
	ld a,(0c303h)		;6a56
	jr nz,L_6A64		;6a59
	cp 048h		;6a5b
	jr nc,L_6A7D		;6a5d
	cp 028h		;6a5f
	ret c			;6a61
	jr L_6A6D		;6a62
L_6A64:
	cp 028h		;6a64
	jr c,L_6A6D		;6a66
	cp 048h		;6a68
	ret nc			;6a6a
	jr L_6A7D		;6a6b
L_6A6D:
	ld hl,0dff4h		;6a6d
	bit 0,(hl)		;6a70
	ret nz			;6a72
	set 0,(hl)		;6a73
	ld c,040h		;6a75
	ld de,01814h		;6a77
	jp 05a69h		;6a7a
L_6A7D:
	ld hl,0dff4h		;6a7d
	bit 1,(hl)		;6a80
	ret nz			;6a82
	set 1,(hl)		;6a83
	ld ix,0d000h		;6a85
	ld (ix+014h),000h		;6a89
	ld de,0ff60h		;6a8d
	jp 04311h		;6a90
L_6A93:
	call L_6B7D		;6a93
	or a			;6a96
	ld a,(0c303h)		;6a97
	jr z,L_6AA1		;6a9a
	cp 058h		;6a9c
	ret nc			;6a9e
	jr L_6AA4		;6a9f
L_6AA1:
	cp 058h		;6aa1
	ret c			;6aa3
L_6AA4:
	ld hl,0dff5h		;6aa4
	ld a,(hl)			;6aa7
	or a			;6aa8
	ret nz			;6aa9
	ld (hl),002h		;6aaa
	dec hl			;6aac
	ld a,(hl)			;6aad
	cp 005h		;6aae
	ret nc			;6ab0
	ld e,a			;6ab1
	ld d,000h		;6ab2
	ld hl,06aceh		;6ab4
	add hl,de			;6ab7
	ld e,(hl)			;6ab8
	push de			;6ab9
	ld d,018h		;6aba
	ld c,040h		;6abc
	call 05a69h		;6abe
	pop de			;6ac1
	ld d,098h		;6ac2
	ld c,040h		;6ac4
	call 05a69h		;6ac6
L_6AC9:
	ld hl,0dff4h		;6ac9
	inc (hl)			;6acc
	ret			;6acd

; ----------------------------------------------------------------------
; DATOS posiciones_6ACE: 5 bytes, uno por E (0-4): la x que p01:6AB4 da a
;   p00:5A69 en dos alturas (0x18 y 0x98)
;   0x6ace..0x6ad3  (5 bytes)
DATA_posiciones_6ACE:
	defb 074h,014h,05ch,02ch,044h	; 6ace

; ======================================================================
; CODIGO 0x6ad3..0x6b1b  (72 bytes)
; ======================================================================


L_6AD3:
	call L_6B7D		;6ad3
	or a			;6ad6
	ld a,(0c303h)		;6ad7
	jr z,L_6AE1		;6ada
	cp 078h		;6adc
	ret nc			;6ade
	jr L_6AE4		;6adf
L_6AE1:
	cp 078h		;6ae1
	ret c			;6ae3
L_6AE4:
	ld hl,0dff5h		;6ae4
	ld a,(hl)			;6ae7
	or a			;6ae8
	ret nz			;6ae9
	ld (hl),002h		;6aea
	dec hl			;6aec
	ld a,(hl)			;6aed
	cp 003h		;6aee
	ret nc			;6af0
	ld d,a			;6af1
	add a,a			;6af2
	ld e,a			;6af3
	add a,a			;6af4
	add a,e			;6af5
	add a,d			;6af6
	ld e,a			;6af7
	ld d,000h		;6af8
	ld hl,06b1bh		;6afa
	add hl,de			;6afd
	ld b,(hl)			;6afe
L_6AFF:
	inc hl			;6aff
	ld e,(hl)			;6b00
	inc hl			;6b01
	ld d,(hl)			;6b02
	push bc			;6b03
	push de			;6b04
	push hl			;6b05
	ld c,040h		;6b06
	call 05a69h		;6b08
	pop hl			;6b0b
	pop de			;6b0c
	inc hl			;6b0d
	ld d,(hl)			;6b0e
	push hl			;6b0f
	ld c,040h		;6b10
	call 05a69h		;6b12
	pop hl			;6b15
	pop bc			;6b16
	djnz L_6AFF		;6b17
	jr $-80		;6b19

; ----------------------------------------------------------------------
; DATOS grupos_6B1B: grupos [cuantos] y ternas [x][y][y2] que p01:6AFA pinta
;   con p00:5A69 (C = 0x40)
;   0x6b1b..0x6b30  (21 bytes)
DATA_grupos_6B1B:
	defb 001h,09ch,018h,098h,000h,000h,000h,002h,054h,028h,088h,084h,028h,088h,002h,03ch	; 6b1b  ........T(..(..<
	defb 018h,098h,06ch,018h,098h	; 6b2b

; ======================================================================
; CODIGO 0x6b30..0x6c2d  (253 bytes)
; ======================================================================


L_6B30:
	ld a,040h		;6b30
	call 08bc6h		;6b32
	cp 003h		;6b35
	ret nc			;6b37
	call L_6B7D		;6b38
	or a			;6b3b
	ld a,(0c303h)		;6b3c
	jr nz,L_6B4A		;6b3f
	cp 070h		;6b41
	jr nc,L_6B6A		;6b43
	cp 048h		;6b45
	ret c			;6b47
	jr L_6B53		;6b48
L_6B4A:
	cp 048h		;6b4a
	jr c,L_6B53		;6b4c
	cp 070h		;6b4e
	ret nc			;6b50
	jr L_6B6A		;6b51
L_6B53:
	ld a,(0dff4h)		;6b53
	dec a			;6b56
	ret z			;6b57
	ld de,01824h		;6b58
	ld c,040h		;6b5b
	call 05a69h		;6b5d
	ld de,09824h		;6b60
	ld c,040h		;6b63
	call 05a69h		;6b65
	jr L_6B78		;6b68
L_6B6A:
	ld a,(0dff4h)		;6b6a
	sub 002h		;6b6d
	ret z			;6b6f
	ld de,09864h		;6b70
	ld c,040h		;6b73
	call 05a69h		;6b75
L_6B78:
	ld hl,0dff4h		;6b78
	inc (hl)			;6b7b
	ret			;6b7c
L_6B7D:
	ld a,(0dff6h)		;6b7d
	cp 058h		;6b80
	ld a,000h		;6b82
	ret c			;6b84
	inc a			;6b85
	ret			;6b86
L_6B87:
	ld ix,0c300h		;6b87
	call L_6BA3		;6b8b
	ld a,(0c133h)		;6b8e
	and a			;6b91
	jr nz,L_6BED		;6b92
	call L_6C35		;6b94
	call L_6C41		;6b97
	call L_6D26		;6b9a
	call L_702E		;6b9d
	jp L_6C59		;6ba0
L_6BA3:
	xor a			;6ba3
	ld (0c160h),a		;6ba4
	call 04308h		;6ba7
	ex de,hl			;6baa
	call 0431fh		;6bab
	ld a,(0c148h)		;6bae
	and a			;6bb1
	jr z,L_6BCD		;6bb2
	cp 004h		;6bb4
	jr z,L_6BD9		;6bb6
	cp 007h		;6bb8
	ret nz			;6bba
	ld a,(hl)			;6bbb
	sub 060h		;6bbc
	cp 004h		;6bbe
	jr c,L_6BC7		;6bc0
	sub 015h		;6bc2
	cp 008h		;6bc4
	ret nc			;6bc6
L_6BC7:
	ld a,001h		;6bc7
	ld (0c160h),a		;6bc9
	ret			;6bcc
L_6BCD:
	ld a,(hl)			;6bcd
	cp 098h		;6bce
	jr z,L_6BC7		;6bd0
	sub 074h		;6bd2
	cp 006h		;6bd4
	jr c,L_6BC7		;6bd6
	ret			;6bd8
L_6BD9:
	ld a,(hl)			;6bd9
	sub 060h		;6bda
	cp 004h		;6bdc
	jr c,L_6BC7		;6bde
	sub 008h		;6be0
	cp 002h		;6be2
	jr c,L_6BC7		;6be4
	sub 020h		;6be6
	cp 002h		;6be8
	jr c,L_6BC7		;6bea
	ret			;6bec
L_6BED:
	ld hl,0c311h		;6bed
	dec (hl)			;6bf0
	jr nz,L_6BF8		;6bf1
	xor a			;6bf3
	ld (0c123h),a		;6bf4
	ret			;6bf7
L_6BF8:
	ld a,(hl)			;6bf8
	cp 04bh		;6bf9
	ld a,08ah		;6bfb
	call z,05488h		;6bfd
	ld a,(hl)			;6c00
	ld hl,0c306h		;6c01
	cp 030h		;6c04
	jr nc,L_6C14		;6c06
	ld c,a			;6c08
	ld a,(hl)			;6c09
	dec a			;6c0a
	ld a,c			;6c0b
	jr nz,L_6C14		;6c0c
	ld a,010h		;6c0e
	ld (0c310h),a		;6c10
	ret			;6c13
L_6C14:
	and 003h		;6c14
	jr nz,L_6C21		;6c16
	ld a,(hl)			;6c18
	ld de,06c2dh		;6c19
	call 0425ah		;6c1c
	ld a,(de)			;6c1f
	ld (hl),a			;6c20
L_6C21:
	ld a,(hl)			;6c21
	ld de,06c31h		;6c22
	call 0425ah		;6c25
	ld a,(de)			;6c28
	ld (0c310h),a		;6c29
	ret			;6c2c

; ----------------------------------------------------------------------
; DATOS direccion_6C2D: 4 bytes: la nueva direccion segun la de ahora
;   (p01:6C19)
;   0x6c2d..0x6c31  (4 bytes)
DATA_direccion_6C2D:
	defb 003h,002h,000h,001h	; 6c2d

; ----------------------------------------------------------------------
; DATOS pose_por_direccion: 4 bytes: la pose (0xC310) de cada direccion
;   (p01:6C22)
;   0x6c31..0x6c35  (4 bytes)
DATA_pose_por_direccion:
	defb 001h,004h,007h,00ah	; 6c31

; ======================================================================
; CODIGO 0x6c35..0x6d1e  (233 bytes)
; ======================================================================


L_6C35:
	ld a,(0c106h)		;6c35
	and 00fh		;6c38
	ret z			;6c3a
	ld a,001h		;6c3b
	ld (0c327h),a		;6c3d
	ret			;6c40
L_6C41:
	ld a,(0c300h)		;6c41
	cp 005h		;6c44
	ret nc			;6c46
	ld a,(0c106h)		;6c47
	bit 5,a		;6c4a
	jp nz,usa_shot2		;6c4c
	and 010h		;6c4f
	ret z			;6c51
	xor a			;6c52
	ld (0c324h),a		;6c53
	jp usa_shot1		;6c56
L_6C59:
	ld a,(0c146h)		;6c59
	and a			;6c5c
	ret z			;6c5d
	ld a,(0c209h)		;6c5e
	and a			;6c61
	ret nz			;6c62
	ld hl,0c129h		;6c63
	ld a,(hl)			;6c66
	sub 001h		;6c67
	daa			;6c69
	ld (hl),a			;6c6a
	inc l			;6c6b
	ld a,(hl)			;6c6c
	sbc a,000h		;6c6d
	ld (hl),a			;6c6f
	jr c,L_6C7B		;6c70
	jp nz,L_634E		;6c72
	dec e			;6c75
	ld a,(de)			;6c76
	and a			;6c77
	jp nz,L_634E		;6c78
L_6C7B:
	ld hl,04201h		;6c7b
	ld (0c309h),hl		;6c7e
	xor a			;6c81
	ld l,a			;6c82
	ld h,a			;6c83
	ld (0c129h),hl		;6c84
	ld (0c380h),a		;6c87
	inc a			;6c8a
	ld (0c133h),a		;6c8b
	ld a,050h		;6c8e
	ld (0c311h),a		;6c90
	ld a,00fh		;6c93
	call 05488h		;6c95
	jp L_634E		;6c98
L_6C9B:
	ld hl,0c163h		;6c9b
	ld a,(hl)			;6c9e
	and a			;6c9f
	ret z			;6ca0
	dec (hl)			;6ca1
	inc l			;6ca2
	call 04308h		;6ca3
	ld c,(hl)			;6ca6
	call L_6FD3		;6ca7
	jr c,L_6D01		;6caa
	ld a,(0c164h)		;6cac
	ld de,06d1eh		;6caf
	call 042ffh		;6cb2
	ex de,hl			;6cb5
	call 04308h		;6cb6
	ld a,e			;6cb9
	add a,l			;6cba
	ld l,a			;6cbb
	ld bc,0c303h		;6cbc
	cp 0a1h		;6cbf
	jr nc,L_6CFE		;6cc1
	cp 010h		;6cc3
	jr c,L_6CF9		;6cc5
	ld a,d			;6cc7
	add a,h			;6cc8
	ld h,a			;6cc9
	ld bc,0c305h		;6cca
	cp 0a1h		;6ccd
	jr nc,L_6CFE		;6ccf
	cp 010h		;6cd1
	jr c,L_6CF9		;6cd3
	ld a,(0c800h)		;6cd5
	and a			;6cd8
	jr z,L_6D18		;6cd9
	ld a,(0c801h)		;6cdb
	sub l			;6cde
	add a,010h		;6cdf
	cp 020h		;6ce1
	jr nc,L_6CEF		;6ce3
	ld a,(0c802h)		;6ce5
	sub h			;6ce8
	add a,010h		;6ce9
	cp 020h		;6ceb
	jr c,L_6D01		;6ced
L_6CEF:
	ld a,l			;6cef
	ld (0c303h),a		;6cf0
	ld a,h			;6cf3
	ld (0c305h),a		;6cf4
	jr L_6D18		;6cf7
L_6CF9:
	ld a,010h		;6cf9
	ld (bc),a			;6cfb
	jr L_6D01		;6cfc
L_6CFE:
	ld a,0a0h		;6cfe
	ld (bc),a			;6d00
L_6D01:
	call 04308h		;6d01
	ld a,e			;6d04
	and 0f8h		;6d05
	ld l,000h		;6d07
	ld h,a			;6d09
	ld (0c302h),hl		;6d0a
	ld a,d			;6d0d
	and 0f8h		;6d0e
	ld h,a			;6d10
	ld (0c304h),hl		;6d11
	xor a			;6d14
	ld (0c326h),a		;6d15
L_6D18:
	ld a,(0c300h)		;6d18
	cp 005h		;6d1b
	ret			;6d1d

; ----------------------------------------------------------------------
; DATOS pasos_6D1E: 4 parejas [dx][dy] segun 0xC164 (p01:6CAF)
;   0x6d1e..0x6d26  (8 bytes)
DATA_pasos_6D1E:
	defb 0fch,000h,004h,000h,000h,0fch,000h,004h	; 6d1e  ........

; ======================================================================
; CODIGO 0x6d26..0x6d3c  (22 bytes)
; ======================================================================


L_6D26:
	call L_6C9B		;6d26
	ret c			;6d29
	ld a,(0c161h)		;6d2a
	and a			;6d2d
	ld a,(0c300h)		;6d2e
	jr z,L_6D39		;6d31
	and a			;6d33
	jr z,L_6D39		;6d34
	cp 005h		;6d36
	ret c			;6d38
L_6D39:
	call 0425fh		;6d39

; ----------------------------------------------------------------------
; DATOS tabla_6D3C: 9 destinos del despachador de 0x425F (call en p01:6D39):
;   0x6D4E, 0x6D9D, 0x6DC9, 0x6DF8, 0x6E28, 0x7777, 0x7A77, 0x773D ...; lo
;   leen p01:6D39 (18 bytes)
;   0x6d3c..0x6d4e  (18 bytes)
DATA_tabla_6D3C:
	defb 04eh,06dh	; 6d3c
	defb 09dh,06dh	; 6d3e
	defb 0c9h,06dh	; 6d40
	defb 0f8h,06dh	; 6d42
	defb 028h,06eh	; 6d44
	defb 077h,077h	; 6d46
	defb 077h,07ah	; 6d48
	defb 03dh,077h	; 6d4a
	defb 04dh,077h	; 6d4c

; ======================================================================
; CODIGO 0x6d4e..0x6d99  (75 bytes)
; ======================================================================


L_6D4E:
	call L_6D6E		;6d4e
	ld a,(0c300h)		;6d51
	and a			;6d54
	ret nz			;6d55
	ld a,(0c107h)		;6d56
	rra			;6d59
	ld c,000h		;6d5a
	jr c,L_6D69		;6d5c
	inc c			;6d5e
	rra			;6d5f
	jr c,L_6D69		;6d60
	inc c			;6d62
	rra			;6d63
	jr c,L_6D69		;6d64
	inc c			;6d66
	rra			;6d67
	ret nc			;6d68
L_6D69:
	ld a,c			;6d69
	ld (0c306h),a		;6d6a
	ret			;6d6d
L_6D6E:
	ld a,(0c306h)		;6d6e
	cp 002h		;6d71
	jr c,L_6D7F		;6d73
L_6D75:
	call L_6E83		;6d75
	ret nc			;6d78
	call L_6E76		;6d79
	ret nc			;6d7c
	jr L_6D87		;6d7d
L_6D7F:
	call L_6E76		;6d7f
	ret nc			;6d82
	call L_6E83		;6d83
	ret nc			;6d86
L_6D87:
	xor a			;6d87
	ld (0c300h),a		;6d88
L_6D8B:
	ld a,(0c306h)		;6d8b
	ld hl,06d99h		;6d8e
	call 04255h		;6d91
	ld a,(hl)			;6d94
	ld (0c310h),a		;6d95
	ret			;6d98

; ----------------------------------------------------------------------
; DATOS pose_de_cada_direccion: 4 bytes: la pose (0xC310) segun la direccion
;   0xC306 (p01:6D8E)
;   0x6d99..0x6d9d  (4 bytes)
DATA_pose_de_cada_direccion:
	defb 001h,004h,006h,009h	; 6d99

; ======================================================================
; CODIGO 0x6d9d..0x6e72  (213 bytes)
; ======================================================================


L_6D9D:
	call L_6E58		;6d9d
	ld a,(0c107h)		;6da0
	and 002h		;6da3
	jr z,L_6DB1		;6da5
	ld a,(0c327h)		;6da7
	and a			;6daa
	jr z,L_6DB1		;6dab
	call L_6E99		;6dad
	ret nc			;6db0
L_6DB1:
	xor a			;6db1
	call L_6F49		;6db2
	jr c,$-46		;6db5
	ld hl,(0c302h)		;6db7
	call L_6F17		;6dba
	ld (0c302h),hl		;6dbd
	ret nz			;6dc0
	ld a,(0c327h)		;6dc1
	and a			;6dc4
	jr z,$-80		;6dc5
	jr $-72		;6dc7
L_6DC9:
	call L_6E58		;6dc9
	ld a,(0c107h)		;6dcc
	and 001h		;6dcf
	jr z,L_6DDD		;6dd1
	ld a,(0c327h)		;6dd3
	and a			;6dd6
	jr z,L_6DDD		;6dd7
	call L_6E90		;6dd9
	ret nc			;6ddc
L_6DDD:
	ld a,001h		;6ddd
	call L_6F49		;6ddf
	jr c,$-91		;6de2
	ld hl,(0c302h)		;6de4
	call L_6F17		;6de7
	ld (0c302h),hl		;6dea
	ret nz			;6ded
	ld a,(0c327h)		;6dee
	and a			;6df1
	jp z,L_6D75		;6df2
	jp L_6D7F		;6df5
L_6DF8:
	call L_6E58		;6df8
	ld a,(0c107h)		;6dfb
	and 008h		;6dfe
	jr z,L_6E0C		;6e00
	ld a,(0c327h)		;6e02
	and a			;6e05
	jr z,L_6E0C		;6e06
	call L_6EAD		;6e08
	ret nc			;6e0b
L_6E0C:
	ld a,002h		;6e0c
	call L_6F49		;6e0e
	jp c,L_6D87		;6e11
	ld hl,(0c304h)		;6e14
	call L_6F17		;6e17
	ld (0c304h),hl		;6e1a
	ret nz			;6e1d
	ld a,(0c327h)		;6e1e
	and a			;6e21
	jp z,L_6D7F		;6e22
	jp L_6D75		;6e25
L_6E28:
	call L_6E58		;6e28
	ld a,(0c107h)		;6e2b
	and 004h		;6e2e
	jr z,L_6E3C		;6e30
	ld a,(0c327h)		;6e32
	and a			;6e35
	jr z,L_6E3C		;6e36
	call L_6EA3		;6e38
	ret nc			;6e3b
L_6E3C:
	ld a,003h		;6e3c
	call L_6F49		;6e3e
	jp c,L_6D87		;6e41
	ld hl,(0c304h)		;6e44
	call L_6F17		;6e47
	ld (0c304h),hl		;6e4a
	ret nz			;6e4d
	ld a,(0c327h)		;6e4e
	and a			;6e51
	jp z,L_6D7F		;6e52
	jp L_6D75		;6e55
L_6E58:
	ld hl,0c311h		;6e58
	inc (hl)			;6e5b
	ld a,(hl)			;6e5c
	rra			;6e5d
	rra			;6e5e
	and 003h		;6e5f
	ld hl,06e72h		;6e61
	call 04255h		;6e64
	ld a,(0c306h)		;6e67
	ld c,a			;6e6a
	add a,a			;6e6b
	add a,c			;6e6c
	add a,(hl)			;6e6d
	ld (0c310h),a		;6e6e
	ret			;6e71

; ----------------------------------------------------------------------
; DATOS paso_de_la_pose: 4 bytes que p01:6E61 suma a 3*direccion para la pose
;   (0xC310)
;   0x6e72..0x6e76  (4 bytes)
DATA_paso_de_la_pose:
	defb 000h,001h,002h,001h	; 6e72

; ======================================================================
; CODIGO 0x6e76..0x7026  (432 bytes)
; ======================================================================


L_6E76:
	ld a,(0c107h)		;6e76
	and 00ch		;6e79
	scf			;6e7b
	ret pe			;6e7c
	and 008h		;6e7d
	jr nz,L_6EAD		;6e7f
	jr L_6EA3		;6e81
L_6E83:
	ld a,(0c107h)		;6e83
	and 003h		;6e86
	scf			;6e88
	ret pe			;6e89
	and 001h		;6e8a
	jr nz,L_6E90		;6e8c
	jr L_6E99		;6e8e
L_6E90:
	xor a			;6e90
	call L_6F49		;6e91
	ret c			;6e94
	ld a,001h		;6e95
	jr L_6EB5		;6e97
L_6E99:
	ld a,001h		;6e99
	call L_6F49		;6e9b
	ret c			;6e9e
	ld a,002h		;6e9f
	jr L_6EB5		;6ea1
L_6EA3:
	ld a,002h		;6ea3
	call L_6F49		;6ea5
	ret c			;6ea8
	ld a,003h		;6ea9
	jr L_6EB5		;6eab
L_6EAD:
	ld a,003h		;6ead
	call L_6F49		;6eaf
	ret c			;6eb2
	ld a,004h		;6eb3
L_6EB5:
	cp (ix+000h)		;6eb5
	jr z,L_6EC9		;6eb8
	ld (ix+000h),a		;6eba
	dec a			;6ebd
	ld (0c306h),a		;6ebe
	xor a			;6ec1
	ld (0c311h),a		;6ec2
	ld (0c327h),a		;6ec5
	ret			;6ec8
L_6EC9:
	ld a,(0c300h)		;6ec9
	cp 003h		;6ecc
	ld hl,0c302h		;6ece
	jr c,$+4		;6ed1
	ld hl,00004h		;6ed3
	ld (0e800h),hl		;6ed6
	ld e,(hl)			;6ed9
	inc hl			;6eda
	ld d,(hl)			;6edb
	ex de,hl			;6edc
	ld c,a			;6edd
	ld de,(0c16bh)		;6ede
	rr c		;6ee2
	call c,L_71F8		;6ee4
	ld a,(0c326h)		;6ee7
	and a			;6eea
	ld b,a			;6eeb
	ret z			;6eec
	ret m			;6eed
L_6EEE:
	ld a,h			;6eee
	and 007h		;6eef
	or l			;6ef1
	jr z,L_6EF7		;6ef2
	add hl,de			;6ef4
	djnz L_6EEE		;6ef5
L_6EF7:
	ex de,hl			;6ef7
	ld hl,(0e800h)		;6ef8
	ld (hl),e			;6efb
	inc hl			;6efc
	ld (hl),d			;6efd
	xor a			;6efe
	ret			;6eff
L_6F00:
	ld de,00040h		;6f00
	ld a,(0c160h)		;6f03
	and a			;6f06
	ret z			;6f07
	ld a,(0c148h)		;6f08
	cp 004h		;6f0b
	ret nz			;6f0d
	ld a,(0c142h)		;6f0e
	and a			;6f11
	ret nz			;6f12
	ld de,00020h		;6f13
	ret			;6f16
L_6F17:
	ld b,(ix+007h)		;6f17
	inc b			;6f1a
	call L_6F00		;6f1b
	ld (0c16bh),de		;6f1e
	ld a,(0c300h)		;6f22
	rra			;6f25
	call c,L_71F8		;6f26
L_6F29:
	add hl,de			;6f29
	ld a,h			;6f2a
	and 007h		;6f2b
	or l			;6f2d
	jr z,L_6F35		;6f2e
	djnz L_6F29		;6f30
	or 0ffh		;6f32
	ret			;6f34
L_6F35:
	dec b			;6f35
	ld a,b			;6f36
	ld (0c326h),a		;6f37
	xor a			;6f3a
	ret			;6f3b
L_6F3C:
	ld a,c			;6f3c
	cp 002h		;6f3d
	jr c,L_6F45		;6f3f
	ld a,d			;6f41
	and 007h		;6f42
	ret			;6f44
L_6F45:
	ld a,e			;6f45
	and 007h		;6f46
	ret			;6f48
L_6F49:
	ld c,a			;6f49
	push bc			;6f4a
	ld a,001h		;6f4b
	ld (0c173h),a		;6f4d
	call 04308h		;6f50
	call L_6F3C		;6f53
	call z,L_6FD3		;6f56
	pop bc			;6f59
	ret c			;6f5a
	ld a,(0c800h)		;6f5b
	and a			;6f5e
	ret z			;6f5f
	call 04308h		;6f60
	ld hl,(0c801h)		;6f63
	ld a,(0c800h)		;6f66
	and a			;6f69
	ret z			;6f6a
	ld a,c			;6f6b
	and a			;6f6c
	jr z,L_6FAF		;6f6d
	dec a			;6f6f
	jr z,L_6F91		;6f70
	dec a			;6f72
	jr z,L_6F83		;6f73
	ld a,e			;6f75
	sub l			;6f76
	add a,00ah		;6f77
	cp 014h		;6f79
	ret nc			;6f7b
	ld a,d			;6f7c
	sub h			;6f7d
	add a,014h		;6f7e
	ret nc			;6f80
	jr L_6FBD		;6f81
L_6F83:
	ld a,e			;6f83
	sub l			;6f84
	add a,00ah		;6f85
	cp 014h		;6f87
	ret nc			;6f89
	ld a,d			;6f8a
	sub h			;6f8b
	cp 014h		;6f8c
	ret nc			;6f8e
	jr L_6FBD		;6f8f
L_6F91:
	ld a,d			;6f91
	sub h			;6f92
	add a,00ah		;6f93
	cp 014h		;6f95
	ret nc			;6f97
	ld a,e			;6f98
	sub l			;6f99
	add a,014h		;6f9a
	ret nc			;6f9c
	ld a,(0c125h)		;6f9d
	cp 005h		;6fa0
	jr nz,L_6FBD		;6fa2
	ld a,l			;6fa4
	cp 098h		;6fa5
	jr c,L_6FBD		;6fa7
L_6FA9:
	xor a			;6fa9
	ld (0c173h),a		;6faa
	scf			;6fad
	ret			;6fae
L_6FAF:
	ld a,d			;6faf
	sub h			;6fb0
	add a,00ah		;6fb1
	cp 014h		;6fb3
	ret nc			;6fb5
	ld a,e			;6fb6
	sub l			;6fb7
	cp 014h		;6fb8
	ret nc			;6fba
	jr L_6FBD		;6fbb
L_6FBD:
	ld de,(0c801h)		;6fbd
	ld a,e			;6fc1
	add a,004h		;6fc2
	and 0f8h		;6fc4
	ld e,a			;6fc6
	ld a,d			;6fc7
	add a,004h		;6fc8
	and 0f8h		;6fca
	ld d,a			;6fcc
	call L_6FD3		;6fcd
	ret nc			;6fd0
	jr L_6FA9		;6fd1
L_6FD3:
	push de			;6fd3
	ld de,07026h		;6fd4
	ld a,c			;6fd7
	call 042ffh		;6fd8
	pop hl			;6fdb
	ld (0e808h),hl		;6fdc
	ld a,l			;6fdf
	add a,e			;6fe0
	ld l,a			;6fe1
	ld a,h			;6fe2
	add a,d			;6fe3
	ld h,a			;6fe4
	call 0431fh		;6fe5
	call L_7011		;6fe8
	ret c			;6feb
	ld a,c			;6fec
	cp 002h		;6fed
	jr c,L_7005		;6fef
	ld bc,00020h		;6ff1
	add hl,bc			;6ff4
	call L_7011		;6ff5
	ret c			;6ff8
	ld a,(0e808h)		;6ff9
	and 007h		;6ffc
	ret z			;6ffe
	ld bc,00020h		;6fff
	add hl,bc			;7002
	jr L_7011		;7003
L_7005:
	inc hl			;7005
	call L_7011		;7006
	ret c			;7009
	ld a,(0e809h)		;700a
	and 007h		;700d
	ret z			;700f
	inc hl			;7010
L_7011:
	ld a,(0c148h)		;7011
	ld de,073d0h		;7014
	call 0425ah		;7017
	ld a,(hl)			;701a
	and a			;701b
	ret z			;701c
	cp 0f0h		;701d
	scf			;701f
	ret z			;7020
	dec a			;7021
	ex de,hl			;7022
	cp (hl)			;7023
	ex de,hl			;7024
	ret			;7025

; ----------------------------------------------------------------------
; DATOS pasos_7026: 4 parejas [dx][dy] segun C (p01:6FD4)
;   0x7026..0x702e  (8 bytes)
DATA_pasos_7026:
	defb 0f1h,0f8h,00fh,0f8h,0f8h,0f1h,0f8h,00fh	; 7026  ........

; ======================================================================
; CODIGO 0x702e..0x7077  (73 bytes)
; ======================================================================


L_702E:
	ld hl,0c325h		;702e
	ld a,(hl)			;7031
	and a			;7032
	ret z			;7033
	ld de,04201h		;7034
	dec (hl)			;7037
	jr z,L_7041		;7038
	bit 0,(hl)		;703a
	jr z,L_7041		;703c
	ld de,04402h		;703e
L_7041:
	ld (0c309h),de		;7041
	ret			;7045
L_7046:
	ld hl,04201h		;7046
	ld (0c309h),hl		;7049
	xor a			;704c
	ld (0c310h),a		;704d
	ld (0c302h),a		;7050
	ld (0c304h),a		;7053
	ld hl,0c380h		;7056
	ld b,040h		;7059
L_705B:
	ld (hl),000h		;705b
	inc hl			;705d
	djnz L_705B		;705e
	ld hl,(0c321h)		;7060
	ld a,l			;7063
	ld (0c303h),a		;7064
	ld a,h			;7067
	ld (0c305h),a		;7068
	ld a,(0c323h)		;706b
	ld (0c306h),a		;706e
	ret			;7071
L_7072:
	sub 081h		;7072
	call 0425fh		;7074

; ----------------------------------------------------------------------
; DATOS tabla_7077: 17 destinos del despachador de 0x425F (call en p01:7074):
;   0x7AE7, 0x7BE0, 0x7099, 0x7099, 0xB889, 0x7099, 0xBEE0, 0xB8E1 ...; lo
;   leen p01:7074 (34 bytes)
;   0x7077..0x7099  (34 bytes)
DATA_tabla_7077:
	defb 0e7h,07ah	; 7077
	defb 0e0h,07bh	; 7079
	defb 099h,070h	; 707b
	defb 099h,070h	; 707d
	defb 089h,0b8h	; 707f
	defb 099h,070h	; 7081
	defb 0e0h,0beh	; 7083
	defb 0e1h,0b8h	; 7085
	defb 099h,070h	; 7087
	defb 094h,0b9h	; 7089
	defb 099h,070h	; 708b
	defb 049h,0b8h	; 708d
	defb 0d8h,0bfh	; 708f
	defb 048h,07bh	; 7091
	defb 06fh,07bh	; 7093
	defb 099h,070h	; 7095
	defb 099h,070h	; 7097

; ======================================================================
; CODIGO 0x7099..0x714a  (177 bytes)
; ======================================================================


L_7099:
	ret			;7099
L_709A:
	ld a,c			;709a
	ld (0e800h),a		;709b
	ld (0e801h),de		;709e
	push ix		;70a2
	call L_70AD		;70a4
	push ix		;70a7
	pop hl			;70a9
	pop ix		;70aa
	ret			;70ac
L_70AD:
	ld hl,0d000h		;70ad
	ld b,00dh		;70b0
	xor a			;70b2
	ld de,00080h		;70b3
L_70B6:
	cp (hl)			;70b6
	jr z,L_70BE		;70b7
	add hl,de			;70b9
	djnz L_70B6		;70ba
	xor a			;70bc
	ret			;70bd
L_70BE:
	push hl			;70be
	pop ix		;70bf
	ld (0e804h),hl		;70c1
	ld c,002h		;70c4
	ld (ix+020h),c		;70c6
	ld de,00000h		;70c9
	ld a,(0c132h)		;70cc
	and a			;70cf
	ld hl,0e618h		;70d0
	ld b,01ah		;70d3
	jr z,L_70DC		;70d5
	ld hl,0e628h		;70d7
	ld b,016h		;70da
L_70DC:
	ld a,(hl)			;70dc
	cp 0e0h		;70dd
	jr nz,L_70E9		;70df
	inc (hl)			;70e1
	call 05bc6h		;70e2
	inc e			;70e5
	dec c			;70e6
	jr z,L_70F2		;70e7
L_70E9:
	inc d			;70e9
	inc l			;70ea
	inc l			;70eb
	inc l			;70ec
	inc l			;70ed
	djnz L_70DC		;70ee
	xor a			;70f0
	ret			;70f1
L_70F2:
	ld hl,(0e804h)		;70f2
	ld a,(0e800h)		;70f5
	ld (hl),a			;70f8
	xor a			;70f9
	inc l			;70fa
	ld (hl),a			;70fb
	ld de,(0e801h)		;70fc
	inc l			;7100
	ld (hl),a			;7101
	inc l			;7102
	ld (hl),e			;7103
	inc l			;7104
	ld (hl),a			;7105
	inc l			;7106
	ld (hl),d			;7107
	inc l			;7108
	ld (hl),a			;7109
	ld (ix+00ch),a		;710a
	ld (ix+00eh),001h		;710d
	ld (ix+010h),a		;7111
	ld (ix+011h),a		;7114
	ld (ix+01eh),000h		;7117
	di			;711b
	ld a,006h		;711c
	call 05d9ch		;711e
	ld a,(ix+000h)		;7121
	sub 080h		;7124
	ld de,0bc07h		;7126
	call 042ffh		;7129
	ld hl,(0e804h)		;712c
	set 5,l		;712f
	ld b,(hl)			;7131
	ld a,005h		;7132
	add a,l			;7134
	ld l,a			;7135
L_7136:
	ld a,(de)			;7136
	ld (hl),a			;7137
	inc de			;7138
	ld a,l			;7139
	add a,005h		;713a
	ld l,a			;713c
	djnz L_7136		;713d
	call 042bch		;713f
	ld a,(ix+000h)		;7142
	sub 081h		;7145
	call 0425fh		;7147

; ----------------------------------------------------------------------
; DATOS tabla_714A: 17 destinos del despachador de 0x425F (call en p01:7147):
;   0x7AD0, 0x7BCF, 0x716C, 0xB8B6, 0xB86D, 0x716C, 0xB92D, 0xB92D ...; lo
;   leen p01:7147 (34 bytes)
;   0x714a..0x716c  (34 bytes)
DATA_tabla_714A:
	defb 0d0h,07ah	; 714a
	defb 0cfh,07bh	; 714c
	defb 06ch,071h	; 714e
	defb 0b6h,0b8h	; 7150
	defb 06dh,0b8h	; 7152
	defb 06ch,071h	; 7154
	defb 02dh,0b9h	; 7156
	defb 02dh,0b9h	; 7158
	defb 0f4h,0beh	; 715a
	defb 0b7h,0b9h	; 715c
	defb 06ch,071h	; 715e
	defb 038h,0b8h	; 7160
	defb 0b2h,0bfh	; 7162
	defb 03ch,07bh	; 7164
	defb 058h,07bh	; 7166
	defb 0d0h,0b8h	; 7168
	defb 0d4h,0b8h	; 716a

; ======================================================================
; CODIGO 0x716c..0x721e  (178 bytes)
; ======================================================================


L_716C:
	ret			;716c
L_716D:
	ld a,080h		;716d
L_716F:
	ld e,(ix+003h)		;716f
	ld d,(ix+005h)		;7172
	ld c,a			;7175
	ld a,(0c126h)		;7176
	add a,a			;7179
	add a,a			;717a
	add a,a			;717b
	add a,c			;717c
	ld (0e80fh),a		;717d
	call L_71BC		;7180
L_7183:
	ld a,(0e815h)		;7183
L_7186:
	ld e,a			;7186
	ld d,000h		;7187
	ld a,e			;7189
	sub 03fh		;718a
	neg		;718c
	ld hl,0725eh		;718e
	push hl			;7191
	add hl,de			;7192
	ld c,(hl)			;7193
	pop hl			;7194
	ld e,a			;7195
	add hl,de			;7196
	ld a,(hl)			;7197
	ld (0e814h),a		;7198
	ld e,c			;719b
	call L_7200		;719c
	ld a,(0e810h)		;719f
	and a			;71a2
	call nz,L_71F8		;71a3
	ld (0e812h),de		;71a6
	ld a,(0e814h)		;71aa
	ld e,a			;71ad
	call L_7200		;71ae
	ld a,(0e811h)		;71b1
	and a			;71b4
	call nz,L_71F8		;71b5
	ld hl,(0e812h)		;71b8
	ret			;71bb
L_71BC:
	ld a,(0c303h)		;71bc
	ld (0e800h),a		;71bf
	ld a,(0c305h)		;71c2
	ld (0e801h),a		;71c5
L_71C8:
	ld hl,0e810h		;71c8
	ld (hl),000h		;71cb
	ld a,(0e800h)		;71cd
	sub e			;71d0
	jr nc,L_71D6		;71d1
	neg		;71d3
	inc (hl)			;71d5
L_71D6:
	inc hl			;71d6
	ld (hl),000h		;71d7
	rra			;71d9
	rra			;71da
	and 038h		;71db
	ld e,a			;71dd
	ld a,(0e801h)		;71de
	sub d			;71e1
	jr nc,L_71E7		;71e2
	neg		;71e4
	inc (hl)			;71e6
L_71E7:
	rlca			;71e7
	rlca			;71e8
	rlca			;71e9
	and 007h		;71ea
	add a,e			;71ec
	ld hl,0721eh		;71ed
	call 04255h		;71f0
	ld a,(hl)			;71f3
	ld (0e815h),a		;71f4
	ret			;71f7
L_71F8:
	ld a,d			;71f8
	cpl			;71f9
	ld d,a			;71fa
	ld a,e			;71fb
	cpl			;71fc
	ld e,a			;71fd
	inc de			;71fe
	ret			;71ff
L_7200:
	ld a,(0e80fh)		;7200
	ld h,a			;7203
	call L_7212		;7204
	xor a			;7207
	add hl,hl			;7208
	adc a,a			;7209
	add hl,hl			;720a
	adc a,a			;720b
	add hl,hl			;720c
	adc a,a			;720d
	ld l,h			;720e
	ld h,a			;720f
	ex de,hl			;7210
	ret			;7211
L_7212:
	ld b,008h		;7212
	ld l,000h		;7214
	ld d,l			;7216
L_7217:
	add hl,hl			;7217
	jr nc,L_721B		;7218
	add hl,de			;721a
L_721B:
	djnz L_7217		;721b
	ret			;721d

; ----------------------------------------------------------------------
; DATOS razon_para_apuntar: 8 filas de 8: la razon entre las dos distancias en
;   32avos (la diagonal es 0x20); p01:71ED, y p00:5235 desde 0x7230 o 0x7250
;   0x721e..0x725e  (64 bytes)
DATA_razon_para_apuntar:
	defb 020h,008h,004h,003h,002h,002h,001h,001h,038h,020h,015h,00fh,00ch,009h,008h,007h	; 721e   .......8 ......
	defb 03bh,02bh,020h,019h,014h,010h,00eh,00ch,03dh,031h,027h,020h,01ah,016h,013h,011h	; 722e  ;+ .....=1' ....
	defb 03dh,034h,02ch,025h,020h,01ch,018h,015h,03eh,036h,02fh,029h,024h,020h,01ch,019h	; 723e  =4,% ...>6/)$ ..
	defb 03eh,038h,032h,02ch,028h,023h,020h,01dh,03eh,039h,034h,02fh,02ah,026h,023h,020h	; 724e  >82,(# .>94/*&#

; ----------------------------------------------------------------------
; DATOS cuarto_de_seno: 64 bytes: un cuarto de seno de 0 a 0xFF; p01:718E
;   0x725e..0x729e  (64 bytes)
DATA_cuarto_de_seno:
	defb 000h,006h,00ch,012h,019h,01fh,026h,02ch,032h,038h,03eh,044h,04ah,050h,056h,05ch	; 725e  ......&,28>DJPV\
	defb 062h,068h,06dh,073h,079h,07eh,084h,089h,08eh,093h,099h,09eh,0a2h,0a7h,0ach,0b1h	; 726e  bhmsy~..........
	defb 0b5h,0b9h,0beh,0c2h,0c6h,0cah,0ceh,0d1h,0d5h,0d8h,0dch,0dfh,0e2h,0e5h,0e7h,0eah	; 727e  ................
	defb 0edh,0efh,0f1h,0f3h,0f5h,0f7h,0f8h,0fah,0fbh,0fch,0fdh,0feh,0feh,0ffh,0ffh,0ffh	; 728e  ................

; ======================================================================
; CODIGO 0x729e..0x7345  (167 bytes)
; ======================================================================


L_729E:
	ld a,c			;729e
	ld (0e808h),a		;729f
	bit 1,b		;72a2
	jr nz,L_72AE		;72a4
	ld a,(0c303h)		;72a6
	ld e,a			;72a9
	ld a,(0c305h)		;72aa
	ld d,a			;72ad
L_72AE:
	bit 0,b		;72ae
	jr nz,L_72B8		;72b0
	ld l,(ix+003h)		;72b2
	ld h,(ix+005h)		;72b5
L_72B8:
	ld (0e806h),hl		;72b8
	ld l,c			;72bb
	ld a,(0e806h)		;72bc
	sub e			;72bf
	ld c,000h		;72c0
	jr nc,L_72C8		;72c2
	ld c,002h		;72c4
	neg		;72c6
L_72C8:
	ld h,a			;72c8
	ld a,(0e807h)		;72c9
	sub d			;72cc
	ld b,003h		;72cd
	jr nc,L_72D5		;72cf
	ld b,001h		;72d1
	neg		;72d3
L_72D5:
	cp h			;72d5
	ld a,c			;72d6
	ld c,b			;72d7
	jr c,L_72DC		;72d8
	ld c,a			;72da
	ld a,b			;72db
L_72DC:
	ld e,l			;72dc
	call L_730C		;72dd
	ret nc			;72e0
	ld b,a			;72e1
	ld a,(0e808h)		;72e2
	ld e,a			;72e5
	ld a,c			;72e6
	ld c,b			;72e7
	call L_730C		;72e8
	jr nc,L_7301		;72eb
	add a,002h		;72ed
	and 003h		;72ef
	ex af,af'			;72f1
	ld a,(0e808h)		;72f2
	ld e,a			;72f5
	ex af,af'			;72f6
	call L_730C		;72f7
	jr nc,L_7301		;72fa
	ld a,c			;72fc
	add a,002h		;72fd
	and 003h		;72ff
L_7301:
	scf			;7301
	ret			;7302
L_7303:
	ld l,(ix+003h)		;7303
	ld h,(ix+005h)		;7306
L_7309:
	ld (0e806h),hl		;7309
L_730C:
	ld (0e805h),a		;730c
	rra			;730f
	jr c,L_731C		;7310
	ld a,(0e806h)		;7312
	and 007h		;7315
	jr z,L_7324		;7317
	jp L_73CB		;7319
L_731C:
	ld a,(0e807h)		;731c
	and 007h		;731f
	jp nz,L_73CB		;7321
L_7324:
	ld a,00ah		;7324
	ld b,002h		;7326
	dec e			;7328
	jr nz,L_732F		;7329
	ld a,014h		;732b
	ld b,004h		;732d
L_732F:
	ld (0e800h),a		;732f
	ld hl,073d0h		;7332
	ld a,(0c148h)		;7335
	call 04255h		;7338
	ld a,(hl)			;733b
	ld (0e802h),a		;733c
	ld a,(0e805h)		;733f
	call 0425fh		;7342

; ----------------------------------------------------------------------
; DATOS tabla_7345: 4 destinos del despachador de 0x425F (call en p01:7342):
;   0x734D, 0x73BB, 0x737C, 0x7389; lo leen p01:7342 (8 bytes)
;   0x7345..0x734d  (8 bytes)
DATA_tabla_7345:
	defb 04dh,073h	; 7345
	defb 0bbh,073h	; 7347
	defb 07ch,073h	; 7349
	defb 089h,073h	; 734b

; ======================================================================
; CODIGO 0x734d..0x73d0  (131 bytes)
; ======================================================================


L_734D:
	ld a,(0e800h)		;734d
	ld d,a			;7350
	ld a,(0e806h)		;7351
	sub d			;7354
	ld (0e803h),a		;7355
L_7358:
	ld a,(0e807h)		;7358
	sub 008h		;735b
	bit 2,b		;735d
	jr z,L_7363		;735f
	sub 008h		;7361
L_7363:
	ld (0e804h),a		;7363
	ld hl,(0e803h)		;7366
	call 0431fh		;7369
L_736C:
	ld a,(0e802h)		;736c
	cp (hl)			;736f
	jr nc,L_73C8		;7370
	ld a,(hl)			;7372
	cp 0f0h		;7373
	jr z,L_73C8		;7375
	inc hl			;7377
	djnz L_736C		;7378
	jr L_73CB		;737a
L_737C:
	ld a,(0e800h)		;737c
	ld d,a			;737f
	ld a,(0e806h)		;7380
	add a,d			;7383
	ld (0e803h),a		;7384
	jr L_7358		;7387
L_7389:
	ld a,(0e800h)		;7389
	ld d,a			;738c
	ld a,(0e807h)		;738d
	sub d			;7390
	ld (0e804h),a		;7391
L_7394:
	ld a,(0e806h)		;7394
	sub 008h		;7397
	bit 2,b		;7399
	jr z,L_739F		;739b
	sub 008h		;739d
L_739F:
	ld (0e803h),a		;739f
	ld hl,(0e803h)		;73a2
	call 0431fh		;73a5
L_73A8:
	ld a,(0e802h)		;73a8
	cp (hl)			;73ab
	jr nc,L_73C8		;73ac
	ld a,(hl)			;73ae
	cp 0f0h		;73af
	jr z,L_73C8		;73b1
	ld de,00020h		;73b3
	add hl,de			;73b6
	djnz L_73A8		;73b7
	jr L_73CB		;73b9
L_73BB:
	ld a,(0e800h)		;73bb
	ld d,a			;73be
	ld a,(0e807h)		;73bf
	add a,d			;73c2
	ld (0e804h),a		;73c3
	jr L_7394		;73c6
L_73C8:
	scf			;73c8
	jr L_73CC		;73c9
L_73CB:
	or a			;73cb
L_73CC:
	ld a,(0e805h)		;73cc
	ret			;73cf

; ----------------------------------------------------------------------
; DATOS byte_por_juego_de_dibujos: un byte por juego de dibujos (0xC148, 13):
;   lo que p01:7332 pone en 0xE802
;   0x73d0..0x73dd  (13 bytes)
DATA_byte_por_juego_de_dibujos:
	defb 05fh,05fh,05fh,05fh,05fh,08fh,08fh,05fh,08fh,05fh,05fh,05fh,05fh	; 73d0  _____.._.____

; ======================================================================
; CODIGO 0x73dd..0x742f  (82 bytes)
; ======================================================================


L_73DD:
	call L_73E4		;73dd
	jp c,L_7423		;73e0
	ret			;73e3
L_73E4:
	ld a,(0c148h)		;73e4
	ld hl,073d0h		;73e7
	call 04255h		;73ea
	ld c,(hl)			;73ed
	ld h,(ix+005h)		;73ee
	ld l,(ix+003h)		;73f1
	push hl			;73f4
	ld b,000h		;73f5
	ld a,l			;73f7
	sub d			;73f8
	ld l,a			;73f9
	call 0431fh		;73fa
	ld a,(hl)			;73fd
	cp c			;73fe
	pop hl			;73ff
	ret c			;7400
	push hl			;7401
	inc b			;7402
	ld a,h			;7403
	add a,d			;7404
	ld h,a			;7405
	call 0431fh		;7406
	ld a,(hl)			;7409
	cp c			;740a
	pop hl			;740b
	ret c			;740c
	push hl			;740d
	inc b			;740e
	ld a,l			;740f
	add a,d			;7410
	ld l,a			;7411
	call 0431fh		;7412
	ld a,(hl)			;7415
	cp c			;7416
	pop hl			;7417
	ret c			;7418
	inc b			;7419
	ld a,h			;741a
	sub d			;741b
	ld h,a			;741c
	call 0431fh		;741d
	ld a,(hl)			;7420
	cp c			;7421
	ret			;7422
L_7423:
	ld a,008h		;7423
	call 05488h		;7425
	dec (ix+017h)		;7428
	ld a,b			;742b
	call 0425fh		;742c

; ----------------------------------------------------------------------
; DATOS tabla_742F: 4 destinos del despachador de 0x425F (call en p01:742C):
;   0x7437, 0x7446, 0x7455, 0x745F; lo leen p01:742C (8 bytes)
;   0x742f..0x7437  (8 bytes)
DATA_tabla_742F:
	defb 037h,074h	; 742f
	defb 046h,074h	; 7431
	defb 055h,074h	; 7433
	defb 05fh,074h	; 7435

; ======================================================================
; CODIGO 0x7437..0x747f  (72 bytes)
; ======================================================================


L_7437:
	ld de,00200h		;7437
	call 04311h		;743a
	ld a,002h		;743d
L_743F:
	add a,(ix+003h)		;743f
	ld (ix+003h),a		;7442
	ret			;7445
L_7446:
	ld de,0fe00h		;7446
	call 04318h		;7449
	ld a,0feh		;744c
L_744E:
	add a,(ix+005h)		;744e
	ld (ix+005h),a		;7451
	ret			;7454
L_7455:
	ld de,0fe00h		;7455
	call 04311h		;7458
	ld a,0feh		;745b
	jr L_743F		;745d
L_745F:
	ld de,00200h		;745f
	call 04318h		;7462
	ld a,002h		;7465
	jr L_744E		;7467

; ----------------------------------------------------------------------
; El arma de SHOT1 (0xC140): 0 el puno; 1-3 golpes 0x11-0x13; 4 solo en las
; pantallas 0x63-0x89 (fuera, SHOT1 vuelve a 0); 5 solo con LEVEL (0xC12E)
; 5 o mas; 6 y 7 el golpe 0x17; 8 gasta uno de 0xC347; 9 uno de 0xC348;
; 0x0A uno de 0xC349; 0x0B el golpe 0x1B; 0x1F gasta uno de 0xC35E.
; ----------------------------------------------------------------------
usa_shot1:
	ld a,(0c132h)		;7469
	and a			;746c
	ld a,(0c140h)		;746d
	jr z,L_7474		;7470
	and a			;7472
	ret nz			;7473
L_7474:
	cp 01fh		;7474   ; 0x1F: p01:74D4
	jp z,lanza_un_0x1F		;7476
	cp 00ch		;7479
	ret nc			;747b
	call 0425fh		;747c

; ----------------------------------------------------------------------
; DATOS tabla_747F: 12 destinos del despachador de 0x425F (call en p01:747C):
;   0x7497, 0x749C, 0x74A1, 0x74A6, 0x74AB, 0x74C5, 0x74D0, 0x74D0 ...; lo
;   leen p01:747C (24 bytes)
;   0x747f..0x7497  (24 bytes)
DATA_tabla_747F:
	defb 097h,074h	; 747f
	defb 09ch,074h	; 7481
	defb 0a1h,074h	; 7483
	defb 0a6h,074h	; 7485
	defb 0abh,074h	; 7487
	defb 0c5h,074h	; 7489
	defb 0d0h,074h	; 748b
	defb 0d0h,074h	; 748d
	defb 0dbh,074h	; 748f
	defb 0fah,074h	; 7491
	defb 013h,075h	; 7493
	defb 02bh,075h	; 7495

; ======================================================================
; CODIGO 0x7497..0x75d6  (319 bytes)
; ======================================================================


golpe_del_puno:
	ld c,010h		;7497
	jp L_7534		;7499
L_749C:
	ld c,011h		;749c
	jp L_7534		;749e
L_74A1:
	ld c,012h		;74a1
	jp L_7534		;74a3
L_74A6:
	ld c,013h		;74a6
	jp L_7534		;74a8
golpe_del_4:
	ld a,(0c125h)		;74ab   ; solo en las pantallas 0x63-0x89
	cp 063h		;74ae
	jr c,L_74BB		;74b0
	cp 08ah		;74b2
	jr nc,L_74BB		;74b4
	ld c,014h		;74b6
	jp L_7534		;74b8
L_74BB:
	xor a			;74bb   ; fuera: se suelta (SHOT1 = 0) y va el puno
	ld (0c140h),a		;74bc
	call golpe_del_puno		;74bf
	jp L_62DE		;74c2
golpe_del_5:
	ld a,(0c12eh)		;74c5   ; 0xC12E: LEVEL; hace falta 5
	cp 005h		;74c8
	ret c			;74ca
	ld c,015h		;74cb
	jp L_7534		;74cd
golpe_del_6_y_7:
	ld c,017h		;74d0
	jr L_7534		;74d2
lanza_un_0x1F:
	ld hl,0c35eh		;74d4
	ld b,004h		;74d7
	jr L_74E0		;74d9
lanza_un_8:
	ld hl,0c347h		;74db
	ld b,001h		;74de
L_74E0:
	call hay_algo_lanzado		;74e0
	ret nz			;74e3
	ld a,(hl)			;74e4   ; gasta uno; sin ninguno, nada
	sub 001h		;74e5
	ret c			;74e7
	daa			;74e8
	ld (hl),a			;74e9
	jr nz,L_74F6		;74ea   ; el ultimo: SHOT1 vuelve a 0
	call L_74F6		;74ec
L_74EF:
	xor a			;74ef
	ld (0c140h),a		;74f0
	jp L_62DE		;74f3
L_74F6:
	ld c,018h		;74f6
	jr L_755F		;74f8
lanza_un_9:
	call hay_algo_lanzado		;74fa
	ret nz			;74fd
	ld hl,0c348h		;74fe
	ld a,(hl)			;7501
	sub 001h		;7502
	ret c			;7504
	daa			;7505
	ld (hl),a			;7506
	jr nz,L_750E		;7507
	call L_750E		;7509
	jr L_74EF		;750c
L_750E:
	ld bc,00219h		;750e
	jr L_755F		;7511
lanza_el_boomerang:
	ld a,(0c349h)		;7513   ; 0xC349: cuantos boomerangs hay en la mano
	and a			;7516
	ret z			;7517
	call hay_algo_lanzado		;7518
	ret nz			;751b
	ld bc,0031ah		;751c
	call L_755F		;751f
	ld hl,0c349h		;7522
	ld a,(hl)			;7525
	sub 001h		;7526
	daa			;7528
	ld (hl),a			;7529
	ret			;752a
L_752B:
	ld c,01bh		;752b
	jr L_7534		;752d
hay_algo_lanzado:
	ld a,(0c380h)		;752f   ; 0xC380: la ficha de lo que Mitchel lanza
	and a			;7532
	ret			;7533
L_7534:
	push bc			;7534
	call hay_algo_lanzado		;7535
	pop bc			;7538
	ret nz			;7539
	ld a,c			;753a
	call 05490h		;753b
	ld hl,0c300h		;753e
	ld a,(hl)			;7541
	ld (0c314h),a		;7542
	ld (hl),005h		;7545
	ld a,008h		;7547
	ld (0c313h),a		;7549
	ld a,(0c140h)		;754c
	ld (0c301h),a		;754f
	and a			;7552
	ret z			;7553
	ld (0c38fh),a		;7554
	ld a,0ffh		;7557
	ld (0c380h),a		;7559
L_755C:
	jp 05046h		;755c
L_755F:
	ld a,c			;755f
	call 05490h		;7560
	ld hl,0c300h		;7563
	ld a,(hl)			;7566
	ld (0c314h),a		;7567
	ld (hl),007h		;756a
	ld a,008h		;756c
	ld (0c313h),a		;756e
	ld hl,0c380h		;7571
	push hl			;7574
	pop iy		;7575
	ld (hl),b			;7577
	xor a			;7578
	inc l			;7579
	ld (hl),a			;757a
	inc l			;757b
	ld (hl),a			;757c
	inc l			;757d
	ld a,(0c303h)		;757e
	ld (hl),a			;7581
	inc l			;7582
	ld (hl),000h		;7583
	inc l			;7585
	ld a,(0c305h)		;7586
	ld (hl),a			;7589
	inc l			;758a
	ld (hl),001h		;758b
	call L_75EE		;758d
	inc l			;7590
	ld (hl),e			;7591
	inc l			;7592
	ld (hl),d			;7593
	inc l			;7594
	ld (hl),c			;7595
	inc l			;7596
	ld (hl),b			;7597
	inc l			;7598
	ld a,(iy+000h)		;7599
	add a,a			;759c
	add a,a			;759d
	ld de,075dah		;759e
	call 0425ah		;75a1
	ex de,hl			;75a4
	ld bc,00004h		;75a5
	ldir		;75a8
	ld a,(0c306h)		;75aa
	ld (de),a			;75ad
	ld a,(iy+000h)		;75ae
	cp 003h		;75b1
	jp nz,L_755C		;75b3
	ld a,(0c306h)		;75b6
	ld de,075d6h		;75b9
	call 042ffh		;75bc
	ld a,(iy+003h)		;75bf
	add a,e			;75c2
	ld (iy+010h),a		;75c3
	ld a,(iy+005h)		;75c6
	add a,d			;75c9
	ld (iy+011h),a		;75ca
	ld hl,00000h		;75cd
	ld (0c398h),hl		;75d0
	jp L_755C		;75d3

; ----------------------------------------------------------------------
; DATOS salida_de_lo_lanzado: 4 parejas [dx][dy] segun la direccion 0xC306:
;   desde donde sale lo que lanza Mitchel (p01:75B9)
;   0x75d6..0x75de  (8 bytes)
DATA_salida_de_lo_lanzado:
	defb 0f8h,000h,008h,000h,000h,0f8h,000h,008h	; 75d6  ........

; ----------------------------------------------------------------------
; DATOS fichas_de_lo_lanzado: 4 entradas de 4 bytes que p01:759E copia a la
;   ficha de lo lanzado segun 0xC380 (1-4)
;   0x75de..0x75ee  (16 bytes)
DATA_fichas_de_lo_lanzado:
	defb 008h,001h,00ch,042h,008h,001h,00ch,048h,008h,001h,00ch,042h,008h,001h,00ch,049h	; 75de  ...B...H...B...I

; ======================================================================
; CODIGO 0x75ee..0x7613  (37 bytes)
; ======================================================================


L_75EE:
	push hl			;75ee
	ld de,00300h		;75ef
	ld a,(0c306h)		;75f2
	ld c,a			;75f5
	rra			;75f6
	call nc,L_71F8		;75f7
	ld a,c			;75fa
	ld hl,00000h		;75fb
	cp 002h		;75fe
	jr c,L_7603		;7600
	ex de,hl			;7602
L_7603:
	ld c,l			;7603
	ld b,h			;7604
	pop hl			;7605
	ret			;7606
L_7607:
	ld ix,0c380h		;7607
	ld a,(ix+000h)		;760b
	dec a			;760e
	ret m			;760f
	call 0425fh		;7610

; ----------------------------------------------------------------------
; DATOS tabla_7613: 4 destinos del despachador de 0x425F (call en p01:7610):
;   0x761B, 0x761B, 0x7631, 0x761B; lo leen p01:7610 (8 bytes)
;   0x7613..0x761b  (8 bytes)
DATA_tabla_7613:
	defb 01bh,076h	; 7613
	defb 01bh,076h	; 7615
	defb 031h,076h	; 7617
	defb 01bh,076h	; 7619

; ======================================================================
; CODIGO 0x761b..0x76cc  (177 bytes)
; ======================================================================


L_761B:
	call L_76D0		;761b
	jp c,L_76C6		;761e
	inc (ix+001h)		;7621
	ld a,(ix+001h)		;7624
	cp 010h		;7627
	jp nc,L_76C6		;7629
	call L_690E		;762c
	jr L_76A0		;762f
L_7631:
	ld a,(0c209h)		;7631
	and 003h		;7634
	ld a,01ah		;7636
	call z,05490h		;7638
	call L_76D0		;763b
	jr c,L_7668		;763e
	call L_770F		;7640
	inc (ix+001h)		;7643
	ld a,(ix+001h)		;7646
	cp 038h		;7649
	jr c,L_7694		;764b
	ld e,(ix+003h)		;764d
	ld d,(ix+005h)		;7650
	ld bc,0010ah		;7653
	push ix		;7656
	call pon_objeto		;7658
	pop ix		;765b
	call L_76C6		;765d
	ld a,(0c349h)		;7660
	and a			;7663
	ret nz			;7664
	jp L_74EF		;7665
L_7668:
	ld a,(ix+001h)		;7668
	cp 01ch		;766b
	jr nc,L_7694		;766d
	sub 038h		;766f
	neg		;7671
	ld (ix+001h),a		;7673
	ld e,(ix+007h)		;7676
	ld d,(ix+008h)		;7679
	call L_71F8		;767c
	ld (ix+007h),e		;767f
	ld (ix+008h),d		;7682
	ld e,(ix+009h)		;7685
	ld d,(ix+00ah)		;7688
	call L_71F8		;768b
	ld (ix+009h),e		;768e
	ld (ix+00ah),d		;7691
L_7694:
	call L_690E		;7694
	call L_76A0		;7697
	ret c			;769a
	ld hl,0c349h		;769b
	inc (hl)			;769e
	ret			;769f
L_76A0:
	ld a,(ix+001h)		;76a0
	rra			;76a3
	and 003h		;76a4
	ld hl,076cch		;76a6
	call 04255h		;76a9
	ld a,(hl)			;76ac
	ld (ix+00bh),a		;76ad
	add a,004h		;76b0
	ld (ix+00dh),a		;76b2
	ld a,(ix+003h)		;76b5
	sub 008h		;76b8
	cp 0a0h		;76ba
	jr nc,L_76C6		;76bc
	ld a,(ix+005h)		;76be
	sub 008h		;76c1
	cp 0a0h		;76c3
	ret c			;76c5
L_76C6:
	ld (ix+000h),000h		;76c6
	xor a			;76ca
	ret			;76cb

; ----------------------------------------------------------------------
; DATOS cuadro_del_boomerang: 4 bytes: el cuadro (ix+0x0B) segun el paso
;   (p01:76A6)
;   0x76cc..0x76d0  (4 bytes)
DATA_cuadro_del_boomerang:
	defb 008h,010h,018h,020h	; 76cc

; ======================================================================
; CODIGO 0x76d0..0x7773  (163 bytes)
; ======================================================================


L_76D0:
	ld l,(ix+003h)		;76d0
	ld h,(ix+005h)		;76d3
	ld a,(ix+007h)		;76d6
	or (ix+008h)		;76d9
	jr nz,L_76F0		;76dc
	ld a,(ix+009h)		;76de
	or (ix+00ah)		;76e1
	ret z			;76e4
	ld a,008h		;76e5
	jp p,L_76EC		;76e7
	ld a,0f8h		;76ea
L_76EC:
	add a,h			;76ec
	ld h,a			;76ed
	jr L_76F9		;76ee
L_76F0:
	ld a,008h		;76f0
	jp p,L_76F7		;76f2
	ld a,0f8h		;76f5
L_76F7:
	add a,l			;76f7
	ld l,a			;76f8
L_76F9:
	call 0431fh		;76f9
	ex de,hl			;76fc
	ld a,(0c148h)		;76fd
	ld hl,073d0h		;7700
	call 04255h		;7703
	ld a,(de)			;7706
	and a			;7707
	ret z			;7708
	cp 0f0h		;7709
	scf			;770b
	ret z			;770c
	cp (hl)			;770d
	ret			;770e
L_770F:
	ld a,(ix+010h)		;770f
	ld e,(ix+007h)		;7712
	ld d,(ix+008h)		;7715
	sub (ix+003h)		;7718
	call L_7733		;771b
	call 04311h		;771e
	ld a,(ix+011h)		;7721
	ld e,(ix+009h)		;7724
	ld d,(ix+00ah)		;7727
	sub (ix+005h)		;772a
	call L_7733		;772d
	jp 04318h		;7730
L_7733:
	ld h,000h		;7733
	jp p,L_7739		;7735
	dec h			;7738
L_7739:
	ld l,a			;7739
	add hl,de			;773a
	ex de,hl			;773b
	ret			;773c
L_773D:
	ld hl,0c313h		;773d
	inc (hl)			;7740
	ld a,(hl)			;7741
	cp 008h		;7742
	jr c,$+97		;7744
L_7746:
	ld a,(0c314h)		;7746
	ld (0c300h),a		;7749
	ret			;774c
L_774D:
	xor a			;774d
	ld (0c324h),a		;774e
	ld hl,0c316h		;7751
	inc (hl)			;7754
	ld a,(hl)			;7755
	cp 014h		;7756
	jr z,$+65		;7758
	and 003h		;775a
	call z,L_7766		;775c
	ld a,0ffh		;775f
	ld (0c313h),a		;7761
	jr $+19		;7764
L_7766:
	ld hl,0c306h		;7766
	ld a,(hl)			;7769
	ld de,07773h		;776a
	call 0425ah		;776d
	ld a,(de)			;7770
	ld (hl),a			;7771
	ret			;7772

; ----------------------------------------------------------------------
; DATOS direccion_contraria: 4 bytes: la direccion contraria a cada una
;   (p01:776A)
;   0x7773..0x7777  (4 bytes)
DATA_direccion_contraria:
	defb 003h,002h,000h,001h	; 7773

; ======================================================================
; CODIGO 0x7777..0x77d5  (94 bytes)
; ======================================================================


L_7777:
	ld a,(0c301h)		;7777
	and a			;777a
	jr z,L_779F		;777b
	call L_77AE		;777d
	call L_77A5		;7780
	ld a,(0c301h)		;7783
	ld de,077d5h		;7786
	call 042ffh		;7789
	ld a,e			;778c
	ld (0c38ch),a		;778d
	ld a,d			;7790
	ld (0c38eh),a		;7791
	ld hl,0c313h		;7794
	dec (hl)			;7797
	ret nz			;7798
L_7799:
	xor a			;7799
	ld (0c380h),a		;779a
	jr $-87		;779d
L_779F:
	ld hl,0c313h		;779f
	dec (hl)			;77a2
	jr z,L_7799		;77a3
L_77A5:
	ld a,(0c306h)		;77a5
	add a,00ch		;77a8
	ld (0c310h),a		;77aa
	ret			;77ad
L_77AE:
	ld a,(0c306h)		;77ae
	ld c,a			;77b1
	add a,a			;77b2
	add a,a			;77b3
	add a,a			;77b4
	add a,008h		;77b5
	ld (0c38bh),a		;77b7
	add a,004h		;77ba
	ld (0c38dh),a		;77bc
	ld de,077edh		;77bf
	ld a,c			;77c2
	call 042ffh		;77c3
	ld a,(0c303h)		;77c6
	add a,e			;77c9
	ld (0c383h),a		;77ca
	ld a,(0c305h)		;77cd
	add a,d			;77d0
	ld (0c385h),a		;77d1
	ret			;77d4

; ----------------------------------------------------------------------
; DATOS golpes_77D5: 12 palabras segun 0xC301: lo que p01:7786 pone en 0xC38C
;   y 0xC38E
;   0x77d5..0x77ed  (24 bytes)
DATA_golpes_77D5:
	defb 002h,04ch,001h,042h,001h,042h,002h,04ch,001h,042h,002h,04ch,001h,042h,001h,042h	; 77d5  .L.B.B.L.B.L.B.B
	defb 001h,048h,001h,042h,001h,048h,001h,00eh	; 77e5  .H.B.H..

; ----------------------------------------------------------------------
; DATOS pasos_77ED: 4 parejas [dx][dy] segun la direccion (p01:77BF)
;   0x77ed..0x77f5  (8 bytes)
DATA_pasos_77ED:
	defb 0f0h,000h,010h,000h,000h,0f0h,000h,010h	; 77ed  ........

; ======================================================================
; CODIGO 0x77f5..0x78a5  (176 bytes)
; ======================================================================


L_77F5:
	ld a,(0c132h)		;77f5
	and a			;77f8
	jp nz,0507ah		;77f9
	ld hl,0e608h		;77fc
	ld de,0e420h		;77ff
	ld ix,0c380h		;7802
	ld a,(ix+000h)		;7806
	and a			;7809
	jr z,L_783D		;780a
	ld a,(ix+003h)		;780c
	sub 008h		;780f
	ld c,a			;7811
	ld (hl),c			;7812
	inc l			;7813
	ld a,(ix+005h)		;7814
	sub 008h		;7817
	ld b,a			;7819
	ld (hl),b			;781a
	inc l			;781b
	ld a,(ix+00bh)		;781c
	ld (hl),a			;781f
	inc l			;7820
	inc l			;7821
	ld (hl),c			;7822
	inc l			;7823
	ld (hl),b			;7824
	inc l			;7825
	ld a,(ix+00dh)		;7826
	ld (hl),a			;7829
	ld a,(ix+00ch)		;782a
	ld b,010h		;782d
L_782F:
	ld (de),a			;782f
	inc de			;7830
	djnz L_782F		;7831
	ld a,(ix+00eh)		;7833
	ld b,010h		;7836
L_7838:
	ld (de),a			;7838
	inc de			;7839
	djnz L_7838		;783a
	ret			;783c
L_783D:
	ld (hl),0e0h		;783d
	inc l			;783f
	inc l			;7840
	inc l			;7841
	inc l			;7842
	ld (hl),0e0h		;7843
	ld a,020h		;7845
	jp 0425ah		;7847
L_784A:
	ld a,c			;784a
	cp 027h		;784b
	ret c			;784d
	ld a,001h		;784e
	jr L_7853		;7850

; ----------------------------------------------------------------------
; Pone el objeto C en la pantalla, en (E, D) redondeado a 8, con B
; unidades (0 = 1): en la primera ficha libre de 0xC400 (cuatro de 16
; bytes). Los numeros 0x27 en adelante no son objetos: p01:78A2.
; ----------------------------------------------------------------------
pon_objeto:
	xor a			;7852
L_7853:
	ld (0c170h),a		;7853
	ld a,c			;7856
	sub 027h		;7857   ; 0x27 en adelante: sucesos (p01:78A2)
	jp nc,suceso_en_vez_de_objeto		;7859
	ld a,b			;785c
	and a			;785d
	jr nz,L_7861		;785e
	inc b			;7860
L_7861:
	ld a,e			;7861
	and 0f8h		;7862
	ld e,a			;7864
	ld a,d			;7865
	and 0f8h		;7866
	ld d,a			;7868
	ld a,b			;7869
	ld (0e80dh),a		;786a
	ld hl,0c400h		;786d
	ld b,004h		;7870
	xor a			;7872
L_7873:
	ld a,(hl)			;7873
	and a			;7874
	jr z,L_787E		;7875
	ld a,010h		;7877
	add a,l			;7879
	ld l,a			;787a
	djnz L_7873		;787b
	ret			;787d
L_787E:
	push hl			;787e
	pop ix		;787f
	ld (hl),c			;7881
	inc l			;7882
	ld a,c			;7883
	cp 00ah		;7884   ; el boomerang (0x0A) y el oro (0x26) duran 0x78 cuadros en el suelo;
	ld c,078h		;7886
	jr z,L_7890		;7888
	cp 026h		;788a
	jr z,L_7890		;788c
	ld c,0ffh		;788e   ; los demas se quedan (0xFF)
L_7890:
	ld (hl),c			;7890
	inc l			;7891
	ld (hl),000h		;7892
	inc l			;7894
	ld (hl),e			;7895
	inc l			;7896
	inc l			;7897
	ld (hl),d			;7898
	inc l			;7899
	ld a,(0e80dh)		;789a
	ld (hl),a			;789d
	inc l			;789e
	ld (hl),010h		;789f
	ret			;78a1

; ----------------------------------------------------------------------
; 0x27 nada; 0x28 suceso 5 (8 en la pantalla 0x5D); 0x29 nada; 0x2A pinta
; los dibujos 0xC0-0xC3 en (0x50, 0x30); 0x2B suceso 1; 0x2C suma B al MP.
; ----------------------------------------------------------------------
suceso_en_vez_de_objeto:
	call 0425fh		;78a2

; ----------------------------------------------------------------------
; DATOS tabla_78A5: 6 destinos del despachador de 0x425F (call en p01:78A2):
;   0x78D9, 0x78B5, 0x78D9, 0x78DA, 0x78B1, 0x78EE; lo leen p01:78A2 (12
;   bytes)
;   0x78a5..0x78b1  (12 bytes)
DATA_tabla_78A5:
	defb 0d9h,078h	; 78a5
	defb 0b5h,078h	; 78a7
	defb 0d9h,078h	; 78a9
	defb 0dah,078h	; 78ab
	defb 0b1h,078h	; 78ad
	defb 0eeh,078h	; 78af

; ======================================================================
; CODIGO 0x78b1..0x78ea  (57 bytes)
; ======================================================================


L_78B1:
	ld a,001h		;78b1
	jr L_78C0		;78b3
L_78B5:
	ld a,(0c125h)		;78b5
	cp 05dh		;78b8
	ld a,005h		;78ba
	jr nz,L_78C0		;78bc
	ld a,008h		;78be
L_78C0:
	ld c,a			;78c0
	ld a,(0c170h)		;78c1
	and a			;78c4
	jr z,L_78D1		;78c5
	ld a,c			;78c7
	ld (0c171h),a		;78c8
	dec a			;78cb
	ret nz			;78cc
	ld (0c58fh),a		;78cd
	ret			;78d0
L_78D1:
	ld a,c			;78d1
	ld (0c560h),a		;78d2
	xor a			;78d5
	ld (0c561h),a		;78d6
L_78D9:
	ret			;78d9
L_78DA:
	xor a			;78da
	ld (0c59fh),a		;78db
	ld hl,078eah		;78de
	ld de,03050h		;78e1
	ld bc,00202h		;78e4
	jp 04eb5h		;78e7

; ----------------------------------------------------------------------
; DATOS dibujos_del_suceso_2A: 2x2 numeros de dibujo que p01:78E7 pinta en
;   (0x50, 0x30) (el suceso 0x2A)
;   0x78ea..0x78ee  (4 bytes)
DATA_dibujos_del_suceso_2A:
	defb 0c0h,0c1h,0c2h,0c3h	; 78ea

; ======================================================================
; CODIGO 0x78ee..0x7a36  (328 bytes)
; ======================================================================


suma_b_al_mp:
	ld hl,0c12fh		;78ee   ; 0xC12F: el MP, en BCD, hasta 99
	ld a,(hl)			;78f1
	add a,b			;78f2
	daa			;78f3
	jr nc,L_78F8		;78f4
	ld a,099h		;78f6
L_78F8:
	ld (hl),a			;78f8
	jp L_636C		;78f9
L_78FC:
	ld ix,0c400h		;78fc
	ld b,004h		;7900
L_7902:
	ld a,(ix+000h)		;7902
	and a			;7905
	call nz,L_7911		;7906
	ld de,00010h		;7909
	add ix,de		;790c
	djnz L_7902		;790e
	ret			;7910
L_7911:
	call L_79BF		;7911
	ex de,hl			;7914
	call 0431fh		;7915
	ld a,(hl)			;7918
	ld (ix+00ch),a		;7919
	inc hl			;791c
	ld a,(hl)			;791d
	ld (ix+00dh),a		;791e
	ld de,0001fh		;7921
	add hl,de			;7924
	ld a,(hl)			;7925
	ld (ix+00eh),a		;7926
	inc hl			;7929
	ld a,(hl)			;792a
	ld (ix+00fh),a		;792b
	ret			;792e
L_792F:
	ld ix,0c400h		;792f
	ld b,004h		;7933
L_7935:
	push bc			;7935
	call L_7942		;7936
	ld de,00010h		;7939
	add ix,de		;793c
	pop bc			;793e
	djnz L_7935		;793f
	ret			;7941
L_7942:
	ld a,(ix+000h)		;7942
	and a			;7945
	ret z			;7946
	ld a,(ix+007h)		;7947
	and a			;794a
	jr z,L_794E		;794b
	dec a			;794d
L_794E:
	ld (ix+007h),a		;794e
	ld a,(ix+001h)		;7951
	inc a			;7954
	jr z,L_795C		;7955
	dec (ix+001h)		;7957
	jr z,L_797F		;795a
L_795C:
	call L_79BF		;795c
	ld a,(ix+000h)		;795f
pinta_icono:
	cp 026h		;7962   ; el 0x26 (oro) se pinta con el dibujo del 6 (la bolsa)
	jr nz,L_7968		;7964
	ld a,006h		;7966
L_7968:
	dec a			;7968   ; objeto n: dibujo n-1, en x = ((n-1) & 15)*16...
	ld c,a			;7969
	and 00fh		;796a
	add a,a			;796c
	add a,a			;796d
	add a,a			;796e
	add a,a			;796f
	ld h,a			;7970
	ld a,c			;7971
	and 0f0h		;7972   ; ...y = 0x70 + ((n-1) & 0xF0) de la pagina 1
	add a,070h		;7974
	ld l,a			;7976
	ld bc,01010h		;7977
	ld a,048h		;797a
	jp 0481bh		;797c   ; 16x16 con transparencia
L_797F:
	ld (ix+000h),000h		;797f
	call L_79BF		;7983
	ld a,(ix+00ch)		;7986
	call L_79B7		;7989
	call nz,0497bh		;798c
	ld a,008h		;798f
	add a,d			;7991
	ld d,a			;7992
	ld a,(ix+00dh)		;7993
	call L_79B7		;7996
	call nz,0497bh		;7999
	ld a,008h		;799c
	add a,e			;799e
	ld e,a			;799f
	ld a,(ix+00fh)		;79a0
	call L_79B7		;79a3
	call nz,0497bh		;79a6
	ld a,d			;79a9
	sub 008h		;79aa
	ld d,a			;79ac
	ld a,(ix+00eh)		;79ad
	call L_79B7		;79b0
	jp nz,0497bh		;79b3
	ret			;79b6
L_79B7:
	cp 0f1h		;79b7
	ret nz			;79b9
	ld a,062h		;79ba
	cp 0f0h		;79bc
	ret			;79be
L_79BF:
	push af			;79bf
	ld a,(ix+003h)		;79c0
	sub 008h		;79c3
	ld e,a			;79c5
	ld a,(ix+005h)		;79c6
	sub 008h		;79c9
	ld d,a			;79cb
	pop af			;79cc
	ret			;79cd
da_un_objeto:
	ld b,001h		;79ce   ; una unidad

; ----------------------------------------------------------------------
; Da el objeto A, B unidades. 0xC33F + A lleva la cuenta en BCD (hasta 99);
; si el bit 7 de p01:7A35 + A esta puesto el objeto no se cuenta y se
; guarda 0xFF. Luego lo apunta en la lista de SHOT1 (0xC2A0) o en la de
; SHOT2 (0xC2C0), si no estaba.
; ----------------------------------------------------------------------
da_objeto:
	cp 00fh		;79d0   ; el 0x0F...
	jr nz,L_79D9		;79d2
	ld hl,0c144h		;79d4   ; ...pone 0xC144
	ld (hl),001h		;79d7
L_79D9:
	ld e,a			;79d9
	ld (0e80eh),a		;79da
	ld d,000h		;79dd
	ld hl,0c33fh		;79df   ; 0xC33F + objeto: cuantos hay
	add hl,de			;79e2
	ld de,l7a35h		;79e3
	call 0425ah		;79e6
	ld a,(de)			;79e9
	add a,a			;79ea   ; bit 7 de p01:7A35 + objeto: sin cuenta
	jr c,L_79F7		;79eb
	ld a,b			;79ed   ; suma B en BCD
	add a,(hl)			;79ee
	daa			;79ef
	jr nc,L_79F4		;79f0
	ld a,099h		;79f2
L_79F4:
	ld (hl),a			;79f4
	jr L_79F9		;79f5
L_79F7:
	ld (hl),0ffh		;79f7   ; sin cuenta: 0xFF
L_79F9:
	call elige_lista		;79f9
	ld a,(0e80eh)		;79fc
	cp 01eh		;79ff   ; 0x1E, 0x23 y 0x20 no van a ninguna lista
	ret z			;7a01
	cp 023h		;7a02
	ret z			;7a04
	cp 020h		;7a05
	ret z			;7a07
	ld c,a			;7a08
L_7A09:
	ld a,(hl)			;7a09
	cp c			;7a0a
	jr z,L_7A1D		;7a0b
	inc l			;7a0d
	inc l			;7a0e
	djnz L_7A09		;7a0f
	call elige_lista		;7a11
L_7A14:
	ld a,(hl)			;7a14
	and a			;7a15
	jr z,L_7A1D		;7a16
	inc l			;7a18
	inc l			;7a19
	djnz L_7A14		;7a1a
	ret			;7a1c
L_7A1D:
	ld (hl),c			;7a1d
	ret			;7a1e

; ----------------------------------------------------------------------
; La lista del objeto: la de SHOT1 (0xC2A0, 12 casillas) si el nibble
; bajo de p01:7A35 + objeto es 0; si no, la de SHOT2 (0xC2C0, 21).
; ----------------------------------------------------------------------
elige_lista:
	ld hl,0c2a0h		;7a1f
	ld b,00ch		;7a22
	ld a,(0e80eh)		;7a24
	ld de,l7a35h		;7a27
	call 0425ah		;7a2a
	ld a,(de)			;7a2d
	and 00fh		;7a2e
	ret z			;7a30
	ld l,0c0h		;7a31
	ld b,015h		;7a33
L_7A35:
	ret			;7a35

; ----------------------------------------------------------------------
; DATOS clase_de_cada_objeto: un byte por objeto (1-0x24): bit 7, sin cuenta;
;   nibble bajo 0, lista de SHOT1; si no, de SHOT2 (p01:79E3 y p01:7A27 con
;   0x7A35 + objeto); lo leen p01:79E3 (36 bytes)
;   0x7a36..0x7a5a  (36 bytes)
DATA_clase_de_cada_objeto:
	defb 0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,000h,000h,000h,0f0h,0f1h	; 7a36  ............
	defb 0f1h,0f1h,0f1h,001h,0f1h,0f1h,0f1h,0f1h,001h,0f1h,0f1h,0f1h	; 7a42  ............
	defb 0f1h,0f1h,0f1h,0f1h,001h,001h,000h,0f1h,0f1h,0f1h,0f1h,001h	; 7a4e  ............

; ======================================================================
; CODIGO 0x7a5a..0x7abb  (97 bytes)
; ======================================================================


L_7A5A:
	ld hl,(0c202h)		;7a5a
	inc hl			;7a5d
	ld (0c202h),hl		;7a5e
	ld a,h			;7a61
	and 003h		;7a62
	or l			;7a64
	ret nz			;7a65
	ld hl,0c127h		;7a66
	ld a,(hl)			;7a69
	add a,001h		;7a6a
	daa			;7a6c
	ld (hl),a			;7a6d
	inc l			;7a6e
	ld a,(hl)			;7a6f
	adc a,000h		;7a70
	daa			;7a72
	ld (hl),a			;7a73
	jp L_6344		;7a74
fin_del_suceso_de_shot2:
	ld a,(0c141h)		;7a77
	sub 00ch		;7a7a
	jr z,L_7AA6		;7a7c
	dec a			;7a7e
	jp z,L_7AC3		;7a7f
	ld hl,0c313h		;7a82
	dec (hl)			;7a85
	ret nz			;7a86
	ld ix,0d000h		;7a87
	ld b,00dh		;7a8b
	ld de,00080h		;7a8d
L_7A90:
	ld a,(ix+000h)		;7a90
	cp 02ah		;7a93
	jr z,L_7AA1		;7a95
	cp 02bh		;7a97
	jr z,L_7AA1		;7a99
	add ix,de		;7a9b
	djnz L_7A90		;7a9d
	jr L_7AB4		;7a9f
L_7AA1:
	call 05da8h		;7aa1
	jr L_7AB4		;7aa4
L_7AA6:
	ld a,(0c080h)		;7aa6
	and a			;7aa9
	ret nz			;7aaa
	ld a,004h		;7aab
	ld (0c560h),a		;7aad
	xor a			;7ab0
	ld (0c561h),a		;7ab1
L_7AB4:
	xor a			;7ab4
	ld (0c380h),a		;7ab5
	jp L_7746		;7ab8

; ----------------------------------------------------------------------
; DATOS pasos_7ABB: 4 parejas [dx][dy] como las de p01:77ED; no las lee nadie
;   0x7abb..0x7ac3  (8 bytes)
DATA_pasos_7ABB:
	defb 0f0h,000h,010h,000h,000h,0f0h,000h,010h	; 7abb  ........

; ======================================================================
; CODIGO 0x7ac3..0x7c05  (322 bytes)
; ======================================================================


L_7AC3:
	ld hl,0c313h		;7ac3
	dec (hl)			;7ac6
	ret nz			;7ac7
	ld a,0ffh		;7ac8
	ld (0c147h),a		;7aca
	jp L_7AB4		;7acd
L_7AD0:
	ld (ix+00bh),00dh		;7ad0
	ld (ix+006h),001h		;7ad4
	ld bc,00000h		;7ad8
	call L_729E		;7adb
	ld (ix+015h),a		;7ade
	ld hl,0bf62h		;7ae1
	jp 0bf19h		;7ae4
L_7AE7:
	ld a,(ix+001h)		;7ae7
	dec a			;7aea
	jp z,L_7B2C		;7aeb
	ld a,(ix+00ch)		;7aee
	cp 020h		;7af1
	jr nz,L_7AFC		;7af3
	inc (ix+001h)		;7af5
	ld (ix+00ch),000h		;7af8
L_7AFC:
	ld a,(ix+015h)		;7afc
	and 001h		;7aff
	jr nz,L_7B1B		;7b01
	ld bc,00040h		;7b03
	xor a			;7b06
	ld (ix+00ah),a		;7b07
	ld (ix+009h),a		;7b0a
	ld h,(ix+008h)		;7b0d
	ld l,(ix+007h)		;7b10
	add hl,bc			;7b13
	ld (ix+008h),h		;7b14
	ld (ix+007h),l		;7b17
	ret			;7b1a
L_7B1B:
	ld bc,00030h		;7b1b
	ld h,(ix+008h)		;7b1e
	ld l,(ix+007h)		;7b21
	add hl,bc			;7b24
	ld (ix+008h),h		;7b25
	ld (ix+007h),l		;7b28
	ret			;7b2b
L_7B2C:
	ld (ix+00eh),000h		;7b2c
	call 0bf00h		;7b30
	ld a,(ix+00ch)		;7b33
	cp 010h		;7b36
	ret nz			;7b38
	jp L_694B		;7b39
L_7B3C:
	ld (ix+00bh),00ch		;7b3c
	ld a,030h		;7b40
	call L_716F		;7b42
	jp 08bdch		;7b45
L_7B48:
	ld l,(ix+003h)		;7b48
	ld h,(ix+005h)		;7b4b
	call 0431fh		;7b4e
	ld a,(hl)			;7b51
	cp 05fh		;7b52
	ret nc			;7b54
	jp L_694B		;7b55
L_7B58:
	xor a			;7b58
	ld (ix+01ch),a		;7b59
	ld (ix+006h),a		;7b5c
	ld (ix+014h),a		;7b5f
	ld (ix+00bh),009h		;7b62
	ld (ix+012h),030h		;7b66
	ld (ix+013h),004h		;7b6a
	ret			;7b6e
L_7B6F:
	dec (ix+013h)		;7b6f
	jr nz,L_7B77		;7b72
	call L_7BB9		;7b74
L_7B77:
	ld a,(ix+001h)		;7b77
	dec a			;7b7a
	jr z,L_7BA5		;7b7b
	dec a			;7b7d
	jr z,L_7BB5		;7b7e
	dec (ix+012h)		;7b80
	jr nz,L_7B88		;7b83
	inc (ix+001h)		;7b85
L_7B88:
	push ix		;7b88
	ld a,(0dfb6h)		;7b8a
	ld c,a			;7b8d
	call 09edfh		;7b8e
	jr c,L_7BA2		;7b91
	ld d,(ix+003h)		;7b93
	ld e,(ix+005h)		;7b96
	pop ix		;7b99
	ld (ix+003h),d		;7b9b
	ld (ix+005h),e		;7b9e
	ret			;7ba1
L_7BA2:
	pop ix		;7ba2
	ret			;7ba4
L_7BA5:
	inc (ix+001h)		;7ba5
	ld a,020h		;7ba8
L_7BAA:
	call L_716F		;7baa
	call 08bdch		;7bad
	ld a,005h		;7bb0
	jp 05488h		;7bb2
L_7BB5:
	dec (ix+013h)		;7bb5
	ret nz			;7bb8
L_7BB9:
	ld (ix+013h),004h		;7bb9
	ld a,(ix+014h)		;7bbd
	xor 001h		;7bc0
	ld (ix+014h),a		;7bc2
	ld b,009h		;7bc5
	dec a			;7bc7
	jr z,L_7BCB		;7bc8
	inc b			;7bca
L_7BCB:
	ld (ix+00bh),b		;7bcb
	ret			;7bce
L_7BCF:
	ld (ix+014h),004h		;7bcf
	ld (ix+00bh),009h		;7bd3
	ld (ix+013h),004h		;7bd7
	ld (ix+012h),010h		;7bdb
	ret			;7bdf
L_7BE0:
	ld a,(ix+001h)		;7be0
	dec a			;7be3
	jr z,L_7BB5		;7be4
	dec (ix+012h)		;7be6
	jr nz,L_7BB5		;7be9
	inc (ix+001h)		;7beb
	inc (ix+006h)		;7bee
	jr L_7BAA		;7bf1
usa_shot2:
	ld a,(0c132h)		;7bf3
	and a			;7bf6
	ld a,(0c141h)		;7bf7
	jr z,L_7BFF		;7bfa
	cp 019h		;7bfc
	ret nz			;7bfe
L_7BFF:
	sub 00ch		;7bff
	ret c			;7c01
	call 0425fh		;7c02

; ----------------------------------------------------------------------
; DATOS tabla_7C05: 25 destinos del despachador de 0x425F (call en p01:7C02):
;   0x7C4F, 0x7C53, 0x7C57, 0x7CC1, 0x7CB5, 0x7D29, 0x7CF5, 0x7D14 ...; lo
;   leen p01:7C02 (50 bytes)
;   0x7c05..0x7c37  (50 bytes)
DATA_tabla_7C05:
	defb 04fh,07ch	; 7c05
	defb 053h,07ch	; 7c07
	defb 057h,07ch	; 7c09
	defb 0c1h,07ch	; 7c0b
	defb 0b5h,07ch	; 7c0d
	defb 029h,07dh	; 7c0f
	defb 0f5h,07ch	; 7c11
	defb 014h,07dh	; 7c13
	defb 0c1h,07ch	; 7c15
	defb 0c2h,07ch	; 7c17
	defb 073h,07dh	; 7c19
	defb 033h,07dh	; 7c1b
	defb 0c1h,07ch	; 7c1d
	defb 054h,07dh	; 7c1f
	defb 0c1h,07ch	; 7c21
	defb 00ah,07dh	; 7c23
	defb 0c1h,07ch	; 7c25
	defb 0c1h,07ch	; 7c27
	defb 0c1h,07ch	; 7c29
	defb 0c1h,07ch	; 7c2b
	defb 0c1h,07ch	; 7c2d
	defb 0c1h,07ch	; 7c2f
	defb 08fh,07dh	; 7c31
	defb 0c1h,07ch	; 7c33
	defb 0b3h,07dh	; 7c35

; ======================================================================
; CODIGO 0x7c37..0x7ca4  (109 bytes)
; ======================================================================


gasta_uno_de_shot2:
	ld a,(0c141h)		;7c37   ; 0xC141: el objeto de SHOT2
	ld hl,0c33fh		;7c3a
	call 04255h		;7c3d
	ld a,(hl)			;7c40
	cp 0ffh		;7c41   ; sin cuenta (0xFF): no se gasta
	ret z			;7c43
	sub 001h		;7c44
	daa			;7c46
	ld (hl),a			;7c47
	ret nz			;7c48
	ld (0c141h),a		;7c49   ; el ultimo: SHOT2 vuelve a 0
	jp L_62DE		;7c4c
conjuro_0x0C:
	ld c,003h		;7c4f   ; 3 de MP
	jr L_7C59		;7c51
conjuro_0x0D:
	ld c,005h		;7c53   ; 5 de MP
	jr L_7C59		;7c55
conjuro_0x0E:
	ld c,010h		;7c57   ; 10 de MP (BCD)
L_7C59:
	push bc			;7c59
	call hay_algo_lanzado		;7c5a
	pop bc			;7c5d
	ret nz			;7c5e
	ld hl,0c12fh		;7c5f   ; 0xC12F: MP
	ld a,(hl)			;7c62
	sub c			;7c63
	daa			;7c64
	jr c,no_hay_mp		;7c65   ; sin MP bastante: p01:7C96
	ld (hl),a			;7c67
	ld a,021h		;7c68
	call 05488h		;7c6a
	ld hl,0c300h		;7c6d
	ld a,(hl)			;7c70
	ld (hl),006h		;7c71
	ld (0c314h),a		;7c73
	ld a,01eh		;7c76
	ld (0c313h),a		;7c78
	ld a,0ffh		;7c7b
	ld (0c380h),a		;7c7d
	call L_77AE		;7c80
	ld a,001h		;7c83
	ld (0c38ch),a		;7c85
	ld a,00eh		;7c88
	ld (0c38eh),a		;7c8a
	call L_6D8B		;7c8d
	call 050eah		;7c90
	jp L_636C		;7c93
no_hay_mp:
	call L_6428		;7c96
	ld a,03ch		;7c99
	ld (0c162h),a		;7c9b
	ld hl,07ca4h		;7c9e   ; el aviso de p01:7CA4
	jp 0490fh		;7ca1

; ----------------------------------------------------------------------
; DATOS no_hay_mp: [x][y] "MPが たりません。" 0xFF: el aviso de p01:7C9E
;   0x7ca4..0x7cb1  (13 bytes)
DATA_no_hay_mp:
	defb 018h,0b8h,04dh,050h,060h,03ch,06ah,082h,079h,068h,088h,03eh,0ffh	; 7ca4  ..MP`<j.yh.>.

; ----------------------------------------------------------------------
; DATOS codigo_7CB1: codigo que no llama nadie: ld a,9 / jr 0x7D21 (como
;   p01:7D0A sin mirar la pantalla)
;   0x7cb1..0x7cb5  (4 bytes)
DATA_codigo_7CB1:
	defb 03eh,009h,018h,06ch	; 7cb1

; ======================================================================
; CODIGO 0x7cb5..0x7e01  (332 bytes)
; ======================================================================


usa_el_0x10:
	call gasta_uno_de_shot2		;7cb5
	ld hl,0c146h		;7cb8   ; 0xC146: la enfermedad; si la hay, la quita y nada mas
	ld a,(hl)			;7cbb
	and a			;7cbc
	jr z,L_7CC5		;7cbd
	ld (hl),000h		;7cbf
L_7CC1:
	ret			;7cc1
come:
	call gasta_uno_de_shot2		;7cc2
L_7CC5:
	ld hl,(0c129h)		;7cc5   ; LIFE (0xC129) + 10...
	ld a,010h		;7cc8
	add a,l			;7cca
	daa			;7ccb
	ld e,a			;7ccc
	ld a,h			;7ccd
	adc a,000h		;7cce
	daa			;7cd0
	ld d,a			;7cd1
	ld a,(0c12eh)		;7cd2   ; ...hasta 30 + 16*LEVEL (0xC12E), en BCD; 999 como mucho
	ld l,a			;7cd5
	ld h,000h		;7cd6
	add hl,hl			;7cd8
	add hl,hl			;7cd9
	add hl,hl			;7cda
	add hl,hl			;7cdb
	ld a,030h		;7cdc
	add a,l			;7cde
	daa			;7cdf
	ld l,a			;7ce0
	ld a,h			;7ce1
	adc a,000h		;7ce2
	daa			;7ce4
	ld h,a			;7ce5
	jr nc,L_7CEB		;7ce6
	ld hl,00999h		;7ce8
L_7CEB:
	rst 20h			;7ceb
	jr c,L_7CEF		;7cec
	ex de,hl			;7cee
L_7CEF:
	ld (0c129h),hl		;7cef
	jp L_634E		;7cf2
usa_el_0x12:
	ld a,(0c125h)		;7cf5   ; solo en la pantalla 0x68
	cp 068h		;7cf8
	ret nz			;7cfa
	ld a,001h		;7cfb
	ld (0c16fh),a		;7cfd
L_7D00:
	ld a,005h		;7d00
	ld (0c201h),a		;7d02
	xor a			;7d05
	ld (0c567h),a		;7d06
	ret			;7d09
usa_el_0x1B:
	ld a,(0c125h)		;7d0a   ; solo en la pantalla 0x56
	cp 056h		;7d0d
	ret nz			;7d0f
	ld a,009h		;7d10
	jr L_7D21		;7d12
usa_el_0x13:
	ld a,(0c125h)		;7d14
	ld c,a			;7d17
	cp 034h		;7d18
	ld a,(0c58eh)		;7d1a
	and a			;7d1d
	ret z			;7d1e
	ld a,003h		;7d1f
L_7D21:
	ld (0c560h),a		;7d21
	xor a			;7d24
	ld (0c561h),a		;7d25
	ret			;7d28
usa_el_0x11:
	ld a,(0c125h)		;7d29   ; solo en la pantalla 0x38
	cp 038h		;7d2c
	ret nz			;7d2e
	ld a,005h		;7d2f
	jr L_7D21		;7d31
usa_el_0x17:
	ld a,(0c132h)		;7d33
	and a			;7d36
	ret nz			;7d37
	call 04308h		;7d38
	ld a,e			;7d3b
	cp 068h		;7d3c
	ret nz			;7d3e
	ld a,d			;7d3f
	sub 058h		;7d40
	cp 019h		;7d42
	ret nc			;7d44
	ld a,(0c306h)		;7d45
	and a			;7d48
	ret nz			;7d49
	ld a,006h		;7d4a
	ld (0c201h),a		;7d4c
	xor a			;7d4f
	ld (0c681h),a		;7d50
	ret			;7d53
usa_el_0x19:
	ld a,(0c125h)		;7d54   ; solo en la pantalla 0x51, y reparado (0xC14E)
	cp 051h		;7d57
	ret nz			;7d59
	ld a,(0c14eh)		;7d5a
	and a			;7d5d
	ret z			;7d5e
	ld a,(0c600h)		;7d5f
	and a			;7d62
	ld a,037h		;7d63
	jr z,L_7D68		;7d65
	inc a			;7d67
L_7D68:
	ld (0c14ah),a		;7d68   ; la conversacion 0x37, o la 0x38 si 0xC600 no es 0
	ld a,001h		;7d6b
	ld (0c149h),a		;7d6d
	jp L_7EAB		;7d70
usa_el_0x16:
	ld a,(0c125h)		;7d73   ; solo en la pantalla 0x5E
	cp 05eh		;7d76
	ret nz			;7d78
	ld hl,0c810h		;7d79
	ld a,(hl)			;7d7c
	and a			;7d7d
	ret nz			;7d7e
	ld (hl),001h		;7d7f
	inc l			;7d81
	ld (hl),048h		;7d82
	inc l			;7d84
	ld (hl),048h		;7d85
	call 04fabh		;7d87
	ld a,023h		;7d8a
	jp 05488h		;7d8c
usa_el_0x22:
	ld a,(0c140h)		;7d8f
	cp 00bh		;7d92
	jr z,L_7DA4		;7d94
	cp 008h		;7d96
	ret nc			;7d98
	ld hl,0c12fh		;7d99
	ld a,(hl)			;7d9c
	sub 001h		;7d9d
	daa			;7d9f
	jp c,no_hay_mp		;7da0
	ld (hl),a			;7da3
L_7DA4:
	call usa_shot1		;7da4
	ld a,008h		;7da7
	ld (0c300h),a		;7da9
	xor a			;7dac
	ld (0c316h),a		;7dad
	jp L_636C		;7db0
usa_el_0x24:
	call gasta_uno_de_shot2		;7db3   ; solo en las pantallas 0x0B, 0x0D, 0x2D, 0x2E, 0x6F, 0x77 y 0x7B
	ld a,(0c125h)		;7db6
	cp 00dh		;7db9
	jr z,L_7DD4		;7dbb
	cp 02dh		;7dbd
	jr z,L_7DD4		;7dbf
	cp 02eh		;7dc1
	jr z,L_7DD4		;7dc3
	cp 00bh		;7dc5
	jr z,L_7DD4		;7dc7
	cp 077h		;7dc9
	jr z,L_7DD4		;7dcb
	cp 06fh		;7dcd
	jr z,L_7DD4		;7dcf
	cp 07bh		;7dd1
	ret nz			;7dd3
L_7DD4:
	jp L_7D00		;7dd4
L_7DD7:
	ld a,(0c141h)		;7dd7
	cp 01ah		;7dda
	ret z			;7ddc
	ld a,(0c125h)		;7ddd
	cp 052h		;7de0
	jr z,L_7DFB		;7de2
	cp 053h		;7de4
	jr z,L_7DFB		;7de6
	cp 063h		;7de8
	jr z,L_7DFB		;7dea
	cp 064h		;7dec
	jr z,L_7DFB		;7dee
	cp 065h		;7df0
	jr z,L_7DFB		;7df2
	cp 066h		;7df4
	jr z,L_7DFB		;7df6
	cp 06bh		;7df8
	ret nz			;7dfa
L_7DFB:
	ld hl,07e01h		;7dfb
	jp 046cfh		;7dfe

; ----------------------------------------------------------------------
; DATOS paleta_7E01: [color][RB][G] ... 0xFF (p00:46CF): los colores que
;   p01:7DFB cambia en las pantallas 0x52, 0x53, 0x63-0x66 y 0x6B
;   0x7e01..0x7e1d  (28 bytes)
DATA_paleta_7E01:
	defb 004h,000h,000h,005h,000h,000h,006h,000h,000h,007h,000h,000h,00ah,000h,000h,00bh	; 7e01  ................
	defb 000h,000h,00ch,000h,000h,00dh,000h,000h,00fh,000h,000h,0ffh	; 7e11  ............

; ======================================================================
; CODIGO 0x7e1d..0x7ef5  (216 bytes)
; ======================================================================


busca_quien_habla:
	ld a,(0c300h)		;7e1d
	cp 005h		;7e20
	ret nc			;7e22
	ld a,(0c125h)		;7e23
	cp 060h		;7e26
	jp z,conversacion_de_la_mesa		;7e28
	sub 063h		;7e2b
	cp 004h		;7e2d
	jr nc,L_7E43		;7e2f
	ld a,(0c209h)		;7e31
	and 003h		;7e34
	jr nz,L_7E43		;7e36
	ld hl,0c328h		;7e38
	inc (hl)			;7e3b
	jr nz,L_7E43		;7e3c
	ld a,030h		;7e3e
	jp L_7E9B		;7e40
L_7E43:
	ld a,(0c306h)		;7e43
	and a			;7e46
	ret nz			;7e47
	ld a,(0c303h)		;7e48
	and 007h		;7e4b
	ret nz			;7e4d
	ld a,(0c305h)		;7e4e
	cp 0a0h		;7e51
	ret nc			;7e53
	and 007h		;7e54
	ret nz			;7e56
	ld a,(0c125h)		;7e57
	ld hl,0a5feh		;7e5a   ; p12:A5FE + pantalla: la conversacion (0 = nadie)
	cp 072h		;7e5d
	ret nc			;7e5f
	call 04255h		;7e60
	ld a,(hl)			;7e63
	and a			;7e64
	ret z			;7e65
	ld (0c14ah),a		;7e66
	ld a,(0c125h)		;7e69
	cp 04ah		;7e6c
	ld a,(0c303h)		;7e6e
	jr nz,L_7E75		;7e71
	sub 008h		;7e73
L_7E75:
	ld l,a			;7e75
	sub 008h		;7e76
	cp 0a0h		;7e78
	ret nc			;7e7a
	ld a,(0c305h)		;7e7b
	ld h,a			;7e7e
	sub 008h		;7e7f
	cp 0a0h		;7e81
	ret nc			;7e83
	call 0431fh		;7e84
	ld a,(hl)			;7e87
	and a			;7e88
	jr z,L_7E8F		;7e89
	inc hl			;7e8b
	ld a,(hl)			;7e8c
	and a			;7e8d
	ret nz			;7e8e
L_7E8F:
	call L_7F4E		;7e8f
	ld a,c			;7e92
	and a			;7e93
	ret z			;7e94
	ld a,001h		;7e95
	ld (0c310h),a		;7e97
	ld a,c			;7e9a
L_7E9B:
	ld (0c14ah),a		;7e9b
	and a			;7e9e
	ret z			;7e9f
	call L_7F08		;7ea0
	ret c			;7ea3
	xor a			;7ea4
	ld (0c149h),a		;7ea5
	call 04ff0h		;7ea8
L_7EAB:
	xor a			;7eab
	ld (0c14bh),a		;7eac
	ld a,003h		;7eaf
	ld (0c201h),a		;7eb1
	ld hl,04201h		;7eb4
	ld (0c309h),hl		;7eb7
	ret			;7eba
conversacion_de_la_mesa:
	ld hl,0c15eh		;7ebb
	ld a,(hl)			;7ebe
	and a			;7ebf
	ret nz			;7ec0
	ld a,(0c303h)		;7ec1
	cp 090h		;7ec4
	ret nc			;7ec6
	ld a,(0c600h)		;7ec7
	and a			;7eca
	ret nz			;7ecb
	inc (hl)			;7ecc
	ld a,02ch		;7ecd   ; la 0x2C, en la pantalla 0x60
	ld (0c14ah),a		;7ecf
	ld a,001h		;7ed2
	ld (0c149h),a		;7ed4
	jr L_7EAB		;7ed7
conversacion_de_la_pantalla:
	ld a,(0c125h)		;7ed9
	ld b,a			;7edc
	ld hl,07ef5h		;7edd   ; parejas [pantalla][conversacion] de p01:7EF5 (0 acaba)
L_7EE0:
	ld a,(hl)			;7ee0
	and a			;7ee1
	ret z			;7ee2
	inc hl			;7ee3
	cp b			;7ee4
	jr z,L_7EEA		;7ee5
	inc hl			;7ee7
	jr L_7EE0		;7ee8
L_7EEA:
	ld a,(hl)			;7eea
	ld (0c14ah),a		;7eeb
	ld a,001h		;7eee
	ld (0c149h),a		;7ef0
	jr L_7EAB		;7ef3

; ----------------------------------------------------------------------
; DATOS conversaciones_de_los_que_aparecen: [pantalla][conversacion] ... 0: la
;   del objeto 0x25 (alguien que aparece al matar a un enemigo); p01:7EE0; lo
;   leen p01:7EE0 (19 bytes)
;   0x7ef5..0x7f08  (19 bytes)
DATA_conversaciones_de_los_que_aparecen:
	defb 010h,00eh	; 7ef5
	defb 01ah,010h	; 7ef7
	defb 012h,00dh	; 7ef9
	defb 026h,022h	; 7efb
	defb 00bh,011h	; 7efd
	defb 03dh,029h	; 7eff
	defb 04fh,02ah	; 7f01
	defb 022h,035h	; 7f03
	defb 03ah,036h	; 7f05
	defb 000h	; 7f07

; ======================================================================
; CODIGO 0x7f08..0x7f1a  (18 bytes)
; ======================================================================


L_7F08:
	ld a,(0c14ah)		;7f08
	ld c,a			;7f0b
	ld hl,07f23h		;7f0c
L_7F0F:
	ld a,(hl)			;7f0f
	inc hl			;7f10
	and a			;7f11
	ret z			;7f12
	cp c			;7f13
	jr z,$+7		;7f14
	inc hl			;7f16
	inc hl			;7f17
	jr L_7F0F		;7f18

; ----------------------------------------------------------------------
; DATOS ret_suelto: un ret al que no se llega (p01:7F14 salta por encima)
;   0x7f1a..0x7f1b  (1 bytes)
DATA_ret_suelto:
	defb 0c9h	; 7f1a

; ======================================================================
; CODIGO 0x7f1b..0x7f23  (8 bytes)
; ======================================================================


L_7F1B:
	ld e,(hl)			;7f1b
	inc hl			;7f1c
	ld d,(hl)			;7f1d
	ld a,(de)			;7f1e
	and a			;7f1f
	ret z			;7f20
	scf			;7f21
	ret			;7f22

; ----------------------------------------------------------------------
; DATOS ya_se_dio: [conversacion][direccion de RAM] ... 0: si el byte de RAM
;   no es 0 (ya se tiene el objeto), p01:7F08 no deja empezar esa conversacion
;   0x7f23..0x7f4e  (43 bytes)
DATA_ya_se_dio:
	defb 007h,05fh,0c3h,00bh,04bh,0c3h,012h,056h,0c3h,017h,06ah,0c1h,013h,056h,0c3h,014h	; 7f23  ._..K..V..j..V..
	defb 056h,0c3h,015h,060h,0c3h,01bh,069h,0c1h,01dh,04dh,0c3h,020h,051h,0c3h,026h,059h	; 7f33  V..`..i..M. Q.&Y
	defb 0c3h,028h,058h,0c3h,02fh,06fh,0c1h,031h,04dh,0c3h,000h	; 7f43  .(X./o.1M..

; ======================================================================
; CODIGO 0x7f4e..0x7ffc  (174 bytes)
; ======================================================================


L_7F4E:
	ld a,(0c303h)		;7f4e
	ld e,a			;7f51
	ld a,(0c305h)		;7f52
	ld d,a			;7f55
	ld a,(0c125h)		;7f56
	cp 023h		;7f59
	jr z,L_7FB5		;7f5b
	cp 014h		;7f5d
	jr z,L_7FA8		;7f5f
	cp 00dh		;7f61
	jr z,L_7F7A		;7f63
	cp 027h		;7f65
	jr z,L_7FC3		;7f67
	cp 02eh		;7f69
	jr z,L_7FD9		;7f6b
	cp 03eh		;7f6d
	jr z,L_7FE1		;7f6f
	cp 02dh		;7f71
	jr z,L_7FD1		;7f73
	ld a,(0c14ah)		;7f75
	ld c,a			;7f78
	ret			;7f79
L_7F7A:
	ld a,(0c131h)		;7f7a
	and a			;7f7d
	jr nz,L_7F9B		;7f7e
	ld a,(0c362h)		;7f80
	ld c,000h		;7f83
	and a			;7f85
	ret z			;7f86
	ld a,006h		;7f87
	call 05d9ch		;7f89
	ld a,070h		;7f8c
	ld de,05818h		;7f8e
	ld c,001h		;7f91
	call 0bde7h		;7f93
	call 042bch		;7f96
	jr L_7FA5		;7f99
L_7F9B:
	ld hl,0c32ah		;7f9b
	ld a,(hl)			;7f9e
	and a			;7f9f
	jr nz,L_7FA5		;7fa0
	ld c,017h		;7fa2
	ret			;7fa4
L_7FA5:
	ld c,000h		;7fa5
	ret			;7fa7
L_7FA8:
	ld c,007h		;7fa8
	ld a,e			;7faa
	cp 060h		;7fab
	ret c			;7fad
	ld a,d			;7fae
	cp 060h		;7faf
	inc c			;7fb1
	ret c			;7fb2
	inc c			;7fb3
	ret			;7fb4
L_7FB5:
	ld a,e			;7fb5
	ld c,01ch		;7fb6
	cp 050h		;7fb8
	ret c			;7fba
	ld c,016h		;7fbb
	cp 070h		;7fbd
	ret c			;7fbf
	ld c,015h		;7fc0
	ret			;7fc2
L_7FC3:
	ld c,01eh		;7fc3
	ld a,d			;7fc5
	cp 060h		;7fc6
	ret nc			;7fc8
	ld a,e			;7fc9
	cp 060h		;7fca
	inc c			;7fcc
	ret c			;7fcd
	ld c,01dh		;7fce
	ret			;7fd0
L_7FD1:
	ld c,01ah		;7fd1
	ld a,e			;7fd3
	cp 060h		;7fd4
	ret c			;7fd6
	inc c			;7fd7
	ret			;7fd8
L_7FD9:
	ld c,014h		;7fd9
	ld a,d			;7fdb
	cp 060h		;7fdc
	ret c			;7fde
	dec c			;7fdf
	ret			;7fe0
L_7FE1:
	ld c,025h		;7fe1
	ld a,e			;7fe3
	cp 050h		;7fe4
	ret c			;7fe6
	dec c			;7fe7
	ret			;7fe8
L_7FE9:
	ld a,(0c14bh)		;7fe9
	ld c,a			;7fec
	cp 002h		;7fed
	jr c,L_7FF8		;7fef
	ld a,(0c106h)		;7ff1
	bit 1,a		;7ff4
	jr nz,$+79		;7ff6
L_7FF8:
	ld a,c			;7ff8
	call 0425fh		;7ff9

; ----------------------------------------------------------------------
; DATOS tabla_7FFC: 6 destinos del despachador de 0x425F (call en p01:7FF9):
;   0x8008, 0x8017, 0x8025, 0x8039, 0x8065, 0x8039; lo leen p01:7FF9 (4 bytes)
;   0x7ffc..0x8000  (4 bytes)
DATA_tabla_7FFC:
	defb 008h,080h	; 7ffc
	defb 017h,080h	; 7ffe
