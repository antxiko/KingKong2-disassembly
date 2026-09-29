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
	ld (0c14dh),a		;8009
	ld (0c14ch),a		;800c
	ld (0c15dh),a		;800f
L_8012:
	ld hl,0c14bh		;8012
	inc (hl)			;8015
	ret			;8016
L_8017:
	call 06428h		;8017
	call L_80B0		;801a
	ld a,(0c14ch)		;801d
	inc a			;8020
	jr z,L_8045		;8021
	jr L_8012		;8023
L_8025:
	call L_80E7		;8025
	ld a,(0c155h)		;8028
	and a			;802b
	ret z			;802c
	ld a,(0c14ch)		;802d
	and a			;8030
	jr z,L_8012		;8031
	ld a,004h		;8033
	ld (0c14bh),a		;8035
	ret			;8038
L_8039:
	ld a,(0c106h)		;8039
	bit 4,a		;803c
	ret z			;803e
	ld a,001h		;803f
	ld (0c14bh),a		;8041
	ret			;8044
L_8045:
	call 06428h		;8045
	ld a,(0c149h)		;8048
	and a			;804b
	jr nz,L_8056		;804c
	xor a			;804e
	ld (0c300h),a		;804f
	inc a			;8052
	ld (0c306h),a		;8053
L_8056:
	xor a			;8056
	ld (0c201h),a		;8057
	ld hl,0c15fh		;805a
	ld a,(hl)			;805d
	and a			;805e
	ret z			;805f
	ld (hl),000h		;8060
	jp 07d00h		;8062
L_8065:
	ld a,(0c14ch)		;8065
	dec a			;8068
	call 0425fh		;8069

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


L_80B0:
	ld a,(0c14ah)		;80b0
	ld de,0a66eh		;80b3
	call 042ffh		;80b6
	ld a,(0c14dh)		;80b9
	call 042ffh		;80bc
	ld a,e			;80bf
	or d			;80c0
	jr nz,L_80C9		;80c1
	ld a,0ffh		;80c3
	ld (0c14ch),a		;80c5
	ret			;80c8
L_80C9:
	ex de,hl			;80c9
	ld a,(hl)			;80ca
	ld (0c14ch),a		;80cb
	inc hl			;80ce
	ld de,008b0h		;80cf
	ld (0c157h),hl		;80d2
	ld (0c159h),de		;80d5
	ld (0c15bh),de		;80d9
	ld a,001h		;80dd
	ld (0c156h),a		;80df
	xor a			;80e2
	ld (0c155h),a		;80e3
	ret			;80e6
L_80E7:
	ld hl,0c156h		;80e7
	dec (hl)			;80ea
	ret nz			;80eb
	ld (hl),005h		;80ec
	ld a,001h		;80ee
	call 05488h		;80f0
	ld de,(0c159h)		;80f3
	ld hl,(0c157h)		;80f7
	ld a,(hl)			;80fa
	inc hl			;80fb
	ld (0c157h),hl		;80fc
	cp 0fdh		;80ff
	jr z,L_8120		;8101
	cp 0ffh		;8103
	jr z,L_812A		;8105
	call 04952h		;8107
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
	ld hl,0c14dh		;812a
	inc (hl)			;812d
	ld hl,0c155h		;812e
	inc (hl)			;8131
	ld hl,0c15dh		;8132
	ld a,(hl)			;8135
	ld (hl),000h		;8136
	and a			;8138
	ret z			;8139
	ld (0c14dh),a		;813a
	ret			;813d
L_813E:
	ld a,(0c125h)		;813e
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
	ld a,(0c131h)		;815e
	and a			;8161
	ret z			;8162
	jr L_816A		;8163
L_8165:
	ld a,(0c131h)		;8165
	and a			;8168
	ret nz			;8169
L_816A:
	call L_8176		;816a
	call L_8181		;816d
	call L_81CD		;8170
	jp 042bch		;8173
L_8176:
	di			;8176
	ld a,009h		;8177
	ld (0a000h),a		;8179
	ld (0f0f3h),a		;817c
	ei			;817f
	ret			;8180
L_8181:
	ld a,(0c125h)		;8181
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
	call z,L_8199		;8191
	pop bc			;8194
	pop hl			;8195
	inc b			;8196
	jr L_818A		;8197
L_8199:
	ld a,b			;8199
	ld de,0b423h		;819a
	call 042ffh		;819d
	call L_81BC		;81a0
	ret c			;81a3
	ex de,hl			;81a4
	ld bc,00009h		;81a5
	ldir		;81a8
	dec de			;81aa
	ld a,(de)			;81ab
	ld hl,0c580h		;81ac
	call 04255h		;81af
	ld a,(hl)			;81b2
	and a			;81b3
	ret nz			;81b4
	ld a,e			;81b5
	and 0e0h		;81b6
	ld e,a			;81b8
	xor a			;81b9
	ld (de),a			;81ba
	ret			;81bb
L_81BC:
	ld b,003h		;81bc
	ld hl,0c500h		;81be
L_81C1:
	ld a,(hl)			;81c1
	and a			;81c2
	ret z			;81c3
	ld a,020h		;81c4
	call 04255h		;81c6
	djnz L_81C1		;81c9
	scf			;81cb
	ret			;81cc
L_81CD:
	ld ix,0c500h		;81cd
	call L_81DF		;81d1
	ld ix,0c520h		;81d4
	call L_81DF		;81d8
	ld ix,0c540h		;81db
L_81DF:
	ld a,(ix+000h)		;81df
	and a			;81e2
	ret z			;81e3
	call L_8207		;81e4
	call L_8176		;81e7
	ld a,(ix+007h)		;81ea
	ld hl,0b5bah		;81ed
	add a,a			;81f0
	call 04255h		;81f1
	ld e,(hl)			;81f4
	inc hl			;81f5
	ld d,(hl)			;81f6
	ex de,hl			;81f7
	ld c,(ix+003h)		;81f8
	ld b,(ix+004h)		;81fb
	ld e,(ix+001h)		;81fe
	ld d,(ix+002h)		;8201
	jp 04eb5h		;8204
L_8207:
	ld a,(ix+000h)		;8207
	cp 005h		;820a
	jr nz,L_820E		;820c
L_820E:
	ld l,(ix+001h)		;820e
	ld h,(ix+002h)		;8211
	call 0431fh		;8214
	ld e,(ix+005h)		;8217
	ld d,(ix+006h)		;821a
	ld c,(ix+003h)		;821d
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
	call 04255h		;822d
	dec c			;8230
	jr nz,L_8220		;8231
	ret			;8233
L_8234:
	ld a,(0c681h)		;8234
	call 0425fh		;8237

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
	ld c,017h		;8243
	call 07852h		;8245
	call 0792fh		;8248
	call 0454ch		;824b
	xor a			;824e
	ld (0c356h),a		;824f
	ld (0c141h),a		;8252
	ld (0c140h),a		;8255
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
	call 05488h		;826c
	jr L_8260		;826f
L_8271:
	call 054bdh		;8271
	ret nz			;8274
	ld a,05fh		;8275
	ld (0c125h),a		;8277
	ld hl,04810h		;827a
	ld (0c321h),hl		;827d
	ld a,002h		;8280
	ld (0c130h),a		;8282
	dec a			;8285
	ld (0c323h),a		;8286
	ld (0c132h),a		;8289
	ld (0c600h),a		;828c
	ld (0c201h),a		;828f
	call 06428h		;8292
	ld a,082h		;8295
	jp 05488h		;8297
L_829A:
	ld a,(0c600h)		;829a
	dec a			;829d
	ret m			;829e
	jr nz,L_82EA		;829f
	ld a,(0c300h)		;82a1
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
	call 0425ah		;82b8
	ld a,(de)			;82bb
	ld (0c603h),a		;82bc
	ld a,(0c303h)		;82bf
	sub 008h		;82c2
	ld (de),a			;82c4
	inc de			;82c5
	ld a,(de)			;82c6
	ld (0c605h),a		;82c7
	ld a,(0c305h)		;82ca
	ld (de),a			;82cd
	inc de			;82ce
	ld a,(de)			;82cf
	ld (0c601h),a		;82d0
	ld b,a			;82d3
	ld a,(0c306h)		;82d4
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
	ld (0c606h),a		;82e6
	ret			;82e9
L_82EA:
	ld hl,0c603h		;82ea
	ld a,(0c303h)		;82ed
	sub (hl)			;82f0
	add a,018h		;82f1
	cp 030h		;82f3
	ret nc			;82f5
	inc hl			;82f6
	inc hl			;82f7
	ld a,(0c305h)		;82f8
	sub (hl)			;82fb
	add a,018h		;82fc
	cp 030h		;82fe
	ret nc			;8300
	ld a,001h		;8301
	ld (0c600h),a		;8303
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
	ld a,(0c600h)		;8328
	and a			;832b
	jr z,L_835D		;832c
	call L_836B		;832e
	ret c			;8331
	ld a,(0c125h)		;8332
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
	ld hl,0c125h		;8360
	cp (hl)			;8363
	ret nz			;8364
	ld a,002h		;8365
	ld (0c600h),a		;8367
	ret			;836a
L_836B:
	ld a,(0c600h)		;836b
	cp 002h		;836e
	jr z,L_838A		;8370
	ld a,(0c125h)		;8372
	cp 05ch		;8375
	jr z,L_839A		;8377
	cp 03ch		;8379
	jr z,L_8383		;837b
	cp 057h		;837d
	jr z,L_838A		;837f
L_8381:
	xor a			;8381
	ret			;8382
L_8383:
	ld a,(0c130h)		;8383
	cp 002h		;8386
	jr nz,L_8381		;8388
L_838A:
	xor a			;838a
	ld (0c600h),a		;838b
	ld hl,0e608h		;838e
	ld b,020h		;8391
L_8393:
	ld (hl),0e0h		;8393
	inc hl			;8395
	djnz L_8393		;8396
	scf			;8398
	ret			;8399
L_839A:
	ld a,(0c580h)		;839a
	and a			;839d
	ret z			;839e
	ld a,(0c130h)		;839f
	dec a			;83a2
	jr z,L_838A		;83a3
	xor a			;83a5
	ret			;83a6
L_83A7:
	call 04308h		;83a7
	call L_849D		;83aa
	call L_84B7		;83ad
	ld a,e			;83b0
	cp d			;83b1
	jr nc,L_8419		;83b2
	call 04308h		;83b4
	ld b,000h		;83b7
	ld a,(ix+003h)		;83b9
	cp e			;83bc
	ld a,(0c125h)		;83bd
	jr c,L_83E4		;83c0
	ld c,0e8h		;83c2
	cp 073h		;83c4
	jr z,L_83CA		;83c6
	ld c,0e0h		;83c8
L_83CA:
	ld a,(ix+008h)		;83ca
	or (ix+007h)		;83cd
	and a			;83d0
	jr z,L_83DC		;83d1
	bit 7,(ix+008h)		;83d3
	jr z,L_83DC		;83d7
	inc b			;83d9
	jr L_8403		;83da
L_83DC:
	ld a,(0c306h)		;83dc
	cp 002h		;83df
	ret nc			;83e1
	jr L_8403		;83e2
L_83E4:
	ld c,018h		;83e4
	cp 073h		;83e6
	jr z,L_83EC		;83e8
	ld c,021h		;83ea
L_83EC:
	ld a,(ix+008h)		;83ec
	or (ix+007h)		;83ef
	jr z,L_83FD		;83f2
	bit 7,(ix+008h)		;83f4
	jr nz,L_83FD		;83f8
	inc b			;83fa
	jr L_8403		;83fb
L_83FD:
	ld a,(0c306h)		;83fd
	cp 002h		;8400
	ret nc			;8402
