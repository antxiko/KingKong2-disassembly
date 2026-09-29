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
; DATOS sin identificar  0x4014..0x4050  (60 bytes)
DATA_4014:
	defb 0ffh,000h,0c1h,004h,021h,0c1h,005h,020h,0c1h,016h,0c1h,016h,0c1h,000h,000h,000h	; 4014  ....!.. ........
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,094h,0c0h,08fh,0c0h	; 4024  ................
	defb 08fh,0c0h,08fh,0c0h,01ah,0c0h,01bh,0c0h,02eh,0c0h,02fh,0c0h,042h,0c0h,043h,0c0h	; 4034  ........../.B.C.
	defb 0d8h,066h,082h,0c0h,096h,0c0h,080h,0c0h,062h,0c0h,063h,0c0h	; 4044  .f......b.c.

; ======================================================================
; CODIGO 0x4050..0x405c  (12 bytes)
; ======================================================================


L_4050:
	call 06428h		;4050
	jp L_4215		;4053
L_4056:
	call L_490F		;4056
	jp L_4215		;4059

; ----------------------------------------------------------------------
; DATOS sin identificar  0x405c..0x4062  (6 bytes)
DATA_405C:
	defb 0cdh,019h,049h,0c3h,015h,042h	; 405c

; ======================================================================
; CODIGO 0x4062..0x40aa  (72 bytes)
; ======================================================================


L_4062:
	call 062c3h		;4062
	jp L_4215		;4065
puente_da_un_objeto:
	call 079ceh		;4068   ; p01:79CE: da el objeto A, una unidad (lo usan las conversaciones de p12)
	jp L_4215		;406b
L_406E:
	call L_462D		;406e
	jp L_4215		;4071
L_4074:
	call L_4651		;4074
	jp L_4215		;4077
L_407A:
	call L_479B		;407a
	jp L_4215		;407d
L_4080:
	call L_4586		;4080
	jp L_4215		;4083
L_4086:
	call L_4620		;4086
	jp L_4215		;4089
L_408C:
	call L_4255		;408c
	jp L_4215		;408f
L_4092:
	call 0637eh		;4092
	jp L_4215		;4095
L_4098:
	call L_425A		;4098
	jp L_4215		;409b
L_409E:
	call L_4612		;409e
	jp L_4215		;40a1
L_40A4:
	call 063a7h		;40a4
	jp L_4215		;40a7

; ----------------------------------------------------------------------
; DATOS sin identificar  0x40aa..0x40b0  (6 bytes)
DATA_40AA:
	defb 0cdh,033h,064h,0c3h,015h,042h	; 40aa

; ======================================================================
; CODIGO 0x40b0..0x4194  (228 bytes)
; ======================================================================


L_40B0:
	call 0641dh		;40b0
	jp L_4215		;40b3
L_40B6:
	call 06192h		;40b6
	jp L_4215		;40b9
L_40BC:
	call L_4DFF		;40bc
	jp L_4215		;40bf
L_40C2:
	call L_4430		;40c2
	jp L_4215		;40c5
L_40C8:
	call 07962h		;40c8
	jp L_4215		;40cb
L_40CE:
	call L_440C		;40ce
	jp L_4215		;40d1
L_40D4:
	call L_45AD		;40d4
	jp L_4215		;40d7
L_40DA:
	call 0813eh		;40da
	jp L_4215		;40dd
L_40E0:
	call L_4308		;40e0
	jp L_4215		;40e3
L_40E6:
	call L_5488		;40e6
	jp L_4215		;40e9
L_40EC:
	call 0616bh		;40ec
	jp L_4215		;40ef
L_40F2:
	call L_46CF		;40f2
	jp L_4215		;40f5
L_40F8:
	call L_4672		;40f8
	jp L_4215		;40fb
L_40FE:
	call L_4952		;40fe
	jp L_4215		;4101
L_4104:
	call 064f6h		;4104
	jp L_4215		;4107
L_410A:
	call L_4EA4		;410a
	jp L_4215		;410d
L_4110:
	call L_463A		;4110
	jp L_4215		;4113
L_4116:
	call L_46DD		;4116
	jp L_4215		;4119
L_411C:
	call L_48A6		;411c
	jp L_4215		;411f
L_4122:
	call L_4E7B		;4122
	jp L_4215		;4125
L_4128:
	call L_4E86		;4128
	jp L_4215		;412b
L_412E:
	call L_4E91		;412e
	jp L_4215		;4131
L_4134:
	call L_4E99		;4134
	jp L_4215		;4137
L_413A:
	call L_43D5		;413a
	jp L_4215		;413d
L_4140:
	call 0643eh		;4140
	jp L_4215		;4143
L_4146:
	call 06362h		;4146
	jp L_4215		;4149
L_414C:
	call 06358h		;414c
	jp L_4215		;414f
L_4152:
	call L_5DA8		;4152
	jp L_4215		;4155
L_4158:
	call 07668h		;4158
	jp L_4215		;415b
L_415E:
	call 0634eh		;415e
	jp L_4215		;4161
L_4164:
	call 0797fh		;4164
	jp L_4215		;4167
L_416A:
	call 06376h		;416a
	jp L_4215		;416d
L_4170:
	call 07ed9h		;4170
	jp L_4215		;4173
puente_da_objeto_b:
	call 079d0h		;4176   ; p01:79D0: da el objeto A, B unidades (al recogerlo del suelo, p09:BC03)
	jp L_4215		;4179
L_417C:
	call L_476D		;417c
	jp L_4215		;417f
L_4182:
	call L_481B		;4182
	jp L_4215		;4185
L_4188:
	call L_469C		;4188
	jp L_4215		;418b
L_418E:
	call L_45E9		;418e
	jp L_4215		;4191

; ----------------------------------------------------------------------
; DATOS sin identificar  0x4194..0x419a  (6 bytes)
DATA_4194:
	defb 0cdh,0b2h,04eh,0c3h,015h,042h	; 4194

; ======================================================================
; CODIGO 0x419a..0x41be  (36 bytes)
; ======================================================================


puente_pon_objeto:
	call 07852h		;419a   ; p01:7852: pone el objeto C (B unidades) en (E, D) de la pantalla
	jp L_4215		;419d
L_41A0:
	call 083a7h		;41a0
	jp L_4215		;41a3
L_41A6:
	call 06c7bh		;41a6
	jp L_4215		;41a9
L_41AC:
	call L_5FFA		;41ac
	jp L_4215		;41af
L_41B2:
	call L_4867		;41b2
	jp L_4215		;41b5
L_41B8:
	call L_4C92		;41b8
	jp L_4215		;41bb

; ----------------------------------------------------------------------
; DATOS sin identificar  0x41be..0x41c4  (6 bytes)
DATA_41BE:
	defb 0cdh,0ffh,052h,0c3h,015h,042h	; 41be

; ======================================================================
; CODIGO 0x41c4..0x41d0  (12 bytes)
; ======================================================================


L_41C4:
	call L_4EB5		;41c4
	jp L_4215		;41c7
L_41CA:
	call L_431F		;41ca
	jp L_4215		;41cd

; ----------------------------------------------------------------------
; DATOS sin identificar  0x41d0..0x41d6  (6 bytes)
DATA_41D0:
	defb 0cdh,067h,046h,0c3h,015h,042h	; 41d0

; ======================================================================
; CODIGO 0x41d6..0x435d  (391 bytes)
; ======================================================================


L_41D6:
	call L_5291		;41d6
	jp L_4215		;41d9
L_41DC:
	call 084c3h		;41dc
	jp L_4215		;41df
L_41E2:
	call L_446E		;41e2
	jp L_4215		;41e5
L_41E8:
	call L_44BA		;41e8
	jp L_4215		;41eb
L_41EE:
	call 07dd7h		;41ee
	jp L_4215		;41f1
L_41F4:
	call L_47D7		;41f4
	jp L_4215		;41f7
L_41FA:
	call L_42F0		;41fa
	jp L_4215		;41fd
L_4200:
	call L_4DD2		;4200
	jp L_4215		;4203
L_4206:
	call L_5331		;4206
	jp L_4215		;4209
L_420C:
	call 08456h		;420c
	jp L_4215		;420f
L_4212:
	call L_54BD		;4212
L_4215:
	call L_42BC		;4215
	push af			;4218
	ld a,(0f0f6h)		;4219
	and a			;421c
	jr z,L_4227		;421d
	di			;421f
	ld (0a000h),a		;4220
	ld (0f0f3h),a		;4223
	ei			;4226
L_4227:
	pop af			;4227
	ret			;4228
L_4229:
	di			;4229
	ld a,004h		;422a
	ld (06000h),a		;422c
	inc a			;422f
	ld (08000h),a		;4230
	call 06228h		;4233
	ld a,(0f0f1h)		;4236
	ld (06000h),a		;4239
	ld a,(0f0f2h)		;423c
	ld (08000h),a		;423f
	ld hl,0c105h		;4242
	bit 0,(hl)		;4245
	jp nz,L_4253		;4247
	inc (hl)			;424a
	ei			;424b
	call 065c2h		;424c
	xor a			;424f
	ld (0c105h),a		;4250
L_4253:
	ei			;4253
	ret			;4254
L_4255:
	add a,l			;4255
	ld l,a			;4256
	ret nc			;4257
	inc h			;4258
	ret			;4259
L_425A:
	add a,e			;425a
	ld e,a			;425b
	ret nc			;425c
	inc d			;425d
	ret			;425e
L_425F:
	pop hl			;425f
L_4260:
	add a,a			;4260
	call L_4255		;4261
	ld e,(hl)			;4264
	inc hl			;4265
	ld d,(hl)			;4266
	ex de,hl			;4267
	jp (hl)			;4268
L_4269:
	di			;4269
	ld sp,0f0f0h		;426a
	call 00138h		;426d   ; BIOS RSLREG - Reads the primary slot register
	rrca			;4270
	rrca			;4271
	and 003h		;4272
	ld c,a			;4274
	ld b,000h		;4275
	ld hl,0fcc1h		;4277
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
	ld h,080h		;4288
	call 00024h		;428a   ; BIOS ENASLT - Switches to specified slot and page definitively
	ld hl,0c000h		;428d
	ld de,0c001h		;4290
	ld bc,030efh		;4293
	ld (hl),000h		;4296
	ldir		;4298
	call L_42BC		;429a
	xor a			;429d
	ld hl,0f0f4h		;429e
	ld (hl),a			;42a1
	inc hl			;42a2
	ld (hl),a			;42a3
	inc hl			;42a4
	ld (hl),a			;42a5
	call 06492h		;42a6
	di			;42a9
	ld a,0c3h		;42aa
	ld (0fd9fh),a		;42ac
	ld hl,L_4229		;42af
	ld (0fda0h),hl		;42b2
	xor a			;42b5
	ld (0f3dbh),a		;42b6
	ei			;42b9
L_42BA:
	jr L_42BA		;42ba
L_42BC:
	di			;42bc
	push af			;42bd
	ld a,001h		;42be
	jr L_42C6		;42c0
L_42C2:
	di			;42c2
	push af			;42c3
	ld a,004h		;42c4
L_42C6:
	push hl			;42c6
	ld hl,0f0f1h		;42c7
	ld (06000h),a		;42ca
	ld (hl),a			;42cd
	inc a			;42ce
	inc hl			;42cf
	ld (08000h),a		;42d0
	ld (hl),a			;42d3
	inc a			;42d4
	ld (0a000h),a		;42d5
	inc hl			;42d8
	ld (hl),a			;42d9
	pop hl			;42da
	pop af			;42db
	ei			;42dc
	ret			;42dd
L_42DE:
	di			;42de
	push af			;42df
	ld a,007h		;42e0
	jr L_42C6		;42e2
L_42E4:
	di			;42e4
	push af			;42e5
	ld a,00ah		;42e6
	jr L_42C6		;42e8
L_42EA:
	di			;42ea
	push af			;42eb
	ld a,00dh		;42ec
	jr L_42C6		;42ee
L_42F0:
	ld hl,010b8h		;42f0
	call L_441F		;42f3
	ld hl,0a062h		;42f6
	call L_4919		;42f9
	jp L_42BC		;42fc
L_42FF:
	ld l,a			;42ff
	ld h,000h		;4300
	add hl,hl			;4302
	add hl,de			;4303
	ld e,(hl)			;4304
	inc hl			;4305
	ld d,(hl)			;4306
	ret			;4307
L_4308:
	ld a,(0c303h)		;4308
	ld e,a			;430b
	ld a,(0c305h)		;430c
	ld d,a			;430f
	ret			;4310
L_4311:
	ld (ix+007h),e		;4311
	ld (ix+008h),d		;4314
	ret			;4317
L_4318:
	ld (ix+009h),e		;4318
	ld (ix+00ah),d		;431b
	ret			;431e
L_431F:
	ld a,l			;431f
	rra			;4320
	rra			;4321
	rra			;4322
	rra			;4323
	rr h		;4324
	rra			;4326
	rr h		;4327
	rra			;4329
	rr h		;432a
	ld l,h			;432c
	and 003h		;432d
	add a,0e0h		;432f
	ld h,a			;4331
	ret			;4332
L_4333:
	call L_4399		;4333
	call L_431F		;4336
	push hl			;4339
	ld de,04365h		;433a
	ld a,(ix+00fh)		;433d
	call L_42FF		;4340
	ld a,c			;4343
	ld (de),a			;4344
	inc de			;4345
	ld a,b			;4346
	ld (de),a			;4347
	inc de			;4348
	pop hl			;4349
L_434A:
	push bc			;434a
	push hl			;434b
L_434C:
	ld a,(hl)			;434c
	ld (de),a			;434d
	inc hl			;434e
	inc de			;434f
	djnz L_434C		;4350
	pop hl			;4352
	pop bc			;4353
	ld a,020h		;4354
	call L_4255		;4356
	dec c			;4359
	jr nz,L_434A		;435a
	ret			;435c

