; ==========================================================================
; KING KONG 2: YOMIGAERU DENSETSU - Konami (1986) - MSX - MegaROM RC-745 de 128 KB (Konami4) - banco 12 (se ejecuta en 0xa000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x0a000


; ----------------------------------------------------------------------
; DATOS dibujos_9F9E_cola: 8 dibujos de 8x8 a 4 bits para la hoja de la pagina
;   1 (desde el dibujo 56); los sube p00:48A6 por la lista 0x55BD (sigue del
;   banco anterior, 0x9F9E); lo leen p00:48A6 (158 bytes)
;   0xa000..0xa09e  (158 bytes)
DATA_dibujos_9F9E_cola:
	defb 01ch,010h,011h,01ch	; a000
	defb 01ch,010h,011h,0cch	; a004
	defb 011h,000h,011h,0c1h	; a008
	defb 011h,000h,011h,011h	; a00c
	defb 0c1h,000h,01ch,011h	; a010
	defb 0c1h,010h,011h,0c1h	; a014
	defb 011h,011h,011h,011h	; a018
	defb 01ch,0c1h,001h,011h	; a01c
	defb 01eh,01eh,001h,0ech	; a020
	defb 01eh,01eh,001h,0cch	; a024
	defb 01ch,0c1h,001h,01ch	; a028
	defb 0c1h,0c1h,000h,011h	; a02c
	defb 011h,011h,000h,011h	; a030
	defb 011h,011h,000h,001h	; a034
	defb 010h,011h,000h,000h	; a038
	defb 000h,000h,0cch,0c1h	; a03c
	defb 01ch,0cch,0cch,0cch	; a040
	defb 0c1h,011h,0cch,011h	; a044
	defb 011h,01ch,011h,0c1h	; a048
	defb 011h,01ch,011h,011h	; a04c
	defb 011h,01ch,01ch,0c1h	; a050
	defb 01ch,011h,011h,011h	; a054
	defb 011h,011h,011h,011h	; a058
	defb 011h,011h,01ch,0cch	; a05c
	defb 011h,011h,011h,0c1h	; a060
	defb 011h,011h,011h,011h	; a064
	defb 011h,01ch,01ch,0cch	; a068
	defb 011h,0cch,0c1h,011h	; a06c
	defb 011h,011h,0c1h,011h	; a070
	defb 011h,011h,011h,011h	; a074
	defb 011h,011h,011h,011h	; a078
	defb 011h,000h,0cch,0c1h	; a07c
	defb 0c1h,011h,0c1h,0c1h	; a080
	defb 0c1h,010h,0c1h,0c1h	; a084
	defb 0c1h,011h,011h,011h	; a088
	defb 011h,011h,011h,011h	; a08c
	defb 011h,011h,011h,011h	; a090
	defb 011h,010h,011h,011h	; a094
	defb 011h,000h,000h,000h	; a098
	defb 000h,000h	; a09c

; ----------------------------------------------------------------------
; DATOS dibujos_A09E: 4 dibujos de 8x8 a 4 bits para la hoja de la pagina 1
;   (desde el dibujo 16); los sube p00:48A6 por la lista 0x5612; lo leen
;   p00:48A6 (128 bytes)
;   0xa09e..0xa11e  (128 bytes)
DATA_dibujos_A09E:
	defb 011h,011h,011h,011h	; a09e
	defb 011h,0c3h,033h,033h	; a0a2
	defb 013h,01ch,0cch,0cch	; a0a6
	defb 013h,0c1h,011h,011h	; a0aa
	defb 013h,0c1h,0c3h,03ch	; a0ae
	defb 013h,0c1h,0cch,0cch	; a0b2
	defb 013h,0c1h,0c3h,0cch	; a0b6
	defb 013h,0c1h,0c3h,0cch	; a0ba
	defb 011h,011h,011h,011h	; a0be
	defb 033h,033h,0cch,011h	; a0c2
	defb 0cch,0cch,0c1h,0c1h	; a0c6
	defb 011h,011h,01ch,0c1h	; a0ca
	defb 03ch,0cch,01ch,0c1h	; a0ce
	defb 0cch,0cch,013h,0c1h	; a0d2
	defb 0cch,0cch,013h,0c1h	; a0d6
	defb 0cch,0cch,013h,0c1h	; a0da
	defb 013h,0c1h,0c3h,03ch	; a0de
	defb 01ch,0c1h,0c3h,03ch	; a0e2
	defb 01ch,0c1h,0c3h,033h	; a0e6
	defb 013h,0c1h,0cch,0cch	; a0ea
	defb 013h,0c1h,011h,011h	; a0ee
	defb 01ch,01ch,0cch,0cch	; a0f2
	defb 011h,0cch,0cch,0cch	; a0f6
	defb 011h,011h,011h,011h	; a0fa
	defb 0cch,0cch,013h,0c1h	; a0fe
	defb 0cch,0cch,013h,0c1h	; a102
	defb 033h,0cch,013h,0c1h	; a106
	defb 0cch,0cch,01ch,0c1h	; a10a
	defb 011h,011h,01ch,0c1h	; a10e
	defb 0cch,0cch,0c1h,0c1h	; a112
	defb 0cch,0cch,0cch,011h	; a116
	defb 011h,011h,011h,011h	; a11a

; ----------------------------------------------------------------------
; DATOS dibujos_A11E: 2 dibujos de 8x8 a 4 bits para la hoja de la pagina 1
;   (desde el dibujo 32); los sube p00:48A6 por la lista 0x5546; lo leen
;   p00:48A6 (64 bytes)
;   0xa11e..0xa15e  (64 bytes)
DATA_dibujos_A11E:
	defb 001h,011h,011h,010h	; a11e
	defb 013h,031h,013h,031h	; a122
	defb 013h,031h,013h,031h	; a126
	defb 013h,031h,013h,031h	; a12a
	defb 011h,011h,011h,011h	; a12e
	defb 012h,021h,012h,021h	; a132
	defb 012h,021h,012h,021h	; a136
	defb 012h,021h,012h,021h	; a13a
	defb 033h,033h,033h,032h	; a13e
	defb 022h,022h,022h,021h	; a142
	defb 022h,022h,022h,021h	; a146
	defb 011h,011h,011h,011h	; a14a
	defb 012h,021h,012h,021h	; a14e
	defb 012h,021h,012h,021h	; a152
	defb 012h,021h,012h,021h	; a156
	defb 001h,010h,001h,010h	; a15a

; ----------------------------------------------------------------------
; DATOS dibujos_A15E: 1 dibujos de 8x8 a 4 bits para la hoja de la pagina 1
;   (desde el dibujo 34); los sube p00:48A6 por la lista 0x55BD; lo leen
;   p00:48A6 (32 bytes)
;   0xa15e..0xa17e  (32 bytes)
DATA_dibujos_A15E:
	defb 001h,011h,011h,010h	; a15e
	defb 013h,033h,033h,031h	; a162
	defb 013h,022h,022h,021h	; a166
	defb 001h,011h,011h,010h	; a16a
	defb 001h,011h,011h,010h	; a16e
	defb 013h,033h,033h,031h	; a172
	defb 013h,022h,022h,021h	; a176
	defb 001h,011h,011h,010h	; a17a

; ----------------------------------------------------------------------
; DATOS volteados_A17E: 17 dibujos de 8x8 que p00:4A1B sube del reves (desde
;   el 16): la mitad derecha de la estatua; se solapan 4 bloques
;   (0xA17E-0xA39E, 0xA17E-0xA51E, 0xA35E-0xAF5E, 0xA4FE-0xA5FE); lo leen
;   p00:48A6, p00:4A24 (3552 bytes)
;   0xa17e..0xaf5e  (3552 bytes)
DATA_volteados_A17E:
	defb 000h,000h,000h,000h	; a17e
	defb 000h,000h,000h,000h	; a182
	defb 000h,000h,001h,011h	; a186
	defb 000h,001h,015h,051h	; a18a
	defb 000h,015h,054h,014h	; a18e
	defb 001h,054h,041h,044h	; a192
	defb 015h,044h,044h,011h	; a196
	defb 015h,044h,051h,015h	; a19a
	defb 000h,000h,000h,015h	; a19e
	defb 000h,000h,001h,015h	; a1a2
	defb 000h,000h,001h,054h	; a1a6
	defb 000h,000h,015h,055h	; a1aa
	defb 000h,000h,015h,045h	; a1ae
	defb 000h,000h,014h,051h	; a1b2
	defb 000h,001h,014h,051h	; a1b6
	defb 000h,001h,015h,055h	; a1ba
	defb 045h,015h,014h,041h	; a1be
	defb 055h,015h,045h,055h	; a1c2
	defb 055h,045h,055h,055h	; a1c6
	defb 055h,055h,051h,011h	; a1ca
	defb 055h,055h,011h,044h	; a1ce
	defb 055h,051h,044h,045h	; a1d2
	defb 055h,054h,055h,055h	; a1d6
	defb 055h,055h,055h,055h	; a1da
	defb 000h,000h,000h,000h	; a1de
	defb 000h,000h,000h,000h	; a1e2
	defb 000h,000h,000h,000h	; a1e6
	defb 000h,000h,000h,000h	; a1ea
	defb 000h,000h,000h,001h	; a1ee
	defb 000h,000h,001h,014h	; a1f2
	defb 001h,011h,014h,044h	; a1f6
	defb 015h,055h,055h,044h	; a1fa
	defb 000h,001h,051h,015h	; a1fe
	defb 000h,015h,015h,011h	; a202
	defb 001h,054h,015h,051h	; a206
	defb 015h,015h,015h,051h	; a20a
	defb 015h,045h,011h,051h	; a20e
	defb 044h,055h,011h,011h	; a212
	defb 044h,055h,011h,015h	; a216
	defb 055h,055h,011h,015h	; a21a
	defb 055h,055h,055h,055h	; a21e
	defb 055h,055h,055h,055h	; a222
	defb 055h,011h,055h,044h	; a226
	defb 015h,011h,011h,011h	; a22a
	defb 015h,011h,011h,011h	; a22e
	defb 055h,051h,011h,054h	; a232
	defb 055h,055h,041h,055h	; a236
	defb 015h,054h,055h,015h	; a23a
	defb 000h,000h,000h,000h	; a23e
	defb 000h,000h,000h,001h	; a242
	defb 000h,000h,000h,011h	; a246
	defb 000h,000h,001h,011h	; a24a
	defb 000h,000h,011h,011h	; a24e
	defb 000h,001h,014h,044h	; a252
	defb 000h,001h,045h,055h	; a256
	defb 000h,011h,054h,055h	; a25a
	defb 014h,044h,054h,045h	; a25e
	defb 054h,045h,045h,044h	; a262
	defb 054h,044h,055h,054h	; a266
	defb 054h,055h,055h,055h	; a26a
	defb 015h,055h,055h,055h	; a26e
	defb 011h,045h,051h,055h	; a272
	defb 011h,045h,051h,055h	; a276
	defb 041h,015h,051h,015h	; a27a
	defb 055h,055h,051h,045h	; a27e
	defb 055h,055h,051h,045h	; a282
	defb 055h,055h,051h,015h	; a286
	defb 055h,011h,011h,014h	; a28a
	defb 055h,055h,041h,011h	; a28e
	defb 054h,044h,044h,041h	; a292
	defb 044h,045h,055h,051h	; a296
	defb 055h,055h,055h,055h	; a29a
	defb 011h,054h,045h,055h	; a29e
	defb 011h,045h,054h,055h	; a2a2
	defb 051h,045h,055h,055h	; a2a6
	defb 014h,045h,055h,055h	; a2aa
	defb 015h,055h,051h,011h	; a2ae
	defb 011h,051h,014h,044h	; a2b2
	defb 011h,014h,055h,055h	; a2b6
	defb 011h,015h,055h,055h	; a2ba
	defb 000h,015h,015h,055h	; a2be
	defb 000h,015h,011h,011h	; a2c2
	defb 001h,055h,017h,088h	; a2c6
	defb 001h,051h,078h,09eh	; a2ca
	defb 001h,051h,078h,099h	; a2ce
	defb 015h,051h,067h,088h	; a2d2
	defb 015h,01ch,066h,077h	; a2d6
	defb 015h,016h,0cch,0cch	; a2da
	defb 055h,044h,041h,015h	; a2de
	defb 055h,044h,045h,011h	; a2e2
	defb 014h,054h,045h,015h	; a2e6
	defb 081h,044h,044h,051h	; a2ea
	defb 081h,054h,044h,051h	; a2ee
	defb 071h,044h,044h,051h	; a2f2
	defb 0cch,014h,044h,051h	; a2f6
	defb 0c7h,014h,044h,051h	; a2fa
	defb 055h,055h,055h,055h	; a2fe
	defb 055h,055h,055h,015h	; a302
	defb 051h,055h,055h,055h	; a306
	defb 055h,051h,055h,055h	; a30a
	defb 051h,055h,055h,045h	; a30e
	defb 011h,055h,044h,054h	; a312
	defb 011h,055h,055h,044h	; a316
	defb 051h,055h,055h,055h	; a31a
	defb 011h,011h,011h,055h	; a31e
	defb 051h,011h,011h,011h	; a322
	defb 051h,011h,011h,011h	; a326
	defb 051h,011h,011h,011h	; a32a
	defb 055h,011h,011h,011h	; a32e
	defb 045h,051h,011h,011h	; a332
	defb 044h,055h,051h,011h	; a336
	defb 044h,045h,051h,011h	; a33a
	defb 015h,016h,076h,077h	; a33e
	defb 015h,016h,076h,077h	; a342
	defb 015h,051h,076h,077h	; a346
	defb 015h,055h,011h,011h	; a34a
	defb 015h,051h,011h,07ch	; a34e
	defb 015h,051h,016h,07ch	; a352
	defb 015h,051h,016h,07ch	; a356
	defb 011h,051h,016h,07ch	; a35a
	defb 077h,014h,045h,051h	; a35e
	defb 077h,014h,045h,051h	; a362
	defb 071h,044h,045h,011h	; a366
	defb 014h,044h,051h,011h	; a36a
	defb 014h,054h,051h,011h	; a36e
	defb 015h,044h,055h,011h	; a372
	defb 015h,041h,051h,055h	; a376
	defb 011h,011h,011h,055h	; a37a
	defb 051h,015h,054h,054h	; a37e
	defb 051h,045h,055h,044h	; a382
	defb 011h,014h,015h,054h	; a386
	defb 011h,044h,045h,054h	; a38a
	defb 011h,055h,055h,041h	; a38e
	defb 011h,015h,044h,011h	; a392
	defb 041h,015h,011h,011h	; a396
	defb 054h,011h,011h,011h	; a39a
	defb 014h,044h,011h,011h	; a39e
	defb 014h,055h,014h,041h	; a3a2
	defb 015h,051h,011h,054h	; a3a6
	defb 011h,011h,041h,011h	; a3aa
	defb 011h,041h,054h,011h	; a3ae
	defb 014h,051h,054h,015h	; a3b2
	defb 045h,051h,011h,041h	; a3b6
	defb 015h,051h,015h,051h	; a3ba
	defb 011h,011h,016h,07ch	; a3be
	defb 001h,011h,016h,07ch	; a3c2
	defb 001h,011h,016h,07ch	; a3c6
	defb 001h,016h,011h,011h	; a3ca
	defb 001h,061h,017h,07ch	; a3ce
	defb 016h,011h,017h,077h	; a3d2
	defb 011h,011h,017h,077h	; a3d6
	defb 001h,011h,011h,011h	; a3da
	defb 011h,011h,011h,011h	; a3de
	defb 015h,011h,011h,011h	; a3e2
	defb 011h,011h,011h,011h	; a3e6
	defb 07ch,011h,011h,011h	; a3ea
	defb 0c7h,0c1h,011h,011h	; a3ee
	defb 0cch,07ch,011h,011h	; a3f2
	defb 0cch,011h,011h,011h	; a3f6
	defb 011h,0c1h,011h,000h	; a3fa
	defb 055h,041h,011h,011h	; a3fe
	defb 015h,041h,011h,011h	; a402
	defb 015h,054h,011h,011h	; a406
	defb 015h,051h,011h,011h	; a40a
	defb 011h,011h,0cch,0cch	; a40e
	defb 011h,011h,0cch,0cch	; a412
	defb 011h,01ch,077h,07ch	; a416
	defb 000h,01ch,077h,0cch	; a41a
	defb 011h,011h,015h,055h	; a41e
	defb 051h,014h,045h,051h	; a422
	defb 014h,045h,051h,055h	; a426
	defb 011h,011h,011h,011h	; a42a
	defb 0cch,0cch,0cch,0cch	; a42e
	defb 0cch,0cch,0cch,0cch	; a432
	defb 0cch,0cch,0cch,0cch	; a436
	defb 0cch,0cch,0cch,0cch	; a43a
	defb 000h,011h,017h,077h	; a43e
	defb 000h,001h,017h,077h	; a442
	defb 000h,017h,011h,07ch	; a446
	defb 001h,077h,071h,011h	; a44a
	defb 001h,017h,077h,077h	; a44e
	defb 001h,016h,016h,06ch	; a452
	defb 000h,016h,016h,06ch	; a456
	defb 000h,001h,011h,011h	; a45a
	defb 07ch,010h,000h,000h	; a45e
	defb 0c1h,000h,000h,001h	; a462
	defb 017h,010h,000h,001h	; a466
	defb 077h,071h,000h,011h	; a46a
	defb 077h,0c1h,001h,011h	; a46e
	defb 0cch,0c1h,001h,011h	; a472
	defb 0cch,010h,001h,011h	; a476
	defb 011h,000h,000h,011h	; a47a
	defb 001h,0cch,0cch,0cch	; a47e
	defb 011h,0cch,0c7h,0cch	; a482
	defb 01ch,0cch,0cch,0cch	; a486
	defb 01ch,0cch,0cch,0cch	; a48a
	defb 016h,066h,061h,066h	; a48e
	defb 016h,066h,066h,011h	; a492
	defb 016h,066h,061h,011h	; a496
	defb 011h,011h,011h,011h	; a49a
	defb 0cch,0cch,0cch,0cch	; a49e
	defb 077h,0cch,0cch,0cch	; a4a2
	defb 0cch,0cch,0cch,0cch	; a4a6
	defb 0cch,0cch,0cch,0cch	; a4aa
	defb 066h,066h,066h,066h	; a4ae
	defb 066h,066h,066h,061h	; a4b2
	defb 066h,066h,066h,066h	; a4b6
	defb 011h,011h,011h,011h	; a4ba
	defb 0c7h,061h,011h,011h	; a4be
	defb 0c7h,061h,011h,010h	; a4c2
	defb 0c7h,061h,011h,010h	; a4c6
	defb 011h,011h,061h,010h	; a4ca
	defb 0c7h,071h,016h,010h	; a4ce
	defb 077h,071h,011h,061h	; a4d2
	defb 077h,071h,011h,011h	; a4d6
	defb 011h,011h,011h,010h	; a4da
	defb 077h,071h,011h,000h	; a4de
	defb 077h,071h,010h,000h	; a4e2
	defb 0c7h,011h,071h,000h	; a4e6
	defb 011h,017h,077h,010h	; a4ea
	defb 077h,077h,071h,010h	; a4ee
	defb 0c6h,061h,061h,010h	; a4f2
	defb 0c6h,061h,061h,000h	; a4f6
	defb 011h,011h,010h,000h	; a4fa
	defb 000h,000h,001h,011h	; a4fe
	defb 000h,000h,014h,044h	; a502
	defb 000h,001h,044h,044h	; a506
	defb 000h,015h,044h,044h	; a50a
	defb 000h,015h,044h,044h	; a50e
	defb 000h,015h,045h,055h	; a512
	defb 000h,015h,045h,055h	; a516
	defb 000h,015h,044h,055h	; a51a
	defb 011h,010h,000h,000h	; a51e
	defb 044h,041h,000h,000h	; a522
	defb 044h,044h,010h,000h	; a526
	defb 044h,044h,051h,000h	; a52a
	defb 044h,046h,051h,000h	; a52e
	defb 056h,066h,051h,000h	; a532
	defb 056h,066h,051h,000h	; a536
	defb 055h,065h,061h,000h	; a53a
	defb 001h,051h,064h,044h	; a53e
	defb 001h,054h,011h,011h	; a542
	defb 001h,054h,051h,011h	; a546
	defb 001h,054h,045h,054h	; a54a
	defb 001h,055h,046h,054h	; a54e
	defb 001h,045h,046h,054h	; a552
	defb 015h,045h,056h,011h	; a556
	defb 015h,041h,055h,066h	; a55a
	defb 045h,051h,065h,010h	; a55e
	defb 011h,011h,065h,010h	; a562
	defb 011h,016h,055h,010h	; a566
	defb 056h,044h,055h,010h	; a56a
	defb 055h,055h,056h,010h	; a56e
	defb 056h,066h,056h,010h	; a572
	defb 016h,066h,055h,051h	; a576
	defb 066h,066h,015h,051h	; a57a
	defb 015h,051h,055h,055h	; a57e
	defb 015h,041h,015h,055h	; a582
	defb 015h,044h,041h,011h	; a586
	defb 015h,044h,041h,041h	; a58a
	defb 015h,055h,044h,041h	; a58e
	defb 001h,065h,055h,051h	; a592
	defb 001h,016h,066h,061h	; a596
	defb 001h,051h,011h,015h	; a59a
	defb 056h,066h,016h,051h	; a59e
	defb 056h,061h,065h,051h	; a5a2
	defb 016h,015h,056h,051h	; a5a6
	defb 041h,015h,066h,051h	; a5aa
	defb 044h,055h,066h,051h	; a5ae
	defb 055h,066h,066h,010h	; a5b2
	defb 016h,066h,061h,010h	; a5b6
	defb 051h,011h,011h,010h	; a5ba
	defb 001h,055h,055h,055h	; a5be
	defb 001h,054h,054h,055h	; a5c2
	defb 001h,054h,054h,055h	; a5c6
	defb 001h,054h,055h,055h	; a5ca
	defb 001h,054h,055h,055h	; a5ce
	defb 001h,054h,055h,045h	; a5d2
	defb 000h,015h,045h,045h	; a5d6
	defb 000h,001h,011h,011h	; a5da
	defb 065h,056h,065h,010h	; a5de
	defb 065h,066h,065h,010h	; a5e2
	defb 065h,066h,015h,010h	; a5e6
	defb 066h,016h,015h,010h	; a5ea
	defb 056h,066h,015h,010h	; a5ee
	defb 066h,016h,015h,010h	; a5f2
	defb 066h,011h,011h,000h	; a5f6
	defb 011h,011h,010h,000h	; a5fa
	defb 001h,005h,000h,000h	; a5fe
	defb 002h,000h,000h,000h	; a602
	defb 000h,000h,003h,000h	; a606
	defb 004h,063h,012h,000h	; a60a
	defb 00eh,006h,000h,000h	; a60e
	defb 063h,00ah,000h,000h	; a612
	defb 00bh,000h,010h,000h	; a616
	defb 000h,000h,000h,000h	; a61a
	defb 00fh,000h,000h,063h	; a61e
	defb 000h,022h,000h,063h	; a622
	defb 020h,000h,023h,000h	; a626
	defb 019h,063h,063h,000h	; a62a
	defb 000h,000h,000h,000h	; a62e
	defb 000h,000h,000h,000h	; a632
	defb 000h,000h,000h,000h	; a636
	defb 000h,029h,063h,000h	; a63a
	defb 000h,000h,000h,026h	; a63e
	defb 000h,000h,027h,000h	; a642
	defb 000h,000h,028h,000h	; a646
	defb 000h,000h,000h,000h	; a64a
	defb 02ah,02bh,000h,000h	; a64e
	defb 000h,000h,000h,000h	; a652
	defb 000h,000h,000h,000h	; a656
	defb 000h,000h,000h,000h	; a65a
	defb 02ch,000h,02dh,000h	; a65e
	defb 000h,000h,02eh,000h	; a662
	defb 02fh,000h,000h,000h	; a666
	defb 000h,000h,000h,031h	; a66a
	defb 032h,033h,0e0h,0a6h	; a66e
	defb 0a2h,0a7h,07ah,0a8h	; a672
	defb 0b0h,0a8h,0d3h,0a8h	; a676
	defb 0f1h,0a8h,08fh,0a9h	; a67a
	defb 0c5h,0a9h,01ah,0aah	; a67e
	defb 04ah,0aah,0bch,0aah	; a682
	defb 0e6h,0aah,0e6h,0aah	; a686
	defb 008h,0abh,02fh,0abh	; a68a
	defb 049h,0abh,067h,0abh	; a68e
	defb 080h,0abh,0b6h,0abh	; a692
	defb 0efh,0abh,0a2h,0ach	; a696
	defb 0d3h,0ach,036h,0adh	; a69a
	defb 07dh,0adh,0b0h,0adh	; a69e
	defb 0c6h,0adh,0fch,0adh	; a6a2
	defb 036h,0aeh,08ah,0aeh	; a6a6
	defb 0cah,0aeh,0eeh,0aeh	; a6aa
	defb 03eh,0afh,06ch,0afh	; a6ae
	defb 06eh,0afh,08fh,0afh	; a6b2
	defb 0afh,0afh,0f8h,0afh	; a6b6
	defb 04ah,0b0h,0bah,0b0h	; a6ba
	defb 0f2h,0b0h,01fh,0b1h	; a6be
	defb 048h,0b1h,076h,0b1h	; a6c2
	defb 0d0h,0b1h,0f9h,0b1h	; a6c6
	defb 066h,0b2h,099h,0b2h	; a6ca
	defb 0e5h,0b2h,00ah,0b3h	; a6ce
	defb 04bh,0b3h,067h,0b3h	; a6d2
	defb 099h,0b3h,0c0h,0b3h	; a6d6
	defb 0d5h,0b3h,0f8h,0b3h	; a6da
	defb 06eh,0b4h,0ech,0a6h	; a6de
	defb 002h,0a7h,020h,0a7h	; a6e2
	defb 04ch,0a7h,073h,0a7h	; a6e6
	defb 000h,000h,000h,047h	; a6ea
	defb 04fh,04ch,04eh,045h	; a6ee
	defb 042h,04fh,06eh,05dh	; a6f2
	defb 070h,000h,06fh,088h	; a6f6
	defb 073h,080h,05dh,066h	; a6fa
	defb 03ch,089h,03eh,0ffh	; a6fe
	defb 000h,076h,07bh,000h	; a702
	defb 076h,07bh,03eh,04bh	; a706
	defb 04fh,04eh,047h,065h	; a70a
	defb 079h,087h,000h,065h	; a70e
	defb 060h,03ch,066h,070h	; a712
	defb 000h,061h,06ah,073h	; a716
	defb 066h,03ch,089h,06fh	; a71a
	defb 03eh,0ffh,000h,06dh	; a71e
	defb 03ch,088h,068h,06ch	; a722
	defb 070h,080h,083h,06eh	; a726
	defb 03fh,04bh,04fh,04eh	; a72a
	defb 047h,065h,079h,074h	; a72e
	defb 000h,064h,073h,066h	; a732
	defb 079h,073h,000h,06eh	; a736
	defb 03ch,064h,060h,070h	; a73a
	defb 000h,064h,07dh,081h	; a73e
	defb 084h,06dh,000h,05fh	; a742
	defb 083h,081h,066h,05ch	; a746
	defb 03eh,0ffh,000h,04bh	; a74a
	defb 04fh,04eh,047h,065h	; a74e
	defb 079h,070h,000h,05fh	; a752
	defb 05bh,05ch,067h,083h	; a756
	defb 070h,074h,000h,06dh	; a75a
	defb 03ch,088h,068h,06ch	; a75e
	defb 087h,000h,06eh,061h	; a762
	defb 05bh,060h,065h,072h	; a766
	defb 074h,03ch,000h,06fh	; a76a
	defb 083h,079h,05ch,03eh	; a76e
	defb 0ffh,000h,069h,05dh	; a772
	defb 063h,03ch,088h,073h	; a776
	defb 066h,03ch,05ch,065h	; a77a
	defb 088h,070h,061h,063h	; a77e
	defb 074h,03ch,03fh,06fh	; a782
	defb 070h,060h,086h,060h	; a786
	defb 083h,060h,07dh,066h	; a78a
	defb 084h,088h,069h,03ch	; a78e
	defb 03eh,0fdh,061h,087h	; a792
	defb 06ch,063h,06dh,000h	; a796
	defb 05fh,05ch,061h,06fh	; a79a
	defb 065h,084h,03eh,0ffh	; a79e
	defb 0b2h,0a7h,0d9h,0a7h	; a7a2
	defb 008h,0a8h,011h,0a8h	; a7a6
	defb 01fh,0a8h,04bh,0a8h	; a7aa
	defb 05fh,0a8h,000h,000h	; a7ae
	defb 000h,05fh,084h,06ah	; a7b2
	defb 06bh,074h,000h,07ah	; a7b6
	defb 06ch,082h,08bh,05dh	; a7ba
	defb 066h,089h,06ah,03ch	; a7be
	defb 03eh,000h,000h,000h	; a7c2
	defb 000h,076h,03ch,061h	; a7c6
	defb 087h,000h,05dh,08ch	; a7ca
	defb 06dh,07eh,08ch,06dh	; a7ce
	defb 07dh,05ch,05ch,069h	; a7d2
	defb 03ch,03eh,0ffh,001h	; a7d6
	defb 042h,049h,047h,053h	; a7da
	defb 050h,049h,044h,045h	; a7de
	defb 052h,087h,06ah,05fh	; a7e2
	defb 067h,000h,06fh,05ch	; a7e6
	defb 076h,0fdh,032h,030h	; a7ea
	defb 030h,000h,047h,04fh	; a7ee
	defb 04ch,044h,000h,06ah	; a7f2
	defb 03ch,03eh,0fdh,03ah	; a7f6
	defb 000h,031h,000h,060h	; a7fa
	defb 05dh,000h,000h,032h	; a7fe
	defb 000h,060h,086h,06fh	; a802
	defb 05ch,0ffh,000h,05bh	; a806
	defb 082h,060h,03ch,06eh	; a80a
	defb 080h,03eh,0ffh,000h	; a80e
	defb 060h,072h,060h,03ch	; a812
	defb 000h,06ah,082h,072h	; a816
	defb 05eh,069h,03ch,03eh	; a81a
	defb 0ffh,002h,047h,052h	; a81e
	defb 049h,05ah,05ah,04ch	; a822
	defb 059h,087h,000h,06ah	; a826
	defb 05fh,067h,000h,05fh	; a82a
	defb 073h,0fdh,033h,030h	; a82e
	defb 030h,000h,047h,04fh	; a832
	defb 04ch,044h,06ah,03ch	; a836
	defb 03eh,0fdh,03ah,000h	; a83a
	defb 031h,000h,060h,05dh	; a83e
	defb 000h,000h,032h,000h	; a842
	defb 060h,086h,06fh,05ch	; a846
	defb 0ffh,000h,067h,079h	; a84a
	defb 072h,05eh,000h,05fh	; a84e
	defb 073h,074h,000h,05dh	; a852
	defb 082h,061h,084h,06bh	; a856
	defb 079h,08ch,06ah,03eh	; a85a
	defb 0ffh,000h,05fh,073h	; a85e
	defb 074h,000h,06bh,060h	; a862
	defb 081h,060h,03ch,000h	; a866
	defb 06fh,05ch,06eh,000h	; a86a
	defb 06ch,060h,05ch,064h	; a86e
	defb 06fh,068h,06fh,05ch	; a872
	defb 069h,03ch,03eh,0ffh	; a876
	defb 07eh,0a8h,000h,000h	; a87a
	defb 000h,061h,06eh,05dh	; a87e
	defb 066h,073h,000h,064h	; a882
	defb 07dh,081h,084h,06dh	; a886
	defb 05ch,083h,000h,06bh	; a88a
	defb 060h,066h,06ch,073h	; a88e
	defb 060h,061h,03ch,074h	; a892
	defb 000h,042h,049h,047h	; a896
	defb 053h,050h,049h,044h	; a89a
	defb 045h,052h,060h,03ch	; a89e
	defb 000h,073h,07ah,064h	; a8a2
	defb 088h,06ah,03ch,069h	; a8a6
	defb 05dh,066h,03ch,089h	; a8aa
	defb 03eh,0ffh,0b4h,0a8h	; a8ae
	defb 000h,000h,000h,04bh	; a8b2
	defb 04fh,04eh,047h,065h	; a8b6
	defb 079h,074h,000h,075h	; a8ba
	defb 03ch,08ch,062h,03ch	; a8be
	defb 06eh,03ch,082h,05bh	; a8c2
	defb 088h,060h,03ch,06ah	; a8c6
	defb 03ch,05ch,067h,061h	; a8ca
	defb 066h,03ch,089h,03eh	; a8ce
	defb 0ffh,0d7h,0a8h,000h	; a8d2
	defb 000h,000h,047h,052h	; a8d6
	defb 041h,053h,053h,04fh	; a8da
	defb 047h,052h,045h,074h	; a8de
	defb 000h,05ch,066h,073h	; a8e2
	defb 06ah,079h,070h,000h	; a8e6
	defb 080h,086h,05ch,069h	; a8ea
	defb 03ch,03eh,0ffh,0fdh	; a8ee
	defb 0a8h,022h,0a9h,048h	; a8f2
	defb 0a9h,06ah,0a9h,081h	; a8f6
	defb 0a9h,000h,000h,000h	; a8fa
	defb 06ah,088h,063h,088h	; a8fe
	defb 06ah,05ch,060h,03ch	; a902
	defb 000h,05fh,061h,073h	; a906
	defb 000h,066h,079h,070h	; a90a
	defb 000h,05ch,08ch,06ah	; a90e
	defb 061h,082h,000h,07dh	; a912
	defb 06eh,03ch,08ch,06dh	; a916
	defb 064h,088h,073h,066h	; a91a
	defb 03ch,089h,03eh,0ffh	; a91e
	defb 000h,052h,045h,044h	; a922
	defb 000h,046h,08dh,04dh	; a926
	defb 041h,04eh,070h,000h	; a92a
	defb 062h,086h,084h,06ah	; a92e
	defb 088h,060h,073h,05dh	; a932
	defb 03eh,05fh,079h,05eh	; a936
	defb 065h,088h,07dh,000h	; a93a
	defb 061h,05ch,06ch,063h	; a93e
	defb 06fh,065h,084h,07eh	; a942
	defb 03eh,0ffh,000h,05bh	; a946
	defb 088h,075h,06eh,081h	; a94a
	defb 074h,000h,06fh,088h	; a94e
	defb 06ah,03ch,060h,000h	; a952
	defb 086h,060h,081h,088h	; a956
	defb 000h,061h,060h,05ch	; a95a
	defb 087h,000h,07dh,08ch	; a95e
	defb 06dh,05ch,08ch,06eh	; a962
	defb 08ch,06ah,03eh,0ffh	; a966
	defb 003h,069h,05ch,06ch	; a96a
	defb 074h,000h,066h,089h	; a96e
	defb 077h,03ch,083h,061h	; a972
	defb 060h,05ch,000h,066h	; a976
	defb 03ch,089h,08ch,06ah	; a97a
	defb 080h,03eh,0ffh,000h	; a97e
	defb 069h,084h,066h,03ch	; a982
	defb 089h,000h,069h,084h	; a986
	defb 066h,03ch,089h,03eh	; a98a
	defb 0ffh,093h,0a9h,000h	; a98e
	defb 000h,004h,064h,084h	; a992
	defb 087h,000h,063h,07bh	; a996
	defb 081h,088h,070h,05ch	; a99a
	defb 083h,000h,05fh,066h	; a99e
	defb 03ch,05ch,065h,088h	; a9a2
	defb 070h,000h,06eh,06eh	; a9a6
	defb 03ch,063h,06dh,062h	; a9aa
	defb 06ah,03ch,065h,05ch	; a9ae
	defb 03eh,0fdh,03ah,000h	; a9b2
	defb 031h,000h,05dh,063h	; a9b6
	defb 06eh,083h,000h,000h	; a9ba
	defb 032h,000h,064h,06eh	; a9be
	defb 086h,083h,0ffh,0cdh	; a9c2
	defb 0a9h,0dah,0a9h,00ch	; a9c6
	defb 0aah,000h,000h,000h	; a9ca
	defb 06fh,070h,060h,000h	; a9ce
	defb 06ah,077h,03ch,083h	; a9d2
	defb 060h,05ch,03bh,0ffh	; a9d6
	defb 005h,03ah,031h,000h	; a9da
	defb 078h,03ch,05ch,083h	; a9de
	defb 06eh,03ch,076h,06fh	; a9e2
	defb 07bh,066h,000h,035h	; a9e6
	defb 030h,047h,04fh,04ch	; a9ea
	defb 044h,000h,032h,000h	; a9ee
	defb 05ch,073h,066h,066h	; a9f2
	defb 073h,070h,062h,000h	; a9f6
	defb 000h,000h,031h,030h	; a9fa
	defb 030h,047h,04fh,04ch	; a9fe
	defb 044h,000h,033h,000h	; aa02
	defb 06ah,077h,03ch,06fh	; aa06
	defb 05ch,0ffh,000h,05fh	; aa0a
	defb 060h,072h,060h,03ch	; aa0e
	defb 000h,06ah,082h,079h	; aa12
	defb 068h,088h,03eh,0ffh	; aa16
	defb 020h,0aah,00ch,0aah	; aa1a
	defb 000h,000h,006h,06eh	; aa1e
	defb 079h,08ch,06dh,000h	; aa22
	defb 05ch,062h,060h,05ch	; aa26
	defb 03bh,0fdh,031h,035h	; aa2a
	defb 030h,000h,047h,04fh	; aa2e
	defb 04ch,044h,06ah,03ch	; aa32
	defb 080h,03eh,0fdh,03ah	; aa36
	defb 000h,031h,000h,06eh	; aa3a
	defb 079h,083h,000h,000h	; aa3e
	defb 032h,000h,06eh,079h	; aa42
	defb 081h,06fh,05ch,0ffh	; aa46
	defb 050h,0aah,089h,0aah	; aa4a
	defb 000h,000h,000h,04bh	; aa4e
	defb 04fh,04eh,047h,065h	; aa52
	defb 079h,073h,06dh,03ch	; aa56
	defb 088h,068h,06ch,070h	; aa5a
	defb 000h,080h,083h,06eh	; aa5e
	defb 03fh,04bh,04fh,04eh	; aa62
	defb 047h,065h,079h,073h	; aa66
	defb 000h,06ch,07ch,074h	; aa6a
	defb 000h,052h,045h,044h	; aa6e
	defb 000h,046h,08dh,04dh	; aa72
	defb 041h,04eh,000h,060h	; aa76
	defb 03ch,000h,073h,07ah	; aa7a
	defb 064h,088h,06ah,03ch	; aa7e
	defb 069h,05dh,066h,03ch	; aa82
	defb 089h,03eh,0ffh,000h	; aa86
	defb 04bh,04fh,04eh,047h	; aa8a
	defb 065h,079h,073h,000h	; aa8e
	defb 06ch,07ch,070h,000h	; aa92
	defb 06ch,05ch,06dh,074h	; aa96
	defb 000h,000h,000h,000h	; aa9a
	defb 069h,05dh,063h,03ch	; aa9e
	defb 088h,073h,000h,06bh	; aaa2
	defb 060h,070h,000h,05ch	; aaa6
	defb 063h,074h,03ch,000h	; aaaa
	defb 000h,000h,000h,000h	; aaae
	defb 086h,060h,083h,066h	; aab2
	defb 03ch,089h,085h,05dh	; aab6
	defb 03eh,0ffh,0c0h,0aah	; aaba
	defb 000h,000h,007h,086h	; aabe
	defb 066h,074h,000h,061h	; aac2
	defb 06eh,05dh,066h,066h	; aac6
	defb 03ch,089h,03eh,05fh	; aaca
	defb 079h,05eh,070h,000h	; aace
	defb 06dh,07bh,065h,073h	; aad2
	defb 000h,066h,03ch,08ah	; aad6
	defb 07dh,088h,087h,000h	; aada
	defb 065h,067h,03ch,063h	; aade
	defb 080h,05dh,03eh,0ffh	; aae2
	defb 0eah,0aah,000h,000h	; aae6
	defb 000h,071h,079h,06bh	; aaea
	defb 070h,000h,074h,05ch	; aaee
	defb 083h,070h,074h,000h	; aaf2
	defb 07ah,067h,03ch,063h	; aaf6
	defb 03ch,06ah,060h,03ch	; aafa
	defb 000h,075h,06ch,080h	; aafe
	defb 05dh,066h,03ch,089h	; ab02
	defb 03eh,0ffh,00ch,0abh	; ab06
	defb 000h,000h,000h,07ah	; ab0a
	defb 067h,03ch,063h,03ch	; ab0e
	defb 06ah,06ch,03ch,062h	; ab12
	defb 082h,073h,000h,07ch	; ab16
	defb 05ch,066h,03ch,088h	; ab1a
	defb 074h,000h,07dh,082h	; ab1e
	defb 073h,000h,06fh,060h	; ab22
	defb 070h,067h,088h,06dh	; ab26
	defb 03ch,05ch,083h,03eh	; ab2a
	defb 0ffh,033h,0abh,000h	; ab2e
	defb 000h,000h,06dh,07bh	; ab32
	defb 065h,073h,000h,066h	; ab36
	defb 03ch,08ah,07dh,088h	; ab3a
	defb 06dh,03ch,000h,05ch	; ab3e
	defb 086h,087h,000h,063h	; ab42
	defb 068h,03eh,0ffh,04dh	; ab46
	defb 0abh,000h,000h,000h	; ab4a
	defb 046h,049h,052h,045h	; ab4e
	defb 054h,04fh,054h,045h	; ab52
	defb 04dh,074h,000h,076h	; ab56
	defb 03ch,040h,07ch,081h	; ab5a
	defb 088h,06dh,03ch,000h	; ab5e
	defb 06ah,05fh,068h,03eh	; ab62
	defb 0ffh,06bh,0abh,000h	; ab66
	defb 000h,000h,043h,04ch	; ab6a
	defb 055h,042h,04dh,041h	; ab6e
	defb 04eh,074h,000h,052h	; ab72
	defb 04fh,044h,06dh,03ch	; ab76
	defb 000h,06ah,05fh,068h	; ab7a
	defb 03eh,0ffh,088h,0abh	; ab7e
	defb 08ah,0abh,097h,0abh	; ab82
	defb 000h,000h,008h,0ffh	; ab86
	defb 000h,061h,05ch,000h	; ab8a
	defb 061h,05ch,000h,062h	; ab8e
	defb 05dh,000h,061h,05ch	; ab92
	defb 0ffh,000h,05fh,05ch	; ab96
	defb 081h,073h,000h,078h	; ab9a
	defb 03ch,067h,074h,000h	; ab9e
	defb 075h,03ch,08ch,062h	; aba2
	defb 03ch,06eh,03ch,082h	; aba6
	defb 05bh,088h,087h,000h	; abaa
	defb 07dh,08ch,06dh,05ch	; abae
	defb 083h,080h,03eh,0ffh	; abb2
	defb 0beh,0abh,08ah,0abh	; abb6
	defb 0c0h,0abh,000h,000h	; abba
	defb 01ch,0ffh,009h,075h	; abbe
	defb 03ch,08bh,05dh,061h	; abc2
	defb 087h,000h,06fh,05fh	; abc6
	defb 066h,06dh,062h,084h	; abca
	defb 06dh,000h,05bh,082h	; abce
	defb 060h,03ch,06eh,05dh	; abd2
	defb 03eh,05fh,084h,05ch	; abd6
	defb 070h,000h,075h,03ch	; abda
	defb 08ch,062h,03ch,06eh	; abde
	defb 03ch,082h,05bh,088h	; abe2
	defb 087h,000h,05bh,063h	; abe6
	defb 03ch,080h,05dh,03eh	; abea
	defb 0ffh,003h,0ach,08ah	; abee
	defb 0abh,005h,0ach,01fh	; abf2
	defb 0ach,045h,0ach,061h	; abf6
	defb 0ach,06dh,0ach,07ch	; abfa
	defb 0ach,085h,0ach,000h	; abfe
	defb 000h,00ah,0ffh,000h	; ac02
	defb 078h,03ch,067h,060h	; ac06
	defb 03ch,000h,075h,03ch	; ac0a
	defb 08bh,05dh,061h,070h	; ac0e
	defb 000h,060h,060h,08ch	; ac12
	defb 06dh,05ch,083h,073h	; ac16
	defb 066h,03ch,089h,03eh	; ac1a
	defb 0ffh,000h,05fh,079h	; ac1e
	defb 05eh,065h,088h,073h	; ac22
	defb 000h,07eh,062h,069h	; ac26
	defb 05dh,087h,000h,035h	; ac2a
	defb 06ch,062h,084h,06ah	; ac2e
	defb 081h,000h,078h,03ch	; ac32
	defb 067h,073h,000h,075h	; ac36
	defb 03ch,08bh,05dh,061h	; ac3a
	defb 060h,03ch,06fh,05fh	; ac3e
	defb 083h,03eh,0ffh,01dh	; ac42
	defb 03ah,000h,031h,000h	; ac46
	defb 07eh,062h,069h,05dh	; ac4a
	defb 087h,000h,035h,06ch	; ac4e
	defb 000h,086h,06ah,067h	; ac52
	defb 0fdh,000h,000h,032h	; ac56
	defb 000h,086h,06ah,065h	; ac5a
	defb 06fh,05ch,0ffh,000h	; ac5e
	defb 065h,03ch,088h,072h	; ac62
	defb 088h,066h,03ch,089h	; ac66
	defb 06fh,03eh,0ffh,000h	; ac6a
	defb 07eh,062h,069h,05dh	; ac6e
	defb 060h,03ch,000h,06ah	; ac72
	defb 082h,079h,068h,088h	; ac76
	defb 03eh,0ffh,000h,05bh	; ac7a
	defb 082h,060h,03ch,06eh	; ac7e
	defb 05dh,03eh,0ffh,000h	; ac82
	defb 05fh,079h,05eh,065h	; ac86
	defb 088h,07dh,000h,075h	; ac8a
	defb 03ch,08bh,05dh,061h	; ac8e
	defb 070h,000h,060h,060h	; ac92
	defb 08ch,06dh,05ch,083h	; ac96
	defb 080h,05dh,066h,03ch	; ac9a
	defb 089h,06fh,03eh,0ffh	; ac9e
	defb 0a8h,0ach,00ch,0aah	; aca2
	defb 000h,000h,00bh,078h	; aca6
	defb 088h,087h,000h,060h	; acaa
	defb 08ch,06dh,05ch,062h	; acae
	defb 060h,05ch,03bh,0fdh	; acb2
	defb 032h,030h,030h,000h	; acb6
	defb 047h,04fh,04ch,044h	; acba
	defb 06ah,03ch,03eh,0fdh	; acbe
	defb 03ah,000h,031h,000h	; acc2
	defb 060h,05dh,000h,000h	; acc6
	defb 000h,000h,032h,000h	; acca
	defb 060h,086h,06fh,05ch	; acce
	defb 0ffh,0ddh,0ach,0feh	; acd2
	defb 0ach,00ch,0aah,015h	; acd6
	defb 0adh,000h,000h,000h	; acda
	defb 07ah,067h,03ch,063h	; acde
	defb 03ch,06ah,087h,000h	; ace2
	defb 06ch,062h,08ch,06dh	; ace6
	defb 07eh,085h,05dh,060h	; acea
	defb 03bh,0fdh,031h,035h	; acee
	defb 030h,000h,047h,04fh	; acf2
	defb 04ch,044h,06dh,03ch	; acf6
	defb 05ch,05ch,080h,0ffh	; acfa
	defb 00ch,03ah,000h,031h	; acfe
	defb 000h,06ch,062h,08ch	; ad02
	defb 06dh,07dh,081h,05dh	; ad06
	defb 0fdh,000h,000h,032h	; ad0a
	defb 000h,06ch,062h,081h	; ad0e
	defb 06fh,05ch,0ffh,000h	; ad12
	defb 07ah,067h,03ch,063h	; ad16
	defb 03ch,06ah,087h,000h	; ad1a
	defb 06ch,062h,083h,070h	; ad1e
	defb 074h,000h,065h,03ch	; ad22
	defb 05ch,082h,08bh,05dh	; ad26
	defb 000h,060h,03ch,000h	; ad2a
	defb 075h,06ch,080h,05dh	; ad2e
	defb 06ah,03ch,03eh,0ffh	; ad32
	defb 042h,0adh,08ah,0abh	; ad36
	defb 044h,0adh,05ah,0adh	; ad3a
	defb 070h,0adh,000h,000h	; ad3e
	defb 00dh,0ffh,000h,070h	; ad42
	defb 062h,087h,000h,062h	; ad46
	defb 084h,06ah,081h,000h	; ad4a
	defb 06eh,05fh,066h,06dh	; ad4e
	defb 000h,05bh,063h,03ch	; ad52
	defb 083h,080h,03eh,0ffh	; ad56
	defb 01eh,03ah,031h,000h	; ad5a
	defb 070h,062h,087h,000h	; ad5e
	defb 05bh,063h,03ch,083h	; ad62
	defb 03eh,000h,032h,000h	; ad66
	defb 05bh,063h,03ch,06fh	; ad6a
	defb 05ch,0ffh,000h,070h	; ad6e
	defb 062h,060h,03ch,000h	; ad72
	defb 05bh,082h,079h,068h	; ad76
	defb 088h,03eh,0ffh,081h	; ad7a
	defb 0adh,000h,000h,000h	; ad7e
	defb 078h,03ch,067h,074h	; ad82
	defb 000h,075h,03ch,08bh	; ad86
	defb 05dh,061h,06ah,03ch	; ad8a
	defb 03eh,075h,03ch,08bh	; ad8e
	defb 05dh,061h,087h,000h	; ad92
	defb 06fh,05fh,067h,070h	; ad96
	defb 074h,000h,07eh,062h	; ad9a
	defb 069h,05dh,060h,03ch	; ad9e
	defb 000h,06ah,062h,065h	; ada2
	defb 088h,000h,075h,06ch	; ada6
	defb 080h,05dh,06ah,03ch	; adaa
	defb 03eh,0ffh,0b4h,0adh	; adae
	defb 000h,000h,00eh,05bh	; adb2
	defb 06fh,06ah,074h,000h	; adb6
	defb 07bh,066h,070h,000h	; adba
	defb 060h,079h,084h,079h	; adbe
	defb 066h,06ah,03eh,0ffh	; adc2
	defb 0d2h,0adh,08ah,0abh	; adc6
	defb 0d4h,0adh,0e6h,0adh	; adca
	defb 070h,0adh,000h,000h	; adce
	defb 00fh,0ffh,000h,070h	; add2
	defb 062h,087h,000h,062h	; add6
	defb 084h,06ah,081h,000h	; adda
	defb 06eh,07ch,06dh,07eh	; adde
	defb 083h,080h,03eh,0ffh	; ade2
	defb 01fh,03ah,031h,000h	; ade6
	defb 070h,062h,087h,000h	; adea
	defb 05bh,063h,03ch,083h	; adee
	defb 03eh,000h,032h,000h	; adf2
	defb 05bh,063h,03ch,06fh	; adf6
	defb 05ch,0ffh,008h,0aeh	; adfa
	defb 08ah,0abh,00ah,0aeh	; adfe
	defb 020h,0aeh,070h,0adh	; ae02
	defb 000h,000h,010h,0ffh	; ae06
	defb 000h,070h,062h,087h	; ae0a
	defb 000h,062h,084h,06ah	; ae0e
	defb 081h,000h,060h,061h	; ae12
	defb 03ch,087h,000h,05bh	; ae16
	defb 063h,03ch,083h,080h	; ae1a
	defb 03eh,0ffh,020h,03ah	; ae1e
	defb 031h,000h,070h,062h	; ae22
	defb 087h,000h,05bh,063h	; ae26
	defb 03ch,083h,03eh,000h	; ae2a
	defb 032h,000h,05bh,063h	; ae2e
	defb 03ch,06fh,05ch,0ffh	; ae32
	defb 03eh,0aeh,050h,0aeh	; ae36
	defb 00ch,0aah,000h,000h	; ae3a
	defb 000h,05ch,081h,08ch	; ae3e
	defb 066h,089h,05ch,03eh	; ae42
	defb 064h,03ch,06bh,08ah	; ae46
	defb 05dh,07dh,088h,074h	; ae4a
	defb 03bh,0ffh,011h,03ah	; ae4e
	defb 031h,000h,07eh,079h	; ae52
	defb 075h,083h,073h,000h	; ae56
	defb 065h,066h,07ah,000h	; ae5a
	defb 035h,030h,000h,047h	; ae5e
	defb 04fh,04ch,044h,000h	; ae62
	defb 032h,000h,078h,03ch	; ae66
	defb 05ch,083h,06eh,03ch	; ae6a
	defb 07eh,079h,07ah,07ah	; ae6e
	defb 067h,03ch,0fdh,000h	; ae72
	defb 000h,000h,000h,000h	; ae76
	defb 000h,000h,000h,000h	; ae7a
	defb 000h,000h,000h,031h	; ae7e
	defb 030h,030h,000h,047h	; ae82
	defb 04fh,04ch,044h,0ffh	; ae86
	defb 090h,0aeh,0ach,0aeh	; ae8a
	defb 000h,000h,000h,086h	; ae8e
	defb 066h,081h,073h,000h	; ae92
	defb 066h,08ah,05dh,06bh	; ae96
	defb 08bh,05dh,087h,000h	; ae9a
	defb 06ah,067h,063h,06ah	; ae9e
	defb 03ch,066h,06dh,062h	; aea2
	defb 06ah,03ch,065h,084h	; aea6
	defb 03eh,0ffh,000h,066h	; aeaa
	defb 08ah,06bh,08bh,05dh	; aeae
	defb 074h,000h,06eh,03ch	; aeb2
	defb 085h,073h,000h,060h	; aeb6
	defb 07ch,088h,070h,000h	; aeba
	defb 06ch,084h,065h,081h	; aebe
	defb 084h,06ah,088h,066h	; aec2
	defb 03ch,089h,03eh,0ffh	; aec6
	defb 0ceh,0aeh,000h,000h	; aeca
	defb 000h,054h,048h,045h	; aece
	defb 000h,04eh,041h,053h	; aed2
	defb 054h,059h,074h,000h	; aed6
	defb 079h,060h,076h,03dh	; aeda
	defb 081h,073h,000h,066h	; aede
	defb 03ch,08ah,07dh,088h	; aee2
	defb 06dh,03ch,000h,06ah	; aee6
	defb 05fh,068h,03eh,0ffh	; aeea
	defb 0f6h,0aeh,011h,0afh	; aeee
	defb 02dh,0afh,000h,000h	; aef2
	defb 000h,07ah,067h,03ch	; aef6
	defb 063h,03ch,06ah,087h	; aefa
	defb 000h,062h,084h,084h	; aefe
	defb 074h,03ch,000h,06eh	; af02
	defb 07ch,06dh,07eh,08ch	; af06
	defb 06dh,07dh,05ch,05ch	; af0a
	defb 080h,03eh,0ffh,012h	; af0e
	defb 03ah,000h,031h,000h	; af12
	defb 07ah,067h,03ch,063h	; af16
	defb 03ch,06ah,087h,000h	; af1a
	defb 05bh,063h,03ch,083h	; af1e
	defb 0fdh,000h,000h,032h	; af22
	defb 000h,05bh,063h,03ch	; af26
	defb 06fh,05ch,0ffh,000h	; af2a
	defb 07ah,067h,03ch,063h	; af2e
	defb 03ch,06ah,060h,03ch	; af32
	defb 000h,05bh,082h,079h	; af36
	defb 068h,088h,03eh,0ffh	; af3a
	defb 042h,0afh,000h,000h	; af3e
	defb 013h,05fh,05fh,03fh	; af42
	defb 04bh,04fh,04eh,047h	; af46
	defb 065h,079h,073h,000h	; af4a
	defb 05fh,06bh,060h,081h	; af4e
	defb 073h,075h,06eh,06ch	; af52
	defb 000h,04bh,04fh,04eh	; af56
	defb 047h,065h,079h,073h	; af5a

; ----------------------------------------------------------------------
; DATOS sin identificar  0xaf5e..0xb9d0  (2674 bytes)
DATA_AF5E:
	defb 000h,061h,074h,03ch,087h,000h,065h,067h,03ch,063h,080h,05dh,03eh,0ffh,000h,000h	; af5e  .at<..eg<c.]>...
	defb 072h,0afh,000h,000h,000h,04dh,055h,044h,041h,052h,04dh,04fh,052h,074h,000h,081h	; af6e  r....MUDARMORt..
	defb 07ch,081h,073h,000h,066h,03ch,08ah,05eh,061h,06dh,03ch,000h,06ah,05fh,068h,03eh	; af7e  |.s.f<.^am<.j_h>
	defb 0ffh,093h,0afh,000h,000h,000h,054h,057h,049h,04eh,04dh,049h,052h,045h,053h,074h	; af8e  ......TWINMIRESt
	defb 000h,05bh,060h,05ch,05ch,086h,073h,000h,074h,03ch,088h,070h,088h,06fh,082h,03eh	; af9e  .[`\\.s.t<.p.o.>
	defb 0ffh,0b5h,0afh,0d0h,0afh,000h,000h,000h,064h,073h,065h,061h,070h,000h,063h,07bh	; afae  ........dseap.c{
	defb 081h,088h,06eh,000h,080h,074h,03ch,084h,083h,000h,066h,079h,060h,03ch,05bh,083h	; afbe  ..n..t<...fy`<[.
	defb 03eh,0ffh,000h,063h,07bh,081h,088h,074h,000h,04bh,04fh,04eh,047h,065h,079h,073h	; afce  >..c{..t.KONGeys
	defb 000h,06dh,03ch,088h,068h,06ch,000h,060h,03ch,000h,05ch,061h,06ch,03ch,05ch,06dh	; afde  .m<.hl.`<.\al<\m
	defb 05ch,083h,000h,066h,079h,066h,03ch,089h,03eh,0ffh,000h,0b0h,018h,0b0h,00ch,0aah	; afee  \..fyf<.>.......
	defb 000h,000h,000h,05dh,07ah,073h,05ch,05eh,070h,000h,080h,05dh,064h,069h,03eh,0fdh	; affe  ...]zs\^p..]di>.
	defb 064h,03ch,06bh,08ah,05dh,07dh,088h,074h,03bh,0ffh,015h,03ah,031h,000h,06fh,07ch	; b00e  d<k.]}.t;..:1.o|
	defb 062h,066h,03ch,073h,000h,066h,05fh,060h,081h,031h,030h,047h,04fh,04ch,044h,000h	; b01e  bf<s.f_`.10GOLD.
	defb 032h,000h,076h,06fh,07bh,066h,073h,000h,07ah,069h,06ch,03ch,063h,035h,030h,047h	; b02e  2.vo{fs.zil<c50G
	defb 04fh,04ch,044h,000h,033h,000h,06ah,077h,03ch,06fh,05ch,0ffh,054h,0b0h,056h,0b0h	; b03e  OLD.3.jw<o\.T.V.
	defb 078h,0b0h,09eh,0b0h,000h,000h,016h,0ffh,000h,086h,066h,074h,000h,07bh,067h,064h	; b04e  x.........ft.{gd
	defb 060h,081h,073h,000h,06dh,060h,03ch,07ah,087h,000h,067h,03ch,08ch,06eh,000h,079h	; b05e  `.s.m`<z..g<.n.y
	defb 08ch,06dh,05fh,083h,088h,066h,03ch,089h,03eh,0ffh,000h,086h,065h,03ch,086h,065h	; b06e  .m_..f<.>...e<.e
	defb 03ch,000h,06dh,060h,03ch,07ah,087h,000h,06eh,06eh,03ch,063h,06dh,062h,084h,06dh	; b07e  <.m`<z..nn<cmb.m
	defb 000h,05bh,082h,060h,03ch,06eh,05dh,064h,03ch,065h,03ch,05ch,079h,067h,03eh,0ffh	; b08e  .[.`<n]d<e<\yg>.
	defb 000h,05fh,084h,05ch,070h,000h,04bh,04fh,04eh,047h,065h,079h,073h,000h,075h,06eh	; b09e  ._.\p.KONGeys.un
	defb 07ah,087h,000h,065h,066h,05bh,063h,03ch,079h,067h,03eh,0ffh,0beh,0b0h,000h,000h	; b0ae  z..ef[c<yg>.....
	defb 000h,06ah,088h,063h,088h,06ah,05ch,073h,000h,073h,064h,066h,06dh,05ch,08ch,06ah	; b0be  .j.c.j\s.sdfm\.j
	defb 000h,06dh,088h,06eh,073h,06fh,060h,070h,000h,06fh,088h,06ah,03ch,060h,000h,086h	; b0ce  .m.nso`p.o.j<`..
	defb 060h,081h,088h,000h,061h,060h,05ch,060h,03ch,000h,05bh,08ch,06ah,069h,05dh,066h	; b0de  `...a`\`<.[.ji]f
	defb 03ch,089h,03eh,0ffh,0fah,0b0h,0fch,0b0h,00ah,0b1h,000h,000h,017h,0ffh,000h,07bh	; b0ee  <.>............{
	defb 068h,088h,061h,060h,03ch,000h,05bh,082h,079h,067h,03eh,0ffh,000h,07bh,068h,088h	; b0fe  h.a`<.[.yg>..{h.
	defb 061h,074h,000h,064h,086h,084h,06dh,05ch,083h,000h,080h,05dh,06dh,03ch,067h,03eh	; b10e  at.d..m\...]m<g>
	defb 0ffh,023h,0b1h,000h,000h,000h,04bh,04fh,04eh,047h,073h,000h,065h,063h,075h,03ch	; b11e  .#....KONGs.ecu<
	defb 087h,000h,06eh,083h,070h,074h,000h,081h,062h,06fh,000h,073h,000h,06ah,079h,060h	; b12e  ..n.pt..bo.s.jy`
	defb 03ch,000h,075h,06ch,080h,05dh,06ah,03ch,03eh,0ffh,04ch,0b1h,000h,000h,000h,061h	; b13e  <.ul.]j<>.L....a
	defb 05ch,085h,05ch,000h,05ch,086h,074h,000h,04bh,04fh,04eh,047h,065h,079h,073h,000h	; b14e  \.\.\.t.KONGeys.
	defb 06bh,060h,081h,06dh,03ch,06fh,063h,084h,074h,03ch,000h,05fh,067h,064h,06eh,060h	; b15e  k`.m<oc.t<._gdn`
	defb 03ch,06dh,03ch,061h,06fh,05ch,03eh,0ffh,080h,0b1h,0ach,0b1h,0cah,0b1h,011h,0a8h	; b16e  <m<ao\>.........
	defb 000h,000h,000h,064h,086h,084h,06ah,07dh,073h,06fh,081h,000h,06fh,088h,06dh,03ch	; b17e  ...d..j}so..o.m<
	defb 07dh,000h,066h,08ah,05dh,082h,067h,083h,068h,03ch,03eh,0fdh,075h,06eh,06ch,000h	; b18e  }.f.].g.h<>.unl.
	defb 033h,035h,030h,000h,047h,04fh,04ch,044h,000h,06dh,03ch,06fh,03eh,0ffh,018h,03ah	; b19e  350.GOLD.m<o>..:
	defb 000h,031h,08dh,053h,048h,04fh,054h,040h,031h,0fdh,000h,000h,032h,08dh,053h,048h	; b1ae  .1.SHOT@1...2.SH
	defb 04fh,054h,040h,032h,000h,000h,033h,08dh,05fh,086h,082h,0ffh,000h,078h,060h,070h	; b1be  OT@2..3._....x`p
	defb 074h,0ffh,0d4h,0b1h,000h,000h,019h,04bh,04fh,04eh,047h,065h,079h,070h,000h,065h	; b1ce  t......KONGeyp.e
	defb 066h,05bh,063h,03ch,083h,07dh,073h,087h,000h,06dh,040h,076h,03ch,083h,073h,000h	; b1de  f[c<.}s..m@v<.s.
	defb 05dh,05eh,070h,000h,05fh,061h,06fh,065h,05ch,03eh,0ffh,001h,0b2h,033h,0b2h,054h	; b1ee  ]^p._aoe\>...3.T
	defb 0b2h,000h,000h,000h,04bh,04fh,04eh,047h,065h,079h,073h,000h,06dh,03ch,088h,068h	; b1fe  ....KONGeys.m<.h
	defb 06ch,070h,000h,080h,083h,06eh,0fdh,06eh,03ch,05dh,062h,06ch,073h,000h,06fh,060h	; b20e  lp...n.n<]bls.o`
	defb 070h,000h,065h,05ch,06dh,05ch,083h,000h,0fdh,061h,08bh,06ah,03ch,05ch,06fh,000h	; b21e  p.e\m\...a.j<\o.
	defb 074h,06fh,074h,03fh,0ffh,000h,061h,05ch,085h,05ch,000h,05ch,066h,06dh,03ch,000h	; b22e  tot?..a\.\.\fm<.
	defb 06fh,063h,084h,074h,03ch,000h,063h,067h,064h,06eh,060h,03ch,06dh,03ch,061h,06fh	; b23e  oc.t<.cgdn`<m<ao
	defb 05ch,081h,066h,05ch,03eh,0ffh,000h,080h,062h,000h,05fh,078h,03ch,05eh,06dh,05fh	; b24e  \.f\>...b._x<^m_
	defb 062h,060h,03ch,000h,080h,05ch,03eh,0ffh,06ah,0b2h,000h,000h,000h,06eh,03ch,05dh	; b25e  b`<..\>.j....n<]
	defb 062h,06ch,073h,000h,06fh,060h,073h,000h,066h,03ch,086h,084h,087h,000h,05dh,07ch	; b26e  bls.o`s.f<....]|
	defb 083h,070h,074h,000h,04bh,04fh,04eh,047h,065h,079h,073h,000h,06fh,07ah,06ah,03ch	; b27e  .pt.KONGeys.ozj<
	defb 060h,03ch,075h,06ch,080h,05dh,066h,03ch,089h,03eh,0ffh,09fh,0b2h,0bbh,0b2h,000h	; b28e  `<ul.]f<.>......
	defb 000h,000h,064h,073h,000h,06eh,075h,03ch,081h,074h,000h,066h,088h,068h,05ch,06fh	; b29e  ..ds.nu<.t.f.h\o
	defb 083h,000h,05ch,073h,082h,073h,000h,06eh,075h,03ch,081h,03eh,0ffh,000h,04bh,04fh	; b2ae  ..\s.s.nu<.>..KO
	defb 04eh,047h,065h,079h,073h,000h,061h,074h,03ch,060h,03ch,000h,06fh,063h,084h,074h	; b2be  NGeys.at<`<.oc.t
	defb 03ch,000h,05ch,060h,06fh,083h,07dh,073h,07dh,000h,05bh,063h,083h,064h,06eh,074h	; b2ce  <.\`o.}s}.[c.dnt
	defb 06dh,03ch,061h,06fh,05ch,03eh,0ffh,0e9h,0b2h,000h,000h,01ah,06eh,03ch,05dh,062h	; b2de  m<ao\>......n<]b
	defb 06ch,073h,000h,069h,06eh,070h,000h,06dh,03ch,06ah,05ch,060h,03bh,0fdh,03ah,000h	; b2ee  ls.inp.m<j\`;.:.
	defb 031h,000h,074h,05ch,000h,000h,032h,000h,05ch,05ch,05eh,0ffh,00eh,0b3h,000h,000h	; b2fe  1.t\..2.\\^.....
	defb 01bh,086h,066h,074h,000h,066h,08ah,05dh,06bh,08bh,05dh,066h,03ch,089h,03eh,000h	; b30e  ..ft.f.]k.]f<.>.
	defb 05bh,082h,060h,03ch,06eh,05dh,03fh,080h,062h,000h,06ah,067h,063h,06dh,062h,084h	; b31e  [.`<n]?.b.jgcmb.
	defb 06ah,03eh,05fh,084h,05ch,070h,000h,079h,060h,076h,03dh,081h,073h,000h,066h,03ch	; b32e  j>_.\p.y`v=.s.f<
	defb 08ah,07dh,088h,087h,000h,065h,067h,03ch,063h,080h,05dh,03eh,0ffh,04fh,0b3h,000h	; b33e  .}...eg<c.]>.O..
	defb 000h,000h,066h,085h,05ch,063h,07dh,073h,074h,000h,075h,060h,082h,073h,000h,063h	; b34e  ..f.\c}st.u`.s.c
	defb 088h,06dh,03ch,000h,06ah,05fh,068h,03eh,0ffh,06bh,0b3h,000h,000h,000h,04bh,04fh	; b35e  .m<.j_h>.k....KO
	defb 04eh,047h,065h,079h,073h,000h,06ch,07ch,074h,000h,067h,077h,03ch,06dh,073h,000h	; b36e  NGeys.l|t.gw<ms.
	defb 073h,085h,05ch,087h,000h,05dh,06bh,063h,067h,000h,06ah,06ah,03ch,000h,075h,06eh	; b37e  s.\..]kcg.jj<.un
	defb 06ch,073h,000h,076h,03ch,061h,066h,03ch,089h,03eh,0ffh,09dh,0b3h,000h,000h,000h	; b38e  ls.v<af<.>......
	defb 064h,073h,000h,074h,064h,087h,000h,05bh,063h,083h,070h,074h,000h,05bh,062h,03ch	; b39e  ds.td..[c.pt.[b<
	defb 073h,067h,073h,000h,060h,061h,03ch,060h,03ch,000h,075h,06ch,080h,05dh,06fh,082h	; b3ae  sgs.`a<`<.ul.]o.
	defb 03eh,0ffh,0c4h,0b3h,000h,000h,000h,060h,081h,067h,074h,000h,060h,06fh,081h,067h	; b3be  >......`.gt.`o.g
	defb 03ch,000h,06ah,05fh,068h,03eh,0ffh,0d9h,0b3h,000h,000h,000h,066h,088h,06dh,03ch	; b3ce  <.j_h>......f.m<
	defb 088h,070h,074h,000h,04bh,04fh,04eh,047h,073h,000h,065h,063h,075h,03ch,060h,03ch	; b3de  .pt.KONGs.ecu<`<
	defb 000h,060h,062h,065h,084h,06dh,05ch,083h,03eh,0ffh,002h,0b4h,01fh,0b4h,031h,0b4h	; b3ee  .`be.m\.>.....1.
	defb 04eh,0b4h,000h,000h,000h,05ch,079h,060h,081h,000h,048h,045h,04ch,049h,043h,04fh	; b3fe  N....\y`..HELICO
	defb 050h,054h,045h,052h,000h,06eh,000h,06ch,05dh,066h,088h,000h,066h,079h,067h,03eh	; b40e  PTER.n.l]f..fyg>
	defb 0ffh,000h,064h,06bh,081h,041h,052h,04dh,059h,000h,064h,06bh,081h,041h,052h,04dh	; b41e  ..dk.ARMY.dk.ARM
	defb 059h,000h,0ffh,000h,079h,06ah,03ch,000h,04ch,041h,044h,059h,000h,04bh,04fh,04eh	; b42e  Y...yj<.LADY.KON
	defb 047h,087h,000h,074h,08ch,063h,088h,000h,06dh,03ch,061h,06fh,05ch,073h,060h,0ffh	; b43e  G..t.c..m<ao\s`.
	defb 000h,074h,07eh,062h,066h,06fh,05ch,06eh,000h,04bh,049h,04eh,047h,000h,04bh,04fh	; b44e  .t~bfo\n.KING.KO
	defb 04eh,047h,060h,03ch,000h,066h,088h,06dh,03ch,066h,079h,05dh,069h,03ch,03eh,0ffh	; b45e  NG`<.f.m<fy]i<>.
	defb 002h,0b4h,07ah,0b4h,093h,0b4h,0a3h,0b4h,0beh,0b4h,000h,000h,000h,064h,03ch,062h	; b46e  ..z..........d<b
	defb 085h,05dh,000h,04dh,049h,054h,043h,048h,045h,04ch,03eh,0fdh,080h,062h,07eh,08ch	; b47e  .].MITCHEL>..b~.
	defb 06ah,069h,03ch,03eh,0ffh,000h,067h,062h,03ch,070h,000h,069h,06bh,081h,070h,000h	; b48e  ji<>..gb<p.ik.p.
	defb 07bh,060h,05dh,03eh,0ffh,021h,064h,084h,06dh,03ch,000h,04bh,049h,04eh,047h,000h	; b49e  {`]>.!d.m<.KING.
	defb 04bh,04fh,04eh,047h,07dh,000h,06ah,067h,060h,083h,06ah,03ch,085h,05dh,03eh,0ffh	; b4ae  KONG}.jg`.j<.]>.
	defb 022h,048h,045h,04ch,049h,043h,04fh,050h,054h,045h,052h,060h,03ch,07eh,08ch,06dh	; b4be  "HELICOPTER`<~.m
	defb 061h,079h,066h,06ah,03eh,0ffh,008h,0b0h,064h,084h,06ah,03ch,063h,06dh,03ch,074h	; b4ce  ayfj>...d.j<cm<t
	defb 000h,079h,088h,069h,03ch,062h,06dh,03ch,061h,071h,03eh,0feh,008h,0b8h,05bh,05ch	; b4de  .y.i<bm<aq>...[\
	defb 06dh,07bh,073h,000h,064h,05dh,082h,08bh,062h,07dh,000h,05ch,06ah,06ah,03ch,062h	; b4ee  m{s.d]..b}.\jj<b
	defb 03eh,0ffh,0cdh,0b3h,0b9h,009h,0b5h,022h,0b5h,036h,0b5h,011h,000h,002h,0cdh,08fh	; b4fe  >......".6......
	defb 0b9h,038h,018h,03eh,001h,0cdh,068h,040h,03eh,002h,032h,04dh,0c1h,03eh,004h,032h	; b50e  .8.>..h@>.2M.>.2
	defb 05dh,0c1h,018h,00fh,03eh,004h,032h,04dh,0c1h,018h,008h,03eh,003h,032h,04dh,0c1h	; b51e  ]...>.2M...>.2M.
	defb 0c3h,031h,0b5h,03eh,001h,032h,04bh,0c1h,0c9h,0cdh,0b3h,0b9h,048h,0b5h,040h,0b5h	; b52e  .1.>.2K.....H.@.
	defb 036h,0b5h,03eh,007h,032h,04dh,0c1h,0c3h,031h,0b5h,03ah,036h,0c1h,0feh,003h,0d2h	; b53e  6.>.2M..1.:6....
	defb 031h,0b5h,03eh,003h,032h,04dh,0c1h,03eh,007h,032h,05dh,0c1h,0c3h,031h,0b5h,03ah	; b54e  1.>.2M.>.2]..1.:
	defb 058h,0c3h,0a7h,0c2h,0dah,0b7h,03eh,005h,032h,04dh,0c1h,0c3h,0dah,0b7h,0cdh,0b3h	; b55e  X.....>.2M......
	defb 0b9h,075h,0b5h,07dh,0b5h,036h,0b5h,03eh,020h,0cdh,068h,040h,0c3h,031h,0b5h,0afh	; b56e  .u.}.6.> .h@.1..
	defb 032h,02fh,0c1h,0cdh,062h,040h,0c3h,031h,0b5h,0cdh,0b3h,0b9h,090h,0b5h,0a0h,0b5h	; b57e  2/..b@.1........
	defb 0afh,0b5h,011h,050h,000h,0cdh,08fh,0b9h,038h,01fh,03eh,003h,032h,04dh,0c1h,0c3h	; b58e  ...P....8.>.2M..
	defb 031h,0b5h,011h,000h,001h,0cdh,08fh,0b9h,0dah,031h,0b5h,0cdh,046h,0b9h,0c3h,098h	; b59e  1........1..F...
	defb 0b5h,03eh,003h,032h,04dh,0c1h,0c3h,031h,0b5h,03eh,002h,032h,04dh,0c1h,0c3h,031h	; b5ae  .>.2M..1.>.2M..1
	defb 0b5h,0cdh,0b3h,0b9h,0c8h,0b5h,0d7h,0b5h,036h,0b5h,011h,050h,001h,0cdh,08fh,0b9h	; b5be  ........6..P....
	defb 0dah,031h,0b5h,0cdh,013h,0b9h,0cdh,037h,0b9h,03eh,002h,032h,04dh,0c1h,0c3h,031h	; b5ce  .1.....7.>.2M..1
	defb 0b5h,03eh,00ch,0cdh,068h,040h,0c3h,0dah,0b7h,03ah,060h,0c3h,0a7h,028h,008h,03eh	; b5de  .>..h@...:`..(.>
	defb 002h,032h,04dh,0c1h,0c3h,031h,0b5h,03eh,001h,032h,04dh,0c1h,03eh,003h,032h,05dh	; b5ee  .2M..1.>.2M.>.2]
	defb 0c1h,0c3h,031h,0b5h,03eh,017h,0cdh,068h,040h,0c3h,0dah,0b7h,03ah,060h,0c3h,0a7h	; b5fe  ..1.>..h@...:`..
	defb 028h,008h,03eh,002h,032h,04dh,0c1h,0c3h,031h,0b5h,03eh,009h,032h,05dh,0c1h,0c3h	; b60e  (.>.2M..1.>.2]..
	defb 031h,0b5h,0cdh,0b3h,0b9h,029h,0b6h,053h,0b6h,036h,0b5h,021h,04fh,0c3h,07eh,0d6h	; b61e  1....).S.6.!O.~.
	defb 005h,027h,038h,014h,077h,03eh,007h,032h,04dh,0c1h,03eh,001h,032h,05fh,0c1h,03ah	; b62e  .'8.w>.2M.>.2_.:
	defb 046h,0c1h,0a7h,0c2h,031h,0b5h,018h,005h,03eh,006h,032h,04dh,0c1h,03eh,009h,032h	; b63e  F...1...>.2M.>.2
	defb 05dh,0c1h,0c3h,031h,0b5h,03eh,005h,032h,04dh,0c1h,018h,0f1h,0cdh,0b3h,0b9h,063h	; b64e  ]..1.>.2M......c
	defb 0b6h,079h,0b6h,036h,0b5h,011h,000h,002h,0cdh,08fh,0b9h,0dah,031h,0b5h,03eh,021h	; b65e  .y.6........1.>!
	defb 0cdh,068h,040h,03eh,002h,032h,04dh,0c1h,0c3h,031h,0b5h,03eh,002h,032h,04dh,0c1h	; b66e  .h@>.2M..1.>.2M.
	defb 0c3h,031h,0b5h,0cdh,0b3h,0b9h,08ah,0b6h,0b5h,0b6h,036h,0b5h,03ah,05ch,0c3h,0a7h	; b67e  .1........6.:\..
	defb 028h,01dh,011h,050h,001h,0cdh,08fh,0b9h,038h,025h,021h,05ch,0c3h,07eh,0d6h,001h	; b68e  (..P....8%!\.~..
	defb 027h,077h,03eh,01eh,0cdh,068h,040h,03eh,004h,032h,04dh,0c1h,0c3h,031h,0b5h,03eh	; b69e  'w>..h@>.2M..1.>
	defb 003h,032h,04dh,0c1h,0c3h,031h,0b5h,03eh,004h,032h,04dh,0c1h,0c3h,031h,0b5h,03eh	; b6ae  .2M..1.>.2M..1.>
	defb 002h,032h,04dh,0c1h,03eh,004h,032h,05dh,0c1h,0c3h,031h,0b5h,03ah,060h,0c3h,0a7h	; b6be  .2M.>.2]..1.:`..
	defb 028h,008h,03eh,002h,032h,04dh,0c1h,0c3h,031h,0b5h,03eh,001h,032h,04dh,0c1h,03eh	; b6ce  (.>.2M..1.>.2M.>
	defb 005h,032h,05dh,0c1h,0c3h,031h,0b5h,0cdh,0b3h,0b9h,0eeh,0b6h,001h,0b7h,036h,0b5h	; b6de  .2]..1........6.
	defb 0cdh,009h,0b7h,0dah,031h,0b5h,0cdh,050h,040h,03eh,001h,032h,05fh,0c1h,03eh,001h	; b6ee  ....1..P@>.2_.>.
	defb 032h,06ah,0c1h,03eh,005h,032h,04dh,0c1h,0c3h,031h,0b5h,021h,054h,0c3h,07eh,0d6h	; b6fe  2j.>.2M..1.!T.~.
	defb 001h,027h,0d8h,077h,0c9h,03eh,001h,032h,046h,0c1h,0c3h,0dah,0b7h,03ah,060h,0c3h	; b70e  .'.w.>.2F....:`.
	defb 0a7h,028h,008h,03eh,002h,032h,04dh,0c1h,0c3h,031h,0b5h,03eh,005h,032h,05dh,0c1h	; b71e  .(.>.2M..1.>.2].
	defb 0c3h,031h,0b5h,0cdh,0b3h,0b9h,03ah,0b7h,04bh,0b7h,036h,0b5h,0cdh,009h,0b7h,0dah	; b72e  .1....:.K.6.....
	defb 031h,0b5h,0cdh,013h,0b9h,03eh,005h,032h,04dh,0c1h,0c3h,031h,0b5h,03eh,005h,032h	; b73e  1....>.2M..1.>.2
	defb 04dh,0c1h,0c3h,031h,0b5h,03ah,060h,0c3h,0a7h,028h,008h,03eh,002h,032h,04dh,0c1h	; b74e  M..1.:`..(.>.2M.
	defb 0c3h,031h,0b5h,03eh,005h,032h,05dh,0c1h,0c3h,031h,0b5h,0cdh,0b3h,0b9h,072h,0b7h	; b75e  .1.>.2]..1....r.
	defb 07fh,0b7h,036h,0b5h,0cdh,009h,0b7h,03eh,024h,0cdh,068h,040h,03eh,001h,032h,069h	; b76e  ..6....>$.h@>.2i
	defb 0c1h,03eh,005h,032h,04dh,0c1h,0c3h,031h,0b5h,0cdh,0b3h,0b9h,090h,0b7h,0a1h,0b7h	; b77e  .>.2M..1........
	defb 036h,0b5h,011h,050h,000h,0cdh,08fh,0b9h,0dah,031h,0b5h,03eh,003h,032h,04dh,0c1h	; b78e  6..P.....1.>.2M.
	defb 0c3h,031h,0b5h,011h,000h,001h,0cdh,08fh,0b9h,0dah,031h,0b5h,0cdh,046h,0b9h,018h	; b79e  .1........1..F..
	defb 0eah,0cdh,0b3h,0b9h,0b8h,0b7h,031h,0b5h,036h,0b5h,021h,05dh,0c3h,07eh,0d6h,001h	; b7ae  ......1.6.!].~..
	defb 027h,0dah,031h,0b5h,077h,0afh,032h,042h,0c1h,0cdh,013h,0b9h,0cdh,037h,0b9h,03eh	; b7be  '.1.w.2B.....7.>
	defb 003h,032h,04dh,0c1h,0c3h,031h,0b5h,03eh,012h,0cdh,068h,040h,021h,04bh,0c1h,034h	; b7ce  .2M..1.>..h@!K.4
	defb 0c9h,0cdh,0b3h,0b9h,0e8h,0b7h,031h,0b5h,036h,0b5h,011h,000h,003h,0cdh,08fh,0b9h	; b7de  ......1.6.......
	defb 0dah,031h,0b5h,03eh,001h,032h,044h,0c1h,03ch,032h,05dh,0c1h,0c3h,031h,0b5h,0cdh	; b7ee  .1.>.2D.<2]..1..
	defb 0b3h,0b9h,006h,0b8h,090h,0b5h,031h,0b5h,011h,010h,000h,0cdh,08fh,0b9h,0dah,031h	; b7fe  ......1........1
	defb 0b5h,021h,02ah,0c1h,07eh,02bh,0cbh,03fh,057h,07eh,01fh,0cbh,07fh,028h,002h,0d6h	; b80e  .!*.~+.?W~...(..
	defb 030h,0cbh,05fh,028h,002h,0d6h,003h,05fh,07eh,093h,027h,077h,023h,07eh,09ah,027h	; b81e  0._(..._~.'w#~.'
	defb 077h,0cdh,062h,040h,03eh,003h,032h,04dh,0c1h,0c3h,0dah,0b7h,03ah,05fh,0c3h,0a7h	; b82e  w.b@>.2M....:_..
	defb 028h,011h,03eh,002h,032h,04dh,0c1h,03eh,01ah,0cdh,068h,040h,0afh,032h,05fh,0c3h	; b83e  (.>.2M.>..h@.2_.
	defb 0c3h,031h,0b5h,03eh,004h,032h,05dh,0c1h,0c3h,031h,0b5h,03ah,058h,0c3h,0a7h,028h	; b84e  .1.>.2]..1.:X..(
	defb 008h,03eh,003h,032h,04dh,0c1h,0c3h,031h,0b5h,03eh,019h,0cdh,068h,040h,0c3h,031h	; b85e  .>.2M..1.>..h@.1
	defb 0b5h,0cdh,0b3h,0b9h,078h,0b8h,088h,0b8h,09eh,0b8h,011h,050h,003h,0cdh,08fh,0b9h	; b86e  ....x......P....
	defb 038h,026h,03eh,001h,032h,05dh,0c1h,0c3h,031h,0b5h,011h,050h,003h,0cdh,08fh,0b9h	; b87e  8&>.2]..1..P....
	defb 038h,016h,03ah,041h,0c1h,0feh,019h,020h,0e9h,03eh,001h,032h,04eh,0c1h,018h,0e2h	; b88e  8.:A... .>.2N...
	defb 03eh,004h,032h,04dh,0c1h,0c3h,031h,0b5h,03eh,003h,032h,04dh,0c1h,0c3h,031h,0b5h	; b89e  >.2M..1.>.2M..1.
	defb 0c3h,0dah,0b7h,0cdh,0b3h,0b9h,0bah,0b8h,031h,0b5h,036h,0b5h,03eh,009h,032h,025h	; b8ae  ........1.6.>.2%
	defb 0c1h,03eh,001h,032h,001h,0c2h,032h,04fh,0c1h,021h,058h,038h,022h,021h,0c3h,0c3h	; b8be  .>.2..2O.!X8"!..
	defb 050h,040h,03eh,00eh,0cdh,068h,040h,0c3h,0dah,0b7h,03ah,060h,0c3h,0a7h,028h,008h	; b8ce  P@>..h@...:`..(.
	defb 03eh,002h,032h,04dh,0c1h,0c3h,031h,0b5h,03eh,003h,032h,05dh,0c1h,0c3h,031h,0b5h	; b8de  >.2M..1.>.2]..1.
	defb 03ah,006h,0c1h,0e6h,010h,0c8h,03eh,0ffh,0cdh,0e6h,040h,0c3h,031h,0b5h,0cdh,012h	; b8ee  :.....>...@.1...
	defb 042h,0c0h,03eh,08bh,0cdh,0e6h,040h,0afh,032h,067h,0c1h,03eh,007h,032h,001h,0c2h	; b8fe  B.>...@.2g.>.2..
	defb 0afh,032h,082h,0c6h,0c9h,0cdh,01ch,0b9h,022h,029h,0c1h,0c3h,062h,040h,03ah,02eh	; b90e  .2......")..b@:.
	defb 0c1h,026h,000h,06fh,029h,029h,029h,029h,03eh,030h,085h,027h,06fh,07ch,0ceh,000h	; b91e  .&.o))))>0.'o|..
	defb 027h,067h,0feh,010h,0d8h,021h,099h,009h,0c9h,021h,02fh,0c1h,07eh,0c6h,020h,027h	; b92e  'g...!...!/.~. '
	defb 030h,002h,03eh,099h,077h,0c3h,062h,040h,0cdh,01ch,0b9h,0edh,05bh,029h,0c1h,07dh	; b93e  0.>.w.b@....[).}
	defb 093h,027h,06fh,07ch,092h,027h,067h,0d8h,07dh,0cdh,085h,0b9h,0cbh,044h,028h,002h	; b94e  .'o|.'g.}....D(.
	defb 0c6h,005h,06fh,07ch,0cdh,085h,0b9h,067h,07dh,083h,027h,06fh,07ch,082h,027h,067h	; b95e  ..o|...g}.'o|.'g
	defb 022h,029h,0c1h,0c3h,062h,040h,021h,02fh,0c1h,03ah,02eh,0c1h,096h,027h,0d8h,0cdh	; b96e  ")..b@!/.:...'..
	defb 085h,0b9h,086h,0c3h,062h,040h,0c9h,0cbh,03fh,0cbh,05fh,0c8h,0cbh,09fh,0c6h,005h	; b97e  ....b@..?._.....
	defb 0c9h,021h,037h,0c1h,07eh,0a7h,020h,008h,02bh,02bh,07eh,093h,023h,07eh,09ah,0d8h	; b98e  .!7.~. .++~.#~..
	defb 021h,035h,0c1h,07eh,093h,027h,077h,023h,07eh,09ah,027h,077h,023h,07eh,0deh,000h	; b99e  !5.~.'w#~.'w#~..
	defb 027h,077h,0c3h,062h,040h,0e1h,01eh,000h,03ah,012h,0c1h,01fh,01fh,01fh,01fh,038h	; b9ae  'w.b@...:......8
	defb 007h,01ch,01fh,038h,003h,01fh,0d0h,01ch,0cbh,023h,016h,000h,019h,05eh,023h,056h	; b9be  ...8.....#...^#V
	defb 0ebh,0e9h	; b9ce

