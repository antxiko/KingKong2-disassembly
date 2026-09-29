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
;   cual; sin el, repetir el siguiente; 0x80 [palabra] sigue en otra
;   direccion; 0 acaba); lista 15; lo leen p00:45EF (131 bytes)
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
;   cual; sin el, repetir el siguiente; 0x80 [palabra] sigue en otra
;   direccion; 0 acaba); lista 10; lo leen p00:45EF (66 bytes)
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
; DATOS sin identificar  0xb145..0xb1c5  (128 bytes)
DATA_B145:
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
; DATOS sin identificar  0xb3fd..0xb7d6  (985 bytes)
DATA_B3FD:
	defb 05ch,05ch,05dh,05dh,02ah,01ah,001h,001h,05dh,029h,00eh,009h,006h,016h,046h,030h	; b3fd  \\]]*...])....F0
	defb 033h,00bh,034h,034h,050h,05bh,076h,07ah,082h,084h,038h,00dh,02dh,02eh,068h,06fh	; b40d  3.44P[vz..8.-.ho
	defb 077h,07bh,005h,056h,06eh,000h,06dh,0b4h,076h,0b4h,07fh,0b4h,088h,0b4h,09ah,0b4h	; b41d  w{.Vn.m.v.......
	defb 0a3h,0b4h,0ach,0b4h,0b5h,0b4h,091h,0b4h,0beh,0b4h,0d0h,0b4h,0d9h,0b4h,0e2h,0b4h	; b42d  ................
	defb 0ebh,0b4h,0f4h,0b4h,0fdh,0b4h,006h,0b5h,00fh,0b5h,018h,0b5h,021h,0b5h,02ah,0b5h	; b43d  ............!.*.
	defb 033h,0b5h,03ch,0b5h,045h,0b5h,04eh,0b5h,057h,0b5h,0c7h,0b4h,060h,0b5h,069h,0b5h	; b44d  3.<.E.N.W...`.i.
	defb 072h,0b5h,07bh,0b5h,084h,0b5h,08dh,0b5h,096h,0b5h,09fh,0b5h,0a8h,0b5h,0b1h,0b5h	; b45d  r.{.............
	defb 005h,008h,008h,00bh,003h,000h,0c7h,007h,000h,005h,068h,008h,008h,003h,040h,0c7h	; b46d  ..........h...@.
	defb 010h,000h,005h,008h,098h,00bh,002h,000h,0c7h,011h,000h,005h,068h,098h,008h,002h	; b47d  ............h...
	defb 040h,0c7h,012h,000h,008h,008h,008h,014h,003h,080h,0c7h,008h,004h,005h,008h,048h	; b48d  @..............H
	defb 008h,004h,000h,0c7h,00bh,001h,005h,028h,058h,005h,00ah,000h,0c7h,013h,002h,005h	; b49d  .......(X.......
	defb 008h,058h,003h,00ah,000h,0c7h,009h,003h,005h,020h,098h,007h,002h,040h,0c7h,00ah	; b4ad  .X....... ...@..
	defb 003h,005h,008h,028h,003h,008h,000h,0c7h,00ch,005h,005h,068h,008h,006h,003h,000h	; b4bd  ...(.......h....
	defb 0c7h,016h,015h,004h,048h,068h,004h,004h,000h,0c7h,006h,006h,004h,048h,028h,004h	; b4cd  ....Hh.......H(.
	defb 004h,000h,0c7h,006h,009h,004h,028h,028h,004h,004h,000h,0c7h,006h,007h,004h,048h	; b4dd  ......((.......H
	defb 048h,004h,004h,040h,0c7h,006h,008h,004h,028h,028h,004h,004h,000h,0c7h,006h,00ah	; b4ed  H..@....((......
	defb 004h,068h,028h,004h,004h,000h,0c7h,006h,00bh,004h,030h,070h,004h,004h,000h,0c7h	; b4fd  .h(.......0p....
	defb 006h,00ch,004h,048h,048h,004h,004h,000h,0c7h,006h,00dh,003h,008h,048h,002h,004h	; b50d  ...HH........H..
	defb 000h,0c7h,005h,00eh,001h,048h,008h,004h,002h,040h,0c7h,000h,00fh,002h,048h,008h	; b51d  .....H...@....H.
	defb 004h,002h,000h,0c7h,002h,010h,002h,048h,098h,004h,002h,000h,0c7h,003h,010h,005h	; b52d  .......H........
	defb 098h,048h,002h,004h,000h,0c7h,00dh,011h,005h,028h,008h,005h,005h,000h,0c7h,00eh	; b53d  .H.......(......
	defb 012h,005h,078h,008h,004h,002h,000h,0c7h,00fh,013h,005h,098h,028h,002h,004h,000h	; b54d  ..x.........(...
	defb 0c7h,00dh,014h,006h,008h,018h,002h,004h,080h,0c7h,014h,016h,006h,098h,018h,002h	; b55d  ................
	defb 006h,080h,0c7h,018h,017h,007h,048h,058h,004h,001h,080h,0c7h,015h,018h,006h,068h	; b56d  ......HX.......h
	defb 048h,002h,004h,080h,0c7h,014h,019h,007h,068h,070h,004h,001h,080h,0c7h,015h,01ah	; b57d  H.......hp......
	defb 006h,068h,048h,002h,004h,080h,0c7h,014h,01bh,006h,068h,068h,002h,004h,080h,0c7h	; b58d  .hH.......hh....
	defb 014h,01ch,005h,008h,058h,003h,00ah,000h,0c7h,017h,01dh,009h,088h,018h,004h,004h	; b59d  ....X...........
	defb 000h,0c7h,019h,01eh,00ah,050h,030h,002h,002h,080h,0c7h,01ah,01fh,002h,0b6h,002h	; b5ad  .....P0.........
	defb 0b6h,01ah,0b6h,012h,0b6h,00ah,0b6h,00ah,0b6h,022h,0b6h,032h,0b6h,053h,0b6h,0ddh	; b5bd  .........".2.S..
	defb 0b6h,08fh,0b6h,09dh,0b6h,0fbh,0b6h,013h,0b7h,01bh,0b7h,0bdh,0b6h,0c5h,0b6h,034h	; b5cd  ...............4
	defb 0b7h,04ah,0b7h,05ah,0b7h,08ch,0b7h,094h,0b7h,0f0h,0b5h,098h,0b7h,0b6h,0b7h,0c2h	; b5dd  .J.Z............
	defb 0b7h,0d2h,0b7h,001h,002h,09ch,003h,004h,09eh,001h,002h,09fh,003h,004h,09fh,001h	; b5ed  ................
	defb 002h,09fh,003h,004h,001h,030h,031h,032h,033h,034h,035h,036h,037h,038h,039h,03ah	; b5fd  .....0123456789:
	defb 03bh,03ch,03dh,03eh,03fh,040h,041h,042h,043h,044h,045h,046h,047h,040h,041h,042h	; b60d  ;<=>?@ABCDEFG@AB
	defb 043h,044h,045h,046h,047h,050h,051h,052h,053h,054h,055h,056h,057h,058h,059h,05ah	; b61d  CDEFGPQRSTUVWXYZ
	defb 05bh,05ch,05dh,05eh,05fh,09ch,09bh,09ah,096h,00bh,007h,097h,003h,0a4h,096h,004h	; b62d  [\]^_...........
	defb 0a3h,097h,003h,0a2h,096h,004h,0a3h,097h,003h,0a2h,096h,004h,0a3h,097h,003h,0a2h	; b63d  ................
	defb 007h,00bh,0a3h,0a0h,0a1h,0a4h,09ch,09bh,09ah,096h,00bh,007h,097h,003h,0a4h,096h	; b64d  ................
	defb 004h,0a3h,097h,003h,0a2h,096h,004h,0a3h,097h,003h,0a2h,096h,004h,0a3h,097h,003h	; b65d  ................
	defb 0a2h,096h,004h,0a3h,097h,003h,0a2h,096h,004h,0a3h,097h,003h,0a2h,096h,004h,0a3h	; b66d  ................
	defb 097h,003h,0a2h,096h,004h,0a3h,097h,003h,0a2h,096h,004h,0a3h,097h,00ch,005h,09dh	; b67d  ................
	defb 098h,099h,002h,065h,001h,064h,002h,065h,001h,064h,002h,065h,00bh,064h,069h,06fh	; b68d  ...e.d.e.d.e.dio
	defb 00ch,00bh,009h,00ah,00ch,00ch,00ah,00bh,00bh,00bh,009h,00ch,002h,00ch,00ah,003h	; b69d  ................
	defb 002h,00bh,00ch,003h,001h,00ch,00bh,004h,002h,00bh,00ch,003h,001h,00ch,00bh,004h	; b6ad  ................
	defb 005h,006h,007h,008h,005h,006h,007h,008h,006h,009h,0a2h,097h,004h,0a3h,096h,003h	; b6bd  ................
	defb 0a2h,097h,004h,0a3h,096h,003h,0a2h,097h,004h,0a3h,096h,003h,0a2h,097h,004h,0a3h	; b6cd  ................
	defb 06ah,06bh,06ah,06bh,06ah,06bh,06ah,06bh,06ah,06eh,008h,007h,008h,007h,008h,007h	; b6dd  jkjkjkjkjn......
	defb 008h,007h,00ch,065h,070h,071h,070h,071h,070h,071h,070h,071h,001h,064h,00ch,00bh	; b6ed  ...epqpqpqpq.d..
	defb 009h,00ah,00ch,00bh,009h,00ah,00bh,00ch,00ch,009h,00bh,00ch,00ch,009h,065h,066h	; b6fd  ..............ef
	defb 065h,066h,065h,066h,065h,066h,005h,006h,005h,006h,007h,008h,007h,008h,005h,006h	; b70d  efefef..........
	defb 005h,006h,065h,007h,008h,007h,008h,065h,005h,006h,005h,006h,065h,007h,008h,007h	; b71d  ..e....e....e...
	defb 008h,065h,005h,006h,005h,006h,065h,09ah,09eh,00ch,094h,001h,095h,002h,094h,001h	; b72d  .e....e.........
	defb 095h,002h,094h,001h,095h,002h,094h,001h,095h,009h,007h,0a0h,0a1h,00ah,005h,001h	; b73d  ................
	defb 094h,002h,095h,001h,094h,002h,095h,001h,094h,00ah,095h,098h,09fh,005h,006h,005h	; b74d  ................
	defb 006h,005h,006h,005h,006h,064h,068h,068h,069h,068h,069h,068h,069h,068h,069h,068h	; b75d  .....dhhihihihih
	defb 069h,067h,06bh,06ah,06bh,06ah,06bh,06ah,06bh,067h,06ah,06ah,008h,007h,008h,007h	; b76d  igkjkjkjkgjj....
	defb 008h,007h,008h,06ah,064h,067h,003h,06ch,06dh,06ch,06dh,06ch,06dh,002h,065h,020h	; b77d  ...jdg.lmlmlm.e
	defb 020h,020h,020h,021h,021h,021h,021h,022h,022h,022h,022h,06ch,06bh,06ah,06bh,06ah	; b78d     !!!!""""lkjkj
	defb 06bh,06ah,06bh,06ah,06eh,066h,00ah,008h,008h,008h,007h,008h,007h,00ch,064h,067h	; b79d  kjkjnf........dg
	defb 003h,074h,070h,071h,070h,071h,070h,001h,065h,020h,020h,020h,020h,020h,020h,021h	; b7ad  .tpqpqp.e      !
	defb 021h,021h,021h,021h,021h,001h,002h,003h,004h,004h,003h,002h,001h,001h,002h,003h	; b7bd  !!!!!...........
	defb 004h,004h,003h,002h,001h,010h,011h,012h,013h	; b7cd  .........

; ======================================================================
; CODIGO 0xb7d6..0xb83b  (101 bytes)
; ======================================================================


L_B7D6:
	call L_B7EF		;b7d6
	ld a,(ix+01dh)		;b7d9
	sub l			;b7dc
	daa			;b7dd
	ld (ix+01dh),a		;b7de
	ld a,(ix+00dh)		;b7e1
	cp 099h		;b7e4
	ret nc			;b7e6
	sbc a,h			;b7e7
	daa			;b7e8
	ld (ix+00dh),a		;b7e9
	ret nz			;b7ec
	scf			;b7ed
	ret			;b7ee
L_B7EF:
	ld a,(0c12eh)		;b7ef
	add a,010h		;b7f2
	ld h,a			;b7f4
	jp 0413ah		;b7f5
L_B7F8:
	ld a,(0c38fh)		;b7f8
	cp 002h		;b7fb
	jr c,L_B80D		;b7fd
	ld a,001h		;b7ff
	bit 7,(ix+00ah)		;b801
	jr nz,L_B809		;b805
	ld a,003h		;b807
L_B809:
	ld (ix+07eh),a		;b809
	ret			;b80c
L_B80D:
	xor a			;b80d
	bit 7,(ix+008h)		;b80e
	jr nz,L_B816		;b812
	ld a,002h		;b814
L_B816:
	ld (ix+07eh),a		;b816
	ret			;b819
L_B81A:
	ld d,(ix+01ch)		;b81a
	ld a,d			;b81d
	dec a			;b81e
	ret m			;b81f
	ld e,000h		;b820
	srl d		;b822
	rr e		;b824
	ld ix,0d000h		;b826
	add ix,de		;b82a
	ret			;b82c
L_B82D:
	add a,a			;b82d
	add a,a			;b82e
	add a,(ix+07fh)		;b82f
	ld hl,0b83bh		;b832
	ld c,a			;b835
	ld b,000h		;b836
	add hl,bc			;b838
	ld a,(hl)			;b839
	ret			;b83a

; ----------------------------------------------------------------------
; DATOS sin identificar  0xb83b..0xb84b  (16 bytes)
DATA_B83B:
	defb 000h,002h,001h,002h,001h,002h,000h,002h,002h,001h,002h,000h,002h,000h,002h,001h	; b83b  ................

; ======================================================================
; CODIGO 0xb84b..0xb915  (202 bytes)
; ======================================================================


L_B84B:
	ld c,(ix+000h)		;b84b
	call L_B81A		;b84e
	call 04140h		;b851
	call L_B7F8		;b854
	set 1,(ix+01eh)		;b857
	ld hl,0c380h		;b85b
	ld a,(hl)			;b85e
	cp 003h		;b85f
	call z,L_B96A		;b861
	call L_B975		;b864
	jp nc,L_B959		;b867
	ld a,(0c380h)		;b86a
	dec a			;b86d
	jr z,L_B89E		;b86e
	dec a			;b870
	jr z,L_B891		;b871
	dec a			;b873
	jr z,L_B878		;b874
	jr L_B89E		;b876
L_B878:
	push ix		;b878
	pop hl			;b87a
	ld de,(0c398h)		;b87b
	rst 20h			;b87f
	ret z			;b880
	ld (0c398h),a		;b881
	ld a,01eh		;b884
	call 040e6h		;b886
	ld e,018h		;b889
	call L_B7D6		;b88b
	ret nc			;b88e
	jr L_B8AE		;b88f
L_B891:
	ld a,01eh		;b891
	call 040e6h		;b893
	ld e,006h		;b896
	call L_B7D6		;b898
	ret nc			;b89b
	jr L_B8AE		;b89c
L_B89E:
	ld a,01eh		;b89e
	call 040e6h		;b8a0
	ld e,015h		;b8a3
	call L_B7D6		;b8a5
	ld hl,0c380h		;b8a8
	ld (hl),000h		;b8ab
	ret nc			;b8ad
L_B8AE:
	ld a,(ix+000h)		;b8ae
	ld c,a			;b8b1
	add a,a			;b8b2
	jr c,L_B90F		;b8b3
	ld b,000h		;b8b5
	ld hl,0b914h		;b8b7
	add hl,bc			;b8ba
	ld a,(0c12eh)		;b8bb
	cp (hl)			;b8be
	ld a,(hl)			;b8bf
	ld c,a			;b8c0
	jr c,L_B8CB		;b8c1
	jr z,L_B8CB		;b8c3
	ld a,r		;b8c5
	and 00fh		;b8c7
	jr nz,L_B90F		;b8c9
L_B8CB:
	ld a,(ix+01ch)		;b8cb
	dec a			;b8ce
	jp p,L_B90F		;b8cf
	ld a,c			;b8d2
	ld hl,(0c12bh)		;b8d3
	add a,l			;b8d6
	daa			;b8d7
	ld l,a			;b8d8
	ld a,h			;b8d9
	adc a,000h		;b8da
	daa			;b8dc
	ld h,a			;b8dd
	jr nc,L_B8E8		;b8de
	ld hl,09999h		;b8e0
	ld (0c12bh),hl		;b8e3
	jr L_B90C		;b8e6
L_B8E8:
	ld a,(0c12ch)		;b8e8
	ld (0c12bh),hl		;b8eb
	cp h			;b8ee
	jr z,L_B90C		;b8ef
	ld hl,0c12eh		;b8f1
	ld a,(hl)			;b8f4
	add a,001h		;b8f5
	daa			;b8f7
	jr c,L_B90C		;b8f8
	ld (hl),a			;b8fa
	call 04146h		;b8fb
	call 04050h		;b8fe
	ld hl,0bcb3h		;b901
	call 04056h		;b904
	ld a,080h		;b907
	ld (0c162h),a		;b909
L_B90C:
	call 0414ch		;b90c
L_B90F:
	ld c,(ix+000h)		;b90f
	jp 04152h		;b912

; ----------------------------------------------------------------------
; DATOS sin identificar  0xb915..0xb959  (68 bytes)
DATA_B915:
	defb 001h,010h,008h,008h,020h,018h,001h,088h,005h,001h,015h,006h,002h,013h,014h,071h	; b915  .... ..........q
	defb 002h,008h,015h,018h,012h,031h,004h,012h,025h,028h,005h,014h,010h,010h,030h,010h	; b925  .....1..%(....0.
	defb 078h,074h,080h,009h,026h,030h,065h,010h,014h,027h,095h,012h,001h,023h,028h,026h	; b935  xt..&0e..'...#(&
	defb 024h,020h,008h,032h,035h,036h,038h,035h,099h,006h,007h,070h,000h,016h,030h,000h	; b945  $ .25685...p..0.
	defb 000h,085h,001h,002h	; b955

; ======================================================================
; CODIGO 0xb959..0xbae4  (395 bytes)
; ======================================================================


L_B959:
	ld a,01fh		;b959
	call 040e6h		;b95b
	ld hl,0c380h		;b95e
	ld a,(hl)			;b961
	sub 002h		;b962
	cp 002h		;b964
	ret c			;b966
	ld (hl),000h		;b967
	ret			;b969
L_B96A:
	push ix		;b96a
	push hl			;b96c
	pop ix		;b96d
	call 04158h		;b96f
	pop ix		;b972
	ret			;b974
L_B975:
	ld hl,0c380h		;b975
	ld a,(ix+000h)		;b978
	sub 002h		;b97b
	ret z			;b97d
	sub 002h		;b97e
	ret z			;b980
	dec a			;b981
	jr z,L_B9C7		;b982
	dec a			;b984
	ret z			;b985
	sub 005h		;b986
	ret z			;b988
	dec a			;b989
	ret z			;b98a
	sub 002h		;b98b
	ret z			;b98d
	dec a			;b98e
	ret z			;b98f
	sub 00ah		;b990
	ret z			;b992
	dec a			;b993
	jp z,L_BBAB		;b994
	sub 003h		;b997
	jr z,L_B9DF		;b999
	sub 002h		;b99b
	jr z,L_B9DF		;b99d
	sub 002h		;b99f
	jr z,L_B9DF		;b9a1
	sub 008h		;b9a3
	jr z,L_B9D1		;b9a5
	dec a			;b9a7
	ret z			;b9a8
	dec a			;b9a9
	ret z			;b9aa
	sub 003h		;b9ab
	ret z			;b9ad
	sub 006h		;b9ae
	ret z			;b9b0
	dec a			;b9b1
	ret z			;b9b2
	sub 005h		;b9b3
	ret z			;b9b5
	sub 004h		;b9b6
	ret z			;b9b8
	cp 003h		;b9b9
	ret z			;b9bb
	sub 004h		;b9bc
	jr z,L_B9D8		;b9be
	dec a			;b9c0
	ret z			;b9c1
	dec a			;b9c2
	jr z,L_B9DF		;b9c3
	scf			;b9c5
	ret			;b9c6
L_B9C7:
	ld a,(hl)			;b9c7
	dec a			;b9c8
	ret nz			;b9c9
	ld a,(0c144h)		;b9ca
	and a			;b9cd
	ret z			;b9ce
	scf			;b9cf
	ret			;b9d0
L_B9D1:
	ld a,(hl)			;b9d1
	cp 003h		;b9d2
	scf			;b9d4
	ret z			;b9d5
	xor a			;b9d6
	ret			;b9d7
L_B9D8:
	ld a,(hl)			;b9d8
	cp 004h		;b9d9
	scf			;b9db
	ret z			;b9dc
	xor a			;b9dd
	ret			;b9de
L_B9DF:
	call L_B9E8		;b9df
	call L_B82D		;b9e2
	sub 001h		;b9e5
	ret			;b9e7
L_B9E8:
	ld hl,0c388h		;b9e8
	ld c,000h		;b9eb
	bit 7,(hl)		;b9ed
	jr nz,L_BA02		;b9ef
	inc l			;b9f1
	inc l			;b9f2
	bit 7,(hl)		;b9f3
	ld c,002h		;b9f5
	jr nz,L_BA02		;b9f7
	ld a,(hl)			;b9f9
	dec l			;b9fa
	or (hl)			;b9fb
	ld c,003h		;b9fc
	jr nz,L_BA02		;b9fe
	ld c,001h		;ba00
L_BA02:
	ld a,c			;ba02
	ret			;ba03
L_BA04:
	ld c,(ix+000h)		;ba04
	ld a,c			;ba07
	cp 041h		;ba08
	jp z,041a0h		;ba0a
	cp 03dh		;ba0d
	jp z,041dch		;ba0f
	call 04140h		;ba12
	set 0,(ix+01eh)		;ba15
	ld a,(ix+000h)		;ba19
	cp 00dh		;ba1c
	jr z,L_BA99		;ba1e
	ld hl,0c325h		;ba20
	ld a,(hl)			;ba23
	and a			;ba24
	ret nz			;ba25
	ld (hl),014h		;ba26
	call L_BA68		;ba28
	ld a,00fh		;ba2b
	call 040e6h		;ba2d
	ld hl,0bc4eh		;ba30
	ld a,(ix+000h)		;ba33
	bit 7,a		;ba36
	jr z,L_BA3D		;ba38
	ld hl,0bc92h		;ba3a
L_BA3D:
	and 07fh		;ba3d
	call 0408ch		;ba3f
	ld de,0c129h		;ba42
	ld a,(de)			;ba45
	sub (hl)			;ba46
	daa			;ba47
	ld (de),a			;ba48
	inc e			;ba49
	ld a,(de)			;ba4a
	sbc a,000h		;ba4b
	daa			;ba4d
	ld (de),a			;ba4e
	jp c,041a6h		;ba4f
	jp nz,0415eh		;ba52
	dec e			;ba55
	ld a,(de)			;ba56
	and a			;ba57
	jp z,041a6h		;ba58
	cp 006h		;ba5b
	jp nc,0415eh		;ba5d
	ld a,028h		;ba60
	call 040e6h		;ba62
	jp 0415eh		;ba65
L_BA68:
	call 040e0h		;ba68
	ld hl,0c163h		;ba6b
	ld (hl),004h		;ba6e
	inc hl			;ba70
	ld bc,00000h		;ba71
	ld a,(ix+003h)		;ba74
	sub e			;ba77
	jr nc,L_BA7D		;ba78
	neg		;ba7a
	inc c			;ba7c
L_BA7D:
	ld e,a			;ba7d
	ld a,(ix+005h)		;ba7e
	sub d			;ba81
	jr nc,L_BA87		;ba82
	neg		;ba84
	inc b			;ba86
L_BA87:
	cp e			;ba87
	jr nc,L_BA91		;ba88
	xor a			;ba8a
	dec c			;ba8b
	jr nz,L_BA8F		;ba8c
	inc a			;ba8e
L_BA8F:
	ld (hl),a			;ba8f
	ret			;ba90
L_BA91:
	ld a,003h		;ba91
	dec b			;ba93
	jr z,L_BA97		;ba94
	dec a			;ba96
L_BA97:
	ld (hl),a			;ba97
	ret			;ba98
L_BA99:
	ld a,001h		;ba99
	ld (0c161h),a		;ba9b
	ret			;ba9e
L_BA9F:
	ld a,01eh		;ba9f
	call 040e6h		;baa1
	ld c,(ix+000h)		;baa4
	call L_B81A		;baa7
	call 04140h		;baaa
	ld a,(0c306h)		;baad
	ld hl,0bae4h		;bab0
	call 0408ch		;bab3
	ld a,(hl)			;bab6
	ld (ix+07eh),a		;bab7
	set 1,(ix+01eh)		;baba
	ld a,001h		;babe
	ld (0c324h),a		;bac0
	call L_BB14		;bac3
	ld a,01fh		;bac6
	jp nc,040e6h		;bac8
	call L_BAE8		;bacb
	ld a,01fh		;bace
	jp nc,040e6h		;bad0
	ld a,(0c140h)		;bad3
	ld hl,0bca7h		;bad6
	call 0408ch		;bad9
	ld e,(hl)			;badc
	call L_B7D6		;badd
	ret nc			;bae0
	jp L_B8AE		;bae1

; ----------------------------------------------------------------------
; DATOS sin identificar  0xbae4..0xbae8  (4 bytes)
DATA_BAE4:
	defb 002h,000h,001h,003h	; bae4

; ======================================================================
; CODIGO 0xbae8..0xbb90  (168 bytes)
; ======================================================================


L_BAE8:
	ld c,(ix+000h)		;bae8
	ld a,(0c140h)		;baeb
	cp 004h		;baee
	jr z,L_BAFC		;baf0
	cp 005h		;baf2
	jr z,L_BB07		;baf4
	cp 00bh		;baf6
	jr z,L_BB0B		;baf8
	scf			;bafa
	ret			;bafb
L_BAFC:
	ld a,058h		;bafc
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
	ld a,01eh		;bb07
	jr L_BB02		;bb09
L_BB0B:
	ld a,c			;bb0b
	sub 034h		;bb0c
	scf			;bb0e
	ret z			;bb0f
	dec a			;bb10
	ret z			;bb11
	xor a			;bb12
	ret			;bb13
L_BB14:
	ld a,(0c140h)		;bb14
	ld c,a			;bb17
	ld a,(ix+000h)		;bb18
	cp 002h		;bb1b
	jr z,L_BB89		;bb1d
	cp 004h		;bb1f
	jr z,$+124		;bb21
	cp 005h		;bb23
	ret z			;bb25
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
	ret z			;bb54
	cp 02ah		;bb55
	ret z			;bb57
	cp 02bh		;bb58
	ret z			;bb5a
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
	ret z			;bb71
	cp 03eh		;bb72
	jr z,L_BB89		;bb74
	cp 042h		;bb76
	ret z			;bb78
	cp 043h		;bb79
	ret z			;bb7b
	cp 044h		;bb7c
	jr z,$+66		;bb7e
	scf			;bb80
	ret			;bb81
L_BB82:
	ld a,c			;bb82
	cp 003h		;bb83
	scf			;bb85
	ret z			;bb86
	and a			;bb87
	ret z			;bb88
L_BB89:
	ld a,c			;bb89
	cp 007h		;bb8a
	scf			;bb8c
	ret z			;bb8d
	and a			;bb8e
	ret			;bb8f

; ----------------------------------------------------------------------
; DATOS sin identificar  0xbb90..0xbb97  (7 bytes)
DATA_BB90:
	defb 079h,0feh,003h,037h,0c8h,0afh,0c9h	; bb90

; ======================================================================
; CODIGO 0xbb97..0xbc4f  (184 bytes)
; ======================================================================


L_BB97:
	ld a,c			;bb97
	dec a			;bb98
	scf			;bb99
	ret z			;bb9a
	xor a			;bb9b
	ret			;bb9c
L_BB9D:
	ld a,c			;bb9d
	cp 002h		;bb9e
	scf			;bba0
	ret z			;bba1
	xor a			;bba2
	ret			;bba3
L_BBA4:
	ld a,c			;bba4
	cp 004h		;bba5
	scf			;bba7
	ret z			;bba8
	xor a			;bba9
	ret			;bbaa
L_BBAB:
	ld a,(0c357h)		;bbab
	and a			;bbae
	ret z			;bbaf
	scf			;bbb0
	ret			;bbb1
L_BBB2:
	ld a,c			;bbb2
	cp 005h		;bbb3
	scf			;bbb5
	ret z			;bbb6
	xor a			;bbb7
	ret			;bbb8
L_BBB9:
	ld a,c			;bbb9
	cp 00bh		;bbba
	scf			;bbbc
	ret z			;bbbd
	xor a			;bbbe
	ret			;bbbf
L_BBC0:
	ld a,(0c306h)		;bbc0
	call L_B82D		;bbc3
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
	ld hl,0c373h		;bbef
	ld (hl),000h		;bbf2
L_BBF4:
	ld a,c			;bbf4
	cp 00ah		;bbf5   ; con cuatro boomerangs (0xC349) no se coge otro
	jr nz,L_BBFF		;bbf7
	ld a,(0c349h)		;bbf9
	cp 004h		;bbfc
	ret nc			;bbfe
L_BBFF:
	ld a,c			;bbff
	ld b,(ix+006h)		;bc00
	call 04176h		;bc03
	ld a,027h		;bc06
	call 040e6h		;bc08
	ld a,03ch		;bc0b
	ld (0c16dh),a		;bc0d
	call 04050h		;bc10
	ld a,(ix+000h)		;bc13
	call 041fah		;bc16
	jp 04164h		;bc19
recoge_oro:
	ld a,026h		;bc1c
	call 040e6h		;bc1e
	ld hl,0c135h		;bc21   ; GOLD (0xC135-0xC136, BCD) + B; 9999 como mucho
	ld a,(hl)			;bc24
	add a,(ix+006h)		;bc25
	daa			;bc28
	ld (hl),a			;bc29
	inc l			;bc2a
	ld a,(hl)			;bc2b
	adc a,000h		;bc2c
	daa			;bc2e
	ld (hl),a			;bc2f
	jp nc,L_BC39		;bc30
	ld hl,09999h		;bc33
	ld (0c135h),hl		;bc36
L_BC39:
	call 04164h		;bc39
	jp 0416ah		;bc3c
L_BC3F:
	ld a,(ix+002h)		;bc3f
	and a			;bc42
	ret nz			;bc43
	ld (ix+002h),001h		;bc44
	ld (ix+001h),002h		;bc48
	jp 04170h		;bc4c

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
; DATOS sin identificar  0xbc93..0xbcc7  (52 bytes)
DATA_BC93:
	defb 001h,018h,001h,005h,002h,001h,001h,002h,003h,001h,001h,001h,004h,018h,016h,003h	; bc93  ................
	defb 003h,001h,001h,001h,010h,015h,012h,018h,020h,025h,030h,020h,015h,020h,018h,020h	; bca3  ........ %0 . .
	defb 018h,0b8h,04ch,045h,056h,045h,04ch,000h,060h,03ch,000h,05bh,060h,03ch,082h,079h	; bcb3  ..LEVEL.`<.[`<.y
	defb 066h,06ah,03eh,0ffh	; bcc3

; ======================================================================
; CODIGO 0xbcc7..0xbd0e  (71 bytes)
; ======================================================================


L_BCC7:
	ld a,(0c133h)		;bcc7
	and a			;bcca
	ret nz			;bccb
	call L_BEC8		;bccc
	call L_BE5F		;bccf
	call L_BF07		;bcd2
	call L_BF88		;bcd5
	call L_BE1A		;bcd8
	call L_BF47		;bcdb
	call L_BDAA		;bcde
	jp L_BE92		;bce1
L_BCE4:
	ld a,(ix+000h)		;bce4
	and a			;bce7
	jp m,L_BCFD		;bce8
	cp 041h		;bceb
	jr z,L_BD01		;bced
	add a,a			;bcef
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
	ld a,(0c125h)		;bd04
	cp 073h		;bd07
	ret z			;bd09
	ld hl,0121bh		;bd0a
	ret			;bd0d

; ----------------------------------------------------------------------
; DATOS sin identificar  0xbd0e..0xbd96  (136 bytes)
DATA_BD0E:
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


L_BD96:
	ld a,(ix+003h)		;bd96
	sub e			;bd99
	jr nc,L_BD9E		;bd9a
	neg		;bd9c
L_BD9E:
	cp l			;bd9e
	ret nc			;bd9f
	ld a,(ix+005h)		;bda0
	sub d			;bda3
	jr nc,L_BDA8		;bda4
	neg		;bda6
L_BDA8:
	cp h			;bda8
	ret			;bda9
L_BDAA:
	ld a,(0c125h)		;bdaa
	sub 073h		;bdad
	cp 005h		;bdaf
	ret nc			;bdb1
	ld a,(0c324h)		;bdb2
	and a			;bdb5
	ret nz			;bdb6
	ld a,(0c300h)		;bdb7
	cp 008h		;bdba
	jr z,L_BDC1		;bdbc
	cp 005h		;bdbe
	ret nz			;bdc0
L_BDC1:
	call 040e0h		;bdc1
	ld a,e			;bdc4
	and 007h		;bdc5
	ret nz			;bdc7
	ld a,(0c306h)		;bdc8
	cp 002h		;bdcb
	ret nc			;bdcd
	and a			;bdce
	ld a,0f6h		;bdcf
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
	call 041cah		;bdde
	ld a,(hl)			;bde1
	cp 0f0h		;bde2
	ret nz			;bde4
	call L_BE06		;bde5
	ld b,003h		;bde8
L_BDEA:
	ld a,0f1h		;bdea
	ld (hl),a			;bdec
	inc hl			;bded
	ld (hl),a			;bdee
	ld a,01fh		;bdef
	call 0408ch		;bdf1
	djnz L_BDEA		;bdf4
	ld a,020h		;bdf6
	call 040e6h		;bdf8
	ld hl,010a8h		;bdfb
	ld bc,01018h		;bdfe
	ld a,001h		;be01
	jp 041f4h		;be03
L_BE06:
	ld a,(0c306h)		;be06
	and a			;be09
	jr z,L_BE11		;be0a
	ld a,e			;be0c
	add a,008h		;be0d
	ld e,a			;be0f
	ret			;be10
L_BE11:
	ld bc,0ffe0h		;be11
	add hl,bc			;be14
	ld a,e			;be15
	sub 018h		;be16
	ld e,a			;be18
	ret			;be19
L_BE1A:
	ld a,(0c152h)		;be1a
	and a			;be1d
	ret z			;be1e
	ld hl,0c800h		;be1f
	ld a,(hl)			;be22
	and a			;be23
	ret z			;be24
	inc l			;be25
	ld e,(hl)			;be26
	inc l			;be27
	ld d,(hl)			;be28
	ld ix,0d000h		;be29
	ld b,00dh		;be2d
L_BE2F:
	ld a,(ix+000h)		;be2f
	cp 043h		;be32
	jr nz,L_BE55		;be34
	ld a,(ix+003h)		;be36
	sub e			;be39
	add a,00eh		;be3a
	cp 01ch		;be3c
	jr nc,L_BE55		;be3e
	ld a,(ix+005h)		;be40
	sub d			;be43
	add a,00eh		;be44
	cp 01ch		;be46
	jr nc,L_BE55		;be48
	push ix		;be4a
	push bc			;be4c
	push de			;be4d
	call L_B8AE		;be4e
	pop de			;be51
	pop bc			;be52
	pop ix		;be53
L_BE55:
	exx			;be55
	ld de,00080h		;be56
	add ix,de		;be59
	exx			;be5b
	djnz L_BE2F		;be5c
	ret			;be5e
L_BE5F:
	call 040e0h		;be5f
	ld ix,0c380h		;be62
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
	ld hl,0c349h		;be88
	ld a,(hl)			;be8b
	inc a			;be8c
	jr nz,L_BE90		;be8d
	dec a			;be8f
L_BE90:
	ld (hl),a			;be90
	ret			;be91
L_BE92:
	ld a,(0c353h)		;be92
	and a			;be95
	ret z			;be96
	ld a,(0c372h)		;be97
	and a			;be9a
	ret z			;be9b
	call 040e0h		;be9c
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
	ld hl,0bec4h		;beb2
	ld bc,00202h		;beb5
	call 041c4h		;beb8
	ld de,08030h		;bebb
	ld bc,00113h		;bebe
	jp 0419ah		;bec1

; ----------------------------------------------------------------------
; DATOS sin identificar  0xbec4..0xbec8  (4 bytes)
DATA_BEC4:
	defb 062h,062h,062h,062h	; bec4

; ======================================================================
; CODIGO 0xbec8..0xbfe6  (286 bytes)
; ======================================================================


L_BEC8:
	call 040e0h		;bec8
	ld ix,0c400h		;becb
	ld b,004h		;becf
	ld hl,01c0eh		;bed1
	ld a,(0c125h)		;bed4
	cp 089h		;bed7
	jr nz,L_BEDE		;bed9
	ld hl,03018h		;bedb
L_BEDE:
	ld a,(ix+000h)		;bede
	and a			;bee1
	jr z,L_BEFD		;bee2
	ld a,(ix+007h)		;bee4
	and a			;bee7
	jr nz,L_BEFD		;bee8
	ld a,(ix+003h)		;beea
	sub e			;beed
	add a,l			;beee
	cp h			;beef
	jr nc,L_BEFD		;bef0
	ld a,(ix+005h)		;bef2
	sub d			;bef5
	add a,00ch		;bef6
	cp 018h		;bef8
	jp c,recoge_objeto		;befa
L_BEFD:
	exx			;befd
	ld de,00010h		;befe
	add ix,de		;bf01
	exx			;bf03
	djnz L_BEDE		;bf04
	ret			;bf06
L_BF07:
	ld a,(0c380h)		;bf07
	dec a			;bf0a
	ret m			;bf0b
	ld a,(0c383h)		;bf0c
	ld e,a			;bf0f
	ld a,(0c385h)		;bf10
	ld d,a			;bf13
	ld ix,0d000h		;bf14
	ld b,00dh		;bf18
L_BF1A:
	ld a,(ix+000h)		;bf1a
	and a			;bf1d
	jr z,L_BF3D		;bf1e
	bit 1,(ix+00eh)		;bf20
	jr z,L_BF3D		;bf24
	call L_BCE4		;bf26
	ld a,l			;bf29
	add a,004h		;bf2a
	ld l,a			;bf2c
	ld a,h			;bf2d
	add a,004h		;bf2e
	ld h,a			;bf30
	call L_BD96		;bf31
	jr nc,L_BF3D		;bf34
	push bc			;bf36
	push de			;bf37
	call L_B84B		;bf38
	pop de			;bf3b
	pop bc			;bf3c
L_BF3D:
	exx			;bf3d
	ld de,00080h		;bf3e
	add ix,de		;bf41
	exx			;bf43
	djnz L_BF1A		;bf44
	ret			;bf46
L_BF47:
	xor a			;bf47
	ld (0c168h),a		;bf48
	ld (0c161h),a		;bf4b
	call 040e0h		;bf4e
	ld ix,0d000h		;bf51
	ld b,00dh		;bf55
L_BF57:
	ld a,(ix+000h)		;bf57
	and a			;bf5a
	jr z,L_BF7E		;bf5b
	ld a,(ix+00eh)		;bf5d
	rra			;bf60
	jr nc,L_BF7E		;bf61
	call L_BCE4		;bf63
	ld a,l			;bf66
	add a,006h		;bf67
	ld l,a			;bf69
	ld a,h			;bf6a
	add a,006h		;bf6b
	ld h,a			;bf6d
	call L_BD96		;bf6e
	jr nc,L_BF7E		;bf71
	push ix		;bf73
	push bc			;bf75
	push de			;bf76
	call L_BA04		;bf77
	pop de			;bf7a
	pop bc			;bf7b
	pop ix		;bf7c
L_BF7E:
	exx			;bf7e
	ld de,00080h		;bf7f
	add ix,de		;bf82
	exx			;bf84
	djnz L_BF57		;bf85
	ret			;bf87
L_BF88:
	ld a,(0c324h)		;bf88
	and a			;bf8b
	ret nz			;bf8c
	ld a,(0c300h)		;bf8d
	cp 008h		;bf90
	jr z,L_BF97		;bf92
	cp 005h		;bf94
	ret nz			;bf96
L_BF97:
	call L_BFD1		;bf97
	ld ix,0d000h		;bf9a
	ld b,00dh		;bf9e
L_BFA0:
	ld a,(ix+000h)		;bfa0
	and a			;bfa3
	jr z,L_BFC7		;bfa4
	bit 1,(ix+00eh)		;bfa6
	jr z,L_BFC7		;bfaa
	call L_BCE4		;bfac
	ld a,l			;bfaf
	add a,005h		;bfb0
	ld l,a			;bfb2
	ld a,h			;bfb3
	add a,005h		;bfb4
	ld h,a			;bfb6
	call L_BD96		;bfb7
	jr nc,L_BFC7		;bfba
	push ix		;bfbc
	push de			;bfbe
	push bc			;bfbf
	call L_BA9F		;bfc0
	pop bc			;bfc3
	pop de			;bfc4
	pop ix		;bfc5
L_BFC7:
	exx			;bfc7
	ld de,00080h		;bfc8
	add ix,de		;bfcb
	exx			;bfcd
	djnz L_BFA0		;bfce
	ret			;bfd0
L_BFD1:
	call 040e0h		;bfd1
	ld a,(0c306h)		;bfd4
	add a,a			;bfd7
	ld hl,0bfe6h		;bfd8
	call 0408ch		;bfdb
	ld a,e			;bfde
	add a,(hl)			;bfdf
	ld e,a			;bfe0
	inc hl			;bfe1
	ld a,d			;bfe2
	add a,(hl)			;bfe3
	ld d,a			;bfe4
	ret			;bfe5

; ----------------------------------------------------------------------
; DATOS sin identificar  0xbfe6..0xc000  (26 bytes)
DATA_BFE6:
	defb 0f7h,000h,009h,000h,000h,0f7h,000h,009h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfe6  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bff6  ..........