; ----------------------------------------------------------------------
; DATOS sin identificar  0x435d..0x437f  (34 bytes)
DATA_435D:
	defb 000h,0f8h,0f4h,0f0h,0ech,0e8h,0e4h,0e0h,080h,0d6h,0c2h,0d6h,004h,0d7h,046h,0d7h	; 435d  ..............F.
	defb 088h,0d7h,0cah,0d7h,00ch,0d8h,04eh,0d8h,090h,0d8h,0d2h,0d8h,014h,0d9h,056h,0d9h	; 436d  ......N.......V.
	defb 098h,0d9h	; 437d

; ======================================================================
; CODIGO 0x437f..0x445c  (221 bytes)
; ======================================================================


L_437F:
	ld de,04365h		;437f
	ld a,(ix+00fh)		;4382
	call L_42FF		;4385
	ld a,(de)			;4388
	ld c,a			;4389
	inc de			;438a
	ld a,(de)			;438b
	ld b,a			;438c
	inc de			;438d
	push de			;438e
	push bc			;438f
	call L_4399		;4390
	pop bc			;4393
	pop de			;4394
	ex de,hl			;4395
	jp L_4EB2		;4396
L_4399:
	ld a,c			;4399
	dec a			;439a
	ld hl,0435dh		;439b
	call L_4255		;439e
	ld e,(hl)			;43a1
	ld a,b			;43a2
	dec a			;43a3
	ld hl,0435dh		;43a4
	call L_4255		;43a7
	ld d,(hl)			;43aa
	ld a,(ix+003h)		;43ab
	add a,e			;43ae
	ld l,a			;43af
	ld a,(ix+005h)		;43b0
	add a,d			;43b3
	ld h,a			;43b4
	ret			;43b5
L_43B6:
	ld a,0f0h		;43b6
L_43B8:
	ld (0e800h),a		;43b8
	call L_4399		;43bb
	call L_431F		;43be
L_43C1:
	push bc			;43c1
	push hl			;43c2
	ld a,(0e800h)		;43c3
L_43C6:
	ld (hl),a			;43c6
	inc hl			;43c7
	djnz L_43C6		;43c8
	pop hl			;43ca
	pop bc			;43cb
	ld a,020h		;43cc
	call L_4255		;43ce
	dec c			;43d1
	jr nz,L_43C1		;43d2
	ret			;43d4
L_43D5:
	ld a,e			;43d5
	exx			;43d6
	ld l,a			;43d7
	ld h,000h		;43d8
	exx			;43da
	ld d,000h		;43db
	ld c,d			;43dd
	ld l,c			;43de
	ld b,008h		;43df
L_43E1:
	rr h		;43e1
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
	ld a,b			;43ed
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
	ld a,e			;4400
	add a,a			;4401
	daa			;4402
	ld e,a			;4403
	ld a,d			;4404
	adc a,a			;4405
	daa			;4406
	ld d,a			;4407
L_4408:
	djnz L_43E1		;4408
	ld h,c			;440a
	ret			;440b
L_440C:
	ld hl,(0e80ah)		;440c
	call L_4430		;440f
	ld a,018h		;4412
	add a,h			;4414
	ld h,a			;4415
	ld a,(0e80ch)		;4416
	call L_441F		;4419
	jp L_42BC		;441c
L_441F:
	call L_42EA		;441f
	push hl			;4422
	ld de,0a069h		;4423
	call L_42FF		;4426
	pop hl			;4429
	ex de,hl			;442a
	ld c,0ffh		;442b
	jp L_4919		;442d
L_4430:
	ld a,l			;4430
	add a,a			;4431
	add a,a			;4432
	add a,a			;4433
	add a,a			;4434
	add a,010h		;4435
	cp 050h		;4437
	jr c,L_443D		;4439
	add a,018h		;443b
L_443D:
	cp 0d0h		;443d
	jr c,L_4443		;443f
	add a,010h		;4441
L_4443:
	ld l,a			;4443
	ld a,h			;4444
	ld h,010h		;4445
	and a			;4447
	ret z			;4448
	ld h,060h		;4449
	dec a			;444b
	ret z			;444c
	ld h,0b0h		;444d
	ret			;444f
L_4450:
	ld hl,0445ch		;4450
	ld bc,00902h		;4453
	ld de,0b008h		;4456
	jp L_4EB2		;4459

; ----------------------------------------------------------------------
; DATOS sin identificar  0x445c..0x446e  (18 bytes)
DATA_445C:
	defb 0d0h,0d1h,0d2h,0d3h,0d4h,0d5h,0d6h,0d7h,0d8h,0d9h,0dah,0dbh,0dch,0ddh,0deh,0dfh	; 445c  ................
	defb 0e0h,0e1h	; 446c

; ======================================================================
; CODIGO 0x446e..0x459f  (305 bytes)
; ======================================================================


L_446E:
	xor a			;446e
	ld (0dfe3h),a		;446f
	ld ix,0d000h		;4472
	ld b,00dh		;4476
L_4478:
	ld a,(ix+000h)		;4478
	cp 01ah		;447b
	jr z,L_4493		;447d
	cp 02ah		;447f
	jr z,L_4493		;4481
	cp 02bh		;4483
	jr z,L_4493		;4485
	cp 038h		;4487
	jr z,L_4493		;4489
	cp 039h		;448b
	jr z,L_4493		;448d
	cp 042h		;448f
	jr nz,L_44B2		;4491
L_4493:
	ld a,(ix+003h)		;4493
	sub 020h		;4496
	ld l,a			;4498
	ld a,(ix+005h)		;4499
	sub 020h		;449c
	ld h,a			;449e
	ld (0dfe1h),hl		;449f
	ld de,06090h		;44a2
	ld bc,04040h		;44a5
	ld a,018h		;44a8
	call L_481B		;44aa
	ld a,001h		;44ad
	ld (0dfe3h),a		;44af
L_44B2:
	ld de,00080h		;44b2
	add ix,de		;44b5
	djnz L_4478		;44b7
	ret			;44b9
L_44BA:
	ld a,(0dfe3h)		;44ba
	and a			;44bd
	jp z,08e67h		;44be
	ld de,(0dfe1h)		;44c1
	ld hl,06090h		;44c5
	ld bc,04040h		;44c8
	ld a,048h		;44cb
	call L_481B		;44cd
	ld a,(0c125h)		;44d0
	cp 057h		;44d3
	ret nz			;44d5
	ld a,(0d000h)		;44d6
	cp 042h		;44d9
	ret nz			;44db
	ld ix,0d000h		;44dc
	ld bc,00403h		;44e0
	jp L_43B6		;44e3
L_44E6:
	ld a,c			;44e6
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
	ld a,(0c125h)		;451b
	cp 01ah		;451e
	ld l,00ah		;4520
	jr z,L_4548		;4522
	ld l,00ch		;4524
	jr L_4548		;4526
L_4528:
	cp 027h		;4528
	jr nz,L_4539		;452a
	ld a,(0c125h)		;452c
	cp 077h		;452f
	ld l,018h		;4531
	jr z,L_4548		;4533
	ld l,01ah		;4535
	jr L_4548		;4537
L_4539:
	cp 01ah		;4539
	jr nz,L_454A		;453b
	ld a,(0c125h)		;453d
	cp 031h		;4540
	ld l,006h		;4542
	jr z,L_4548		;4544
	ld l,008h		;4546
L_4548:
	scf			;4548
	ret			;4549
L_454A:
	and a			;454a
	ret			;454b
L_454C:
	call L_42E4		;454c
	ld hl,0b4d4h		;454f
	call L_490F		;4552
	jp L_42BC		;4555
L_4558:
	call L_45CC		;4558
	call L_456B		;455b
	ex af,af'			;455e
	ld a,(00006h)		;455f
	ld c,a			;4562
	ex af,af'			;4563
L_4564:
	inir		;4564
	dec a			;4566
	jr nz,L_4564		;4567
	ex de,hl			;4569
	ret			;456a
L_456B:
	ex de,hl			;456b
	ld a,c			;456c
	or a			;456d
	ld a,b			;456e
	ld b,c			;456f
	ret z			;4570
	inc a			;4571
	ret			;4572
L_4573:
	ex de,hl			;4573
	call L_45AD		;4574
	call L_456B		;4577
	ex af,af'			;457a
	ld a,(00007h)		;457b
	ld c,a			;457e
	ex af,af'			;457f
L_4580:
	otir		;4580
	dec a			;4582
	jr nz,L_4580		;4583
	ret			;4585
L_4586:
	push de			;4586
	push af			;4587
	call L_45AD		;4588
	ld d,c			;458b
	ld a,c			;458c
	or a			;458d
	jr z,L_4591		;458e
	inc b			;4590
L_4591:
	ld a,(00007h)		;4591
	ld c,a			;4594
	pop af			;4595
L_4596:
	out (c),a		;4596
	dec d			;4598
	jr nz,L_4596		;4599
	djnz L_4596		;459b
	pop de			;459d
	ret			;459e

; ----------------------------------------------------------------------
; DATOS sin identificar  0x459f..0x45ad  (14 bytes)
DATA_459F:
	defb 0c5h,0f5h,0cdh,0adh,045h,03ah,007h,000h,04fh,0f1h,0edh,079h,0c1h,0c9h	; 459f  ....E:..O..y..

; ======================================================================
; CODIGO 0x45ad..0x46af  (258 bytes)
; ======================================================================


L_45AD:
	push bc			;45ad
	ld a,(00007h)		;45ae
	inc a			;45b1
	ld c,a			;45b2
	ld a,h			;45b3
	rlca			;45b4
	rlca			;45b5
	and 003h		;45b6
	di			;45b8
	out (c),a		;45b9
	ld a,08eh		;45bb
	out (c),a		;45bd
	ld a,l			;45bf
	out (c),a		;45c0
	ld a,h			;45c2
	and 03fh		;45c3
	or 040h		;45c5
	out (c),a		;45c7
	pop bc			;45c9
	ei			;45ca
	ret			;45cb
L_45CC:
	push bc			;45cc
	ld a,(00007h)		;45cd
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
	ld a,h			;45e1
	and 03fh		;45e2
	out (c),a		;45e4
	pop bc			;45e6
	ei			;45e7
	ret			;45e8
L_45E9:
	ex de,hl			;45e9
	ld e,(hl)			;45ea
	inc hl			;45eb
	ld d,(hl)			;45ec
	inc hl			;45ed
	ex de,hl			;45ee
L_45EF:
	call L_45AD		;45ef
	ld a,(00007h)		;45f2
	ld c,a			;45f5
L_45F6:
	ld a,(de)			;45f6
	and a			;45f7
	ret z			;45f8
	inc de			;45f9
	ld b,a			;45fa
	and 07fh		;45fb
	cp b			;45fd
	jr z,L_460A		;45fe
	and a			;4600
	jr z,L_45E9		;4601
	ex de,hl			;4603
	ld b,a			;4604
	otir		;4605
	ex de,hl			;4607
	jr L_45F6		;4608
L_460A:
	ld a,(de)			;460a
	inc de			;460b
L_460C:
	out (c),a		;460c
	djnz L_460C		;460e
	jr L_45F6		;4610
L_4612:
	call L_4651		;4612
	ld bc,000d4h		;4615
	push bc			;4618
	call L_462D		;4619
	pop bc			;461c
	call L_4642		;461d
L_4620:
	ld a,(0f3e0h)		;4620
	or 040h		;4623
	ld b,a			;4625
	ld c,001h		;4626
	call 00047h		;4628   ; BIOS WRTVDP - Writes data in the VDP-register
	jr L_4667		;462b
L_462D:
	ld a,(0f3e0h)		;462d
	and 0bfh		;4630
	ld b,a			;4632
	ld c,001h		;4633
	call 00047h		;4635   ; BIOS WRTVDP - Writes data in the VDP-register
	jr L_465C		;4638
L_463A:
	ld hl,00098h		;463a
	ld bc,0003ch		;463d
	jr L_4645		;4640
L_4642:
	ld hl,00000h		;4642
L_4645:
	xor a			;4645
	ld d,a			;4646
	call L_479B		;4647
	ld b,000h		;464a
	ld c,017h		;464c
	jp 00047h		;464e   ; BIOS WRTVDP - Writes data in the VDP-register
L_4651:
	ld hl,0f600h		;4651
	ld a,0e0h		;4654
	ld bc,00080h		;4656
	call L_4586		;4659
L_465C:
	ld a,(0ffe7h)		;465c
	or 002h		;465f
	ld b,a			;4661
	ld c,008h		;4662
	jp 00047h		;4664   ; BIOS WRTVDP - Writes data in the VDP-register
L_4667:
	ld a,(0ffe7h)		;4667
	and 0fdh		;466a
	ld b,a			;466c
	ld c,008h		;466d
	jp 00047h		;466f   ; BIOS WRTVDP - Writes data in the VDP-register
L_4672:
	push bc			;4672
	push hl			;4673
	ld b,a			;4674
	ld a,(00007h)		;4675
	inc a			;4678
	ld c,a			;4679
	di			;467a
	out (c),b		;467b
	ld a,090h		;467d
	out (c),a		;467f
	inc c			;4681
	out (c),d		;4682
	push af			;4684
	pop af			;4685
	out (c),e		;4686
	dec c			;4688
	ld hl,0f680h		;4689
	ld a,b			;468c
	add a,a			;468d
	add a,l			;468e
	ld l,a			;468f
	call L_45AD		;4690
	dec c			;4693
	out (c),d		;4694
	out (c),e		;4696
	pop hl			;4698
	pop bc			;4699
	ei			;469a
	ret			;469b
L_469C:
	ld hl,046afh		;469c
	ld b,010h		;469f
	xor a			;46a1