; ======================================================================
; CODIGO 0xb9d0..0xba93  (195 bytes)
; ======================================================================


L_B9D0:
	ld hl,0c201h		;b9d0
	ld a,(hl)			;b9d3
	and a			;b9d4
	ret nz			;b9d5
	ld a,(0c112h)		;b9d6
	and 002h		;b9d9
	ret z			;b9db
	ld a,(hl)			;b9dc
	ld (hl),002h		;b9dd
	ld (0c172h),a		;b9df
	xor a			;b9e2
	ld (0c280h),a		;b9e3
	ret			;b9e6
L_B9E7:
	ld hl,0c280h		;b9e7
	ld a,(hl)			;b9ea
	and a			;b9eb
	jp nz,L_BAD8		;b9ec
	inc (hl)			;b9ef
	call 0406eh		;b9f0
	ld hl,0e000h		;b9f3
	ld de,0ca00h		;b9f6
	ld bc,00300h		;b9f9
	ldir		;b9fc
	call 04200h		;b9fe
	call 041e2h		;ba01
	call L_BAB7		;ba04
	call L_BC6E		;ba07
	ld a,(0c307h)		;ba0a
	sub 004h		;ba0d
	ld (0c2f0h),a		;ba0f
	ld hl,00000h		;ba12
	ld (0c291h),hl		;ba15
	ld (0c281h),hl		;ba18
	ld a,001h		;ba1b
	ld (0c290h),a		;ba1d
	ld a,(0c140h)		;ba20
	ld c,004h		;ba23
	ld hl,0c2a0h		;ba25
	ld de,0c294h		;ba28
	call L_BD24		;ba2b
	ld a,(0c141h)		;ba2e
	ld c,007h		;ba31
	ld hl,0c2c0h		;ba33
	ld de,0c298h		;ba36
	call L_BD24		;ba39
	ld a,(0c142h)		;ba3c
	and a			;ba3f
	jr z,L_BA43		;ba40
	inc a			;ba42