L_8403:
	ld hl,0c300h		;8403
	ld a,(hl)			;8406
	cp 005h		;8407
	jr nc,L_840D		;8409
	ld (hl),000h		;840b
L_840D:
	ld a,(ix+003h)		;840d
	add a,c			;8410
	ld (0c303h),a		;8411
	ld a,b			;8414
	and a			;8415
	ret z			;8416
	jr L_8456		;8417
L_8419:
	call 04308h		;8419
	ld a,(ix+005h)		;841c
	cp d			;841f
	ld b,000h		;8420
	ld a,(ix+00ah)		;8422
	jr c,L_8437		;8425
	or (ix+009h)		;8427
	jr z,L_8433		;842a
	bit 7,(ix+00ah)		;842c
	jr z,L_8433		;8430
	inc b			;8432
L_8433:
	ld c,0e8h		;8433
	jr L_8445		;8435
L_8437:
	or (ix+009h)		;8437
	jr z,L_8443		;843a
	bit 7,(ix+00ah)		;843c
	jr nz,L_8443		;8440
	inc b			;8442
L_8443:
	ld c,018h		;8443
L_8445:
	ld hl,0c300h		;8445
	ld a,(hl)			;8448
	cp 005h		;8449
	jr nc,L_844F		;844b
	ld (hl),000h		;844d
L_844F:
	ld a,(ix+005h)		;844f
	add a,c			;8452
	ld (0c305h),a		;8453
L_8456:
	ld a,(0c303h)		;8456
	sub 008h		;8459
	ld l,a			;845b
	ld a,(0c305h)		;845c
	sub 008h		;845f
	ld h,a			;8461
	call 0431fh		;8462
	ld a,(0c148h)		;8465
	ld de,073d0h		;8468
	call 0425ah		;846b
	ex de,hl			;846e
	call L_8476		;846f
	jp c,06c7bh		;8472
	ret			;8475
L_8476:
	call L_848E		;8476
	ret c			;8479
	ld a,01fh		;847a
	call 0425ah		;847c
	call L_848E		;847f
	ret c			;8482
	ld a,(0c303h)		;8483
	and 007h		;8486
	ret z			;8488
	ld a,01fh		;8489
	call 0425ah		;848b
L_848E:
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
L_849D:
	ld c,018h		;849d
	ld a,(0c125h)		;849f
	cp 073h		;84a2
	jr z,L_84A8		;84a4
	ld c,01ch		;84a6
L_84A8:
	ld a,(ix+003h)		;84a8
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
L_84B7:
	ld a,(ix+005h)		;84b7
	sub d			;84ba
	jr c,L_84BF		;84bb
	neg		;84bd
L_84BF:
	add a,018h		;84bf
	ld d,a			;84c1
	ret			;84c2
L_84C3:
	ld a,(0c303h)		;84c3
	sub (ix+003h)		;84c6
	jr c,L_84CE		;84c9
	cp 00ch		;84cb
	ret nc			;84cd
L_84CE:
	ld a,(ix+006h)		;84ce
	and a			;84d1
	jr z,L_8512		;84d2
	ld a,(ix+008h)		;84d4
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
	ld a,(ix+00ah)		;84e7
	ld c,002h		;84ea
	add a,c			;84ec
	jr c,L_84F0		;84ed
	inc c			;84ef
L_84F0:
	ld a,d			;84f0
	and 007h		;84f1
	jr nz,L_84FA		;84f3
L_84F5:
	call 06fd3h		;84f5
	jr c,L_8512		;84f8
L_84FA:
	ld a,(0c147h)		;84fa
	and a			;84fd
	jr nz,L_8512		;84fe
	ld a,(0c303h)		;8500
	add a,(ix+008h)		;8503
	ld (0c303h),a		;8506
	ld a,(0c305h)		;8509
	add a,(ix+00ah)		;850c
	ld (0c305h),a		;850f
L_8512:
	ld a,001h		;8512
	ld (0c168h),a		;8514
	ret			;8517
L_8518:
	ld (ix+011h),001h		;8518
	ld a,(ix+003h)		;851c
	add a,0ech		;851f
	ld e,a			;8521
	ld a,(ix+005h)		;8522
	add a,0ech		;8525
	ld d,a			;8527
	ld hl,0d0a8h		;8528
	ld bc,03028h		;852b
	ld a,048h		;852e
	call 0481bh		;8530
	ld bc,00808h		;8533
	call 04333h		;8536
	call 06979h		;8539
	ld bc,00403h		;853c
	jp 043b6h		;853f
L_8542:
	ret			;8542
L_8543:
	ld a,(ix+005h)		;8543
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
	call 0729eh		;855a
	add a,a			;855d
	add a,009h		;855e
	ld hl,0df94h		;8560
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
	ld (ix+00bh),a		;8575
L_8578:
	dec (ix+014h)		;8578
	ld a,(ix+014h)		;857b
	and 007h		;857e
	ret nz			;8580
	ld hl,0df94h		;8581
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
	ld (ix+00bh),a		;8596
	ret			;8599
L_859A:
	ld a,00ch		;859a
	call 05488h		;859c
	ld a,b			;859f
	jr L_858D		;85a0
L_85A2:
	call 04308h		;85a2
	ld b,(ix+005h)		;85a5
	ld c,(ix+003h)		;85a8
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
	ld (ix+006h),000h		;85bf
	jr L_8578		;85c3
L_85C5:
	ld (ix+006h),001h		;85c5
	ld b,007h		;85c9
	ld a,(ix+015h)		;85cb
	rra			;85ce
	jr c,L_85D9		;85cf
	ld a,(ix+003h)		;85d1
	and b			;85d4
	jr z,L_85DF		;85d5
	jr L_8632		;85d7
L_85D9:
	ld a,(ix+005h)		;85d9
	and b			;85dc
	jr nz,L_8632		;85dd
L_85DF:
	ld bc,00000h		;85df
	call 0729eh		;85e2
	cp (ix+015h)		;85e5
	jr z,L_8632		;85e8
	ld bc,00001h		;85ea
	call 0729eh		;85ed
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
	ld (0df94h),a		;862c
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
	ld (0df94h),a		;8653
	inc (ix+006h)		;8656
	ld (ix+00bh),03fh		;8659
	jp 06979h		;865d
L_8660:
	call L_87A1		;8660
	ld a,(ix+019h)		;8663
	or a			;8666
	ld hl,08675h		;8667
	jr z,L_866F		;866a
	ld hl,0867bh		;866c
L_866F:
	ld a,(ix+001h)		;866f
	jp 04260h		;8672

; ----------------------------------------------------------------------
; DATOS sin identificar  0x8675..0x870c  (151 bytes)
DATA_8675:
	defb 081h,086h,0afh,086h,00ch,087h,016h,087h,044h,087h,00ch,087h,0cdh,008h,043h,0ddh	; 8675  ........D.....C.
	defb 07eh,003h,0d6h,004h,0bbh,0d0h,0c6h,008h,0bbh,0d8h,0ddh,07eh,005h,0bah,011h,000h	; 8685  ~..........~....
	defb 005h,038h,003h,011h,000h,0fbh,0cdh,018h,043h,011h,000h,000h,0cdh,011h,043h,0ddh	; 8695  .8......C.....C.
	defb 036h,006h,001h,0ddh,036h,00bh,002h,0c3h,010h,089h,011h,000h,002h,0ddh,035h,014h	; 86a5  6...6.........5.
	defb 0ddh,07eh,014h,0e6h,004h,020h,003h,011h,000h,0feh,0ddh,06eh,002h,0ddh,066h,003h	; 86b5  .~... .....n..f.
	defb 019h,0ddh,075h,002h,0ddh,074h,003h,0ddh,07eh,005h,0feh,020h,038h,024h,0feh,090h	; 86c5  ..u..t..~.. 8$..
	defb 030h,020h,0cdh,008h,043h,0ddh,07eh,005h,0d6h,004h,0bah,0d0h,0c6h,008h,0bah,0d8h	; 86d5  0 ..C.~.........
	defb 0ddh,07eh,003h,0d6h,004h,0bbh,0d0h,0c6h,008h,0bbh,0d8h,0ddh,036h,006h,000h,0c3h	; 86e5  .~..........6...
	defb 010h,089h,0ddh,077h,005h,0feh,058h,03eh,020h,038h,002h,03eh,090h,0ddh,077h,005h	; 86f5  ...w..X> 8.>..w.
	defb 0ddh,036h,006h,000h,0c3h,01dh,08ah	; 8705

; ======================================================================
; CODIGO 0x870c..0x8716  (10 bytes)
; ======================================================================


L_870C:
	call 04308h		;870c
	ld (ix+003h),e		;870f
	ld (ix+005h),d		;8712
	ret			;8715

; ----------------------------------------------------------------------
; DATOS sin identificar  0x8716..0x87a1  (139 bytes)
DATA_8716:
	defb 0cdh,008h,043h,0ddh,07eh,005h,0d6h,006h,0bah,0d0h,0c6h,00ch,0bah,0d8h,0ddh,07eh	; 8716  ..C.~..........~
	defb 003h,0bbh,011h,000h,005h,038h,003h,011h,000h,0fbh,0cdh,011h,043h,011h,000h,000h	; 8726  .....8......C...
	defb 0cdh,018h,043h,0ddh,036h,006h,001h,0ddh,036h,00bh,002h,0c3h,010h,089h,011h,000h	; 8736  ..C.6...6.......
	defb 002h,0ddh,035h,014h,0ddh,07eh,014h,0e6h,004h,020h,003h,011h,000h,0feh,0ddh,06eh	; 8746  ..5..~... .....n
	defb 004h,0ddh,066h,005h,019h,0ddh,075h,004h,0ddh,074h,005h,0ddh,07eh,003h,0feh,010h	; 8756  ..f...u..t..~...
	defb 038h,024h,0feh,0a0h,030h,020h,0cdh,008h,043h,0ddh,07eh,003h,0d6h,004h,0bbh,0d0h	; 8766  8$..0 ..C.~.....
	defb 0c6h,008h,0bbh,0d8h,0ddh,07eh,005h,0d6h,004h,0bah,0d0h,0c6h,008h,0bah,0d8h,0ddh	; 8776  .....~..........
	defb 036h,006h,000h,0c3h,010h,089h,0ddh,077h,003h,0feh,058h,03eh,010h,038h,002h,03eh	; 8786  6......w..X>.8.>
	defb 0a0h,0ddh,077h,003h,0ddh,036h,006h,000h,0c3h,01dh,08ah	; 8796  ..w..6.....

; ======================================================================
; CODIGO 0x87a1..0x8839  (152 bytes)
; ======================================================================


L_87A1:
	ld a,(ix+00ch)		;87a1
	and 003h		;87a4
	ret nz			;87a6
	ld a,(ix+013h)		;87a7
	ld b,a			;87aa
	add a,(ix+00bh)		;87ab
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
	ld a,(0c125h)		;87c8
	cp 01bh		;87cb
	jr z,L_87D3		;87cd
	cp 01ch		;87cf
	jr nz,L_87D5		;87d1
L_87D3:
	ld e,008h		;87d3
L_87D5:
	ld a,d			;87d5
	or e			;87d6
	ld (ix+00bh),a		;87d7
	ret			;87da
L_87DB:
	ld b,000h		;87db
	ld a,(ix+003h)		;87dd
	cp 020h		;87e0
	jr c,L_87E8		;87e2
	cp 080h		;87e4
	jr c,L_87E9		;87e6
L_87E8:
	inc b			;87e8
L_87E9:
	ld (ix+019h),b		;87e9
	ld (ix+013h),001h		;87ec
	ld (ix+00bh),000h		;87f0
	ret			;87f4