L_46A2:
	ld d,(hl)			;46a2
	inc hl			;46a3
	ld e,(hl)			;46a4
	inc hl			;46a5
	push af			;46a6
	call L_4672		;46a7
	pop af			;46aa
	inc a			;46ab
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


L_46CF:
	ld a,(hl)			;46cf
	inc hl			;46d0
	inc a			;46d1
	ret z			;46d2
	dec a			;46d3
	ld d,(hl)			;46d4
	inc hl			;46d5
	ld e,(hl)			;46d6
	inc hl			;46d7
	call L_4672		;46d8
	jr L_46CF		;46db
L_46DD:
	ld a,002h		;46dd
	call L_46E6		;46df
	rra			;46e2
	jr c,L_46DD		;46e3
	ret			;46e5
L_46E6:
	push bc			;46e6
	push hl			;46e7
	ld hl,(00006h)		;46e8
	inc h			;46eb
	inc l			;46ec
	ld c,h			;46ed
	di			;46ee
	out (c),a		;46ef
	ld a,08fh		;46f1
	out (c),a		;46f3
	ld c,l			;46f5
	in a,(c)		;46f6
	push af			;46f8
	xor a			;46f9
	ld c,h			;46fa
	out (c),a		;46fb
	ld a,08fh		;46fd
	out (c),a		;46ff
	pop af			;4701
	pop hl			;4702
	pop bc			;4703
	ei			;4704
	ret			;4705
L_4706:
	call L_46DD		;4706
	push bc			;4709
	ld a,(00007h)		;470a
	inc a			;470d
	ld c,a			;470e
	ld a,024h		;470f
	di			;4711
	out (c),a		;4712
	ld a,091h		;4714
	out (c),a		;4716
	inc c			;4718
	inc c			;4719
	out (c),h		;471a
	xor a			;471c
	out (c),a		;471d
	out (c),l		;471f
	out (c),a		;4721
	pop hl			;4723
	dec h			;4724
	out (c),h		;4725
	xor a			;4727
	out (c),a		;4728
	xor a			;472a
	out (c),a		;472b
	out (c),a		;472d
	out (c),l		;472f
	out (c),a		;4731
	ld a,070h		;4733
	out (c),a		;4735
	ei			;4737
	ret			;4738
L_4739:
	call L_46DD		;4739
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
	inc a			;4764
	out (c),a		;4765
	ld a,070h		;4767
	out (c),a		;4769
	ei			;476b
	ret			;476c
L_476D:
	ld b,e			;476d
	call L_4787		;476e
	ld b,d			;4771
	call L_4791		;4772
	push hl			;4775
	ld a,l			;4776
	dec a			;4777
	add a,e			;4778
	ld l,a			;4779
	ld b,d			;477a
	call L_4791		;477b
	pop hl			;477e
	ld a,h			;477f
	dec a			;4780
	add a,d			;4781
	ld h,a			;4782
	ld b,e			;4783
	jp L_4787		;4784
L_4787:
	push hl			;4787
	push de			;4788
	push bc			;4789
	call L_4739		;478a
	pop bc			;478d
	pop de			;478e
	pop hl			;478f
	ret			;4790
L_4791:
	push hl			;4791
	push de			;4792
	push bc			;4793
	call L_4706		;4794
	pop bc			;4797
	pop de			;4798
	pop hl			;4799
	ret			;479a
L_479B:
	ex af,af'			;479b
	call L_46DD		;479c
	push bc			;479f
	ld a,(00007h)		;47a0
	inc a			;47a3
	ld c,a			;47a4
	ld a,024h		;47a5
	di			;47a7
	out (c),a		;47a8
	ld a,091h		;47aa
	out (c),a		;47ac
	inc c			;47ae
	inc c			;47af
	out (c),h		;47b0
	xor a			;47b2
	out (c),a		;47b3
	out (c),l		;47b5
	out (c),d		;47b7
	pop hl			;47b9
	out (c),h		;47ba
	cp h			;47bc
	jr nz,L_47C0		;47bd
	inc a			;47bf
L_47C0:
	out (c),a		;47c0
	xor a			;47c2
	out (c),l		;47c3
	cp l			;47c5
	jr nz,L_47C9		;47c6
	inc a			;47c8
L_47C9:
	out (c),a		;47c9
	ex af,af'			;47cb
	out (c),a		;47cc
	xor a			;47ce
	out (c),a		;47cf
	ld a,0c0h		;47d1
	out (c),a		;47d3
	ei			;47d5
	ret			;47d6
L_47D7:
	ex af,af'			;47d7
	call L_46DD		;47d8
	push bc			;47db
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
	out (c),h		;47ec
	xor a			;47ee
	out (c),a		;47ef
	out (c),l		;47f1
	ex af,af'			;47f3
	ld l,a			;47f4
	and 003h		;47f5
	out (c),a		;47f7
	out (c),d		;47f9
	xor a			;47fb
	out (c),a		;47fc
	out (c),e		;47fe
	ld a,l			;4800
	rra			;4801
	rra			;4802
	and 003h		;4803
	out (c),a		;4805
	pop hl			;4807
	out (c),h		;4808
	xor a			;480a
	out (c),a		;480b
	out (c),l		;480d
	out (c),a		;480f
	out (c),a		;4811
	out (c),a		;4813
	ld a,0d0h		;4815
	out (c),a		;4817
	ei			;4819
	ret			;481a
L_481B:
	ex af,af'			;481b
	call L_46DD		;481c
	push bc			;481f
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
	out (c),h		;4830
	xor a			;4832
	out (c),a		;4833
	out (c),l		;4835
	ex af,af'			;4837
	rlca			;4838
	rlca			;4839
	ld l,a			;483a
	and 003h		;483b
	out (c),a		;483d
	out (c),d		;483f
	xor a			;4841
	out (c),a		;4842
	out (c),e		;4844
	ld a,l			;4846
	ld e,a			;4847
	rlca			;4848
	rlca			;4849
	and 003h		;484a
	out (c),a		;484c
	pop hl			;484e
	out (c),h		;484f
	xor a			;4851
	out (c),a		;4852
	out (c),l		;4854
	out (c),a		;4856
	out (c),a		;4858
	out (c),a		;485a
	ld a,e			;485c
	rra			;485d
	rra			;485e
	and 00fh		;485f
	or 090h		;4861
	out (c),a		;4863
	ei			;4865
	ret			;4866
L_4867:
	call L_4870		;4867
	call L_49CE		;486a
	djnz L_4867		;486d
	ret			;486f
L_4870:
	push bc			;4870
	push de			;4871
	push hl			;4872
	push de			;4873
	call L_48E5		;4874
	pop de			;4877
	ld b,d			;4878
	ld d,e			;4879
	ld e,b			;487a
	srl d		;487b
	rr e		;487d
	ld a,d			;487f
	add a,080h		;4880
	ld d,a			;4882
	ld hl,0e800h		;4883
	call L_4891		;4886
	pop hl			;4889
	ld bc,00008h		;488a
	add hl,bc			;488d
	pop de			;488e
	pop bc			;488f
	ret			;4890
L_4891:
	push de			;4891
	ld b,008h		;4892
L_4894:
	push bc			;4894
	ld bc,00004h		;4895
	call L_4573		;4898
	ex de,hl			;489b
	ld bc,00080h		;489c
	add hl,bc			;489f
	ex de,hl			;48a0
	pop bc			;48a1
	djnz L_4894		;48a2
	pop de			;48a4
	ret			;48a5
L_48A6:
	push bc			;48a6
	call L_4891		;48a7
	ld a,004h		;48aa
	add a,e			;48ac
	cp 080h		;48ad
	jr nz,L_48B6		;48af
	ld a,004h		;48b1
	add a,d			;48b3
	ld d,a			;48b4
	xor a			;48b5
L_48B6:
	ld e,a			;48b6
	pop bc			;48b7
	djnz L_48A6		;48b8
	ret			;48ba
L_48BB:
	push de			;48bb
	ld b,010h		;48bc
L_48BE:
	push bc			;48be
	ld bc,00008h		;48bf
	call L_4573		;48c2
	ex de,hl			;48c5
	ld bc,00080h		;48c6
	add hl,bc			;48c9
	ex de,hl			;48ca
	pop bc			;48cb
	djnz L_48BE		;48cc
	pop de			;48ce
	ret			;48cf
sube_dibujos_de_16:
	push bc			;48d0
	call L_48BB		;48d1
	ld a,008h		;48d4   ; el siguiente, 16 puntos (8 bytes) a la derecha
	add a,e			;48d6
	cp 080h		;48d7   ; al llegar a 0x80 (256 puntos), 16 lineas mas abajo
	jr nz,L_48E0		;48d9
	ld a,008h		;48db
	add a,d			;48dd
	ld d,a			;48de
	xor a			;48df
L_48E0:
	ld e,a			;48e0
	pop bc			;48e1
	djnz sube_dibujos_de_16		;48e2
	ret			;48e4
L_48E5:
	ld b,008h		;48e5
	ld de,0e800h		;48e7
L_48EA:
	push bc			;48ea
	push hl			;48eb
	ex de,hl			;48ec
	ld a,(de)			;48ed
	ld d,a			;48ee
	ld b,004h		;48ef
L_48F1:
	ld a,c			;48f1
	rl d		;48f2
	jr c,L_48F7		;48f4
	xor a			;48f6
L_48F7:
	rld		;48f7
	ld a,c			;48f9
	rl d		;48fa
	jr c,L_48FF		;48fc
	xor a			;48fe
L_48FF:
	rld		;48ff
	inc hl			;4901
	djnz L_48F1		;4902
	ex de,hl			;4904
	pop hl			;4905
	inc hl			;4906
	pop bc			;4907
	djnz L_48EA		;4908
	ret			;490a
L_490B:
	ld c,080h		;490b
	jr L_4915		;490d
L_490F:
	ld c,0ffh		;490f
	jr L_4915		;4911
L_4913:
	ld c,000h		;4913
L_4915:
	ld d,(hl)			;4915
	inc hl			;4916
	ld e,(hl)			;4917
	inc hl			;4918
L_4919:
	ld a,(hl)			;4919
	inc hl			;491a
	cp 0ffh		;491b
	ret z			;491d
	cp 0feh		;491e
	jr z,L_4915		;4920
	call L_4952		;4922
	ld a,d			;4925
	add a,008h		;4926
	ld d,a			;4928
	jr L_4919		;4929
L_492B:
	push de			;492b
L_492C:
	ld a,(hl)			;492c
	inc hl			;492d
	ld c,a			;492e
	inc a			;492f
	jr z,L_4950		;4930
	inc a			;4932
	jr nz,L_493C		;4933
	pop de			;4935
	ld a,008h		;4936
	add a,e			;4938
	ld e,a			;4939
	jr L_492B		;493a
L_493C:
	ld a,c			;493c
	sla a		;493d
	sla a		;493f
	sla a		;4941
	push hl			;4943
	ld h,a			;4944
	ld l,0a0h		;4945
	call L_49B1		;4947
	call L_49CE		;494a
	pop hl			;494d
	jr L_492C		;494e
L_4950:
	pop de			;4950
	ret			;4951
L_4952:
	push bc			;4952
	push hl			;4953
	push de			;4954
	and a			;4955
	ld hl,00000h		;4956
	jr z,L_496F		;4959
	dec c			;495b
	inc c			;495c
	jr z,L_496F		;495d
	add a,010h		;495f
	call L_49C0		;4961
	ld a,c			;4964
	cp 080h		;4965
	ld a,030h		;4967
	jr nz,L_496D		;4969
	ld a,048h		;496b
L_496D:
	add a,l			;496d
	ld l,a			;496e
L_496F:
	ld bc,00808h		;496f
	ld a,001h		;4972
	call L_47D7		;4974
	pop de			;4977
	pop hl			;4978
	pop bc			;4979
	ret			;497a
L_497B:
	push bc			;497b
	push hl			;497c
	push de			;497d
	call L_49C0		;497e
	ld bc,00808h		;4981
	ld a,001h		;4984
	call L_47D7		;4986
	pop de			;4989
	pop hl			;498a
	pop bc			;498b
	ret			;498c
L_498D:
	push bc			;498d
	push hl			;498e
	push de			;498f
	call L_49C0		;4990
	ld bc,00808h		;4993
	ld a,048h		;4996
	call L_481B		;4998
	pop de			;499b
	pop hl			;499c
	pop bc			;499d
	ret			;499e
L_499F:
	push bc			;499f
	push hl			;49a0
	push de			;49a1
	call L_49C0		;49a2
	ld bc,00808h		;49a5
	ld a,005h		;49a8
	call L_47D7		;49aa
	pop de			;49ad
	pop hl			;49ae
	pop bc			;49af
	ret			;49b0
L_49B1:
	push bc			;49b1
	push hl			;49b2
	push de			;49b3
	ld bc,00808h		;49b4
	ld a,005h		;49b7
	call L_47D7		;49b9
	pop de			;49bc
	pop hl			;49bd
	pop bc			;49be
	ret			;49bf
L_49C0:
	ld b,a			;49c0
	and 01fh		;49c1
	add a,a			;49c3
	add a,a			;49c4
	add a,a			;49c5
	ld h,a			;49c6
	ld a,b			;49c7
	and 0e0h		;49c8
	rrca			;49ca
	rrca			;49cb
	ld l,a			;49cc
	ret			;49cd
L_49CE:
	ld a,d			;49ce
	add a,008h		;49cf
	ld d,a			;49d1
	ret nz			;49d2
	ld a,e			;49d3
	add a,008h		;49d4
	ld e,a			;49d6
	ret			;49d7
