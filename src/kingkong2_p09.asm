; ==========================================================================
; KING KONG 2: YOMIGAERU DENSETSU - Konami (1986) - MSX - MegaROM RC-745 de 128 KB (Konami4) - banco 09 (se ejecuta en 0xa000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x0a000


; ----------------------------------------------------------------------
; DATOS dibujos_9F5B_cola: 30 dibujos de 8x8 a 4 bits para la hoja de la
;   pagina 1 (desde el dibujo 96); los sube p00:48A6 por la lista 0x5506
;   (sigue del banco anterior, 0x9F5B); lo leen p00:48A6 (795 bytes)
;   0xa000..0xa31b  (795 bytes)
DATA_dibujos_9F5B_cola:
	defb 01bh,0b1h,0bbh,011h	; a000
	defb 011h,0bbh,0bbh,01dh	; a004
	defb 0ddh,011h,0bbh,0b1h	; a008
	defb 0bbh,0ddh,0bbh,01dh	; a00c
	defb 0dbh,0bbh,0bbh,01dh	; a010
	defb 011h,0bbh,0bbh,01dh	; a014
	defb 0dbh,0bbh,0bbh,0bbh	; a018
	defb 0bbh,0bdh,01dh,0bbh	; a01c
	defb 0bbh,0bdh,0d1h,0bbh	; a020
	defb 0bbh,0b1h,011h,0bbh	; a024
	defb 0bbh,0bbh,0d1h,0bbh	; a028
	defb 0d1h,01bh,0d1h,0bbh	; a02c
	defb 0bdh,0d1h,01bh,0bbh	; a030
	defb 0bbh,01dh,0d1h,0bbh	; a034
	defb 0bbh,0dbh,0d1h,0bbh	; a038
	defb 0bbh,0bbh,0b1h,0bbh	; a03c
	defb 01bh,0b1h,01bh,0bbh	; a040
	defb 0bbh,011h,011h,0bbh	; a044
	defb 011h,0ddh,0d1h,0bbh	; a048
	defb 0ddh,0bbh,01bh,0bbh	; a04c
	defb 0bbh,0bdh,0d1h,0bbh	; a050
	defb 0bbh,011h,0d1h,0bbh	; a054
	defb 0bbh,0bdh,0d1h,011h	; a058
	defb 01bh,011h,0b1h,0ddh	; a05c
	defb 0d1h,0d1h,01bh,0d1h	; a060
	defb 0dbh,0d1h,01bh,0b1h	; a064
	defb 0bbh,0d1h,0bbh,0bbh	; a068
	defb 0bdh,01bh,0bbh,0bbh	; a06c
	defb 0bdh,01bh,01bh,0bbh	; a070
	defb 0bbh,0bbh,0bbh,0bbh	; a074
	defb 0bbh,0bbh,0bbh,011h	; a078
	defb 0b1h,011h,01dh,0ddh	; a07c
	defb 01dh,0d1h,0d1h,0bdh	; a080
	defb 01bh,0b1h,0ddh,0d1h	; a084
	defb 0d1h,0bbh,0bbh,0bbh	; a088
	defb 0d1h,0bbh,0bbh,0bbh	; a08c
	defb 0bdh,0bbh,0bbh,0bbh	; a090
	defb 0bbh,0bbh,0bbh,0bbh	; a094
	defb 0bbh,0bbh,0bbh,0bbh	; a098
	defb 0bbh,0bbh,0bbh,0bbh	; a09c
	defb 0bbh,0bbh,0bbh,0bbh	; a0a0
	defb 0bdh,01bh,01bh,0bbh	; a0a4
	defb 0bdh,01bh,0bbh,0b1h	; a0a8
	defb 0bbh,0d1h,0bbh,0d1h	; a0ac
	defb 0dbh,0d1h,01bh,0ddh	; a0b0
	defb 0d1h,0d1h,01bh,011h	; a0b4
	defb 01bh,011h,0b1h,0bbh	; a0b8
	defb 0bbh,0bbh,0bbh,0bbh	; a0bc
	defb 0bbh,0bbh,0bbh,0bbh	; a0c0
	defb 0bdh,0bbh,0bbh,0bbh	; a0c4
	defb 0d1h,0bbh,0bbh,0d1h	; a0c8
	defb 0d1h,0bbh,0bbh,0bdh	; a0cc
	defb 01bh,0b1h,0ddh,0ddh	; a0d0
	defb 01dh,0d1h,0d1h,011h	; a0d4
	defb 0b1h,011h,01dh,0bbh	; a0d8
	defb 0bbh,0bbh,0bbh,0bbh	; a0dc
	defb 0dbh,0bbh,0bbh,0bbh	; a0e0
	defb 01dh,0dbh,0bbh,0bbh	; a0e4
	defb 0b1h,01dh,0d1h,0bbh	; a0e8
	defb 0bbh,011h,011h,0bbh	; a0ec
	defb 0bbh,01bh,01bh,0bbh	; a0f0
	defb 0bbh,0b1h,01bh,0bbh	; a0f4
	defb 0bbh,011h,011h,0bbh	; a0f8
	defb 0bbh,011h,011h,0bbh	; a0fc
	defb 0bbh,0b1h,01bh,0bbh	; a100
	defb 0bbh,01bh,01bh,0bbh	; a104
	defb 0bbh,011h,011h,0bbh	; a108
	defb 0b1h,01dh,0d1h,0bbh	; a10c
	defb 01dh,0dbh,0bbh,0bbh	; a110
	defb 0dbh,0bbh,0bbh,0bbh	; a114
	defb 0bbh,0bbh,0bbh,0bbh	; a118
	defb 0bbh,0bbh,0bbh,0bbh	; a11c
	defb 0bbh,0bdh,0bbh,0bbh	; a120
	defb 0bdh,0d1h,0bbh,01dh	; a124
	defb 0d1h,01bh,0bbh,011h	; a128
	defb 011h,0bbh,0bbh,0b1h	; a12c
	defb 0b1h,0bbh,0bbh,0b1h	; a130
	defb 01bh,0bbh,0bbh,011h	; a134
	defb 011h,0bbh,0bbh,011h	; a138
	defb 011h,0bbh,0bbh,0b1h	; a13c
	defb 01bh,0bbh,0bbh,0b1h	; a140
	defb 0b1h,0bbh,0bbh,011h	; a144
	defb 011h,0bbh,0bbh,01dh	; a148
	defb 0d1h,01bh,0bbh,0bbh	; a14c
	defb 0bdh,0d1h,0bbh,0bbh	; a150
	defb 0bbh,0bdh,0bbh,0bbh	; a154
	defb 0bbh,0bbh,0bbh,0bbh	; a158
	defb 0bbh,0bbh,0bbh,0bbh	; a15c
	defb 0bbh,01bh,0bbh,0bbh	; a160
	defb 0b1h,0bbh,01bh,0b1h	; a164
	defb 01bh,0bbh,0b1h,0bbh	; a168
	defb 0bbh,0bbh,01bh,0bbh	; a16c
	defb 0bbh,011h,0bbh,0bbh	; a170
	defb 0bbh,0bdh,0bbh,0dbh	; a174
	defb 0b1h,0bbh,0b1h,0bbh	; a178
	defb 01bh,0bbh,0bbh,011h	; a17c
	defb 0bbh,0bbh,0bbh,0bbh	; a180
	defb 0bbh,0bbh,0bbh,01bh	; a184
	defb 0bbh,0bbh,01bh,0bbh	; a188
	defb 0b1h,01bh,0bbh,0bbh	; a18c
	defb 0bbh,0bbh,0bbh,0b1h	; a190
	defb 0bdh,0dbh,0bbh,01bh	; a194
	defb 0bbh,011h,0bbh,0b1h	; a198
	defb 01bh,0bbh,0ddh,0b1h	; a19c
	defb 0b1h,0bbh,0bbh,0b1h	; a1a0
	defb 01bh,011h,0bbh,0bbh	; a1a4
	defb 0b1h,01bh,011h,0bbh	; a1a8
	defb 0b1h,0bbh,0bdh,0b1h	; a1ac
	defb 0bbh,0bbh,01dh,0b1h	; a1b0
	defb 01bh,0b1h,0bbh,01bh	; a1b4
	defb 0bbh,0bbh,0b1h,0bbh	; a1b8
	defb 01bh,01bh,0bdh,0bbh	; a1bc
	defb 0bbh,0bbh,0ddh,0bbh	; a1c0
	defb 011h,01bh,0b1h,0b1h	; a1c4
	defb 0bbh,011h,0bbh,0bbh	; a1c8
	defb 0bbh,0bbh,0bbh,0bbh	; a1cc
	defb 0b1h,01bh,0bdh,01bh	; a1d0
	defb 011h,0b1h,0bdh,0bbh	; a1d4
	defb 0bbh,01bh,0bbh,0b1h	; a1d8
	defb 01bh,0bbh,011h,011h	; a1dc
	defb 0b1h,0bbh,0bbh,011h	; a1e0
	defb 01bh,011h,0bbh,0bbh	; a1e4
	defb 0b1h,01bh,01bh,0bbh	; a1e8
	defb 0b1h,0bbh,0b1h,0b1h	; a1ec
	defb 0bbh,0bbh,011h,0b1h	; a1f0
	defb 01bh,0b1h,0bbh,01bh	; a1f4
	defb 0bbh,0bbh,0bbh,011h	; a1f8
	defb 0eeh,01eh,0eeh,01eh	; a1fc
	defb 0eah,0eeh,0aeh,0eah	; a200
	defb 0aah,0aah,0aah,0eah	; a204
	defb 0aeh,0aah,0eah,0aah	; a208
	defb 0aah,0aah,0aah,0fah	; a20c
	defb 0fah,0aah,0fah,0afh	; a210
	defb 0afh,0ffh,0afh,0ffh	; a214
	defb 0afh,0afh,0ffh,011h	; a218
	defb 011h,011h,011h,0e1h	; a21c
	defb 0e1h,011h,0eeh,0aah	; a220
	defb 0eeh,0eeh,0aeh,0eah	; a224
	defb 0aah,0eah,0eah,0aah	; a228
	defb 0aah,0aah,0aah,0ffh	; a22c
	defb 0aah,0aah,0ffh,0fah	; a230
	defb 0fah,0afh,0aah,0ffh	; a234
	defb 0ffh,0ffh,0afh,0eah	; a238
	defb 0fah,0fah,0ffh,0aah	; a23c
	defb 0ffh,0ffh,0ffh,0afh	; a240
	defb 0aah,0ffh,0afh,0afh	; a244
	defb 0ffh,0ffh,0ffh,0fah	; a248
	defb 0ffh,0afh,0ffh,0eah	; a24c
	defb 0ffh,0ffh,0ffh,0aah	; a250
	defb 0afh,0ffh,0afh,0aah	; a254
	defb 0ffh,0ffh,0ffh,0ffh	; a258
	defb 0fah,0fah,0ffh,0afh	; a25c
	defb 0ffh,0ffh,0ffh,0ffh	; a260
	defb 0aah,0ffh,0afh,0ffh	; a264
	defb 0ffh,0ffh,0ffh,0ffh	; a268
	defb 0ffh,0afh,0ffh,0fah	; a26c
	defb 0ffh,0ffh,0ffh,0ffh	; a270
	defb 0ffh,0ffh,0afh,0ffh	; a274
	defb 0ffh,0ffh,0ffh,0ffh	; a278
	defb 0fah,0fah,0feh,0afh	; a27c
	defb 0ffh,0ffh,0fah,0ffh	; a280
	defb 0aah,0ffh,0aah,0ffh	; a284
	defb 0ffh,0ffh,0feh,0ffh	; a288
	defb 0ffh,0afh,0aeh,0fah	; a28c
	defb 0ffh,0ffh,0aah,0ffh	; a290
	defb 0ffh,0ffh,0aah,0ffh	; a294
	defb 0ffh,0ffh,0feh,0b1h	; a298
	defb 0b1h,0bbh,011h,01bh	; a29c
	defb 0b1h,0b1h,01bh,01bh	; a2a0
	defb 01bh,011h,01dh,0b1h	; a2a4
	defb 011h,0d1h,01bh,011h	; a2a8
	defb 01bh,0b1h,0ddh,01bh	; a2ac
	defb 0bbh,01dh,0bbh,01bh	; a2b0
	defb 011h,0bbh,011h,0b1h	; a2b4
	defb 01bh,0bbh,01bh,0b1h	; a2b8
	defb 0bbh,011h,0d1h,01bh	; a2bc
	defb 0b1h,011h,01bh,011h	; a2c0
	defb 01bh,0bdh,0dbh,0b1h	; a2c4
	defb 0bbh,01bh,0b1h,0b1h	; a2c8
	defb 011h,01bh,011h,011h	; a2cc
	defb 01dh,0b1h,01dh,011h	; a2d0
	defb 0bbh,011h,0dbh,01bh	; a2d4
	defb 0b1h,0bdh,0b1h,0b1h	; a2d8
	defb 0bdh,0bdh,0b1h,011h	; a2dc
	defb 0bdh,011h,011h,0bbh	; a2e0
	defb 0d1h,011h,01bh,0bbh	; a2e4
	defb 01bh,0d1h,0bbh,0b1h	; a2e8
	defb 01bh,01bh,011h,011h	; a2ec
	defb 011h,011h,01bh,011h	; a2f0
	defb 0b1h,011h,0b1h,0b1h	; a2f4
	defb 011h,0b1h,01bh,011h	; a2f8
	defb 0bbh,01bh,011h,0bbh	; a2fc
	defb 01bh,011h,011h,011h	; a300
	defb 011h,01bh,01bh,0bdh	; a304
	defb 0b1h,011h,01bh,0d1h	; a308
	defb 011h,0b1h,0bdh,0bbh	; a30c
	defb 011h,0b1h,0bbh,0d1h	; a310
	defb 01bh,011h,0dbh,01bh	; a314
	defb 01bh,011h,0d1h	; a318

; ----------------------------------------------------------------------
; DATOS dibujos_A31B: 9 dibujos de 8x8 a 4 bits para la hoja de la pagina 1
;   (desde el dibujo 42); los sube p00:48A6 por la lista 0x5506; lo leen
;   p00:48A6 (288 bytes)
;   0xa31b..0xa43b  (288 bytes)
DATA_dibujos_A31B:
	defb 0bdh,011h,011h,011h	; a31b
	defb 0d1h,0bbh,01bh,0b1h	; a31f
	defb 0d1h,0bdh,0bbh,0ddh	; a323
	defb 01bh,0b1h,011h,0bbh	; a327
	defb 011h,011h,011h,011h	; a32b
	defb 01dh,0ddh,0ddh,0ddh	; a32f
	defb 01bh,0bbh,0bbh,0bbh	; a333
	defb 011h,011h,011h,011h	; a337
	defb 011h,011h,011h,011h	; a33b
	defb 01bh,0bbh,0b1h,0bbh	; a33f
	defb 0bbh,0bdh,0bbh,0bdh	; a343
	defb 01bh,01bh,0b1h,0b1h	; a347
	defb 011h,011h,011h,011h	; a34b
	defb 0ddh,0ddh,0ddh,0ddh	; a34f
	defb 0bbh,0bbh,0bbh,0bbh	; a353
	defb 011h,011h,011h,011h	; a357
	defb 011h,011h,011h,0dbh	; a35b
	defb 0bbh,0bbh,0bbh,01bh	; a35f
	defb 01bh,0dbh,0dbh,0b1h	; a363
	defb 01bh,01bh,011h,011h	; a367
	defb 011h,011h,011h,011h	; a36b
	defb 0ddh,0ddh,0ddh,0d1h	; a36f
	defb 0bbh,0bbh,0bbh,0d1h	; a373
	defb 011h,011h,011h,011h	; a377
	defb 01bh,0b1h,0bbh,0bbh	; a37b
	defb 01bh,0bbh,0bdh,0bbh	; a37f
	defb 01bh,0dbh,0ddh,0dbh	; a383
	defb 01dh,0ddh,0ddh,0ddh	; a387
	defb 01dh,0ddh,0bdh,03dh	; a38b
	defb 01dh,03dh,0d3h,03dh	; a38f
	defb 01bh,0ddh,0ddh,0dbh	; a393
	defb 011h,0bdh,0bbh,0b1h	; a397
	defb 0b1h,0bbh,01bh,0bbh	; a39b
	defb 0b1h,0bbh,0bbh,0bdh	; a39f
	defb 0bdh,0bdh,0bdh,0bdh	; a3a3
	defb 0ddh,0bdh,0ddh,0bdh	; a3a7
	defb 0ddh,0ddh,0ddh,0ddh	; a3ab
	defb 0d3h,03dh,0bdh,033h	; a3af
	defb 0ddh,0ddh,0ddh,0ddh	; a3b3
	defb 0bdh,0dbh,0bdh,0bbh	; a3b7
	defb 0bbh,0bbh,0bbh,0b1h	; a3bb
	defb 0bbh,0dbh,0bdh,0b1h	; a3bf
	defb 0bdh,0dbh,0ddh,0b1h	; a3c3
	defb 0ddh,0ddh,0ddh,0d1h	; a3c7
	defb 0ddh,03dh,03dh,0d1h	; a3cb
	defb 0ddh,03dh,0ddh,0b1h	; a3cf
	defb 0ddh,0ddh,0dbh,011h	; a3d3
	defb 0bdh,0bdh,0bbh,011h	; a3d7
	defb 011h,011h,011h,011h	; a3db
	defb 0bbh,01bh,0bbh,0b1h	; a3df
	defb 0bdh,0bdh,0dbh,0d1h	; a3e3
	defb 01bh,0bbh,0b1h,0b1h	; a3e7
	defb 011h,0b1h,011h,011h	; a3eb
	defb 0d1h,011h,0ddh,0ddh	; a3ef
	defb 011h,01bh,0bbh,0bbh	; a3f3
	defb 011h,011h,011h,011h	; a3f7
	defb 01bh,0b1h,0bbh,0b1h	; a3fb
	defb 01bh,0bbh,0bdh,011h	; a3ff
	defb 01bh,0dbh,0ddh,011h	; a403
	defb 01dh,0d1h,011h,011h	; a407
	defb 011h,011h,011h,011h	; a40b
	defb 01dh,03dh,011h,011h	; a40f
	defb 01bh,0ddh,0ddh,011h	; a413
	defb 011h,0bdh,011h,011h	; a417
	defb 011h,0bbh,01bh,0b1h	; a41b
	defb 011h,0bbh,0bbh,0bdh	; a41f
	defb 011h,0b1h,0bdh,0bdh	; a423
	defb 011h,011h,011h,0b1h	; a427
	defb 01dh,01dh,011h,01dh	; a42b
	defb 013h,01dh,0bdh,033h	; a42f
	defb 0ddh,0ddh,0ddh,0ddh	; a433
	defb 0bdh,0dbh,0bdh,0bbh	; a437

; ----------------------------------------------------------------------
; DATOS dibujos_A43B: 13 dibujos de 8x8 a 4 bits para la hoja de la pagina 1
;   (desde el dibujo 131); los sube p00:48A6 por la lista 0x5506; lo leen
;   p00:48A6 (416 bytes)
;   0xa43b..0xa5db  (416 bytes)
DATA_dibujos_A43B:
	defb 0b1h,0bbh,0b1h,0b1h	; a43b
	defb 0d1h,011h,01bh,0b1h	; a43f
	defb 0d1h,0b1h,011h,011h	; a443
	defb 0b1h,01bh,012h,0b1h	; a447
	defb 0bbh,01bh,012h,0b1h	; a44b
	defb 0bdh,01bh,012h,0b1h	; a44f
	defb 0bdh,01bh,012h,0b1h	; a453
	defb 0dbh,012h,0b1h,011h	; a457
	defb 0bbh,0bbh,0bbh,0dbh	; a45b
	defb 0bbh,01bh,01bh,0b1h	; a45f
	defb 011h,011h,011h,011h	; a463
	defb 02bh,011h,011h,011h	; a467
	defb 0bbh,011h,011h,011h	; a46b
	defb 011h,011h,011h,011h	; a46f
	defb 02bh,011h,011h,011h	; a473
	defb 02bh,011h,011h,011h	; a477
	defb 0bbh,0bbh,0bbh,011h	; a47b
	defb 0b1h,0b1h,01bh,0b1h	; a47f
	defb 011h,011h,011h,011h	; a483
	defb 011h,011h,011h,011h	; a487
	defb 011h,011h,011h,011h	; a48b
	defb 011h,011h,011h,011h	; a48f
	defb 011h,011h,011h,011h	; a493
	defb 011h,011h,011h,011h	; a497
	defb 0bbh,0bbh,0b1h,011h	; a49b
	defb 011h,0b1h,011h,011h	; a49f
	defb 0b1h,011h,0b2h,01bh	; a4a3
	defb 012h,0b1h,0b2h,01bh	; a4a7
	defb 012h,0b1h,0b2h,01bh	; a4ab
	defb 012h,0b1h,0bbh,01bh	; a4af
	defb 01bh,0b1h,011h,01bh	; a4b3
	defb 011h,011h,0b1h,0bbh	; a4b7
	defb 011h,012h,0b1h,0b1h	; a4bb
	defb 0bbh,012h,0b1h,0b1h	; a4bf
	defb 0bbh,012h,0b1h,0b1h	; a4c3
	defb 0bdh,01bh,0b1h,0b1h	; a4c7
	defb 0b1h,011h,01bh,0b1h	; a4cb
	defb 0bbh,01bh,012h,0b1h	; a4cf
	defb 0d1h,01bh,01bh,0b1h	; a4d3
	defb 01bh,0b1h,011h,011h	; a4d7
	defb 02bh,011h,011h,011h	; a4db
	defb 02bh,011h,011h,011h	; a4df
	defb 02bh,011h,011h,011h	; a4e3
	defb 0bbh,011h,011h,011h	; a4e7
	defb 011h,011h,011h,011h	; a4eb
	defb 02bh,011h,011h,011h	; a4ef
	defb 02bh,011h,011h,011h	; a4f3
	defb 011h,011h,011h,011h	; a4f7
	defb 02bh,01bh,0b1h,01bh	; a4fb
	defb 02bh,012h,0b1h,0b1h	; a4ff
	defb 02bh,012h,0b1h,0bbh	; a503
	defb 02bh,01bh,0b1h,0b1h	; a507
	defb 02bh,011h,011h,01bh	; a50b
	defb 02bh,012h,0b1h,0bbh	; a50f
	defb 02bh,012h,0b1h,0bbh	; a513
	defb 011h,011h,01bh,011h	; a517
	defb 011h,0bbh,0b1h,0b1h	; a51b
	defb 01bh,011h,01bh,0b1h	; a51f
	defb 012h,0b1h,011h,011h	; a523
	defb 012h,0b1h,02bh,0b1h	; a527
	defb 012h,0bbh,012h,0bbh	; a52b
	defb 011h,0bbh,012h,0bbh	; a52f
	defb 0b1h,02bh,012h,0bbh	; a533
	defb 0d1h,02bh,0b1h,02bh	; a537
	defb 0bbh,0bbh,0bbh,0dbh	; a53b
	defb 0bbh,01bh,01bh,0b1h	; a53f
	defb 011h,0b1h,0b1h,011h	; a543
	defb 02bh,0bbh,01bh,0b1h	; a547
	defb 01bh,0b1h,0bbh,0b1h	; a54b
	defb 01bh,012h,0bbh,011h	; a54f
	defb 011h,012h,0bbh,011h	; a553
	defb 0b1h,012h,0bbh,011h	; a557
	defb 011h,02bh,0b1h,02bh	; a55b
	defb 0b1h,02bh,0b1h,02bh	; a55f
	defb 0b1h,02bh,0b1h,012h	; a563
	defb 0b1h,012h,0b1h,012h	; a567
	defb 0b1h,012h,0b1h,012h	; a56b
	defb 0bbh,012h,0b1h,0b1h	; a56f
	defb 0d1h,012h,0b1h,0b1h	; a573
	defb 01bh,011h,01bh,01bh	; a577
	defb 0b1h,02bh,0b1h,0b1h	; a57b
	defb 0b1h,02bh,0b1h,0b1h	; a57f
	defb 0bbh,01bh,0b1h,0b1h	; a583
	defb 0bbh,01bh,01bh,0b1h	; a587
	defb 0bbh,01bh,01bh,0b1h	; a58b
	defb 02bh,0b1h,0bbh,0b1h	; a58f
	defb 02bh,0b1h,02bh,0b1h	; a593
	defb 011h,011h,011h,011h	; a597
	defb 0bbh,0bbh,0b1h,011h	; a59b
	defb 011h,0b1h,011h,01bh	; a59f
	defb 011h,012h,0b1h,01bh	; a5a3
	defb 011h,012h,0bbh,01bh	; a5a7
	defb 011h,012h,0bbh,01bh	; a5ab
	defb 011h,0b1h,02bh,01bh	; a5af
	defb 011h,0b1h,02bh,01bh	; a5b3
	defb 011h,0b1h,02bh,01bh	; a5b7
	defb 011h,02bh,012h,01bh	; a5bb
	defb 011h,02bh,012h,011h	; a5bf
	defb 011h,02bh,011h,01bh	; a5c3
	defb 011h,02bh,01bh,0b1h	; a5c7
	defb 011h,02bh,011h,01bh	; a5cb
	defb 011h,02bh,01bh,0bbh	; a5cf
	defb 011h,02bh,01bh,0bbh	; a5d3
	defb 011h,011h,01bh,011h	; a5d7

; ----------------------------------------------------------------------
; DATOS dibujos_A5DB: 12 dibujos de 8x8 a 4 bits para la hoja de la pagina 1
;   (desde el dibujo 148); los sube p00:48A6 por la lista 0x5506; lo leen
;   p00:48A6 (384 bytes)
;   0xa5db..0xa75b  (384 bytes)
DATA_dibujos_A5DB:
	defb 0bbh,0bbh,0bbh,0dbh	; a5db
	defb 0bbh,01bh,01bh,0b1h	; a5df
	defb 011h,0b1h,0b1h,011h	; a5e3
	defb 02bh,0bbh,011h,011h	; a5e7
	defb 01bh,0b1h,011h,011h	; a5eb
	defb 01bh,011h,011h,011h	; a5ef
	defb 011h,011h,012h,011h	; a5f3
	defb 0b1h,011h,01bh,011h	; a5f7
	defb 0bbh,0bbh,0bbh,011h	; a5fb
	defb 0b1h,0b1h,01bh,0b1h	; a5ff
	defb 011h,0c1h,01ch,011h	; a603
	defb 011h,01ch,01ch,01ch	; a607
	defb 011h,01ch,011h,0cch	; a60b
	defb 011h,011h,0cch,011h	; a60f
	defb 011h,011h,01ch,0cch	; a613
	defb 011h,011h,011h,011h	; a617
	defb 0bbh,0bbh,0b1h,011h	; a61b
	defb 011h,0b1h,011h,01bh	; a61f
	defb 0c1h,012h,0b1h,01bh	; a623
	defb 011h,012h,0bbh,01bh	; a627
	defb 0c1h,012h,0bbh,01bh	; a62b
	defb 011h,0b1h,02bh,01bh	; a62f
	defb 0c1h,0b1h,02bh,01bh	; a633
	defb 01ch,0b1h,02bh,01bh	; a637
	defb 0b1h,011h,021h,011h	; a63b
	defb 0b1h,012h,0b1h,011h	; a63f
	defb 0bbh,01bh,0b1h,011h	; a643
	defb 0bbh,01bh,01bh,011h	; a647
	defb 0bbh,01bh,01bh,0b1h	; a64b
	defb 02bh,0b1h,0bbh,0b1h	; a64f
	defb 02bh,0b1h,02bh,0b1h	; a653
	defb 011h,011h,011h,011h	; a657
	defb 0ffh,0fah,0fah,0a1h	; a65b
	defb 0afh,0ffh,0ffh,0f1h	; a65f
	defb 0ffh,0aah,0ffh,0a1h	; a663
	defb 0ffh,0ffh,0fah,011h	; a667
	defb 0ffh,0ffh,0fah,01bh	; a66b
	defb 0fah,0ffh,0a1h,0bbh	; a66f
	defb 0ffh,0afh,0e1h,0bbh	; a673
	defb 0ffh,0aah,01bh,0b1h	; a677
	defb 0b1h,011h,01dh,0b1h	; a67b
	defb 01bh,0ddh,0bdh,0b1h	; a67f
	defb 011h,011h,0bbh,01bh	; a683
	defb 0b1h,01bh,0bdh,01bh	; a687
	defb 0bdh,01bh,0d1h,0ddh	; a68b
	defb 011h,011h,0d1h,0bbh	; a68f
	defb 0bbh,0bbh,01bh,0ddh	; a693
	defb 0bbh,0b1h,011h,0dbh	; a697
	defb 0ffh,0fah,0fah,0ffh	; a69b
	defb 0afh,0ffh,0ffh,0ffh	; a69f
	defb 0ffh,0aah,0ffh,0afh	; a6a3
	defb 0ffh,0ffh,0fah,0ffh	; a6a7
	defb 0afh,0afh,0afh,0ffh	; a6ab
	defb 0fah,0ffh,0ffh,0afh	; a6af
	defb 0fah,0afh,0afh,0aah	; a6b3
	defb 0aah,0eah,0eah,0aah	; a6b7
	defb 0ffh,0fah,0fah,0ffh	; a6bb
	defb 0afh,0ffh,0ffh,0fah	; a6bf
	defb 0ffh,0aah,0ffh,0aah	; a6c3
	defb 0ffh,0ffh,0ffh,0aah	; a6c7
	defb 0ffh,0ffh,0fah,0aeh	; a6cb
	defb 0fah,0aeh,0aah,011h	; a6cf
	defb 0aah,0aah,011h,0b1h	; a6d3
	defb 011h,011h,0b1h,01bh	; a6d7
	defb 0afh,0feh,011h,0b1h	; a6db
	defb 0fah,0a1h,0bbh,011h	; a6df
	defb 0aeh,011h,0bbh,0bdh	; a6e3
	defb 0a1h,0bbh,01bh,011h	; a6e7
	defb 011h,01dh,011h,011h	; a6eb
	defb 011h,01bh,0d1h,01dh	; a6ef
	defb 01bh,011h,01dh,0bdh	; a6f3
	defb 011h,0bbh,0dbh,0bbh	; a6f7
	defb 01dh,011h,0bdh,01dh	; a6fb
	defb 011h,01bh,0bbh,0b1h	; a6ff
	defb 011h,01bh,0ddh,0bbh	; a703
	defb 011h,0bbh,0bbh,0b1h	; a707
	defb 0ddh,0bbh,0b1h,01bh	; a70b
	defb 0dbh,0ddh,0bbh,0ddh	; a70f
	defb 0ddh,011h,0bdh,0dbh	; a713
	defb 011h,0d1h,0bbh,011h	; a717
	defb 0ceh,0ech,0cch,0eeh	; a71b
	defb 0eeh,0ceh,0bch,0cch	; a71f
	defb 0eeh,0ebh,0eeh,0bch	; a723
	defb 0cbh,0beh,0ech,0ebh	; a727
	defb 0cch,0ceh,0cch,0beh	; a72b
	defb 0ceh,0cch,0bbh,0eeh	; a72f
	defb 0ceh,0ech,0ceh,0cch	; a733
	defb 0ech,0cbh,0cch,0cbh	; a737
	defb 0eeh,0ceh,0ceh,0beh	; a73b
	defb 0cch,0ech,0cch,0cbh	; a73f
	defb 0eeh,0bch,0eeh,0cch	; a743
	defb 0bbh,0cch,0cch,0cbh	; a747
	defb 0eeh,0cch,0cbh,0bch	; a74b
	defb 0ech,0eeh,0cch,0eeh	; a74f
	defb 0eeh,0bbh,0ceh,0ech	; a753
	defb 0bbh,0ebh,0cch,0bbh	; a757

; ----------------------------------------------------------------------
; DATOS dibujos_A75B: 10 dibujos de 8x8 a 4 bits para la hoja de la pagina 1
;   (desde el dibujo 51); los sube p00:48A6 por la lista 0x5506; lo leen
;   p00:48A6 (320 bytes)
;   0xa75b..0xa89b  (320 bytes)
DATA_dibujos_A75B:
	defb 011h,011h,0b1h,01bh	; a75b
	defb 011h,0eeh,011h,011h	; a75f
	defb 01eh,0eah,011h,015h	; a763
	defb 0fah,011h,055h,055h	; a767
	defb 0f1h,055h,055h,05bh	; a76b
	defb 01bh,0bbh,05bh,055h	; a76f
	defb 011h,0bbh,05bh,0bbh	; a773
	defb 014h,01bh,0bbh,05bh	; a777
	defb 011h,011h,011h,011h	; a77b
	defb 055h,055h,051h,0b1h	; a77f
	defb 055h,055h,051h,0b1h	; a783
	defb 015h,055h,051h,0b1h	; a787
	defb 051h,055h,051h,0b1h	; a78b
	defb 051h,055h,01bh,0b1h	; a78f
	defb 051h,055h,01bh,0b1h	; a793
	defb 011h,011h,01bh,0b1h	; a797
	defb 0f1h,041h,0bbh,05bh	; a79b
	defb 0f1h,044h,01bh,0b1h	; a79f
	defb 0afh,014h,051h,01bh	; a7a3
	defb 0ffh,014h,045h,051h	; a7a7
	defb 0ffh,0f1h,055h,054h	; a7ab
	defb 0ffh,0f1h,055h,055h	; a7af
	defb 0fah,0feh,015h,055h	; a7b3
	defb 0ffh,0ffh,0e1h,045h	; a7b7
	defb 01bh,0bbh,01bh,0b1h	; a7bb
	defb 01bh,0b1h,0bbh,0b1h	; a7bf
	defb 0bbh,0b1h,0bbh,0b1h	; a7c3
	defb 0bbh,0b1h,0bbh,011h	; a7c7
	defb 011h,011h,0bbh,01fh	; a7cb
	defb 044h,044h,0bbh,01fh	; a7cf
	defb 045h,044h,0bbh,01eh	; a7d3
	defb 014h,044h,0b1h,01fh	; a7d7
	defb 0ffh,0ffh,0ffh,014h	; a7db
	defb 0ffh,0fah,0fah,0e1h	; a7df
	defb 0afh,0ffh,0ffh,0feh	; a7e3
	defb 0ffh,0aah,0ffh,0aah	; a7e7
	defb 0ffh,0ffh,0ffh,0ffh	; a7eb
	defb 0ffh,0ffh,0afh,0ffh	; a7ef
	defb 0fah,0ffh,0ffh,0ffh	; a7f3
	defb 0ffh,0ffh,0ffh,0afh	; a7f7
	defb 044h,045h,044h,044h	; a7fb
	defb 015h,045h,044h,044h	; a7ff
	defb 0a1h,014h,044h,044h	; a803
	defb 0afh,0a1h,011h,011h	; a807
	defb 0ffh,0fah,0aeh,0aeh	; a80b
	defb 0ffh,0ffh,0afh,0ffh	; a80f
	defb 0fah,0ffh,0ffh,0ffh	; a813
	defb 0ffh,0ffh,0ffh,0afh	; a817
	defb 054h,01bh,055h,055h	; a81b
	defb 044h,041h,0b5h,055h	; a81f
	defb 044h,041h,0b5h,055h	; a823
	defb 011h,011h,01bh,055h	; a827
	defb 0aeh,0eah,0a1h,0b5h	; a82b
	defb 0fah,0ffh,0aah,0feh	; a82f
	defb 0fah,0ffh,0ffh,0ffh	; a833
	defb 0ffh,0ffh,0ffh,0aah	; a837
	defb 041h,044h,0b1h,0ffh	; a83b
	defb 054h,015h,0b1h,0efh	; a83f
	defb 055h,041h,0b1h,0eah	; a843
	defb 055h,054h,011h,0afh	; a847
	defb 055h,055h,041h,0afh	; a84b
	defb 0aeh,0aeh,0aah,0ffh	; a84f
	defb 0fah,0aah,0ffh,0ffh	; a853
	defb 0aah,0aah,0afh,0afh	; a857
	defb 011h,011h,0b5h,041h	; a85b
	defb 0bbh,0bbh,01bh,054h	; a85f
	defb 0bbh,0bbh,0b1h,0b5h	; a863
	defb 011h,0bbh,0bbh,01bh	; a867
	defb 044h,011h,011h,011h	; a86b
	defb 044h,054h,045h,054h	; a86f
	defb 045h,054h,045h,054h	; a873
	defb 044h,044h,045h,044h	; a877
	defb 0bbh,014h,044h,045h	; a87b
	defb 01bh,014h,044h,045h	; a87f
	defb 041h,044h,044h,051h	; a883
	defb 054h,014h,044h,051h	; a887
	defb 0b5h,041h,011h,011h	; a88b
	defb 01bh,054h,011h,044h	; a88f
	defb 041h,0b5h,044h,011h	; a893
	defb 044h,01bh,055h,044h	; a897

; ----------------------------------------------------------------------
; DATOS dibujos_A89B: 2 dibujos de 8x8 a 4 bits para la hoja de la pagina 1
;   (desde el dibujo 144); los sube p00:48A6 por la lista 0x5506; lo leen
;   p00:48A6 (64 bytes)
;   0xa89b..0xa8db  (64 bytes)
DATA_dibujos_A89B:
	defb 011h,011h,011h,011h	; a89b
	defb 011h,055h,055h,055h	; a89f
	defb 055h,055h,055h,055h	; a8a3
	defb 055h,055h,055h,055h	; a8a7
	defb 055h,055h,055h,055h	; a8ab
	defb 055h,051h,015h,055h	; a8af
	defb 055h,015h,041h,055h	; a8b3
	defb 055h,01bh,054h,011h	; a8b7
	defb 011h,011h,011h,011h	; a8bb
	defb 055h,055h,055h,055h	; a8bf
	defb 0b5h,055h,055h,055h	; a8c3
	defb 055h,055h,011h,011h	; a8c7
	defb 055h,051h,044h,044h	; a8cb
	defb 055h,051h,044h,044h	; a8cf
	defb 055h,051h,044h,044h	; a8d3
	defb 011h,014h,045h,045h	; a8d7

; ----------------------------------------------------------------------
; DATOS dibujos_A8DB: 12 dibujos de 8x8 a 4 bits para la hoja de la pagina 1
;   (desde el dibujo 1); los sube p00:48A6 por la lista 0x5546; lo leen
;   p00:48A6 (384 bytes)
;   0xa8db..0xaa5b  (384 bytes)
DATA_dibujos_A8DB:
	defb 0b1h,0d1h,0d9h,0ffh	; a8db
	defb 0a1h,01dh,0dfh,0f9h	; a8df
	defb 01dh,011h,09dh,0ddh	; a8e3
	defb 01dh,09dh,099h,0ddh	; a8e7
	defb 01fh,091h,09dh,0d9h	; a8eb
	defb 0b1h,019h,0d9h,0ffh	; a8ef
	defb 01dh,0d9h,0fdh,0fdh	; a8f3
	defb 0b1h,01dh,0d9h,0fdh	; a8f7
	defb 0b1h,0ddh,09dh,0ddh	; a8fb
	defb 01dh,01dh,099h,0d1h	; a8ff
	defb 011h,011h,0d1h,09fh	; a903
	defb 0b1h,0d9h,09fh,0f9h	; a907
	defb 0f1h,011h,0d9h,0d9h	; a90b
	defb 0b1h,0d1h,01dh,0ddh	; a90f
	defb 0abh,01dh,0d9h,09dh	; a913
	defb 0b1h,0d9h,099h,0ddh	; a917
	defb 0f1h,0f1h,01dh,01bh	; a91b
	defb 0ffh,0d1h,011h,01bh	; a91f
	defb 0ddh,0f1h,0f1h,0d1h	; a923
	defb 011h,0ffh,0dfh,0f1h	; a927
	defb 011h,0dfh,01fh,0d1h	; a92b
	defb 0fdh,0f1h,0f1h,01bh	; a92f
	defb 0ffh,0f1h,0ffh,011h	; a933
	defb 0f1h,011h,011h,01bh	; a937
	defb 01fh,011h,0ffh,01bh	; a93b
	defb 01dh,0f1h,01fh,011h	; a93f
	defb 0dfh,01fh,011h,011h	; a943
	defb 01dh,01fh,0ffh,01bh	; a947
	defb 011h,0ffh,011h,01fh	; a94b
	defb 0ffh,01dh,01fh,01bh	; a94f
	defb 011h,011h,011h,0bbh	; a953
	defb 01fh,0f1h,0fdh,01bh	; a957
	defb 0bah,0bfh,0b1h,01bh	; a95b
	defb 01bh,011h,011h,0d1h	; a95f
	defb 0d1h,0d1h,0d1h,01dh	; a963
	defb 09dh,011h,091h,0ddh	; a967
	defb 09dh,01dh,09dh,099h	; a96b
	defb 099h,0d9h,0f1h,09dh	; a96f
	defb 0d9h,0ddh,0f9h,0ddh	; a973
	defb 0ddh,0d9h,09fh,01dh	; a977
	defb 0b1h,0b1h,011h,0abh	; a97b
	defb 01dh,01fh,0ddh,011h	; a97f
	defb 01dh,019h,091h,01dh	; a983
	defb 0d9h,091h,0d1h,0d1h	; a987
	defb 0dfh,0d9h,099h,0ddh	; a98b
	defb 09dh,09dh,09dh,0f9h	; a98f
	defb 0ffh,0fdh,0ddh,0ffh	; a993
	defb 0ddh,0f9h,0ddh,09fh	; a997
	defb 011h,0f1h,01dh,011h	; a99b
	defb 0f1h,0f1h,0dfh,0dfh	; a99f
	defb 0f1h,01fh,011h,0f1h	; a9a3
	defb 011h,0dfh,0ffh,011h	; a9a7
	defb 0f1h,011h,0f1h,01fh	; a9ab
	defb 0d1h,0f1h,0f1h,0ffh	; a9af
	defb 011h,011h,011h,011h	; a9b3
	defb 011h,01fh,011h,011h	; a9b7
	defb 0ffh,0f1h,01dh,0ffh	; a9bb
	defb 01fh,0d1h,01dh,0f1h	; a9bf
	defb 01fh,0fdh,0ffh,0dfh	; a9c3
	defb 011h,01fh,0f1h,011h	; a9c7
	defb 01fh,0f1h,0dfh,011h	; a9cb
	defb 01fh,01fh,0f1h,01dh	; a9cf
	defb 011h,01dh,0fdh,011h	; a9d3
	defb 011h,011h,011h,011h	; a9d7
	defb 0bah,0abh,0b1h,011h	; a9db
	defb 0aah,0b1h,01fh,0f9h	; a9df
	defb 0a1h,011h,09dh,0ddh	; a9e3
	defb 0b1h,01dh,099h,0ddh	; a9e7
	defb 01fh,091h,09dh,0d9h	; a9eb
	defb 0b1h,019h,0d9h,0ffh	; a9ef
	defb 01dh,0d9h,0fdh,0fdh	; a9f3
	defb 0b1h,01dh,0d9h,0fdh	; a9f7
	defb 0bah,0bbh,0bdh,0abh	; a9fb
	defb 011h,011h,0fdh,0bbh	; a9ff
	defb 0ddh,0f1h,0f1h,0abh	; aa03
	defb 011h,0ffh,0dfh,01bh	; aa07
	defb 011h,0dfh,01fh,01bh	; aa0b
	defb 0fdh,0f1h,0f1h,01bh	; aa0f
	defb 0ffh,0f1h,0ffh,011h	; aa13
	defb 0f1h,011h,011h,01bh	; aa17
	defb 0b1h,01dh,0d9h,0fdh	; aa1b
	defb 01dh,0d9h,0fdh,0fdh	; aa1f
	defb 0b1h,019h,0d9h,0ffh	; aa23
	defb 01fh,091h,09dh,0dfh	; aa27
	defb 0b1h,01dh,0dfh,0dfh	; aa2b
	defb 0a1h,011h,0ddh,0ffh	; aa2f
	defb 0aah,0b1h,01fh,0ffh	; aa33
	defb 0bah,0abh,0b1h,011h	; aa37
	defb 0f1h,011h,011h,01bh	; aa3b
	defb 0ffh,0f1h,0ffh,011h	; aa3f
	defb 0fdh,0f1h,0f1h,01bh	; aa43
	defb 011h,0dfh,01fh,01bh	; aa47
	defb 011h,0ffh,0dfh,01bh	; aa4b
	defb 0ddh,0f1h,0f1h,0fbh	; aa4f
	defb 011h,011h,0ffh,0bbh	; aa53
	defb 011h,011h,0bbh,0bbh	; aa57

; ----------------------------------------------------------------------
; DATOS dibujos_AA5B: 20 dibujos de 8x8 a 4 bits para la hoja de la pagina 1
;   (desde el dibujo 96); los sube p00:48A6 por la lista 0x5546; lo leen
;   p00:48A6 (640 bytes)
;   0xaa5b..0xacdb  (640 bytes)
DATA_dibujos_AA5B:
	defb 0bah,0abh,0bbh,0dah	; aa5b
	defb 0aah,0bah,0bbh,0fdh	; aa5f
	defb 0aah,0abh,0dah,0bbh	; aa63
	defb 0bbh,0bah,0ddh,0abh	; aa67
	defb 0bdh,0dah,0fdh,0bah	; aa6b
	defb 0bah,0bbh,0bbh,0adh	; aa6f
	defb 0bah,0ddh,0bah,0bdh	; aa73
	defb 0abh,0bbh,0bdh,0dbh	; aa77
	defb 0bah,0bbh,0bdh,0abh	; aa7b
	defb 0bbh,0bah,0fdh,0bbh	; aa7f
	defb 0aah,0bah,0afh,0abh	; aa83
	defb 0bdh,0bah,0bfh,0bbh	; aa87
	defb 0adh,0fbh,0bbh,0aah	; aa8b
	defb 0bah,0dbh,0aah,0bbh	; aa8f
	defb 0bbh,0bah,0abh,0aah	; aa93
	defb 0bbh,0bbh,0bbh,0abh	; aa97
	defb 0bbh,0abh,0abh,0fah	; aa9b
	defb 0bbh,0bbh,0dbh,0aah	; aa9f
	defb 0dbh,0aah,0dfh,0fbh	; aaa3
	defb 0bah,0ddh,0aah,0bbh	; aaa7
	defb 0fbh,0bbh,0bbh,0dbh	; aaab
	defb 0bbh,0dah,0abh,0fah	; aaaf
	defb 0abh,0aah,0bah,0bah	; aab3
	defb 0bbh,0bbh,0abh,0bbh	; aab7
	defb 0aah,0bah,0bah,0bah	; aabb
	defb 0bbh,0abh,0bbh,0dbh	; aabf
	defb 0afh,0bbh,0dah,0fbh	; aac3
	defb 0bbh,0bbh,0fbh,0bbh	; aac7
	defb 0aah,0bbh,0bbh,0bbh	; aacb
	defb 0abh,0adh,0fbh,0aah	; aacf
	defb 0aah,0bbh,0bah,0abh	; aad3
	defb 0bbh,0abh,0bbh,0bbh	; aad7
	defb 0dfh,0fdh,0ddh,0dfh	; aadb
	defb 09dh,0dfh,0dfh,0ffh	; aadf
	defb 0dfh,0ffh,0fdh,0ffh	; aae3
	defb 0ffh,0f9h,0ddh,0fdh	; aae7
	defb 0ffh,09dh,0ddh,099h	; aaeb
	defb 0dfh,0ddh,0d9h,0ddh	; aaef
	defb 0ddh,0dfh,0ddh,0d9h	; aaf3
	defb 0dfh,09dh,0ddh,09dh	; aaf7
	defb 0ffh,0ddh,0ffh,0ddh	; aafb
	defb 0f9h,0ddh,09fh,0ffh	; aaff
	defb 09dh,0fdh,0ddh,0fdh	; ab03
	defb 09fh,0fdh,0dfh,0ddh	; ab07
	defb 0d9h,0dfh,0ffh,0ddh	; ab0b
	defb 0fdh,0ddh,0ddh,0ffh	; ab0f
	defb 09dh,0fdh,0fdh,0ddh	; ab13
	defb 09dh,0ffh,0ddh,0ddh	; ab17
	defb 0ffh,0dfh,0dfh,0dfh	; ab1b
	defb 0ddh,0ddh,0fdh,0dfh	; ab1f
	defb 0dfh,0fdh,0ddh,0ddh	; ab23
	defb 0ffh,0fdh,0d1h,0d1h	; ab27
	defb 0ddh,0f1h,0fdh,0ddh	; ab2b
	defb 0dfh,0ffh,01fh,0ddh	; ab2f
	defb 0dfh,0d1h,0ffh,0ffh	; ab33
	defb 0dfh,0dfh,0d1h,0fdh	; ab37
	defb 0ddh,0fdh,0fdh,0fdh	; ab3b
	defb 0d1h,01fh,0dfh,0fdh	; ab3f
	defb 0d1h,0ddh,011h,011h	; ab43
	defb 0ddh,0ddh,0ddh,0d1h	; ab47
	defb 0ffh,01dh,0ffh,0ffh	; ab4b
	defb 011h,0d1h,01fh,0ffh	; ab4f
	defb 0fdh,011h,0d1h,011h	; ab53
	defb 0ddh,0ddh,0dfh,0d1h	; ab57
	defb 099h,0fdh,099h,0ffh	; ab5b
	defb 0ddh,0d9h,0fdh,09fh	; ab5f
	defb 0ffh,0ddh,0ffh,0ddh	; ab63
	defb 0fdh,0dfh,0ddh,0ddh	; ab67
	defb 0dfh,0dfh,0ddh,09fh	; ab6b
	defb 0ddh,0dfh,0fdh,0ffh	; ab6f
	defb 0ddh,0fdh,0dfh,0fdh	; ab73
	defb 0ddh,0fdh,0ddh,0fdh	; ab77
	defb 0ddh,0dfh,0fdh,09dh	; ab7b
	defb 0fdh,0ffh,0ffh,0dfh	; ab7f
	defb 09dh,0d9h,0ffh,0dfh	; ab83
	defb 0dfh,0ddh,09fh,0fdh	; ab87
	defb 0ddh,0ddh,0dfh,0ddh	; ab8b
	defb 0ddh,09dh,0ddh,0fdh	; ab8f
	defb 09dh,0d9h,0ffh,0fdh	; ab93
	defb 0d9h,0d9h,0dfh,0ffh	; ab97
	defb 0dfh,01fh,0ddh,0ddh	; ab9b
	defb 0ddh,01fh,0d1h,01dh	; ab9f
	defb 0d1h,0d1h,0ddh,01fh	; aba3
	defb 0d1h,01dh,0ddh,0fdh	; aba7
	defb 0ddh,01fh,0d1h,0dfh	; abab
	defb 0f1h,0ffh,0d1h,0fdh	; abaf
	defb 0d1h,0ffh,0d1h,0ffh	; abb3
	defb 011h,0ffh,011h,0ddh	; abb7
	defb 0ddh,0ddh,0fdh,0dfh	; abbb
	defb 0ffh,0fdh,0ffh,0dfh	; abbf
	defb 0ddh,0ffh,0ffh,0ddh	; abc3
	defb 0f1h,0f1h,0ddh,0dfh	; abc7
	defb 0dfh,01fh,0ddh,0fdh	; abcb
	defb 01fh,0fdh,01dh,0dfh	; abcf
	defb 0ffh,0ddh,0ddh,0ddh	; abd3
	defb 0dfh,0ddh,01dh,0ffh	; abd7
	defb 011h,0bbh,011h,01bh	; abdb
	defb 011h,0abh,011h,01ah	; abdf
	defb 011h,0abh,011h,01ah	; abe3
	defb 01bh,011h,011h,01ah	; abe7
	defb 0bfh,0fbh,0bfh,0b1h	; abeb
	defb 0bbh,0bbh,0bbh,0bdh	; abef
	defb 0bbh,0ffh,0bah,0bdh	; abf3
	defb 0abh,0bbh,0bdh,0dbh	; abf7
	defb 0b1h,0b1h,0bbh,011h	; abfb
	defb 0b1h,0b1h,0abh,0b1h	; abff
	defb 0b1h,0b1h,0abh,0b1h	; ac03
	defb 0b1h,011h,011h,011h	; ac07
	defb 011h,011h,011h,011h	; ac0b
	defb 0bbh,0fbh,0bbh,0bbh	; ac0f
	defb 0bbh,0bbh,0bbh,0aah	; ac13
	defb 0bbh,0bbh,0bbh,0abh	; ac17
	defb 0bbh,0bbh,0bbh,0fah	; ac1b
	defb 0bbh,0bbh,0fbh,0aah	; ac1f
	defb 0fbh,0bbh,0ffh,0fbh	; ac23
	defb 0bbh,0ffh,0bbh,0bbh	; ac27
	defb 0fbh,0bbh,0bbh,0bbh	; ac2b
	defb 0bbh,0fbh,0bbh,0bah	; ac2f
	defb 0bbh,0bbh,0bbh,0bah	; ac33
	defb 0bbh,0bbh,0bbh,0bbh	; ac37
	defb 0bbh,0bbh,0bbh,0fah	; ac3b
	defb 0bbh,0bbh,0bbh,0ffh	; ac3f
	defb 0bbh,0bbh,0fbh,0bbh	; ac43
	defb 0bbh,0bbh,0ffh,0bbh	; ac47
	defb 0bfh,0fbh,0ffh,0bbh	; ac4b
	defb 0bbh,0bbh,0bbh,0bdh	; ac4f
	defb 0bbh,0ffh,0bbh,0bdh	; ac53
	defb 0bbh,0bbh,0bfh,0fbh	; ac57
	defb 0b1h,0b1h,0bbh,0bfh	; ac5b
	defb 0b1h,011h,0bfh,0bbh	; ac5f
	defb 0b1h,0bbh,0fbh,0fbh	; ac63
	defb 0b1h,0bbh,0fbh,0bbh	; ac67
	defb 011h,0bbh,0bbh,0bbh	; ac6b
	defb 0bbh,0bbh,0bbh,0bbh	; ac6f
	defb 0bbh,0bbh,0ffh,0bbh	; ac73
	defb 0bbh,0abh,0bah,0dbh	; ac77
	defb 0bbh,0bbh,0bbh,0fbh	; ac7b
	defb 0bbh,0bbh,0bbh,0bfh	; ac7f
	defb 0bbh,0bbh,0fbh,0bbh	; ac83
	defb 0bbh,0bbh,0bbh,0bbh	; ac87
	defb 0bfh,0fbh,0ffh,0bbh	; ac8b
	defb 0bbh,0bbh,0bbh,0bfh	; ac8f
	defb 0bbh,0ffh,0bah,0bdh	; ac93
	defb 0abh,0bbh,0bdh,0dbh	; ac97
	defb 0bbh,0bbh,0bbh,0bbh	; ac9b
	defb 0bbh,0bbh,0fbh,0bbh	; ac9f
	defb 0bbh,0bbh,0bfh,0bbh	; aca3
	defb 0bfh,0bbh,0bfh,0bbh	; aca7
	defb 0bbh,0bbh,0bbh,0bbh	; acab
	defb 0bbh,0fbh,0bbh,0bbh	; acaf
	defb 0bbh,0bbh,0bbh,0bah	; acb3
	defb 0bbh,0bbh,0bbh,0abh	; acb7
	defb 0aah,0a1h,0bbh,011h	; acbb
	defb 0abh,0a1h,0abh,0b1h	; acbf
	defb 0bbh,0b1h,0abh,0b1h	; acc3
	defb 0aah,0b1h,011h,011h	; acc7
	defb 0bbh,0b1h,011h,011h	; accb
	defb 0bbh,0fbh,0bbh,0bbh	; accf
	defb 0bbh,0bbh,0bbh,0aah	; acd3
	defb 0bbh,0bbh,0bbh,0abh	; acd7

; ----------------------------------------------------------------------
; DATOS dibujos_ACDB: 6 dibujos de 8x8 a 4 bits para la hoja de la pagina 1
;   (desde el dibujo 35); los sube p00:48A6 por la lista 0x5546; lo leen
;   p00:48A6 (192 bytes)
;   0xacdb..0xad9b  (192 bytes)
DATA_dibujos_ACDB:
	defb 0bah,011h,011h,011h	; acdb
	defb 0a1h,0bbh,01bh,0b1h	; acdf
	defb 0a1h,0bdh,0bbh,0ddh	; ace3
	defb 01bh,0b1h,011h,0bbh	; ace7
	defb 011h,011h,011h,011h	; aceb
	defb 01dh,0ddh,0ddh,0ddh	; acef
	defb 01bh,0bbh,0bbh,0bbh	; acf3
	defb 011h,011h,011h,011h	; acf7
	defb 011h,011h,011h,011h	; acfb
	defb 01bh,0bbh,0b1h,0bbh	; acff
	defb 0bbh,0bdh,0bbh,0bdh	; ad03
	defb 01bh,01bh,0b1h,0b1h	; ad07
	defb 011h,011h,011h,011h	; ad0b
	defb 0ddh,0ddh,0ddh,0ddh	; ad0f
	defb 0bbh,0bbh,0bbh,0bbh	; ad13
	defb 011h,011h,011h,011h	; ad17
	defb 011h,011h,011h,0abh	; ad1b
	defb 0bbh,0bbh,0bbh,01bh	; ad1f
	defb 01bh,0dbh,0dbh,0b1h	; ad23
	defb 01bh,01bh,011h,011h	; ad27
	defb 011h,011h,011h,011h	; ad2b
	defb 0ddh,0ddh,0ddh,0d1h	; ad2f
	defb 0bbh,0bbh,0bbh,0d1h	; ad33
	defb 011h,011h,011h,011h	; ad37
	defb 01bh,0b1h,0bbh,0bbh	; ad3b
	defb 01bh,0bbh,0bdh,0bbh	; ad3f
	defb 01bh,0dbh,0ddh,0dbh	; ad43
	defb 01dh,0ddh,0ddh,0ddh	; ad47
	defb 01dh,0ddh,0bdh,03dh	; ad4b
	defb 01dh,03dh,0d3h,03dh	; ad4f
	defb 01bh,0ddh,0ddh,0dbh	; ad53
	defb 011h,0bdh,0bbh,0b1h	; ad57
	defb 0b1h,0bbh,01bh,0bbh	; ad5b
	defb 0b1h,0bbh,0bbh,0bdh	; ad5f
	defb 0bdh,0bdh,0bdh,0bdh	; ad63
	defb 0ddh,0bdh,0ddh,0bdh	; ad67
	defb 0ddh,0ddh,0ddh,0ddh	; ad6b
	defb 0d3h,03dh,0bdh,033h	; ad6f
	defb 0ddh,0ddh,0ddh,0ddh	; ad73
	defb 0bdh,0dbh,0bdh,0bbh	; ad77
	defb 0bbh,0bbh,0bbh,0b1h	; ad7b
	defb 0bbh,0dbh,0bdh,0b1h	; ad7f
	defb 0bdh,0dbh,0ddh,0b1h	; ad83
	defb 0ddh,0ddh,0ddh,0d1h	; ad87
	defb 0ddh,03dh,03dh,0d1h	; ad8b
	defb 0ddh,03dh,0ddh,0b1h	; ad8f
	defb 0ddh,0ddh,0dbh,011h	; ad93
	defb 0bdh,0bdh,0bbh,011h	; ad97

; ----------------------------------------------------------------------
; DATOS dibujos_AD9B: 13 dibujos de 8x8 a 4 bits para la hoja de la pagina 1
;   (desde el dibujo 121); los sube p00:48A6 por la lista 0x5546; lo leen
;   p00:48A6 (416 bytes)
;   0xad9b..0xaf3b  (416 bytes)
DATA_dibujos_AD9B:
	defb 0b1h,0bbh,0b1h,0b1h	; ad9b
	defb 0a1h,011h,01bh,0b1h	; ad9f
	defb 0a1h,0b1h,011h,011h	; ada3
	defb 0bbh,01bh,012h,0b1h	; ada7
	defb 0bdh,01bh,012h,0b1h	; adab
	defb 0bah,01bh,012h,0b1h	; adaf
	defb 0bah,01bh,012h,0b1h	; adb3
	defb 0abh,012h,0b1h,011h	; adb7
	defb 0bbh,0bbh,0bbh,0dbh	; adbb
	defb 0bbh,01bh,01bh,0b1h	; adbf
	defb 011h,011h,011h,011h	; adc3
	defb 02bh,011h,011h,011h	; adc7
	defb 0bbh,011h,011h,011h	; adcb
	defb 011h,011h,011h,011h	; adcf
	defb 02bh,011h,011h,011h	; add3
	defb 02bh,011h,011h,011h	; add7
	defb 0bbh,0bbh,0bbh,011h	; addb
	defb 0b1h,0b1h,01bh,0b1h	; addf
	defb 011h,011h,011h,011h	; ade3
	defb 011h,011h,011h,011h	; ade7
	defb 011h,011h,011h,011h	; adeb
	defb 011h,011h,011h,011h	; adef
	defb 011h,011h,011h,011h	; adf3
	defb 011h,011h,011h,011h	; adf7
	defb 0bbh,0bbh,0b1h,011h	; adfb
	defb 011h,0b1h,011h,011h	; adff
	defb 0b1h,011h,0b2h,01bh	; ae03
	defb 012h,0b1h,0b2h,01bh	; ae07
	defb 012h,0b1h,0b2h,01bh	; ae0b
	defb 012h,0b1h,0bbh,01bh	; ae0f
	defb 01bh,0b1h,011h,01bh	; ae13
	defb 011h,011h,0b1h,0bbh	; ae17
	defb 0bbh,012h,0b1h,0b1h	; ae1b
	defb 0bbh,012h,0b1h,0b1h	; ae1f
	defb 0dbh,012h,0b1h,0b1h	; ae23
	defb 0bah,01bh,0b1h,0b1h	; ae27
	defb 0fbh,011h,01bh,0b1h	; ae2b
	defb 0bbh,01bh,012h,0b1h	; ae2f
	defb 0abh,01bh,01bh,0b1h	; ae33
	defb 0bbh,0b1h,011h,011h	; ae37
	defb 02bh,011h,011h,011h	; ae3b
	defb 02bh,011h,011h,011h	; ae3f
	defb 02bh,011h,011h,011h	; ae43
	defb 0bbh,011h,011h,011h	; ae47
	defb 011h,011h,011h,011h	; ae4b
	defb 02bh,011h,011h,011h	; ae4f
	defb 02bh,011h,011h,011h	; ae53
	defb 011h,011h,011h,011h	; ae57
	defb 02bh,01bh,0b1h,0bbh	; ae5b
	defb 02bh,012h,0b1h,0fbh	; ae5f
	defb 02bh,012h,0b1h,0fbh	; ae63
	defb 02bh,01bh,0b1h,0bbh	; ae67
	defb 02bh,011h,011h,0bbh	; ae6b
	defb 02bh,012h,0b1h,0bbh	; ae6f
	defb 02bh,012h,0b1h,0bbh	; ae73
	defb 011h,011h,01bh,0bbh	; ae77
	defb 011h,0bbh,0b1h,0b1h	; ae7b
	defb 01bh,011h,01bh,0b1h	; ae7f
	defb 012h,0b1h,011h,011h	; ae83
	defb 012h,0b1h,02bh,0b1h	; ae87
	defb 012h,0bbh,012h,0bbh	; ae8b
	defb 011h,0bbh,012h,0bbh	; ae8f
	defb 0b1h,02bh,012h,0bbh	; ae93
	defb 0a1h,02bh,0b1h,02bh	; ae97
	defb 0bbh,0bbh,0bbh,0dbh	; ae9b
	defb 0bbh,01bh,01bh,0b1h	; ae9f
	defb 011h,0b1h,0b1h,011h	; aea3
	defb 02bh,0bbh,01bh,0b1h	; aea7
	defb 01bh,0b1h,0bbh,0b1h	; aeab
	defb 01bh,012h,0bbh,011h	; aeaf
	defb 011h,012h,0bbh,011h	; aeb3
	defb 0b1h,012h,0bbh,011h	; aeb7
	defb 0b1h,02bh,0b1h,02bh	; aebb
	defb 0b1h,02bh,0b1h,02bh	; aebf
	defb 0d1h,02bh,0b1h,012h	; aec3
	defb 0b1h,012h,0b1h,012h	; aec7
	defb 0f1h,012h,0b1h,012h	; aecb
	defb 0bbh,012h,0b1h,0b1h	; aecf
	defb 0abh,012h,0b1h,0b1h	; aed3
	defb 0bbh,011h,01bh,01bh	; aed7
	defb 0b1h,02bh,0b1h,0b1h	; aedb
	defb 0b1h,02bh,0b1h,0b1h	; aedf
	defb 0bbh,01bh,0b1h,0b1h	; aee3
	defb 0bbh,01bh,01bh,0b1h	; aee7
	defb 0bbh,01bh,01bh,0b1h	; aeeb
	defb 02bh,0b1h,0bbh,0b1h	; aeef
	defb 02bh,0b1h,02bh,0b1h	; aef3
	defb 011h,011h,011h,011h	; aef7
	defb 0bbh,0bbh,0b1h,011h	; aefb
	defb 011h,0b1h,011h,01bh	; aeff
	defb 011h,012h,0b1h,01bh	; af03
	defb 011h,012h,0bbh,01bh	; af07
	defb 011h,012h,0bbh,01bh	; af0b
	defb 011h,0b1h,02bh,01bh	; af0f
	defb 011h,0b1h,02bh,01bh	; af13
	defb 011h,0b1h,02bh,01bh	; af17
	defb 011h,02bh,012h,01bh	; af1b
	defb 011h,02bh,012h,01bh	; af1f
	defb 011h,02bh,011h,01bh	; af23
	defb 011h,02bh,01bh,0bbh	; af27
	defb 011h,02bh,01bh,0bbh	; af2b
	defb 011h,02bh,01bh,0bbh	; af2f
	defb 011h,02bh,01bh,0bbh	; af33
	defb 011h,011h,01bh,0bbh	; af37

; ----------------------------------------------------------------------
; DATOS sprites_AF3B: RLE de patrones de sprite (n con el bit 7 = n bytes tal
;   cual; sin el, repetir el siguiente; 0 acaba); lista 15; lo leen p00:45EF
;   (131 bytes)
;   0xaf3b..0xafbe  (131 bytes)
DATA_sprites_AF3B:
	defb 0ffh,01fh,030h,02fh,02fh,05fh,04bh,046h,084h,0b3h,0b9h,0bah,0d5h,075h,072h,039h	; af3b  ..0//_KF.....ur9
	defb 01fh,0f8h,00ch,0f4h,0f4h,0fah,0d2h,062h,021h,0cdh,09dh,05dh,0abh,0aeh,04eh,09ch	; af4b  .......b!..]..N.
	defb 0f8h,000h,01fh,01fh,013h,02dh,035h,039h,07fh,05ch,05eh,05dh,06ah,02ah,02dh,01eh	; af5b  .....-59.\^]j*-.
	defb 000h,000h,0f8h,0f8h,0c8h,0b4h,0ach,09ch,0feh,03ah,07ah,0bah,056h,054h,0b4h,078h	; af6b  .........:z.VT.x
	defb 000h,01fh,020h,02fh,05eh,04ah,04eh,084h,0a7h,0b8h,0b3h,0b7h,0d7h,077h,073h,03ch	; af7b  .. /^JN......ws<
	defb 01fh,0f8h,004h,0f4h,07ah,052h,072h,021h,0e5h,01dh,0cdh,0edh,0ebh,0eeh,0ceh,03ch	; af8b  ....zRr!.......<
	defb 0f8h,000h,01fh,013h,02dh,035h,039h,07bh,058h,057h,04ch,048h,068h,028h,02ch,013h	; af9b  ....-59{XWLHh(,.
	defb 000h,000h,0f8h,0c8h,0b4h,0ach,09ch,0deh,01ah,0eah,032h,012h,016h,014h,034h,0c8h	; afab  ..........2...4.
	defb 081h,000h,000h	; afbb

; ----------------------------------------------------------------------
; DATOS sprites_AFBE: RLE de patrones de sprite (n con el bit 7 = n bytes tal
;   cual; sin el, repetir el siguiente; 0 acaba); lista 10; lo leen p00:45EF
;   (66 bytes)
;   0xafbe..0xb000  (66 bytes)
DATA_sprites_AFBE:
	defb 099h,001h,011h,012h,013h,017h,05fh,03fh,03eh,03ch,038h,018h,01ch,04dh,027h,003h	; afbe  ......_?><8..M'.
	defb 000h,040h,040h,080h,0d1h,0f8h,0fah,0bch,07eh,0aeh,003h,01ch,0a4h,038h,0f0h,0e4h	; afce  .@@.....~....8..
	defb 000h,000h,010h,011h,001h,002h,056h,01bh,017h,01fh,01fh,00fh,00fh,047h,023h,000h	; afde  ......V......G#.
	defb 000h,040h,040h,008h,081h,0d0h,0f2h,0f8h,0f4h,0fch,0fch,0f8h,0f8h,0f0h,0e0h,004h	; afee  .@@.............
	defb 000h,000h	; affe

; ----------------------------------------------------------------------
; DATOS sprites_comunes: RLE de los 192 bytes de patrones de sprite que
;   p00:4CB6 sube a la VRAM 0xF940 (patrones 0x28-0x3F) al entrar en cada
;   pantalla; lo leen p00:4CBC (183 bytes)
;   0xb000..0xb0b7  (183 bytes)
DATA_sprites_comunes:
	defb 0aeh,003h,015h,00bh,097h,01bh,02dh,04fh,0b7h,0f3h,0adh,0bfh,04bh,027h,09fh,000h	; b000  ......-O....K'..
	defb 000h,0e0h,0d0h,0e8h,0dah,0d8h,0b4h,0f4h,0fah,08dh,03dh,0c9h,09ah,022h,044h,0f9h	; b010  ..........=.."D.
	defb 000h,000h,013h,007h,08fh,007h,01fh,03fh,06fh,06fh,077h,057h,03fh,01bh,080h,003h	; b020  .......?oowW?...
	defb 000h,0ach,0e0h,0f0h,0e2h,0f0h,0f8h,0f8h,0f4h,0f6h,0ceh,0feh,0ech,0dch,0b8h,001h	; b030  ................
	defb 000h,000h,026h,009h,014h,02ch,03fh,07fh,057h,027h,01bh,016h,01bh,00eh,000h,000h	; b040  ..&..,?.W'......
	defb 002h,000h,060h,090h,068h,0f4h,07ch,0bch,0b8h,090h,068h,068h,0d0h,064h,004h,000h	; b050  ..`.h.|...hh.d..
	defb 09ch,020h,006h,00fh,01fh,01bh,037h,03fh,01fh,007h,00dh,00eh,011h,000h,000h,002h	; b060  . ....7?........
	defb 000h,000h,060h,0b0h,0d8h,0e8h,0f8h,0d0h,0e0h,0b0h,0b0h,060h,004h,005h,000h,08ch	; b070  ..`........`....
	defb 001h,003h,002h,00dh,016h,011h,00eh,000h,023h,005h,005h,003h,004h,000h,08ch,0c0h	; b080  ........#.......
	defb 0a0h,0a0h,000h,064h,050h,090h,060h,080h,040h,040h,080h,005h,000h,002h,001h,088h	; b090  ...dP.`.@@......
	defb 000h,00ch,00eh,000h,000h,020h,003h,003h,006h,000h,003h,0c0h,087h,084h,0e0h,060h	; b0a0  ..... .........`
	defb 000h,008h,080h,080h,003h,000h,000h	; b0b0

; ----------------------------------------------------------------------
; DATOS lista_de_sprites_de_cada_pantalla: un byte por pantalla: el numero de
;   lista de sprites (p00:5630); p00:4CB3 con 0xB0B7 + pantalla; lo leen
;   p00:4CC2 (142 bytes)
;   0xb0b7..0xb145  (142 bytes)
DATA_lista_de_sprites_de_cada_pantalla:
	defb 000h,002h,002h,018h,019h,004h,01bh,015h,00bh,001h,00bh,015h,004h,00bh,009h,003h	; b0b7  ................
	defb 010h,00eh,010h,019h,000h,000h,011h,011h,000h,009h,012h,00dh,00dh,00eh,00fh,012h	; b0c7  ................
	defb 00fh,00fh,011h,000h,01bh,01bh,015h,000h,000h,000h,00bh,009h,000h,000h,000h,005h	; b0d7  ................
	defb 005h,005h,005h,005h,005h,00ah,00ah,00ch,00ah,00ch,00ch,00ch,00ch,010h,00eh,01ah	; b0e7  ................
	defb 01ah,01ah,01ah,00eh,01ah,01ah,00eh,01ah,01ah,01ah,00eh,01ah,000h,000h,000h,000h	; b0f7  ................
	defb 000h,000h,017h,00ah,006h,013h,013h,013h,013h,013h,010h,013h,000h,00ah,006h,000h	; b107  ................
	defb 000h,000h,000h,016h,016h,016h,016h,016h,000h,000h,016h,016h,013h,013h,013h,011h	; b117  ................
	defb 000h,000h,00ch,008h,008h,008h,008h,008h,017h,017h,017h,017h,008h,000h,008h,008h	; b127  ................
	defb 000h,000h,008h,008h,008h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; b137  ..............

; ----------------------------------------------------------------------
; DATOS circulo_B145: 64 parejas [dy][dx]: un circulo de radio 0x40; p00:5BED
;   da una vuelta con ix+0x14 (de 0x3F a 0)
;   0xb145..0xb1c5  (128 bytes)
DATA_circulo_B145:
	defb 040h,000h,03eh,0f8h,03ch,0f1h,03bh,0ebh,038h,0e5h,036h,0e0h,033h,0dch,030h,0d7h	; b145  @.>.<.;.8.6.3.0.
	defb 02dh,0d3h,028h,0cfh,022h,0cbh,01ch,0c8h,017h,0c6h,012h,0c4h,00ch,0c2h,006h,0c1h	; b155  -.(."...........
	defb 000h,0c0h,0fah,0c1h,0f4h,0c2h,0eeh,0c4h,0e9h,0c6h,0e4h,0c8h,0deh,0cbh,0d8h,0cfh	; b165  ................
	defb 0d3h,0d3h,0d0h,0d7h,0cdh,0dch,0cah,0e0h,0c8h,0e5h,0c5h,0ebh,0c4h,0f1h,0c2h,0f8h	; b175  ................
	defb 0c0h,000h,0c2h,008h,0c4h,00fh,0c5h,015h,0c8h,01bh,0cah,020h,0cdh,024h,0d0h,029h	; b185  ........... .$.)
	defb 0d3h,02dh,0d8h,031h,0deh,035h,0e4h,038h,0e9h,03ah,0eeh,03ch,0f4h,03eh,0fah,03fh	; b195  .-.1.5.8.:.<.>.?
	defb 000h,040h,006h,03fh,00ch,03eh,012h,03ch,017h,03ah,01ch,038h,022h,035h,028h,031h	; b1a5  .@.?.>.<.:.8"5(1
	defb 02dh,02dh,030h,029h,033h,024h,036h,020h,038h,01bh,03bh,015h,03ch,00fh,03eh,008h	; b1b5  --0)3$6 8.;.<.>.

; ----------------------------------------------------------------------
; DATOS vecinas: la pantalla a la que se sale por arriba, abajo, izquierda y
;   derecha (0xFF no hay salida, 0xF0-0xFB especial); p01:6173 con 0xB1C5 +
;   4*pantalla + lado; lo leen p01:6183 (568 bytes)
;   0xb1c5..0xb3fd  (568 bytes)
DATA_vecinas:
	defb 001h,0ffh,0ffh,0ffh	; b1c5
	defb 004h,000h,002h,00fh	; b1c9
	defb 003h,0ffh,01ah,001h	; b1cd
	defb 0ffh,002h,0ffh,004h	; b1d1
	defb 005h,001h,003h,012h	; b1d5
	defb 006h,004h,008h,019h	; b1d9
	defb 02ah,005h,007h,024h	; b1dd
	defb 0ffh,008h,009h,006h	; b1e1
	defb 007h,0ffh,00ah,005h	; b1e5
	defb 0ffh,00ah,00bh,007h	; b1e9
	defb 009h,0ffh,00ch,008h	; b1ed
	defb 0ffh,00ch,00dh,009h	; b1f1
	defb 00bh,0ffh,00eh,00ah	; b1f5
	defb 02bh,00eh,0ffh,00bh	; b1f9
	defb 00dh,01eh,0ffh,00ch	; b1fd
	defb 0ffh,010h,001h,0ffh	; b201
	defb 00fh,0ffh,0ffh,011h	; b205
	defb 0ffh,0ffh,010h,04bh	; b209
	defb 0ffh,0ffh,004h,013h	; b20d
	defb 016h,014h,012h,0ffh	; b211
	defb 013h,0ffh,0ffh,015h	; b215
	defb 0ffh,0ffh,014h,0ffh	; b219
	defb 0ffh,013h,019h,017h	; b21d
	defb 0ffh,018h,016h,0ffh	; b221
	defb 017h,0ffh,0ffh,0ffh	; b225
	defb 0ffh,0ffh,005h,016h	; b229
	defb 01bh,0ffh,01dh,002h	; b22d
	defb 0ffh,01ah,01ch,0ffh	; b231
	defb 0ffh,01dh,01eh,01bh	; b235
	defb 01ch,0ffh,01fh,01ah	; b239
	defb 00eh,01fh,0ffh,01ch	; b23d
	defb 01eh,020h,0ffh,01dh	; b241
	defb 01fh,0ffh,0ffh,021h	; b245
	defb 0ffh,0ffh,020h,022h	; b249
	defb 0ffh,0ffh,021h,023h	; b24d
	defb 0ffh,0ffh,022h,0ffh	; b251
	defb 0ffh,0ffh,006h,025h	; b255
	defb 026h,0ffh,024h,0ffh	; b259
	defb 0ffh,025h,029h,027h	; b25d
	defb 0ffh,028h,026h,0ffh	; b261
	defb 027h,0ffh,0ffh,0ffh	; b265
	defb 035h,0ffh,0ffh,026h	; b269
	defb 0ffh,006h,02fh,0ffh	; b26d
	defb 02ch,00dh,0ffh,0ffh	; b271
	defb 0ffh,02bh,0ffh,02dh	; b275
	defb 0ffh,02eh,02ch,0ffh	; b279
	defb 02dh,0ffh,0ffh,0ffh	; b27d
	defb 0ffh,0ffh,030h,02ah	; b281
	defb 031h,0ffh,0ffh,02fh	; b285
	defb 0ffh,030h,0ffh,032h	; b289
	defb 033h,0ffh,031h,038h	; b28d
	defb 0ffh,032h,034h,0ffh	; b291
	defb 054h,0ffh,052h,033h	; b295
	defb 036h,029h,038h,03ah	; b299
	defb 0ffh,035h,037h,039h	; b29d
	defb 0ffh,038h,08bh,036h	; b2a1
	defb 037h,0ffh,08ah,0ffh	; b2a5
	defb 0ffh,0ffh,036h,03ch	; b2a9
	defb 061h,0ffh,035h,03bh	; b2ad
	defb 03ch,0ffh,03ah,0ffh	; b2b1
	defb 04ch,03bh,039h,03dh	; b2b5
	defb 0ffh,03eh,03ch,0ffh	; b2b9
	defb 03dh,03fh,0ffh,0ffh	; b2bd
	defb 03eh,041h,0ffh,040h	; b2c1
	defb 0ffh,042h,03fh,0ffh	; b2c5
	defb 03fh,0ffh,0ffh,042h	; b2c9
	defb 040h,043h,041h,0ffh	; b2cd
	defb 042h,044h,0ffh,0ffh	; b2d1
	defb 043h,047h,045h,0ffh	; b2d5
	defb 046h,048h,0ffh,044h	; b2d9
	defb 0ffh,045h,0ffh,0ffh	; b2dd
	defb 044h,0ffh,048h,0ffh	; b2e1
	defb 045h,049h,0ffh,047h	; b2e5
	defb 048h,0ffh,04bh,04ah	; b2e9
	defb 0ffh,0ffh,049h,0ffh	; b2ed
	defb 0ffh,0ffh,011h,049h	; b2f1
	defb 0ffh,03ch,04dh,0ffh	; b2f5
	defb 04eh,0ffh,0ffh,04ch	; b2f9
	defb 0ffh,04dh,04fh,051h	; b2fd
	defb 0ffh,050h,0ffh,04eh	; b301
	defb 04fh,0ffh,05bh,0ffh	; b305
	defb 0ffh,0ffh,04eh,0ffh	; b309
	defb 0ffh,0ffh,053h,034h	; b30d
	defb 0ffh,0ffh,0ffh,052h	; b311
	defb 055h,034h,0ffh,0ffh	; b315
	defb 0ffh,054h,056h,058h	; b319
	defb 0ffh,057h,0ffh,055h	; b31d
	defb 056h,0ffh,0ffh,0ffh	; b321
	defb 0ffh,059h,055h,0ffh	; b325
	defb 058h,0ffh,0ffh,0ffh	; b329
	defb 05ch,05bh,0ffh,0ffh	; b32d
	defb 05ah,0ffh,0ffh,050h	; b331
	defb 0ffh,05ah,05dh,0ffh	; b335
	defb 0ffh,0ffh,05eh,05ch	; b339
	defb 0ffh,0ffh,05fh,05dh	; b33d
	defb 060h,0ffh,0ffh,05eh	; b341
	defb 0ffh,05fh,0ffh,0ffh	; b345
	defb 089h,03ah,0ffh,0ffh	; b349
	defb 0f6h,063h,0ffh,0ffh	; b34d
	defb 062h,064h,0ffh,066h	; b351
	defb 063h,0ffh,0ffh,065h	; b355
	defb 066h,0ffh,064h,0ffh	; b359
	defb 0ffh,065h,063h,0ffh	; b35d
	defb 0fah,068h,0ffh,0ffh	; b361
	defb 067h,0ffh,0ffh,0ffh	; b365
	defb 0f0h,0ffh,0ffh,0ffh	; b369
	defb 0f5h,06bh,0ffh,0ffh	; b36d
	defb 06ah,0ffh,0ffh,0ffh	; b371
	defb 0ffh,0ffh,06dh,0f9h	; b375
	defb 0ffh,0ffh,06eh,06ch	; b379
	defb 0ffh,0ffh,0ffh,06dh	; b37d
	defb 0ffh,0ffh,0f8h,0ffh	; b381
	defb 0f1h,0ffh,0ffh,0ffh	; b385
	defb 0f4h,0ffh,0ffh,0ffh	; b389
	defb 0f7h,073h,0ffh,0ffh	; b38d
	defb 072h,0ffh,0ffh,074h	; b391
	defb 075h,0ffh,073h,0ffh	; b395
	defb 0ffh,074h,0ffh,076h	; b399
	defb 0ffh,077h,075h,0ffh	; b39d
	defb 076h,078h,0ffh,0ffh	; b3a1
	defb 0f3h,0ffh,0ffh,079h	; b3a5
	defb 0ffh,07ah,078h,0ffh	; b3a9
	defb 079h,0ffh,07dh,07bh	; b3ad
	defb 07ch,07eh,07ah,0ffh	; b3b1
	defb 0ffh,07bh,0ffh,0ffh	; b3b5
	defb 0ffh,0ffh,0ffh,07ah	; b3b9
	defb 0f2h,0ffh,0ffh,07fh	; b3bd
	defb 0ffh,082h,07eh,080h	; b3c1
	defb 0ffh,081h,07fh,088h	; b3c5
	defb 080h,086h,082h,087h	; b3c9
	defb 07fh,083h,084h,081h	; b3cd
	defb 082h,0ffh,0ffh,0ffh	; b3d1
	defb 0ffh,085h,0ffh,082h	; b3d5
	defb 084h,0ffh,0ffh,0ffh	; b3d9
	defb 081h,0ffh,0ffh,0ffh	; b3dd
	defb 088h,0ffh,081h,0ffh	; b3e1
	defb 0ffh,087h,080h,0ffh	; b3e5
	defb 0ffh,0fbh,0ffh,0ffh	; b3e9
	defb 08bh,0ffh,0ffh,038h	; b3ed
	defb 0ffh,08ah,0ffh,037h	; b3f1
	defb 08dh,0ffh,0ffh,038h	; b3f5
	defb 0ffh,08ch,0ffh,0ffh	; b3f9

; ----------------------------------------------------------------------
; DATOS pantallas_con_decorado: 37 pantallas (una vez por cada cosa) y un 0:
;   p02:818A busca la actual; lo leen p02:818A (38 bytes)
;   0xb3fd..0xb423  (38 bytes)
DATA_pantallas_con_decorado:
	defb 05ch,05ch,05dh,05dh,02ah,01ah,001h,001h,05dh,029h,00eh,009h,006h,016h,046h,030h	; b3fd  \\]]*...])....F0
	defb 033h,00bh,034h,034h,050h,05bh,076h,07ah,082h,084h,038h,00dh,02dh,02eh,068h,06fh	; b40d  3.44P[vz..8.-.ho
	defb 077h,07bh,005h,056h,06eh,000h	; b41d

; ----------------------------------------------------------------------
; DATOS fichas_de_decorado: 37 punteros, uno por entrada de p09:B3FD, a su
;   ficha de 9 bytes; lo leen p02:819A (74 bytes)
;   0xb423..0xb46d  (74 bytes)
DATA_fichas_de_decorado:
	defb 06dh,0b4h	; b423
	defb 076h,0b4h	; b425
	defb 07fh,0b4h	; b427
	defb 088h,0b4h	; b429
	defb 09ah,0b4h	; b42b
	defb 0a3h,0b4h	; b42d
	defb 0ach,0b4h	; b42f
	defb 0b5h,0b4h	; b431
	defb 091h,0b4h	; b433
	defb 0beh,0b4h	; b435
	defb 0d0h,0b4h	; b437
	defb 0d9h,0b4h	; b439
	defb 0e2h,0b4h	; b43b
	defb 0ebh,0b4h	; b43d
	defb 0f4h,0b4h	; b43f
	defb 0fdh,0b4h	; b441
	defb 006h,0b5h	; b443
	defb 00fh,0b5h	; b445
	defb 018h,0b5h	; b447
	defb 021h,0b5h	; b449
	defb 02ah,0b5h	; b44b
	defb 033h,0b5h	; b44d
	defb 03ch,0b5h	; b44f
	defb 045h,0b5h	; b451
	defb 04eh,0b5h	; b453
	defb 057h,0b5h	; b455
	defb 0c7h,0b4h	; b457
	defb 060h,0b5h	; b459
	defb 069h,0b5h	; b45b
	defb 072h,0b5h	; b45d
	defb 07bh,0b5h	; b45f
	defb 084h,0b5h	; b461
	defb 08dh,0b5h	; b463
	defb 096h,0b5h	; b465
	defb 09fh,0b5h	; b467
	defb 0a8h,0b5h	; b469
	defb 0b1h,0b5h	; b46b

; ----------------------------------------------------------------------
; DATOS ficha_B46D:
;   [tipo][y][x][filas][columnas][banderas][0xC7][figura][bandera en 0xC580]:
;   p02:81A5 la copia; si 0xC580 + bandera ya esta puesta, se queda sin tipo
;   (ya se quito); lo leen p02:81A5 (9 bytes)
;   0xb46d..0xb476  (9 bytes)
DATA_ficha_B46D:
	defb 005h,008h,008h,00bh,003h,000h,0c7h,007h,000h	; b46d  .........

; ----------------------------------------------------------------------
; DATOS ficha_B476:
;   [tipo][y][x][filas][columnas][banderas][0xC7][figura][bandera en 0xC580]:
;   p02:81A5 la copia; si 0xC580 + bandera ya esta puesta, se queda sin tipo
;   (ya se quito); lo leen p02:81A5 (9 bytes)
;   0xb476..0xb47f  (9 bytes)
DATA_ficha_B476:
	defb 005h,068h,008h,008h,003h,040h,0c7h,010h,000h	; b476  .h...@...

; ----------------------------------------------------------------------
; DATOS ficha_B47F:
;   [tipo][y][x][filas][columnas][banderas][0xC7][figura][bandera en 0xC580]:
;   p02:81A5 la copia; si 0xC580 + bandera ya esta puesta, se queda sin tipo
;   (ya se quito); lo leen p02:81A5 (9 bytes)
;   0xb47f..0xb488  (9 bytes)
DATA_ficha_B47F:
	defb 005h,008h,098h,00bh,002h,000h,0c7h,011h,000h	; b47f  .........

; ----------------------------------------------------------------------
; DATOS ficha_B488:
;   [tipo][y][x][filas][columnas][banderas][0xC7][figura][bandera en 0xC580]:
;   p02:81A5 la copia; si 0xC580 + bandera ya esta puesta, se queda sin tipo
;   (ya se quito); lo leen p02:81A5 (9 bytes)
;   0xb488..0xb491  (9 bytes)
DATA_ficha_B488:
	defb 005h,068h,098h,008h,002h,040h,0c7h,012h,000h	; b488  .h...@...

; ----------------------------------------------------------------------
; DATOS ficha_B491:
;   [tipo][y][x][filas][columnas][banderas][0xC7][figura][bandera en 0xC580]:
;   p02:81A5 la copia; si 0xC580 + bandera ya esta puesta, se queda sin tipo
;   (ya se quito); lo leen p02:81A5 (9 bytes)
;   0xb491..0xb49a  (9 bytes)
DATA_ficha_B491:
	defb 008h,008h,008h,014h,003h,080h,0c7h,008h,004h	; b491  .........

; ----------------------------------------------------------------------
; DATOS ficha_B49A:
;   [tipo][y][x][filas][columnas][banderas][0xC7][figura][bandera en 0xC580]:
;   p02:81A5 la copia; si 0xC580 + bandera ya esta puesta, se queda sin tipo
;   (ya se quito); lo leen p02:81A5 (9 bytes)
;   0xb49a..0xb4a3  (9 bytes)
DATA_ficha_B49A:
	defb 005h,008h,048h,008h,004h,000h,0c7h,00bh,001h	; b49a  ..H......

; ----------------------------------------------------------------------
; DATOS ficha_B4A3:
;   [tipo][y][x][filas][columnas][banderas][0xC7][figura][bandera en 0xC580]:
;   p02:81A5 la copia; si 0xC580 + bandera ya esta puesta, se queda sin tipo
;   (ya se quito); lo leen p02:81A5 (9 bytes)
;   0xb4a3..0xb4ac  (9 bytes)
DATA_ficha_B4A3:
	defb 005h,028h,058h,005h,00ah,000h,0c7h,013h,002h	; b4a3  .(X......

; ----------------------------------------------------------------------
; DATOS ficha_B4AC:
;   [tipo][y][x][filas][columnas][banderas][0xC7][figura][bandera en 0xC580]:
;   p02:81A5 la copia; si 0xC580 + bandera ya esta puesta, se queda sin tipo
;   (ya se quito); lo leen p02:81A5 (9 bytes)
;   0xb4ac..0xb4b5  (9 bytes)
DATA_ficha_B4AC:
	defb 005h,008h,058h,003h,00ah,000h,0c7h,009h,003h	; b4ac  ..X......

; ----------------------------------------------------------------------
; DATOS ficha_B4B5:
;   [tipo][y][x][filas][columnas][banderas][0xC7][figura][bandera en 0xC580]:
;   p02:81A5 la copia; si 0xC580 + bandera ya esta puesta, se queda sin tipo
;   (ya se quito); lo leen p02:81A5 (9 bytes)
;   0xb4b5..0xb4be  (9 bytes)
DATA_ficha_B4B5:
	defb 005h,020h,098h,007h,002h,040h,0c7h,00ah,003h	; b4b5  . ...@...

; ----------------------------------------------------------------------
; DATOS ficha_B4BE:
;   [tipo][y][x][filas][columnas][banderas][0xC7][figura][bandera en 0xC580]:
;   p02:81A5 la copia; si 0xC580 + bandera ya esta puesta, se queda sin tipo
;   (ya se quito); lo leen p02:81A5 (9 bytes)
;   0xb4be..0xb4c7  (9 bytes)
DATA_ficha_B4BE:
	defb 005h,008h,028h,003h,008h,000h,0c7h,00ch,005h	; b4be  ..(......

; ----------------------------------------------------------------------
; DATOS ficha_B4C7:
;   [tipo][y][x][filas][columnas][banderas][0xC7][figura][bandera en 0xC580]:
;   p02:81A5 la copia; si 0xC580 + bandera ya esta puesta, se queda sin tipo
;   (ya se quito); lo leen p02:81A5 (9 bytes)
;   0xb4c7..0xb4d0  (9 bytes)
DATA_ficha_B4C7:
	defb 005h,068h,008h,006h,003h,000h,0c7h,016h,015h	; b4c7  .h.......

; ----------------------------------------------------------------------
; DATOS ficha_B4D0:
;   [tipo][y][x][filas][columnas][banderas][0xC7][figura][bandera en 0xC580]:
;   p02:81A5 la copia; si 0xC580 + bandera ya esta puesta, se queda sin tipo
;   (ya se quito); lo leen p02:81A5 (9 bytes)
;   0xb4d0..0xb4d9  (9 bytes)
DATA_ficha_B4D0:
	defb 004h,048h,068h,004h,004h,000h,0c7h,006h,006h	; b4d0  .Hh......

; ----------------------------------------------------------------------
; DATOS ficha_B4D9:
;   [tipo][y][x][filas][columnas][banderas][0xC7][figura][bandera en 0xC580]:
;   p02:81A5 la copia; si 0xC580 + bandera ya esta puesta, se queda sin tipo
;   (ya se quito); lo leen p02:81A5 (9 bytes)
;   0xb4d9..0xb4e2  (9 bytes)
DATA_ficha_B4D9:
	defb 004h,048h,028h,004h,004h,000h,0c7h,006h,009h	; b4d9  .H(......

; ----------------------------------------------------------------------
; DATOS ficha_B4E2:
;   [tipo][y][x][filas][columnas][banderas][0xC7][figura][bandera en 0xC580]:
;   p02:81A5 la copia; si 0xC580 + bandera ya esta puesta, se queda sin tipo
;   (ya se quito); lo leen p02:81A5 (9 bytes)
;   0xb4e2..0xb4eb  (9 bytes)
DATA_ficha_B4E2:
	defb 004h,028h,028h,004h,004h,000h,0c7h,006h,007h	; b4e2  .((......

; ----------------------------------------------------------------------
; DATOS ficha_B4EB:
;   [tipo][y][x][filas][columnas][banderas][0xC7][figura][bandera en 0xC580]:
;   p02:81A5 la copia; si 0xC580 + bandera ya esta puesta, se queda sin tipo
;   (ya se quito); lo leen p02:81A5 (9 bytes)
;   0xb4eb..0xb4f4  (9 bytes)
DATA_ficha_B4EB:
	defb 004h,048h,048h,004h,004h,040h,0c7h,006h,008h	; b4eb  .HH..@...

; ----------------------------------------------------------------------
; DATOS ficha_B4F4:
;   [tipo][y][x][filas][columnas][banderas][0xC7][figura][bandera en 0xC580]:
;   p02:81A5 la copia; si 0xC580 + bandera ya esta puesta, se queda sin tipo
;   (ya se quito); lo leen p02:81A5 (9 bytes)
;   0xb4f4..0xb4fd  (9 bytes)
DATA_ficha_B4F4:
	defb 004h,028h,028h,004h,004h,000h,0c7h,006h,00ah	; b4f4  .((......

; ----------------------------------------------------------------------
; DATOS ficha_B4FD:
;   [tipo][y][x][filas][columnas][banderas][0xC7][figura][bandera en 0xC580]:
;   p02:81A5 la copia; si 0xC580 + bandera ya esta puesta, se queda sin tipo
;   (ya se quito); lo leen p02:81A5 (9 bytes)
;   0xb4fd..0xb506  (9 bytes)
DATA_ficha_B4FD:
	defb 004h,068h,028h,004h,004h,000h,0c7h,006h,00bh	; b4fd  .h(......

; ----------------------------------------------------------------------
; DATOS ficha_B506:
;   [tipo][y][x][filas][columnas][banderas][0xC7][figura][bandera en 0xC580]:
;   p02:81A5 la copia; si 0xC580 + bandera ya esta puesta, se queda sin tipo
;   (ya se quito); lo leen p02:81A5 (9 bytes)
;   0xb506..0xb50f  (9 bytes)
DATA_ficha_B506:
	defb 004h,030h,070h,004h,004h,000h,0c7h,006h,00ch	; b506  .0p......

; ----------------------------------------------------------------------
; DATOS ficha_B50F:
;   [tipo][y][x][filas][columnas][banderas][0xC7][figura][bandera en 0xC580]:
;   p02:81A5 la copia; si 0xC580 + bandera ya esta puesta, se queda sin tipo
;   (ya se quito); lo leen p02:81A5 (9 bytes)
;   0xb50f..0xb518  (9 bytes)
DATA_ficha_B50F:
	defb 004h,048h,048h,004h,004h,000h,0c7h,006h,00dh	; b50f  .HH......

; ----------------------------------------------------------------------
; DATOS ficha_B518:
;   [tipo][y][x][filas][columnas][banderas][0xC7][figura][bandera en 0xC580]:
;   p02:81A5 la copia; si 0xC580 + bandera ya esta puesta, se queda sin tipo
;   (ya se quito); lo leen p02:81A5 (9 bytes)
;   0xb518..0xb521  (9 bytes)
DATA_ficha_B518:
	defb 003h,008h,048h,002h,004h,000h,0c7h,005h,00eh	; b518  ..H......

; ----------------------------------------------------------------------
; DATOS ficha_B521:
;   [tipo][y][x][filas][columnas][banderas][0xC7][figura][bandera en 0xC580]:
;   p02:81A5 la copia; si 0xC580 + bandera ya esta puesta, se queda sin tipo
;   (ya se quito); lo leen p02:81A5 (9 bytes)
;   0xb521..0xb52a  (9 bytes)
DATA_ficha_B521:
	defb 001h,048h,008h,004h,002h,040h,0c7h,000h,00fh	; b521  .H...@...

; ----------------------------------------------------------------------
; DATOS ficha_B52A:
;   [tipo][y][x][filas][columnas][banderas][0xC7][figura][bandera en 0xC580]:
;   p02:81A5 la copia; si 0xC580 + bandera ya esta puesta, se queda sin tipo
;   (ya se quito); lo leen p02:81A5 (9 bytes)
;   0xb52a..0xb533  (9 bytes)
DATA_ficha_B52A:
	defb 002h,048h,008h,004h,002h,000h,0c7h,002h,010h	; b52a  .H.......

; ----------------------------------------------------------------------
; DATOS ficha_B533:
;   [tipo][y][x][filas][columnas][banderas][0xC7][figura][bandera en 0xC580]:
;   p02:81A5 la copia; si 0xC580 + bandera ya esta puesta, se queda sin tipo
;   (ya se quito); lo leen p02:81A5 (9 bytes)
;   0xb533..0xb53c  (9 bytes)
DATA_ficha_B533:
	defb 002h,048h,098h,004h,002h,000h,0c7h,003h,010h	; b533  .H.......

; ----------------------------------------------------------------------
; DATOS ficha_B53C:
;   [tipo][y][x][filas][columnas][banderas][0xC7][figura][bandera en 0xC580]:
;   p02:81A5 la copia; si 0xC580 + bandera ya esta puesta, se queda sin tipo
;   (ya se quito); lo leen p02:81A5 (9 bytes)
;   0xb53c..0xb545  (9 bytes)
DATA_ficha_B53C:
	defb 005h,098h,048h,002h,004h,000h,0c7h,00dh,011h	; b53c  ..H......

; ----------------------------------------------------------------------
; DATOS ficha_B545:
;   [tipo][y][x][filas][columnas][banderas][0xC7][figura][bandera en 0xC580]:
;   p02:81A5 la copia; si 0xC580 + bandera ya esta puesta, se queda sin tipo
;   (ya se quito); lo leen p02:81A5 (9 bytes)
;   0xb545..0xb54e  (9 bytes)
DATA_ficha_B545:
	defb 005h,028h,008h,005h,005h,000h,0c7h,00eh,012h	; b545  .(.......

; ----------------------------------------------------------------------
; DATOS ficha_B54E:
;   [tipo][y][x][filas][columnas][banderas][0xC7][figura][bandera en 0xC580]:
;   p02:81A5 la copia; si 0xC580 + bandera ya esta puesta, se queda sin tipo
;   (ya se quito); lo leen p02:81A5 (9 bytes)
;   0xb54e..0xb557  (9 bytes)
DATA_ficha_B54E:
	defb 005h,078h,008h,004h,002h,000h,0c7h,00fh,013h	; b54e  .x.......

; ----------------------------------------------------------------------
; DATOS ficha_B557:
;   [tipo][y][x][filas][columnas][banderas][0xC7][figura][bandera en 0xC580]:
;   p02:81A5 la copia; si 0xC580 + bandera ya esta puesta, se queda sin tipo
;   (ya se quito); lo leen p02:81A5 (9 bytes)
;   0xb557..0xb560  (9 bytes)
DATA_ficha_B557:
	defb 005h,098h,028h,002h,004h,000h,0c7h,00dh,014h	; b557  ..(......

; ----------------------------------------------------------------------
; DATOS ficha_B560:
;   [tipo][y][x][filas][columnas][banderas][0xC7][figura][bandera en 0xC580]:
;   p02:81A5 la copia; si 0xC580 + bandera ya esta puesta, se queda sin tipo
;   (ya se quito); lo leen p02:81A5 (9 bytes)
;   0xb560..0xb569  (9 bytes)
DATA_ficha_B560:
	defb 006h,008h,018h,002h,004h,080h,0c7h,014h,016h	; b560  .........

; ----------------------------------------------------------------------
; DATOS ficha_B569:
;   [tipo][y][x][filas][columnas][banderas][0xC7][figura][bandera en 0xC580]:
;   p02:81A5 la copia; si 0xC580 + bandera ya esta puesta, se queda sin tipo
;   (ya se quito); lo leen p02:81A5 (9 bytes)
;   0xb569..0xb572  (9 bytes)
DATA_ficha_B569:
	defb 006h,098h,018h,002h,006h,080h,0c7h,018h,017h	; b569  .........

; ----------------------------------------------------------------------
; DATOS ficha_B572:
;   [tipo][y][x][filas][columnas][banderas][0xC7][figura][bandera en 0xC580]:
;   p02:81A5 la copia; si 0xC580 + bandera ya esta puesta, se queda sin tipo
;   (ya se quito); lo leen p02:81A5 (9 bytes)
;   0xb572..0xb57b  (9 bytes)
DATA_ficha_B572:
	defb 007h,048h,058h,004h,001h,080h,0c7h,015h,018h	; b572  .HX......

; ----------------------------------------------------------------------
; DATOS ficha_B57B:
;   [tipo][y][x][filas][columnas][banderas][0xC7][figura][bandera en 0xC580]:
;   p02:81A5 la copia; si 0xC580 + bandera ya esta puesta, se queda sin tipo
;   (ya se quito); lo leen p02:81A5 (9 bytes)
;   0xb57b..0xb584  (9 bytes)
DATA_ficha_B57B:
	defb 006h,068h,048h,002h,004h,080h,0c7h,014h,019h	; b57b  .hH......

; ----------------------------------------------------------------------
; DATOS ficha_B584:
;   [tipo][y][x][filas][columnas][banderas][0xC7][figura][bandera en 0xC580]:
;   p02:81A5 la copia; si 0xC580 + bandera ya esta puesta, se queda sin tipo
;   (ya se quito); lo leen p02:81A5 (9 bytes)
;   0xb584..0xb58d  (9 bytes)
DATA_ficha_B584:
	defb 007h,068h,070h,004h,001h,080h,0c7h,015h,01ah	; b584  .hp......

; ----------------------------------------------------------------------
; DATOS ficha_B58D:
;   [tipo][y][x][filas][columnas][banderas][0xC7][figura][bandera en 0xC580]:
;   p02:81A5 la copia; si 0xC580 + bandera ya esta puesta, se queda sin tipo
;   (ya se quito); lo leen p02:81A5 (9 bytes)
;   0xb58d..0xb596  (9 bytes)
DATA_ficha_B58D:
	defb 006h,068h,048h,002h,004h,080h,0c7h,014h,01bh	; b58d  .hH......

; ----------------------------------------------------------------------
; DATOS ficha_B596:
;   [tipo][y][x][filas][columnas][banderas][0xC7][figura][bandera en 0xC580]:
;   p02:81A5 la copia; si 0xC580 + bandera ya esta puesta, se queda sin tipo
;   (ya se quito); lo leen p02:81A5 (9 bytes)
;   0xb596..0xb59f  (9 bytes)
DATA_ficha_B596:
	defb 006h,068h,068h,002h,004h,080h,0c7h,014h,01ch	; b596  .hh......

; ----------------------------------------------------------------------
; DATOS ficha_B59F:
;   [tipo][y][x][filas][columnas][banderas][0xC7][figura][bandera en 0xC580]:
;   p02:81A5 la copia; si 0xC580 + bandera ya esta puesta, se queda sin tipo
;   (ya se quito); lo leen p02:81A5 (9 bytes)
;   0xb59f..0xb5a8  (9 bytes)
DATA_ficha_B59F:
	defb 005h,008h,058h,003h,00ah,000h,0c7h,017h,01dh	; b59f  ..X......

; ----------------------------------------------------------------------
; DATOS ficha_B5A8:
;   [tipo][y][x][filas][columnas][banderas][0xC7][figura][bandera en 0xC580]:
;   p02:81A5 la copia; si 0xC580 + bandera ya esta puesta, se queda sin tipo
;   (ya se quito); lo leen p02:81A5 (9 bytes)
;   0xb5a8..0xb5b1  (9 bytes)
DATA_ficha_B5A8:
	defb 009h,088h,018h,004h,004h,000h,0c7h,019h,01eh	; b5a8  .........

; ----------------------------------------------------------------------
; DATOS ficha_B5B1:
;   [tipo][y][x][filas][columnas][banderas][0xC7][figura][bandera en 0xC580]:
;   p02:81A5 la copia; si 0xC580 + bandera ya esta puesta, se queda sin tipo
;   (ya se quito); lo leen p02:81A5 (9 bytes)
;   0xb5b1..0xb5ba  (9 bytes)
DATA_ficha_B5B1:
	defb 00ah,050h,030h,002h,002h,080h,0c7h,01ah,01fh	; b5b1  .P0......

; ----------------------------------------------------------------------
; DATOS figuras_de_decorado: 27 punteros: la figura de cada ficha (su byte 7);
;   p02:81ED; lo leen p02:81F4 (54 bytes)
;   0xb5ba..0xb5f0  (54 bytes)
DATA_figuras_de_decorado:
	defb 002h,0b6h	; b5ba
	defb 002h,0b6h	; b5bc
	defb 01ah,0b6h	; b5be
	defb 012h,0b6h	; b5c0
	defb 00ah,0b6h	; b5c2
	defb 00ah,0b6h	; b5c4
	defb 022h,0b6h	; b5c6
	defb 032h,0b6h	; b5c8
	defb 053h,0b6h	; b5ca
	defb 0ddh,0b6h	; b5cc
	defb 08fh,0b6h	; b5ce
	defb 09dh,0b6h	; b5d0
	defb 0fbh,0b6h	; b5d2
	defb 013h,0b7h	; b5d4
	defb 01bh,0b7h	; b5d6
	defb 0bdh,0b6h	; b5d8
	defb 0c5h,0b6h	; b5da
	defb 034h,0b7h	; b5dc
	defb 04ah,0b7h	; b5de
	defb 05ah,0b7h	; b5e0
	defb 08ch,0b7h	; b5e2
	defb 094h,0b7h	; b5e4
	defb 0f0h,0b5h	; b5e6
	defb 098h,0b7h	; b5e8
	defb 0b6h,0b7h	; b5ea
	defb 0c2h,0b7h	; b5ec
	defb 0d2h,0b7h	; b5ee

; ----------------------------------------------------------------------
; DATOS figura_de_decorado_16: 3 columnas x 6 filas de numeros de dibujo que
;   p00:4EB5 pinta con transparencia; lo leen p02:8204 (18 bytes)
;   0xb5f0..0xb602  (18 bytes)
DATA_figura_de_decorado_16:
	defb 001h,002h,09ch	; b5f0
	defb 003h,004h,09eh	; b5f3
	defb 001h,002h,09fh	; b5f6
	defb 003h,004h,09fh	; b5f9
	defb 001h,002h,09fh	; b5fc
	defb 003h,004h,001h	; b5ff

; ----------------------------------------------------------------------
; DATOS figura_de_decorado_00: 2 columnas x 4 filas de numeros de dibujo que
;   p00:4EB5 pinta con transparencia; lo leen p02:8204 (8 bytes)
;   0xb602..0xb60a  (8 bytes)
DATA_figura_de_decorado_00:
	defb 030h,031h	; b602
	defb 032h,033h	; b604
	defb 034h,035h	; b606
	defb 036h,037h	; b608

; ----------------------------------------------------------------------
; DATOS figura_de_decorado_05: 4 columnas x 2 filas de numeros de dibujo que
;   p00:4EB5 pinta con transparencia; lo leen p02:8204 (8 bytes)
;   0xb60a..0xb612  (8 bytes)
DATA_figura_de_decorado_05:
	defb 038h,039h,03ah,03bh	; b60a
	defb 03ch,03dh,03eh,03fh	; b60e

; ----------------------------------------------------------------------
; DATOS figura_de_decorado_03: 2 columnas x 4 filas de numeros de dibujo que
;   p00:4EB5 pinta con transparencia; lo leen p02:8204 (8 bytes)
;   0xb612..0xb61a  (8 bytes)
DATA_figura_de_decorado_03:
	defb 040h,041h	; b612
	defb 042h,043h	; b614
	defb 044h,045h	; b616
	defb 046h,047h	; b618

; ----------------------------------------------------------------------
; DATOS figura_de_decorado_02: 2 columnas x 4 filas de numeros de dibujo que
;   p00:4EB5 pinta con transparencia; lo leen p02:8204 (8 bytes)
;   0xb61a..0xb622  (8 bytes)
DATA_figura_de_decorado_02:
	defb 040h,041h	; b61a
	defb 042h,043h	; b61c
	defb 044h,045h	; b61e
	defb 046h,047h	; b620

; ----------------------------------------------------------------------
; DATOS figura_de_decorado_06: 4 columnas x 4 filas de numeros de dibujo que
;   p00:4EB5 pinta con transparencia; lo leen p02:8204 (16 bytes)
;   0xb622..0xb632  (16 bytes)
DATA_figura_de_decorado_06:
	defb 050h,051h,052h,053h	; b622
	defb 054h,055h,056h,057h	; b626
	defb 058h,059h,05ah,05bh	; b62a
	defb 05ch,05dh,05eh,05fh	; b62e

; ----------------------------------------------------------------------
; DATOS figura_de_decorado_07: 3 columnas x 11 filas de numeros de dibujo que
;   p00:4EB5 pinta con transparencia; lo leen p02:8204 (33 bytes)
;   0xb632..0xb653  (33 bytes)
DATA_figura_de_decorado_07:
	defb 09ch,09bh,09ah	; b632
	defb 096h,00bh,007h	; b635
	defb 097h,003h,0a4h	; b638
	defb 096h,004h,0a3h	; b63b
	defb 097h,003h,0a2h	; b63e
	defb 096h,004h,0a3h	; b641
	defb 097h,003h,0a2h	; b644
	defb 096h,004h,0a3h	; b647
	defb 097h,003h,0a2h	; b64a
	defb 007h,00bh,0a3h	; b64d
	defb 0a0h,0a1h,0a4h	; b650

; ----------------------------------------------------------------------
; DATOS figura_de_decorado_08: 3 columnas x 20 filas de numeros de dibujo que
;   p00:4EB5 pinta con transparencia; lo leen p02:8204 (60 bytes)
;   0xb653..0xb68f  (60 bytes)
DATA_figura_de_decorado_08:
	defb 09ch,09bh,09ah	; b653
	defb 096h,00bh,007h	; b656
	defb 097h,003h,0a4h	; b659
	defb 096h,004h,0a3h	; b65c
	defb 097h,003h,0a2h	; b65f
	defb 096h,004h,0a3h	; b662
	defb 097h,003h,0a2h	; b665
	defb 096h,004h,0a3h	; b668
	defb 097h,003h,0a2h	; b66b
	defb 096h,004h,0a3h	; b66e
	defb 097h,003h,0a2h	; b671
	defb 096h,004h,0a3h	; b674
	defb 097h,003h,0a2h	; b677
	defb 096h,004h,0a3h	; b67a
	defb 097h,003h,0a2h	; b67d
	defb 096h,004h,0a3h	; b680
	defb 097h,003h,0a2h	; b683
	defb 096h,004h,0a3h	; b686
	defb 097h,00ch,005h	; b689
	defb 09dh,098h,099h	; b68c

; ----------------------------------------------------------------------
; DATOS figura_de_decorado_0A: 2 columnas x 7 filas de numeros de dibujo que
;   p00:4EB5 pinta con transparencia; lo leen p02:8204 (14 bytes)
;   0xb68f..0xb69d  (14 bytes)
DATA_figura_de_decorado_0A:
	defb 002h,065h	; b68f
	defb 001h,064h	; b691
	defb 002h,065h	; b693
	defb 001h,064h	; b695
	defb 002h,065h	; b697
	defb 00bh,064h	; b699
	defb 069h,06fh	; b69b

; ----------------------------------------------------------------------
; DATOS figura_de_decorado_0B: 4 columnas x 8 filas de numeros de dibujo que
;   p00:4EB5 pinta con transparencia; lo leen p02:8204 (32 bytes)
;   0xb69d..0xb6bd  (32 bytes)
DATA_figura_de_decorado_0B:
	defb 00ch,00bh,009h,00ah	; b69d
	defb 00ch,00ch,00ah,00bh	; b6a1
	defb 00bh,00bh,009h,00ch	; b6a5
	defb 002h,00ch,00ah,003h	; b6a9
	defb 002h,00bh,00ch,003h	; b6ad
	defb 001h,00ch,00bh,004h	; b6b1
	defb 002h,00bh,00ch,003h	; b6b5
	defb 001h,00ch,00bh,004h	; b6b9

; ----------------------------------------------------------------------
; DATOS figura_de_decorado_0F: 2 columnas x 4 filas de numeros de dibujo que
;   p00:4EB5 pinta con transparencia; lo leen p02:8204 (8 bytes)
;   0xb6bd..0xb6c5  (8 bytes)
DATA_figura_de_decorado_0F:
	defb 005h,006h	; b6bd
	defb 007h,008h	; b6bf
	defb 005h,006h	; b6c1
	defb 007h,008h	; b6c3

; ----------------------------------------------------------------------
; DATOS figura_de_decorado_10: 3 columnas x 8 filas de numeros de dibujo que
;   p00:4EB5 pinta con transparencia; lo leen p02:8204 (24 bytes)
;   0xb6c5..0xb6dd  (24 bytes)
DATA_figura_de_decorado_10:
	defb 006h,009h,0a2h	; b6c5
	defb 097h,004h,0a3h	; b6c8
	defb 096h,003h,0a2h	; b6cb
	defb 097h,004h,0a3h	; b6ce
	defb 096h,003h,0a2h	; b6d1
	defb 097h,004h,0a3h	; b6d4
	defb 096h,003h,0a2h	; b6d7
	defb 097h,004h,0a3h	; b6da

; ----------------------------------------------------------------------
; DATOS figura_de_decorado_09: 10 columnas x 3 filas de numeros de dibujo que
;   p00:4EB5 pinta con transparencia; lo leen p02:8204 (30 bytes)
;   0xb6dd..0xb6fb  (30 bytes)
DATA_figura_de_decorado_09:
	defb 06ah,06bh,06ah,06bh,06ah,06bh,06ah,06bh,06ah,06eh	; b6dd  jkjkjkjkjn
	defb 008h,007h,008h,007h,008h,007h,008h,007h,00ch,065h	; b6e7  .........e
	defb 070h,071h,070h,071h,070h,071h,070h,071h,001h,064h	; b6f1  pqpqpqpq.d

; ----------------------------------------------------------------------
; DATOS figura_de_decorado_0C: 8 columnas x 3 filas de numeros de dibujo que
;   p00:4EB5 pinta con transparencia; lo leen p02:8204 (24 bytes)
;   0xb6fb..0xb713  (24 bytes)
DATA_figura_de_decorado_0C:
	defb 00ch,00bh,009h,00ah,00ch,00bh,009h,00ah	; b6fb  ........
	defb 00bh,00ch,00ch,009h,00bh,00ch,00ch,009h	; b703  ........
	defb 065h,066h,065h,066h,065h,066h,065h,066h	; b70b  efefefef

; ----------------------------------------------------------------------
; DATOS figura_de_decorado_0D: 4 columnas x 2 filas de numeros de dibujo que
;   p00:4EB5 pinta con transparencia; lo leen p02:8204 (8 bytes)
;   0xb713..0xb71b  (8 bytes)
DATA_figura_de_decorado_0D:
	defb 005h,006h,005h,006h	; b713
	defb 007h,008h,007h,008h	; b717

; ----------------------------------------------------------------------
; DATOS figura_de_decorado_0E: 5 columnas x 5 filas de numeros de dibujo que
;   p00:4EB5 pinta con transparencia; lo leen p02:8204 (25 bytes)
;   0xb71b..0xb734  (25 bytes)
DATA_figura_de_decorado_0E:
	defb 005h,006h,005h,006h,065h	; b71b
	defb 007h,008h,007h,008h,065h	; b720
	defb 005h,006h,005h,006h,065h	; b725
	defb 007h,008h,007h,008h,065h	; b72a
	defb 005h,006h,005h,006h,065h	; b72f

; ----------------------------------------------------------------------
; DATOS figura_de_decorado_11: 2 columnas x 11 filas de numeros de dibujo que
;   p00:4EB5 pinta con transparencia; lo leen p02:8204 (22 bytes)
;   0xb734..0xb74a  (22 bytes)
DATA_figura_de_decorado_11:
	defb 09ah,09eh	; b734
	defb 00ch,094h	; b736
	defb 001h,095h	; b738
	defb 002h,094h	; b73a
	defb 001h,095h	; b73c
	defb 002h,094h	; b73e
	defb 001h,095h	; b740
	defb 002h,094h	; b742
	defb 001h,095h	; b744
	defb 009h,007h	; b746
	defb 0a0h,0a1h	; b748

; ----------------------------------------------------------------------
; DATOS figura_de_decorado_12: 2 columnas x 8 filas de numeros de dibujo que
;   p00:4EB5 pinta con transparencia; lo leen p02:8204 (16 bytes)
;   0xb74a..0xb75a  (16 bytes)
DATA_figura_de_decorado_12:
	defb 00ah,005h	; b74a
	defb 001h,094h	; b74c
	defb 002h,095h	; b74e
	defb 001h,094h	; b750
	defb 002h,095h	; b752
	defb 001h,094h	; b754
	defb 00ah,095h	; b756
	defb 098h,09fh	; b758

; ----------------------------------------------------------------------
; DATOS figura_de_decorado_13: 10 columnas x 5 filas de numeros de dibujo que
;   p00:4EB5 pinta con transparencia; lo leen p02:8204 (50 bytes)
;   0xb75a..0xb78c  (50 bytes)
DATA_figura_de_decorado_13:
	defb 005h,006h,005h,006h,005h,006h,005h,006h,064h,068h	; b75a  ........dh
	defb 068h,069h,068h,069h,068h,069h,068h,069h,068h,069h	; b764  hihihihihi
	defb 067h,06bh,06ah,06bh,06ah,06bh,06ah,06bh,067h,06ah	; b76e  gkjkjkjkgj
	defb 06ah,008h,007h,008h,007h,008h,007h,008h,06ah,064h	; b778  j.......jd
	defb 067h,003h,06ch,06dh,06ch,06dh,06ch,06dh,002h,065h	; b782  g.lmlmlm.e

; ----------------------------------------------------------------------
; DATOS figura_de_decorado_14: 4 columnas x 2 filas de numeros de dibujo que
;   p00:4EB5 pinta con transparencia; lo leen p02:8204 (8 bytes)
;   0xb78c..0xb794  (8 bytes)
DATA_figura_de_decorado_14:
	defb 020h,020h,020h,020h	; b78c
	defb 021h,021h,021h,021h	; b790

; ----------------------------------------------------------------------
; DATOS figura_de_decorado_15: 1 columnas x 4 filas de numeros de dibujo que
;   p00:4EB5 pinta con transparencia; lo leen p02:8204 (4 bytes)
;   0xb794..0xb798  (4 bytes)
DATA_figura_de_decorado_15:
	defb 022h	; b794
	defb 022h	; b795
	defb 022h	; b796
	defb 022h	; b797

; ----------------------------------------------------------------------
; DATOS figura_de_decorado_17: 10 columnas x 3 filas de numeros de dibujo que
;   p00:4EB5 pinta con transparencia; lo leen p02:8204 (30 bytes)
;   0xb798..0xb7b6  (30 bytes)
DATA_figura_de_decorado_17:
	defb 06ch,06bh,06ah,06bh,06ah,06bh,06ah,06bh,06ah,06eh	; b798  lkjkjkjkjn
	defb 066h,00ah,008h,008h,008h,007h,008h,007h,00ch,064h	; b7a2  f........d
	defb 067h,003h,074h,070h,071h,070h,071h,070h,001h,065h	; b7ac  g.tpqpqp.e

; ----------------------------------------------------------------------
; DATOS figura_de_decorado_18: 6 columnas x 2 filas de numeros de dibujo que
;   p00:4EB5 pinta con transparencia; lo leen p02:8204 (12 bytes)
;   0xb7b6..0xb7c2  (12 bytes)
DATA_figura_de_decorado_18:
	defb 020h,020h,020h,020h,020h,020h	; b7b6
	defb 021h,021h,021h,021h,021h,021h	; b7bc

; ----------------------------------------------------------------------
; DATOS figura_de_decorado_19: 4 columnas x 4 filas de numeros de dibujo que
;   p00:4EB5 pinta con transparencia; lo leen p02:8204 (16 bytes)
;   0xb7c2..0xb7d2  (16 bytes)
DATA_figura_de_decorado_19:
	defb 001h,002h,003h,004h	; b7c2
	defb 004h,003h,002h,001h	; b7c6
	defb 001h,002h,003h,004h	; b7ca
	defb 004h,003h,002h,001h	; b7ce

; ----------------------------------------------------------------------
; DATOS figura_de_decorado_1A: 2 columnas x 2 filas de numeros de dibujo que
;   p00:4EB5 pinta con transparencia; lo leen p02:8204 (4 bytes)
;   0xb7d2..0xb7d6  (4 bytes)
DATA_figura_de_decorado_1A:
	defb 010h,011h	; b7d2
	defb 012h,013h	; b7d4

; ======================================================================
; CODIGO 0xb7d6..0xb83b  (101 bytes)
; ======================================================================


golpea_a_la_ficha:
	call fuerza_segun_level		;b7d6   ; el dano: (LEVEL + 10) * la fuerza E, en BCD (p00:43D5); lo alto se resta de la vida (ix+0x0D) y lo bajo de ix+0x1D; a cero, muere (acarreo)
	ld a,(ix+01dh)		;b7d9   ; la fraccion (ix+0x1D) - lo bajo...
	sub l			;b7dc
	daa			;b7dd
	ld (ix+01dh),a		;b7de
	ld a,(ix+00dh)		;b7e1   ; ...y la vida - lo alto, con lo que se lleva
	cp 099h		;b7e4   ; con vida 0x99 o mas, no se le hace dano
	ret nc			;b7e6
	sbc a,h			;b7e7
	daa			;b7e8
	ld (ix+00dh),a		;b7e9
	ret nz			;b7ec   ; queda vida: sin acarreo
	scf			;b7ed   ; muerto
	ret			;b7ee
fuerza_segun_level:
	ld a,(0c12eh)		;b7ef   ; lee LEVEL, el nivel de Mitchel (BCD)
	add a,010h		;b7f2   ; LEVEL + 10...
	ld h,a			;b7f4   ; ...por la fuerza E (p00:43D5)
	jp 0413ah		;b7f5   ; p00:puente_multiplica_en_bcd
direccion_del_golpe:
	ld a,(0c38fh)		;b7f8   ; hacia donde sale despedido: con lo lanzado (2 o mas)...
	cp 002h		;b7fb
	jr c,L_B80D		;b7fd
	ld a,001h		;b7ff   ; ...segun su velocidad horizontal: 1 o 3...
	bit 7,(ix+00ah)		;b801
	jr nz,L_B809		;b805
	ld a,003h		;b807
L_B809:
	ld (ix+07eh),a		;b809
	ret			;b80c
L_B80D:
	xor a			;b80d   ; ...y con el golpe, segun la vertical: 0 o 2
	bit 7,(ix+008h)		;b80e
	jr nz,L_B816		;b812
	ld a,002h		;b814
L_B816:
	ld (ix+07eh),a		;b816
	ret			;b819
ficha_numero:
	ld d,(ix+01ch)		;b81a   ; IX = la ficha ix+0x1C (1-13) de 0xD000
	ld a,d			;b81d   ; la ficha ix+0x1C (1-13); 0, ninguna
	dec a			;b81e
	ret m			;b81f
	ld e,000h		;b820   ; (n-1)*0x80...
	srl d		;b822
	rr e		;b824
	ld ix,0d000h		;b826   ; apunta a las fichas de los enemigos (13 de 0x80)
	add ix,de		;b82a   ; ...desde 0xD000
	ret			;b82c
tabla_B83B:
	add a,a			;b82d   ; 4*A + ix+0x7F...
	add a,a			;b82e
	add a,(ix+07fh)		;b82f
	ld hl,0b83bh		;b832   ; tabla_B83B: 4x4 bytes: lo que p09:B82D devuelve segun 4*A + ix+0x7F
	ld c,a			;b835   ; ...en la tabla de p09:B83B
	ld b,000h		;b836
	add hl,bc			;b838
	ld a,(hl)			;b839
	ret			;b83a

; ----------------------------------------------------------------------
; DATOS tabla_B83B: 4x4 bytes: lo que p09:B82D devuelve segun 4*A + ix+0x7F
;   0xb83b..0xb84b  (16 bytes)
DATA_tabla_B83B:
	defb 000h,002h,001h,002h,001h,002h,000h,002h,002h,001h,002h,000h,002h,000h,002h,001h	; b83b  ................

; ======================================================================
; CODIGO 0xb84b..0xb915  (202 bytes)
; ======================================================================


lo_lanzado_da_a_la_ficha:
	ld c,(ix+000h)		;b84b   ; LO LANZADO LE DA A UN ENEMIGO: el tipo...
	call ficha_numero		;b84e   ; ficha_numero: IX = la ficha ix+0x1C (1-13) de 0xD000
	call 04140h		;b851   ; p00:puente_cambia_el_enemigo_del_panel
	call direccion_del_golpe		;b854   ; ...hacia donde sale...
	set 1,(ix+01eh)		;b857   ; ...golpeado (bit 1 de ix+0x1E)...
	ld hl,0c380h		;b85b   ; apunta a lo que lanza Mitchel (su ficha)
	ld a,(hl)			;b85e   ; ...con el boomerang, lo que le hace al boomerang...
	cp 003h		;b85f
	call z,efecto_sobre_lo_lanzado		;b861   ; efecto_sobre_lo_lanzado: lo que le hace el enemigo a lo lanzado (p00:4158)
	call efecto_de_lo_lanzado		;b864   ; ...y si le hace algo segun su tipo
	jp nc,L_B959		;b867
	ld a,(0c380h)		;b86a   ; lee lo que lanza Mitchel (su ficha)
	dec a			;b86d   ; segun lo lanzado: la piedra...
	jr z,L_B89E		;b86e
	dec a			;b870   ; ...la bola de fuego...
	jr z,L_B891		;b871
	dec a			;b873   ; ...el boomerang
	jr z,L_B878		;b874
	jr L_B89E		;b876
L_B878:
	push ix		;b878   ; el boomerang da una vez a cada enemigo (0xC398)
	pop hl			;b87a
	ld de,(0c398h)		;b87b   ; el ultimo al que dio (0xC398)...
	rst 20h			;b87f
	ret z			;b880   ; ...si es este, nada
	ld (0c398h),a		;b881
	ld a,01eh		;b884   ; el sonido 0x1E y la fuerza 0x18
	call 040e6h		;b886   ; p00:puente_sonido_si_juega
	ld e,018h		;b889
	call golpea_a_la_ficha		;b88b   ; golpea_a_la_ficha: el dano: (LEVEL + 10) * la fuerza E, en BCD (p00:43D5); lo alto se resta de la vida (ix+0x0D) y lo bajo de ix+0x1D; a cero, muere (acarreo)
	ret nc			;b88e   ; si no muere, nada mas
	jr da_la_experiencia		;b88f
L_B891:
	ld a,01eh		;b891   ; la bola de fuego: fuerza 6
	call 040e6h		;b893   ; p00:puente_sonido_si_juega
	ld e,006h		;b896
	call golpea_a_la_ficha		;b898   ; golpea_a_la_ficha: el dano: (LEVEL + 10) * la fuerza E, en BCD (p00:43D5); lo alto se resta de la vida (ix+0x0D) y lo bajo de ix+0x1D; a cero, muere (acarreo)
	ret nc			;b89b
	jr da_la_experiencia		;b89c
L_B89E:
	ld a,01eh		;b89e   ; la piedra: fuerza 0x15, y se acaba
	call 040e6h		;b8a0   ; p00:puente_sonido_si_juega
	ld e,015h		;b8a3
	call golpea_a_la_ficha		;b8a5   ; golpea_a_la_ficha: el dano: (LEVEL + 10) * la fuerza E, en BCD (p00:43D5); lo alto se resta de la vida (ix+0x0D) y lo bajo de ix+0x1D; a cero, muere (acarreo)
	ld hl,0c380h		;b8a8   ; la piedra se acaba
	ld (hl),000h		;b8ab
	ret nc			;b8ad
da_la_experiencia:
	ld a,(ix+000h)		;b8ae   ; EL ENEMIGO MUERE: la experiencia de p09:B915; con LEVEL por encima, solo una muerte de cada 16 la da
	ld c,a			;b8b1
	add a,a			;b8b2   ; las figuras (0x80 en adelante) no dan nada
	jr c,L_B90F		;b8b3
	ld b,000h		;b8b5
	ld hl,0b914h		;b8b7   ; p09:B915 + tipo - 1
	add hl,bc			;b8ba
	ld a,(0c12eh)		;b8bb   ; lee LEVEL, el nivel de Mitchel (BCD)
	cp (hl)			;b8be   ; comparado con lo que pide
	ld a,(hl)			;b8bf
	ld c,a			;b8c0
	jr c,L_B8CB		;b8c1   ; LEVEL por debajo o igual: siempre
	jr z,L_B8CB		;b8c3
	ld a,r		;b8c5   ; LEVEL por encima: una de cada 16 (R)
	and 00fh		;b8c7
	jr nz,L_B90F		;b8c9
L_B8CB:
	ld a,(ix+01ch)		;b8cb   ; los que van en grupo, solo el ultimo (ix+0x1C)
	dec a			;b8ce
	jp p,L_B90F		;b8cf
	ld a,c			;b8d2   ; EXP + lo que da...
	ld hl,(0c12bh)		;b8d3   ; lee EXP, la experiencia (BCD)
	add a,l			;b8d6
	daa			;b8d7
	ld l,a			;b8d8
	ld a,h			;b8d9
	adc a,000h		;b8da
	daa			;b8dc
	ld h,a			;b8dd
	jr nc,L_B8E8		;b8de   ; sin pasar de 9999
	ld hl,09999h		;b8e0   ; ...hasta 9999
	ld (0c12bh),hl		;b8e3   ; guarda EXP, la experiencia (BCD)
	jr L_B90C		;b8e6
L_B8E8:
	ld a,(0c12ch)		;b8e8   ; al cambiar las centenas de EXP...
	ld (0c12bh),hl		;b8eb   ; guarda EXP, la experiencia (BCD)
	cp h			;b8ee
	jr z,L_B90C		;b8ef
	ld hl,0c12eh		;b8f1   ; ...LEVEL + 1 (hasta 99)...
	ld a,(hl)			;b8f4
	add a,001h		;b8f5
	daa			;b8f7
	jr c,L_B90C		;b8f8   ; ya en 99, no sube
	ld (hl),a			;b8fa
	call 04146h		;b8fb   ; p00:puente_escribe_level
	call 04050h		;b8fe   ; p00:puente_borra_la_ventana_de_texto: LOS PUENTES. De seis bytes, `call X / jp 0x4215`: se llaman desde cualquier
	ld hl,0bcb3h		;b901   ; ...y "LEVEL が あがりました。" 0x80 cuadros
	call 04056h		;b904   ; p00:puente_rotulo
	ld a,080h		;b907
	ld (0c162h),a		;b909
L_B90C:
	call 0414ch		;b90c   ; la EXP en el panel
L_B90F:
	ld c,(ix+000h)		;b90f   ; y el enemigo muere
	jp 04152h		;b912   ; p00:puente_mata_la_ficha

; ----------------------------------------------------------------------
; DATOS experiencia_de_cada_enemigo: 68 bytes, uno por tipo de enemigo (BCD):
;   la experiencia que da al morir (p09:B8AE); con LEVEL por encima de ella,
;   solo da experiencia una muerte de cada 16 (R & 15 = 0)
;   0xb915..0xb959  (68 bytes)
DATA_experiencia_de_cada_enemigo:
	defb 001h,010h,008h,008h,020h,018h,001h,088h,005h,001h,015h,006h,002h,013h,014h,071h	; b915  .... ..........q
	defb 002h,008h,015h,018h,012h,031h,004h,012h,025h,028h,005h,014h,010h,010h,030h,010h	; b925  .....1..%(....0.
	defb 078h,074h,080h,009h,026h,030h,065h,010h,014h,027h,095h,012h,001h,023h,028h,026h	; b935  xt..&0e..'...#(&
	defb 024h,020h,008h,032h,035h,036h,038h,035h,099h,006h,007h,070h,000h,016h,030h,000h	; b945  $ .25685...p..0.
	defb 000h,085h,001h,002h	; b955

; ======================================================================
; CODIGO 0xb959..0xbae4  (395 bytes)
; ======================================================================


L_B959:
	ld a,01fh		;b959   ; el sonido 0x1F del golpe sin efecto
	call 040e6h		;b95b   ; p00:puente_sonido_si_juega
	ld hl,0c380h		;b95e   ; apunta a lo que lanza Mitchel (su ficha)
	ld a,(hl)			;b961   ; lo lanzado se acaba, salvo la bola de fuego (2) y el boomerang (3)
	sub 002h		;b962
	cp 002h		;b964
	ret c			;b966
	ld (hl),000h		;b967
	ret			;b969
efecto_sobre_lo_lanzado:
	push ix		;b96a   ; lo que le hace el enemigo a lo lanzado (p00:4158)
	push hl			;b96c
	pop ix		;b96d   ; IX = lo lanzado
	call 04158h		;b96f   ; p00:puente_rebota_lo_lanzado
	pop ix		;b972
	ret			;b974
efecto_de_lo_lanzado:
	ld hl,0c380h		;b975   ; apunta a lo que lanza Mitchel (su ficha)
	ld a,(ix+000h)		;b978   ; los tipos que no se dejan (acarreo: no se les hace nada)...
	sub 002h		;b97b
	ret z			;b97d   ; SLIPSLIME (0x02): lo lanzado no le hace nada
	sub 002h		;b97e
	ret z			;b980   ; CLUBMAN (0x04): lo lanzado no le hace nada
	dec a			;b981
	jr z,L_B9C7		;b982   ; MUDARMOR (0x05): se mira aparte (L_B9C7)
	dec a			;b984
	ret z			;b985   ; GARGOYLE (0x06): lo lanzado no le hace nada
	sub 005h		;b986
	ret z			;b988   ; REDSPIDER (0x0B): lo lanzado no le hace nada
	dec a			;b989
	ret z			;b98a   ; BIGSPIDER (0x0C): lo lanzado no le hace nada
	sub 002h		;b98b
	ret z			;b98d   ; MUDMASK (0x0E): lo lanzado no le hace nada
	dec a			;b98e
	ret z			;b98f   ; BOGGEDMAN (0x0F): lo lanzado no le hace nada
	sub 00ah		;b990
	ret z			;b992   ; BLOWMIRE (0x19): lo lanzado no le hace nada
	dec a			;b993
	jp z,L_BBAB		;b994   ; TWINMIRES (0x1A): se mira aparte (L_BBAB)
	sub 003h		;b997
	jr z,L_B9DF		;b999   ; THICKSKIN (0x1D): se mira aparte (L_B9DF)
	sub 002h		;b99b
	jr z,L_B9DF		;b99d   ; MRRUINS (0x1F): se mira aparte (L_B9DF)
	sub 002h		;b99f
	jr z,L_B9DF		;b9a1   ; CAVERNMAN (0x21): se mira aparte (L_B9DF)
	sub 008h		;b9a3
	jr z,L_B9D1		;b9a5   ; FIRETOTEM (0x29): se mira aparte (L_B9D1)
	dec a			;b9a7
	ret z			;b9a8   ; THE NASTY (0x2A): lo lanzado no le hace nada
	dec a			;b9a9
	ret z			;b9aa   ; BADPRIEST (0x2B): lo lanzado no le hace nada
	sub 003h		;b9ab
	ret z			;b9ad   ; MIREWORM (0x2E): lo lanzado no le hace nada
	sub 006h		;b9ae
	ret z			;b9b0   ; B FMAN (0x34): lo lanzado no le hace nada
	dec a			;b9b1
	ret z			;b9b2   ; D FMAN (0x35): lo lanzado no le hace nada
	sub 005h		;b9b3
	ret z			;b9b5   ; WHITEFIRE (0x3A): lo lanzado no le hace nada
	sub 004h		;b9b6
	ret z			;b9b8   ; MIREFROG (0x3E): lo lanzado no le hace nada
	cp 003h		;b9b9
	ret z			;b9bb   ; ROCK ROCK (0x41): lo lanzado no le hace nada
	sub 004h		;b9bc
	jr z,L_B9D8		;b9be   ; BIGFLOWER (0x42): se mira aparte (L_B9D8)
	dec a			;b9c0
	ret z			;b9c1   ; GRASSOGRE (0x43): lo lanzado no le hace nada
	dec a			;b9c2
	jr z,L_B9DF		;b9c3   ; BUCKLER (0x44): se mira aparte (L_B9DF)
	scf			;b9c5   ; los demas, si
	ret			;b9c6
L_B9C7:
	ld a,(hl)			;b9c7   ; un tipo solo con 0xC144
	dec a			;b9c8
	ret nz			;b9c9
	ld a,(0c144h)		;b9ca
	and a			;b9cd
	ret z			;b9ce
	scf			;b9cf
	ret			;b9d0
L_B9D1:
	ld a,(hl)			;b9d1   ; otro, solo con la piedra (3)...
	cp 003h		;b9d2
	scf			;b9d4
	ret z			;b9d5
	xor a			;b9d6
	ret			;b9d7
L_B9D8:
	ld a,(hl)			;b9d8   ; ...otro, solo con el 4
	cp 004h		;b9d9
	scf			;b9db
	ret z			;b9dc
	xor a			;b9dd
	ret			;b9de
L_B9DF:
	call lo_lanzado_hacia_donde		;b9df   ; otros, segun por donde les da (p09:B83B)
	call tabla_B83B		;b9e2
	sub 001h		;b9e5
	ret			;b9e7
lo_lanzado_hacia_donde:
	ld hl,0c388h		;b9e8   ; hacia donde va lo lanzado: arriba (velocidad vertical negativa)...
	ld c,000h		;b9eb
	bit 7,(hl)		;b9ed
	jr nz,L_BA02		;b9ef
	inc l			;b9f1
	inc l			;b9f2
	bit 7,(hl)		;b9f3   ; ...izquierda...
	ld c,002h		;b9f5
	jr nz,L_BA02		;b9f7
	ld a,(hl)			;b9f9   ; ...derecha o abajo
	dec l			;b9fa
	or (hl)			;b9fb
	ld c,003h		;b9fc
	jr nz,L_BA02		;b9fe
	ld c,001h		;ba00
L_BA02:
	ld a,c			;ba02
	ret			;ba03
la_ficha_toca_a_mitchel:
	ld c,(ix+000h)		;ba04   ; UN ENEMIGO TOCA A MITCHEL: el 0x41 y el 0x3D son distintos
	ld a,c			;ba07
	cp 041h		;ba08
	jp z,041a0h		;ba0a   ; p00:puente_persigue_a_mitchel_83A7
	cp 03dh		;ba0d
	jp z,041dch		;ba0f   ; p00:puente_cerca_de_mitchel_84C3
	call 04140h		;ba12   ; p00:puente_cambia_el_enemigo_del_panel
	set 0,(ix+01eh)		;ba15   ; tocado (bit 0 de ix+0x1E)
	ld a,(ix+000h)		;ba19   ; el tipo 0x0D solo pone 0xC161
	cp 00dh		;ba1c
	jr z,L_BA99		;ba1e
	ld hl,0c325h		;ba20   ; mientras parpadea no le pasa nada...
	ld a,(hl)			;ba23
	and a			;ba24
	ret nz			;ba25
	ld (hl),014h		;ba26   ; ...si no, parpadea 0x14 cuadros...
	call empuja_a_mitchel		;ba28   ; ...sale empujado...
	ld a,00fh		;ba2b   ; ...con el sonido 0x0F...
	call 040e6h		;ba2d   ; p00:puente_sonido_si_juega
	ld hl,0bc4eh		;ba30   ; ...y pierde la fuerza del enemigo (p09:BC4F + tipo - 1; las figuras, p09:BC93)
	ld a,(ix+000h)		;ba33
	bit 7,a		;ba36
	jr z,L_BA3D		;ba38
	ld hl,0bc92h		;ba3a
L_BA3D:
	and 07fh		;ba3d
	call 0408ch		;ba3f   ; p00:puente_hl_mas_a
	ld de,0c129h		;ba42   ; apunta a LIFE, la vida de Mitchel (BCD)
	ld a,(de)			;ba45   ; LIFE - la fuerza (BCD)
	sub (hl)			;ba46
	daa			;ba47
	ld (de),a			;ba48
	inc e			;ba49
	ld a,(de)			;ba4a
	sbc a,000h		;ba4b
	daa			;ba4d
	ld (de),a			;ba4e
	jp c,041a6h		;ba4f   ; p00:puente_mitchel_muere
	jp nz,0415eh		;ba52   ; p00:puente_escribe_life
	dec e			;ba55
	ld a,(de)			;ba56   ; a cero...
	and a			;ba57
	jp z,041a6h		;ba58   ; p00:puente_mitchel_muere
	cp 006h		;ba5b
	jp nc,0415eh		;ba5d   ; p00:puente_escribe_life
	ld a,028h		;ba60   ; ...muere
	call 040e6h		;ba62   ; p00:puente_sonido_si_juega
	jp 0415eh		;ba65   ; p00:puente_escribe_life
empuja_a_mitchel:
	call 040e0h		;ba68   ; p00:puente_posicion_de_mitchel
	ld hl,0c163h		;ba6b   ; EL EMPUJON: 4 pasos...
	ld (hl),004h		;ba6e
	inc hl			;ba70
	ld bc,00000h		;ba71
	ld a,(ix+003h)		;ba74   ; ...hacia el lado contrario del enemigo, en el eje donde esten mas lejos
	sub e			;ba77
	jr nc,L_BA7D		;ba78
	neg		;ba7a
	inc c			;ba7c
L_BA7D:
	ld e,a			;ba7d   ; E = la distancia en y (C = 1 si el enemigo esta por encima); la distancia en x (B = 1 si esta a la izquierda)...
	ld a,(ix+005h)		;ba7e
	sub d			;ba81
	jr nc,L_BA87		;ba82
	neg		;ba84
	inc b			;ba86
L_BA87:
	cp e			;ba87   ; ...si la de x es menor, en vertical: 0 (arriba) o 1 (abajo) a 0xC164...
	jr nc,L_BA91		;ba88
	xor a			;ba8a
	dec c			;ba8b
	jr nz,L_BA8F		;ba8c
	inc a			;ba8e
L_BA8F:
	ld (hl),a			;ba8f
	ret			;ba90
L_BA91:
	ld a,003h		;ba91   ; ...si no, en horizontal: 3 o 2
	dec b			;ba93
	jr z,L_BA97		;ba94
	dec a			;ba96
L_BA97:
	ld (hl),a			;ba97
	ret			;ba98
L_BA99:
	ld a,001h		;ba99   ; 0xC161 = 1
	ld (0c161h),a		;ba9b
	ret			;ba9e
golpe_a_la_ficha:
	ld a,01eh		;ba9f   ; MITCHEL GOLPEA A UN ENEMIGO: el sonido 0x1E...
	call 040e6h		;baa1   ; p00:puente_sonido_si_juega
	ld c,(ix+000h)		;baa4
	call ficha_numero		;baa7   ; ficha_numero: IX = la ficha ix+0x1C (1-13) de 0xD000
	call 04140h		;baaa   ; p00:puente_cambia_el_enemigo_del_panel
	ld a,(0c306h)		;baad   ; lee hacia donde mira Mitchel (0 arriba, 1 abajo, 2 izquierda, 3 derecha)
	ld hl,0bae4h		;bab0   ; byte_7e_BAE4: 4 bytes: lo que p09:BAB0 pone en ix+0x7E segun la direccion de Mitchel (0xC306)
	call 0408ch		;bab3   ; p00:puente_hl_mas_a
	ld a,(hl)			;bab6   ; ...hacia donde sale...
	ld (ix+07eh),a		;bab7
	set 1,(ix+01eh)		;baba
	ld a,001h		;babe   ; ...0xC324 = 1...
	ld (0c324h),a		;bac0
	call sirve_el_arma		;bac3   ; ...y si esa arma le hace algo
	ld a,01fh		;bac6   ; sin efecto, el sonido 0x1F
	jp nc,040e6h		;bac8   ; p00:puente_sonido_si_juega
	call armas_especiales		;bacb   ; y la espada de luz, el hacha y el arpon, ademas, por su lado
	ld a,01fh		;bace
	jp nc,040e6h		;bad0   ; p00:puente_sonido_si_juega
	ld a,(0c140h)		;bad3   ; la fuerza del arma (p09:BCA7)...
	ld hl,0bca7h		;bad6   ; fuerza_de_cada_arma: 12 bytes (BCD), uno por arma de SHOT1 (0xC140, 0 el puno): lo que p09:BAD6 pasa a p09:B7D6 al golpear
	call 0408ch		;bad9   ; p00:puente_hl_mas_a
	ld e,(hl)			;badc
	call golpea_a_la_ficha		;badd   ; ...el dano...
	ret nc			;bae0
	jp da_la_experiencia		;bae1   ; ...y si muere, la experiencia

; ----------------------------------------------------------------------
; DATOS byte_7e_BAE4: 4 bytes: lo que p09:BAB0 pone en ix+0x7E segun la
;   direccion de Mitchel (0xC306)
;   0xbae4..0xbae8  (4 bytes)
DATA_byte_7e_BAE4:
	defb 002h,000h,001h,003h	; bae4

; ======================================================================
; CODIGO 0xbae8..0xbb90  (168 bytes)
; ======================================================================


armas_especiales:
	ld c,(ix+000h)		;bae8   ; la espada de luz (4), el hacha (5) y el arpon (0x0B) van aparte
	ld a,(0c140h)		;baeb   ; lee SHOT1, el arma que se lleva (0 el puno)
	cp 004h		;baee   ; el objeto 0x04, ひかりのけん?
	jr z,L_BAFC		;baf0
	cp 005h		;baf2   ; el objeto 0x05, おの?
	jr z,L_BB07		;baf4
	cp 00bh		;baf6   ; el objeto 0x0B, もり?
	jr z,L_BB0B		;baf8
	scf			;bafa
	ret			;bafb
L_BAFC:
	ld a,058h		;bafc   ; la espada de luz: solo los tipos 0x59 en adelante (ninguno de los 68 que hay)
	cp c			;bafe
	scf			;baff
	ret c			;bb00
	inc a			;bb01
L_BB02:
	cp c			;bb02
	scf			;bb03
	ret z			;bb04
	xor a			;bb05
	ret			;bb06
L_BB07:
	ld a,01eh		;bb07   ; el hacha: los tipos 0x1E (GRIZZLY) en adelante
	jr L_BB02		;bb09
L_BB0B:
	ld a,c			;bb0b   ; el arpon: solo 0x34 y 0x35 (B F MAN y D F MAN)
	sub 034h		;bb0c
	scf			;bb0e
	ret z			;bb0f
	dec a			;bb10
	ret z			;bb11
	xor a			;bb12
	ret			;bb13
sirve_el_arma:
	ld a,(0c140h)		;bb14   ; QUE ARMA LE HACE DANO A CADA ENEMIGO: acarreo si sirve
	ld c,a			;bb17
	ld a,(ix+000h)		;bb18
	cp 002h		;bb1b
	jr z,L_BB89		;bb1d
	cp 004h		;bb1f
	jr z,$+124		;bb21
	cp 005h		;bb23
	ret z			;bb25   ; cuerpo a cuerpo no le hace dano nada
	cp 006h		;bb26
	jr z,L_BB89		;bb28
	cp 00bh		;bb2a
	jr z,L_BB82		;bb2c
	cp 00ch		;bb2e
	jr z,$+103		;bb30
	cp 00eh		;bb32
	jr z,L_BB89		;bb34
	cp 00fh		;bb36
	jr z,L_BB89		;bb38
	cp 019h		;bb3a
	jr z,L_BB89		;bb3c
	cp 01ah		;bb3e
	jr z,$+107		;bb40
	cp 01dh		;bb42
	jr z,$+124		;bb44
	cp 01eh		;bb46
	jr z,$+106		;bb48
	cp 01fh		;bb4a
	jr z,$+116		;bb4c
	cp 021h		;bb4e
	jr z,$+112		;bb50
	cp 029h		;bb52
	ret z			;bb54   ; cuerpo a cuerpo no le hace dano nada
	cp 02ah		;bb55
	ret z			;bb57   ; cuerpo a cuerpo no le hace dano nada
	cp 02bh		;bb58
	ret z			;bb5a   ; cuerpo a cuerpo no le hace dano nada
	cp 02eh		;bb5b
	jr z,L_BB89		;bb5d
	cp 034h		;bb5f
	jr z,$+88		;bb61
	cp 035h		;bb63
	jr z,$+84		;bb65
	cp 03ah		;bb67
	jr z,$+59		;bb69
	cp 03bh		;bb6b
	jr z,$+55		;bb6d
	cp 03dh		;bb6f
	ret z			;bb71   ; cuerpo a cuerpo no le hace dano nada
	cp 03eh		;bb72
	jr z,L_BB89		;bb74
	cp 042h		;bb76
	ret z			;bb78   ; cuerpo a cuerpo no le hace dano nada
	cp 043h		;bb79
	ret z			;bb7b   ; cuerpo a cuerpo no le hace dano nada
	cp 044h		;bb7c
	jr z,$+66		;bb7e
	scf			;bb80   ; los tipos que no estan en la lista: cualquiera
	ret			;bb81
L_BB82:
	ld a,c			;bb82   ; REDSPIDER: el garrote (3); el puno no...
	cp 003h		;bb83
	scf			;bb85
	ret z			;bb86
	and a			;bb87
	ret z			;bb88
L_BB89:
	ld a,c			;bb89   ; ...o la garra (7): SLIPSLIME, GARGOYLE, MUDMASK, BOGGEDMAN, BLOWMIRE, MIREWORM, MIREFROG
	cp 007h		;bb8a
	scf			;bb8c
	ret z			;bb8d
	and a			;bb8e
	ret			;bb8f

; ----------------------------------------------------------------------
; DATOS codigo_BB90: codigo que no llama nadie: acarreo si C es 3 (como
;   p09:BBA4 con el 4)
;   0xbb90..0xbb97  (7 bytes)
DATA_codigo_BB90:
	defb 079h,0feh,003h,037h,0c8h,0afh,0c9h	; bb90

; ======================================================================
; CODIGO 0xbb97..0xbc4f  (184 bytes)
; ======================================================================


L_BB97:
	ld a,c			;bb97   ; BIGSPIDER: el cuchillo (1)
	dec a			;bb98
	scf			;bb99
	ret z			;bb9a
	xor a			;bb9b
	ret			;bb9c
L_BB9D:
	ld a,c			;bb9d   ; CLUBMAN: ROD (2)
	cp 002h		;bb9e
	scf			;bba0
	ret z			;bba1
	xor a			;bba2
	ret			;bba3
L_BBA4:
	ld a,c			;bba4   ; WHITEFIRE y WHITEOGRE: la espada de luz (4)
	cp 004h		;bba5
	scf			;bba7
	ret z			;bba8
	xor a			;bba9
	ret			;bbaa
L_BBAB:
	ld a,(0c357h)		;bbab   ; TWINMIRES: con el objeto 0x18 (おまもり) en la mano, cualquiera
	and a			;bbae
	ret z			;bbaf
	scf			;bbb0
	ret			;bbb1
L_BBB2:
	ld a,c			;bbb2   ; GRIZZLY: el hacha (5)
	cp 005h		;bbb3
	scf			;bbb5
	ret z			;bbb6
	xor a			;bbb7
	ret			;bbb8
L_BBB9:
	ld a,c			;bbb9   ; B F MAN y D F MAN: el arpon (0x0B)
	cp 00bh		;bbba
	scf			;bbbc
	ret z			;bbbd
	xor a			;bbbe
	ret			;bbbf
L_BBC0:
	ld a,(0c306h)		;bbc0   ; THICKSKIN, MR RUINS, CAVERNMAN y BUCKLER: segun por donde se le de (p09:B83B)
	call tabla_B83B		;bbc3
	sub 001h		;bbc6
	ret			;bbc8
recoge_objeto:
	ld a,(ix+000h)		;bbc9
	ld c,a			;bbcc
	ld a,c			;bbcd
	cp 025h		;bbce   ; 0x25: alguien que habla (p00:4170 -> p01:7ED9)
	jr z,L_BC3F		;bbd0
	cp 026h		;bbd2   ; 0x26: oro (p09:BC1C)
	jr z,recoge_oro		;bbd4
	cp 00dh		;bbd6
	jr z,L_BBEF		;bbd8
	cp 01dh		;bbda
	jr nz,L_BBF4		;bbdc
	ld a,(ix+003h)		;bbde
	ld hl,0c370h		;bbe1
	cp 060h		;bbe4
	jr nc,L_BBE9		;bbe6
	inc hl			;bbe8
L_BBE9:
	ld (hl),000h		;bbe9
	ld a,01dh		;bbeb
	jr L_BBF4		;bbed
L_BBEF:
	ld hl,0c373h		;bbef   ; el 0x0D: 0xC373 = 0
	ld (hl),000h		;bbf2
L_BBF4:
	ld a,c			;bbf4
	cp 00ah		;bbf5   ; con cuatro boomerangs (0xC349) no se coge otro
	jr nz,L_BBFF		;bbf7
	ld a,(0c349h)		;bbf9   ; lee cuantos objetos 0x0A se llevan (BCD; 0xFF sin cuenta)
	cp 004h		;bbfc
	ret nc			;bbfe
L_BBFF:
	ld a,c			;bbff   ; el objeto y cuantos...
	ld b,(ix+006h)		;bc00
	call 04176h		;bc03   ; p00:puente_da_objeto_b: p01:79D0: da el objeto A, B unidades (al recogerlo del suelo, p09:BC03)
	ld a,027h		;bc06   ; ...el sonido 0x27...
	call 040e6h		;bc08   ; p00:puente_sonido_si_juega
	ld a,03ch		;bc0b   ; ...Mitchel parpadea 0x3C cuadros...
	ld (0c16dh),a		;bc0d
	call 04050h		;bc10   ; p00:puente_borra_la_ventana_de_texto: LOS PUENTES. De seis bytes, `call X / jp 0x4215`: se llaman desde cualquier
	ld a,(ix+000h)		;bc13   ; ...y el nombre en la ventana de texto
	call 041fah		;bc16   ; p00:puente_escribe_has_cogido
	jp 04164h		;bc19   ; p00:puente_quita_un_objeto_del_suelo
recoge_oro:
	ld a,026h		;bc1c   ; el sonido 0x26
	call 040e6h		;bc1e   ; p00:puente_sonido_si_juega
	ld hl,0c135h		;bc21   ; GOLD (0xC135-0xC136, BCD) + B; 9999 como mucho
	ld a,(hl)			;bc24   ; GOLD + lo que lleva la bolsa (BCD)
	add a,(ix+006h)		;bc25
	daa			;bc28
	ld (hl),a			;bc29
	inc l			;bc2a
	ld a,(hl)			;bc2b
	adc a,000h		;bc2c
	daa			;bc2e
	ld (hl),a			;bc2f
	jp nc,L_BC39		;bc30
	ld hl,09999h		;bc33   ; hasta 9999
	ld (0c135h),hl		;bc36   ; guarda GOLD, los dos bytes bajos (BCD)
L_BC39:
	call 04164h		;bc39   ; p00:puente_quita_un_objeto_del_suelo
	jp 0416ah		;bc3c   ; p00:puente_escribe_gold
L_BC3F:
	ld a,(ix+002h)		;bc3f   ; alguien que habla: una vez...
	and a			;bc42
	ret nz			;bc43
	ld (ix+002h),001h		;bc44   ; ...y la conversacion de la pantalla
	ld (ix+001h),002h		;bc48
	jp 04170h		;bc4c   ; p00:puente_conversacion_de_la_pantalla

; ----------------------------------------------------------------------
; DATOS fuerza_de_cada_enemigo: 68 bytes, uno por tipo de enemigo: la fuerza
;   (STR) que se ve en el panel; p01:6287 con 0xBC4F + tipo - 1; lo leen
;   p01:628A (68 bytes)
;   0xbc4f..0xbc93  (68 bytes)
DATA_fuerza_de_cada_enemigo:
	defb 001h,010h,008h,004h,015h,010h,001h,038h,004h,001h,015h,003h,002h,013h,014h,024h	; bc4f  .......8.......$
	defb 002h,003h,005h,006h,010h,022h,004h,010h,018h,028h,005h,006h,007h,010h,032h,023h	; bc5f  ....."...(....2#
	defb 048h,012h,042h,009h,059h,048h,044h,009h,008h,020h,040h,012h,024h,022h,030h,018h	; bc6f  H.B.YHD.. @.$"0.
	defb 022h,020h,008h,024h,030h,025h,025h,029h,045h,012h,009h,028h,025h,025h,025h,000h	; bc7f  " .$0%%)E..(%%%.
	defb 000h,040h,001h,002h	; bc8f

; ----------------------------------------------------------------------
; DATOS sobra_BC93: 20 bytes detras de la fuerza de cada enemigo que no lee
;   nadie
;   0xbc93..0xbca7  (20 bytes)
DATA_sobra_BC93:
	defb 001h,018h,001h,005h,002h,001h,001h,002h,003h,001h,001h,001h,004h,018h,016h,003h	; bc93  ................
	defb 003h,001h,001h,001h	; bca3

; ----------------------------------------------------------------------
; DATOS fuerza_de_cada_arma: 12 bytes (BCD), uno por arma de SHOT1 (0xC140, 0
;   el puno): lo que p09:BAD6 pasa a p09:B7D6 al golpear
;   0xbca7..0xbcb3  (12 bytes)
DATA_fuerza_de_cada_arma:
	defb 010h,015h,012h,018h,020h,025h,030h,020h,015h,020h,018h,020h	; bca7  .... %0 . .

; ----------------------------------------------------------------------
; DATOS subes_de_nivel: [x][y] "LEVEL が あがりました。" 0xFF: lo que p09:B901 escribe
;   al subir de nivel
;   0xbcb3..0xbcc7  (20 bytes)
DATA_subes_de_nivel:
	defb 018h,0b8h,04ch,045h,056h,045h,04ch,000h,060h,03ch,000h,05bh,060h,03ch,082h,079h	; bcb3  ..LEVEL.`<.[`<.y
	defb 066h,06ah,03eh,0ffh	; bcc3

; ======================================================================
; CODIGO 0xbcc7..0xbd0e  (71 bytes)
; ======================================================================


L_BCC7:
	ld a,(0c133h)		;bcc7   ; LOS CHOQUES DEL CUADRO: con algo en marcha, ninguno
	and a			;bcca
	ret nz			;bccb
	call toca_los_objetos		;bccc   ; los objetos del suelo...
	call lo_lanzado_toca_a_mitchel		;bccf   ; ...lo lanzado contra Mitchel y contra los enemigos...
	call lo_lanzado_contra_las_fichas		;bcd2
	call golpeando		;bcd5   ; ...el golpe...
	call lo_de_0xC800		;bcd8   ; ...lo de 0xC800...
	call fichas_contra_mitchel		;bcdb   ; ...los enemigos contra Mitchel...
	call pantallas_73_a_77		;bcde   ; ...y las pantallas 0x73-0x77
	jp L_BE92		;bce1
caja_de_la_ficha:
	ld a,(ix+000h)		;bce4   ; las figuras (bit 7): 4x4
	and a			;bce7
	jp m,L_BCFD		;bce8
	cp 041h		;bceb   ; el 0x41: 0x12x0x12 (o 0x1B de alto)
	jr z,L_BD01		;bced
	add a,a			;bcef   ; p09:BD0C + 2*tipo
	ld hl,0bd0ch		;bcf0
	add a,l			;bcf3
	ld l,a			;bcf4
	jr nc,L_BCF8		;bcf5
	inc h			;bcf7
L_BCF8:
	ld a,(hl)			;bcf8
	inc hl			;bcf9
	ld h,(hl)			;bcfa
	ld l,a			;bcfb
	ret			;bcfc
L_BCFD:
	ld hl,00404h		;bcfd
	ret			;bd00
L_BD01:
	ld hl,01212h		;bd01
	ld a,(0c125h)		;bd04   ; lee la PANTALLA
	cp 073h		;bd07   ; la pantalla 0x73?
	ret z			;bd09
	ld hl,0121bh		;bd0a
	ret			;bd0d

; ----------------------------------------------------------------------
; DATOS caja_de_cada_enemigo: 68 parejas [ancho][alto], una por tipo de
;   enemigo: su caja de choque; p09:BCF0 con 0xBD0C + 2*tipo
;   0xbd0e..0xbd96  (136 bytes)
DATA_caja_de_cada_enemigo:
	defb 006h,006h,006h,006h,006h,006h,00eh,00eh,00eh,00eh,006h,006h,006h,006h,006h,006h	; bd0e  ................
	defb 006h,006h,006h,006h,00eh,00eh,00eh,00eh,006h,006h,006h,006h,006h,006h,006h,006h	; bd1e  ................
	defb 006h,006h,006h,006h,006h,006h,006h,006h,006h,006h,00eh,00eh,006h,006h,006h,006h	; bd2e  ................
	defb 006h,006h,012h,012h,006h,006h,006h,006h,006h,006h,00eh,00eh,00eh,00eh,006h,006h	; bd3e  ................
	defb 00eh,00eh,006h,006h,00eh,00eh,006h,006h,006h,006h,00eh,00eh,00eh,00eh,006h,006h	; bd4e  ................
	defb 006h,006h,00eh,00eh,01eh,01eh,006h,006h,006h,006h,006h,006h,006h,006h,006h,006h	; bd5e  ................
	defb 006h,006h,006h,006h,00eh,00eh,00eh,00eh,00eh,00eh,006h,006h,006h,006h,012h,012h	; bd6e  ................
	defb 012h,012h,006h,006h,006h,006h,006h,006h,012h,012h,006h,006h,00eh,006h,006h,006h	; bd7e  ................
	defb 006h,006h,01ah,01ah,006h,006h,006h,006h	; bd8e  ........

; ======================================================================
; CODIGO 0xbd96..0xbec4  (302 bytes)
; ======================================================================


distancia_en_y:
	ld a,(ix+003h)		;bd96   ; choca si |dy| < L...
	sub e			;bd99
	jr nc,L_BD9E		;bd9a
	neg		;bd9c
L_BD9E:
	cp l			;bd9e
	ret nc			;bd9f
	ld a,(ix+005h)		;bda0   ; ...y |dx| < H (acarreo)
	sub d			;bda3
	jr nc,L_BDA8		;bda4
	neg		;bda6
L_BDA8:
	cp h			;bda8
	ret			;bda9
pantallas_73_a_77:
	ld a,(0c125h)		;bdaa   ; lee la PANTALLA
	sub 073h		;bdad   ; LAS PANTALLAS 0x73-0x77: golpeando (estado 5 u 8)...
	cp 005h		;bdaf
	ret nc			;bdb1
	ld a,(0c324h)		;bdb2
	and a			;bdb5
	ret nz			;bdb6
	ld a,(0c300h)		;bdb7   ; lee el estado de Mitchel
	cp 008h		;bdba
	jr z,L_BDC1		;bdbc
	cp 005h		;bdbe
	ret nz			;bdc0
L_BDC1:
	call 040e0h		;bdc1   ; p00:puente_posicion_de_mitchel
	ld a,e			;bdc4   ; ...en una casilla justa...
	and 007h		;bdc5
	ret nz			;bdc7
	ld a,(0c306h)		;bdc8   ; lee hacia donde mira Mitchel (0 arriba, 1 abajo, 2 izquierda, 3 derecha)
	cp 002h		;bdcb   ; mira a la izquierda?
	ret nc			;bdcd
	and a			;bdce
	ld a,0f6h		;bdcf   ; ...la casilla de delante...
	jr z,L_BDD5		;bdd1
	ld a,008h		;bdd3
L_BDD5:
	add a,e			;bdd5
	ld l,a			;bdd6
	ld a,d			;bdd7
	and 0f0h		;bdd8
	sub 008h		;bdda
	ld h,a			;bddc
	ld d,a			;bddd
	call 041cah		;bdde   ; p00:puente_casilla_en_ram
	ld a,(hl)			;bde1   ; ...si es 0xF0 (pared)...
	cp 0f0h		;bde2
	ret nz			;bde4
	call delante_segun_la_direccion		;bde5
	ld b,003h		;bde8   ; ...se rompe: tres filas de dos casillas a 0xF1...
L_BDEA:
	ld a,0f1h		;bdea
	ld (hl),a			;bdec
	inc hl			;bded
	ld (hl),a			;bdee
	ld a,01fh		;bdef
	call 0408ch		;bdf1   ; p00:puente_hl_mas_a
	djnz L_BDEA		;bdf4
	ld a,020h		;bdf6   ; ...con el sonido 0x20...
	call 040e6h		;bdf8   ; p00:puente_sonido_si_juega
	ld hl,010a8h		;bdfb   ; ...y se pinta abierta
	ld bc,01018h		;bdfe
	ld a,001h		;be01
	jp 041f4h		;be03   ; p00:puente_hmmm
delante_segun_la_direccion:
	ld a,(0c306h)		;be06   ; lee hacia donde mira Mitchel (0 arriba, 1 abajo, 2 izquierda, 3 derecha)
	and a			;be09   ; hacia abajo: 8 mas
	jr z,L_BE11		;be0a
	ld a,e			;be0c
	add a,008h		;be0d
	ld e,a			;be0f
	ret			;be10
L_BE11:
	ld bc,0ffe0h		;be11   ; hacia arriba: una fila menos y 0x18 arriba
	add hl,bc			;be14
	ld a,e			;be15
	sub 018h		;be16
	ld e,a			;be18
	ret			;be19
lo_de_0xC800:
	ld a,(0c152h)		;be1a   ; con 0xC152...
	and a			;be1d
	ret z			;be1e
	ld hl,0c800h		;be1f   ; ...lo de 0xC800, en su (y, x)...
	ld a,(hl)			;be22
	and a			;be23
	ret z			;be24
	inc l			;be25
	ld e,(hl)			;be26
	inc l			;be27
	ld d,(hl)			;be28
	ld ix,0d000h		;be29   ; apunta a las fichas de los enemigos (13 de 0x80)
	ld b,00dh		;be2d   ; ...contra las 13 fichas
L_BE2F:
	ld a,(ix+000h)		;be2f   ; lee el tipo del enemigo
	cp 043h		;be32   ; GRASSOGRE (tipo 0x43)?
	jr nz,L_BE55		;be34
	ld a,(ix+003h)		;be36   ; lee la y del enemigo
	sub e			;be39
	add a,00eh		;be3a
	cp 01ch		;be3c
	jr nc,L_BE55		;be3e
	ld a,(ix+005h)		;be40   ; lee la x del enemigo
	sub d			;be43
	add a,00eh		;be44
	cp 01ch		;be46
	jr nc,L_BE55		;be48
	push ix		;be4a
	push bc			;be4c
	push de			;be4d
	call da_la_experiencia		;be4e   ; da_la_experiencia: EL ENEMIGO MUERE: la experiencia de p09:B915; con LEVEL por encima, solo una muerte de cada 16 la da
	pop de			;be51
	pop bc			;be52
	pop ix		;be53
L_BE55:
	exx			;be55   ; la ficha siguiente (0x80 bytes)
	ld de,00080h		;be56
	add ix,de		;be59
	exx			;be5b
	djnz L_BE2F		;be5c
	ret			;be5e
lo_lanzado_toca_a_mitchel:
	call 040e0h		;be5f   ; p00:puente_posicion_de_mitchel
	ld ix,0c380h		;be62   ; apunta a lo que lanza Mitchel (su ficha)
	ld a,(ix+000h)		;be66
	cp 003h		;be69
	ret nz			;be6b
	ld a,(ix+001h)		;be6c
	cp 018h		;be6f
	ret c			;be71
	ld a,(ix+003h)		;be72
	sub e			;be75
	add a,00ch		;be76
	cp 018h		;be78
	ret nc			;be7a
	ld a,(ix+005h)		;be7b
	sub d			;be7e
	add a,008h		;be7f
	cp 010h		;be81
	ret nc			;be83
	ld (ix+000h),000h		;be84
	ld hl,0c349h		;be88   ; apunta a cuantos objetos 0x0A se llevan (BCD; 0xFF sin cuenta)
	ld a,(hl)			;be8b
	inc a			;be8c
	jr nz,L_BE90		;be8d
	dec a			;be8f
L_BE90:
	ld (hl),a			;be90
	ret			;be91
L_BE92:
	ld a,(0c353h)		;be92   ; lee cuantos objetos 0x14 se llevan (BCD; 0xFF sin cuenta)
	and a			;be95
	ret z			;be96
	ld a,(0c372h)		;be97
	and a			;be9a
	ret z			;be9b
	call 040e0h		;be9c   ; p00:puente_posicion_de_mitchel
	ld a,e			;be9f
	sub 020h		;bea0
	cp 021h		;bea2
	ret nc			;bea4
	ld a,d			;bea5
	sub 070h		;bea6
	cp 021h		;bea8
	ret nc			;beaa
	xor a			;beab
	ld (0c372h),a		;beac
	ld de,07828h		;beaf
	ld hl,0bec4h		;beb2   ; figura_BEC4: 2x2 dibujos 0x62 que p09:BEB2 pinta en (0x28, 0x78) antes de poner alli el objeto 0x13
	ld bc,00202h		;beb5   ; el objeto 0x02, ROD (2)
	call 041c4h		;beb8   ; p00:puente_pinta_figura_sin_bancos
	ld de,08030h		;bebb
	ld bc,00113h		;bebe   ; el objeto 0x13, ささやき (1)
	jp 0419ah		;bec1   ; p00:puente_pon_objeto: p01:7852: pone el objeto C (B unidades) en (E, D) de la pantalla

; ----------------------------------------------------------------------
; DATOS figura_BEC4: 2x2 dibujos 0x62 que p09:BEB2 pinta en (0x28, 0x78) antes
;   de poner alli el objeto 0x13
;   0xbec4..0xbec8  (4 bytes)
DATA_figura_BEC4:
	defb 062h,062h,062h,062h	; bec4

; ======================================================================
; CODIGO 0xbec8..0xbfe6  (286 bytes)
; ======================================================================


toca_los_objetos:
	call 040e0h		;bec8   ; p00:puente_posicion_de_mitchel
	ld ix,0c400h		;becb   ; apunta a los objetos del suelo (4 fichas de 16 bytes)
	ld b,004h		;becf
	ld hl,01c0eh		;bed1
	ld a,(0c125h)		;bed4   ; lee la PANTALLA
	cp 089h		;bed7   ; la pantalla 0x89?
	jr nz,L_BEDE		;bed9
	ld hl,03018h		;bedb
L_BEDE:
	ld a,(ix+000h)		;bede   ; lee el numero de objeto
	and a			;bee1
	jr z,L_BEFD		;bee2
	ld a,(ix+007h)		;bee4
	and a			;bee7
	jr nz,L_BEFD		;bee8
	ld a,(ix+003h)		;beea   ; lee la y del objeto
	sub e			;beed
	add a,l			;beee
	cp h			;beef
	jr nc,L_BEFD		;bef0
	ld a,(ix+005h)		;bef2   ; lee la x del objeto
	sub d			;bef5
	add a,00ch		;bef6
	cp 018h		;bef8
	jp c,recoge_objeto		;befa
L_BEFD:
	exx			;befd   ; el objeto siguiente (0x10 bytes)
	ld de,00010h		;befe
	add ix,de		;bf01
	exx			;bf03
	djnz L_BEDE		;bf04
	ret			;bf06
lo_lanzado_contra_las_fichas:
	ld a,(0c380h)		;bf07   ; lee lo que lanza Mitchel (su ficha)
	dec a			;bf0a
	ret m			;bf0b
	ld a,(0c383h)		;bf0c
	ld e,a			;bf0f
	ld a,(0c385h)		;bf10
	ld d,a			;bf13
	ld ix,0d000h		;bf14   ; apunta a las fichas de los enemigos (13 de 0x80)
	ld b,00dh		;bf18
L_BF1A:
	ld a,(ix+000h)		;bf1a   ; lee el tipo del enemigo
	and a			;bf1d
	jr z,L_BF3D		;bf1e
	bit 1,(ix+00eh)		;bf20
	jr z,L_BF3D		;bf24
	call caja_de_la_ficha		;bf26   ; caja_de_la_ficha: las figuras (bit 7): 4x4
	ld a,l			;bf29
	add a,004h		;bf2a
	ld l,a			;bf2c
	ld a,h			;bf2d
	add a,004h		;bf2e
	ld h,a			;bf30
	call distancia_en_y		;bf31   ; distancia_en_y: choca si |dy| < L...
	jr nc,L_BF3D		;bf34
	push bc			;bf36
	push de			;bf37
	call lo_lanzado_da_a_la_ficha		;bf38   ; lo_lanzado_da_a_la_ficha: LO LANZADO LE DA A UN ENEMIGO: el tipo...
	pop de			;bf3b
	pop bc			;bf3c
L_BF3D:
	exx			;bf3d   ; la ficha siguiente
	ld de,00080h		;bf3e
	add ix,de		;bf41
	exx			;bf43
	djnz L_BF1A		;bf44
	ret			;bf46
fichas_contra_mitchel:
	xor a			;bf47
	ld (0c168h),a		;bf48
	ld (0c161h),a		;bf4b
	call 040e0h		;bf4e   ; p00:puente_posicion_de_mitchel
	ld ix,0d000h		;bf51   ; apunta a las fichas de los enemigos (13 de 0x80)
	ld b,00dh		;bf55
L_BF57:
	ld a,(ix+000h)		;bf57   ; lee el tipo del enemigo
	and a			;bf5a
	jr z,L_BF7E		;bf5b
	ld a,(ix+00eh)		;bf5d
	rra			;bf60
	jr nc,L_BF7E		;bf61
	call caja_de_la_ficha		;bf63   ; caja_de_la_ficha: las figuras (bit 7): 4x4
	ld a,l			;bf66
	add a,006h		;bf67
	ld l,a			;bf69
	ld a,h			;bf6a
	add a,006h		;bf6b
	ld h,a			;bf6d
	call distancia_en_y		;bf6e   ; distancia_en_y: choca si |dy| < L...
	jr nc,L_BF7E		;bf71
	push ix		;bf73
	push bc			;bf75
	push de			;bf76
	call la_ficha_toca_a_mitchel		;bf77   ; la_ficha_toca_a_mitchel: UN ENEMIGO TOCA A MITCHEL: el 0x41 y el 0x3D son distintos
	pop de			;bf7a
	pop bc			;bf7b
	pop ix		;bf7c
L_BF7E:
	exx			;bf7e   ; la ficha siguiente
	ld de,00080h		;bf7f
	add ix,de		;bf82
	exx			;bf84
	djnz L_BF57		;bf85
	ret			;bf87
golpeando:
	ld a,(0c324h)		;bf88
	and a			;bf8b
	ret nz			;bf8c
	ld a,(0c300h)		;bf8d   ; lee el estado de Mitchel
	cp 008h		;bf90
	jr z,L_BF97		;bf92
	cp 005h		;bf94
	ret nz			;bf96
L_BF97:
	call delante_de_mitchel		;bf97
	ld ix,0d000h		;bf9a   ; apunta a las fichas de los enemigos (13 de 0x80)
	ld b,00dh		;bf9e
L_BFA0:
	ld a,(ix+000h)		;bfa0   ; lee el tipo del enemigo
	and a			;bfa3
	jr z,L_BFC7		;bfa4
	bit 1,(ix+00eh)		;bfa6
	jr z,L_BFC7		;bfaa
	call caja_de_la_ficha		;bfac   ; caja_de_la_ficha: las figuras (bit 7): 4x4
	ld a,l			;bfaf
	add a,005h		;bfb0
	ld l,a			;bfb2
	ld a,h			;bfb3
	add a,005h		;bfb4
	ld h,a			;bfb6
	call distancia_en_y		;bfb7   ; distancia_en_y: choca si |dy| < L...
	jr nc,L_BFC7		;bfba
	push ix		;bfbc
	push de			;bfbe
	push bc			;bfbf
	call golpe_a_la_ficha		;bfc0   ; golpe_a_la_ficha: MITCHEL GOLPEA A UN ENEMIGO: el sonido 0x1E...
	pop bc			;bfc3
	pop de			;bfc4
	pop ix		;bfc5
L_BFC7:
	exx			;bfc7   ; la ficha siguiente
	ld de,00080h		;bfc8
	add ix,de		;bfcb
	exx			;bfcd
	djnz L_BFA0		;bfce
	ret			;bfd0
delante_de_mitchel:
	call 040e0h		;bfd1   ; p00:puente_posicion_de_mitchel
	ld a,(0c306h)		;bfd4   ; lee hacia donde mira Mitchel (0 arriba, 1 abajo, 2 izquierda, 3 derecha)
	add a,a			;bfd7
	ld hl,0bfe6h		;bfd8   ; pasos_BFE6: 4 parejas [dx][dy] segun la direccion de Mitchel (p09:BFD8)
	call 0408ch		;bfdb   ; p00:puente_hl_mas_a
	ld a,e			;bfde
	add a,(hl)			;bfdf
	ld e,a			;bfe0
	inc hl			;bfe1
	ld a,d			;bfe2
	add a,(hl)			;bfe3
	ld d,a			;bfe4
	ret			;bfe5

; ----------------------------------------------------------------------
; DATOS pasos_BFE6: 4 parejas [dx][dy] segun la direccion de Mitchel
;   (p09:BFD8)
;   0xbfe6..0xbfee  (8 bytes)
DATA_pasos_BFE6:
	defb 0f7h,000h,009h,000h,000h,0f7h,000h,009h	; bfe6  ........

; ----------------------------------------------------------------------
; DATOS relleno_p09: 0xFF hasta el final del banco
;   0xbfee..0xc000  (18 bytes)
DATA_relleno_p09:
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfee  ................
	defb 0ffh,0ffh	; bffe