L_87F5:
	ld de,0ff00h		;87f5
	ld b,005h		;87f8
	ld a,(ix+005h)		;87fa
	cp 0a0h		;87fd
	jr nc,L_880A		;87ff
	cp 010h		;8801
	jr nc,L_8818		;8803
	ld b,009h		;8805
	ld de,00100h		;8807
L_880A:
	ld (ix+00bh),b		;880a
	call 04318h		;880d
	ld a,001h		;8810
	xor (ix+014h)		;8812
	ld (ix+014h),a		;8815
L_8818:
	ld a,(ix+00ch)		;8818
	and 003h		;881b
	jr nz,L_8833		;881d
	ld a,(ix+00bh)		;881f
	sub 002h		;8822
	ld hl,08876h		;8824
	ld b,007h		;8827
L_8829:
	dec a			;8829
	jr z,L_882F		;882a
	inc hl			;882c
	djnz L_8829		;882d
L_882F:
	ld a,(hl)			;882f
	ld (ix+00bh),a		;8830
L_8833:
	ld a,(ix+001h)		;8833
	call 0425fh		;8836

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
	call 04308h		;883f
	ld a,(ix+005h)		;8842
	sub 004h		;8845
	cp d			;8847
	ret nc			;8848
	add a,008h		;8849
	cp d			;884b
	ret c			;884c
	ld a,e			;884d
	ld de,00400h		;884e
	sub (ix+003h)		;8851
	jr nc,L_8859		;8854
	ld de,0fc00h		;8856
L_8859:
	call 04311h		;8859
	ld de,00000h		;885c
	call 04318h		;885f
	ld (ix+006h),001h		;8862
	ld a,(ix+003h)		;8866
	cp 058h		;8869
	ld a,003h		;886b
	jr c,L_8870		;886d
	inc a			;886f
L_8870:
	ld (ix+00bh),a		;8870
	jp L_8910		;8873

; ----------------------------------------------------------------------
; DATOS sin identificar  0x8876..0x887e  (8 bytes)
DATA_8876:
	defb 007h,008h,006h,005h,003h,004h,00ah,009h	; 8876  ........

; ======================================================================
; CODIGO 0x887e..0x88ff  (129 bytes)
; ======================================================================


L_887E:
	call 04308h		;887e
	ld a,e			;8881
	ld e,(ix+003h)		;8882
	sub 004h		;8885
	cp e			;8887
	jr nc,L_88A3		;8888
	add a,008h		;888a
	cp e			;888c
	jr c,L_88A3		;888d
	ld a,d			;888f
	ld d,(ix+005h)		;8890
	sub 004h		;8893
	cp d			;8895
	jr nc,L_88A3		;8896
	add a,008h		;8898
	cp d			;889a
	jr c,L_88A3		;889b
	dec (ix+006h)		;889d
	jp L_8910		;88a0
L_88A3:
	ld a,(ix+003h)		;88a3
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
	call L_8A1D		;88bb
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
	ld (ix+00bh),a		;88d7
	ld hl,00000h		;88da
	jp L_8BDC		;88dd
L_88E0:
	call L_8A6D		;88e0
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
	call z,L_8A2D		;88f6
L_88F9:
	ld a,(ix+001h)		;88f9
	call 0425fh		;88fc

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
	inc (ix+001h)		;8910
	ret			;8913
L_8914:
	ld b,007h		;8914
	ld a,(ix+014h)		;8916
	rra			;8919
	jr c,L_8923		;891a
	ld a,(ix+003h)		;891c
	and b			;891f
	ret nz			;8920
	jr L_8928		;8921
L_8923:
	ld a,(ix+005h)		;8923
	and b			;8926
	ret nz			;8927
L_8928:
	ld bc,00000h		;8928
	ld a,(0c103h)		;892b
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
	call 0729eh		;893e
	jr nc,L_8948		;8941
	ld (ix+006h),000h		;8943
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
	call L_8BDC		;8962
	jr L_8970		;8965
L_8967:
	ld hl,00100h		;8967
L_896A:
	ld de,00000h		;896a
	call L_8BDC		;896d
L_8970:
	ld a,(ix+000h)		;8970
	cp 019h		;8973
	ret z			;8975
	ld (ix+014h),b		;8976
	ld a,(ix+00bh)		;8979
	and 001h		;897c
	ld c,a			;897e
	ld a,b			;897f
	add a,a			;8980
	add a,c			;8981
	ld (ix+00bh),a		;8982
	ret			;8985
L_8986:
	dec (ix+015h)		;8986
	jr nz,L_8994		;8989
L_898B:
	ld (ix+015h),090h		;898b
	call L_8A1D		;898f
	jr L_8928		;8992
L_8994:
	ld b,007h		;8994
	ld a,(ix+014h)		;8996
	rra			;8999
	jr c,L_89A3		;899a
	ld a,(ix+003h)		;899c
	and b			;899f
	ret nz			;89a0
	jr L_89A8		;89a1
L_89A3:
	ld a,(ix+005h)		;89a3
	and b			;89a6
	ret nz			;89a7
L_89A8:
	ld a,(0c107h)		;89a8
	or a			;89ab
	jr nz,L_89B2		;89ac
	ld (ix+006h),a		;89ae
	ret			;89b1
L_89B2:
	ld (ix+006h),001h		;89b2
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
L_89CC:
	ld de,00000h		;89cc
	ld h,d			;89cf
	ld l,e			;89d0
	jp L_8BDC		;89d1
L_89D4:
	ld a,b			;89d4
	ld e,000h		;89d5
	push af			;89d7
	call 07303h		;89d8
	pop de			;89db
	jr c,L_89CC		;89dc
	ld a,d			;89de
	jp L_893E		;89df
L_89E2:
	dec (ix+016h)		;89e2
	jr z,L_898B		;89e5
	ld b,007h		;89e7
	ld a,(ix+014h)		;89e9
	rra			;89ec
	jr c,L_89F6		;89ed
	ld a,(ix+003h)		;89ef
	and b			;89f2
	ret nz			;89f3
	jr L_89FB		;89f4
L_89F6:
	ld a,(ix+005h)		;89f6
	and b			;89f9
	ret nz			;89fa
L_89FB:
	ld bc,00000h		;89fb
	call 0729eh		;89fe
	add a,002h		;8a01
	and 003h		;8a03
	ld e,000h		;8a05
	call 07303h		;8a07
	jp nc,L_893E		;8a0a
	call L_89CC		;8a0d
	ld (ix+006h),000h		;8a10
	ret			;8a14
L_8A15:
	dec (ix+016h)		;8a15
	ret nz			;8a18
	ld (ix+006h),001h		;8a19
L_8A1D:
	ld (ix+001h),000h		;8a1d
	ret			;8a21

; ----------------------------------------------------------------------
; DATOS sin identificar  0x8a22..0x8a2d  (11 bytes)
DATA_8A22:
	defb 0cdh,0b4h,08ch,0afh,006h,008h,077h,019h,010h,0fch,0c9h	; 8a22  ......w....

; ======================================================================
; CODIGO 0x8a2d..0x8add  (176 bytes)
; ======================================================================


L_8A2D:
	call 04308h		;8a2d
	ld h,(ix+005h)		;8a30
	ld l,(ix+003h)		;8a33
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
	ld (ix+006h),000h		;8a4e
	ld (ix+016h),090h		;8a52
	ld (ix+001h),003h		;8a56
	pop de			;8a5a
	ld c,08ah		;8a5b
L_8A5D:
	ld d,(ix+005h)		;8a5d
	ld e,(ix+003h)		;8a60
	call 0709ah		;8a63
	ld (ix+018h),l		;8a66
	ld (ix+019h),h		;8a69
	ret			;8a6c
L_8A6D:
	ld a,(ix+001h)		;8a6d
	cp 003h		;8a70
	ret z			;8a72
L_8A73:
	ld a,(ix+00ch)		;8a73
	and 007h		;8a76
	ret nz			;8a78
	ld a,001h		;8a79
	xor (ix+00bh)		;8a7b
	ld (ix+00bh),a		;8a7e
	ret			;8a81
L_8A82:
	ld (ix+00bh),000h		;8a82
	ld (ix+015h),090h		;8a86
	ld c,08ah		;8a8a
	jr L_8A5D		;8a8c
L_8A8E:
	call L_8A73		;8a8e
	dec (ix+014h)		;8a91
	ret nz			;8a94
	ld (ix+014h),040h		;8a95
	ld d,(ix+005h)		;8a99
	dec d			;8a9c
	ld a,(ix+003h)		;8a9d
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
	ld (ix+00bh),060h		;8ab9
	ld a,(ix+005h)		;8abd
	sub 014h		;8ac0
	ld d,a			;8ac2
	ld a,(ix+003h)		;8ac3
	sub 010h		;8ac6
	ld e,a			;8ac8
	ld hl,0d8b0h		;8ac9
	ld bc,02820h		;8acc
	ld a,048h		;8acf
	jp 0481bh		;8ad1
L_8AD4:
	call L_87A1		;8ad4
	ld a,(ix+001h)		;8ad7
	call 0425fh		;8ada

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
	ld b,(ix+005h)		;8aeb
	ld c,(ix+003h)		;8aee
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
	ld (ix+005h),d		;8b16
	ld (ix+003h),e		;8b19
	dec (ix+006h)		;8b1c
	jp L_8910		;8b1f
L_8B22:
	call 05bd6h		;8b22
	call 04308h		;8b25
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
	ld d,(ix+005h)		;8b35
	ld e,(ix+003h)		;8b38
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
	call L_8BD9		;8b49
	ld (ix+01eh),000h		;8b4c
	jp L_8910		;8b50
L_8B53:
	ld a,(ix+01eh)		;8b53
	rra			;8b56
	ret nc			;8b57
	ld (ix+006h),000h		;8b58
	jp L_8910		;8b5c
L_8B5F:
	ld (ix+00bh),008h		;8b5f
	ld (ix+013h),001h		;8b63
	ld a,028h		;8b67
	call L_8BC6		;8b69
	cp 004h		;8b6c
	jr c,L_8B75		;8b6e
	ld (ix+003h),0e0h		;8b70
	ret			;8b74
L_8B75:
	call 04308h		;8b75
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
	ld hl,08bbah		;8b8f
	call 04255h		;8b92
	ld b,(hl)			;8b95
	inc hl			;8b96
	ld c,(hl)			;8b97
	inc hl			;8b98
	ld a,(hl)			;8b99
	ld (ix+018h),b		;8b9a
	ld (ix+019h),c		;8b9d
	ld (ix+014h),a		;8ba0
	ld hl,0c303h		;8ba3
	ld (hl),b			;8ba6
	inc hl			;8ba7
	inc hl			;8ba8
	ld (hl),c			;8ba9
	push hl			;8baa
	call L_8BD9		;8bab
	pop hl			;8bae
	ld b,(ix+01ah)		;8baf
	ld c,(ix+01bh)		;8bb2
	ld (hl),c			;8bb5
	dec hl			;8bb6
	dec hl			;8bb7
	ld (hl),b			;8bb8
	ret			;8bb9

; ----------------------------------------------------------------------
; DATOS sin identificar  0x8bba..0x8bc6  (12 bytes)
DATA_8BBA:
	defb 085h,02bh,009h,02bh,02bh,019h,02bh,085h,029h,085h,085h,039h	; 8bba  .+.++.+.)..9

; ======================================================================
; CODIGO 0x8bc6..0x8bec  (38 bytes)
; ======================================================================


L_8BC6:
	ld hl,0d000h		;8bc6
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
L_8BD9:
	call 0716dh		;8bd9
L_8BDC:
	inc (ix+006h)		;8bdc
	call 04318h		;8bdf
	ex de,hl			;8be2
	jp 04311h		;8be3