L_49D8:
	call L_4A7B		;49d8
	ld a,(0c125h)		;49db
	cp 073h		;49de
	jr z,L_4A51		;49e0
	cp 074h		;49e2
	jr z,L_4A51		;49e4
	cp 075h		;49e6
	jr z,L_4A51		;49e8
	cp 076h		;49ea
	jr z,L_4A51		;49ec
	cp 089h		;49ee
	jr z,L_49FF		;49f0
	cp 015h		;49f2
	jr z,L_49FF		;49f4
	cp 028h		;49f6
	jr z,L_49FF		;49f8
	cp 060h		;49fa
	jp nz,L_42BC		;49fc
L_49FF:
	call L_42E4		;49ff
	ld hl,0a17eh		;4a02
	ld de,08044h		;4a05
	ld b,010h		;4a08
	call L_4A1B		;4a0a
	ld hl,0a35eh		;4a0d
	ld de,08c00h		;4a10
	ld b,00bh		;4a13
	call L_4A1B		;4a15
	jp L_42BC		;4a18
L_4A1B:
	push bc			;4a1b
	push de			;4a1c
	ld de,0e803h		;4a1d
	ld c,008h		;4a20
L_4A22:
	ld b,004h		;4a22
L_4A24:
	ld a,(hl)			;4a24
	rrca			;4a25
	rrca			;4a26
	rrca			;4a27
	rrca			;4a28
	ld (de),a			;4a29
	inc hl			;4a2a
	dec de			;4a2b
	djnz L_4A24		;4a2c
	ld a,008h		;4a2e
	call L_425A		;4a30
	dec c			;4a33
	jr nz,L_4A22		;4a34
	pop de			;4a36
	push hl			;4a37
	ld hl,0e800h		;4a38
	call L_4891		;4a3b
	pop hl			;4a3e
	ld a,e			;4a3f
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
	djnz L_4A1B		;4a4e
	ret			;4a50
L_4A51:
	call L_42EA		;4a51
	ld hl,09ec7h		;4a54
	ld de,0d000h		;4a57
	ld b,00ch		;4a5a
	call L_48A6		;4a5c
	ld hl,0b785h		;4a5f
	ld b,001h		;4a62
	call L_48A6		;4a64
	ld hl,0b725h		;4a67
	ld b,001h		;4a6a
	call L_48A6		;4a6c
	ld hl,0a047h		;4a6f
	ld de,000a8h		;4a72
	call L_492B		;4a75
	jp L_42BC		;4a78
L_4A7B:
	call L_42DE		;4a7b
	ld a,(0c131h)		;4a7e
	and a			;4a81
	jr z,L_4A8A		;4a82
	dec a			;4a84
	ld hl,06000h		;4a85
	jr L_4A90		;4a88
L_4A8A:
	ld a,(0c125h)		;4a8a
	ld hl,06009h		;4a8d
L_4A90:
	ld c,a			;4a90
	srl a		;4a91
	call L_4255		;4a93
	ld a,(hl)			;4a96
	bit 0,c		;4a97
	jr nz,L_4A9F		;4a99
	rra			;4a9b
	rra			;4a9c
	rra			;4a9d
	rra			;4a9e
L_4A9F:
	and 00fh		;4a9f
	ld c,a			;4aa1
	ld a,(0c148h)		;4aa2
	cp c			;4aa5
	jp z,L_42BC		;4aa6
	ld a,c			;4aa9
	ld (0c148h),a		;4aaa
	push af			;4aad
	call L_4AF8		;4aae
	pop af			;4ab1
	ld de,054ech		;4ab2
	call L_42FF		;4ab5
	ex de,hl			;4ab8
L_4AB9:
	ld a,(hl)			;4ab9
	cp 0ffh		;4aba
	jp z,L_42BC		;4abc
	cp 0feh		;4abf
	jr nz,L_4AC8		;4ac1
	call L_42E4		;4ac3
	inc hl			;4ac6
	ld a,(hl)			;4ac7
L_4AC8:
	rra			;4ac8
	rra			;4ac9
	rra			;4aca
	and 01ch		;4acb
	or 080h		;4acd
	ld d,a			;4acf
	ld a,(hl)			;4ad0
	and 01fh		;4ad1
	add a,a			;4ad3
	add a,a			;4ad4
	ld e,a			;4ad5
	inc hl			;4ad6
	ld b,(hl)			;4ad7
	inc hl			;4ad8
	ld a,(hl)			;4ad9
	inc hl			;4ada
	push hl			;4adb
	ld h,(hl)			;4adc
	ld l,a			;4add
	call L_48A6		;4ade
	pop hl			;4ae1
	inc hl			;4ae2
	jr L_4AB9		;4ae3
sube_iconos_y_hoja_comun:
	call sube_los_38_iconos		;4ae5
	ld hl,06050h		;4ae8
	jr L_4AB9		;4aeb

; ----------------------------------------------------------------------
; Los 38 dibujos de los objetos, 16x16 a 4 bits (128 bytes cada uno), de
; p07:630A a la VRAM 0xB800: la pagina 1 desde la linea 0x70, 16 por fila.
; El objeto n es el dibujo n-1 (p01:7962).
; ----------------------------------------------------------------------
sube_los_38_iconos:
	ld de,0b800h		;4aed
	ld hl,0630ah		;4af0
	ld b,026h		;4af3   ; 38 dibujos
	jp sube_dibujos_de_16		;4af5
L_4AF8:
	call L_425F		;4af8

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


L_4B15:
	call L_42EA		;4b15
	ld a,(0c125h)		;4b18
	ld hl,06620h		;4b1b
	call L_4255		;4b1e
	ld a,(hl)			;4b21
	and a			;4b22
	jr z,L_4B5B		;4b23
	dec a			;4b25
	ld hl,066d2h		;4b26
	add a,a			;4b29
	add a,a			;4b2a
	add a,a			;4b2b
	call L_4255		;4b2c
	ld de,0e800h		;4b2f
	ld bc,00008h		;4b32
	ldir		;4b35
	ld hl,(0e800h)		;4b37
	ld de,0e840h		;4b3a
	call L_4B5E		;4b3d
	ld hl,(0e802h)		;4b40
	ld de,0e940h		;4b43
	call L_4B5E		;4b46
	ld hl,(0e804h)		;4b49
	ld de,0ea40h		;4b4c
	call L_4B5E		;4b4f
	ld hl,(0e806h)		;4b52
	ld de,0eb40h		;4b55
	call L_4B5E		;4b58
L_4B5B:
	jp L_42BC		;4b5b
L_4B5E:
	push de			;4b5e
	ld de,0ec40h		;4b5f
	call L_4BB4		;4b62
	pop de			;4b65
	ld hl,0ec40h		;4b66
	ld bc,00050h		;4b69
	add hl,bc			;4b6c
	call L_4B85		;4b6d
	ld bc,0ffa0h		;4b70
	add hl,bc			;4b73
	call L_4B85		;4b74
	ld bc,000a0h		;4b77
	add hl,bc			;4b7a
	call L_4B85		;4b7b
	ld bc,0ffa0h		;4b7e
	add hl,bc			;4b81
	jp L_4B85		;4b82
L_4B85:
	call L_4B9D		;4b85
	ld bc,0ffe0h		;4b88
	add hl,bc			;4b8b
	call L_4B9D		;4b8c
	ld bc,00020h		;4b8f
	add hl,bc			;4b92
	call L_4B9D		;4b93
	ld bc,0ffe0h		;4b96
	add hl,bc			;4b99
	jp L_4B9D		;4b9a
L_4B9D:
	ld b,010h		;4b9d
L_4B9F:
	push bc			;4b9f
	ld c,(hl)			;4ba0
	ld b,008h		;4ba1
L_4BA3:
	rl c		;4ba3
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
L_4BB4:
	ld a,(hl)			;4bb4
	and a			;4bb5
	ret z			;4bb6
	inc hl			;4bb7
	ld b,a			;4bb8
	and 07fh		;4bb9
	cp b			;4bbb
	jr z,L_4BC8		;4bbc
	and a			;4bbe
	jr z,L_4BAF		;4bbf
	ld c,a			;4bc1
	ld b,000h		;4bc2
	ldir		;4bc4
	jr L_4BB4		;4bc6
L_4BC8:
	ld a,(hl)			;4bc8
	inc hl			;4bc9
L_4BCA:
	ld (de),a			;4bca
	inc de			;4bcb
	djnz L_4BCA		;4bcc
	jr L_4BB4		;4bce
L_4BD0:
	call L_42EA		;4bd0
	ld a,(0c125h)		;4bd3
	cp 029h		;4bd6
	ld c,088h		;4bd8
	jr z,L_4BFE		;4bda
	cp 031h		;4bdc
	ld c,001h		;4bde
	jr z,L_4BFE		;4be0
	cp 034h		;4be2
	jr z,L_4BFE		;4be4
	cp 053h		;4be6
	ld c,090h		;4be8
	jr z,L_4BFE		;4bea
	cp 05dh		;4bec
	jr z,L_4BFE		;4bee
	cp 057h		;4bf0
	ld c,004h		;4bf2
	jr z,L_4BFE		;4bf4
	cp 05ch		;4bf6
	ld c,082h		;4bf8
	jr z,L_4BFE		;4bfa
	ld c,000h		;4bfc
L_4BFE:
	ld a,c			;4bfe
	and a			;4bff
	jp z,L_4C8F		;4c00
	bit 7,a		;4c03
	ld a,001h		;4c05
	jr z,L_4C0A		;4c07
	inc a			;4c09
L_4C0A:
	ld (0e804h),a		;4c0a
	ld a,c			;4c0d
	rra			;4c0e
	ld hl,09ba2h		;4c0f
	jr c,L_4C29		;4c12
	rra			;4c14
	ld hl,090e4h		;4c15
	jr c,L_4C29		;4c18
	rra			;4c1a
	ld hl,08d1fh		;4c1b
	jr c,L_4C29		;4c1e
	rra			;4c20
	ld hl,09998h		;4c21
	jr c,L_4C29		;4c24
	ld hl,095aeh		;4c26
L_4C29:
	ld (0e800h),hl		;4c29
	inc hl			;4c2c
	ld c,(hl)			;4c2d
	inc hl			;4c2e
	ld b,(hl)			;4c2f
	inc hl			;4c30
	ld e,(hl)			;4c31
	inc hl			;4c32
	ld d,(hl)			;4c33
	ld (0e802h),de		;4c34
	inc hl			;4c38
	ex de,hl			;4c39
L_4C3A:
	push bc			;4c3a
	push hl			;4c3b
	call L_45AD		;4c3c
	ld a,(00007h)		;4c3f
	ld c,a			;4c42
	ex de,hl			;4c43
	otir		;4c44
	ex de,hl			;4c46
	pop hl			;4c47
	ld bc,00080h		;4c48
	add hl,bc			;4c4b
	pop bc			;4c4c
	dec c			;4c4d
	jr nz,L_4C3A		;4c4e
	ld hl,(0e800h)		;4c50
	ld a,(hl)			;4c53
	and a			;4c54
	jr z,L_4C88		;4c55
	inc hl			;4c57
	ld c,(hl)			;4c58
	inc hl			;4c59
	ld b,(hl)			;4c5a
	inc hl			;4c5b
	ld e,(hl)			;4c5c
	inc hl			;4c5d
	ld d,(hl)			;4c5e
	inc hl			;4c5f
	push hl			;4c60
	ld l,b			;4c61
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
	call L_45AD		;4c6d
	ld a,(00007h)		;4c70
	ld c,a			;4c73
	ld a,(de)			;4c74
	rrca			;4c75
	rrca			;4c76
	rrca			;4c77
	rrca			;4c78
	out (c),a		;4c79
	inc de			;4c7b
	dec hl			;4c7c
	djnz L_4C6D		;4c7d
	pop hl			;4c7f
	ld bc,00080h		;4c80
	add hl,bc			;4c83
	pop bc			;4c84
	dec c			;4c85
	jr nz,L_4C6B		;4c86
L_4C88:
	ld hl,0e804h		;4c88
	dec (hl)			;4c8b
	ex de,hl			;4c8c
	jr nz,L_4C29		;4c8d
L_4C8F:
	jp L_42BC		;4c8f
L_4C92:
	call L_42EA		;4c92
	ld de,0b069h		;4c95
	ld hl,0f800h		;4c98
	call L_45EF		;4c9b
	ld de,0b144h		;4c9e
	ld hl,0f900h		;4ca1
	call L_45EF		;4ca4
	ld de,0b3e5h		;4ca7
	ld hl,0fa00h		;4caa
	call L_45EF		;4cad
	jp L_42BC		;4cb0
L_4CB3:
	call L_42DE		;4cb3
	ld de,0b000h		;4cb6
	ld hl,0f940h		;4cb9
	call L_45EF		;4cbc
	ld a,(0c125h)		;4cbf
	ld hl,0b0b7h		;4cc2
	call L_4255		;4cc5
	ld a,(hl)			;4cc8
	ld de,05630h		;4cc9
	call L_42FF		;4ccc
	push de			;4ccf
	pop ix		;4cd0
L_4CD2:
	ld a,(ix+000h)		;4cd2
	call L_4CEC		;4cd5
	ld a,(ix+000h)		;4cd8
	and 00fh		;4cdb
	dec a			;4cdd
	jp m,L_42BC		;4cde
	call L_425F		;4ce1

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


L_4CEC:
	and 0f0h		;4cec
	jp z,L_42BC		;4cee
	cp 010h		;4cf1
	jp z,L_42C2		;4cf3
	cp 020h		;4cf6
	jp z,L_42DE		;4cf8
	cp 030h		;4cfb
	jp z,L_42E4		;4cfd
	jp L_42EA		;4d00
L_4D03:
	ld l,(ix+001h)		;4d03
	ld h,000h		;4d06
	add hl,hl			;4d08
	add hl,hl			;4d09
	add hl,hl			;4d0a
	ld de,0f800h		;4d0b
	add hl,de			;4d0e
	ld e,(ix+002h)		;4d0f
	ld d,(ix+003h)		;4d12
	call L_45EF		;4d15