L_BA43:
	ld (0c29ch),a		;ba43
	ld hl,068e8h		;ba46
	ld (0c29dh),hl		;ba49
	ld hl,068e8h		;ba4c
	ld (0c29dh),hl		;ba4f
	call 04074h		;ba52
	ld hl,00000h		;ba55
	ld b,l			;ba58
	ld c,l			;ba59
	xor a			;ba5a
	ld d,a			;ba5b
	call 0407ah		;ba5c
	ld a,00eh		;ba5f
	ld hl,0f400h		;ba61
	ld bc,00010h		;ba64
	call 04080h		;ba67
	ld a,008h		;ba6a
	ld hl,0f410h		;ba6c
	ld bc,00030h		;ba6f
	call 04080h		;ba72
	ld de,0bf6fh		;ba75
	call 0418eh		;ba78
	ld hl,0ba93h		;ba7b
	call 04056h		;ba7e
	ld hl,0baaeh		;ba81
	call 04056h		;ba84
	call L_BCA1		;ba87
	call L_BCAA		;ba8a
	call L_BD63		;ba8d
	jp 04086h		;ba90

; ----------------------------------------------------------------------
; DATOS sin identificar  0xba93..0xbab7  (36 bytes)
DATA_BA93:
	defb 060h,05ch,053h,048h,04fh,054h,000h,032h,0feh,060h,0dch,04dh,049h,054h,043h,048h	; ba93  `\SHOT.2.`.MITCH
	defb 045h,04ch,0feh,018h,0e8h,053h,050h,045h,045h,044h,0ffh,060h,004h,053h,048h,04fh	; baa3  EL...SPEED.`.SHO
	defb 054h,000h,031h,0ffh	; bab3

; ======================================================================
; CODIGO 0xbab7..0xbd84  (717 bytes)
; ======================================================================


L_BAB7:
	ld de,0c2a0h		;bab7
	ld b,00ch		;baba
	call L_BAC4		;babc
	ld b,015h		;babf
	ld de,0c2c0h		;bac1
L_BAC4:
	ld a,(de)			;bac4
	inc de			;bac5
	and a			;bac6
	jr z,L_BAD5		;bac7
	ld hl,0c33fh		;bac9
	call 0408ch		;bacc
	ld a,(hl)			;bacf
	ld (de),a			;bad0
L_BAD1:
	inc de			;bad1
	djnz L_BAC4		;bad2
	ret			;bad4
L_BAD5:
	ld (de),a			;bad5
	jr L_BAD1		;bad6
L_BAD8:
	call L_BD8D		;bad8
	ld a,(0c112h)		;badb
	and 002h		;bade
	jp nz,L_BBB3		;bae0
	ld a,(0c106h)		;bae3
	bit 4,a		;bae6
	jr nz,L_BAF3		;bae8
	call L_BC40		;baea
	call L_BC56		;baed
	jp L_BBE4		;baf0
L_BAF3:
	ld a,(0c291h)		;baf3
	cp 00bh		;baf6
	jr z,L_BB40		;baf8
	call L_BB83		;bafa
	ld a,(hl)			;bafd
	and a			;bafe
	jr z,L_BB0E		;baff
	inc hl			;bb01
	ld e,(hl)			;bb02
	inc hl			;bb03
	ld a,(hl)			;bb04
	sub 008h		;bb05
	ld d,a			;bb07
	call L_BD1E		;bb08
	rst 20h			;bb0b
	jr z,L_BB38		;bb0c
L_BB0E:
	call L_BB83		;bb0e
	ld a,(de)			;bb11
	and a			;bb12
	ret z			;bb13
	ld a,(de)			;bb14
	ld c,a			;bb15
	ld (hl),001h		;bb16
	ex de,hl			;bb18
	call L_BD1E		;bb19
	ex de,hl			;bb1c
	inc hl			;bb1d
	ld (hl),e			;bb1e
	inc hl			;bb1f
	ld a,d			;bb20
	add a,008h		;bb21
	ld (hl),a			;bb23
	ld a,025h		;bb24
	call 040e6h		;bb26
L_BB29:
	ld hl,0c140h		;bb29
	ld a,(0c291h)		;bb2c
	cp 004h		;bb2f
	jr c,L_BB36		;bb31
	ld hl,0c141h		;bb33
L_BB36:
	ld (hl),c			;bb36
	ret			;bb37
L_BB38:
	call L_BB83		;bb38
	ld c,000h		;bb3b
	ld (hl),c			;bb3d
	jr L_BB29		;bb3e
L_BB40:
	ld a,(0c292h)		;bb40
	and a			;bb43
	jr z,L_BB5E		;bb44
	dec a			;bb46
	ret nz			;bb47
	ld a,(0c35dh)		;bb48
	and a			;bb4b
	ret z			;bb4c
	ld hl,0c29ch		;bb4d
	ld a,(hl)			;bb50
	xor 001h		;bb51
	ld (hl),a			;bb53
	ld (0c142h),a		;bb54
	and a			;bb57
	ret z			;bb58
	ld a,025h		;bb59
	jp 040e6h		;bb5b
L_BB5E:
	ld a,(0c12eh)		;bb5e
	rra			;bb61
	rra			;bb62
	rra			;bb63
	rra			;bb64
	and 00fh		;bb65
	inc a			;bb67
	ld c,a			;bb68
	ld hl,0c2f0h		;bb69
	ld a,(hl)			;bb6c
	inc a			;bb6d
	cp c			;bb6e
	jr c,L_BB72		;bb6f
	xor a			;bb71
L_BB72:
	ld (hl),a			;bb72
	add a,004h		;bb73
	ld (0c307h),a		;bb75
L_BB78:
	ld hl,0c2f0h		;bb78
	ld b,001h		;bb7b
	ld de,048f0h		;bb7d
	jp 04092h		;bb80
L_BB83:
	ld a,(0c291h)		;bb83
	cp 004h		;bb86
	jr c,L_BBA1		;bb88
	ld hl,0c298h		;bb8a
	ld de,0c2c0h		;bb8d
	sub 004h		;bb90
	add a,a			;bb92
	ld c,a			;bb93
	ld a,(0c292h)		;bb94
	add a,a			;bb97
	ld b,a			;bb98
	add a,a			;bb99
	add a,a			;bb9a
	add a,a			;bb9b
	sub b			;bb9c
	add a,c			;bb9d
	jp 04098h		;bb9e
L_BBA1:
	ld hl,0c294h		;bba1
	ld de,0c2a0h		;bba4
	add a,a			;bba7
	ld c,a			;bba8
	ld a,(0c292h)		;bba9
	add a,a			;bbac
	add a,a			;bbad
	add a,a			;bbae
	add a,c			;bbaf
	jp 04098h		;bbb0
L_BBB3:
	xor a			;bbb3
	ld (0c500h),a		;bbb4
	ld (0c520h),a		;bbb7
	ld (0c540h),a		;bbba
	call 0409eh		;bbbd
	call 0406eh		;bbc0
	call 040a4h		;bbc3
	call 040b0h		;bbc6
	call 04062h		;bbc9
	call 040b6h		;bbcc
	call 041eeh		;bbcf
	call 040bch		;bbd2
	call 041e8h		;bbd5
	call 040dah		;bbd8
	ld a,(0c172h)		;bbdb
	ld (0c201h),a		;bbde
	jp 04086h		;bbe1
L_BBE4:
	ld a,(0c291h)		;bbe4
	cp 004h		;bbe7
	ld a,000h		;bbe9
	jr c,L_BBEF		;bbeb
	ld a,048h		;bbed
L_BBEF:
	ld (0c282h),a		;bbef
	ld hl,0c281h		;bbf2
	cp (hl)			;bbf5
	ret z			;bbf6
	jr nc,L_BC04		;bbf7
	dec (hl)			;bbf9
	push hl			;bbfa
	ld a,(hl)			;bbfb
	cp 020h		;bbfc
	call z,L_BC14		;bbfe
	pop hl			;bc01
	jr L_BC0D		;bc02
L_BC04:
	inc (hl)			;bc04
	push hl			;bc05
	ld a,(hl)			;bc06
	cp 020h		;bc07
	call z,L_BC35		;bc09
	pop hl			;bc0c
L_BC0D:
	ld a,(hl)			;bc0d
	ld b,a			;bc0e
	ld c,017h		;bc0f
	jp 00047h		;bc11   ; BIOS WRTVDP - Writes data in the VDP-register
L_BC14:
	ld hl,0baaeh		;bc14
	call 04056h		;bc17
	ld hl,0c2a0h		;bc1a
	ld bc,00000h		;bc1d
	call L_BCD3		;bc20
	ld bc,00100h		;bc23
	ld hl,0c2a8h		;bc26
	call L_BCD3		;bc29
	ld bc,00200h		;bc2c
	ld hl,0c2b0h		;bc2f
	jp L_BCD3		;bc32
L_BC35:
	ld hl,00000h		;bc35
	ld bc,00020h		;bc38
	xor a			;bc3b
	ld d,a			;bc3c
	jp 0407ah		;bc3d
L_BC40:
	ld hl,0c291h		;bc40
	ld a,(0c106h)		;bc43
	rra			;bc46
	jr c,L_BC52		;bc47
	rra			;bc49
	ret nc			;bc4a
	inc (hl)			;bc4b
	ld a,(hl)			;bc4c
	cp 00ch		;bc4d
	ret c			;bc4f
	dec (hl)			;bc50
	ret			;bc51
L_BC52:
	dec (hl)			;bc52
	ret p			;bc53
	inc (hl)			;bc54
	ret			;bc55
L_BC56:
	ld hl,0c292h		;bc56
	ld a,(0c106h)		;bc59
	bit 2,a		;bc5c
	jr nz,L_BC6A		;bc5e
	bit 3,a		;bc60
	ret z			;bc62
	inc (hl)			;bc63
	ld a,(hl)			;bc64
	cp 003h		;bc65
	ret c			;bc67
	dec (hl)			;bc68
	ret			;bc69
L_BC6A:
	dec (hl)			;bc6a
	ret p			;bc6b
	inc (hl)			;bc6c
	ret			;bc6d
L_BC6E:
	ld hl,0c2a0h		;bc6e
	ld b,00bh		;bc71
	call L_BC7B		;bc73
	ld hl,0c2c0h		;bc76
	ld b,014h		;bc79
L_BC7B:
	ld e,l			;bc7b
	ld d,h			;bc7c
	inc de			;bc7d
	inc de			;bc7e
	ld c,b			;bc7f
	ld a,(hl)			;bc80
	and a			;bc81
	jr z,L_BC8B		;bc82
	inc hl			;bc84
	ld a,(hl)			;bc85
	and a			;bc86
	jr nz,L_BC9D		;bc87
	dec hl			;bc89
	ld (hl),a			;bc8a
L_BC8B:
	ld a,(de)			;bc8b
	and a			;bc8c
	jr nz,L_BC95		;bc8d
	inc de			;bc8f
	inc de			;bc90
	dec c			;bc91
	jr nz,L_BC8B		;bc92
	ret			;bc94
L_BC95:
	ld a,(de)			;bc95
	ld (hl),a			;bc96
	xor a			;bc97
	ld (de),a			;bc98
	inc de			;bc99
	inc hl			;bc9a
	ld a,(de)			;bc9b
	ld (hl),a			;bc9c
L_BC9D:
	inc hl			;bc9d
	djnz L_BC7B		;bc9e
	ret			;bca0
L_BCA1:
	ld hl,0c2a0h		;bca1
	ld a,004h		;bca4
	ld c,000h		;bca6
	jr L_BCB3		;bca8
L_BCAA:
	ld hl,0c2c0h		;bcaa
	ld a,00bh		;bcad
	ld c,004h		;bcaf
	jr L_BCB3		;bcb1
L_BCB3:
	ld (0e800h),a		;bcb3
	ld a,c			;bcb6
	ld (0e801h),a		;bcb7
	ld b,000h		;bcba
L_BCBC:
	ld a,(0e801h)		;bcbc
	ld c,a			;bcbf
L_BCC0:
	push bc			;bcc0
	call L_BCD3		;bcc1
	pop bc			;bcc4
	inc c			;bcc5
	ld a,(0e800h)		;bcc6
	cp c			;bcc9
	jr nz,L_BCC0		;bcca
	inc b			;bccc
	ld a,b			;bccd
	cp 003h		;bcce
	jr nz,L_BCBC		;bcd0
	ret			;bcd2
L_BCD3:
	ld a,(hl)			;bcd3
	and a			;bcd4
	ret z			;bcd5
	ld (0e808h),hl		;bcd6
	ld (0e80ah),bc		;bcd9
	ld (0e80ch),a		;bcdd
	ld l,c			;bce0
	ld h,b			;bce1
	call 040c2h		;bce2
	ld a,h			;bce5
	add a,008h		;bce6
	ld h,a			;bce8
	ex de,hl			;bce9
	ld a,(0e80ch)		;bcea
	call 040c8h		;bced
	call 040ceh		;bcf0
	ld hl,(0e808h)		;bcf3
	inc hl			;bcf6
	ld a,(hl)			;bcf7
	cp 0ffh		;bcf8
	jr z,L_BD14		;bcfa
	ld hl,(0e80ah)		;bcfc
	call 040c2h		;bcff
	ld a,h			;bd02
	add a,038h		;bd03
	ld h,a			;bd05
	ld a,l			;bd06
	add a,008h		;bd07
	ld l,a			;bd09
	ex de,hl			;bd0a
	ld hl,(0e808h)		;bd0b
	inc hl			;bd0e
	ld b,001h		;bd0f
	call 04092h		;bd11
L_BD14:
	ld hl,(0e808h)		;bd14
	ld bc,(0e80ah)		;bd17
	inc hl			;bd1b
	inc hl			;bd1c
	ret			;bd1d
L_BD1E:
	ld hl,(0c291h)		;bd1e
	jp 040c2h		;bd21
L_BD24:
	and a			;bd24
	jr nz,L_BD29		;bd25
	ld (de),a			;bd27
	ret			;bd28
L_BD29:
	ld (0e800h),de		;bd29
	ld e,a			;bd2d
	ld b,000h		;bd2e
	ld d,000h		;bd30
L_BD32:
	ld a,(hl)			;bd32
	cp e			;bd33
	jr z,L_BD46		;bd34
	inc hl			;bd36
	inc hl			;bd37
	inc b			;bd38
	ld a,b			;bd39
	cp c			;bd3a
	jr nz,L_BD32		;bd3b
	ld b,000h		;bd3d
	inc d			;bd3f
	ld a,d			;bd40
	cp 003h		;bd41
	jr nz,L_BD32		;bd43
	ret			;bd45
L_BD46:
	ld a,c			;bd46
	cp 004h		;bd47
	jr z,L_BD4F		;bd49
	ld a,b			;bd4b
	add a,004h		;bd4c
	ld b,a			;bd4e
L_BD4F:
	ld l,b			;bd4f
	ld h,d			;bd50
	call 040c2h		;bd51
	ld a,h			;bd54
	add a,008h		;bd55
	ld h,a			;bd57
	ex de,hl			;bd58
	ld hl,(0e800h)		;bd59
	ld (hl),001h		;bd5c
	inc l			;bd5e
	ld (hl),e			;bd5f
	inc l			;bd60
	ld (hl),d			;bd61
	ret			;bd62
L_BD63:
	call L_BB78		;bd63
	ld a,(0c35dh)		;bd66
	and a			;bd69
	ret z			;bd6a
	ld a,01eh		;bd6b
	ld de,068e8h		;bd6d
	call 040c8h		;bd70
	ld hl,0bd84h		;bd73
	call 04056h		;bd76
	ld de,090f0h		;bd79
	ld hl,0c35dh		;bd7c
	ld b,001h		;bd7f
	jp 04092h		;bd81

; ----------------------------------------------------------------------
; DATOS sin identificar  0xbd84..0xbd8d  (9 bytes)
DATA_BD84:
	defb 080h,0e8h,07ah,067h,03ch,063h,03ch,06ah,0ffh	; bd84  ..zg<c<j.

; ======================================================================
; CODIGO 0xbd8d..0xbf6f  (482 bytes)
; ======================================================================


L_BD8D:
	ld hl,0f600h		;bd8d
	call 040d4h		;bd90
	call L_BD1E		;bd93
	ld a,(00007h)		;bd96
	ld c,a			;bd99
	out (c),l		;bd9a
	out (c),h		;bd9c
	xor a			;bd9e
	out (c),a		;bd9f
	out (c),a		;bda1
	ld hl,0c294h		;bda3
	ld b,003h		;bda6
L_BDA8:
	ld a,(hl)			;bda8
	inc l			;bda9
	ld d,(hl)			;bdaa
	and a			;bdab
	jr z,L_BDBA		;bdac
	ld a,b			;bdae
	cp 003h		;bdaf
	jr nz,L_BDC0		;bdb1
	ld a,(0c281h)		;bdb3
	cp 020h		;bdb6
	jr c,L_BDC0		;bdb8
L_BDBA:
	ld a,(0c281h)		;bdba
	add a,0e0h		;bdbd
	ld d,a			;bdbf
L_BDC0:
	out (c),d		;bdc0
	inc l			;bdc2
	ld a,(hl)			;bdc3
	out (c),a		;bdc4
	inc l			;bdc6
	inc l			;bdc7
	ld a,004h		;bdc8
	out (c),a		;bdca
	out (c),a		;bdcc
	djnz L_BDA8		;bdce
	ld a,(0c281h)		;bdd0
	add a,0e0h		;bdd3
	ld b,070h		;bdd5
L_BDD7:
	out (c),a		;bdd7
	out (c),a		;bdd9
	out (c),a		;bddb
	out (c),a		;bddd
	djnz L_BDD7		;bddf
	ret			;bde1
L_BDE2:
	ld a,(0c131h)		;bde2
	and a			;bde5
	jr nz,L_BDF1		;bde6
	ld a,(0c153h)		;bde8
	ld hl,0c125h		;bdeb
	cp (hl)			;bdee
	jr z,L_BE0F		;bdef
L_BDF1:
	xor a			;bdf1
	ld (0c800h),a		;bdf2
	ld a,0e0h		;bdf5
	ld (0e678h),a		;bdf7
	ld (0e67ch),a		;bdfa
	ld a,(0c125h)		;bdfd
	cp 003h		;be00
	ret nc			;be02
L_BE03:
	ld a,008h		;be03
	ld (0c153h),a		;be05
	ld hl,05050h		;be08
	ld (0c801h),hl		;be0b
	ret			;be0e
L_BE0F:
	ld a,(hl)			;be0f
	cp 004h		;be10
	jr z,L_BE03		;be12
	ld de,(0c801h)		;be14
	ld a,(0c303h)		;be18
	ld c,a			;be1b
	sub e			;be1c
	add a,012h		;be1d
	cp 024h		;be1f
	jr nc,L_BE2F		;be21
	ld a,(0c305h)		;be23
	ld b,a			;be26
	sub d			;be27
	add a,012h		;be28
	cp 024h		;be2a
	call c,L_BE3D		;be2c
L_BE2F:
	ld a,001h		;be2f
	ld (0c800h),a		;be31
	ld a,(0c125h)		;be34
	ld (0c153h),a		;be37
	jp L_BF37		;be3a
L_BE3D:
	call 040e0h		;be3d
	ld a,(0c306h)		;be40
	dec a			;be43
	jr z,L_BE53		;be44
	dec a			;be46
	jr z,L_BE5A		;be47
	dec a			;be49
	jr z,L_BE61		;be4a
	ld a,e			;be4c
	sub 010h		;be4d
	ld (0c801h),a		;be4f
	ret			;be52
L_BE53:
	ld a,e			;be53
	add a,010h		;be54
	ld (0c801h),a		;be56
	ret			;be59
L_BE5A:
	ld a,d			;be5a
	sub 010h		;be5b
	ld (0c802h),a		;be5d
	ret			;be60
L_BE61:
	ld a,d			;be61
	add a,010h		;be62
	ld (0c802h),a		;be64
	ret			;be67
L_BE68:
	xor a			;be68
	ld (0c152h),a		;be69
	ld a,(0c800h)		;be6c
	and a			;be6f
	ret z			;be70
	ld hl,0c173h		;be71
	and a			;be74
	ret z			;be75
	ld ix,0c800h		;be76
	ld a,(0c300h)		;be7a
	dec a			;be7d
	cp 004h		;be7e
	ret nc			;be80
	dec a			;be81
	jr z,L_BEC7		;be82
	dec a			;be84
	jr z,L_BED4		;be85
	dec a			;be87
	jr z,L_BEFB		;be88
	ld a,(0c303h)		;be8a
	sub (ix+001h)		;be8d
	cp 010h		;be90
	ret nc			;be92
	ld c,0f0h		;be93
L_BE95:
	ld a,(0c305h)		;be95
	sub (ix+002h)		;be98
	add a,00ch		;be9b
	cp 018h		;be9d
	ret nc			;be9f
	ld a,(0c303h)		;bea0
	add a,c			;bea3
	ld (ix+001h),a		;bea4
	cp 008h		;bea7
	jr c,L_BF08		;bea9
	cp 0a8h		;beab
	jr nc,L_BF0E		;bead
L_BEAF:
	ld a,001h		;beaf
	ld (0c152h),a		;beb1
	ld hl,0c803h		;beb4
	inc (hl)			;beb7
	ld a,(0c303h)		;beb8
	ld hl,0c305h		;bebb
	or (hl)			;bebe
	and 007h		;bebf
	ret nz			;bec1
	ld a,00eh		;bec2
	jp 040e6h		;bec4
L_BEC7:
	ld a,(0c303h)		;bec7
	sub (ix+001h)		;beca
	add a,010h		;becd
	ret nc			;becf
	ld c,010h		;bed0
	jr L_BE95		;bed2
L_BED4:
	ld a,(0c305h)		;bed4
	sub (ix+002h)		;bed7
	cp 010h		;beda
	ret nc			;bedc
	ld c,0f0h		;bedd
L_BEDF:
	ld a,(0c303h)		;bedf
	sub (ix+001h)		;bee2
	add a,00ch		;bee5
	cp 018h		;bee7
	ret nc			;bee9
	ld a,(0c305h)		;beea
	add a,c			;beed
	ld (ix+002h),a		;beee
	cp 008h		;bef1
	jr c,L_BF17		;bef3
	cp 0a8h		;bef5
	jr nc,L_BF1D		;bef7
	jr L_BEAF		;bef9
L_BEFB:
	ld a,(0c305h)		;befb
	sub (ix+002h)		;befe
	add a,010h		;bf01
	ret nc			;bf03
	ld c,010h		;bf04
	jr L_BEDF		;bf06
L_BF08:
	ld c,000h		;bf08
	ld a,0a0h		;bf0a
	jr L_BF12		;bf0c
L_BF0E:
	ld c,001h		;bf0e
	ld a,010h		;bf10
L_BF12:
	ld (0c801h),a		;bf12
	jr L_BF24		;bf15
L_BF17:
	ld a,0a0h		;bf17
	ld c,002h		;bf19
	jr L_BF21		;bf1b
L_BF1D:
	ld a,010h		;bf1d
	ld c,003h		;bf1f
L_BF21:
	ld (0c802h),a		;bf21
L_BF24:
	call 040ech		;bf24
	ld (0c153h),a		;bf27
	xor a			;bf2a
	ld (0c800h),a		;bf2b
	ld a,0e0h		;bf2e
	ld (0e678h),a		;bf30
	ld (0e67ch),a		;bf33
	ret			;bf36
L_BF37:
	ld hl,0c800h		;bf37
	ld a,(hl)			;bf3a
	and a			;bf3b
	ret z			;bf3c
	inc l			;bf3d
	ld a,(hl)			;bf3e
	sub 008h		;bf3f
	ld e,a			;bf41
	inc l			;bf42
	ld a,(hl)			;bf43
	sub 008h		;bf44
	ld d,a			;bf46
	inc l			;bf47
	ld a,(hl)			;bf48
	and 00ch		;bf49
	add a,a			;bf4b
	add a,0e0h		;bf4c
	ld hl,0e678h		;bf4e
	ld b,002h		;bf51
L_BF53:
	ld (hl),e			;bf53
	inc l			;bf54
	ld (hl),d			;bf55
	inc l			;bf56
	ld (hl),a			;bf57
	add a,004h		;bf58
	inc l			;bf5a
	inc l			;bf5b
	djnz L_BF53		;bf5c
	ld hl,0e5e0h		;bf5e
	ld a,001h		;bf61
	call L_BF68		;bf63
	ld a,04ch		;bf66
L_BF68:
	ld b,010h		;bf68
L_BF6A:
	ld (hl),a			;bf6a
	inc hl			;bf6b
	djnz L_BF6A		;bf6c
	ret			;bf6e

; ----------------------------------------------------------------------
; DATOS sin identificar  0xbf6f..0xbf9b  (44 bytes)
DATA_BF6F:
	defb 000h,0f8h,004h,000h,089h,010h,018h,0fch,0feh,0ffh,0feh,0fch,018h,010h,013h,000h	; bf6f  ................
	defb 085h,007h,018h,020h,040h,040h,006h,080h,002h,040h,088h,020h,018h,007h,0e0h,018h	; bf7f  ... @@...@. ....
	defb 004h,002h,002h,006h,001h,002h,002h,083h,004h,018h,0e0h,000h	; bf8f  ............

; ======================================================================
; CODIGO 0xbf9b..0xbff3  (88 bytes)
; ======================================================================


L_BF9B:
	ld a,(0c133h)		;bf9b
	and a			;bf9e
	ret nz			;bf9f
	ld a,(0c125h)		;bfa0
	sub 073h		;bfa3
	cp 005h		;bfa5
	ret nc			;bfa7
	xor a			;bfa8
	ld (0c166h),a		;bfa9
	ld ix,0d000h		;bfac
	ld b,00dh		;bfb0
	call 040e0h		;bfb2
L_BFB5:
	ld a,(ix+000h)		;bfb5
	cp 040h		;bfb8
	jr nz,L_BFD6		;bfba
	ld a,(ix+013h)		;bfbc
	and a			;bfbf
	jr nz,L_BFD6		;bfc0
	ld a,e			;bfc2
	sub (ix+016h)		;bfc3
	add a,011h		;bfc6
	cp 01bh		;bfc8
	jr nc,L_BFD6		;bfca
	ld a,d			;bfcc
	sub (ix+017h)		;bfcd
	add a,008h		;bfd0
	cp 011h		;bfd2
	jr c,L_BFE0		;bfd4
L_BFD6:
	exx			;bfd6
	ld de,00080h		;bfd7
	add ix,de		;bfda
	exx			;bfdc
	djnz L_BFB5		;bfdd
	ret			;bfdf
L_BFE0:
	ld a,(ix+015h)		;bfe0
	and a			;bfe3
	ld a,008h		;bfe4
	jr z,L_BFEA		;bfe6
	ld a,0f8h		;bfe8
L_BFEA:
	add a,(ix+017h)		;bfea
	ld (0c305h),a		;bfed
	jp 0420ch		;bff0

; ----------------------------------------------------------------------
; DATOS sin identificar  0xbff3..0xc000  (13 bytes)
DATA_BFF3:
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bff3  .............