L_8BE6:
	ld a,(ix+001h)		;8be6
	call 0425fh		;8be9

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
	call L_8A73		;8bf0
	dec (ix+015h)		;8bf3
	ret nz			;8bf6
	ld a,(ix+000h)		;8bf7
	cp 033h		;8bfa
	ld c,060h		;8bfc
	jr $+10		;8bfe

; ----------------------------------------------------------------------
; DATOS sin identificar  0x8c00..0x8c08  (8 bytes)
DATA_8C00:
	defb 0feh,034h,00eh,080h,018h,002h,00eh,0a0h	; 8c00  .4......

; ======================================================================
; CODIGO 0x8c08..0x8c64  (92 bytes)
; ======================================================================


L_8C08:
	ld a,c			;8c08
	call 0716fh		;8c09
	inc (ix+006h)		;8c0c
	call 04318h		;8c0f
	ex de,hl			;8c12
	call 04311h		;8c13
	call 04308h		;8c16
	ld (ix+016h),e		;8c19
	ld (ix+00bh),063h		;8c1c
	jp L_8910		;8c20
L_8C23:
	ld a,00dh		;8c23
	call 05488h		;8c25
	ld d,010h		;8c28
	call 073e4h		;8c2a
	jr c,L_8C5D		;8c2d
	ld d,(ix+017h)		;8c2f
	ld e,(ix+016h)		;8c32
	ld a,e			;8c35
	sub (ix+003h)		;8c36
	ld b,a			;8c39
	ld a,d			;8c3a
	sub (ix+005h)		;8c3b
	cp b			;8c3e
	jr c,L_8C4F		;8c3f
	ld a,d			;8c41
	sub 004h		;8c42
	ld b,(ix+005h)		;8c44
	cp b			;8c47
	ret nc			;8c48
	add a,008h		;8c49
	cp b			;8c4b
	ret c			;8c4c
	jr $+67		;8c4d
L_8C4F:
	ld a,e			;8c4f
	sub 004h		;8c50
	ld b,(ix+003h)		;8c52
	cp b			;8c55
	ret nc			;8c56
	add a,008h		;8c57
	cp b			;8c59
	ret c			;8c5a
	jr $+53		;8c5b
L_8C5D:
	ld a,b			;8c5d
	ld bc,00ff0h		;8c5e
	call 0425fh		;8c61

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
	ld a,(ix+005h)		;8c6c
	add a,b			;8c6f
	and c			;8c70
	ld (ix+005h),a		;8c71
	jr L_8C90		;8c74
L_8C76:
	ld a,(ix+005h)		;8c76
	and c			;8c79
	ld (ix+005h),a		;8c7a
	jr L_8C90		;8c7d
L_8C7F:
	ld a,(ix+003h)		;8c7f
	add a,b			;8c82
	and c			;8c83
	ld (ix+003h),a		;8c84
	jr L_8C90		;8c87
L_8C89:
	ld a,(ix+003h)		;8c89
	and c			;8c8c
	ld (ix+003h),a		;8c8d
L_8C90:
	ld de,00000h		;8c90
	call 04318h		;8c93
	call 04311h		;8c96
	ld (ix+015h),010h		;8c99
	jp L_8A1D		;8c9d
L_8CA0:
	ld (ix+015h),005h		;8ca0
	ld (ix+00bh),062h		;8ca4
	inc (ix+006h)		;8ca8
	ld de,00000h		;8cab
	call 04318h		;8cae
	jp 04311h		;8cb1
L_8CB4:
	push ix		;8cb4
	pop hl			;8cb6
	push bc			;8cb7
	ld bc,00025h		;8cb8
	add hl,bc			;8cbb
	ld de,00005h		;8cbc
	pop bc			;8cbf
	ret			;8cc0
L_8CC1:
	call L_8CB4		;8cc1
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
	ld a,(ix+00ch)		;8cce
	and 003h		;8cd1
	jr nz,L_8CED		;8cd3
	ld hl,08d60h		;8cd5
	ld a,(ix+00bh)		;8cd8
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
	ld (ix+00bh),a		;8cea
L_8CED:
	ld b,007h		;8ced
	ld a,(ix+014h)		;8cef
	rra			;8cf2
	jr c,L_8CFC		;8cf3
	ld a,(ix+003h)		;8cf5
	and b			;8cf8
	jr z,L_8D01		;8cf9
	ret			;8cfb
L_8CFC:
	ld a,(ix+005h)		;8cfc
	and b			;8cff
	ret nz			;8d00
L_8D01:
	ld bc,00000h		;8d01
	call 0729eh		;8d04
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
	ld (ix+006h),000h		;8d1b
	ret			;8d1f
L_8D20:
	ld (ix+006h),001h		;8d20
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
	call L_8BDC		;8d3e
	jr L_8D4C		;8d41
L_8D43:
	ld hl,00100h		;8d43
L_8D46:
	ld de,00000h		;8d46
	call L_8BDC		;8d49
L_8D4C:
	ld a,b			;8d4c
	cp (ix+014h)		;8d4d
	ret z			;8d50
	ld (ix+014h),b		;8d51
	ld e,b			;8d54
	ld d,000h		;8d55
	ld hl,08d68h		;8d57
	add hl,de			;8d5a
	ld a,(hl)			;8d5b
	ld (ix+00bh),a		;8d5c
	ret			;8d5f

; ----------------------------------------------------------------------
; DATOS sin identificar  0x8d60..0x8d6c  (12 bytes)
DATA_8D60:
	defb 00ch,00dh,007h,006h,004h,005h,00fh,00eh,005h,00eh,004h,006h	; 8d60  ............

; ======================================================================
; CODIGO 0x8d6c..0x9148  (988 bytes)
; ======================================================================


L_8D6C:
	ld (ix+00bh),004h		;8d6c
	ld (ix+014h),002h		;8d70
	ld de,00000h		;8d74
	ld hl,00100h		;8d77
	jp L_8BDC		;8d7a
L_8D7D:
	ld a,(ix+013h)		;8d7d
	or a			;8d80
	ret nz			;8d81
	ld a,(ix+00ch)		;8d82
	and 003h		;8d85
	ret nz			;8d87
	inc (ix+014h)		;8d88
	ld a,(ix+015h)		;8d8b
	or a			;8d8e
	jr nz,L_8DC8		;8d8f
	ld a,(ix+014h)		;8d91
	and 003h		;8d94
	ld b,a			;8d96
	ld c,(ix+005h)		;8d97
	jr nz,L_8DA4		;8d9a
	ld a,010h		;8d9c
	add a,c			;8d9e
	ld (ix+005h),a		;8d9f
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
	ld a,(0c125h)		;8db5
	cp 073h		;8db8
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
	ld c,(ix+005h)		;8dce
	jr nz,L_8DDB		;8dd1
	ld a,c			;8dd3
	sub 010h		;8dd4
	ld (ix+005h),a		;8dd6
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
	ld a,(0c125h)		;8de9
	cp 076h		;8dec
	jr nz,L_8DFC		;8dee
	ld a,(ix+003h)		;8df0
	cp 058h		;8df3
	jr c,L_8DFC		;8df5
	ld a,c			;8df7
	cp 068h		;8df8
	jr c,L_8E33		;8dfa
L_8DFC:
	ld d,c			;8dfc
	ld h,000h		;8dfd
L_8DFF:
	ld a,(ix+003h)		;8dff
	ld (ix+016h),a		;8e02
	sub 00ch		;8e05
	ld e,a			;8e07
	ld c,018h		;8e08
	ld l,0a8h		;8e0a
	ld a,001h		;8e0c
	call 047d7h		;8e0e
	ld a,(ix+005h)		;8e11
	ld h,a			;8e14
	and 007h		;8e15
	ret nz			;8e17
	ld a,(ix+003h)		;8e18
	sub 008h		;8e1b
	ld l,a			;8e1d
L_8E1E:
	call 0431fh		;8e1e
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
	ld a,(ix+003h)		;8e4a
	ld (ix+018h),a		;8e4d
	ld a,(ix+005h)		;8e50
	ld (ix+019h),a		;8e53
	cp 058h		;8e56
	jr c,L_8E62		;8e58
	ld (ix+00eh),001h		;8e5a
	ld (ix+015h),001h		;8e5e
L_8E62:
	ld (ix+00eh),000h		;8e62
	ret			;8e66
L_8E67:
	ld ix,0d000h		;8e67
	ld b,00dh		;8e6b
L_8E6D:
	ld a,(ix+000h)		;8e6d
	cp 040h		;8e70
	push bc			;8e72
	call z,L_8E99		;8e73
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
	call z,L_8EE1		;8e8a
	inc hl			;8e8d
	call 049ceh		;8e8e
	djnz L_8E87		;8e91
	ld b,020h		;8e93
	dec c			;8e95
	jr nz,L_8E87		;8e96
	ret			;8e98
L_8E99:
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
	call 047d7h		;8ecc
	pop de			;8ecf
	push de			;8ed0
	ld h,d			;8ed1
	ld l,e			;8ed2
	inc l			;8ed3
	inc l			;8ed4
	call L_8E1E		;8ed5
	pop de			;8ed8
	pop bc			;8ed9
	ld a,d			;8eda
	add a,010h		;8edb
	ld d,a			;8edd
	djnz L_8EC2		;8ede
	ret			;8ee0
L_8EE1:
	push hl			;8ee1
	push bc			;8ee2
	push de			;8ee3
	ld d,000h		;8ee4
	call L_8F06		;8ee6
	pop de			;8ee9
	push de			;8eea
	ld h,d			;8eeb
	ld l,e			;8eec
	call 0431fh		;8eed
	ld d,0f1h		;8ef0
	call L_8F06		;8ef2
	pop de			;8ef5
	push de			;8ef6
	ld hl,010a8h		;8ef7
	ld bc,01018h		;8efa
	ld a,001h		;8efd
	call 047d7h		;8eff
	pop de			;8f02
	pop bc			;8f03
	pop hl			;8f04
	ret			;8f05
L_8F06:
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
	ld b,(ix+00dh)		;8f1a
	ld c,(ix+00bh)		;8f1d
	ld a,(0c125h)		;8f20
	cp 076h		;8f23
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
	inc (ix+00bh)		;8f41
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
	ld a,(0c125h)		;8f76
	cp 073h		;8f79
	jr nz,L_8F81		;8f7b
	ld (ix+020h),008h		;8f7d
L_8F81:
	cp 076h		;8f81
	ld c,048h		;8f83
	jr nz,L_8F89		;8f85
	ld c,066h		;8f87
L_8F89:
	ld (ix+00bh),c		;8f89
	inc (ix+006h)		;8f8c
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
	jp L_8BDC		;8faf
L_8FB2:
	ld (ix+006h),001h		;8fb2
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
	ld a,(ix+003h)		;8fce
	cp 010h		;8fd1
	jr z,L_8FE9		;8fd3
	cp 0a0h		;8fd5
	jr z,L_8FF2		;8fd7
	ld a,(ix+005h)		;8fd9
	cp 010h		;8fdc
	jr z,L_8FFB		;8fde
	call L_904B		;8fe0
	ld a,c			;8fe3
	rra			;8fe4
	jr nc,L_9004		;8fe5
	jr L_9017		;8fe7
L_8FE9:
	call L_9038		;8fe9
	ld a,c			;8fec
	rra			;8fed
	jr nc,L_9017		;8fee
	jr L_9010		;8ff0
L_8FF2:
	call L_9038		;8ff2
	ld a,c			;8ff5
	rra			;8ff6
	jr nc,L_9020		;8ff7
	jr L_9004		;8ff9