L_4D18:
	ld de,00004h		;4d18
	add ix,de		;4d1b
	jr $-75		;4d1d
L_4D1F:
	call L_4D43		;4d1f
	call L_4D79		;4d22
	call L_4D52		;4d25
	jr L_4D18		;4d28
L_4D2A:
	call L_4D43		;4d2a
	call L_4DA9		;4d2d
	call L_4D52		;4d30
	jr L_4D18		;4d33
L_4D35:
	call L_4D43		;4d35
	call L_4D79		;4d38
	call L_4DA9		;4d3b
	call L_4D52		;4d3e
	jr L_4D18		;4d41
L_4D43:
	call L_4D62		;4d43
	ld l,(ix+002h)		;4d46
	call L_4D6F		;4d49
	ld de,0e800h		;4d4c
	jp L_4558		;4d4f
L_4D52:
	call L_4D62		;4d52
	ld l,(ix+001h)		;4d55
	call L_4D6F		;4d58
	ex de,hl			;4d5b
	ld hl,0e800h		;4d5c
	jp L_4573		;4d5f
L_4D62:
	ld l,(ix+003h)		;4d62
	ld h,000h		;4d65
	add hl,hl			;4d67
	add hl,hl			;4d68
	add hl,hl			;4d69
	add hl,hl			;4d6a
	add hl,hl			;4d6b
	ld c,l			;4d6c
	ld b,h			;4d6d
	ret			;4d6e
L_4D6F:
	ld h,000h		;4d6f
	add hl,hl			;4d71
	add hl,hl			;4d72
	add hl,hl			;4d73
	ld de,0f800h		;4d74
	add hl,de			;4d77
	ret			;4d78
L_4D79:
	ld c,(ix+003h)		;4d79
	ld iy,0e800h		;4d7c
L_4D80:
	ld b,010h		;4d80
L_4D82:
	push bc			;4d82
	ld de,00000h		;4d83
	ld h,(iy+000h)		;4d86
	ld l,(iy+010h)		;4d89
	ld b,010h		;4d8c
L_4D8E:
	add hl,hl			;4d8e
	rr d		;4d8f
	rr e		;4d91
	djnz L_4D8E		;4d93
	ld (iy+000h),d		;4d95
	ld (iy+010h),e		;4d98
	inc iy		;4d9b
	pop bc			;4d9d
	djnz L_4D82		;4d9e
	ld de,00010h		;4da0
	add iy,de		;4da3
	dec c			;4da5
	jr nz,L_4D80		;4da6
	ret			;4da8
L_4DA9:
	ld b,(ix+003h)		;4da9
	ld hl,0e800h		;4dac
	ld de,0e80fh		;4daf
L_4DB2:
	push bc			;4db2
	call L_4DBD		;4db3
	call L_4DBD		;4db6
	pop bc			;4db9
	djnz L_4DB2		;4dba
	ret			;4dbc
L_4DBD:
	ld b,008h		;4dbd
L_4DBF:
	ld c,(hl)			;4dbf
	ld a,(de)			;4dc0
	ld (hl),a			;4dc1
	ld a,c			;4dc2
	ld (de),a			;4dc3
	inc hl			;4dc4
	dec de			;4dc5
	djnz L_4DBF		;4dc6
	ld a,008h		;4dc8
	call L_4255		;4dca
	ld a,018h		;4dcd
	jp L_425A		;4dcf
L_4DD2:
	call L_42DE		;4dd2
	ld hl,06128h		;4dd5
	call L_46CF		;4dd8
	ld a,(0c148h)		;4ddb
	ld de,06059h		;4dde
	call L_42FF		;4de1
	ex de,hl			;4de4
	call L_46CF		;4de5
	ld a,(0c125h)		;4de8
	ld hl,06141h		;4deb
	call L_4255		;4dee
	ld a,(hl)			;4df1
	ld de,061cfh		;4df2
	call L_42FF		;4df5
	ex de,hl			;4df8
	call L_46CF		;4df9
	jp L_42BC		;4dfc
L_4DFF:
	call L_4E18		;4dff
	ld a,(0f0f6h)		;4e02
	push af			;4e05
	ld a,006h		;4e06
	call L_5D9C		;4e08
	call 0bb57h		;4e0b
	pop af			;4e0e
	ld (0f0f6h),a		;4e0f
	call L_42BC		;4e12
	jp L_4FAB		;4e15
L_4E18:
	xor a			;4e18
	ld (0e800h),a		;4e19
L_4E1C:
	xor a			;4e1c
	ld (0e801h),a		;4e1d
L_4E20:
	xor a			;4e20
	ld (0e802h),a		;4e21
L_4E24:
	call L_4F0B		;4e24
	call L_42DE		;4e27
	call L_4F46		;4e2a
	call L_4F7E		;4e2d
	ld hl,0e802h		;4e30
	inc (hl)			;4e33
	ld a,(hl)			;4e34
	cp 010h		;4e35
	jr nz,L_4E24		;4e37
	dec hl			;4e39
	inc (hl)			;4e3a
	ld a,(hl)			;4e3b
	cp 005h		;4e3c
	jr nz,L_4E20		;4e3e
	dec hl			;4e40
	inc (hl)			;4e41
	ld a,(hl)			;4e42
	cp 005h		;4e43
	jr nz,L_4E1C		;4e45
	call L_42BC		;4e47
	call L_4EE7		;4e4a
	ld a,(0c125h)		;4e4d
	cp 015h		;4e50
	jr z,L_4E76		;4e52
	cp 028h		;4e54
	jr z,L_4E76		;4e56
	cp 089h		;4e58
	jr z,L_4EA9		;4e5a
	cp 060h		;4e5c
	ret nz			;4e5e
	ld de,03820h		;4e5f
	call L_4EAC		;4e62
	ld de,02848h		;4e65
	call L_4E6E		;4e68
	ld de,07848h		;4e6b
L_4E6E:
	ld hl,0b9f6h		;4e6e
	ld bc,00305h		;4e71
	jr L_4EB2		;4e74
L_4E76:
	ld de,03820h		;4e76
	jr L_4EAC		;4e79
L_4E7B:
	ld hl,0ba15h		;4e7b
	ld de,06440h		;4e7e
	ld bc,00705h		;4e81
	jr L_4EB2		;4e84
L_4E86:
	ld hl,0ba38h		;4e86
	ld de,07047h		;4e89
	ld bc,00504h		;4e8c
	jr L_4EB2		;4e8f
L_4E91:
	ld hl,0ba4ch		;4e91
	ld bc,00704h		;4e94
	jr L_4EB2		;4e97
L_4E99:
	ld hl,0ba68h		;4e99
	ld de,0a860h		;4e9c
	ld bc,00404h		;4e9f
	jr L_4EB2		;4ea2
L_4EA4:
	ld hl,0ba05h		;4ea4
	jr L_4EB2		;4ea7
L_4EA9:
	ld de,03828h		;4ea9
L_4EAC:
	ld hl,0b9a5h		;4eac
	ld bc,00909h		;4eaf
L_4EB2:
	call L_42EA		;4eb2
L_4EB5:
	push de			;4eb5
	exx			;4eb6
	pop hl			;4eb7
	call L_431F		;4eb8
	exx			;4ebb
L_4EBC:
	push bc			;4ebc
	push de			;4ebd
	exx			;4ebe
	push hl			;4ebf
	exx			;4ec0
L_4EC1:
	ld a,(hl)			;4ec1
	exx			;4ec2
	and a			;4ec3
	jr z,L_4EC7		;4ec4
	ld (hl),a			;4ec6
L_4EC7:
	inc hl			;4ec7
	exx			;4ec8
	inc hl			;4ec9
	call L_498D		;4eca
	ld a,d			;4ecd
	add a,008h		;4ece
	ld d,a			;4ed0
	djnz L_4EC1		;4ed1
	exx			;4ed3
	pop hl			;4ed4
	ld a,020h		;4ed5
	call L_4255		;4ed7
	exx			;4eda
	pop de			;4edb
	ld a,e			;4edc
	add a,008h		;4edd
	ld e,a			;4edf
	pop bc			;4ee0
	dec c			;4ee1
	jr nz,L_4EBC		;4ee2
	jp L_42BC		;4ee4
L_4EE7:
	ld hl,0e021h		;4ee7
	ld de,00808h		;4eea
	ld c,014h		;4eed
L_4EEF:
	ld b,014h		;4eef
L_4EF1:
	ld a,(hl)			;4ef1
	inc hl			;4ef2
	call L_497B		;4ef3
	ld a,d			;4ef6
	add a,008h		;4ef7
	ld d,a			;4ef9
	djnz L_4EF1		;4efa
	ld a,00ch		;4efc
	call L_4255		;4efe
	ld d,008h		;4f01
	ld a,e			;4f03
	add a,008h		;4f04
	ld e,a			;4f06
	dec c			;4f07
	jr nz,L_4EEF		;4f08
	ret			;4f0a
L_4F0B:
	call L_42C2		;4f0b
	ld a,(0c131h)		;4f0e
	sub 001h		;4f11
	jr nc,L_4F1B		;4f13
	call L_42E4		;4f15
	ld a,(0c125h)		;4f18
L_4F1B:
	ld l,a			;4f1b
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
	ld a,(0c131h)		;4f28
	ld de,06000h		;4f2b
	and a			;4f2e
	jr z,L_4F34		;4f2f
	ld de,07e76h		;4f31
L_4F34:
	add hl,de			;4f34
	ld a,(0e800h)		;4f35
	ld c,a			;4f38
	add a,a			;4f39
	add a,a			;4f3a
	add a,c			;4f3b
	ld c,a			;4f3c
	ld a,(0e801h)		;4f3d
	add a,c			;4f40
	call L_4255		;4f41
	ld a,(hl)			;4f44
	ret			;4f45
L_4F46:
	push af			;4f46
	ld a,(0c148h)		;4f47
	ld de,04f64h		;4f4a
	call L_42FF		;4f4d
	pop af			;4f50
	ld l,a			;4f51
	ld h,000h		;4f52
	add hl,hl			;4f54
	add hl,hl			;4f55
	add hl,hl			;4f56
	add hl,hl			;4f57
	add hl,de			;4f58
	ld a,(0e802h)		;4f59
	call L_4255		;4f5c
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


L_4F7E:
	ld de,0e021h		;4f7e
	ld a,(0e800h)		;4f81
	ld h,a			;4f84
	ld l,000h		;4f85
	srl h		;4f87
	rr l		;4f89
	add hl,de			;4f8b
	ld a,(0e801h)		;4f8c
	add a,a			;4f8f
	add a,a			;4f90
	call L_4255		;4f91
	ld a,(0e802h)		;4f94
	ld b,a			;4f97
	and 003h		;4f98
	ld c,a			;4f9a
	ld a,b			;4f9b
	and 00ch		;4f9c
	add a,a			;4f9e
	add a,a			;4f9f
	add a,a			;4fa0
	add a,c			;4fa1
	ld c,a			;4fa2
	call L_4255		;4fa3
	ld a,(0e803h)		;4fa6
	ld (hl),a			;4fa9
	ret			;4faa
L_4FAB:
	ld a,(0c125h)		;4fab
	cp 05eh		;4fae
	ret nz			;4fb0
	ld hl,0c810h		;4fb1
	ld a,(hl)			;4fb4
	and a			;4fb5
	ret z			;4fb6
	inc l			;4fb7
	ld e,(hl)			;4fb8
	inc l			;4fb9
	ld d,(hl)			;4fba
	ld hl,04fc4h		;4fbb
	ld bc,00403h		;4fbe
	jp L_4EB2		;4fc1

; ----------------------------------------------------------------------
; DATOS sin identificar  0x4fc4..0x4fd0  (12 bytes)
DATA_4FC4:
	defb 0e2h,0e3h,0e3h,0e4h,0e5h,0e6h,0e6h,0e7h,0e8h,0e9h,0e9h,0eah	; 4fc4  ............

; ======================================================================
; CODIGO 0x4fd0..0x5064  (148 bytes)
; ======================================================================


L_4FD0:
	call L_5029		;4fd0
	call L_4FDE		;4fd3
	ld a,(0c600h)		;4fd6
	and a			;4fd9
	ret z			;4fda
	jp L_50B8		;4fdb
L_4FDE:
	ld de,0e400h		;4fde
	ld hl,0c309h		;4fe1
	call L_4FE8		;4fe4
	inc hl			;4fe7
L_4FE8:
	ld a,(hl)			;4fe8
	ld b,010h		;4fe9
L_4FEB:
	ld (de),a			;4feb
	inc e			;4fec
	djnz L_4FEB		;4fed
	ret			;4fef
L_4FF0:
	call L_42EA		;4ff0
	ld hl,0f800h		;4ff3
	call L_45AD		;4ff6
	ld a,(0c160h)		;4ff9
	ld de,07d9bh		;4ffc
	and a			;4fff
	jr z,L_5005		;5000
	ld de,07dbdh		;5002
L_5005:
	ld a,(0c310h)		;5005
L_5008:
	call L_42FF		;5008
	ex de,hl			;500b
L_500C:
	ld a,(00007h)		;500c
	ld c,a			;500f
L_5010:
	ld a,(hl)			;5010
	and 07fh		;5011
	jp z,L_42BC		;5013
	cp (hl)			;5016
	jr z,L_501F		;5017
	ld b,a			;5019
	inc hl			;501a
	otir		;501b
	jr L_5010		;501d
L_501F:
	ld b,a			;501f
	inc hl			;5020
	ld a,(hl)			;5021
	inc hl			;5022
L_5023:
	out (c),a		;5023
	djnz L_5023		;5025
	jr L_5010		;5027
