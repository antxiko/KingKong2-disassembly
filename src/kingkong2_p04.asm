; ==========================================================================
; KING KONG 2: YOMIGAERU DENSETSU - Konami (1986) - MSX - MegaROM RC-745 de 128 KB (Konami4) - banco 04 (se ejecuta en 0x6000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x06000


; ======================================================================
; CODIGO 0x6000..0x60bc  (188 bytes)
; ======================================================================


L_6000:
	ld a,0bch		;6000
	ld (0c081h),a		;6002
	xor a			;6005
	ld (0c08bh),a		;6006
	ld (0c08ch),a		;6009
	ld (0c08dh),a		;600c
	ld (0c090h),a		;600f
	ld (0c094h),a		;6012
L_6015:
	xor a			;6015
	ld (0c080h),a		;6016
	ld (0c08fh),a		;6019
	ld (0c082h),a		;601c
	ld (0c08eh),a		;601f
	ld hl,06299h		;6022
	ld (0c010h),hl		;6025
	ld (0c012h),hl		;6028
	ld (0c014h),hl		;602b
	ld (0c016h),hl		;602e
	ret			;6031
L_6032:
	or a			;6032
	jp z,L_6106		;6033
	cp 0fdh		;6036
	jp nc,L_610B		;6038
	or a			;603b
	jp p,L_60D0		;603c
	ld c,a			;603f
	cp 085h		;6040
	jr nz,L_6046		;6042
	ld a,080h		;6044
L_6046:
	ld (0c08fh),a		;6046
	cp 082h		;6049
	jr z,L_6051		;604b
	cp 087h		;604d
	jr c,L_6055		;604f
L_6051:
	ld a,001h		;6051
	jr L_6056		;6053
L_6055:
	xor a			;6055
L_6056:
	ld (0c090h),a		;6056
	ld a,c			;6059
	ld de,0c01ah		;605a
	ld hl,060bch		;605d
	ld bc,00014h		;6060
	ldir		;6063
	ld hl,060bch		;6065
	ld bc,00014h		;6068
	ldir		;606b
	ld hl,060bch		;606d
	ld bc,00014h		;6070
	ldir		;6073
	and 07fh		;6075
	rlca			;6077
	ld e,a			;6078
	rlca			;6079
	add a,e			;607a
	ld hl,066d8h		;607b
	add a,l			;607e
	ld l,a			;607f
	jr nc,L_6083		;6080
	inc h			;6082
L_6083:
	ld e,(hl)			;6083
	inc hl			;6084
	ld d,(hl)			;6085
	inc hl			;6086
	ld (0c01ah),de		;6087
	ld e,(hl)			;608b
	inc hl			;608c
	ld d,(hl)			;608d
	inc hl			;608e
	ld (0c02eh),de		;608f
	ld e,(hl)			;6093
	inc hl			;6094
	ld d,(hl)			;6095
	ld (0c042h),de		;6096
	ld hl,06321h		;609a
	ld (0c010h),hl		;609d
	ld hl,06328h		;60a0
	ld (0c012h),hl		;60a3
	ld hl,0632fh		;60a6
	ld (0c014h),hl		;60a9
L_60AC:
	xor a			;60ac
	ld (0c08bh),a		;60ad
	ld (0c08ch),a		;60b0
	ld (0c08eh),a		;60b3
	ld a,007h		;60b6
	ld (0c08dh),a		;60b8
L_60BB:
	ret			;60bb

; ----------------------------------------------------------------------
; DATOS sin identificar  0x60bc..0x60d0  (20 bytes)
DATA_60BC:
	defb 000h,000h,001h,000h,000h,000h,000h,000h,000h,001h,000h,000h,000h,000h,001h,001h	; 60bc  ................
	defb 000h,000h,000h,000h	; 60cc

; ======================================================================
; CODIGO 0x60d0..0x62ba  (490 bytes)
; ======================================================================


L_60D0:
	ld c,a			;60d0
	ld a,(0c08eh)		;60d1
	or a			;60d4
	jr nz,$-26		;60d5
	ld a,(0c080h)		;60d7
	cp c			;60da
	jr z,L_60DF		;60db
	jr nc,$-34		;60dd
L_60DF:
	ld a,c			;60df
	ld (0c080h),a		;60e0
	ld de,0c056h		;60e3
	ld hl,060bch		;60e6
	ld bc,00014h		;60e9
	ldir		;60ec
	rlca			;60ee
	ld hl,06684h		;60ef
	add a,l			;60f2
	ld l,a			;60f3
	jr nc,L_60F7		;60f4
	inc h			;60f6
L_60F7:
	ld e,(hl)			;60f7
	inc hl			;60f8
	ld d,(hl)			;60f9
	ld (0c062h),de		;60fa
	ld hl,06587h		;60fe
	ld (0c016h),hl		;6101
	jr $-73		;6104
L_6106:
	call L_6015		;6106
	jr $-78		;6109
L_610B:
	jp z,L_6125		;610b
	cp 0feh		;610e
	jp z,L_61C2		;6110
	ld a,(0c090h)		;6113
	or a			;6116
	jr z,L_611D		;6117
	ld a,02ah		;6119
	jr L_611F		;611b
L_611D:
	ld a,00ah		;611d
L_611F:
	ld (0c08bh),a		;611f
	jp L_60BB		;6122
L_6125:
	ld a,001h		;6125
	ld (0c082h),a		;6127
	ld a,(0c08bh)		;612a
	ld (0c083h),a		;612d
	ld a,(0c08ch)		;6130
	ld (0c084h),a		;6133
	ld a,(0c081h)		;6136
	ld (0c085h),a		;6139
	ld a,(0c08dh)		;613c
	ld (0c097h),a		;613f
	xor a			;6142
	ld (0c08dh),a		;6143
	ld a,0bfh		;6146
	ld (0c081h),a		;6148
	xor a			;614b
	call 00096h		;614c   ; BIOS RDPSG - Reads value from PSG-register
	ld (0c086h),a		;614f
	ld a,001h		;6152
	call 00096h		;6154   ; BIOS RDPSG - Reads value from PSG-register
	ld (0c087h),a		;6157
	ld a,008h		;615a
	call 00096h		;615c   ; BIOS RDPSG - Reads value from PSG-register
	ld (0c088h),a		;615f
	ld a,009h		;6162
	call 00096h		;6164   ; BIOS RDPSG - Reads value from PSG-register
	ld (0c089h),a		;6167
	ld a,00ah		;616a
	call 00096h		;616c   ; BIOS RDPSG - Reads value from PSG-register
	ld (0c08ah),a		;616f
	ld a,00bh		;6172
	call 00096h		;6174   ; BIOS RDPSG - Reads value from PSG-register
	ld (0c091h),a		;6177
	ld a,00ch		;617a
	call 00096h		;617c   ; BIOS RDPSG - Reads value from PSG-register
	ld (0c092h),a		;617f
	ld a,00dh		;6182
	call 00096h		;6184   ; BIOS RDPSG - Reads value from PSG-register
	ld (0c093h),a		;6187
	ld a,008h		;618a
	ld e,000h		;618c
	call 00093h		;618e   ; BIOS WRTPSG - Writes data to PSG-register
	ld a,009h		;6191
	ld e,000h		;6193
	call 00093h		;6195   ; BIOS WRTPSG - Writes data to PSG-register
	ld a,00ah		;6198
	ld e,000h		;619a
	call 00093h		;619c   ; BIOS WRTPSG - Writes data to PSG-register
	xor a			;619f
	ld (0c07eh),a		;61a0
	ld a,004h		;61a3
	ld (0c07fh),a		;61a5
	ld hl,0631ah		;61a8
	ld (0c018h),hl		;61ab
	ld de,0c06ah		;61ae
	ld hl,060bch		;61b1
	ld bc,00014h		;61b4
	ldir		;61b7
	ld hl,06d25h		;61b9
	ld (0c06ah),hl		;61bc
	jp L_60AC		;61bf
L_61C2:
	xor a			;61c2
	ld (0c082h),a		;61c3
	ld a,(0c083h)		;61c6
	ld (0c08bh),a		;61c9
	ld a,(0c084h)		;61cc
	ld (0c08ch),a		;61cf
	ld a,(0c085h)		;61d2
	ld (0c081h),a		;61d5
	ld a,(0c097h)		;61d8
	ld (0c08dh),a		;61db
	ld a,(0c086h)		;61de
	ld e,a			;61e1
	xor a			;61e2
	call 00093h		;61e3   ; BIOS WRTPSG - Writes data to PSG-register
	ld a,(0c087h)		;61e6
	ld e,a			;61e9
	ld a,001h		;61ea
	call 00093h		;61ec   ; BIOS WRTPSG - Writes data to PSG-register
	ld a,(0c088h)		;61ef
	ld e,a			;61f2
	ld a,008h		;61f3
	call 00093h		;61f5   ; BIOS WRTPSG - Writes data to PSG-register
	ld a,(0c089h)		;61f8
	ld e,a			;61fb
	ld a,009h		;61fc
	call 00093h		;61fe   ; BIOS WRTPSG - Writes data to PSG-register
	ld a,(0c08ah)		;6201
	ld e,a			;6204
	ld a,00ah		;6205
	call 00093h		;6207   ; BIOS WRTPSG - Writes data to PSG-register
	ld a,(0c091h)		;620a
	ld e,a			;620d
	ld a,00bh		;620e
	call 00093h		;6210   ; BIOS WRTPSG - Writes data to PSG-register
	ld a,(0c092h)		;6213
	ld e,a			;6216
	ld a,00ch		;6217
	call 00093h		;6219   ; BIOS WRTPSG - Writes data to PSG-register
	ld a,(0c093h)		;621c
	ld e,a			;621f
	ld a,00dh		;6220
	call 00093h		;6222   ; BIOS WRTPSG - Writes data to PSG-register
	jp L_60BB		;6225
L_6228:
	ld a,(0c081h)		;6228
	ld e,a			;622b
	ld a,007h		;622c
	call 00093h		;622e   ; BIOS WRTPSG - Writes data to PSG-register
	ld a,(0c082h)		;6231
	or a			;6234
	jp nz,L_62BB		;6235
	ld a,(0c08bh)		;6238
	dec a			;623b
	jp m,L_6270		;623c
	jr nz,L_626D		;623f
	ld a,(0c08ch)		;6241
	dec a			;6244
	ld (0c08ch),a		;6245
	cp 0f0h		;6248
	jr nz,L_6261		;624a
	ld hl,L_6299		;624c
	ld (0c010h),hl		;624f
	ld (0c012h),hl		;6252
	ld (0c014h),hl		;6255
	xor a			;6258
	ld (0c08dh),a		;6259
	ld (0c090h),a		;625c
	jr L_626D		;625f
L_6261:
	ld a,(0c090h)		;6261
	or a			;6264
	jr z,L_626B		;6265
	ld a,02ah		;6267
	jr L_626D		;6269
L_626B:
	ld a,00ah		;626b
L_626D:
	ld (0c08bh),a		;626d
L_6270:
	xor a			;6270
	ld b,a			;6271
	ld hl,(0c010h)		;6272
	call L_6291		;6275
	ld a,001h		;6278
	ld b,a			;627a
	ld hl,(0c012h)		;627b
	call L_6291		;627e
	ld a,002h		;6281
	ld b,a			;6283
	ld hl,(0c014h)		;6284
	call L_6291		;6287
	ld a,002h		;628a
	ld b,003h		;628c
	ld hl,(0c016h)		;628e
L_6291:
	ld (0c07eh),a		;6291
	ld a,b			;6294
	ld (0c07fh),a		;6295
	jp (hl)			;6298
L_6299:
	ld a,(0c07fh)		;6299
	cp 003h		;629c
	jr nz,L_62A7		;629e
	xor a			;62a0
	ld (0c080h),a		;62a1
	ld a,(0c07fh)		;62a4
L_62A7:
	rlca			;62a7
	ld hl,0c010h		;62a8
	add a,l			;62ab
	ld l,a			;62ac
	jr nc,L_62B0		;62ad
	inc h			;62af
L_62B0:
	ld de,062bah		;62b0
	ld (hl),e			;62b3
	inc hl			;62b4
	ld (hl),d			;62b5
	ld e,000h		;62b6
	jr $+19		;62b8

; ----------------------------------------------------------------------
; DATOS sin identificar  0x62ba..0x62bb  (1 bytes)
DATA_62BA:
	defb 0c9h	; 62ba

; ======================================================================
; CODIGO 0x62bb..0x6302  (71 bytes)
; ======================================================================


L_62BB:
	ld hl,(0c018h)		;62bb
	jp (hl)			;62be
L_62BF:
	ld a,(0c07eh)		;62bf
	rlca			;62c2
	call 00093h		;62c3   ; BIOS WRTPSG - Writes data to PSG-register
	inc a			;62c6
	ld e,d			;62c7
	jp 00093h		;62c8   ; BIOS WRTPSG - Writes data to PSG-register
L_62CB:
	ld a,(0c07eh)		;62cb
	add a,008h		;62ce
	jp 00093h		;62d0   ; BIOS WRTPSG - Writes data to PSG-register
L_62D3:
	push hl			;62d3
	ld hl,06314h		;62d4
	jr L_62E9		;62d7
L_62D9:
	push hl			;62d9
	ld hl,0630eh		;62da
	jr L_62E9		;62dd
L_62DF:
	push hl			;62df
	ld hl,06308h		;62e0
	jr L_62E9		;62e3
L_62E5:
	push hl			;62e5
	ld hl,06302h		;62e6
L_62E9:
	ld a,(0c07eh)		;62e9
	rlca			;62ec
	add a,l			;62ed
	ld l,a			;62ee
	jr nc,L_62F2		;62ef
	inc h			;62f1
L_62F2:
	ld a,(0c081h)		;62f2
	and (hl)			;62f5
	inc hl			;62f6
	or (hl)			;62f7
	ld (0c081h),a		;62f8
	pop hl			;62fb
	ld e,a			;62fc
	ld a,007h		;62fd
	jp 00093h		;62ff   ; BIOS WRTPSG - Writes data to PSG-register

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6302..0x631a  (24 bytes)
DATA_6302:
	defb 0feh,008h,0fdh,010h,0fbh,020h,0f7h,001h,0efh,002h,0dfh,004h,0f6h,000h,0edh,000h	; 6302  ..... ..........
	defb 0dbh,000h,0ffh,009h,0ffh,012h,0ffh,024h	; 6312  .......$

; ======================================================================
; CODIGO 0x631a..0x6464  (330 bytes)
; ======================================================================


L_631A:
	ld ix,0c06ah		;631a
	jp L_6333		;631e
L_6321:
	ld ix,0c01ah		;6321
	jp L_6333		;6325
L_6328:
	ld ix,0c02eh		;6328
	jp L_6333		;632c
L_632F:
	ld ix,0c042h		;632f
L_6333:
	ld a,(0c07fh)		;6333
	cp 002h		;6336
	jr nz,L_6344		;6338
	ld a,(0c080h)		;633a
	or a			;633d
	jr z,L_6344		;633e
	set 5,(ix+002h)		;6340
L_6344:
	dec (ix+009h)		;6344
	jp z,L_6384		;6347
	bit 0,(ix+002h)		;634a
	jp z,L_636D		;634e
	ld a,(ix+009h)		;6351
	cp (ix+00bh)		;6354
	jr nc,L_635D		;6357
	cp (ix+006h)		;6359
	ret nc			;635c
L_635D:
	ld e,(ix+00ah)		;635d
	dec e			;6360
	ret m			;6361
	ld (ix+00ah),e		;6362
	bit 5,(ix+002h)		;6365
	ret nz			;6369
	jp L_62CB		;636a
L_636D:
	bit 5,(ix+002h)		;636d
	ret nz			;6371
	bit 7,(ix+002h)		;6372
	ret nz			;6376
	call L_6592		;6377
	ret nc			;637a
	set 7,(ix+002h)		;637b
	ld e,000h		;637f
	jp L_62CB		;6381
L_6384:
	ld l,(ix+000h)		;6384
	ld h,(ix+001h)		;6387
L_638A:
	ld a,(hl)			;638a
	inc hl			;638b
	ld c,a			;638c
	cp 0d0h		;638d
	jp nc,L_6497		;638f
	ld (ix+000h),l		;6392
	ld (ix+001h),h		;6395
	cp 0c0h		;6398
	jp nc,L_647C		;639a
	and 00fh		;639d
	inc a			;639f
	ld b,a			;63a0
	ld e,(ix+003h)		;63a1
	xor a			;63a4
L_63A5:
	add a,e			;63a5
	djnz L_63A5		;63a6
	ld (ix+009h),a		;63a8
	ld a,(0c07fh)		;63ab
	cp 002h		;63ae
	jr nz,L_63BC		;63b0
	ld a,(0c080h)		;63b2
	or a			;63b5
	jr nz,L_63BC		;63b6
	res 5,(ix+002h)		;63b8
L_63BC:
	bit 0,(ix+002h)		;63bc
	jp z,L_640A		;63c0
	ld a,(ix+009h)		;63c3
	sub (ix+005h)		;63c6
	ld (ix+00bh),a		;63c9
	bit 5,(ix+002h)		;63cc
	ret nz			;63d0
	ld a,c			;63d1
	and 0f0h		;63d2
	rrca			;63d4
	rrca			;63d5
	rrca			;63d6
	ld hl,06464h		;63d7
	add a,l			;63da
	ld l,a			;63db
	jr nc,L_63DF		;63dc
	inc h			;63de
L_63DF:
	ld e,(hl)			;63df
	inc hl			;63e0
	ld d,(hl)			;63e1
	ld b,(ix+007h)		;63e2
L_63E5:
	srl d		;63e5
	rr e		;63e7
	djnz L_63E5		;63e9
	bit 6,(ix+002h)		;63eb
	jr z,L_63F3		;63ef
	inc de			;63f1
	inc de			;63f2
L_63F3:
	call L_62BF		;63f3
	ld a,(0c08ch)		;63f6
	add a,(ix+004h)		;63f9
	jp p,L_6400		;63fc
	xor a			;63ff
L_6400:
	ld (ix+00ah),a		;6400
	ld e,a			;6403
	call L_62CB		;6404
	jp L_62E5		;6407
L_640A:
	ld a,(ix+008h)		;640a
	cp 000h		;640d
	jr z,L_642A		;640f
	cp 001h		;6411
	jr z,L_644B		;6413
	cp 002h		;6415
	jr z,L_6450		;6417
	cp 003h		;6419
	jr z,L_6455		;641b
	cp 004h		;641d
	jr z,L_645A		;641f
	cp 005h		;6421
	jr z,L_645F		;6423
	ld hl,07b4dh		;6425
	jr L_642D		;6428
L_642A:
	ld hl,07abdh		;642a
L_642D:
	ld a,c			;642d
	and 0f0h		;642e
	rrca			;6430
	rrca			;6431
	rrca			;6432
	add a,l			;6433
	ld l,a			;6434
	jr nc,L_6438		;6435
	inc h			;6437
L_6438:
	ld a,(hl)			;6438
	ld (ix+00ch),a		;6439
	inc hl			;643c
	ld a,(hl)			;643d
	ld (ix+00dh),a		;643e
	res 7,(ix+002h)		;6441
	ld a,001h		;6445
	ld (ix+00eh),a		;6447
	ret			;644a
L_644B:
	ld hl,07ad5h		;644b
	jr L_642D		;644e
L_6450:
	ld hl,07aedh		;6450
	jr L_642D		;6453
L_6455:
	ld hl,07b05h		;6455
	jr L_642D		;6458
L_645A:
	ld hl,07b1dh		;645a
	jr L_642D		;645d
L_645F:
	ld hl,07b35h		;645f
	jr L_642D		;6462

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6464..0x647c  (24 bytes)
DATA_6464:
	defb 0b8h,01ah,038h,019h,0d0h,017h,078h,016h,034h,015h,004h,014h,0e4h,012h,0d4h,011h	; 6464  ..8...x.4.......
	defb 0d4h,010h,0e4h,00fh,000h,00fh,028h,00eh	; 6474  ......(.

; ======================================================================
; CODIGO 0x647c..0x6686  (522 bytes)
; ======================================================================


L_647C:
	and 00fh		;647c
	inc a			;647e
	ld b,a			;647f
	ld e,(ix+003h)		;6480
	xor a			;6483
L_6484:
	add a,e			;6484
	djnz L_6484		;6485
	ld (ix+009h),a		;6487
	bit 5,(ix+002h)		;648a
	ret nz			;648e
	ld e,000h		;648f
	ld (ix+00ah),e		;6491
	jp L_62CB		;6494
L_6497:
	and 0f0h		;6497
	cp 0d0h		;6499
	jp z,L_64F7		;649b
	cp 0e0h		;649e
	jp z,L_6500		;64a0
	ld a,c			;64a3
	and 00fh		;64a4
	cp 00fh		;64a6
	jp z,L_6572		;64a8
	cp 00eh		;64ab
	jp nz,L_64D0		;64ad
	ld a,(ix+010h)		;64b0
	dec a			;64b3
	jp z,L_64C7		;64b4
	jp p,L_64BC		;64b7
	ld a,(hl)			;64ba
	dec a			;64bb
L_64BC:
	inc hl			;64bc
	ld (ix+010h),a		;64bd
	ld a,(hl)			;64c0
	inc hl			;64c1
	ld h,(hl)			;64c2
	ld l,a			;64c3
	jp L_638A		;64c4
L_64C7:
	ld (ix+010h),a		;64c7
	inc hl			;64ca
	inc hl			;64cb
	inc hl			;64cc
	jp L_638A		;64cd
L_64D0:
	ld c,a			;64d0
	ld a,(0c094h)		;64d1
	or a			;64d4
	jp z,L_64DC		;64d5
	ld a,000h		;64d8
	jr L_64DF		;64da
L_64DC:
	ld a,c			;64dc
	inc a			;64dd
	inc a			;64de
L_64DF:
	ld (ix+004h),a		;64df
	ld a,(hl)			;64e2
	rrca			;64e3
	rrca			;64e4
	rrca			;64e5
	rrca			;64e6
	and 00fh		;64e7
	ld (ix+005h),a		;64e9
	ld a,(hl)			;64ec
	inc hl			;64ed
	and 00fh		;64ee
	inc a			;64f0
	ld (ix+006h),a		;64f1
	jp L_638A		;64f4
L_64F7:
	ld a,c			;64f7
	and 00fh		;64f8
	ld (ix+003h),a		;64fa
	jp L_638A		;64fd
L_6500:
	ld a,c			;6500
	and 00fh		;6501
	cp 006h		;6503
	jr c,L_6534		;6505
	jr z,L_653E		;6507
	cp 007h		;6509
	jr z,L_654D		;650b
	cp 00ah		;650d
	jr z,L_6554		;650f
	cp 00bh		;6511
	jr z,L_6546		;6513
	cp 00dh		;6515
	jr z,L_655B		;6517
	cp 00eh		;6519
	jr z,L_6569		;651b
	cp 008h		;651d
	jr nz,L_652D		;651f
	res 0,(ix+002h)		;6521
	ld a,(hl)			;6525
	inc hl			;6526
	ld (ix+008h),a		;6527
	jp L_638A		;652a
L_652D:
	set 0,(ix+002h)		;652d
	jp L_638A		;6531
L_6534:
	neg		;6534
	add a,006h		;6536
	ld (ix+007h),a		;6538
	jp L_638A		;653b
L_653E:
	ld a,001h		;653e
	ld (0c08eh),a		;6540
	jp L_638A		;6543
L_6546:
	xor a			;6546
	ld (0c08eh),a		;6547
	jp L_638A		;654a
L_654D:
	set 6,(ix+002h)		;654d
	jp L_638A		;6551
L_6554:
	ld a,(hl)			;6554
	inc hl			;6555
	ld h,(hl)			;6556
	ld l,a			;6557
	jp L_638A		;6558
L_655B:
	ld e,(hl)			;655b
	inc hl			;655c
	ld d,(hl)			;655d
	inc hl			;655e
	ld (ix+012h),l		;655f
	ld (ix+013h),h		;6562
	ex de,hl			;6565
	jp L_638A		;6566
L_6569:
	ld l,(ix+012h)		;6569
	ld h,(ix+013h)		;656c
	jp L_638A		;656f
L_6572:
	ld a,(0c07fh)		;6572
	inc a			;6575
	ld b,a			;6576
	ld a,07fh		;6577
L_6579:
	rlca			;6579
	djnz L_6579		;657a
	ld b,a			;657c
	ld a,(0c08dh)		;657d
	and b			;6580
	ld (0c08dh),a		;6581
	jp L_6299		;6584
L_6587:
	ld ix,0c056h		;6587
	call L_6592		;658b
	ret nc			;658e
	jp L_6299		;658f
L_6592:
	dec (ix+00eh)		;6592
	jp nz,L_6682		;6595
	ld a,(ix+00fh)		;6598
	ld (ix+00eh),a		;659b
	ld l,(ix+00ch)		;659e
	ld h,(ix+00dh)		;65a1
L_65A4:
	ld a,(hl)			;65a4
	cp 0ffh		;65a5
	jp z,L_6684		;65a7
	inc hl			;65aa
	ld c,a			;65ab
	cp 0feh		;65ac
	jp z,L_6611		;65ae
	and 0f0h		;65b1
	cp 020h		;65b3
	jp z,L_6630		;65b5
	cp 010h		;65b8
	jp nz,L_65CC		;65ba
	ld a,c			;65bd
	and 00fh		;65be
	rlca			;65c0
	ld e,a			;65c1
	ld a,006h		;65c2
	call 00093h		;65c4   ; BIOS WRTPSG - Writes data to PSG-register
	ld a,(hl)			;65c7
	inc hl			;65c8
	ld c,a			;65c9
	and 0f0h		;65ca
L_65CC:
	rrca			;65cc
	rrca			;65cd
	rrca			;65ce
	rrca			;65cf
	ld e,a			;65d0
	bit 4,(ix+00ah)		;65d1
	jr z,L_65DF		;65d5
	ld a,00dh		;65d7
	call 00093h		;65d9   ; BIOS WRTPSG - Writes data to PSG-register
	jp L_6602		;65dc
L_65DF:
	bit 0,(ix+002h)		;65df
	jr nz,L_65EF		;65e3
	ld a,(0c094h)		;65e5
	or a			;65e8
	jr z,L_65EF		;65e9
	ld e,000h		;65eb
	jr L_65FF		;65ed
L_65EF:
	ld a,(0c07fh)		;65ef
	cp 003h		;65f2
	jr nc,L_65FF		;65f4
	ld a,(0c08ch)		;65f6
	add a,e			;65f9
	jp p,L_65FE		;65fa
	xor a			;65fd
L_65FE:
	ld e,a			;65fe
L_65FF:
	call L_62CB		;65ff
L_6602:
	ld a,c			;6602
	and 00fh		;6603
	ld d,a			;6605
	ld e,(hl)			;6606
	inc hl			;6607
	ld (ix+00ch),l		;6608
	ld (ix+00dh),h		;660b
	jp L_62BF		;660e
L_6611:
	ld a,(ix+011h)		;6611
	dec a			;6614
	jr z,L_6627		;6615
	jp p,L_661C		;6617
	ld a,(hl)			;661a
	dec a			;661b
L_661C:
	inc hl			;661c
	ld (ix+011h),a		;661d
	ld a,(hl)			;6620
	inc hl			;6621
	ld h,(hl)			;6622
	ld l,a			;6623
	jp L_65A4		;6624
L_6627:
	ld (ix+011h),a		;6627
	inc hl			;662a
	inc hl			;662b
	inc hl			;662c
	jp L_65A4		;662d
L_6630:
	bit 0,c		;6630
	jr nz,L_6642		;6632
	bit 1,c		;6634
	jr nz,L_663D		;6636
	call L_62D3		;6638
	jr L_664E		;663b
L_663D:
	call L_62E5		;663d
	jr L_664E		;6640
L_6642:
	bit 1,c		;6642
	jr nz,L_664B		;6644
	call L_62DF		;6646
	jr L_664E		;6649
L_664B:
	call L_62D9		;664b
L_664E:
	ld a,c			;664e
	rlca			;664f
	and 010h		;6650
	ld (ix+00ah),a		;6652
	ld e,a			;6655
	call L_62CB		;6656
	ld a,(hl)			;6659
	inc hl			;665a
	ld (ix+00eh),a		;665b
	ld (ix+00fh),a		;665e
	ld a,c			;6661
	cp 020h		;6662
	jr z,L_667C		;6664
	cp 028h		;6666
	jp c,L_65A4		;6668
	ld e,(hl)			;666b
	inc hl			;666c
	ld a,00ch		;666d
	call 00093h		;666f   ; BIOS WRTPSG - Writes data to PSG-register
	ld e,(hl)			;6672
	inc hl			;6673
	ld a,00bh		;6674
	call 00093h		;6676   ; BIOS WRTPSG - Writes data to PSG-register
	jp L_65A4		;6679
L_667C:
	ld (ix+00ch),l		;667c
	ld (ix+00dh),h		;667f
L_6682:
	or a			;6682
	ret			;6683
L_6684:
	scf			;6684
	ret			;6685

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6686..0x7e76  (6128 bytes)
DATA_6686:
	defb 02fh,067h,097h,067h,00bh,06ah,040h,06ah,094h,06ah,0f7h,06ah,032h,06bh,045h,06bh	; 6686  /g.g.j@j.j.j2kEk
	defb 058h,06bh,083h,06bh,071h,069h,08eh,069h,0b3h,069h,0dfh,069h,039h,067h,098h,067h	; 6696  Xk.kqi.i.i.i9g.g
	defb 0b6h,067h,0d4h,067h,0efh,067h,00ah,068h,01fh,068h,03ch,068h,03ch,068h,05ah,068h	; 66a6  .g.g.g.h.h<h<hZh
	defb 067h,068h,07ah,068h,08ch,068h,0b9h,06ah,0b0h,06ch,04ah,069h,064h,069h,0a0h,068h	; 66b6  ghzh.h.j.lJidi.h
	defb 0b7h,068h,0eah,06bh,01ah,06ch,071h,06ch,044h,067h,051h,067h,06ah,067h,057h,069h	; 66c6  .h.k.lqlDgQgjgWi
	defb 02eh,067h,061h,06dh,079h,06eh,040h,06fh,052h,071h,097h,071h,0c5h,071h,02bh,072h	; 66d6  .gamyn@oRq.q.q+r
	defb 01ah,073h,0d8h,073h,0c3h,074h,06bh,075h,0a1h,075h,0beh,075h,03dh,076h,06ah,076h	; 66e6  .s.s.tku.u.u=vjv
	defb 032h,06dh,033h,06eh,00ch,06fh,097h,076h,098h,076h,099h,076h,09ah,076h,042h,077h	; 66f6  2m3n.o.v.v.v.vBw
	defb 0b8h,077h,05dh,078h,0ffh,078h,066h,079h,0e9h,079h,029h,07ah,042h,07ah,074h,07ah	; 6706  .w]x.xfy.y)zBztz
	defb 08bh,07ah,0a2h,07ah,004h,06dh,00fh,06dh,01ah,06dh,0efh,06ch,0f6h,06ch,0fdh,06ch	; 6716  .z.z.m.m.m.l.l.l
	defb 0bch,07ah,0bch,07ah,0bch,07ah,0bch,07ah,0ffh,023h,001h,01ah,0e0h,000h,022h,001h	; 6726  .z.z.z.z.#....".
	defb 0b0h,043h,0ffh,02ah,002h,000h,001h,0e3h,000h,0e1h,000h,0e0h,080h,0ffh,02ah,001h	; 6736  .C.*..........*.
	defb 000h,001h,0e0h,010h,02ah,010h,004h,000h,080h,060h,0ffh,022h,003h,0e1h,050h,0e1h	; 6746  ....*....`."..P.
	defb 010h,0e0h,0d0h,0d0h,090h,0d1h,010h,0d0h,0d0h,0c0h,090h,0d0h,040h,0c0h,050h,080h	; 6756  ............@.P.
	defb 050h,040h,050h,0ffh,022h,002h,0e0h,080h,0b0h,078h,0e0h,070h,0b0h,068h,0e0h,060h	; 6766  P@P."....x.p.h.`
	defb 0b0h,058h,022h,001h,0e0h,070h,0b0h,078h,0e0h,070h,0b0h,068h,0e0h,060h,0b0h,058h	; 6776  .X"..p.x.p.h.`.X
	defb 090h,040h,0e0h,070h,0b0h,068h,0e0h,060h,0b0h,058h,090h,040h,050h,040h,030h,040h	; 6786  .@.p.h.`.X.@P@0@
	defb 0ffh,0ffh,022h,001h,0e4h,000h,0f6h,000h,023h,001h,018h,0f0h,000h,017h,0e0h,000h	; 6796  ..".....#.......
	defb 016h,0d0h,000h,015h,0c0h,000h,014h,0b0h,000h,013h,0a0h,000h,014h,090h,000h,0ffh	; 67a6  ................
	defb 023h,001h,01ch,0d0h,004h,01ah,0e0h,004h,017h,0f0h,004h,016h,0e0h,004h,015h,0d0h	; 67b6  #...............
	defb 004h,014h,0c0h,004h,013h,0b0h,000h,013h,0a0h,000h,014h,090h,000h,0ffh,023h,001h	; 67c6  ..............#.
	defb 011h,0d2h,000h,012h,0e8h,000h,013h,0f4h,000h,014h,0e3h,000h,015h,0d2h,080h,016h	; 67d6  ................
	defb 0c2h,040h,017h,0b2h,020h,018h,0a2h,010h,0ffh,023h,001h,018h,0d1h,000h,018h,0e4h	; 67e6  .@.. ....#......
	defb 000h,017h,0f2h,000h,016h,0e1h,080h,015h,0d1h,040h,014h,0c1h,020h,013h,0b1h,010h	; 67f6  .........@.. ...
	defb 012h,0a1h,008h,0ffh,02ah,004h,002h,000h,0e0h,0c0h,02ah,001h,000h,001h,0e0h,0c0h	; 6806  ....*.....*.....
	defb 0e0h,080h,0e0h,060h,0e0h,040h,0e0h,020h,0ffh,021h,002h,01dh,0e0h,000h,01bh,0c0h	; 6816  ...`.@. .!......
	defb 000h,01dh,0e0h,000h,023h,001h,014h,0d0h,020h,013h,0b0h,020h,012h,090h,020h,011h	; 6826  ....#... .. .. .
	defb 070h,020h,010h,060h,020h,0ffh,023h,001h,010h,0d0h,004h,012h,0e0h,008h,013h,0f0h	; 6836  p .` .#.........
	defb 00ch,014h,0e0h,010h,015h,0d0h,014h,016h,0c0h,018h,017h,0b0h,01ch,018h,0a0h,020h	; 6846  ...............
	defb 019h,090h,024h,0ffh,02ah,001h,000h,001h,080h,0c0h,080h,0d0h,080h,0e0h,080h,0f0h	; 6856  ..$.*...........
	defb 0ffh,022h,002h,0d8h,020h,0e4h,020h,0f2h,020h,0e1h,020h,0d0h,0a0h,0c0h,060h,0b0h	; 6866  .".. . . . ...`.
	defb 000h,0a0h,030h,0ffh,022h,001h,0a2h,000h,0a1h,020h,0a1h,0d0h,0c1h,030h,0b1h,080h	; 6876  ..0.".... ...0..
	defb 082h,000h,061h,0b0h,0ffh,0ffh,02bh,001h,000h,001h,010h,084h,000h,083h,000h,082h	; 6886  ..a...+.........
	defb 000h,081h,000h,080h,080h,080h,040h,080h,020h,0ffh,022h,002h,0d2h,020h,0e1h,020h	; 6896  ......@. .".. .
	defb 0f0h,0a0h,0e0h,060h,0d0h,040h,0c2h,020h,0d1h,020h,0e0h,0a0h,0d0h,060h,0c0h,040h	; 68a6  ...`.@. . ...`.@
	defb 0ffh,022h,001h,0e0h,0e0h,0e1h,060h,0e1h,0e0h,0e2h,060h,0e2h,0e0h,0e3h,060h,0e3h	; 68b6  ."....`...`...`.
	defb 0e0h,0e0h,060h,0d0h,0e0h,0d1h,060h,0d1h,0e0h,0d2h,060h,0d2h,0e0h,0d3h,060h,0d3h	; 68c6  ..`...`...`...`.
	defb 0e0h,0d0h,060h,0c0h,0e0h,0c1h,060h,0c1h,0e0h,0c2h,060h,0c2h,0e0h,0c3h,060h,0c3h	; 68d6  ..`...`...`...`.
	defb 0e0h,0c0h,060h,0b0h,0e0h,0b1h,060h,0b1h,0e0h,0b2h,060h,0b2h,0e0h,0b3h,060h,0b3h	; 68e6  ..`...`...`...`.
	defb 0e0h,0b0h,060h,0a0h,0e0h,0a1h,060h,0a1h,0e0h,0a2h,060h,0a2h,0e0h,0a3h,060h,0a3h	; 68f6  ..`...`...`...`.
	defb 0e0h,0a0h,060h,090h,0e0h,091h,060h,091h,0e0h,092h,060h,092h,0e0h,093h,060h,093h	; 6906  ..`...`...`...`.
	defb 0e0h,090h,060h,080h,0e0h,081h,060h,081h,0e0h,082h,060h,082h,0e0h,083h,060h,083h	; 6916  ..`...`...`...`.
	defb 0e0h,080h,060h,070h,0e0h,071h,060h,071h,0e0h,072h,060h,072h,0e0h,073h,060h,073h	; 6926  ..`p.q`q.r`r.s`s
	defb 0e0h,070h,060h,060h,0e0h,061h,060h,061h,0e0h,062h,060h,062h,0e0h,063h,060h,063h	; 6936  .p``.a`a.b`b.c`c
	defb 0e0h,060h,060h,0ffh,022h,001h,0e0h,080h,0f4h,000h,0d2h,000h,0b1h,000h,0a0h,080h	; 6946  .``."...........
	defb 0ffh,02ah,004h,000h,003h,0c0h,008h,040h,006h,0feh,004h,057h,069h,0ffh,022h,001h	; 6956  .*.....@...Wi.".
	defb 0e2h,000h,0c2h,000h,02ah,040h,010h,000h,092h,000h,0ffh,022h,001h,090h,0d0h,0b0h	; 6966  ....*@....."....
	defb 0a0h,0c0h,0b5h,022h,002h,0c0h,0d0h,0b0h,0d2h,0a0h,0d4h,0a0h,0b5h,0c0h,0d0h,0b0h	; 6976  ..."............
	defb 0d2h,0a0h,0d4h,090h,0d7h,090h,0dch,0ffh,022h,001h,0d4h,000h,0d3h,000h,0d2h,000h	; 6986  ........".......
	defb 0d4h,000h,0d3h,000h,0e4h,000h,0f2h,000h,0f3h,000h,0f5h,000h,0e2h,000h,0d3h,000h	; 6996  ................
	defb 0c4h,000h,0b5h,000h,0b3h,000h,0a4h,000h,0a3h,000h,084h,000h,0ffh,021h,001h,010h	; 69a6  .............!..
	defb 0c0h,000h,013h,0e0h,000h,012h,0d0h,000h,011h,0d0h,000h,010h,0c0h,000h,021h,002h	; 69b6  ..............!.
	defb 012h,0d0h,000h,0f0h,000h,011h,0e0h,000h,0d0h,000h,010h,0c0h,000h,0b0h,000h,0a0h	; 69c6  ................
	defb 000h,090h,000h,080h,000h,070h,000h,0ffh,0ffh,022h,001h,0e3h,0fch,0b3h,0fch,093h	; 69d6  .....p..."......
	defb 0fch,0e3h,0c3h,0b3h,0c3h,093h,0c3h,0e3h,093h,093h,093h,0e3h,064h,0b3h,064h,093h	; 69e6  ............d.d.
	defb 064h,0e3h,039h,0b3h,039h,093h,039h,0e3h,012h,0b3h,012h,093h,012h,0e2h,0f6h,0b2h	; 69f6  d.9.9.9.........
	defb 0f6h,092h,0f6h,0ffh,0ffh,022h,001h,0e1h,080h,0e1h,0c0h,0e2h,000h,0e2h,040h,0e2h	; 6a06  ....."........@.
	defb 080h,0e2h,0c0h,0e3h,000h,0e3h,000h,0d3h,000h,0c3h,000h,0b3h,000h,0a3h,000h,093h	; 6a16  ................
	defb 000h,083h,000h,073h,000h,063h,000h,053h,000h,043h,000h,053h,000h,043h,000h,053h	; 6a26  ...s.c.S.C.S.C.S
	defb 000h,043h,000h,053h,000h,053h,000h,053h,000h,0ffh,023h,001h,010h,0f0h,030h,0f0h	; 6a36  .C.S.S.S..#...0.
	defb 02eh,0e0h,02ch,0e0h,02ah,0d0h,028h,0d0h,026h,0c0h,024h,0c0h,022h,0e0h,024h,0e0h	; 6a46  ..,.*.(.&.$.".$.
	defb 026h,0d0h,028h,0d0h,02ah,0c0h,02ch,0c0h,02eh,0b0h,030h,0b0h,032h,0d0h,030h,0d0h	; 6a56  &.(.*.,...0.2.0.
	defb 02eh,0c0h,02ch,0c0h,02ah,0b0h,028h,0b0h,026h,0a0h,024h,0a0h,022h,0c0h,024h,0c0h	; 6a66  ..,.*.(.&.$.".$.
	defb 026h,0b0h,028h,0b0h,02ah,0a0h,02ch,0a0h,02eh,090h,030h,090h,02eh,0b0h,02ch,0b0h	; 6a76  &.(.*.,...0...,.
	defb 02ah,0a0h,028h,0a0h,026h,090h,024h,090h,022h,080h,020h,080h,01eh,0ffh,023h,001h	; 6a86  *.(.&.$.". ...#.
	defb 018h,0a3h,000h,01dh,0b2h,000h,01eh,0b3h,000h,01ch,0e1h,080h,01fh,0d3h,000h,0d1h	; 6a96  ................
	defb 080h,0e2h,000h,0f2h,080h,0c1h,080h,0b2h,000h,023h,005h,01fh,091h,0c0h,082h,060h	; 6aa6  .........#.....`
	defb 073h,000h,0ffh,023h,002h,010h,0f0h,080h,022h,001h,0e0h,080h,0e1h,000h,0e1h,080h	; 6ab6  s..#....".......
	defb 0efh,0f0h,0e0h,070h,0e0h,0f0h,0e1h,070h,0efh,0e0h,0d0h,060h,0d0h,0e0h,0d1h,060h	; 6ac6  ...p...p...`...`
	defb 0dfh,0d0h,0d0h,050h,0d1h,050h,0dfh,0c0h,0c0h,040h,0c1h,040h,0cfh,0b0h,0c0h,030h	; 6ad6  ...P.P...@.@...0
	defb 0c1h,030h,0cfh,0a0h,0b0h,020h,0b1h,020h,0bfh,090h,0a0h,010h,091h,010h,08fh,080h	; 6ae6  .0... . ........
	defb 0ffh,022h,001h,070h,080h,070h,090h,070h,080h,070h,08fh,0f0h,080h,0f0h,08fh,0e0h	; 6af6  .".p.p.p.p......
	defb 07eh,0e0h,08dh,0d0h,07ch,0d0h,08bh,0d0h,07ah,0d0h,089h,0c0h,078h,0c0h,089h,0c0h	; 6b06  ~...|...z...x...
	defb 07ah,0c0h,08bh,0b0h,07ch,0b0h,08dh,0b0h,07eh,0b0h,08fh,0a0h,080h,0a0h,093h,0a0h	; 6b16  z...|...~.......
	defb 084h,090h,096h,090h,088h,080h,096h,060h,098h,040h,09bh,0ffh,022h,002h,0f8h,000h	; 6b26  .......`.@.."...
	defb 0f7h,000h,0f6h,000h,0f5h,000h,0f4h,000h,0f3h,000h,0e4h,000h,0c5h,000h,0ffh,022h	; 6b36  ..............."
	defb 001h,0e2h,015h,090h,00ch,0c4h,000h,000h,000h,022h,001h,0c3h,0c0h,0a3h,080h,083h	; 6b46  ........."......
	defb 050h,0ffh,023h,003h,01fh,0c6h,0fah,0c6h,0dah,01bh,0c6h,0cah,0c6h,0aah,017h,0c6h	; 6b56  P.#.............
	defb 09ah,0c6h,07ah,014h,0c6h,01ah,06ah,0c6h,04ah,012h,0c6h,03ah,0c6h,01ah,023h,006h	; 6b66  ..z...j.J..:..#.
	defb 011h,0b6h,01ah,0a6h,01ah,010h,096h,01ah,086h,01ah,046h,01ah,0ffh,022h,001h,0d0h	; 6b76  ..........F.."..
	defb 0fah,0d0h,07ah,0e0h,0f8h,0e0h,078h,0f0h,0f6h,0f0h,076h,0f0h,0f4h,0f0h,074h,0e0h	; 6b86  ..z...x...v...t.
	defb 0f2h,0e0h,072h,0d0h,0f0h,0d0h,070h,0c0h,0eeh,0c0h,07eh,0b0h,0ech,0b0h,07ch,0a0h	; 6b96  ..r...p...~...|.
	defb 0eah,0a0h,07ah,090h,0e8h,090h,078h,080h,0e6h,080h,076h,090h,0e4h,090h,074h,0a0h	; 6ba6  ..z...x...v...t.
	defb 0e2h,0a0h,072h,0b0h,0e0h,0b0h,070h,0c0h,0deh,0c0h,06eh,0d0h,0dch,0d0h,06ch,0e0h	; 6bb6  ..r...p...n...l.
	defb 0dah,0e0h,06ah,0f0h,0d8h,0f0h,068h,0e0h,0d6h,0e0h,066h,0d0h,0d4h,0d0h,064h,0c0h	; 6bc6  ..j...h...f...d.
	defb 0d2h,0c0h,062h,0b0h,0d0h,0b0h,060h,0a0h,0ceh,0a0h,05eh,090h,0cdh,090h,05dh,080h	; 6bd6  ..b...`...^...].
	defb 0cbh,080h,05bh,0ffh,022h,001h,0e1h,093h,0b1h,093h,091h,093h,0e1h,064h,0b1h,064h	; 6be6  ..[."........d.d
	defb 091h,064h,0e1h,039h,0b1h,039h,091h,039h,0e1h,012h,0b1h,012h,091h,012h,0e0h,0f6h	; 6bf6  .d.9.9.9........
	defb 0b0h,0f6h,090h,0f6h,0e0h,0edh,0b0h,0edh,090h,0edh,0e0h,0e0h,0b0h,0e0h,090h,0e0h	; 6c06  ................
	defb 0feh,002h,0eah,06bh,022h,001h,0e1h,039h,0b1h,039h,081h,039h,0e1h,012h,0b1h,012h	; 6c16  ...k"..9.9.9....
	defb 091h,012h,0e0h,0f6h,0b0h,0f6h,090h,0f6h,0e0h,0edh,0b0h,0edh,090h,0edh,0e0h,0e0h	; 6c26  ................
	defb 0b0h,0e0h,090h,0e0h,0e0h,0d8h,0b0h,0d8h,090h,0d8h,0e0h,0c8h,0b0h,0c8h,090h,0c8h	; 6c36  ................
	defb 0e0h,0f6h,0b0h,0f6h,090h,0f6h,0e0h,0edh,0b0h,0edh,090h,0edh,0e0h,0e0h,0b0h,0e0h	; 6c46  ................
	defb 090h,0e0h,0e0h,0d8h,0b0h,0d8h,090h,0d8h,0e0h,0c8h,0b0h,0c8h,090h,0c8h,0e0h,0c0h	; 6c56  ................
	defb 0b0h,0c0h,090h,0c0h,0e0h,0b0h,0b0h,0b0h,090h,0b0h,0ffh,022h,001h,0d1h,033h,0d1h	; 6c66  ..........."..3.
	defb 003h,0d0h,0d3h,0d0h,0a3h,0d0h,073h,0d1h,007h,0d0h,0d7h,0d0h,0a7h,0d0h,077h,0d0h	; 6c76  ......s.......w.
	defb 047h,0c1h,007h,0c0h,0d7h,0c0h,0a7h,0c0h,077h,0c0h,047h,0b1h,007h,0b0h,0d7h,0b0h	; 6c86  G.......w.G.....
	defb 0a7h,0b0h,077h,0b0h,047h,0a1h,007h,0a0h,0d7h,090h,0a7h,090h,077h,080h,047h,081h	; 6c96  ..w.G.......w.G.
	defb 007h,070h,0d7h,070h,0a7h,060h,077h,060h,047h,0ffh,023h,001h,010h,0d0h,020h,012h	; 6ca6  .p.p.`w`G.#... .
	defb 0d0h,040h,0feh,004h,0b2h,06ch,010h,0e0h,020h,012h,0e0h,040h,0feh,004h,0bch,06ch	; 6cb6  .@...l.. ..@...l
	defb 010h,0d0h,020h,012h,0d0h,040h,0feh,004h,0c6h,06ch,010h,0b0h,020h,012h,0b0h,040h	; 6cc6  .. ..@...l.. ..@
	defb 0feh,004h,0d0h,06ch,010h,090h,020h,012h,090h,040h,0feh,004h,0dah,06ch,010h,070h	; 6cd6  ...l.. ..@...l.p
	defb 020h,012h,070h,040h,0feh,004h,0e4h,06ch,0ffh,0d1h,0fch,000h,0e8h,006h,037h,0ffh	; 6ce6   .p@...l......7.
	defb 0d1h,0fch,000h,0e8h,006h,047h,0ffh,0d1h,0fch,000h,0e8h,006h,057h,0ffh,0dfh,0fch	; 6cf6  .....G......W...
	defb 033h,0e8h,006h,00fh,06fh,0feh,0feh,00ah,06dh,0dfh,0fch,033h,0e8h,006h,01fh,07fh	; 6d06  3...o...m..3....
	defb 0feh,0feh,015h,06dh,0dfh,0fch,033h,0e8h,006h,02fh,08fh,0feh,0feh,020h,06dh,0d1h	; 6d16  ...m..3../... m.
	defb 0fdh,088h,0e1h,004h,074h,044h,074h,0fdh,023h,0e0h,009h,0ffh,0e9h,0d6h,0edh,014h	; 6d26  ....tDt.#.......
	defb 070h,0edh,021h,070h,0edh,02ch,070h,0edh,021h,070h,0fbh,022h,0e2h,027h,057h,077h	; 6d36  p.!p.,p.!p.".'Ww
	defb 047h,027h,057h,0fch,023h,071h,0fbh,023h,071h,0fah,023h,071h,0f9h,023h,071h,0fch	; 6d46  G'W.#q.#q.#q.#q.
	defb 044h,091h,0fbh,044h,091h,0fah,044h,091h,0f9h,044h,091h,0e9h,0d6h,0edh,037h,070h	; 6d56  D..D..D..D....7p
	defb 0fch,044h,021h,0c0h,0fch,033h,0e3h,090h,0fah,010h,093h,0f7h,000h,093h,0f5h,000h	; 6d66  .D!..3..........
	defb 093h,0edh,037h,070h,0fah,010h,023h,0f7h,000h,023h,0f5h,000h,023h,0edh,05ah,070h	; 6d76  ..7p..#..#..#.Zp
	defb 0fch,044h,0e2h,051h,0c1h,0fbh,033h,02ah,0c0h,0edh,05ah,070h,0fbh,044h,0e2h,091h	; 6d86  .D.Q..3*..Zp.D..
	defb 0c1h,0fbh,033h,027h,0fbh,033h,0e1h,0c1h,020h,040h,050h,040h,000h,020h,0fbh,022h	; 6d96  ..3'.3.. @P@. ."
	defb 050h,040h,000h,020h,0c1h,053h,041h,000h,022h,0feh,002h,0a4h,06dh,050h,040h,000h	; 6da6  P@. .SA."...mP@.
	defb 020h,0c1h,053h,041h,050h,040h,050h,070h,092h,072h,041h,0f9h,000h,0e2h,092h,072h	; 6db6   .SAP@Pp.rA....r
	defb 041h,0fch,022h,0e1h,020h,0fbh,033h,020h,0fah,033h,020h,0fch,022h,090h,0fbh,033h	; 6dc6  A.". .3 .3 ."..3
	defb 090h,0fah,033h,090h,0fch,022h,040h,0fbh,033h,040h,0fah,033h,040h,0f9h,033h,040h	; 6dd6  ..3.."@.3@.3@.3@
	defb 0f8h,033h,040h,0f7h,033h,040h,0fch,022h,020h,0fbh,033h,040h,0fch,022h,050h,0fbh	; 6de6  .3@.3@." .3@."P.
	defb 033h,050h,0feh,002h,0c7h,06dh,0fbh,023h,022h,042h,051h,072h,042h,001h,0fah,010h	; 6df6  3P...m.#"BQrB...
	defb 021h,0f9h,000h,021h,0f7h,000h,021h,0f5h,000h,021h,0fah,044h,0e0h,020h,0f8h,044h	; 6e06  !..!..!..!.D. .D
	defb 0e1h,050h,0f8h,044h,0e0h,020h,0f6h,044h,0e1h,050h,0f6h,044h,0e0h,020h,0f4h,044h	; 6e16  .P.D. .D.P.D. .D
	defb 0e1h,050h,0f4h,044h,0e0h,020h,0f2h,044h,0e1h,050h,0eah,061h,06dh,0e9h,0d6h,0fdh	; 6e26  .P.D. .D.P.am...
	defb 023h,0e3h,02fh,00fh,0e4h,0afh,0fdh,035h,093h,093h,091h,091h,091h,091h,0fdh,054h	; 6e36  #./....5.......T
	defb 021h,020h,020h,0feh,003h,044h,06eh,020h,021h,020h,021h,020h,020h,021h,020h,020h	; 6e46  !  ..Dn ! !  !
	defb 020h,020h,020h,020h,021h,020h,090h,0fch,035h,0e3h,021h,020h,020h,021h,020h,020h	; 6e56      ! ..5.!  !
	defb 020h,021h,020h,020h,020h,020h,020h,021h,020h,020h,021h,020h,020h,020h,020h,021h	; 6e66   !     !  !    !
	defb 021h,020h,020h,0e9h,0d6h,0edh,0a6h,070h,0e4h,021h,0edh,0a6h,070h,0c0h,020h,0fch	; 6e76  !  ....p.!..p. .
	defb 044h,0e4h,021h,021h,0e3h,021h,0e4h,021h,0feh,007h,085h,06eh,021h,021h,0e3h,021h	; 6e86  D.!!.!.!...n!!.!
	defb 0c0h,020h,0e4h,021h,021h,0e3h,021h,0e4h,021h,0feh,006h,098h,06eh,022h,020h,0e3h	; 6e96  . .!!.!.!...n" .
	defb 021h,0e4h,021h,0c1h,0e4h,020h,020h,0e3h,020h,0e4h,020h,020h,020h,0fbh,022h,0e4h	; 6ea6  !.!..  . .   .".
	defb 020h,0e3h,020h,0feh,008h,0b3h,06eh,0e4h,0a0h,0e3h,0a0h,0feh,008h,0bdh,06eh,0e4h	; 6eb6   . ...n.......n.
	defb 070h,0e3h,070h,0feh,008h,0c5h,06eh,0e4h,090h,0e3h,090h,0feh,008h,0cdh,06eh,0e3h	; 6ec6  p.p...n.......n.
	defb 020h,0e2h,020h,0feh,008h,0d5h,06eh,0e3h,000h,0e2h,000h,0feh,008h,0ddh,06eh,0e4h	; 6ed6   . ...n.......n.
	defb 0a1h,0a0h,0a0h,0e3h,0a0h,0e4h,0a0h,0a0h,0a0h,091h,090h,090h,0e3h,090h,0e4h,090h	; 6ee6  ................
	defb 090h,090h,020h,020h,020h,020h,0e3h,020h,0e4h,020h,020h,020h,021h,020h,020h,0e3h	; 6ef6  ..    . .   !  .
	defb 021h,0e4h,021h,0eah,079h,06eh,0e9h,0d6h,0e7h,0edh,014h,070h,0edh,021h,070h,0edh	; 6f06  !.!.yn.....p.!p.
	defb 02ch,070h,0edh,021h,070h,0e9h,0f9h,022h,0e3h,097h,0e2h,007h,027h,0e3h,0b7h,097h	; 6f16  ,p.!p.."....'...
	defb 0e2h,007h,0fah,023h,021h,0f9h,023h,021h,0f8h,023h,021h,0f7h,023h,021h,0fah,044h	; 6f26  ...#!.#!.#!.#!.D
	defb 041h,0f9h,044h,041h,0f8h,044h,041h,0f7h,044h,041h,0e9h,0d6h,0edh,0ddh,070h,0fbh	; 6f36  A.DA.DA.DA....p.
	defb 044h,051h,0c0h,0fbh,033h,050h,0f9h,010h,053h,0f6h,000h,053h,0f4h,000h,053h,0edh	; 6f46  DQ..3P..S..S..S.
	defb 0ddh,070h,0f9h,010h,053h,0f6h,000h,053h,0f4h,000h,053h,0edh,0ffh,070h,0e9h,0fbh	; 6f56  .p..S..S..S..p..
	defb 044h,0e2h,021h,0c1h,0fah,033h,0e3h,09ah,0c0h,0edh,0ffh,070h,0e9h,0fah,033h,0e2h	; 6f66  D.!..3.....p..3.
	defb 051h,0c1h,0fah,033h,0e3h,097h,0c1h,0e8h,000h,0b0h,0b0h,020h,0b0h,0b0h,0b0h,0e9h	; 6f76  Q..3....... ....
	defb 0fah,022h,0e2h,090h,070h,040h,050h,0c1h,093h,071h,040h,052h,0feh,002h,085h,06fh	; 6f86  ."..p@P..q@R...o
	defb 090h,070h,040h,050h,0c1h,093h,071h,090h,070h,090h,0b0h,0e1h,012h,012h,011h,0e7h	; 6f96  .p@P..q.p.......
	defb 0f9h,000h,0e2h,092h,072h,041h,0e9h,0fbh,022h,0e2h,050h,0fah,033h,050h,0f9h,033h	; 6fa6  ....rA..".P.3P.3
	defb 050h,0fbh,022h,0e1h,000h,0fah,033h,000h,0f9h,033h,000h,0fbh,022h,0e2h,070h,0fah	; 6fb6  P."...3..3..".p.
	defb 033h,070h,0f9h,033h,070h,0f8h,033h,070h,0f7h,033h,070h,0f6h,033h,070h,0fbh,022h	; 6fc6  3p.3p.3p.3p.3p."
	defb 050h,0fah,033h,070h,0fbh,022h,090h,0fah,033h,090h,0feh,002h,0adh,06fh,0fah,023h	; 6fd6  P.3p."..3....o.#
	defb 052h,072h,091h,0a2h,072h,041h,0f9h,010h,051h,0f8h,000h,051h,0f6h,000h,051h,0f4h	; 6fe6  Rr..rA..Q..Q..Q.
	defb 000h,051h,0f9h,044h,0e1h,090h,0f7h,044h,020h,0f7h,044h,090h,0f5h,044h,020h,0f5h	; 6ff6  .Q.D...D .D..D .
	defb 044h,090h,0f3h,044h,020h,0f3h,044h,090h,0f1h,044h,020h,0eah,040h,06fh,0fah,000h	; 7006  D..D .D..D .@o..
	defb 0e1h,020h,0e2h,090h,050h,020h,0feh,004h,014h,070h,0eeh,0e1h,040h,000h,0e2h,070h	; 7016  . ..P ...p..@..p
	defb 040h,0feh,004h,021h,070h,0eeh,0e1h,050h,020h,0e2h,0a0h,050h,0feh,004h,02ch,070h	; 7026  @..!p..P ..P..,p
	defb 0eeh,0fbh,022h,0e3h,095h,0e2h,021h,051h,093h,0e1h,001h,0fch,044h,0e2h,0b1h,0c0h	; 7036  .."...!Q....D...
	defb 0fch,033h,090h,0fah,010h,073h,0f7h,000h,073h,0f5h,000h,073h,0fbh,022h,025h,051h	; 7046  .3...s..s..s."%Q
	defb 041h,023h,001h,0eeh,0fch,033h,0e3h,091h,0c0h,0fbh,033h,090h,0fch,044h,0e2h,023h	; 7056  A#...3....3..D.#
	defb 0fbh,010h,091h,0f8h,000h,091h,0fah,044h,0e1h,092h,0f7h,044h,090h,0fch,033h,0e3h	; 7066  .......D...D..3.
	defb 091h,0c0h,0fbh,033h,090h,0fch,044h,0e2h,023h,0fbh,010h,081h,0f8h,000h,081h,0fah	; 7076  ...3..D.#.......
	defb 044h,0e1h,082h,0f7h,044h,080h,0fch,033h,0e3h,091h,0c0h,0fbh,033h,090h,0fch,044h	; 7086  D...D..3....3..D
	defb 0e2h,023h,0fbh,010h,071h,0f8h,000h,071h,0fah,044h,0e1h,072h,0f7h,044h,070h,0eeh	; 7096  .#..q..q.D.r.Dp.
	defb 0fch,044h,0e4h,022h,020h,0e3h,021h,0e4h,021h,021h,020h,020h,0e3h,021h,0e4h,021h	; 70a6  .D." .!.!!  .!.!
	defb 072h,070h,0e3h,071h,0e4h,071h,071h,070h,070h,0e3h,071h,0e4h,071h,0a2h,0a0h,0e3h	; 70b6  rp.q.qqpp.q.q...
	defb 0a1h,0e4h,0a1h,0e3h,002h,000h,0e2h,001h,0e3h,001h,0e4h,022h,020h,0e3h,021h,0e4h	; 70c6  ..........." .!.
	defb 021h,021h,020h,020h,0e3h,021h,0eeh,0fah,022h,0e3h,055h,051h,091h,0e2h,003h,041h	; 70d6  !!  .!..".UQ...A
	defb 0fbh,044h,021h,0c0h,0fbh,033h,000h,0f9h,010h,0e3h,0b3h,0f6h,000h,0b3h,0f4h,000h	; 70e6  .D!..3..........
	defb 0b3h,0fah,022h,055h,091h,071h,053h,041h,0eeh,0fbh,033h,0e3h,051h,0c0h,0fah,033h	; 70f6  .."U.qSA..3.Q..3
	defb 050h,0fbh,044h,093h,0fah,010h,0e2h,051h,0f7h,000h,051h,0e7h,0fah,044h,0e1h,092h	; 7106  P.D....Q..Q..D..
	defb 0f7h,044h,090h,0e9h,0fah,033h,0e3h,051h,0c0h,0f9h,033h,050h,0fbh,044h,0e3h,093h	; 7116  .D...3.Q..3P.D..
	defb 0fah,010h,0e2h,041h,0f7h,000h,041h,0e7h,0fah,044h,0e1h,082h,0f7h,044h,080h,0e9h	; 7126  ...A..A..D...D..
	defb 0fah,033h,0e3h,051h,0c0h,0f9h,033h,050h,0fbh,044h,0e3h,093h,0fah,010h,0e2h,041h	; 7136  .3.Q..3P.D.....A
	defb 0f7h,000h,041h,0e7h,0fah,044h,0e1h,072h,0f7h,044h,070h,0eeh,0e9h,0d4h,0fch,022h	; 7146  ..A..D.r.Dp...."
	defb 0e2h,023h,053h,023h,0edh,00ah,072h,0e9h,0e1h,027h,0e2h,053h,0edh,00ah,072h,0e9h	; 7156  .#S#..r..'.S..r.
	defb 0fah,000h,0e2h,0a1h,0f7h,000h,0a1h,0fah,000h,0e1h,020h,0f7h,000h,020h,0fah,000h	; 7166  .......... .. ..
	defb 052h,0f7h,000h,052h,0fah,000h,041h,0f7h,000h,041h,0fah,000h,070h,0f7h,000h,070h	; 7176  R..R..A..A..p..p
	defb 0fah,000h,0e0h,001h,0f9h,000h,001h,0f8h,000h,001h,0f6h,000h,000h,0f5h,000h,000h	; 7186  ................
	defb 0ffh,0e9h,0d4h,0fbh,012h,0edh,013h,072h,0edh,01ch,072h,0edh,013h,072h,0edh,01ch	; 7196  .......r..r..r..
	defb 072h,0e4h,071h,0e3h,021h,071h,0a1h,0e2h,021h,071h,0e3h,051h,0e2h,001h,051h,0f9h	; 71a6  r.q.!q..!q.Q..Q.
	defb 000h,091h,0f8h,000h,091h,0f7h,000h,091h,0f5h,000h,090h,0f4h,000h,090h,0ffh,0e9h	; 71b6  ................
	defb 0d4h,0fbh,022h,0e3h,0a3h,0e2h,023h,0e3h,0a3h,0edh,025h,072h,0e9h,0e2h,0a7h,023h	; 71c6  .."...#...%r...#
	defb 0edh,025h,072h,0e9h,0f9h,000h,0e2h,051h,0f6h,000h,051h,0fah,000h,0a0h,0f6h,000h	; 71d6  .%r....Q..Q.....
	defb 0a0h,0f9h,000h,0e1h,022h,0f6h,000h,022h,0f9h,000h,001h,0f6h,000h,001h,0f9h,000h	; 71e6  ....".."........
	defb 040h,0f6h,000h,040h,0f9h,000h,071h,0f8h,000h,071h,0f7h,000h,071h,0f5h,000h,070h	; 71f6  @..@..q..q..q..p
	defb 0f4h,000h,070h,0ffh,0e8h,002h,045h,073h,0e9h,0e8h,001h,001h,0eeh,0e4h,071h,0e3h	; 7206  ..p...Es......q.
	defb 071h,0feh,003h,013h,072h,0eeh,0e4h,091h,0e3h,091h,0feh,003h,01ch,072h,0eeh,0e8h	; 7216  q...r........r..
	defb 002h,005h,043h,071h,0eeh,0e9h,0d5h,0fch,035h,0e1h,0c3h,0e9h,0d5h,0edh,00bh,073h	; 7226  ..Cq....5......s
	defb 021h,0edh,00bh,073h,0e2h,0b1h,0fah,000h,0e3h,09ah,0d1h,0fch,033h,0e2h,000h,040h	; 7236  !..s........3..@
	defb 090h,0e1h,000h,040h,0d5h,09bh,0fch,032h,091h,083h,043h,0e2h,0b3h,089h,0fah,000h	; 7246  ...@...2..C.....
	defb 0e3h,07ah,0d1h,0fch,033h,0a0h,0e2h,020h,070h,0a0h,0e1h,020h,0d5h,07bh,0fch,032h	; 7256  .z..3.. p.. .{.2
	defb 071h,063h,023h,0e2h,093h,069h,0fah,000h,0e3h,05ah,0d1h,0fch,033h,090h,0e2h,000h	; 7266  qc#..i...Z..3...
	defb 050h,090h,0e1h,000h,0d5h,05bh,0fch,032h,051h,043h,003h,0e2h,073h,049h,0fah,011h	; 7276  P....[.2QC..sI..
	defb 0e3h,0b1h,0a1h,0b1h,0e2h,011h,031h,041h,061h,081h,091h,081h,091h,061h,041h,061h	; 7286  ......1Aa....aAa
	defb 081h,091h,0b1h,0e1h,001h,021h,041h,061h,081h,091h,0b1h,0fbh,012h,0e1h,041h,021h	; 7296  .....!Aa......A!
	defb 041h,023h,001h,051h,0c1h,041h,0c1h,021h,001h,021h,003h,0e2h,0b1h,0e1h,041h,0c1h	; 72a6  A#.Q.A.!.!....A.
	defb 021h,0c1h,001h,0e2h,0b1h,0e1h,001h,0e2h,0b3h,091h,0e1h,021h,0c1h,001h,0c1h,0fah	; 72b6  !..........!....
	defb 000h,0e2h,0b9h,0d1h,0e1h,000h,010h,020h,030h,040h,050h,060h,070h,080h,090h,0d5h	; 72c6  ....... 0@P`p...
	defb 0bbh,0fbh,012h,0e1h,001h,001h,001h,023h,041h,051h,021h,071h,0c1h,0e2h,0b1h,0b1h	; 72d6  .......#AQ!q....
	defb 0b1h,0e1h,003h,021h,041h,001h,051h,0c1h,0e2h,091h,0b1h,0e1h,007h,0e2h,0b1h,0e1h	; 72e6  ...!A.Q.........
	defb 001h,027h,0fah,011h,0e2h,041h,061h,081h,091h,0b1h,0e1h,001h,021h,041h,061h,081h	; 72f6  .'...Aa.....!Aa.
	defb 091h,0b1h,0eah,03ch,072h,0fch,033h,0e1h,042h,040h,041h,041h,041h,021h,002h,000h	; 7306  ...<r.3.B@AAA!..
	defb 001h,001h,001h,0eeh,0e9h,0d5h,0fch,022h,0e3h,0c3h,0e9h,0d5h,0edh,0c1h,073h,071h	; 7316  ......."......sq
	defb 0edh,0c1h,073h,041h,0fch,033h,0e4h,091h,091h,0e3h,041h,0feh,004h,02ah,073h,0e3h	; 7326  ..sA.3....A..*s.
	defb 0edh,0d0h,073h,0e4h,071h,071h,0e3h,021h,0feh,004h,039h,073h,021h,021h,091h,0feh	; 7336  ..s.qq.!..9s!!..
	defb 004h,042h,073h,0e4h,051h,051h,0e3h,001h,0feh,004h,049h,073h,001h,001h,071h,0feh	; 7346  .Bs.QQ....Is..q.
	defb 004h,052h,073h,0e4h,0b1h,0b1h,0e3h,061h,0feh,004h,059h,073h,0e4h,0edh,0d0h,073h	; 7356  .Rs....a..Ys...s
	defb 0e4h,091h,0feh,006h,066h,073h,051h,051h,051h,051h,071h,0feh,006h,070h,073h,041h	; 7366  ....fsQQQQq..psA
	defb 041h,041h,041h,051h,0feh,006h,079h,073h,021h,021h,021h,021h,041h,040h,040h,0feh	; 7376  AAAQ..ys!!!!A@@.
	defb 006h,082h,073h,091h,090h,090h,0feh,003h,089h,073h,0e3h,021h,020h,020h,021h,020h	; 7386  ..s......s.!  !
	defb 020h,0e4h,071h,070h,070h,0feh,003h,097h,073h,0e3h,001h,000h,000h,001h,000h,000h	; 7396   .qpp...s.......
	defb 0e4h,051h,050h,050h,0feh,003h,0a6h,073h,0b1h,0b0h,0b0h,0feh,003h,0aeh,073h,0e4h	; 73a6  .QPP...s......s.
	defb 041h,0e3h,040h,040h,0feh,006h,0b5h,073h,0eah,02ah,073h,0fch,033h,0e4h,092h,090h	; 73b6  A.@@...s.*s.3...
	defb 091h,091h,091h,071h,052h,050h,051h,051h,051h,0eeh,041h,041h,0b1h,0feh,004h,0d0h	; 73c6  ...qRPQQQ.AA....
	defb 073h,0eeh,0e9h,0d5h,0fch,025h,0e1h,0c3h,0e9h,0d5h,0edh,0b3h,074h,0b1h,0edh,0b3h	; 73d6  s....%......t...
	defb 074h,081h,0f9h,000h,0e5h,09ah,0d1h,0fbh,033h,0e3h,040h,090h,0e2h,000h,040h,090h	; 73e6  t.......3.@...@.
	defb 0d5h,0e1h,00bh,0fbh,032h,001h,0e2h,0b3h,083h,043h,049h,0f9h,000h,0e5h,07ah,0d1h	; 73f6  ....2....CI...z.
	defb 0fbh,033h,0e3h,020h,070h,0a0h,0e2h,020h,070h,0d5h,0abh,0fbh,032h,0a1h,093h,063h	; 7406  .3. p.. p...2..c
	defb 023h,029h,0f9h,000h,0e5h,05ah,0d1h,0fbh,033h,0e3h,000h,050h,090h,0e2h,000h,050h	; 7416  #)...Z..3..P...P
	defb 0d5h,09bh,0fbh,032h,091h,073h,043h,003h,009h,0e3h,031h,011h,031h,041h,061h,081h	; 7426  ...2.sC...1.1Aa.
	defb 091h,0b1h,0e2h,001h,0e3h,0b1h,0e2h,001h,0e3h,091h,081h,091h,0b1h,0e2h,001h,021h	; 7436  ...............!
	defb 041h,061h,081h,091h,0b1h,0e1h,001h,021h,0fah,012h,0e2h,001h,0e3h,0b1h,0e2h,001h	; 7446  Aa.....!........
	defb 0e3h,0b3h,091h,0e2h,021h,0c1h,001h,0c1h,0e3h,0b1h,091h,0b1h,093h,071h,0e2h,001h	; 7456  ....!........q..
	defb 0c1h,0e3h,0b1h,0c1h,091h,071h,091h,073h,051h,0b1h,0c1h,091h,0c1h,0f9h,000h,0e2h	; 7466  .....q.sQ.......
	defb 049h,0d1h,050h,060h,070h,080h,090h,0a0h,0b0h,0e1h,000h,010h,020h,0d5h,04bh,0fah	; 7476  I.P`p....... .K.
	defb 012h,0e3h,041h,041h,041h,053h,071h,091h,051h,0b1h,0c1h,021h,021h,021h,043h,051h	; 7486  ..AAASq.Q..!!!CQ
	defb 071h,041h,091h,0c1h,001h,021h,047h,021h,041h,057h,0f9h,011h,081h,091h,0b1h,0e2h	; 7496  qA...!G!AW......
	defb 001h,021h,041h,061h,081h,091h,0b1h,0e1h,001h,021h,0eah,0e8h,073h,0fbh,022h,0e1h	; 74a6  .!Aa.....!..s.".
	defb 002h,000h,001h,001h,001h,0e2h,0b1h,092h,090h,091h,091h,091h,0eeh,0e9h,0dbh,0fah	; 74b6  ................
	defb 023h,0e1h,0edh,0deh,074h,0e8h,002h,031h,0e9h,0c0h,0feh,002h,0c3h,074h,0edh,03ch	; 74c6  #...t..1.....t.<
	defb 075h,0e8h,001h,091h,0e9h,0eah,0c3h,074h,0e8h,002h,0b1h,0e9h,0e8h,001h,0b1h,0e9h	; 74d6  u......t........
	defb 0e8h,002h,021h,0e9h,0e8h,001h,021h,0e9h,0e8h,002h,0b1h,0e9h,0e8h,001h,000h,0e9h	; 74e6  ..!...!.........
	defb 0e8h,002h,0b1h,091h,072h,0e9h,0e8h,001h,071h,0e9h,0e8h,002h,041h,0e9h,0e8h,001h	; 74f6  ....r...q...A...
	defb 041h,0e8h,002h,071h,0e9h,0e8h,001h,071h,0e9h,0e8h,002h,070h,092h,0b1h,0e9h,0e8h	; 7506  A..q...q...p....
	defb 001h,0b1h,0e9h,0e8h,002h,021h,0e9h,0e8h,001h,021h,041h,020h,0e9h,0e8h,002h,0b1h	; 7516  .....!...!A ....
	defb 091h,072h,0e9h,0e8h,001h,071h,0e9h,0e8h,002h,041h,0e9h,0e8h,001h,040h,0e9h,0e8h	; 7526  .r...q...A...@..
	defb 002h,0a1h,091h,071h,0e9h,0eeh,0e9h,0e8h,002h,021h,0e9h,0e8h,001h,021h,0e9h,0e8h	; 7536  ...q.....!...!..
	defb 002h,021h,0e9h,0e8h,001h,021h,0e9h,0e8h,002h,061h,0e9h,0e8h,001h,061h,0e9h,0e8h	; 7546  .!...!...a...a..
	defb 002h,091h,0e9h,0e8h,001h,091h,001h,021h,0e9h,0e8h,002h,091h,0e9h,0e8h,001h,001h	; 7556  .......!........
	defb 021h,061h,071h,0e9h,0eeh,0e9h,0dbh,0fbh,038h,0e3h,071h,0fah,038h,071h,071h,071h	; 7566  !aq.....8.q.8qqq
	defb 0fbh,038h,051h,0fah,038h,051h,051h,051h,0fbh,038h,041h,0fah,038h,041h,041h,041h	; 7576  .8Q.8QQQ.8A.8AAA
	defb 0fbh,038h,031h,0fah,038h,031h,031h,031h,0feh,004h,06bh,075h,0fbh,038h,021h,0fah	; 7586  .81.8111..ku.8!.
	defb 038h,021h,021h,021h,0feh,004h,092h,075h,0eah,06bh,075h,0e9h,0dbh,0fah,023h,0e1h	; 7596  8!!!...u.ku...#.
	defb 0c0h,0edh,0deh,074h,0e8h,002h,031h,0e9h,0feh,002h,0a1h,075h,0e9h,0c0h,0edh,03ch	; 75a6  ...t..1....u...<
	defb 075h,0e8h,001h,090h,0e9h,0eah,0a1h,075h,0edh,0ffh,075h,0edh,0ffh,075h,0f6h,000h	; 75b6  u......u..u..u..
	defb 000h,0f9h,000h,000h,0f6h,000h,040h,0f9h,000h,040h,0f6h,000h,070h,0f9h,000h,070h	; 75c6  ......@..@..p..p
	defb 0f6h,000h,090h,0f9h,000h,090h,0feh,004h,0c4h,075h,0f6h,000h,020h,0f9h,000h,020h	; 75d6  .........u.. ..
	defb 0f6h,000h,050h,0f9h,000h,050h,0f6h,000h,090h,0f9h,000h,090h,0f6h,000h,0a0h,0f9h	; 75e6  ..P..P..........
	defb 000h,0a0h,0feh,004h,0e0h,075h,0eah,0beh,075h,0e9h,0d4h,0f6h,000h,0e2h,090h,0f9h	; 75f6  .....u..u.......
	defb 000h,090h,0f6h,000h,0e1h,020h,0f9h,000h,020h,0f6h,000h,050h,0f9h,000h,050h,0f6h	; 7606  ..... .. ..P..P.
	defb 000h,090h,0f9h,000h,090h,0feh,008h,0ffh,075h,0f6h,000h,0a0h,0f9h,000h,0a0h,0f6h	; 7616  ........u.......
	defb 000h,0e1h,020h,0f9h,000h,020h,0f6h,000h,050h,0f9h,000h,050h,0f6h,000h,090h,0f9h	; 7626  .. .. ..P..P....
	defb 000h,090h,0feh,008h,01fh,076h,0eeh,0edh,052h,076h,0edh,052h,076h,0e4h,097h,0e3h	; 7636  .....v..Rv.Rv...
	defb 047h,027h,007h,0e4h,0a7h,0e3h,057h,047h,007h,0eah,03dh,076h,0e9h,0d4h,0fch,035h	; 7646  G'....WG..=v...5
	defb 0e3h,027h,057h,047h,007h,0feh,002h,052h,076h,0e4h,0a7h,0e3h,057h,047h,007h,0feh	; 7656  .'WG...Rv...WG..
	defb 002h,05fh,076h,0eeh,0edh,07fh,076h,0edh,07fh,076h,0e5h,097h,0e4h,047h,027h,007h	; 7666  ._v...v..v...G'.
	defb 0e5h,0a7h,0e4h,057h,047h,007h,0eah,06ah,076h,0e9h,0d4h,0fch,035h,0e4h,027h,057h	; 7676  ...WG..jv...5.'W
	defb 047h,007h,0feh,002h,07fh,076h,0e5h,0a7h,0e4h,057h,047h,007h,0feh,002h,08ch,076h	; 7686  G....v...WG....v
	defb 0eeh,0ffh,0ffh,0ffh,0e9h,0d6h,0fbh,000h,0e2h,041h,0f9h,001h,041h,0fbh,000h,0b1h	; 7696  .........A..A...
	defb 0f9h,001h,0b1h,0edh,0fbh,076h,0fbh,000h,0e1h,021h,0f9h,000h,021h,0f7h,001h,021h	; 76a6  .....v...!..!..!
	defb 0fbh,001h,0e2h,051h,0fbh,000h,093h,0f9h,000h,093h,0f7h,000h,093h,0f6h,000h,093h	; 76b6  ...Q............
	defb 0fbh,001h,0e1h,011h,0e2h,0b1h,091h,0b1h,0fbh,000h,0b3h,0f9h,000h,0b3h,0f7h,001h	; 76c6  ................
	defb 0b1h,0fbh,001h,0e2h,061h,081h,091h,0fbh,000h,0e1h,011h,0f9h,000h,011h,0fbh,001h	; 76d6  ....a...........
	defb 0e2h,0b1h,0b1h,0fbh,000h,041h,0f9h,001h,041h,0fbh,000h,0b1h,0f9h,001h,0b1h,0edh	; 76e6  .....A..A.......
	defb 0fbh,076h,0eah,0ach,076h,0d6h,0fbh,001h,0e1h,011h,0f9h,000h,011h,0f7h,001h,011h	; 76f6  .v..v...........
	defb 0fbh,001h,0e2h,041h,0fbh,000h,043h,0f9h,000h,043h,0f7h,000h,043h,0f6h,001h,043h	; 7706  ...A..C..C..C..C
	defb 0fbh,000h,041h,0f9h,001h,041h,0fbh,000h,0b1h,0f9h,001h,0b1h,0fbh,000h,0e1h,011h	; 7716  ..A..A..........
	defb 0f9h,000h,011h,0f7h,001h,011h,0fbh,001h,021h,0fbh,000h,013h,0f9h,000h,013h,0f7h	; 7726  ........!.......
	defb 000h,013h,0f6h,000h,013h,0fbh,001h,041h,021h,011h,021h,0eeh,0e9h,0d6h,0fah,010h	; 7736  .......A!.!.....
	defb 0e1h,041h,0f8h,001h,041h,0fah,010h,0b1h,0f8h,010h,0b1h,0edh,086h,077h,0d6h,0fdh	; 7746  .A..A........w..
	defb 035h,0e4h,051h,051h,051h,051h,051h,051h,091h,051h,041h,041h,041h,041h,041h,041h	; 7756  5.QQQQQQ.QAAAAAA
	defb 091h,0fch,035h,040h,040h,0fdh,035h,031h,031h,031h,031h,091h,091h,031h,031h,041h	; 7766  ..5@@.51111..11A
	defb 041h,041h,041h,041h,061h,081h,0fch,035h,040h,040h,0edh,086h,077h,0eah,054h,077h	; 7776  AAAAa..5@@..w.Tw
	defb 0d6h,0fdh,035h,0e4h,091h,091h,091h,091h,091h,091h,0e3h,041h,0e4h,091h,081h,081h	; 7786  ..5........A....
	defb 081h,081h,081h,081h,0e3h,041h,0fch,035h,0e4h,080h,080h,0fdh,035h,071h,071h,071h	; 7796  .....A.5....5qqq
	defb 071h,071h,071h,0e3h,041h,0e4h,071h,061h,061h,061h,061h,061h,061h,0e3h,021h,0e4h	; 77a6  qqq.A.qaaaaaa.!.
	defb 061h,0eeh,0e9h,0e7h,0d6h,0fah,000h,0e2h,041h,0f8h,000h,041h,0fah,000h,0b1h,0f8h	; 77b6  a.......A..A....
	defb 001h,0b1h,0e9h,0edh,018h,078h,0d6h,0fah,000h,0e2h,051h,0f8h,000h,051h,0f6h,001h	; 77c6  .....x....Q..Q..
	defb 051h,0fah,001h,021h,0fah,000h,053h,0f8h,000h,053h,0f6h,000h,043h,0f5h,000h,043h	; 77d6  Q..!..S..S..C..C
	defb 0fah,001h,091h,081h,061h,081h,0fah,000h,063h,0f8h,000h,063h,0f6h,001h,061h,0fah	; 77e6  ....a...c..c..a.
	defb 001h,031h,041h,061h,0fah,000h,091h,0f8h,000h,091h,0fah,001h,081h,081h,0e7h,0c0h	; 77f6  .1Aa............
	defb 0fah,000h,041h,0f8h,001h,041h,0fah,000h,0b1h,0f8h,001h,0b0h,0edh,018h,078h,0eah	; 7806  ..A..A........x.
	defb 0cch,077h,0fah,001h,091h,0f8h,000h,091h,0f6h,001h,091h,0fah,001h,011h,0fah,000h	; 7816  .w..............
	defb 013h,0f8h,000h,013h,0f6h,000h,013h,0f5h,001h,013h,0fah,000h,011h,0f8h,001h,011h	; 7826  ................
	defb 0fah,000h,081h,0f8h,001h,081h,0fah,000h,071h,0f8h,000h,071h,0f6h,001h,071h,0fah	; 7836  ........q..q..q.
	defb 001h,091h,0fah,000h,073h,0f8h,000h,073h,0f6h,000h,063h,0f5h,000h,063h,0fah,001h	; 7846  ....s..s..c..c..
	defb 0e1h,011h,0e2h,0b1h,091h,0b1h,0eeh,0e9h,0d8h,0fdh,034h,0e1h,041h,0fch,023h,041h	; 7856  ..........4.A.#A
	defb 0fbh,023h,041h,0f9h,023h,040h,0f8h,023h,040h,0f7h,023h,040h,0f6h,023h,040h,0f5h	; 7866  .#A.#@.#@.#@.#@.
	defb 023h,040h,0f4h,023h,040h,0fdh,034h,060h,0fah,012h,060h,0fdh,034h,070h,0fah,012h	; 7876  #@.#@.4`..`.4p..
	defb 070h,0fdh,034h,061h,0fbh,023h,061h,0fah,023h,061h,0f9h,023h,060h,0f8h,023h,060h	; 7886  p.4a.#a.#a.#`.#`
	defb 0f7h,023h,060h,0f6h,023h,060h,0f5h,023h,060h,0f4h,023h,060h,0fdh,034h,070h,0fah	; 7896  .#`.#`.#`.#`.4p.
	defb 012h,070h,0fdh,034h,090h,0fah,012h,090h,0fdh,034h,071h,0fbh,023h,071h,0fah,023h	; 78a6  .p.4.....4q.#q.#
	defb 071h,0f9h,023h,070h,0f8h,023h,070h,0f7h,023h,070h,0f6h,023h,070h,0f5h,023h,070h	; 78b6  q.#p.#p.#p.#p.#p
	defb 0f4h,023h,070h,0fdh,034h,090h,0fah,012h,090h,0fdh,034h,0b0h,0fah,012h,0b0h,0fdh	; 78c6  .#p.4.....4.....
	defb 034h,091h,0fbh,023h,091h,0f9h,023h,091h,0f8h,023h,090h,0f7h,023h,090h,0f6h,023h	; 78d6  4..#..#..#..#..#
	defb 090h,0f5h,023h,090h,0fch,055h,090h,0fah,013h,090h,0fch,055h,070h,0fah,013h,070h	; 78e6  ..#..U.....Up..p
	defb 0fch,055h,060h,0fah,013h,060h,0eah,05dh,078h,0e9h,0d8h,0fdh,035h,0e4h,040h,040h	; 78f6  .U`..`.]x...5.@@
	defb 0b0h,0b0h,0e3h,060h,060h,070h,070h,0f9h,035h,070h,070h,0f8h,035h,070h,0f7h,035h	; 7906  ...``pp.5pp.5p.5
	defb 070h,0f6h,035h,070h,0f5h,035h,070h,070h,070h,0feh,002h,0ffh,078h,0fdh,035h,0e4h	; 7916  p.5p.5ppp...x.5.
	defb 040h,040h,0e3h,000h,000h,060h,060h,070h,070h,0f9h,035h,070h,0f9h,035h,070h,0f8h	; 7926  @@...``pp.5p.5p.
	defb 035h,070h,0f7h,035h,070h,0f6h,035h,070h,0f5h,035h,070h,070h,070h,0fdh,035h,0e4h	; 7936  5p.5p.5p.5ppp.5.
	defb 060h,060h,0e3h,010h,010h,070h,070h,090h,090h,0f9h,035h,090h,0f9h,035h,090h,0f8h	; 7946  ``...pp...5..5..
	defb 035h,090h,0f7h,035h,090h,0f6h,035h,090h,0f5h,035h,090h,090h,090h,0eah,0ffh,078h	; 7956  5..5..5..5.....x
	defb 0e9h,0d8h,0fch,034h,0e2h,0b1h,0fbh,023h,0b1h,0fah,023h,0b1h,0e8h,000h,000h,000h	; 7966  ...4...#..#.....
	defb 000h,000h,010h,000h,0e9h,0fch,034h,0e1h,020h,0f9h,012h,020h,0fch,034h,020h,0f9h	; 7976  ......4. .. .4 .
	defb 012h,020h,0fch,034h,021h,0fah,023h,021h,0f9h,023h,021h,0e8h,000h,000h,000h,000h	; 7986  . .4!.#!.#!.....
	defb 000h,010h,000h,0e9h,0fch,034h,020h,0f9h,012h,020h,0fch,034h,020h,0f9h,012h,020h	; 7996  .....4 .. .4 ..
	defb 0fch,034h,021h,0fah,023h,021h,0f9h,023h,021h,0e8h,000h,000h,000h,000h,000h,010h	; 79a6  .4!.#!.#!.......
	defb 000h,0e9h,0fch,034h,020h,0f9h,012h,020h,0fch,034h,020h,0f9h,012h,020h,0fch,034h	; 79b6  ...4 .. .4 .. .4
	defb 021h,0fah,023h,021h,0f8h,023h,021h,0e8h,000h,000h,000h,010h,000h,0e9h,0fbh,055h	; 79c6  !.#!.#!........U
	defb 020h,0f9h,013h,020h,0fbh,055h,020h,0f9h,013h,020h,0fbh,055h,020h,0f9h,013h,020h	; 79d6   .. .U .. .U ..
	defb 0eah,066h,079h,0e9h,0d6h,0fah,000h,0e2h,0c3h,091h,0f7h,000h,091h,0fah,000h,0e1h	; 79e6  .fy.............
	defb 021h,0f7h,000h,021h,0fah,000h,051h,0f7h,000h,051h,0fah,000h,070h,0f7h,000h,070h	; 79f6  !..!..Q..Q..p..p
	defb 0fah,000h,090h,0f7h,000h,090h,0fah,000h,043h,0f7h,000h,043h,0d7h,0fbh,012h,051h	; 7a06  ........C..C...Q
	defb 041h,0fah,000h,021h,0f7h,000h,021h,0d8h,0fah,000h,001h,0f7h,000h,001h,0f9h,000h	; 7a16  A..!..!.........
	defb 02ah,0c3h,0ffh,0e9h,0d6h,0fah,022h,0e3h,0c3h,023h,0e2h,027h,0e3h,003h,0e2h,007h	; 7a26  *....."..#.'....
	defb 0d7h,0e4h,0a3h,0a3h,0d8h,0e3h,003h,0f8h,000h,02ah,0c3h,0ffh,0e9h,0d6h,0f8h,000h	; 7a36  .........*......
	defb 0e2h,0c3h,053h,0f5h,000h,053h,0f3h,000h,053h,0f8h,000h,0e1h,001h,0f5h,000h,001h	; 7a46  ..S..S..S.......
	defb 0f8h,000h,0e2h,073h,0f5h,000h,073h,0d7h,0f9h,012h,091h,071h,0f8h,000h,051h,0f7h	; 7a56  ...s..s....q..Q.
	defb 000h,051h,0d8h,0f8h,000h,041h,0f7h,000h,041h,0f8h,000h,06ah,0c3h,0ffh,0e9h,0e6h	; 7a66  .Q...A..A..j....
	defb 0d3h,0fbh,022h,0e2h,0c7h,091h,051h,0a1h,071h,091h,051h,071h,041h,053h,0f7h,000h	; 7a76  .."...Q.q.QqAS..
	defb 053h,0f4h,000h,053h,0ffh,0e9h,0e6h,0d3h,0fah,022h,0e1h,0c7h,091h,051h,0a1h,071h	; 7a86  S..S....."...Q.q
	defb 091h,051h,071h,041h,053h,0f6h,000h,053h,0f4h,000h,053h,0ffh,0e9h,0e6h,0d3h,0fch	; 7a96  .QqAS..S..S.....
	defb 035h,0e3h,0c7h,021h,021h,021h,021h,021h,021h,021h,021h,0fah,010h,023h,0f7h,010h	; 7aa6  5..!!!!!!!!..#..
	defb 023h,0f5h,000h,021h,0c1h,0ffh,0ffh,065h,07bh,06bh,07bh,07bh,07bh,0cbh,07ch,0cbh	; 7ab6  #..!...e{k{{{.|.
	defb 07ch,0cbh,07ch,0cbh,07ch,0cbh,07ch,0cbh,07ch,0cbh,07ch,0cbh,07ch,08dh,07bh,0a3h	; 7ac6  |.|.|.|.|.|.|.{.
	defb 07bh,0cbh,07ch,0b5h,07bh,0cbh,07ch,0c7h,07bh,0cbh,07ch,0d9h,07bh,0ech,07bh,0cbh	; 7ad6  {.|.{.|.{.|.{.{.
	defb 07ch,0feh,07bh,0cbh,07ch,010h,07ch,023h,07ch,0cbh,07ch,035h,07ch,048h,07ch,05bh	; 7ae6  |.{.|.|#|.|5|H|[
	defb 07ch,0cbh,07ch,06dh,07ch,080h,07ch,0cbh,07ch,092h,07ch,0a5h,07ch,0b8h,07ch,0cbh	; 7af6  |.|m|.|.|.|.|.|.
	defb 07ch,0cbh,07ch,0cbh,07ch,0cbh,07ch,0cbh,07ch,0cbh,07ch,0cbh,07ch,0cbh,07ch,0cbh	; 7b06  |.|.|.|.|.|.|.|.
	defb 07ch,0cbh,07ch,0cbh,07ch,0cbh,07ch,0cbh,07ch,0cbh,07ch,0cbh,07ch,0cbh,07ch,0cbh	; 7b16  |.|.|.|.|.|.|.|.
	defb 07ch,0cbh,07ch,0cbh,07ch,0cbh,07ch,0cbh,07ch,0cbh,07ch,0cbh,07ch,0cbh,07ch,0cbh	; 7b26  |.|.|.|.|.|.|.|.
	defb 07ch,0cbh,07ch,0cbh,07ch,0cbh,07ch,0cbh,07ch,0cbh,07ch,0cbh,07ch,0cbh,07ch,0cbh	; 7b36  |.|.|.|.|.|.|.|.
	defb 07ch,0cbh,07ch,0cbh,07ch,0cbh,07ch,0cch,07ch,03fh,07dh,099h,07dh,0f3h,07dh,075h	; 7b46  |.|.|.|.|?}.}.}u
	defb 07eh,075h,07eh,028h,07dh,087h,07dh,0e1h,07dh,075h,07eh,075h,07eh,075h,07eh,021h	; 7b56  ~u~(}.}.}u~u~u~!
	defb 001h,010h,0c0h,000h,0ffh,021h,002h,010h,090h,000h,021h,008h,010h,090h,000h,021h	; 7b66  .....!....!....!
	defb 008h,010h,050h,000h,0ffh,023h,001h,010h,0bah,000h,021h,004h,010h,0b0h,000h,080h	; 7b76  ..P..#....!.....
	defb 000h,070h,000h,060h,000h,050h,000h,021h,001h,015h,0b0h,006h,022h,001h,0b2h,000h	; 7b86  .p.`.P.!...."...
	defb 021h,002h,018h,070h,006h,060h,006h,021h,001h,013h,060h,006h,0ffh,022h,004h,0a0h	; 7b96  !..p.`.!..`.."..
	defb 036h,090h,036h,080h,036h,070h,036h,060h,036h,050h,036h,040h,036h,040h,036h,022h	; 7ba6  6.6.6p6`6P6@6@6"
	defb 004h,0a0h,02fh,090h,02fh,080h,02fh,070h,02fh,060h,02fh,050h,02fh,040h,02fh,040h	; 7bb6  ../././p/`/P/@/@
	defb 02fh,022h,004h,0a0h,02ah,090h,02ah,080h,02ah,070h,02ah,060h,02ah,050h,02ah,040h	; 7bc6  /"..*.*.*p*`*P*@
	defb 02ah,040h,02ah,022h,004h,0a0h,026h,090h,026h,080h,026h,070h,026h,060h,026h,050h	; 7bd6  *@*"..&.&.&p&`&P
	defb 026h,040h,026h,040h,026h,0ffh,022h,004h,0a0h,024h,090h,024h,080h,024h,070h,024h	; 7be6  &@&@&."..$.$.$p$
	defb 060h,024h,050h,024h,040h,024h,040h,024h,022h,004h,0a0h,020h,090h,020h,080h,020h	; 7bf6  `$P$@$@$".. . .
	defb 070h,020h,060h,020h,050h,020h,040h,020h,040h,020h,022h,004h,0a0h,01ch,090h,01ch	; 7c06  p ` P @ @ ".....
	defb 080h,01ch,070h,01ch,060h,01ch,050h,01ch,040h,01ch,040h,01ch,0ffh,022h,004h,0a0h	; 7c16  ..p.`.P.@.@.."..
	defb 06bh,090h,06bh,080h,06bh,070h,06bh,060h,06bh,050h,06bh,040h,06bh,040h,06bh,022h	; 7c26  k.k.kpk`kPk@k@k"
	defb 004h,0a0h,05fh,090h,05fh,080h,05fh,070h,05fh,060h,05fh,050h,05fh,040h,05fh,040h	; 7c36  .._._._p_`_P_@_@
	defb 05fh,0ffh,022h,004h,0a0h,05ah,090h,05ah,080h,05ah,070h,05ah,060h,05ah,050h,05ah	; 7c46  _."..Z.Z.ZpZ`ZPZ
	defb 040h,05ah,040h,05ah,0ffh,022h,004h,0a0h,055h,090h,055h,080h,055h,070h,055h,060h	; 7c56  @Z@Z."..U.U.UpU`
	defb 055h,050h,055h,040h,055h,040h,055h,022h,004h,0a0h,04ch,090h,04ch,080h,04ch,070h	; 7c66  UPU@U@U"..L.L.Lp
	defb 04ch,060h,04ch,050h,04ch,040h,04ch,040h,04ch,0ffh,022h,004h,0a0h,047h,090h,047h	; 7c76  L`LPL@L@L."..G.G
	defb 080h,047h,070h,047h,060h,047h,050h,047h,040h,047h,040h,047h,022h,004h,0a0h,040h	; 7c86  .GpG`GPG@G@G"..@
	defb 090h,040h,080h,040h,070h,040h,060h,040h,050h,040h,040h,040h,040h,040h,0ffh,022h	; 7c96  .@.@p@`@P@@@@@."
	defb 004h,0a0h,03ch,090h,03ch,080h,03ch,070h,03ch,060h,03ch,050h,03ch,040h,03ch,040h	; 7ca6  ..<.<.<p<`<P<@<@
	defb 03ch,0ffh,022h,004h,0a0h,039h,090h,039h,080h,039h,070h,039h,060h,039h,050h,039h	; 7cb6  <."..9.9.9p9`9P9
	defb 040h,039h,040h,039h,0ffh,0ffh,021h,001h,01dh,000h,000h,030h,000h,01ah,040h,000h	; 7cc6  @9@9..!....0..@.
	defb 01dh,060h,000h,01ah,080h,000h,01dh,0a0h,000h,0feh,004h,0cch,07ch,021h,001h,01dh	; 7cd6  .`..........|!..
	defb 000h,000h,040h,000h,01ah,060h,000h,01dh,080h,000h,01ah,0a0h,000h,01dh,0c0h,000h	; 7ce6  ..@..`..........
	defb 0feh,004h,0e3h,07ch,021h,001h,01dh,000h,000h,050h,000h,01ah,070h,000h,01dh,090h	; 7cf6  ...|!....P..p...
	defb 000h,01ah,0b0h,000h,01dh,0d0h,000h,0feh,004h,0fah,07ch,021h,001h,01dh,000h,000h	; 7d06  ..........|!....
	defb 060h,000h,01ah,080h,000h,01dh,0a0h,000h,01ah,0c0h,000h,01dh,0e0h,000h,0feh,004h	; 7d16  `...............
	defb 011h,07dh,021h,001h,01dh,000h,000h,070h,000h,01ah,090h,000h,01dh,0b0h,000h,01ah	; 7d26  .}!....p........
	defb 0d0h,000h,01dh,0f0h,000h,0feh,0feh,028h,07dh,022h,001h,000h,000h,033h,080h,053h	; 7d36  .......(}"...3.S
	defb 080h,073h,080h,093h,080h,0b3h,080h,0feh,004h,03fh,07dh,022h,001h,000h,000h,043h	; 7d46  .s.......?}"...C
	defb 080h,063h,080h,083h,080h,0a3h,080h,0c3h,080h,0feh,004h,051h,07dh,022h,001h,000h	; 7d56  .c.........Q}"..
	defb 000h,053h,080h,073h,080h,093h,080h,0b3h,080h,0d3h,080h,0feh,004h,063h,07dh,022h	; 7d66  .S.s.........c}"
	defb 001h,000h,000h,063h,080h,083h,080h,0a3h,080h,0c3h,080h,0e3h,080h,0feh,004h,075h	; 7d76  ...c...........u
	defb 07dh,022h,001h,000h,000h,073h,080h,093h,080h,0b3h,080h,0d3h,080h,0f3h,080h,0feh	; 7d86  }"...s..........
	defb 0feh,087h,07dh,022h,001h,000h,000h,030h,050h,030h,050h,040h,050h,060h,050h,080h	; 7d96  ..}"...0P0P@P`P.
	defb 050h,0feh,004h,099h,07dh,022h,001h,000h,000h,030h,050h,030h,050h,050h,050h,070h	; 7da6  P...}"...0P0PPPp
	defb 050h,090h,050h,0feh,004h,0abh,07dh,022h,001h,000h,000h,030h,050h,040h,050h,050h	; 7db6  P.P...}"...0P@PP
	defb 050h,080h,050h,0a0h,050h,0feh,004h,0bdh,07dh,022h,001h,000h,000h,030h,050h,050h	; 7dc6  P.P.P...}"...0PP
	defb 050h,070h,050h,090h,050h,0b0h,050h,0feh,004h,0cfh,07dh,022h,001h,000h,000h,030h	; 7dd6  PpP.P.P...}"...0
	defb 050h,060h,050h,080h,050h,0a0h,050h,0c0h,050h,0feh,0feh,0e1h,07dh,022h,001h,061h	; 7de6  P`P.P.P.P...}".a
	defb 000h,0a0h,0a0h,0e0h,080h,0e1h,000h,0e1h,080h,0e2h,000h,0e2h,080h,0d3h,000h,0dbh	; 7df6  ................
	defb 000h,0d3h,000h,0dbh,000h,0d3h,000h,0cbh,000h,0c3h,000h,0c3h,080h,0c4h,000h,0c4h	; 7e06  ................
	defb 080h,0c5h,000h,0b5h,080h,0b6h,000h,0beh,000h,0b6h,000h,0beh,000h,0a6h,000h,0aeh	; 7e16  ................
	defb 000h,0a6h,000h,0a6h,080h,0a7h,000h,097h,080h,098h,000h,098h,080h,099h,000h,091h	; 7e26  ................
	defb 000h,099h,000h,081h,000h,089h,000h,081h,000h,089h,000h,089h,080h,07ah,000h,07ah	; 7e36  .............z.z
	defb 080h,07bh,000h,07bh,080h,07ch,000h,064h,000h,06ch,000h,064h,000h,06ch,000h,064h	; 7e46  .{.{.|.d.l.d.l.d
	defb 000h,06ch,000h,05ch,080h,05dh,000h,05dh,080h,05eh,000h,05eh,080h,04fh,000h,047h	; 7e56  .l.\.].].^.^.O.G
	defb 000h,04fh,000h,047h,000h,04fh,000h,037h,000h,03fh,000h,03fh,080h,030h,000h,0ffh	; 7e66  .O.G.O.7.?.?.0..

; ----------------------------------------------------------------------
; DATOS planos_alternos: 14 planos de 25 bloques: la parte que se ve de las
;   pantallas partidas (0xC131 = 1-14, que pone p06:BEC5); p00:4F0B los lee
;   desde 0x7E76 + 25*(0xC131-1); lo leen p00:4F1B (350 bytes)
;   0x7e76..0x7fd4  (350 bytes)
DATA_planos_alternos:
	defb 041h,042h,045h,035h,00ah,043h,044h,00eh,00eh,00eh,037h,025h,025h,025h,025h,01fh,01fh,01fh,01fh,01fh,01fh,01fh,01fh,01fh,01fh	; 7e76  ABE5.CD...7%%%%..........
	defb 01fh,01fh,023h,03fh,003h,01fh,01fh,021h,04ah,00eh,01fh,01fh,021h,04ah,00eh,01fh,01fh,021h,04ah,00eh,01fh,01fh,021h,04ah,008h	; 7e8f  ..#?...!J...!J...!J...!J.
	defb 01fh,01fh,021h,04ah,000h,01fh,01fh,021h,04ah,000h,01fh,01fh,021h,04ah,02ah,01fh,01fh,021h,04ah,01bh,01fh,01fh,027h,040h,002h	; 7ea8  ..!J...!J...!J*..!J...'@.
	defb 01dh,01dh,01ch,000h,00ch,01dh,01dh,01ch,000h,000h,01dh,01dh,01ch,000h,000h,01dh,01dh,01ch,000h,000h,01dh,01dh,01ch,000h,00ah	; 7ec1  .........................
	defb 002h,00bh,012h,03eh,03eh,002h,015h,013h,03eh,03eh,002h,016h,013h,03eh,03eh,002h,000h,013h,03eh,03eh,002h,000h,013h,03eh,03eh	; 7eda  ...>>...>>...>>...>>...>>
	defb 002h,000h,013h,03eh,03eh,002h,000h,013h,03eh,03eh,002h,014h,013h,03eh,03eh,002h,016h,013h,03eh,03eh,002h,000h,013h,03eh,03eh	; 7ef3  ...>>...>>...>>...>>...>>
	defb 03eh,03eh,03eh,03eh,03eh,03eh,03eh,03eh,03eh,03eh,03eh,03eh,022h,021h,004h,03eh,03eh,023h,01ch,020h,03eh,03eh,023h,01ch,001h	; 7f0c  >>>>>>>>>>>>"!.>>#. >>#..
	defb 03eh,03eh,03eh,03eh,03eh,03eh,03eh,03eh,03eh,03eh,026h,027h,027h,027h,027h,02ah,02bh,02ch,02ch,02ch,028h,029h,003h,003h,003h	; 7f25  >>>>>>>>>>&''''*+,,,()...
	defb 03eh,03eh,03eh,03eh,03eh,03eh,03eh,03eh,03eh,03eh,027h,027h,027h,027h,027h,02ch,02ch,02ch,02ch,02ch,003h,003h,003h,003h,003h	; 7f3e  >>>>>>>>>>''''',,,,,.....
	defb 07dh,07dh,051h,012h,012h,07dh,07dh,052h,012h,012h,07dh,07dh,053h,012h,056h,07dh,07dh,051h,012h,02fh,07dh,07dh,052h,039h,04bh	; 7f57  }}Q..}}R..}}S.V}}Q./}}R9K
	defb 07dh,07dh,050h,014h,02bh,07dh,07dh,051h,030h,02fh,07dh,07dh,052h,02ch,02eh,07dh,07dh,053h,054h,04fh,07dh,07dh,051h,055h,012h	; 7f70  }}P.+}}Q0/}}R,.}}STO}}QU.
	defb 005h,005h,005h,005h,005h,000h,000h,000h,000h,000h,033h,033h,033h,033h,033h,03eh,03eh,03eh,03eh,03eh,03eh,03eh,03eh,03eh,03eh	; 7f89  ..........33333>>>>>>>>>>
	defb 03eh,03eh,03eh,03eh,03eh,03eh,03eh,03eh,03eh,03eh,03eh,03eh,035h,032h,032h,03eh,03eh,034h,011h,011h,03eh,03eh,006h,004h,004h	; 7fa2  >>>>>>>>>>>>522>>4..>>...
	defb 03eh,03eh,039h,023h,009h,03eh,03eh,037h,021h,002h,03eh,03eh,037h,021h,002h,03eh,03eh,037h,021h,002h,03eh,03eh,037h,021h,002h	; 7fbb  >>9#.>>7!.>>7!.>>7!.>>7!.

; ----------------------------------------------------------------------
; DATOS sprites_7FD4: RLE de patrones de sprite (n con el bit 7 = n bytes tal
;   cual; sin el, repetir el siguiente; 0x80 [palabra] sigue en otra
;   direccion; 0 acaba); lista 3; lo leen p00:45EF (44 bytes)
;   0x7fd4..0x8000  (44 bytes)
DATA_sprites_7FD4:
	defb 0a0h,00fh,01fh,03fh,03fh,01fh,03fh,05fh,0bfh,0f8h,0ffh,0bfh,0ffh,07bh,03eh,022h	; 7fd4  ...??.?_.....{>"
	defb 03ch,0e0h,0f0h,0f8h,0f8h,0f0h,0f8h,0fch,0fah,01dh,0f9h,0fdh,0feh,0fch,054h,07ch	; 7fe4  <.............T|
	defb 044h,006h,000h,089h,020h,060h,047h,040h,040h,000h,004h,000h	; 7ff4  D... `G@@...