L_8FFB:
	call L_904B		;8ffb
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
	ld (ix+00bh),a		;9028
	ld (ix+012h),b		;902b
	ld (ix+019h),c		;902e
	call 04311h		;9031
	ex de,hl			;9034
	jp 04318h		;9035
L_9038:
	push hl			;9038
	push de			;9039
	push bc			;903a
	call L_905E		;903b
	ld a,(0c305h)		;903e
	call L_906A		;9041
	ld (ix+005h),a		;9044
	pop bc			;9047
	pop de			;9048
	pop hl			;9049
	ret			;904a
L_904B:
	push hl			;904b
	push de			;904c
	push bc			;904d
	call L_905E		;904e
	ld a,(0c303h)		;9051
	call L_906A		;9054
	ld (ix+003h),a		;9057
	pop bc			;905a
	pop de			;905b
	pop hl			;905c
	ret			;905d
L_905E:
	ld c,020h		;905e
	call 0bf0eh		;9060
	and 001h		;9063
	jr z,L_906A		;9065
	ld c,0e0h		;9067
	ret			;9069
L_906A:
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
	ld l,(ix+003h)		;907e
	ld h,(ix+005h)		;9081
	call 0431fh		;9084
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
	ld hl,09148h		;90a3
	ld a,(ix+019h)		;90a6
	call 04255h		;90a9
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
	jr z,L_910B		;9100
L_9102:
	ld a,(ix+00ah)		;9102
	neg		;9105
	ld (ix+00ah),a		;9107
	ret			;910a
L_910B:
	ld a,(ix+008h)		;910b
	neg		;910e
	ld (ix+008h),a		;9110
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
	call L_9102		;9138
	call L_910B		;913b
	ld (ix+017h),001h		;913e
	ld hl,0bfa8h		;9142
	jp 0bf72h		;9145

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9148..0x914c  (4 bytes)
DATA_9148:
	defb 001h,030h,023h,012h	; 9148

; ======================================================================
; CODIGO 0x914c..0x9201  (181 bytes)
; ======================================================================


L_914C:
	ld a,(ix+00dh)		;914c
	ld (ix+014h),a		;914f
	xor a			;9152
	ld (0dfb5h),a		;9153
	ld (ix+013h),a		;9156
	ld (ix+018h),a		;9159
	inc a			;915c
	ld (ix+00bh),a		;915d
	ld (ix+006h),a		;9160
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
	ld b,(ix+003h)		;917b
	bit 0,(ix+019h)		;917e
	jr z,L_9187		;9182
	ld b,(ix+005h)		;9184
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
	cp (ix+00dh)		;91aa
	jr z,L_91B4		;91ad
	ld a,001h		;91af
	ld (0dfb5h),a		;91b1
L_91B4:
	ld hl,09201h		;91b4
	ld a,(0c107h)		;91b7
	and 00fh		;91ba
	call 04255h		;91bc
	ld a,(hl)			;91bf
	cp 0ffh		;91c0
	jr z,L_91F0		;91c2
	ld e,000h		;91c4
	call 07303h		;91c6
	jr c,L_91CD		;91c9
	jr L_91D3		;91cb
L_91CD:
	ld bc,00000h		;91cd
	call 0729eh		;91d0
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
; DATOS sin identificar  0x9201..0x9211  (16 bytes)
DATA_9201:
	defb 0ffh,002h,000h,0ffh,001h,002h,001h,001h,003h,003h,000h,003h,0ffh,002h,000h,0ffh	; 9201  ................

; ======================================================================
; CODIGO 0x9211..0x924c  (59 bytes)
; ======================================================================


L_9211:
	inc (ix+001h)		;9211
	xor a			;9214
	ld (ix+016h),a		;9215
	ld a,r		;9218
	and 006h		;921a
	add a,002h		;921c
	ld (ix+018h),a		;921e
	ld (ix+019h),00fh		;9221
	ld bc,00000h		;9225
	call 0729eh		;9228
	ld (ix+01bh),a		;922b
	call L_93B7		;922e
	ld a,(ix+01bh)		;9231
	jr nc,L_923D		;9234
	add a,002h		;9236
	and 003h		;9238
	ld (ix+01bh),a		;923a
L_923D:
	ld hl,09ab9h		;923d
	call L_98B4		;9240
	jp L_9326		;9243
L_9246:
	ld a,(ix+001h)		;9246
	call 0425fh		;9249

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
	call L_9326		;9254
	dec (ix+01ah)		;9257
	ret nz			;925a
	ld (ix+01ah),008h		;925b
	ld a,(0c303h)		;925f
	add a,004h		;9262
	and 0f8h		;9264
	cp (ix+003h)		;9266
	jp z,L_92ED		;9269
	ld a,(0c305h)		;926c
	add a,004h		;926f
	and 0f8h		;9271
	cp (ix+005h)		;9273
	jr z,L_92ED		;9276
	dec (ix+019h)		;9278
	jr z,L_928B		;927b
	ld a,(ix+01bh)		;927d
	ld e,000h		;9280
	call 07303h		;9282
	jr c,L_928B		;9285
	call L_93B7		;9287
	ret nc			;928a
L_928B:
	ld a,(ix+018h)		;928b
	ld (ix+019h),a		;928e
	ld bc,00000h		;9291
	call L_92CB		;9294
	cp (ix+01bh)		;9297
	jr nz,L_92A7		;929a
	call L_93B7		;929c
	ret nc			;929f
	ld a,(ix+01bh)		;92a0
	add a,002h		;92a3
	and 003h		;92a5
L_92A7:
	ld (ix+01bh),a		;92a7
	call L_93B7		;92aa
	ld a,(ix+01bh)		;92ad
	jr nc,L_92B9		;92b0
	add a,002h		;92b2
	and 003h		;92b4
	ld (ix+01bh),a		;92b6
L_92B9:
	ld (ix+001h),001h		;92b9
	ld (ix+006h),000h		;92bd
	ld (ix+019h),018h		;92c1
	ld hl,09ab9h		;92c5
	jp L_98B4		;92c8
L_92CB:
	ld a,(ix+016h)		;92cb
	xor 001h		;92ce
	ld (ix+016h),a		;92d0
	jp z,0729eh		;92d3
	ld b,002h		;92d6
	ld a,r		;92d8
	add a,(ix+018h)		;92da
	and 003h		;92dd
	ld hl,093efh		;92df
	call 04255h		;92e2
	ld a,(hl)			;92e5
	ld e,a			;92e6
	inc hl			;92e7
	ld a,(hl)			;92e8
	ld d,a			;92e9
	jp 0729eh		;92ea
L_92ED:
	ld bc,00000h		;92ed
	call 0729eh		;92f0
	ld (ix+01bh),a		;92f3
	call L_93B7		;92f6
	ld a,(ix+01bh)		;92f9
	jr nc,L_9305		;92fc
	add a,002h		;92fe
	and 003h		;9300
	ld (ix+01bh),a		;9302
L_9305:
	ld (ix+001h),000h		;9305
	jp c,L_93B1		;9309
	ld (ix+001h),002h		;930c
	ld hl,09abeh		;9310
	call L_98B4		;9313
	ld (ix+006h),000h		;9316
	ld (ix+019h),00fh		;931a
	ld (ix+01ah),002h		;931e
	call L_9326		;9322
	ret			;9325
L_9326:
	ld a,(ix+01bh)		;9326
	add a,a			;9329
	ld b,a			;932a
	ld a,(ix+00ch)		;932b
	and 008h		;932e
	ld a,b			;9330
	jr z,L_9334		;9331
	inc a			;9333
L_9334:
	ld hl,093e7h		;9334
	call 04255h		;9337
	ld a,(hl)			;933a
	ld (ix+00bh),a		;933b
	ret			;933e
L_933F:
	ld a,(ix+01bh)		;933f
	add a,a			;9342
	ld b,a			;9343
	ld a,(ix+00ch)		;9344
	and 004h		;9347
	ld a,b			;9349
	jr z,L_9334		;934a
	inc a			;934c
	jr L_9334		;934d
L_934F:
	call L_9326		;934f
	dec (ix+019h)		;9352
	ret nz			;9355
	dec (ix+001h)		;9356
	ld a,(ix+018h)		;9359
	ld (ix+019h),a		;935c
	inc (ix+006h)		;935f
	ld (ix+01ah),008h		;9362
	ret			;9366
L_9367:
	dec (ix+019h)		;9367
	ret nz			;936a
	ld (ix+001h),003h		;936b
	ld (ix+006h),001h		;936f
	ret			;9373
L_9374:
	call L_933F		;9374
	dec (ix+01ah)		;9377
	ret nz			;937a
	ld (ix+01ah),002h		;937b
	ld a,(ix+01bh)		;937f
	ld e,000h		;9382
	call 07303h		;9384
	jr c,L_938D		;9387
	call L_93B7		;9389
	ret nc			;938c
L_938D:
	ld (ix+001h),001h		;938d
	ld (ix+006h),000h		;9391
	ld (ix+019h),018h		;9395
	ld bc,00000h		;9399
	call 0729eh		;939c
	ld (ix+01bh),a		;939f
	call L_93B7		;93a2
	ld a,(ix+01bh)		;93a5
	jr nc,L_93B1		;93a8
	add a,002h		;93aa
	and 003h		;93ac
	ld (ix+01bh),a		;93ae
L_93B1:
	ld hl,09ab9h		;93b1
	jp L_98B4		;93b4
L_93B7:
	ld a,(0c125h)		;93b7
	cp 003h		;93ba
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
	ld a,(ix+005h)		;93cb
	cp 070h		;93ce
	scf			;93d0
	ccf			;93d1
	ret nz			;93d2
	ld a,(ix+003h)		;93d3
	cp 048h		;93d6
	ret			;93d8
L_93D9:
	ld a,(ix+003h)		;93d9
	cp 048h		;93dc
	scf			;93de
	ccf			;93df
	ret nz			;93e0
	ld a,(ix+005h)		;93e1
	cp 070h		;93e4
	ret			;93e6

; ----------------------------------------------------------------------
; DATOS sin identificar  0x93e7..0x93f4  (13 bytes)
DATA_93E7:
	defb 00ch,010h,011h,012h,00bh,00fh,00dh,00eh,020h,020h,090h,090h,020h	; 93e7  ........  ..

; ======================================================================
; CODIGO 0x93f4..0x950d  (281 bytes)
; ======================================================================


L_93F4:
	ld (ix+00bh),00eh		;93f4
	ld (ix+016h),006h		;93f8
	ld (ix+017h),006h		;93fc
	xor a			;9400
	ld (ix+018h),a		;9401
	inc a			;9404
	ld (ix+006h),a		;9405
	ld (ix+013h),a		;9408
	inc a			;940b
	ld (ix+019h),a		;940c
	ld (ix+014h),a		;940f
	ret			;9412
L_9413:
	ld a,(ix+001h)		;9413
	dec a			;9416
	jp z,L_9519		;9417
	dec a			;941a
	jp z,L_9529		;941b
	ld hl,0bf96h		;941e
	call 0bf72h		;9421
	call L_9564		;9424
	ret nc			;9427
	ld a,(0c303h)		;9428
	cp (ix+003h)		;942b
	jr z,L_94A4		;942e
	ld a,(0c305h)		;9430
	cp (ix+005h)		;9433
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
	call 0729eh		;9460
L_9463:
	ld (ix+019h),a		;9463
	ld hl,0bf42h		;9466
	call 0bf19h		;9469
	ld a,(ix+019h)		;946c
	cp (ix+014h)		;946f
	ret z			;9472
	ld (ix+014h),a		;9473
	ld (ix+017h),001h		;9476
	ld hl,0bf96h		;947a
	jp 0bf72h		;947d