L_5029:
	ld hl,0e600h		;5029
	ld a,(0c303h)		;502c
	sub 008h		;502f
	ld c,a			;5031
	ld a,(0c305h)		;5032
	sub 008h		;5035
	ld (hl),c			;5037
	inc l			;5038
	ld (hl),a			;5039
	inc l			;503a
	ld (hl),000h		;503b
	inc l			;503d
	inc l			;503e
	ld (hl),c			;503f
	inc l			;5040
	ld (hl),a			;5041
	inc l			;5042
	ld (hl),004h		;5043
	ret			;5045
L_5046:
	call L_42EA		;5046
	ld a,(0c140h)		;5049
	dec a			;504c
	jp m,L_42BC		;504d
	cp 00bh		;5050
	jr c,L_5056		;5052
	ld a,007h		;5054
L_5056:
	push af			;5056
	ld hl,0f840h		;5057
	call L_45AD		;505a
	pop af			;505d
	ld de,05064h		;505e
	jp L_5008		;5061

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


L_507A:
	ld a,(0c600h)		;507a
	and a			;507d
	ret z			;507e
	ld hl,050cah		;507f
	ld de,0e608h		;5082
	ld b,008h		;5085
	ld c,008h		;5087
L_5089:
	ld a,(0c603h)		;5089
	cp 0e1h		;508c
	jr z,L_5091		;508e
	add a,(hl)			;5090
L_5091:
	ld (de),a			;5091
	inc hl			;5092
	inc de			;5093
	ld a,(0c605h)		;5094
	add a,(hl)			;5097
	ld (de),a			;5098
	inc hl			;5099
	inc de			;509a
	ld a,c			;509b
	ld (de),a			;509c
	add a,004h		;509d
	ld c,a			;509f
	inc de			;50a0
	inc de			;50a1
	djnz L_5089		;50a2
	ld hl,0c607h		;50a4
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
L_50B8:
	ld hl,0f840h		;50b8
	call L_45AD		;50bb
	call L_42EA		;50be
	ld a,(0c606h)		;50c1
	ld de,050dah		;50c4
	jp L_5008		;50c7

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
	ld hl,0f840h		;50ea
	call L_45AD		;50ed
	call L_42EA		;50f0
	ld hl,08804h		;50f3
	jp L_500C		;50f6
L_50F9:
	ld a,(ix+020h)		;50f9
	or a			;50fc
	ret z			;50fd
	call L_42C2		;50fe
	ld a,(ix+000h)		;5101
	cp 0f0h		;5104
	jr nc,L_5151		;5106
	ld a,(ix+00bh)		;5108
	ld de,09cc3h		;510b
	call L_42FF		;510e
	push ix		;5111
	pop hl			;5113
	set 5,l		;5114
	ld b,(hl)			;5116
	inc l			;5117
	inc l			;5118
	ld a,(ix+010h)		;5119
	and a			;511c
	jr z,L_5123		;511d
	inc l			;511f
	inc l			;5120
	jr L_514C		;5121
L_5123:
	ld a,(de)			;5123
	ld c,a			;5124
	inc de			;5125
	sub 080h		;5126
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
	ld a,c			;513c
	add a,(ix+003h)		;513d
	ld (hl),a			;5140
	inc l			;5141
	ld a,(de)			;5142
	add a,(ix+005h)		;5143
	ld (hl),a			;5146
	inc de			;5147
	inc l			;5148
	ld a,(de)			;5149
	ld (hl),a			;514a
	inc de			;514b
L_514C:
	inc l			;514c
	inc l			;514d
	inc l			;514e
	djnz L_5123		;514f
L_5151:
	jp L_42BC		;5151
L_5154:
	exx			;5154
	ld hl,0519ah		;5155
	jr L_517C		;5158
L_515A:
	exx			;515a
	ld hl,0519eh		;515b
	jr L_517C		;515e
L_5160:
	exx			;5160
	ld hl,051a6h		;5161
	jr L_517C		;5164
L_5166:
	exx			;5166
	ld hl,051aeh		;5167
	jr L_517C		;516a
L_516C:
	exx			;516c
	ld hl,051beh		;516d
	jr L_517C		;5170
L_5172:
	exx			;5172
	ld hl,051c2h		;5173
	jr L_517C		;5176
L_5178:
	exx			;5178
	ld hl,051dah		;5179
L_517C:
	exx			;517c
L_517D:
	exx			;517d
	ld a,(hl)			;517e
	inc hl			;517f
	add a,(ix+003h)		;5180
	exx			;5183
	ld (hl),a			;5184
	inc l			;5185
	exx			;5186
	ld a,(hl)			;5187
	inc hl			;5188
	add a,(ix+005h)		;5189
	exx			;518c
	ld (hl),a			;518d
	inc l			;518e
	ld a,(de)			;518f
	ld (hl),a			;5190
	inc de			;5191
	inc l			;5192
	inc l			;5193
	inc l			;5194
	djnz L_517D		;5195
	jp L_42BC		;5197

; ----------------------------------------------------------------------
; DATOS sin identificar  0x519a..0x51ea  (80 bytes)
DATA_519A:
	defb 0f8h,0f8h,0f8h,0f8h,0f8h,0f8h,0f8h,0f8h,0f8h,008h,0f8h,008h,0f1h,0f9h,0f1h,0f9h	; 519a  ................
	defb 001h,0f9h,001h,0f9h,0f0h,0f0h,0f0h,0f0h,0f0h,000h,0f0h,000h,000h,0f0h,000h,0f0h	; 51aa  ................
	defb 000h,000h,000h,000h,0f8h,0f9h,0f8h,0f9h,0efh,0f0h,0efh,0f0h,0efh,000h,0efh,000h	; 51ba  ................
	defb 0ffh,0f0h,0ffh,0f0h,0ffh,000h,0ffh,000h,00fh,0f0h,00fh,0f0h,00fh,000h,00fh,000h	; 51ca  ................
	defb 0f8h,0f0h,0f8h,0f0h,0f8h,000h,0f8h,000h,0e0h,000h,0e0h,000h,010h,000h,010h,000h	; 51da  ................

; ======================================================================
; CODIGO 0x51ea..0x54ec  (770 bytes)
; ======================================================================


L_51EA:
	ld hl,0d000h		;51ea
	ld b,00dh		;51ed
L_51EF:
	push bc			;51ef
	push hl			;51f0
	ld a,(hl)			;51f1
	and a			;51f2
	call nz,L_51FF		;51f3
	pop hl			;51f6
	pop bc			;51f7
	ld de,00080h		;51f8
	add hl,de			;51fb
	djnz L_51EF		;51fc
	ret			;51fe
L_51FF:
	set 5,l		;51ff
	ld b,(hl)			;5201
	ld a,b			;5202
	and a			;5203
	ret z			;5204
	inc l			;5205
L_5206:
	push bc			;5206
	ld a,(hl)			;5207
	ld b,a			;5208
	inc l			;5209
	ld a,(0c132h)		;520a
	and a			;520d
	ld de,0e618h		;520e
	jr z,L_5216		;5211
	ld de,0e628h		;5213
L_5216:
	ld a,b			;5216
	add a,a			;5217
	add a,a			;5218
	add a,e			;5219
	ld e,a			;521a
	ld c,0ffh		;521b
	ldi		;521d
	ldi		;521f
	ldi		;5221
	ld a,(hl)			;5223
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
	ex de,hl			;5230
	ld a,(0c132h)		;5231
	and a			;5234
	ld hl,07230h		;5235
	jr z,L_523D		;5238
	ld hl,07250h		;523a
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
	ld a,(hl)			;5247
	ld b,010h		;5248
L_524A:
	ld (de),a			;524a
	inc e			;524b
	djnz L_524A		;524c
	pop bc			;524e
	inc l			;524f
	djnz L_5206		;5250
	ret			;5252
L_5253:
	ld a,(0df94h)		;5253
	and a			;5256
	ret z			;5257
	call L_42EA		;5258
	ld hl,066aah		;525b
	ld a,(0df94h)		;525e
	dec a			;5261
	call L_4255		;5262
	ld c,(hl)			;5265
	ld a,(0df94h)		;5266
	dec a			;5269
	ld l,a			;526a
	ld h,000h		;526b
	add hl,hl			;526d
	ld de,07d4bh		;526e
	add hl,de			;5271
	ld e,(hl)			;5272
	inc hl			;5273
	ld d,(hl)			;5274
	ld hl,0ff00h		;5275
	bit 0,c		;5278
	jr nz,L_528B		;527a
	call L_45AD		;527c
	ld a,(00007h)		;527f
	ld c,a			;5282
	ex de,hl			;5283
	ld b,000h		;5284
	otir		;5286
	jp L_42BC		;5288
L_528B:
	call L_45EF		;528b
	jp L_42BC		;528e
L_5291:
	ld hl,000ech		;5291
	ld d,h			;5294
	ld e,l			;5295
	ld bc,00001h		;5296
	ld a,004h		;5299
	call L_47D7		;529b
	ld hl,000e8h		;529e
	ld d,h			;52a1
	ld e,l			;52a2
	ld bc,00004h		;52a3
	ld a,004h		;52a6
	jp L_47D7		;52a8
L_52AB:
	ld hl,0c10fh		;52ab
	ld a,(hl)			;52ae
	add a,068h		;52af
	and 078h		;52b1
	ld (hl),a			;52b3
	ld e,000h		;52b4
	ld a,(00007h)		;52b6
	ld c,a			;52b9
	call L_52DE		;52ba
	ld hl,07600h		;52bd
	call L_45AD		;52c0
L_52C3:
	ld a,(0c10fh)		;52c3
	ld d,010h		;52c6
	ld h,0e6h		;52c8
L_52CA:
	and a			;52ca
	jr nz,L_52D1		;52cb
	bit 0,e		;52cd
	jr nz,L_52D6		;52cf
L_52D1:
	ld b,008h		;52d1
	ld l,a			;52d3
	otir		;52d4
L_52D6:
	add a,048h		;52d6
	and 078h		;52d8
	dec d			;52da
	jr nz,L_52CA		;52db
	ret			;52dd
L_52DE:
	ld hl,07400h		;52de
	call L_45AD		;52e1
L_52E4:
	ld a,(0c10fh)		;52e4
	ld d,010h		;52e7
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
L_52FF:
	ld hl,0c10fh		;52ff
	ld a,(hl)			;5302
	add a,068h		;5303
	and 078h		;5305
	ld (hl),a			;5307
	ld hl,0e600h		;5308
	ld de,07600h		;530b
	ld bc,00008h		;530e
	call L_4573		;5311
	ld a,(00007h)		;5314
	ld c,a			;5317
	ld e,001h		;5318
	call L_52C3		;531a
	ld hl,0e400h		;531d
	ld de,07400h		;5320
	ld bc,00020h		;5323
	call L_4573		;5326
	ld a,(00007h)		;5329
	ld c,a			;532c
	ld e,001h		;532d
	jr L_52E4		;532f
L_5331:
	ld hl,0e400h		;5331
	ld de,07400h		;5334
	ld bc,00280h		;5337
	jp L_4573		;533a
L_533D:
	call L_4612		;533d
	call L_42C2		;5340
	call 0bf86h		;5343
	call L_42BC		;5346
	call L_543D		;5349
	ld hl,05890h		;534c
	ld (0c321h),hl		;534f
	xor a			;5352
	ld (0c13ch),a		;5353
	ld a,008h		;5356
	ld (0c153h),a		;5358
	ld hl,05050h		;535b
	ld (0c801h),hl		;535e
	ld hl,00200h		;5361
	ld (0c135h),hl		;5364
	ld hl,00030h		;5367
	ld (0c129h),hl		;536a
	ld hl,00101h		;536d
	ld (0c370h),hl		;5370
	ld a,001h		;5373
	ld (0c373h),a		;5375
	ld hl,0c580h		;5378
	ld b,024h		;537b
L_537D:
	ld (hl),001h		;537d
	inc hl			;537f
	djnz L_537D		;5380
	ld a,(0c11eh)		;5382
	and a			;5385
	jr z,L_539E		;5386
	ld (0c12eh),a		;5388
	jr L_539E		;538b
L_538D:
	call L_543D		;538d
	xor a			;5390
	ld (0c163h),a		;5391
	ld (0c325h),a		;5394
	ld (0c147h),a		;5397
	inc a			;539a
	ld (0c13bh),a		;539b
L_539E:
	call L_545F		;539e
	call 06433h		;53a1
	call 0641dh		;53a4
	call L_4651		;53a7
	call L_5432		;53aa
	xor a			;53ad
	ld (0c300h),a		;53ae
	ld (0c200h),a		;53b1
	ld (0c201h),a		;53b4
	ld (0c206h),a		;53b7
	ld (0c208h),a		;53ba
	ld (0c500h),a		;53bd
	ld (0c520h),a		;53c0
	ld (0c540h),a		;53c3
	ld (0c151h),a		;53c6
	ld (0c15eh),a		;53c9
	ld (0c165h),a		;53cc
	ld (0c168h),a		;53cf
	ld hl,0e600h		;53d2
	ld de,0e601h		;53d5
	ld (hl),0e0h		;53d8
	ld bc,00080h		;53da
	ldir		;53dd
	ld hl,0c400h		;53df
	ld bc,0003fh		;53e2
	call L_5457		;53e5
	ld hl,0d000h		;53e8
	ld bc,0067fh		;53eb
	call L_5457		;53ee
	call 07046h		;53f1
	ld a,006h		;53f4
	call L_5D9C		;53f6
	call 0bec5h		;53f9
	call L_5D9A		;53fc
	call 0bde2h		;53ff
	call L_42BC		;5402
	call L_49D8		;5405
	call L_4BD0		;5408
	call L_4DD2		;540b
	call L_4CB3		;540e
	call L_4B15		;5411
	call 08323h		;5414
	call L_42BC		;5417
	call L_462D		;541a
	call 07dd7h		;541d
	call L_4DFF		;5420
	call 0813eh		;5423
	call L_5888		;5426
	call 06192h		;5429
	call L_4620		;542c
	jp 062c3h		;542f
L_5432:
	ld hl,07600h		;5432
	ld bc,00080h		;5435
	ld a,0e0h		;5438
	jp L_4586		;543a
L_543D:
	xor a			;543d
	ld (0c133h),a		;543e
	dec a			;5441
	ld (0c148h),a		;5442
	call L_462D		;5445
	call L_5FFA		;5448
	call L_42DE		;544b
	call sube_iconos_y_hoja_comun		;544e
	call L_42BC		;5451
	jp 063a7h		;5454
L_5457:
	ld e,l			;5457
	ld d,h			;5458
	inc de			;5459
	ld (hl),000h		;545a
	ldir		;545c
	ret			;545e
L_545F:
	ld hl,0c171h		;545f
	ld a,(hl)			;5462
	and a			;5463
	ret z			;5464
	ld c,a			;5465
	ld (hl),000h		;5466
	ld hl,0c500h		;5468
	call L_5477		;546b
	ld hl,0c520h		;546e
	call L_5477		;5471
	ld hl,0c540h		;5474
L_5477:
	ld a,(hl)			;5477
	cp c			;5478
	ret nz			;5479
	ld a,008h		;547a
	add a,l			;547c
	ld l,a			;547d
	ld a,(hl)			;547e
	ld de,0c580h		;547f
	call L_425A		;5482
	xor a			;5485
	ld (de),a			;5486
	ret			;5487
L_5488:
	push hl			;5488
	ld hl,0c102h		;5489
	bit 6,(hl)		;548c
	pop hl			;548e
	ret z			;548f
L_5490:
	di			;5490
	push hl			;5491
	push de			;5492
	push bc			;5493
	ld hl,(0f0f1h)		;5494
	push hl			;5497
	push af			;5498
	ld a,004h		;5499
	ld (06000h),a		;549b
	ld (0f0f1h),a		;549e
	inc a			;54a1
	ld (0f0f2h),a		;54a2
	ld (08000h),a		;54a5
	pop af			;54a8
	call 06032h		;54a9
	pop hl			;54ac
	ld (0f0f1h),hl		;54ad
	ld a,l			;54b0
	ld (06000h),a		;54b1
	ld a,h			;54b4
	ld (08000h),a		;54b5
	pop bc			;54b8
	pop de			;54b9
	pop hl			;54ba
	ei			;54bb
	ret			;54bc
L_54BD:
	ld a,(0c08bh)		;54bd
	or a			;54c0
	jr nz,L_54CB		;54c1
	ld a,(0c08dh)		;54c3
	or a			;54c6
	ld a,(0c08fh)		;54c7
	ret			;54ca
L_54CB:
	ld a,(0c090h)		;54cb
	or a			;54ce
	jr z,L_54DA		;54cf
	ld a,(0c08ch)		;54d1
	cp 0fbh		;54d4
	ld a,(0c08fh)		;54d6
	ret			;54d9
L_54DA:
	ld a,(0c08ch)		;54da
	cp 0fah		;54dd
	ld a,(0c08fh)		;54df
	ret			;54e2
L_54E3:
	call L_42C2		;54e3
	call 06000h		;54e6
	jp L_42BC		;54e9

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
; DATOS sin identificar  0x56f3..0x5704  (17 bytes)
DATA_56F3:
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
; DATOS sin identificar  0x580c..0x5811  (5 bytes)
DATA_580C:
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


L_5888:
	xor a			;5888
	ld (0df94h),a		;5889
	ld (0dff4h),a		;588c
	ld (0dff5h),a		;588f
	ld de,0dfb1h		;5892
	ld hl,0dfb0h		;5895
	ld (hl),a			;5898
	ld bc,0000fh		;5899
	ldir		;589c
	ld l,c			;589e
	ld h,b			;589f
	inc hl			;58a0
	ld (0dfa0h),hl		;58a1
	call L_4308		;58a4
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
	ld a,(0c13bh)		;58c2
	and a			;58c5
	jp nz,L_5992		;58c6
	ld a,(0c13ch)		;58c9
	ld c,a			;58cc
	ld a,(0c125h)		;58cd
	ld (0c13ch),a		;58d0
	ld b,a			;58d3
	cp 062h		;58d4
	jr c,L_58DD		;58d6
	cp 089h		;58d8
	jp c,L_5992		;58da
L_58DD:
	ld a,c			;58dd
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
	ld hl,0df00h		;58fb
	ld de,0df01h		;58fe
	ld bc,0008fh		;5901
	ld (hl),000h		;5904
	ldir		;5906
	jp L_5992		;5908
L_590B:
	ld a,(0c130h)		;590b
	or a			;590e
	jr z,L_593A		;590f
	dec a			;5911
	jr z,L_594A		;5912
	dec a			;5914
	jr z,L_597D		;5915
	ld de,0df2fh		;5917
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
	ld hl,0df00h		;5935
	jr L_596B		;5938
L_593A:
	ld de,0df8fh		;593a
	ld hl,0df5fh		;593d
	ld bc,00060h		;5940
	lddr		;5943
	ld hl,0df00h		;5945
	jr L_598B		;5948
L_594A:
	ld de,0df00h		;594a
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
	ld hl,0df20h		;5968
L_596B:
	ld c,003h		;596b
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
	ld de,0df00h		;597d
	ld hl,0df30h		;5980
	ld bc,00060h		;5983
	ldir		;5986
	ld hl,0df60h		;5988
L_598B:
	ld b,030h		;598b
	xor a			;598d
L_598E:
	ld (hl),a			;598e
	inc hl			;598f
	djnz L_598E		;5990
L_5992:
	xor a			;5992
	ld (0c13bh),a		;5993
	ld a,(0c125h)		;5996
	cp 08ah		;5999
	ret nc			;599b
	call L_42EA		;599c
	ld de,06000h		;599f
	ld a,(0c125h)		;59a2
	call L_42FF		;59a5
	ex de,hl			;59a8
	ld a,(hl)			;59a9
	or a			;59aa
	jp z,L_42BC		;59ab
	inc hl			;59ae
	ld b,000h		;59af
	ld de,0df40h		;59b1
L_59B4:
	call L_42EA		;59b4
	push af			;59b7
	ld a,(0c125h)		;59b8
	cp 062h		;59bb
	jr c,L_59C4		;59bd
	cp 089h		;59bf
	jp c,L_59D1		;59c1
L_59C4:
	ld a,(de)			;59c4
	inc de			;59c5
	or a			;59c6
	jr z,L_59D1		;59c7
	call L_42BC		;59c9
	inc hl			;59cc
	inc hl			;59cd
	jp L_5A22		;59ce
L_59D1:
	push de			;59d1
	push bc			;59d2
	ld c,(hl)			;59d3
	ld a,(0c131h)		;59d4
	and a			;59d7
	jr nz,L_59E6		;59d8
	bit 7,c		;59da
	jr z,L_59EE		;59dc
L_59DE:
	inc hl			;59de
	inc hl			;59df
	call L_42BC		;59e0
	jp L_5A20		;59e3
L_59E6:
	ld a,c			;59e6
	bit 7,a		;59e7
	jr z,L_59DE		;59e9
	and 07fh		;59eb
	ld c,a			;59ed
L_59EE:
	inc hl			;59ee
	ld e,(hl)			;59ef
	inc hl			;59f0
	ld d,(hl)			;59f1
	call L_42BC		;59f2
	ld a,c			;59f5
	cp 015h		;59f6
	jr nz,L_5A0A		;59f8
	ld a,(0c130h)		;59fa
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
	push hl			;5a0a
	call L_44E6		;5a0b
	jr nc,L_5A1C		;5a0e
	ld a,l			;5a10
	ld hl,0de00h		;5a11
	call L_4255		;5a14
	inc hl			;5a17
	ld a,(hl)			;5a18
	and a			;5a19
	jr z,L_5A1F		;5a1a
L_5A1C:
	call L_5A69		;5a1c
L_5A1F:
	pop hl			;5a1f
L_5A20:
	pop bc			;5a20
	pop de			;5a21
L_5A22:
	inc b			;5a22
	inc hl			;5a23
	pop af			;5a24
	dec a			;5a25
	ret z			;5a26
	jp L_59B4		;5a27
L_5A2A:
	ld a,(0c125h)		;5a2a
	cp 003h		;5a2d
	jp z,0abfbh		;5a2f
	cp 006h		;5a32
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
L_5A69:
	ld (0e800h),bc		;5a69
	ld (0e802h),de		;5a6d
	ld hl,0d000h		;5a71
	ld b,00dh		;5a74
	xor a			;5a76
	ld de,00080h		;5a77
L_5A7A:
	cp (hl)			;5a7a
	jr z,L_5A82		;5a7b
	add hl,de			;5a7d
	djnz L_5A7A		;5a7e
	xor a			;5a80
	ret			;5a81
L_5A82:
	ld (0e804h),hl		;5a82
	push hl			;5a85
	pop ix		;5a86
	call L_42EA		;5a88
	ld a,(0e800h)		;5a8b
	ld hl,0a16dh		;5a8e
	call L_4255		;5a91
	ld a,(hl)			;5a94
	ld (ix+020h),a		;5a95
	ld c,a			;5a98
	call L_42BC		;5a99
	or a			;5a9c
	jr z,L_5AC8		;5a9d
	ld de,00000h		;5a9f
	ld a,(0c132h)		;5aa2
	and a			;5aa5
	ld hl,0e618h		;5aa6
	ld b,01ah		;5aa9
	jr z,L_5AB2		;5aab
	ld hl,0e628h		;5aad
	ld b,016h		;5ab0
L_5AB2:
	ld a,(hl)			;5ab2
	cp 0e0h		;5ab3
	jr nz,L_5ABF		;5ab5
	inc (hl)			;5ab7
	call L_5BC6		;5ab8
	inc e			;5abb
	dec c			;5abc
	jr z,L_5AC8		;5abd
L_5ABF:
	inc d			;5abf
	inc l			;5ac0
	inc l			;5ac1
	inc l			;5ac2
	inc l			;5ac3
	djnz L_5AB2		;5ac4
	xor a			;5ac6
	ret			;5ac7
L_5AC8:
	xor a			;5ac8
	ld hl,(0e804h)		;5ac9
	ld bc,(0e800h)		;5acc
	ld (hl),c			;5ad0
	inc l			;5ad1
	ld (hl),a			;5ad2
	ld de,(0e802h)		;5ad3
	inc l			;5ad7
	ld (hl),a			;5ad8
	inc l			;5ad9
	ld (hl),e			;5ada
	inc l			;5adb
	ld (hl),a			;5adc
	inc l			;5add
	ld (hl),d			;5ade
	inc l			;5adf
	ld (hl),a			;5ae0
	ld (ix+00ch),a		;5ae1
	ld (ix+00eh),003h		;5ae4
	ld (ix+00fh),b		;5ae8
	ld (ix+010h),a		;5aeb
	ld (ix+011h),a		;5aee
	ld (ix+01ch),0ffh		;5af1
	ld (ix+01dh),a		;5af5
	ld (ix+01eh),a		;5af8
	ld (ix+01fh),a		;5afb
	call L_42EA		;5afe
	ld de,0a1b0h		;5b01
	call L_5BA7		;5b04
	ld a,(0e800h)		;5b07
	ld de,0a265h		;5b0a
	call L_425A		;5b0d
	ld a,(de)			;5b10
	ld (ix+00dh),a		;5b11
	call L_42BC		;5b14
	ld a,(ix+000h)		;5b17
	dec a			;5b1a
	call L_425F		;5b1b

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
L_5BA7:
	ld a,(ix+020h)		;5ba7
	and a			;5baa
	ret z			;5bab
	ld a,(ix+000h)		;5bac
	call L_42FF		;5baf
	ld hl,(0e804h)		;5bb2
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
L_5BC6:
	push hl			;5bc6
	ld hl,(0e804h)		;5bc7
	ld a,e			;5bca
	add a,a			;5bcb
	add a,a			;5bcc
	add a,e			;5bcd
	add a,021h		;5bce
	call L_4255		;5bd0
	ld (hl),d			;5bd3
	pop hl			;5bd4
	ret			;5bd5
L_5BD6:
	ld a,(ix+00ch)		;5bd6
	rra			;5bd9
	ret nc			;5bda
	call L_42DE		;5bdb
	dec (ix+014h)		;5bde
	ld a,(ix+014h)		;5be1
	inc a			;5be4
	jr nz,L_5BEC		;5be5
	ld a,03fh		;5be7
	ld (ix+014h),a		;5be9
L_5BEC:
	add a,a			;5bec
	ld hl,0b145h		;5bed
	call L_4255		;5bf0
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
	jp L_42BC		;5c02
L_5C05:
	ld hl,0c200h		;5c05
	ld a,(hl)			;5c08
	rra			;5c09
	jp nc,L_5CBC		;5c0a
	ld a,(0c201h)		;5c0d
	cp 002h		;5c10
	call nz,L_5291		;5c12
	ld hl,0c209h		;5c15
	inc (hl)			;5c18
	call 064d9h		;5c19
	ld a,(0c102h)		;5c1c
	and 040h		;5c1f
	jr z,L_5C33		;5c21
	di			;5c23
	ld a,006h		;5c24
	call L_5D9C		;5c26
	ld a,(0c139h)		;5c29
	inc a			;5c2c
	call nz,0a649h		;5c2d
	call L_42BC		;5c30
L_5C33:
	ld a,(0c201h)		;5c33
	call L_425F		;5c36

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
	call L_4FF0		;5c49
	call L_5253		;5c4c
	ld a,(0c133h)		;5c4f
	and a			;5c52
	jr nz,L_5C64		;5c53
	ld a,(0c112h)		;5c55
	and 001h		;5c58
	jr z,L_5C64		;5c5a
	ld (0c11bh),a		;5c5c
	ld a,0fdh		;5c5f
	jp L_5488		;5c61