L_9480:
	ld a,(ix+005h)		;9480
	ld (ix+01ah),a		;9483
	ld c,030h		;9486
	ld a,(0c303h)		;9488
	cp (ix+003h)		;948b
	jr nc,L_9492		;948e
	ld c,0d0h		;9490
L_9492:
	ld a,(ix+003h)		;9492
	add a,c			;9495
	ld (ix+01bh),a		;9496
	ld b,000h		;9499
	cp (ix+003h)		;949b
	jr c,L_94C6		;949e
	ld b,002h		;94a0
	jr L_94C6		;94a2
L_94A4:
	ld a,(ix+003h)		;94a4
	ld (ix+01bh),a		;94a7
	ld c,030h		;94aa
	ld a,(0c305h)		;94ac
	cp (ix+005h)		;94af
	jr nc,L_94B6		;94b2
	ld c,0d0h		;94b4
L_94B6:
	ld a,(ix+005h)		;94b6
	add a,c			;94b9
	ld (ix+01ah),a		;94ba
	ld b,003h		;94bd
	cp (ix+005h)		;94bf
	jr c,L_94C6		;94c2
	ld b,001h		;94c4
L_94C6:
	ld a,b			;94c6
	add a,a			;94c7
	ld hl,09511h		;94c8
	call 04255h		;94cb
	ld a,(hl)			;94ce
	add a,(ix+003h)		;94cf
	ld e,a			;94d2
	inc hl			;94d3
	ld a,(hl)			;94d4
	add a,(ix+005h)		;94d5
	ld d,a			;94d8
	ex de,hl			;94d9
	call 0431fh		;94da
	ld a,(hl)			;94dd
	cp 05fh		;94de
	jp c,L_9438		;94e0
	ld c,081h		;94e3
	ld e,(ix+003h)		;94e5
	ld d,(ix+005h)		;94e8
	call 0709ah		;94eb
	ld a,003h		;94ee
	call 05488h		;94f0
	ld bc,00000h		;94f3
	call 0729eh		;94f6
	ld hl,0950dh		;94f9
	call 04255h		;94fc
	ld a,(hl)			;94ff
	ld (ix+00bh),a		;9500
	inc (ix+001h)		;9503
	ld (ix+00ch),000h		;9506
	jp 0bf00h		;950a