L_5C64:
	ld hl,0c16dh		;5c64
	ld a,(hl)			;5c67
	and a			;5c68
	jr z,L_5C7C		;5c69
	ld de,04201h		;5c6b
	ld (0c309h),de		;5c6e
	dec (hl)			;5c72
	jp z,06428h		;5c73
	call L_4FD0		;5c76
	jp L_52AB		;5c79
L_5C7C:
	ld hl,0c162h		;5c7c
	ld a,(hl)			;5c7f
	and a			;5c80
	jr z,L_5C87		;5c81
	dec (hl)			;5c83
	call z,06428h		;5c84
L_5C87:
	call 06578h		;5c87
	ld a,(0c560h)		;5c8a
	and a			;5c8d
	jp nz,L_5D7D		;5c8e
	ld hl,0c147h		;5c91
	ld a,(hl)			;5c94
	and a			;5c95
	jr z,L_5C99		;5c96
	dec (hl)			;5c98
L_5C99:
	call 06b87h		;5c99
	call 0829ah		;5c9c
	call L_5D9A		;5c9f
	call 0be68h		;5ca2
	call L_42BC		;5ca5
	ld a,(0c300h)		;5ca8
	cp 006h		;5cab
	jp z,L_5D4E		;5cad
	call 07607h		;5cb0
	call 06821h		;5cb3
	call 078fch		;5cb6
	jp L_5D4E		;5cb9
L_5CBC:
	call 06476h		;5cbc
	call 07a5ah		;5cbf
	ld a,009h		;5cc2
	call L_5D9C		;5cc4
	call 0bcc7h		;5cc7
	call L_5D9A		;5cca
	call 0bf9bh		;5ccd
	ld a,006h		;5cd0
	call L_5D9C		;5cd2
	call 0be62h		;5cd5
	call 0bd64h		;5cd8
	call 0bd49h		;5cdb
	call L_42BC		;5cde
	ld a,(0c133h)		;5ce1
	and a			;5ce4
	jr nz,L_5D17		;5ce5
	call L_5D9A		;5ce7
	ld a,(0c201h)		;5cea
	and a			;5ced
	call z,07e1dh		;5cee
	call L_42BC		;5cf1
	ld a,006h		;5cf4
	call L_5D9C		;5cf6
	ld a,(0c201h)		;5cf9
	and a			;5cfc
	call z,0bd9dh		;5cfd
	call L_42BC		;5d00
	ld a,(0c201h)		;5d03
	and a			;5d06
	call z,06043h		;5d07
	call L_5D9A		;5d0a
	ld a,(0c201h)		;5d0d
	and a			;5d10
	call z,0b9d0h		;5d11
	call L_42BC		;5d14
L_5D17:
	call L_4FD0		;5d17
	call L_5D9A		;5d1a
	call 0bf37h		;5d1d
	call L_42BC		;5d20
	call 0792fh		;5d23
	call 077f5h		;5d26
	call 06853h		;5d29
	call L_51EA		;5d2c
	ld a,(0c125h)		;5d2f
	cp 07eh		;5d32
	jr z,L_5D46		;5d34
	cp 07fh		;5d36
	jr z,L_5D46		;5d38
	cp 082h		;5d3a
	jr z,L_5D46		;5d3c
	cp 083h		;5d3e
	jr z,L_5D46		;5d40
	cp 084h		;5d42
	jr nz,L_5D4B		;5d44
L_5D46:
	call L_52FF		;5d46
	jr L_5D4E		;5d49
L_5D4B:
	call L_52AB		;5d4b
L_5D4E:
	ld hl,0c200h		;5d4e
	inc (hl)			;5d51
	ret			;5d52
L_5D53:
	ld a,(0c167h)		;5d53
	dec a			;5d56
	jr z,L_5D68		;5d57
	ld hl,0c682h		;5d59
	dec (hl)			;5d5c
	ret nz			;5d5d
	ld a,0ffh		;5d5e
	call L_5488		;5d60
	ld hl,0c167h		;5d63
	inc (hl)			;5d66
	ret			;5d67
L_5D68:
	call L_54BD		;5d68
	ret nz			;5d6b
	ld a,001h		;5d6c
	ld (0c124h),a		;5d6e
	ret			;5d71
L_5D72:
	ld a,00fh		;5d72
	call L_5D9C		;5d74
	call 0be98h		;5d77
	jp L_42BC		;5d7a
L_5D7D:
	ld a,00fh		;5d7d
	call L_5D9C		;5d7f
	call 0bd3ah		;5d82
	jp L_42BC		;5d85
L_5D88:
	call L_5D9A		;5d88
	call 07fe9h		;5d8b
	jp L_42BC		;5d8e
L_5D91:
	call L_5D9A		;5d91
	call 0b9e7h		;5d94
	jp L_42BC		;5d97
L_5D9A:
	ld a,00ch		;5d9a
L_5D9C:
	di			;5d9c
	ld (0f0f3h),a		;5d9d
	ld (0a000h),a		;5da0
	ld (0f0f6h),a		;5da3
	ei			;5da6
	ret			;5da7
L_5DA8:
	call L_5EB1		;5da8
	call L_5F01		;5dab
	ld a,(ix+000h)		;5dae
	ld (ix+01fh),a		;5db1
	xor a			;5db4
	ld (ix+006h),a		;5db5
	ld (ix+00eh),a		;5db8
	call L_42EA		;5dbb
	ld a,(ix+000h)		;5dbe
	ld c,a			;5dc1
	dec a			;5dc2
	ld hl,0a3cah		;5dc3
	call L_4255		;5dc6
	ld a,(hl)			;5dc9
	ld (ix+000h),a		;5dca
	ld (ix+00eh),000h		;5dcd
	call L_42BC		;5dd1
	ld a,(0c125h)		;5dd4
	cp 062h		;5dd7
	jr c,L_5DE0		;5dd9
	cp 089h		;5ddb
	jp c,L_5DF1		;5ddd
L_5DE0:
	ld hl,0df40h		;5de0
	ld a,(ix+00fh)		;5de3
	inc a			;5de6
	jr z,L_5DF1		;5de7
	ld e,(ix+00fh)		;5de9
	ld d,000h		;5dec
	add hl,de			;5dee
	ld (hl),001h		;5def
L_5DF1:
	call L_44E6		;5df1
	jr nc,L_5E00		;5df4
	ld a,l			;5df6
	ld hl,0de00h		;5df7
	call L_4255		;5dfa
	inc hl			;5dfd
	ld (hl),000h		;5dfe
L_5E00:
	ld (ix+00ch),000h		;5e00
	ld a,(ix+000h)		;5e04
	cp 0f6h		;5e07
	ld a,020h		;5e09
	jr c,L_5E1C		;5e0b
	ld a,(ix+01fh)		;5e0d
	cp 041h		;5e10
	ld a,020h		;5e12
	jr z,L_5E1C		;5e14
	xor a			;5e16
	ld (0c151h),a		;5e17
	ld a,08ch		;5e1a
L_5E1C:
	call L_5488		;5e1c
	ld a,(ix+011h)		;5e1f
	and a			;5e22
	ret z			;5e23
	call L_437F		;5e24
	ld a,(ix+01fh)		;5e27
	cp 042h		;5e2a
	ret nz			;5e2c
	ld a,090h		;5e2d
	ld bc,00606h		;5e2f
	call L_43B8		;5e32
	ld hl,0c1c0h		;5e35
	ld (0e0ceh),hl		;5e38
	ld hl,0c3c2h		;5e3b
	ld (0e0eeh),hl		;5e3e
	ret			;5e41
L_5E42:
	push ix		;5e42
	dec (ix+07dh)		;5e44
	call z,0b9e6h		;5e47
	pop ix		;5e4a
	jp 0694bh		;5e4c
L_5E4F:
	inc (ix+00ch)		;5e4f
	ld a,(ix+00ch)		;5e52
	cp 018h		;5e55
	jp z,0694fh		;5e57
	cp 019h		;5e5a
	jp z,L_5E42		;5e5c
	and 007h		;5e5f
	cp 001h		;5e61
	ret nz			;5e63
	ld a,(ix+000h)		;5e64
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
	call L_42EA		;5e79
	ld a,(ix+000h)		;5e7c
	inc (ix+000h)		;5e7f
	sub 0f0h		;5e82
	ld de,0a2aah		;5e84
	call L_42FF		;5e87
	ex de,hl			;5e8a
	push ix		;5e8b
	pop de			;5e8d
	ld a,022h		;5e8e
	call L_425A		;5e90
L_5E93:
	ld c,(ix+003h)		;5e93
	ld a,(hl)			;5e96
	add a,c			;5e97
	ld (de),a			;5e98
	inc de			;5e99
	inc hl			;5e9a
	ld c,(ix+005h)		;5e9b
	ld a,(hl)			;5e9e
	add a,c			;5e9f
	ld (de),a			;5ea0
	inc de			;5ea1
	inc hl			;5ea2
	ld a,(hl)			;5ea3
	ld (de),a			;5ea4
	inc de			;5ea5
	inc hl			;5ea6
	ld a,(hl)			;5ea7
	ld (de),a			;5ea8
	inc de			;5ea9
	inc de			;5eaa
	inc hl			;5eab
	djnz L_5E93		;5eac
	jp L_42BC		;5eae
L_5EB1:
	ld a,(ix+000h)		;5eb1
	cp 012h		;5eb4
	jr c,L_5EFC		;5eb6
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
	jr nz,L_5EFC		;5ece
L_5ED0:
	ld hl,0dfb7h		;5ed0
	dec (hl)			;5ed3
L_5ED4:
	ld b,00dh		;5ed4
	ld c,080h		;5ed6
	ld de,0d000h		;5ed8
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
	jr nz,L_5EF1		;5eec
	call L_5EFC		;5eee
L_5EF1:
	ld a,c			;5ef1
	call L_4255		;5ef2
	ld a,c			;5ef5
	call L_425A		;5ef6
	djnz L_5EDE		;5ef9
	ret			;5efb
L_5EFC:
	ld (ix+07dh),001h		;5efc
	ret			;5f00
L_5F01:
	ld c,028h		;5f01
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
	ld a,(0dfc4h)		;5f22
	dec a			;5f25
	jr nz,L_5F31		;5f26
	ld a,(0c125h)		;5f28
	cp 031h		;5f2b
	ld c,02bh		;5f2d
	jr z,L_5F3C		;5f2f
L_5F31:
	ld c,028h		;5f31
	cp 01eh		;5f33
	ret nz			;5f35
	ld a,(0c125h)		;5f36
	cp 01ah		;5f39
	ret nz			;5f3b
L_5F3C:
	jp 0784ah		;5f3c
L_5F3F:
	call L_462D		;5f3f
	call L_469C		;5f42
	ld hl,05fa7h		;5f45
	call L_46CF		;5f48
	ld b,00fh		;5f4b
	ld c,007h		;5f4d
	call 00047h		;5f4f   ; BIOS WRTVDP - Writes data in the VDP-register
	ld hl,02840h		;5f52
	ld bc,0a848h		;5f55
	xor a			;5f58
	ld d,001h		;5f59
	call L_479B		;5f5b
	di			;5f5e
	ld a,008h		;5f5f
	ld (08000h),a		;5f61
	ld (0f0f2h),a		;5f64
	ei			;5f67
	ld hl,09c3bh		;5f68
	ld de,00800h		;5f6b
	ld bc,00d01h		;5f6e
	call L_4867		;5f71
	ld hl,09ca3h		;5f74
	ld de,07000h		;5f77
	ld bc,00d02h		;5f7a
	call L_4867		;5f7d
	ld hl,09d0bh		;5f80
	ld de,0d800h		;5f83
	ld bc,01a03h		;5f86
	call L_4867		;5f89
	ld de,04040h		;5f8c
	ld hl,09bfah		;5f8f
	call L_5FDA		;5f92
	call L_42BC		;5f95
	call L_4620		;5f98
	ld hl,0c200h		;5f9b
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
	ld hl,0c200h		;5fb7
	dec (hl)			;5fba
	ld a,(hl)			;5fbb
	and 001h		;5fbc
	ret nz			;5fbe
	inc hl			;5fbf
	dec (hl)			;5fc0
	jr nz,L_5FC9		;5fc1
	ld a,001h		;5fc3
	ld (0c202h),a		;5fc5
	ret			;5fc8
L_5FC9:
	ld a,031h		;5fc9
	sub (hl)			;5fcb
	ld c,a			;5fcc
	ld b,0a8h		;5fcd
	ld hl,02840h		;5fcf
	ld de,02840h		;5fd2
	ld a,001h		;5fd5
	jp L_47D7		;5fd7
L_5FDA:
	push de			;5fda
L_5FDB:
	ld a,(hl)			;5fdb
	inc hl			;5fdc
	ld c,a			;5fdd
	inc a			;5fde
	jr z,L_5FF8		;5fdf
	inc a			;5fe1
	jr nz,L_5FEF		;5fe2
	pop de			;5fe4
	ld a,(hl)			;5fe5
	inc hl			;5fe6
	add a,d			;5fe7
	ld d,a			;5fe8
	ld a,008h		;5fe9
	add a,e			;5feb
	ld e,a			;5fec
	jr L_5FDA		;5fed
L_5FEF:
	ld a,c			;5fef
	call L_499F		;5ff0
	call L_49CE		;5ff3
	jr L_5FDB		;5ff6
L_5FF8:
	pop de			;5ff8
	ret			;5ff9
L_5FFA:
	ld a,001h		;5ffa
	ld (0faf6h),a		;5ffc
	di			;5fff