; ----------------------------------------------------------------------
; DATOS sin identificar  0x950d..0x9519  (12 bytes)
DATA_950D:
	defb 00ch,017h,00bh,012h,0e3h,000h,002h,028h,024h,001h,004h,0d8h	; 950d  .......($...

; ======================================================================
; CODIGO 0x9519..0x9610  (247 bytes)
; ======================================================================


L_9519:
	ld a,(ix+00ch)		;9519
	cp 030h		;951c
	ret nz			;951e
	inc (ix+001h)		;951f
	ld (ix+012h),012h		;9522
	jp L_9555		;9526
L_9529:
	ld hl,0bf96h		;9529
	call 0bf72h		;952c
	call L_9564		;952f
	ret nc			;9532
	dec (ix+012h)		;9533
	jr nz,L_953C		;9536
	ld (ix+001h),000h		;9538
L_953C:
	ld d,(ix+01ah)		;953c
	ld e,(ix+01bh)		;953f
	ld a,(ix+003h)		;9542
	cp e			;9545
	jr nz,L_9555		;9546
	ld a,(ix+005h)		;9548
	cp d			;954b
	jr nz,L_9555		;954c
	ld (ix+001h),000h		;954e
	jp 0bf00h		;9552
L_9555:
	ld d,(ix+01ah)		;9555
	ld e,(ix+01bh)		;9558
	ld bc,00200h		;955b
	call 0729eh		;955e
	jp L_9463		;9561
L_9564:
	ld a,(ix+003h)		;9564
	bit 0,(ix+019h)		;9567
	jr z,L_9570		;956b
	ld a,(ix+005h)		;956d
L_9570:
	and 007h		;9570
	ret nz			;9572
	scf			;9573
	ret			;9574
L_9575:
	ld (ix+00bh),00dh		;9575
	ld (ix+013h),0ffh		;9579
	ld (ix+014h),020h		;957d
	xor a			;9581
	ld (ix+001h),a		;9582
	ld (ix+010h),a		;9585
	inc a			;9588
	ld (ix+006h),a		;9589
	ld (ix+012h),a		;958c
	call 0bf00h		;958f
	ld (ix+008h),003h		;9592
	ld a,(ix+003h)		;9596
	ld (ix+015h),a		;9599
	ret			;959c
L_959D:
	ld a,(ix+001h)		;959d
	dec a			;95a0
	jr z,L_95F1		;95a1
	call L_95F1		;95a3
	ld bc,00080h		;95a6
	ld a,(ix+015h)		;95a9
	cp (ix+003h)		;95ac
	jr nc,L_95B3		;95af
	ld b,0ffh		;95b1
L_95B3:
	ld h,(ix+008h)		;95b3
	ld l,(ix+007h)		;95b6
	add hl,bc			;95b9
	ld (ix+008h),h		;95ba
	ld (ix+007h),l		;95bd
	ld a,(0c303h)		;95c0
	sub (ix+003h)		;95c3
	ret c			;95c6
	ld (ix+01bh),a		;95c7
	ld a,(0c305h)		;95ca
	sub (ix+005h)		;95cd
	ret nc			;95d0
	neg		;95d1
	sub (ix+01bh)		;95d3
	jr nc,L_95DA		;95d6
	neg		;95d8
L_95DA:
	cp 010h		;95da
	ret nc			;95dc
	ld a,090h		;95dd
	call 0716fh		;95df
	call 04318h		;95e2
	ex de,hl			;95e5
	call 04311h		;95e6
	inc (ix+001h)		;95e9
	ld a,006h		;95ec
	jp 05488h		;95ee
L_95F1:
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
	ld hl,09610h		;9605
	call 04255h		;9608
	ld a,(hl)			;960b
	ld (ix+00bh),a		;960c
	ret			;960f

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9610..0x9614  (4 bytes)
DATA_9610:
	defb 00dh,00eh,00fh,00eh	; 9610

; ======================================================================
; CODIGO 0x9614..0x965c  (72 bytes)
; ======================================================================


L_9614:
	inc (ix+006h)		;9614
	ld (ix+01bh),00fh		;9617
	ld a,(ix+003h)		;961b
	cp 058h		;961e
	ld b,000h		;9620
	jr nc,L_9626		;9622
	ld b,002h		;9624
L_9626:
	ld a,(ix+005h)		;9626
	cp 058h		;9629
	jr c,L_962E		;962b
	inc b			;962d
L_962E:
	ld (ix+016h),b		;962e
	ld a,b			;9631
	add a,a			;9632
	ld hl,097feh		;9633
	call 04255h		;9636
	ld a,(hl)			;9639
	ld (ix+00bh),a		;963a
	ret			;963d
L_963E:
	ld a,(ix+016h)		;963e
	add a,a			;9641
	ld b,a			;9642
	ld a,(ix+00ch)		;9643
	and 008h		;9646
	ld a,b			;9648
	jr z,L_964C		;9649
	inc a			;964b
L_964C:
	ld hl,097feh		;964c
	call 04255h		;964f
	ld a,(hl)			;9652
	ld (ix+00bh),a		;9653
	ld a,(ix+001h)		;9656
	call 0425fh		;9659

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
	inc (ix+001h)		;966a
	ld a,(ix+003h)		;966d
	ld (ix+019h),a		;9670
	ld a,(ix+005h)		;9673
	ld (ix+01ah),a		;9676
	ld a,(ix+016h)		;9679
	jp L_97CB		;967c
L_967F:
	call L_9A9F		;967f
	call L_97A3		;9682
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
	call L_97CB		;969a
	call 04308h		;969d
	ld a,e			;96a0
	add a,004h		;96a1
	and 0f8h		;96a3
	ld (ix+017h),a		;96a5
	ld a,d			;96a8
	add a,004h		;96a9
	and 0f8h		;96ab
	ld (ix+018h),a		;96ad
	ld a,(ix+003h)		;96b0
	ld (ix+013h),a		;96b3
	ld a,(ix+005h)		;96b6
	ld (ix+012h),a		;96b9
	ld (ix+014h),001h		;96bc
	inc (ix+001h)		;96c0
	ret			;96c3
L_96C4:
	call L_97DC		;96c4
	ret nc			;96c7
	ld (ix+001h),004h		;96c8
	ld a,(ix+016h)		;96cc
	xor 003h		;96cf
	ld (ix+016h),a		;96d1
	jp L_97CB		;96d4
L_96D7:
	ld a,(ix+003h)		;96d7
	cp (ix+017h)		;96da
	jr nz,L_96E7		;96dd
	ld a,(ix+005h)		;96df
	cp (ix+018h)		;96e2
	jr z,L_96EB		;96e5
L_96E7:
	call L_97DC		;96e7
	ret nc			;96ea
L_96EB:
	ld (ix+001h),003h		;96eb
	ld a,(ix+016h)		;96ef
	xor 003h		;96f2
	ld (ix+016h),a		;96f4
	jp L_97CB		;96f7
L_96FA:
	ld a,(ix+003h)		;96fa
	cp (ix+013h)		;96fd
	jr nz,L_970A		;9700
	ld a,(ix+005h)		;9702
	cp (ix+012h)		;9705
	jr z,L_970E		;9708
L_970A:
	call L_97DC		;970a
	ret nc			;970d
L_970E:
	ld a,(ix+014h)		;970e
	ld (ix+001h),a		;9711
	ld a,(ix+015h)		;9714
	ld (ix+016h),a		;9717
	call L_97DC		;971a
	ld a,(ix+016h)		;971d
	jp nc,L_97CB		;9720
	inc (ix+001h)		;9723
	ld a,(ix+014h)		;9726
	xor 005h		;9729
	ld (ix+001h),a		;972b
	ld a,(ix+015h)		;972e
	xor 003h		;9731
	ld (ix+016h),a		;9733
	jp L_97CB		;9736
L_9739:
	call L_9A9F		;9739
	call L_97A3		;973c
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
	call L_97CB		;9754
	call 04308h		;9757
	ld a,e			;975a
	add a,004h		;975b
	and 0f8h		;975d
	ld (ix+017h),a		;975f
	ld a,d			;9762
	add a,004h		;9763
	and 0f8h		;9765
	ld (ix+018h),a		;9767
	ld a,(ix+003h)		;976a
	ld (ix+013h),a		;976d
	ld a,(ix+005h)		;9770
	ld (ix+012h),a		;9773
	ld (ix+014h),004h		;9776
	ld (ix+001h),002h		;977a
	ret			;977e
L_977F:
	ld a,(ix+003h)		;977f
	cp (ix+019h)		;9782
	jr nz,L_978F		;9785
	ld a,(ix+005h)		;9787
	cp (ix+01ah)		;978a
	jr z,L_9793		;978d
L_978F:
	call L_97DC		;978f
	ret nc			;9792
L_9793:
	ld a,(ix+016h)		;9793
	xor 003h		;9796
	ld (ix+016h),a		;9798
	call L_97CB		;979b
	ld (ix+001h),001h		;979e
	ret			;97a2
L_97A3:
	ld a,(0c303h)		;97a3
	add a,004h		;97a6
	and 0f8h		;97a8
	sub (ix+003h)		;97aa
	ld d,002h		;97ad
	jr z,L_97C9		;97af
	jr nc,L_97B7		;97b1
	ld d,000h		;97b3
	neg		;97b5
L_97B7:
	ld c,a			;97b7
	ld a,(0c305h)		;97b8
	add a,004h		;97bb
	and 0f8h		;97bd
	sub (ix+005h)		;97bf
	jr nc,L_97C7		;97c2
	inc d			;97c4
	neg		;97c5
L_97C7:
	cp c			;97c7
	ret			;97c8
L_97C9:
	inc a			;97c9
	ret			;97ca
L_97CB:
	add a,a			;97cb
	ld hl,097f6h		;97cc
	call 04255h		;97cf
	ld a,(hl)			;97d2
	ld (ix+008h),a		;97d3
	inc hl			;97d6
	ld a,(hl)			;97d7
	ld (ix+00ah),a		;97d8
	ret			;97db
L_97DC:
	ld a,(ix+016h)		;97dc
	add a,a			;97df
	ld hl,09804h		;97e0
	call 04255h		;97e3
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
; DATOS sin identificar  0x97f6..0x980c  (22 bytes)
DATA_97F6:
	defb 0ffh,001h,0ffh,0ffh,001h,001h,001h,0ffh,00ah,00bh,002h,003h,008h,009h,000h,001h	; 97f6  ................
	defb 000h,003h,001h,002h,002h,003h	; 9806

; ======================================================================
; CODIGO 0x980c..0x9941  (309 bytes)
; ======================================================================


L_980C:
	ld (ix+001h),002h		;980c
	ld a,(ix+000h)		;9810
	sub 01dh		;9813
	ld (ix+016h),a		;9815
	cp 006h		;9818
	jr nz,L_9830		;981a
	ld (ix+001h),003h		;981c
	ld (ix+003h),030h		;9820
	ld (ix+005h),088h		;9824
	ld (ix+01bh),05ah		;9828
	ld (ix+00eh),000h		;982c
L_9830:
	ld a,(ix+016h)		;9830
	ld hl,09aaeh		;9833
	call 04255h		;9836
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
	xor (ix+00ch)		;984d
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
	ld (ix+007h),a		;986a
	ld (ix+009h),a		;986d
	ld hl,09ac3h		;9870
	ld a,(ix+016h)		;9873
	call 04255h		;9876
	ld a,(hl)			;9879
	add a,004h		;987a
	ld hl,09aceh		;987c
	call 04255h		;987f
	ld a,(ix+018h)		;9882
	rra			;9885
	ld a,(hl)			;9886
	jr nc,L_988E		;9887
	ld (0df94h),a		;9889
	ld a,03fh		;988c
L_988E:
	ld (ix+00bh),a		;988e
	ld a,002h		;9891
	ld (ix+01ah),a		;9893
	ld (ix+07fh),a		;9896
	call L_98B1		;9899
	ld a,(ix+000h)		;989c
	cp 01eh		;989f
	jr z,L_98AE		;98a1
	cp 023h		;98a3
	jr z,L_98AE		;98a5
	cp 026h		;98a7
	jr z,L_98AE		;98a9
	cp 027h		;98ab
	ret nz			;98ad
L_98AE:
	jp 06979h		;98ae
L_98B1:
	ld hl,09ab9h		;98b1
L_98B4:
	call 04255h		;98b4
	ld a,(hl)			;98b7
	ld (ix+008h),a		;98b8
	inc hl			;98bb
	ld a,(hl)			;98bc
	ld (ix+00ah),a		;98bd
	ret			;98c0
L_98C1:
	ld hl,09ac3h		;98c1
	ld a,(ix+016h)		;98c4
	call 04255h		;98c7
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
	and (ix+00ch)		;98dc
	jr z,L_98E2		;98df
	inc b			;98e1
L_98E2:
	ld a,b			;98e2
	ld hl,09aceh		;98e3
	call 04255h		;98e6
	ld a,(ix+018h)		;98e9
	rra			;98ec
	ld a,(hl)			;98ed
	jr nc,L_98F5		;98ee
	ld (0df94h),a		;98f0
	ld a,03fh		;98f3
L_98F5:
	ld (ix+00bh),a		;98f5
	ld a,(ix+000h)		;98f8
	cp 01fh		;98fb
	jr z,L_9903		;98fd
	cp 021h		;98ff
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
	ld (ix+006h),001h		;992f
	ld (ix+012h),096h		;9933
	ld (ix+018h),003h		;9937
L_993B:
	ld a,(ix+001h)		;993b
	call 0425fh		;993e

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
	ld a,(ix+006h)		;9952
	xor 001h		;9955
	ld (ix+006h),a		;9957
L_995A:
	call L_9A9F		;995a
	ld a,(ix+018h)		;995d
	rra			;9960
	jr nc,L_9977		;9961
	dec (ix+013h)		;9963
	jr nz,L_9977		;9966
	ld a,(ix+001h)		;9968
	ld (ix+013h),a		;996b
	ld (ix+001h),002h		;996e
	ld (ix+006h),000h		;9972
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
	call L_9A6A		;9989
	jp nc,L_9A61		;998c
	ld (ix+001h),001h		;998f
	jp L_9A61		;9993
L_9996:
	ld a,(ix+018h)		;9996
	and 002h		;9999
	jr nz,L_99A5		;999b
	ld a,(ix+006h)		;999d
	xor 001h		;99a0
	ld (ix+006h),a		;99a2
L_99A5:
	call L_9A9F		;99a5
	ld a,(ix+018h)		;99a8
	rra			;99ab
	jr nc,L_99C1		;99ac
	dec (ix+013h)		;99ae
	jr nz,L_99C1		;99b1
	ld a,(ix+001h)		;99b3
	ld (ix+013h),a		;99b6
	ld (ix+001h),002h		;99b9
	dec (ix+006h)		;99bd
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
	call 0729eh		;99d8
	ret c			;99db
	ld b,(ix+017h)		;99dc
	ld (ix+019h),b		;99df
	ld (ix+001h),000h		;99e2
	jp L_9A61		;99e6
L_99E9:
	dec (ix+014h)		;99e9
	ret nz			;99ec
	ld (ix+014h),01eh		;99ed
	ld a,(ix+013h)		;99f1
	ld (ix+001h),a		;99f4
	ld (ix+006h),001h		;99f7
	ld (ix+013h),008h		;99fb
	ld a,(ix+018h)		;99ff
	and 001h		;9a02
	ld e,a			;9a04
	ld a,(ix+01ah)		;9a05
	call 07303h		;9a08
	ret nc			;9a0b
	call L_9A6A		;9a0c
	jp L_9A61		;9a0f
L_9A12:
	dec (ix+01bh)		;9a12
	ret nz			;9a15
	ld (ix+001h),004h		;9a16
	ld (ix+01bh),03ch		;9a1a
	ld a,009h		;9a1e
	call 05488h		;9a20
	ld a,(0c303h)		;9a23
	cp 061h		;9a26
	ret nc			;9a28
	ld (ix+003h),090h		;9a29
	xor a			;9a2d
	jp L_9A61		;9a2e
L_9A31:
	ld a,(ix+00ch)		;9a31
	rra			;9a34
	ld bc,00144h		;9a35
	jr nc,L_9A3D		;9a38
	ld bc,00000h		;9a3a
L_9A3D:
	call L_8CC1		;9a3d
	dec (ix+01bh)		;9a40
	ret nz			;9a43
	ld bc,00144h		;9a44
	call L_8CC1		;9a47
	ld (ix+001h),000h		;9a4a
	inc (ix+006h)		;9a4e
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
	jp L_98B1		;9a67
L_9A6A:
	ld b,000h		;9a6a
	ld a,(ix+018h)		;9a6c
	and 001h		;9a6f
	ld c,a			;9a71
	ld a,(ix+017h)		;9a72
	cp 006h		;9a75
	ld (ix+019h),a		;9a77
	jp z,0729eh		;9a7a
	ld a,(ix+015h)		;9a7d
	xor 001h		;9a80
	ld (ix+015h),a		;9a82
	jp z,0729eh		;9a85
	ld b,002h		;9a88
	ld a,r		;9a8a
	xor (ix+00ch)		;9a8c
	and 003h		;9a8f
	ld hl,093efh		;9a91
	call 04255h		;9a94
	ld a,(hl)			;9a97
	ld d,a			;9a98
	inc hl			;9a99
	ld a,(hl)			;9a9a
	ld e,a			;9a9b
	jp 0729eh		;9a9c
L_9A9F:
	pop hl			;9a9f
	ld a,(ix+003h)		;9aa0
	and 007h		;9aa3
	ret nz			;9aa5
	ld a,(ix+005h)		;9aa6
	and 007h		;9aa9
	ret nz			;9aab
	push hl			;9aac
	ret			;9aad

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9aae..0x9afe  (80 bytes)
DATA_9AAE:
	defb 021h,016h,037h,022h,037h,022h,016h,000h,022h,036h,036h,0ffh,000h,001h,000h,0ffh	; 9aae  !.7"7".."66.....
	defb 0fch,000h,004h,000h,0fch,000h,010h,018h,008h,018h,020h,018h,000h,020h,028h,028h	; 9abe  .......... .. ((
	defb 001h,005h,002h,003h,000h,004h,006h,007h,002h,006h,007h,008h,001h,005h,003h,004h	; 9ace  ................
	defb 023h,024h,027h,028h,021h,022h,025h,026h,01bh,01ch,01fh,020h,019h,01ah,01dh,01eh	; 9ade  #$'(!"%&... ....
	defb 00ah,00eh,00fh,010h,009h,00dh,00bh,00ch,003h,004h,007h,008h,001h,002h,005h,006h	; 9aee  ................

; ======================================================================
; CODIGO 0x9afe..0x9e22  (804 bytes)
; ======================================================================


L_9AFE:
	ld (ix+00bh),018h		;9afe
	call 0bf0eh		;9b02
	and 00fh		;9b05
	ld (ix+01bh),a		;9b07
	ld (ix+006h),001h		;9b0a
	ld (ix+016h),008h		;9b0e
	ld (ix+017h),008h		;9b12
	xor a			;9b16
	ld (ix+018h),a		;9b17
	ld (ix+018h),a		;9b1a
	ld (ix+012h),002h		;9b1d
	ld (ix+019h),a		;9b21
	jp 0bf00h		;9b24
L_9B27:
	ld a,(ix+001h)		;9b27
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
	inc (ix+001h)		;9b41
	ret			;9b44
L_9B45:
	dec (ix+01bh)		;9b45
	call 0bf0eh		;9b48
	and 003h		;9b4b
	jr nz,L_9B3D		;9b4d
	ld c,08eh		;9b4f
	ld e,(ix+003h)		;9b51
	ld d,(ix+005h)		;9b54
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
	inc (ix+001h)		;9b8e
	ld (ix+01bh),004h		;9b91
	ret			;9b95
L_9B96:
	ld hl,0bfa6h		;9b96
	call 0bf72h		;9b99
	ld a,(ix+003h)		;9b9c
	bit 0,(ix+012h)		;9b9f
	jr z,L_9BA8		;9ba3
	ld a,(ix+005h)		;9ba5
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
	ld d,(ix+003h)		;9bc9
	ld e,(ix+005h)		;9bcc
	push ix		;9bcf
	ld ix,0d000h		;9bd1
L_9BD5:
	ld a,(ix+000h)		;9bd5
	cp 03ch		;9bd8
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
	ld a,(ix+003h)		;9bef
	sub d			;9bf2
	jr z,L_9C22		;9bf3
	jr nc,L_9BF9		;9bf5
	neg		;9bf7
L_9BF9:
	cp 020h		;9bf9
	jr nc,L_9BDC		;9bfb
	ld a,(ix+005h)		;9bfd
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
	ld a,(ix+005h)		;9c22
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
	call L_9CE7		;9c41
	ld a,b			;9c44
	ld (ix+01ch),a		;9c45
	dec a			;9c48
	ld (0dfb6h),a		;9c49
	ld (0dfb7h),a		;9c4c
	ld a,(ix+003h)		;9c4f
	sub 018h		;9c52
	ld (0dfb3h),a		;9c54
	ld a,(ix+005h)		;9c57
	ld (0dfb2h),a		;9c5a
	ld bc,00505h		;9c5d
	call 04333h		;9c60
	call L_9D49		;9c63
	call L_9D32		;9c66
	ld a,(0dfb3h)		;9c69
	add a,008h		;9c6c
L_9C6E:
	ld e,a			;9c6e
	ld a,(0dfb2h)		;9c6f
	ld d,a			;9c72
	ld c,02dh		;9c73
	jp 05a69h		;9c75
L_9C78:
	ld a,(0dfb5h)		;9c78
	and a			;9c7b
	jr z,L_9CC4		;9c7c
	res 1,(ix+00eh)		;9c7e
	xor a			;9c82
	ld (ix+016h),a		;9c83
	ld (ix+00bh),a		;9c86
	ld (ix+011h),a		;9c89
	ld (ix+006h),001h		;9c8c
	ld (ix+013h),012h		;9c90
	ld (ix+019h),008h		;9c94
	ld (ix+00fh),0ffh		;9c98
	call L_9CE7		;9c9c
	ld (ix+01ch),b		;9c9f
	ld a,(0dfb1h)		;9ca2
	ld (ix+015h),a		;9ca5
	inc a			;9ca8
	ld (0dfb1h),a		;9ca9
	ld a,(0dfb4h)		;9cac
	ld (ix+018h),a		;9caf
	add a,008h		;9cb2
	ld (0dfb4h),a		;9cb4
	call L_9CE7		;9cb7
	ld a,(0dfb1h)		;9cba
	cp b			;9cbd
	ld a,(0dfb3h)		;9cbe
	jr nz,L_9C6E		;9cc1
	ret			;9cc3
L_9CC4:
	ld (ix+015h),000h		;9cc4
	call L_9CE7		;9cc8
	ld (ix+01ch),b		;9ccb
	xor a			;9cce
	ld (ix+00bh),a		;9ccf
	ld (ix+006h),a		;9cd2
	inc a			;9cd5
	ld (0dfb5h),a		;9cd6
	ld (ix+00fh),0ffh		;9cd9
	res 1,(ix+00eh)		;9cdd
	ld a,(0dfb3h)		;9ce1
	jp L_9C6E		;9ce4
L_9CE7:
	ld b,004h		;9ce7
	ld a,(0c125h)		;9ce9
	cp 053h		;9cec
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
	ld a,(ix+001h)		;9d00
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
	inc (ix+001h)		;9d17
	ld (ix+00ch),000h		;9d1a
	jp L_9D49		;9d1e
L_9D21:
	ld a,(ix+00ch)		;9d21
	cp 005h		;9d24
	jr z,L_9D60		;9d26
	cp 010h		;9d28
	ret nz			;9d2a
	xor a			;9d2b
	ld (ix+001h),a		;9d2c
	ld (ix+01eh),a		;9d2f
L_9D32:
	ld bc,01810h		;9d32
	ld hl,0d8d0h		;9d35
	ld a,(ix+003h)		;9d38
	sub 00ch		;9d3b
	ld e,a			;9d3d
	ld a,(ix+005h)		;9d3e
	sub 00ch		;9d41
	ld d,a			;9d43
	ld a,001h		;9d44
	jp 047d7h		;9d46
L_9D49:
	ld bc,02828h		;9d49
	ld hl,0d8a8h		;9d4c
	ld a,(ix+003h)		;9d4f
	sub 014h		;9d52
	ld e,a			;9d54
	ld a,(ix+005h)		;9d55
	sub 014h		;9d58
	ld d,a			;9d5a
	ld a,048h		;9d5b
	jp 0481bh		;9d5d
L_9D60:
	ld a,(ix+003h)		;9d60
	add a,002h		;9d63
	ld e,a			;9d65
	ld d,(ix+005h)		;9d66
	ld c,082h		;9d69
	jp 0709ah		;9d6b
L_9D6E:
	ld a,(ix+01eh)		;9d6e
	ld (0dfb8h),a		;9d71
	ld (ix+01eh),000h		;9d74
	ret			;9d78
L_9D79:
	call L_9D6E		;9d79
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
	ld a,(ix+00ch)		;9d8c
	cp 080h		;9d8f
	ret nz			;9d91
	push ix		;9d92
	call L_9EDF		;9d94
	ld e,(ix+003h)		;9d97
	ld d,(ix+005h)		;9d9a
	pop ix		;9d9d
	ld c,08fh		;9d9f
	jp 0709ah		;9da1
L_9DA4:
	call L_9D6E		;9da4
	ld a,(ix+001h)		;9da7
	dec a			;9daa
	jr z,L_9DC4		;9dab
	ld b,03ah		;9dad
	ld a,(0c125h)		;9daf
	cp 053h		;9db2
	jr nz,L_9DB8		;9db4
	ld b,01ah		;9db6
L_9DB8:
	inc (ix+018h)		;9db8
	ld a,b			;9dbb
	cp (ix+018h)		;9dbc
	ret nz			;9dbf
	inc (ix+001h)		;9dc0
	ret			;9dc3
L_9DC4:
	ld a,(0dfb3h)		;9dc4
	add a,008h		;9dc7
	ld (ix+003h),a		;9dc9
	ld a,(0dfb2h)		;9dcc
	ld (ix+005h),a		;9dcf
L_9DD2:
	ld a,(ix+013h)		;9dd2
	ld hl,09efeh		;9dd5
	add a,a			;9dd8
	call 04255h		;9dd9
	ld a,(hl)			;9ddc
	sra a		;9ddd
	ld (ix+008h),a		;9ddf
	add a,(ix+003h)		;9de2
	ld (ix+01ah),a		;9de5
	inc hl			;9de8
	ld a,(hl)			;9de9
	sra a		;9dea
	ld (ix+00ah),a		;9dec
	add a,(ix+005h)		;9def
	ld (ix+01bh),a		;9df2
	dec (ix+019h)		;9df5
	ret nz			;9df8
	ld hl,09e22h		;9df9
	ld a,(0c125h)		;9dfc
	cp 053h		;9dff
	jr z,L_9E06		;9e01
	ld hl,09e27h		;9e03
L_9E06:
	ld a,(ix+01ch)		;9e06
	call 04255h		;9e09
	ld a,(hl)			;9e0c
	ld (ix+019h),a		;9e0d
	ld a,(ix+013h)		;9e10
	inc a			;9e13
	cp 024h		;9e14
	jr nz,L_9E1E		;9e16
	ld a,00ah		;9e18
	call 05488h		;9e1a
	xor a			;9e1d
L_9E1E:
	ld (ix+013h),a		;9e1e
	ret			;9e21

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9e22..0x9e30  (14 bytes)
DATA_9E22:
	defb 001h,001h,002h,003h,005h,001h,001h,001h,001h,003h,001h,002h,001h,005h	; 9e22  ..............

; ======================================================================
; CODIGO 0x9e30..0x9e39  (9 bytes)
; ======================================================================


L_9E30:
	call L_9D6E		;9e30
	ld a,(ix+001h)		;9e33
	call 0425fh		;9e36

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
	ld (ix+008h),000h		;9e41
	ld b,0feh		;9e45
	ld a,(0c125h)		;9e47
	cp 05dh		;9e4a
	jr z,L_9E50		;9e4c
	ld b,002h		;9e4e
L_9E50:
	ld a,(ix+015h)		;9e50
	add a,b			;9e53
	ld hl,09e62h		;9e54
	call 04255h		;9e57
	ld a,(hl)			;9e5a
	ld (ix+018h),a		;9e5b
	inc (ix+001h)		;9e5e
	ret			;9e61

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9e62..0x9e69  (7 bytes)
DATA_9E62:
	defb 031h,029h,021h,019h,011h,009h,001h	; 9e62

; ======================================================================
; CODIGO 0x9e69..0x9ef5  (140 bytes)
; ======================================================================


L_9E69:
	dec (ix+018h)		;9e69
	ret nz			;9e6c
	inc (ix+001h)		;9e6d
	ld (ix+018h),008h		;9e70
	ret			;9e74
L_9E75:
	call 0bf00h		;9e75
	ld (ix+008h),0ffh		;9e78
	dec (ix+018h)		;9e7c
	ret nz			;9e7f
	inc (ix+001h)		;9e80
	ret			;9e83
L_9E84:
	push ix		;9e84
	call L_9EDB		;9e86
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
L_9EDB:
	ld c,(ix+015h)		;9edb
	dec c			;9ede
L_9EDF:
	ld ix,0d000h		;9edf
	ld b,00dh		;9ee3
L_9EE5:
	ld a,(ix+000h)		;9ee5
	cp 02dh		;9ee8
	jr z,$+13		;9eea
L_9EEC:
	ld de,00080h		;9eec
	add ix,de		;9eef
	djnz L_9EE5		;9ef1
	scf			;9ef3
	ret			;9ef4

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9ef5..0x9ef7  (2 bytes)
DATA_9EF5:
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
; DATOS sin identificar  0x9efe..0x9f46  (72 bytes)
DATA_9EFE:
	defb 010h,000h,010h,003h,00fh,005h,00eh,008h,00ch,00ah,00ah,00ch,008h,00eh,005h,00fh	; 9efe  ................
	defb 003h,010h,000h,010h,0fdh,010h,0fbh,00fh,0f8h,00eh,0f6h,00ch,0f4h,00ah,0f2h,008h	; 9f0e  ................
	defb 0f1h,005h,0f0h,003h,0f0h,000h,0f0h,0fdh,0f1h,0fbh,0f2h,0f8h,0f4h,0f6h,0f6h,0f4h	; 9f1e  ................
	defb 0f8h,0f2h,0fbh,0f1h,0fdh,0f0h,000h,0f0h,003h,0f0h,005h,0f1h,008h,0f2h,00ah,0f4h	; 9f2e  ................
	defb 00ch,0f6h,00eh,0f8h,00fh,0fbh,010h,0fdh	; 9f3e  ........

; ======================================================================
; CODIGO 0x9f46..0x9f91  (75 bytes)
; ======================================================================


L_9F46:
	ld a,(ix+000h)		;9f46
	ld (0dfb5h),a		;9f49
	ld (ix+01ah),004h		;9f4c
	ld (ix+013h),004h		;9f50
	ld (ix+00bh),023h		;9f54
	inc (ix+006h)		;9f58
	ld (ix+016h),004h		;9f5b
	ld (ix+017h),004h		;9f5f
	ld (ix+018h),000h		;9f63
	call 06979h		;9f67
L_9F6A:
	ld a,(ix+000h)		;9f6a
	cp 00bh		;9f6d
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
	ld a,(ix+001h)		;9f8b
	call 0425fh		;9f8e

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
	call 0a127h		;9f9d
	ld b,(ix+003h)		;9fa0
	ld c,(ix+002h)		;9fa3
	ld a,(ix+015h)		;9fa6
	rra			;9fa9
	jr nc,L_9FB2		;9faa
	ld b,(ix+005h)		;9fac
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
	inc (ix+001h)		;9fc8
	ld (ix+012h),020h		;9fcb
	jp 0bf00h		;9fcf
L_9FD2:
	dec (ix+013h)		;9fd2
	jr nz,L_9FE8		;9fd5
	ld (ix+013h),004h		;9fd7
	ld c,00dh		;9fdb
	ld d,(ix+005h)		;9fdd
	ld e,(ix+003h)		;9fe0
	ld b,0ffh		;9fe3
	jp 05a69h		;9fe5
L_9FE8:
	ld a,(ix+000h)		;9fe8
	cp 00bh		;9feb
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
; DATOS sin identificar  0x9fff..0xa000  (1 bytes)
DATA_9FFF:
	defb 0cdh	; 9fff
