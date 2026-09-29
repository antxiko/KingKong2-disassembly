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
; DATOS volteados_A17E: 16 dibujos de 8x8 que p00:4A1B sube del reves (desde
;   el 17): la mitad derecha de la estatua; se solapan 4 bloques
;   (0xA17E-0xA37E, 0xA17E-0xA51E, 0xA35E-0xA4BE, 0xA4FE-0xA5FE); lo leen
;   p00:48A6, p00:4A24 (1152 bytes)
;   0xa17e..0xa5fe  (1152 bytes)
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

; ----------------------------------------------------------------------
; DATOS conversacion_de_cada_pantalla: 0x72 bytes, uno por pantalla (0-0x71):
;   la conversacion que empieza al pararse alli (0 = nadie); p01:7E60 con
;   0xA5FE + pantalla; lo leen p01:7E60 (114 bytes)
;   0xa5fe..0xa670  (114 bytes)
DATA_conversacion_de_cada_pantalla:
	defb 001h,005h,000h,000h,002h,000h,000h,000h,000h,000h,003h,000h,004h,063h,012h,000h	; a5fe  .............c..
	defb 00eh,006h,000h,000h,063h,00ah,000h,000h,00bh,000h,010h,000h,000h,000h,000h,000h	; a60e  ....c...........
	defb 00fh,000h,000h,063h,000h,022h,000h,063h,020h,000h,023h,000h,019h,063h,063h,000h	; a61e  ...c.".c .#..cc.
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,029h,063h,000h	; a62e  .............)c.
	defb 000h,000h,000h,026h,000h,000h,027h,000h,000h,000h,028h,000h,000h,000h,000h,000h	; a63e  ...&..'...(.....
	defb 02ah,02bh,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; a64e  *+..............
	defb 02ch,000h,02dh,000h,000h,000h,02eh,000h,02fh,000h,000h,000h,000h,000h,000h,031h	; a65e  ,.-...../......1
	defb 032h,033h	; a66e

; ----------------------------------------------------------------------
; DATOS conversaciones: 56 palabras: la lista de lineas de cada conversacion
;   (desde la 1); p02:80B3 con 0xA66E + 2*conversacion; lo leen p02:80B6 (112
;   bytes)
;   0xa670..0xa6e0  (112 bytes)
DATA_conversaciones:
	defb 0e0h,0a6h	; a670
	defb 0a2h,0a7h	; a672
	defb 07ah,0a8h	; a674
	defb 0b0h,0a8h	; a676
	defb 0d3h,0a8h	; a678
	defb 0f1h,0a8h	; a67a
	defb 08fh,0a9h	; a67c
	defb 0c5h,0a9h	; a67e
	defb 01ah,0aah	; a680
	defb 04ah,0aah	; a682
	defb 0bch,0aah	; a684
	defb 0e6h,0aah	; a686
	defb 0e6h,0aah	; a688
	defb 008h,0abh	; a68a
	defb 02fh,0abh	; a68c
	defb 049h,0abh	; a68e
	defb 067h,0abh	; a690
	defb 080h,0abh	; a692
	defb 0b6h,0abh	; a694
	defb 0efh,0abh	; a696
	defb 0a2h,0ach	; a698
	defb 0d3h,0ach	; a69a
	defb 036h,0adh	; a69c
	defb 07dh,0adh	; a69e
	defb 0b0h,0adh	; a6a0
	defb 0c6h,0adh	; a6a2
	defb 0fch,0adh	; a6a4
	defb 036h,0aeh	; a6a6
	defb 08ah,0aeh	; a6a8
	defb 0cah,0aeh	; a6aa
	defb 0eeh,0aeh	; a6ac
	defb 03eh,0afh	; a6ae
	defb 06ch,0afh	; a6b0
	defb 06eh,0afh	; a6b2
	defb 08fh,0afh	; a6b4
	defb 0afh,0afh	; a6b6
	defb 0f8h,0afh	; a6b8
	defb 04ah,0b0h	; a6ba
	defb 0bah,0b0h	; a6bc
	defb 0f2h,0b0h	; a6be
	defb 01fh,0b1h	; a6c0
	defb 048h,0b1h	; a6c2
	defb 076h,0b1h	; a6c4
	defb 0d0h,0b1h	; a6c6
	defb 0f9h,0b1h	; a6c8
	defb 066h,0b2h	; a6ca
	defb 099h,0b2h	; a6cc
	defb 0e5h,0b2h	; a6ce
	defb 00ah,0b3h	; a6d0
	defb 04bh,0b3h	; a6d2
	defb 067h,0b3h	; a6d4
	defb 099h,0b3h	; a6d6
	defb 0c0h,0b3h	; a6d8
	defb 0d5h,0b3h	; a6da
	defb 0f8h,0b3h	; a6dc
	defb 06eh,0b4h	; a6de

; ----------------------------------------------------------------------
; DATOS lineas_01: las 5 lineas de la conversacion 0x01 y un 0 de fin; lo leen
;   p02:80BC (12 bytes)
;   0xa6e0..0xa6ec  (12 bytes)
DATA_lineas_01:
	defb 0ech,0a6h	; a6e0
	defb 002h,0a7h	; a6e2
	defb 020h,0a7h	; a6e4
	defb 04ch,0a7h	; a6e6
	defb 073h,0a7h	; a6e8
	defb 000h,000h	; a6ea

; ----------------------------------------------------------------------
; DATOS linea_A6EC: accion 0x00 y texto hasta 0xFF (conversacion 0x01); lo
;   leen p02:80CA (22 bytes)
;   0xa6ec..0xa702  (22 bytes)
DATA_linea_A6EC:
	defb 000h,047h,04fh,04ch,04eh,045h,042h,04fh,06eh,05dh,070h,000h,06fh,088h,073h,080h	; a6ec  .GOLNEBOn]p.o.s.
	defb 05dh,066h,03ch,089h,03eh,0ffh	; a6fc

; ----------------------------------------------------------------------
; DATOS linea_A702: accion 0x00 y texto hasta 0xFF (conversacion 0x01); lo
;   leen p02:80CA (30 bytes)
;   0xa702..0xa720  (30 bytes)
DATA_linea_A702:
	defb 000h,076h,07bh,000h,076h,07bh,03eh,04bh,04fh,04eh,047h,065h,079h,087h,000h,065h	; a702  .v{.v{>KONGey..e
	defb 060h,03ch,066h,070h,000h,061h,06ah,073h,066h,03ch,089h,06fh,03eh,0ffh	; a712  `<fp.ajsf<.o>.

; ----------------------------------------------------------------------
; DATOS linea_A720: accion 0x00 y texto hasta 0xFF (conversacion 0x01); lo
;   leen p02:80CA (44 bytes)
;   0xa720..0xa74c  (44 bytes)
DATA_linea_A720:
	defb 000h,06dh,03ch,088h,068h,06ch,070h,080h,083h,06eh,03fh,04bh,04fh,04eh,047h,065h	; a720  .m<.hlp..n?KONGe
	defb 079h,074h,000h,064h,073h,066h,079h,073h,000h,06eh,03ch,064h,060h,070h,000h,064h	; a730  yt.dsfys.n<d`p.d
	defb 07dh,081h,084h,06dh,000h,05fh,083h,081h,066h,05ch,03eh,0ffh	; a740  }..m._..f\>.

; ----------------------------------------------------------------------
; DATOS linea_A74C: accion 0x00 y texto hasta 0xFF (conversacion 0x01); lo
;   leen p02:80CA (39 bytes)
;   0xa74c..0xa773  (39 bytes)
DATA_linea_A74C:
	defb 000h,04bh,04fh,04eh,047h,065h,079h,070h,000h,05fh,05bh,05ch,067h,083h,070h,074h	; a74c  .KONGeyp._[\g.pt
	defb 000h,06dh,03ch,088h,068h,06ch,087h,000h,06eh,061h,05bh,060h,065h,072h,074h,03ch	; a75c  .m<.hl..na[`ert<
	defb 000h,06fh,083h,079h,05ch,03eh,0ffh	; a76c

; ----------------------------------------------------------------------
; DATOS linea_A773: accion 0x00 y texto hasta 0xFF (conversacion 0x01); lo
;   leen p02:80CA (47 bytes)
;   0xa773..0xa7a2  (47 bytes)
DATA_linea_A773:
	defb 000h,069h,05dh,063h,03ch,088h,073h,066h,03ch,05ch,065h,088h,070h,061h,063h,074h	; a773  .i]c<.sf<\e.pact
	defb 03ch,03fh,06fh,070h,060h,086h,060h,083h,060h,07dh,066h,084h,088h,069h,03ch,03eh	; a783  <?op`.`.`}f..i<>
	defb 0fdh,061h,087h,06ch,063h,06dh,000h,05fh,05ch,061h,06fh,065h,084h,03eh,0ffh	; a793  .a.lcm._\aoe.>.

; ----------------------------------------------------------------------
; DATOS lineas_02: las 7 lineas de la conversacion 0x02 y un 0 de fin; lo leen
;   p02:80BC (16 bytes)
;   0xa7a2..0xa7b2  (16 bytes)
DATA_lineas_02:
	defb 0b2h,0a7h	; a7a2
	defb 0d9h,0a7h	; a7a4
	defb 008h,0a8h	; a7a6
	defb 011h,0a8h	; a7a8
	defb 01fh,0a8h	; a7aa
	defb 04bh,0a8h	; a7ac
	defb 05fh,0a8h	; a7ae
	defb 000h,000h	; a7b0

; ----------------------------------------------------------------------
; DATOS linea_A7B2: accion 0x00 y texto hasta 0xFF (conversacion 0x02); lo
;   leen p02:80CA (39 bytes)
;   0xa7b2..0xa7d9  (39 bytes)
DATA_linea_A7B2:
	defb 000h,05fh,084h,06ah,06bh,074h,000h,07ah,06ch,082h,08bh,05dh,066h,089h,06ah,03ch	; a7b2  ._.jkt.zl..]f.j<
	defb 03eh,000h,000h,000h,000h,076h,03ch,061h,087h,000h,05dh,08ch,06dh,07eh,08ch,06dh	; a7c2  >....v<a..].m~.m
	defb 07dh,05ch,05ch,069h,03ch,03eh,0ffh	; a7d2

; ----------------------------------------------------------------------
; DATOS linea_A7D9: accion 0x01 y texto hasta 0xFF (conversacion 0x02); lo
;   leen p02:80CA (47 bytes)
;   0xa7d9..0xa808  (47 bytes)
DATA_linea_A7D9:
	defb 001h,042h,049h,047h,053h,050h,049h,044h,045h,052h,087h,06ah,05fh,067h,000h,06fh	; a7d9  .BIGSPIDER.j_g.o
	defb 05ch,076h,0fdh,032h,030h,030h,000h,047h,04fh,04ch,044h,000h,06ah,03ch,03eh,0fdh	; a7e9  \v.200.GOLD.j<>.
	defb 03ah,000h,031h,000h,060h,05dh,000h,000h,032h,000h,060h,086h,06fh,05ch,0ffh	; a7f9  :.1.`]..2.`.o\.

; ----------------------------------------------------------------------
; DATOS linea_A808: accion 0x00 y texto hasta 0xFF (conversacion 0x02); lo
;   leen p02:80CA (9 bytes)
;   0xa808..0xa811  (9 bytes)
DATA_linea_A808:
	defb 000h,05bh,082h,060h,03ch,06eh,080h,03eh,0ffh	; a808  .[.`<n.>.

; ----------------------------------------------------------------------
; DATOS linea_A811: accion 0x00 y texto hasta 0xFF (conversacion 0x02); lo
;   leen p02:80CA (14 bytes)
;   0xa811..0xa81f  (14 bytes)
DATA_linea_A811:
	defb 000h,060h,072h,060h,03ch,000h,06ah,082h,072h,05eh,069h,03ch,03eh,0ffh	; a811  .`r`<.j.r^i<>.

; ----------------------------------------------------------------------
; DATOS linea_A81F: accion 0x02 y texto hasta 0xFF (conversacion 0x02); lo
;   leen p02:80CA (44 bytes)
;   0xa81f..0xa84b  (44 bytes)
DATA_linea_A81F:
	defb 002h,047h,052h,049h,05ah,05ah,04ch,059h,087h,000h,06ah,05fh,067h,000h,05fh,073h	; a81f  .GRIZZLY..j_g._s
	defb 0fdh,033h,030h,030h,000h,047h,04fh,04ch,044h,06ah,03ch,03eh,0fdh,03ah,000h,031h	; a82f  .300.GOLDj<>.:.1
	defb 000h,060h,05dh,000h,000h,032h,000h,060h,086h,06fh,05ch,0ffh	; a83f  .`]..2.`.o\.

; ----------------------------------------------------------------------
; DATOS linea_A84B: accion 0x00 y texto hasta 0xFF (conversacion 0x02); lo
;   leen p02:80CA (20 bytes)
;   0xa84b..0xa85f  (20 bytes)
DATA_linea_A84B:
	defb 000h,067h,079h,072h,05eh,000h,05fh,073h,074h,000h,05dh,082h,061h,084h,06bh,079h	; a84b  .gyr^._st.].a.ky
	defb 08ch,06ah,03eh,0ffh	; a85b

; ----------------------------------------------------------------------
; DATOS linea_A85F: accion 0x00 y texto hasta 0xFF (conversacion 0x02); lo
;   leen p02:80CA (27 bytes)
;   0xa85f..0xa87a  (27 bytes)
DATA_linea_A85F:
	defb 000h,05fh,073h,074h,000h,06bh,060h,081h,060h,03ch,000h,06fh,05ch,06eh,000h,06ch	; a85f  ._st.k`.`<.o\n.l
	defb 060h,05ch,064h,06fh,068h,06fh,05ch,069h,03ch,03eh,0ffh	; a86f  `\doho\i<>.

; ----------------------------------------------------------------------
; DATOS lineas_03: las 1 lineas de la conversacion 0x03 y un 0 de fin; lo leen
;   p02:80BC (4 bytes)
;   0xa87a..0xa87e  (4 bytes)
DATA_lineas_03:
	defb 07eh,0a8h	; a87a
	defb 000h,000h	; a87c

; ----------------------------------------------------------------------
; DATOS linea_A87E: accion 0x00 y texto hasta 0xFF (conversacion 0x03); lo
;   leen p02:80CA (50 bytes)
;   0xa87e..0xa8b0  (50 bytes)
DATA_linea_A87E:
	defb 000h,061h,06eh,05dh,066h,073h,000h,064h,07dh,081h,084h,06dh,05ch,083h,000h,06bh	; a87e  .an]fs.d}..m\..k
	defb 060h,066h,06ch,073h,060h,061h,03ch,074h,000h,042h,049h,047h,053h,050h,049h,044h	; a88e  `fls`a<t.BIGSPID
	defb 045h,052h,060h,03ch,000h,073h,07ah,064h,088h,06ah,03ch,069h,05dh,066h,03ch,089h	; a89e  ER`<.szd.j<i]f<.
	defb 03eh,0ffh	; a8ae

; ----------------------------------------------------------------------
; DATOS lineas_04: las 1 lineas de la conversacion 0x04 y un 0 de fin; lo leen
;   p02:80BC (4 bytes)
;   0xa8b0..0xa8b4  (4 bytes)
DATA_lineas_04:
	defb 0b4h,0a8h	; a8b0
	defb 000h,000h	; a8b2

; ----------------------------------------------------------------------
; DATOS linea_A8B4: accion 0x00 y texto hasta 0xFF (conversacion 0x04); lo
;   leen p02:80CA (31 bytes)
;   0xa8b4..0xa8d3  (31 bytes)
DATA_linea_A8B4:
	defb 000h,04bh,04fh,04eh,047h,065h,079h,074h,000h,075h,03ch,08ch,062h,03ch,06eh,03ch	; a8b4  .KONGeyt.u<.b<n<
	defb 082h,05bh,088h,060h,03ch,06ah,03ch,05ch,067h,061h,066h,03ch,089h,03eh,0ffh	; a8c4  .[.`<j<\gaf<.>.

; ----------------------------------------------------------------------
; DATOS lineas_05: las 1 lineas de la conversacion 0x05 y un 0 de fin; lo leen
;   p02:80BC (4 bytes)
;   0xa8d3..0xa8d7  (4 bytes)
DATA_lineas_05:
	defb 0d7h,0a8h	; a8d3
	defb 000h,000h	; a8d5

; ----------------------------------------------------------------------
; DATOS linea_A8D7: accion 0x00 y texto hasta 0xFF (conversacion 0x05); lo
;   leen p02:80CA (26 bytes)
;   0xa8d7..0xa8f1  (26 bytes)
DATA_linea_A8D7:
	defb 000h,047h,052h,041h,053h,053h,04fh,047h,052h,045h,074h,000h,05ch,066h,073h,06ah	; a8d7  .GRASSOGREt.\fsj
	defb 079h,070h,000h,080h,086h,05ch,069h,03ch,03eh,0ffh	; a8e7  yp...\i<>.

; ----------------------------------------------------------------------
; DATOS lineas_06: las 5 lineas de la conversacion 0x06 y un 0 de fin; lo leen
;   p02:80BC (12 bytes)
;   0xa8f1..0xa8fd  (12 bytes)
DATA_lineas_06:
	defb 0fdh,0a8h	; a8f1
	defb 022h,0a9h	; a8f3
	defb 048h,0a9h	; a8f5
	defb 06ah,0a9h	; a8f7
	defb 081h,0a9h	; a8f9
	defb 000h,000h	; a8fb

; ----------------------------------------------------------------------
; DATOS linea_A8FD: accion 0x00 y texto hasta 0xFF (conversacion 0x06); lo
;   leen p02:80CA (37 bytes)
;   0xa8fd..0xa922  (37 bytes)
DATA_linea_A8FD:
	defb 000h,06ah,088h,063h,088h,06ah,05ch,060h,03ch,000h,05fh,061h,073h,000h,066h,079h	; a8fd  .j.c.j\`<._as.fy
	defb 070h,000h,05ch,08ch,06ah,061h,082h,000h,07dh,06eh,03ch,08ch,06dh,064h,088h,073h	; a90d  p.\.ja..}n<.md.s
	defb 066h,03ch,089h,03eh,0ffh	; a91d

; ----------------------------------------------------------------------
; DATOS linea_A922: accion 0x00 y texto hasta 0xFF (conversacion 0x06); lo
;   leen p02:80CA (38 bytes)
;   0xa922..0xa948  (38 bytes)
DATA_linea_A922:
	defb 000h,052h,045h,044h,000h,046h,08dh,04dh,041h,04eh,070h,000h,062h,086h,084h,06ah	; a922  .RED.F.MANp.b..j
	defb 088h,060h,073h,05dh,03eh,05fh,079h,05eh,065h,088h,07dh,000h,061h,05ch,06ch,063h	; a932  .`s]>_y^e.}.a\lc
	defb 06fh,065h,084h,07eh,03eh,0ffh	; a942

; ----------------------------------------------------------------------
; DATOS linea_A948: accion 0x00 y texto hasta 0xFF (conversacion 0x06); lo
;   leen p02:80CA (34 bytes)
;   0xa948..0xa96a  (34 bytes)
DATA_linea_A948:
	defb 000h,05bh,088h,075h,06eh,081h,074h,000h,06fh,088h,06ah,03ch,060h,000h,086h,060h	; a948  .[.un.t.o.j<`..`
	defb 081h,088h,000h,061h,060h,05ch,087h,000h,07dh,08ch,06dh,05ch,08ch,06eh,08ch,06ah	; a958  ...a`\..}.m\.n.j
	defb 03eh,0ffh	; a968

; ----------------------------------------------------------------------
; DATOS linea_A96A: accion 0x03 y texto hasta 0xFF (conversacion 0x06); lo
;   leen p02:80CA (23 bytes)
;   0xa96a..0xa981  (23 bytes)
DATA_linea_A96A:
	defb 003h,069h,05ch,06ch,074h,000h,066h,089h,077h,03ch,083h,061h,060h,05ch,000h,066h	; a96a  .i\lt.f.w<.a`\.f
	defb 03ch,089h,08ch,06ah,080h,03eh,0ffh	; a97a

; ----------------------------------------------------------------------
; DATOS linea_A981: accion 0x00 y texto hasta 0xFF (conversacion 0x06); lo
;   leen p02:80CA (14 bytes)
;   0xa981..0xa98f  (14 bytes)
DATA_linea_A981:
	defb 000h,069h,084h,066h,03ch,089h,000h,069h,084h,066h,03ch,089h,03eh,0ffh	; a981  .i.f<..i.f<.>.

; ----------------------------------------------------------------------
; DATOS lineas_07: las 1 lineas de la conversacion 0x07 y un 0 de fin; lo leen
;   p02:80BC (4 bytes)
;   0xa98f..0xa993  (4 bytes)
DATA_lineas_07:
	defb 093h,0a9h	; a98f
	defb 000h,000h	; a991

; ----------------------------------------------------------------------
; DATOS linea_A993: accion 0x04 y texto hasta 0xFF (conversacion 0x07); lo
;   leen p02:80CA (50 bytes)
;   0xa993..0xa9c5  (50 bytes)
DATA_linea_A993:
	defb 004h,064h,084h,087h,000h,063h,07bh,081h,088h,070h,05ch,083h,000h,05fh,066h,03ch	; a993  .d...c{..p\.._f<
	defb 05ch,065h,088h,070h,000h,06eh,06eh,03ch,063h,06dh,062h,06ah,03ch,065h,05ch,03eh	; a9a3  \e.p.nn<cmbj<e\>
	defb 0fdh,03ah,000h,031h,000h,05dh,063h,06eh,083h,000h,000h,032h,000h,064h,06eh,086h	; a9b3  .:.1.]cn...2.dn.
	defb 083h,0ffh	; a9c3

; ----------------------------------------------------------------------
; DATOS lineas_08: las 3 lineas de la conversacion 0x08 y un 0 de fin; lo leen
;   p02:80BC (8 bytes)
;   0xa9c5..0xa9cd  (8 bytes)
DATA_lineas_08:
	defb 0cdh,0a9h	; a9c5
	defb 0dah,0a9h	; a9c7
	defb 00ch,0aah	; a9c9
	defb 000h,000h	; a9cb

; ----------------------------------------------------------------------
; DATOS linea_A9CD: accion 0x00 y texto hasta 0xFF (conversacion 0x08); lo
;   leen p02:80CA (13 bytes)
;   0xa9cd..0xa9da  (13 bytes)
DATA_linea_A9CD:
	defb 000h,06fh,070h,060h,000h,06ah,077h,03ch,083h,060h,05ch,03bh,0ffh	; a9cd  .op`.jw<.`\;.

; ----------------------------------------------------------------------
; DATOS linea_A9DA: accion 0x05 y texto hasta 0xFF (conversacion 0x08); lo
;   leen p02:80CA (50 bytes)
;   0xa9da..0xaa0c  (50 bytes)
DATA_linea_A9DA:
	defb 005h,03ah,031h,000h,078h,03ch,05ch,083h,06eh,03ch,076h,06fh,07bh,066h,000h,035h	; a9da  .:1.x<\.n<vo{f.5
	defb 030h,047h,04fh,04ch,044h,000h,032h,000h,05ch,073h,066h,066h,073h,070h,062h,000h	; a9ea  0GOLD.2.\sffspb.
	defb 000h,000h,031h,030h,030h,047h,04fh,04ch,044h,000h,033h,000h,06ah,077h,03ch,06fh	; a9fa  ..100GOLD.3.jw<o
	defb 05ch,0ffh	; aa0a

; ----------------------------------------------------------------------
; DATOS linea_AA0C: accion 0x00 y texto hasta 0xFF (conversacion 0x08); lo
;   leen p02:80CA (14 bytes)
;   0xaa0c..0xaa1a  (14 bytes)
DATA_linea_AA0C:
	defb 000h,05fh,060h,072h,060h,03ch,000h,06ah,082h,079h,068h,088h,03eh,0ffh	; aa0c  ._`r`<.j.yh.>.

; ----------------------------------------------------------------------
; DATOS lineas_09: las 2 lineas de la conversacion 0x09 y un 0 de fin; lo leen
;   p02:80BC (6 bytes)
;   0xaa1a..0xaa20  (6 bytes)
DATA_lineas_09:
	defb 020h,0aah	; aa1a
	defb 00ch,0aah	; aa1c
	defb 000h,000h	; aa1e

; ----------------------------------------------------------------------
; DATOS linea_AA20: accion 0x06 y texto hasta 0xFF (conversacion 0x09); lo
;   leen p02:80CA (42 bytes)
;   0xaa20..0xaa4a  (42 bytes)
DATA_linea_AA20:
	defb 006h,06eh,079h,08ch,06dh,000h,05ch,062h,060h,05ch,03bh,0fdh,031h,035h,030h,000h	; aa20  .ny.m.\b`\;.150.
	defb 047h,04fh,04ch,044h,06ah,03ch,080h,03eh,0fdh,03ah,000h,031h,000h,06eh,079h,083h	; aa30  GOLDj<.>.:.1.ny.
	defb 000h,000h,032h,000h,06eh,079h,081h,06fh,05ch,0ffh	; aa40  ..2.ny.o\.

; ----------------------------------------------------------------------
; DATOS lineas_0A: las 2 lineas de la conversacion 0x0A y un 0 de fin; lo leen
;   p02:80BC (6 bytes)
;   0xaa4a..0xaa50  (6 bytes)
DATA_lineas_0A:
	defb 050h,0aah	; aa4a
	defb 089h,0aah	; aa4c
	defb 000h,000h	; aa4e

; ----------------------------------------------------------------------
; DATOS linea_AA50: accion 0x00 y texto hasta 0xFF (conversacion 0x0A); lo
;   leen p02:80CA (57 bytes)
;   0xaa50..0xaa89  (57 bytes)
DATA_linea_AA50:
	defb 000h,04bh,04fh,04eh,047h,065h,079h,073h,06dh,03ch,088h,068h,06ch,070h,000h,080h	; aa50  .KONGeysm<.hlp..
	defb 083h,06eh,03fh,04bh,04fh,04eh,047h,065h,079h,073h,000h,06ch,07ch,074h,000h,052h	; aa60  .n?KONGeys.l|t.R
	defb 045h,044h,000h,046h,08dh,04dh,041h,04eh,000h,060h,03ch,000h,073h,07ah,064h,088h	; aa70  ED.F.MAN.`<.szd.
	defb 06ah,03ch,069h,05dh,066h,03ch,089h,03eh,0ffh	; aa80  j<i]f<.>.

; ----------------------------------------------------------------------
; DATOS linea_AA89: accion 0x00 y texto hasta 0xFF (conversacion 0x0A); lo
;   leen p02:80CA (51 bytes)
;   0xaa89..0xaabc  (51 bytes)
DATA_linea_AA89:
	defb 000h,04bh,04fh,04eh,047h,065h,079h,073h,000h,06ch,07ch,070h,000h,06ch,05ch,06dh	; aa89  .KONGeys.l|p.l\m
	defb 074h,000h,000h,000h,000h,069h,05dh,063h,03ch,088h,073h,000h,06bh,060h,070h,000h	; aa99  t....i]c<.s.k`p.
	defb 05ch,063h,074h,03ch,000h,000h,000h,000h,000h,086h,060h,083h,066h,03ch,089h,085h	; aaa9  \ct<......`.f<..
	defb 05dh,03eh,0ffh	; aab9

; ----------------------------------------------------------------------
; DATOS lineas_0B: las 1 lineas de la conversacion 0x0B y un 0 de fin; lo leen
;   p02:80BC (4 bytes)
;   0xaabc..0xaac0  (4 bytes)
DATA_lineas_0B:
	defb 0c0h,0aah	; aabc
	defb 000h,000h	; aabe

; ----------------------------------------------------------------------
; DATOS linea_AAC0: accion 0x07 y texto hasta 0xFF (conversacion 0x0B); lo
;   leen p02:80CA (38 bytes)
;   0xaac0..0xaae6  (38 bytes)
DATA_linea_AAC0:
	defb 007h,086h,066h,074h,000h,061h,06eh,05dh,066h,066h,03ch,089h,03eh,05fh,079h,05eh	; aac0  ..ft.an]ff<.>_y^
	defb 070h,000h,06dh,07bh,065h,073h,000h,066h,03ch,08ah,07dh,088h,087h,000h,065h,067h	; aad0  p.m{es.f<.}...eg
	defb 03ch,063h,080h,05dh,03eh,0ffh	; aae0

; ----------------------------------------------------------------------
; DATOS lineas_0C: las 1 lineas de la conversacion 0x0C y un 0 de fin; lo leen
;   p02:80BC (4 bytes)
;   0xaae6..0xaaea  (4 bytes)
DATA_lineas_0C:
	defb 0eah,0aah	; aae6
	defb 000h,000h	; aae8

; ----------------------------------------------------------------------
; DATOS linea_AAEA: accion 0x00 y texto hasta 0xFF (conversacion 0x0C); lo
;   leen p02:80CA (30 bytes)
;   0xaaea..0xab08  (30 bytes)
DATA_linea_AAEA:
	defb 000h,071h,079h,06bh,070h,000h,074h,05ch,083h,070h,074h,000h,07ah,067h,03ch,063h	; aaea  .qykp.t\.pt.zg<c
	defb 03ch,06ah,060h,03ch,000h,075h,06ch,080h,05dh,066h,03ch,089h,03eh,0ffh	; aafa  <j`<.ul.]f<.>.

; ----------------------------------------------------------------------
; DATOS lineas_0E: las 1 lineas de la conversacion 0x0E y un 0 de fin; lo leen
;   p02:80BC (4 bytes)
;   0xab08..0xab0c  (4 bytes)
DATA_lineas_0E:
	defb 00ch,0abh	; ab08
	defb 000h,000h	; ab0a

; ----------------------------------------------------------------------
; DATOS linea_AB0C: accion 0x00 y texto hasta 0xFF (conversacion 0x0E); lo
;   leen p02:80CA (35 bytes)
;   0xab0c..0xab2f  (35 bytes)
DATA_linea_AB0C:
	defb 000h,07ah,067h,03ch,063h,03ch,06ah,06ch,03ch,062h,082h,073h,000h,07ch,05ch,066h	; ab0c  .zg<c<jl<b.s.|\f
	defb 03ch,088h,074h,000h,07dh,082h,073h,000h,06fh,060h,070h,067h,088h,06dh,03ch,05ch	; ab1c  <.t.}.s.o`pg.m<\
	defb 083h,03eh,0ffh	; ab2c

; ----------------------------------------------------------------------
; DATOS lineas_0F: las 1 lineas de la conversacion 0x0F y un 0 de fin; lo leen
;   p02:80BC (4 bytes)
;   0xab2f..0xab33  (4 bytes)
DATA_lineas_0F:
	defb 033h,0abh	; ab2f
	defb 000h,000h	; ab31

; ----------------------------------------------------------------------
; DATOS linea_AB33: accion 0x00 y texto hasta 0xFF (conversacion 0x0F); lo
;   leen p02:80CA (22 bytes)
;   0xab33..0xab49  (22 bytes)
DATA_linea_AB33:
	defb 000h,06dh,07bh,065h,073h,000h,066h,03ch,08ah,07dh,088h,06dh,03ch,000h,05ch,086h	; ab33  .m{es.f<.}.m<.\.
	defb 087h,000h,063h,068h,03eh,0ffh	; ab43

; ----------------------------------------------------------------------
; DATOS lineas_10: las 1 lineas de la conversacion 0x10 y un 0 de fin; lo leen
;   p02:80BC (4 bytes)
;   0xab49..0xab4d  (4 bytes)
DATA_lineas_10:
	defb 04dh,0abh	; ab49
	defb 000h,000h	; ab4b

; ----------------------------------------------------------------------
; DATOS linea_AB4D: accion 0x00 y texto hasta 0xFF (conversacion 0x10); lo
;   leen p02:80CA (26 bytes)
;   0xab4d..0xab67  (26 bytes)
DATA_linea_AB4D:
	defb 000h,046h,049h,052h,045h,054h,04fh,054h,045h,04dh,074h,000h,076h,03ch,040h,07ch	; ab4d  .FIRETOTEMt.v<@|
	defb 081h,088h,06dh,03ch,000h,06ah,05fh,068h,03eh,0ffh	; ab5d  ..m<.j_h>.

; ----------------------------------------------------------------------
; DATOS lineas_11: las 1 lineas de la conversacion 0x11 y un 0 de fin; lo leen
;   p02:80BC (4 bytes)
;   0xab67..0xab6b  (4 bytes)
DATA_lineas_11:
	defb 06bh,0abh	; ab67
	defb 000h,000h	; ab69

; ----------------------------------------------------------------------
; DATOS linea_AB6B: accion 0x00 y texto hasta 0xFF (conversacion 0x11); lo
;   leen p02:80CA (21 bytes)
;   0xab6b..0xab80  (21 bytes)
DATA_linea_AB6B:
	defb 000h,043h,04ch,055h,042h,04dh,041h,04eh,074h,000h,052h,04fh,044h,06dh,03ch,000h	; ab6b  .CLUBMANt.RODm<.
	defb 06ah,05fh,068h,03eh,0ffh	; ab7b

; ----------------------------------------------------------------------
; DATOS lineas_12: las 3 lineas de la conversacion 0x12 y un 0 de fin; lo leen
;   p02:80BC (8 bytes)
;   0xab80..0xab88  (8 bytes)
DATA_lineas_12:
	defb 088h,0abh	; ab80
	defb 08ah,0abh	; ab82
	defb 097h,0abh	; ab84
	defb 000h,000h	; ab86

; ----------------------------------------------------------------------
; DATOS linea_AB88: accion 0x08 y texto hasta 0xFF (conversacion 0x12); lo
;   leen p02:80CA (2 bytes)
;   0xab88..0xab8a  (2 bytes)
DATA_linea_AB88:
	defb 008h,0ffh	; ab88

; ----------------------------------------------------------------------
; DATOS linea_AB8A: accion 0x00 y texto hasta 0xFF (conversacion 0x12); lo
;   leen p02:80CA (13 bytes)
;   0xab8a..0xab97  (13 bytes)
DATA_linea_AB8A:
	defb 000h,061h,05ch,000h,061h,05ch,000h,062h,05dh,000h,061h,05ch,0ffh	; ab8a  .a\.a\.b].a\.

; ----------------------------------------------------------------------
; DATOS linea_AB97: accion 0x00 y texto hasta 0xFF (conversacion 0x12); lo
;   leen p02:80CA (31 bytes)
;   0xab97..0xabb6  (31 bytes)
DATA_linea_AB97:
	defb 000h,05fh,05ch,081h,073h,000h,078h,03ch,067h,074h,000h,075h,03ch,08ch,062h,03ch	; ab97  ._\.s.x<gt.u<.b<
	defb 06eh,03ch,082h,05bh,088h,087h,000h,07dh,08ch,06dh,05ch,083h,080h,03eh,0ffh	; aba7  n<.[...}.m\..>.

; ----------------------------------------------------------------------
; DATOS lineas_13: las 3 lineas de la conversacion 0x13 y un 0 de fin; lo leen
;   p02:80BC (8 bytes)
;   0xabb6..0xabbe  (8 bytes)
DATA_lineas_13:
	defb 0beh,0abh	; abb6
	defb 08ah,0abh	; abb8
	defb 0c0h,0abh	; abba
	defb 000h,000h	; abbc

; ----------------------------------------------------------------------
; DATOS linea_ABBE: accion 0x1C y texto hasta 0xFF (conversacion 0x13); lo
;   leen p02:80CA (2 bytes)
;   0xabbe..0xabc0  (2 bytes)
DATA_linea_ABBE:
	defb 01ch,0ffh	; abbe

; ----------------------------------------------------------------------
; DATOS linea_ABC0: accion 0x09 y texto hasta 0xFF (conversacion 0x13); lo
;   leen p02:80CA (47 bytes)
;   0xabc0..0xabef  (47 bytes)
DATA_linea_ABC0:
	defb 009h,075h,03ch,08bh,05dh,061h,087h,000h,06fh,05fh,066h,06dh,062h,084h,06dh,000h	; abc0  .u<.]a..o_fmb.m.
	defb 05bh,082h,060h,03ch,06eh,05dh,03eh,05fh,084h,05ch,070h,000h,075h,03ch,08ch,062h	; abd0  [.`<n]>_.\p.u<.b
	defb 03ch,06eh,03ch,082h,05bh,088h,087h,000h,05bh,063h,03ch,080h,05dh,03eh,0ffh	; abe0  <n<.[...[c<.]>.

; ----------------------------------------------------------------------
; DATOS lineas_14: las 9 lineas de la conversacion 0x14 y un 0 de fin; lo leen
;   p02:80BC (20 bytes)
;   0xabef..0xac03  (20 bytes)
DATA_lineas_14:
	defb 003h,0ach	; abef
	defb 08ah,0abh	; abf1
	defb 005h,0ach	; abf3
	defb 01fh,0ach	; abf5
	defb 045h,0ach	; abf7
	defb 061h,0ach	; abf9
	defb 06dh,0ach	; abfb
	defb 07ch,0ach	; abfd
	defb 085h,0ach	; abff
	defb 000h,000h	; ac01

; ----------------------------------------------------------------------
; DATOS linea_AC03: accion 0x0A y texto hasta 0xFF (conversacion 0x14); lo
;   leen p02:80CA (2 bytes)
;   0xac03..0xac05  (2 bytes)
DATA_linea_AC03:
	defb 00ah,0ffh	; ac03

; ----------------------------------------------------------------------
; DATOS linea_AC05: accion 0x00 y texto hasta 0xFF (conversacion 0x14); lo
;   leen p02:80CA (26 bytes)
;   0xac05..0xac1f  (26 bytes)
DATA_linea_AC05:
	defb 000h,078h,03ch,067h,060h,03ch,000h,075h,03ch,08bh,05dh,061h,070h,000h,060h,060h	; ac05  .x<g`<.u<.]ap.``
	defb 08ch,06dh,05ch,083h,073h,066h,03ch,089h,03eh,0ffh	; ac15  .m\.sf<.>.

; ----------------------------------------------------------------------
; DATOS linea_AC1F: accion 0x00 y texto hasta 0xFF (conversacion 0x14); lo
;   leen p02:80CA (38 bytes)
;   0xac1f..0xac45  (38 bytes)
DATA_linea_AC1F:
	defb 000h,05fh,079h,05eh,065h,088h,073h,000h,07eh,062h,069h,05dh,087h,000h,035h,06ch	; ac1f  ._y^e.s.~bi]..5l
	defb 062h,084h,06ah,081h,000h,078h,03ch,067h,073h,000h,075h,03ch,08bh,05dh,061h,060h	; ac2f  b.j..x<gs.u<.]a`
	defb 03ch,06fh,05fh,083h,03eh,0ffh	; ac3f

; ----------------------------------------------------------------------
; DATOS linea_AC45: accion 0x1D y texto hasta 0xFF (conversacion 0x14); lo
;   leen p02:80CA (28 bytes)
;   0xac45..0xac61  (28 bytes)
DATA_linea_AC45:
	defb 01dh,03ah,000h,031h,000h,07eh,062h,069h,05dh,087h,000h,035h,06ch,000h,086h,06ah	; ac45  .:.1.~bi]..5l..j
	defb 067h,0fdh,000h,000h,032h,000h,086h,06ah,065h,06fh,05ch,0ffh	; ac55  g...2..jeo\.

; ----------------------------------------------------------------------
; DATOS linea_AC61: accion 0x00 y texto hasta 0xFF (conversacion 0x14); lo
;   leen p02:80CA (12 bytes)
;   0xac61..0xac6d  (12 bytes)
DATA_linea_AC61:
	defb 000h,065h,03ch,088h,072h,088h,066h,03ch,089h,06fh,03eh,0ffh	; ac61  .e<.r.f<.o>.

; ----------------------------------------------------------------------
; DATOS linea_AC6D: accion 0x00 y texto hasta 0xFF (conversacion 0x14); lo
;   leen p02:80CA (15 bytes)
;   0xac6d..0xac7c  (15 bytes)
DATA_linea_AC6D:
	defb 000h,07eh,062h,069h,05dh,060h,03ch,000h,06ah,082h,079h,068h,088h,03eh,0ffh	; ac6d  .~bi]`<.j.yh.>.

; ----------------------------------------------------------------------
; DATOS linea_AC7C: accion 0x00 y texto hasta 0xFF (conversacion 0x14); lo
;   leen p02:80CA (9 bytes)
;   0xac7c..0xac85  (9 bytes)
DATA_linea_AC7C:
	defb 000h,05bh,082h,060h,03ch,06eh,05dh,03eh,0ffh	; ac7c  .[.`<n]>.

; ----------------------------------------------------------------------
; DATOS linea_AC85: accion 0x00 y texto hasta 0xFF (conversacion 0x14); lo
;   leen p02:80CA (29 bytes)
;   0xac85..0xaca2  (29 bytes)
DATA_linea_AC85:
	defb 000h,05fh,079h,05eh,065h,088h,07dh,000h,075h,03ch,08bh,05dh,061h,070h,000h,060h	; ac85  ._y^e.}.u<.]ap.`
	defb 060h,08ch,06dh,05ch,083h,080h,05dh,066h,03ch,089h,06fh,03eh,0ffh	; ac95  `.m\..]f<.o>.

; ----------------------------------------------------------------------
; DATOS lineas_15: las 2 lineas de la conversacion 0x15 y un 0 de fin; lo leen
;   p02:80BC (6 bytes)
;   0xaca2..0xaca8  (6 bytes)
DATA_lineas_15:
	defb 0a8h,0ach	; aca2
	defb 00ch,0aah	; aca4
	defb 000h,000h	; aca6

; ----------------------------------------------------------------------
; DATOS linea_ACA8: accion 0x0B y texto hasta 0xFF (conversacion 0x15); lo
;   leen p02:80CA (43 bytes)
;   0xaca8..0xacd3  (43 bytes)
DATA_linea_ACA8:
	defb 00bh,078h,088h,087h,000h,060h,08ch,06dh,05ch,062h,060h,05ch,03bh,0fdh,032h,030h	; aca8  .x...`.m\b`\;.20
	defb 030h,000h,047h,04fh,04ch,044h,06ah,03ch,03eh,0fdh,03ah,000h,031h,000h,060h,05dh	; acb8  0.GOLDj<>.:.1.`]
	defb 000h,000h,000h,000h,032h,000h,060h,086h,06fh,05ch,0ffh	; acc8  ....2.`.o\.

; ----------------------------------------------------------------------
; DATOS lineas_16: las 4 lineas de la conversacion 0x16 y un 0 de fin; lo leen
;   p02:80BC (10 bytes)
;   0xacd3..0xacdd  (10 bytes)
DATA_lineas_16:
	defb 0ddh,0ach	; acd3
	defb 0feh,0ach	; acd5
	defb 00ch,0aah	; acd7
	defb 015h,0adh	; acd9
	defb 000h,000h	; acdb

; ----------------------------------------------------------------------
; DATOS linea_ACDD: accion 0x00 y texto hasta 0xFF (conversacion 0x16); lo
;   leen p02:80CA (33 bytes)
;   0xacdd..0xacfe  (33 bytes)
DATA_linea_ACDD:
	defb 000h,07ah,067h,03ch,063h,03ch,06ah,087h,000h,06ch,062h,08ch,06dh,07eh,085h,05dh	; acdd  .zg<c<j..lb.m~.]
	defb 060h,03bh,0fdh,031h,035h,030h,000h,047h,04fh,04ch,044h,06dh,03ch,05ch,05ch,080h	; aced  `;.150.GOLDm<\\.
	defb 0ffh	; acfd

; ----------------------------------------------------------------------
; DATOS linea_ACFE: accion 0x0C y texto hasta 0xFF (conversacion 0x16); lo
;   leen p02:80CA (23 bytes)
;   0xacfe..0xad15  (23 bytes)
DATA_linea_ACFE:
	defb 00ch,03ah,000h,031h,000h,06ch,062h,08ch,06dh,07dh,081h,05dh,0fdh,000h,000h,032h	; acfe  .:.1.lb.m}.]...2
	defb 000h,06ch,062h,081h,06fh,05ch,0ffh	; ad0e

; ----------------------------------------------------------------------
; DATOS linea_AD15: accion 0x00 y texto hasta 0xFF (conversacion 0x16); lo
;   leen p02:80CA (33 bytes)
;   0xad15..0xad36  (33 bytes)
DATA_linea_AD15:
	defb 000h,07ah,067h,03ch,063h,03ch,06ah,087h,000h,06ch,062h,083h,070h,074h,000h,065h	; ad15  .zg<c<j..lb.pt.e
	defb 03ch,05ch,082h,08bh,05dh,000h,060h,03ch,000h,075h,06ch,080h,05dh,06ah,03ch,03eh	; ad25  <\..].`<.ul.]j<>
	defb 0ffh	; ad35

; ----------------------------------------------------------------------
; DATOS lineas_17: las 5 lineas de la conversacion 0x17 y un 0 de fin; lo leen
;   p02:80BC (12 bytes)
;   0xad36..0xad42  (12 bytes)
DATA_lineas_17:
	defb 042h,0adh	; ad36
	defb 08ah,0abh	; ad38
	defb 044h,0adh	; ad3a
	defb 05ah,0adh	; ad3c
	defb 070h,0adh	; ad3e
	defb 000h,000h	; ad40

; ----------------------------------------------------------------------
; DATOS linea_AD42: accion 0x0D y texto hasta 0xFF (conversacion 0x17); lo
;   leen p02:80CA (2 bytes)
;   0xad42..0xad44  (2 bytes)
DATA_linea_AD42:
	defb 00dh,0ffh	; ad42

; ----------------------------------------------------------------------
; DATOS linea_AD44: accion 0x00 y texto hasta 0xFF (conversacion 0x17); lo
;   leen p02:80CA (22 bytes)
;   0xad44..0xad5a  (22 bytes)
DATA_linea_AD44:
	defb 000h,070h,062h,087h,000h,062h,084h,06ah,081h,000h,06eh,05fh,066h,06dh,000h,05bh	; ad44  .pb..b.j..n_fm.[
	defb 063h,03ch,083h,080h,03eh,0ffh	; ad54

; ----------------------------------------------------------------------
; DATOS linea_AD5A: accion 0x1E y texto hasta 0xFF (conversacion 0x17); lo
;   leen p02:80CA (22 bytes)
;   0xad5a..0xad70  (22 bytes)
DATA_linea_AD5A:
	defb 01eh,03ah,031h,000h,070h,062h,087h,000h,05bh,063h,03ch,083h,03eh,000h,032h,000h	; ad5a  .:1.pb..[c<.>.2.
	defb 05bh,063h,03ch,06fh,05ch,0ffh	; ad6a

; ----------------------------------------------------------------------
; DATOS linea_AD70: accion 0x00 y texto hasta 0xFF (conversacion 0x17); lo
;   leen p02:80CA (13 bytes)
;   0xad70..0xad7d  (13 bytes)
DATA_linea_AD70:
	defb 000h,070h,062h,060h,03ch,000h,05bh,082h,079h,068h,088h,03eh,0ffh	; ad70  .pb`<.[.yh.>.

; ----------------------------------------------------------------------
; DATOS lineas_18: las 1 lineas de la conversacion 0x18 y un 0 de fin; lo leen
;   p02:80BC (4 bytes)
;   0xad7d..0xad81  (4 bytes)
DATA_lineas_18:
	defb 081h,0adh	; ad7d
	defb 000h,000h	; ad7f

; ----------------------------------------------------------------------
; DATOS linea_AD81: accion 0x00 y texto hasta 0xFF (conversacion 0x18); lo
;   leen p02:80CA (47 bytes)
;   0xad81..0xadb0  (47 bytes)
DATA_linea_AD81:
	defb 000h,078h,03ch,067h,074h,000h,075h,03ch,08bh,05dh,061h,06ah,03ch,03eh,075h,03ch	; ad81  .x<gt.u<.]aj<>u<
	defb 08bh,05dh,061h,087h,000h,06fh,05fh,067h,070h,074h,000h,07eh,062h,069h,05dh,060h	; ad91  .]a..o_gpt.~bi]`
	defb 03ch,000h,06ah,062h,065h,088h,000h,075h,06ch,080h,05dh,06ah,03ch,03eh,0ffh	; ada1  <.jbe..ul.]j<>.

; ----------------------------------------------------------------------
; DATOS lineas_19: las 1 lineas de la conversacion 0x19 y un 0 de fin; lo leen
;   p02:80BC (4 bytes)
;   0xadb0..0xadb4  (4 bytes)
DATA_lineas_19:
	defb 0b4h,0adh	; adb0
	defb 000h,000h	; adb2

; ----------------------------------------------------------------------
; DATOS linea_ADB4: accion 0x0E y texto hasta 0xFF (conversacion 0x19); lo
;   leen p02:80CA (18 bytes)
;   0xadb4..0xadc6  (18 bytes)
DATA_linea_ADB4:
	defb 00eh,05bh,06fh,06ah,074h,000h,07bh,066h,070h,000h,060h,079h,084h,079h,066h,06ah	; adb4  .[ojt.{fp.`y.yfj
	defb 03eh,0ffh	; adc4

; ----------------------------------------------------------------------
; DATOS lineas_1A: las 5 lineas de la conversacion 0x1A y un 0 de fin; lo leen
;   p02:80BC (12 bytes)
;   0xadc6..0xadd2  (12 bytes)
DATA_lineas_1A:
	defb 0d2h,0adh	; adc6
	defb 08ah,0abh	; adc8
	defb 0d4h,0adh	; adca
	defb 0e6h,0adh	; adcc
	defb 070h,0adh	; adce
	defb 000h,000h	; add0

; ----------------------------------------------------------------------
; DATOS linea_ADD2: accion 0x0F y texto hasta 0xFF (conversacion 0x1A); lo
;   leen p02:80CA (2 bytes)
;   0xadd2..0xadd4  (2 bytes)
DATA_linea_ADD2:
	defb 00fh,0ffh	; add2

; ----------------------------------------------------------------------
; DATOS linea_ADD4: accion 0x00 y texto hasta 0xFF (conversacion 0x1A); lo
;   leen p02:80CA (18 bytes)
;   0xadd4..0xade6  (18 bytes)
DATA_linea_ADD4:
	defb 000h,070h,062h,087h,000h,062h,084h,06ah,081h,000h,06eh,07ch,06dh,07eh,083h,080h	; add4  .pb..b.j..n|m~..
	defb 03eh,0ffh	; ade4

; ----------------------------------------------------------------------
; DATOS linea_ADE6: accion 0x1F y texto hasta 0xFF (conversacion 0x1A); lo
;   leen p02:80CA (22 bytes)
;   0xade6..0xadfc  (22 bytes)
DATA_linea_ADE6:
	defb 01fh,03ah,031h,000h,070h,062h,087h,000h,05bh,063h,03ch,083h,03eh,000h,032h,000h	; ade6  .:1.pb..[c<.>.2.
	defb 05bh,063h,03ch,06fh,05ch,0ffh	; adf6

; ----------------------------------------------------------------------
; DATOS lineas_1B: las 5 lineas de la conversacion 0x1B y un 0 de fin; lo leen
;   p02:80BC (12 bytes)
;   0xadfc..0xae08  (12 bytes)
DATA_lineas_1B:
	defb 008h,0aeh	; adfc
	defb 08ah,0abh	; adfe
	defb 00ah,0aeh	; ae00
	defb 020h,0aeh	; ae02
	defb 070h,0adh	; ae04
	defb 000h,000h	; ae06

; ----------------------------------------------------------------------
; DATOS linea_AE08: accion 0x10 y texto hasta 0xFF (conversacion 0x1B); lo
;   leen p02:80CA (2 bytes)
;   0xae08..0xae0a  (2 bytes)
DATA_linea_AE08:
	defb 010h,0ffh	; ae08

; ----------------------------------------------------------------------
; DATOS linea_AE0A: accion 0x00 y texto hasta 0xFF (conversacion 0x1B); lo
;   leen p02:80CA (22 bytes)
;   0xae0a..0xae20  (22 bytes)
DATA_linea_AE0A:
	defb 000h,070h,062h,087h,000h,062h,084h,06ah,081h,000h,060h,061h,03ch,087h,000h,05bh	; ae0a  .pb..b.j..`a<..[
	defb 063h,03ch,083h,080h,03eh,0ffh	; ae1a

; ----------------------------------------------------------------------
; DATOS linea_AE20: accion 0x20 y texto hasta 0xFF (conversacion 0x1B); lo
;   leen p02:80CA (22 bytes)
;   0xae20..0xae36  (22 bytes)
DATA_linea_AE20:
	defb 020h,03ah,031h,000h,070h,062h,087h,000h,05bh,063h,03ch,083h,03eh,000h,032h,000h	; ae20   :1.pb..[c<.>.2.
	defb 05bh,063h,03ch,06fh,05ch,0ffh	; ae30

; ----------------------------------------------------------------------
; DATOS lineas_1C: las 3 lineas de la conversacion 0x1C y un 0 de fin; lo leen
;   p02:80BC (8 bytes)
;   0xae36..0xae3e  (8 bytes)
DATA_lineas_1C:
	defb 03eh,0aeh	; ae36
	defb 050h,0aeh	; ae38
	defb 00ch,0aah	; ae3a
	defb 000h,000h	; ae3c

; ----------------------------------------------------------------------
; DATOS linea_AE3E: accion 0x00 y texto hasta 0xFF (conversacion 0x1C); lo
;   leen p02:80CA (18 bytes)
;   0xae3e..0xae50  (18 bytes)
DATA_linea_AE3E:
	defb 000h,05ch,081h,08ch,066h,089h,05ch,03eh,064h,03ch,06bh,08ah,05dh,07dh,088h,074h	; ae3e  .\..f.\>d<k.]}.t
	defb 03bh,0ffh	; ae4e

; ----------------------------------------------------------------------
; DATOS linea_AE50: accion 0x11 y texto hasta 0xFF (conversacion 0x1C); lo
;   leen p02:80CA (58 bytes)
;   0xae50..0xae8a  (58 bytes)
DATA_linea_AE50:
	defb 011h,03ah,031h,000h,07eh,079h,075h,083h,073h,000h,065h,066h,07ah,000h,035h,030h	; ae50  .:1.~yu.s.efz.50
	defb 000h,047h,04fh,04ch,044h,000h,032h,000h,078h,03ch,05ch,083h,06eh,03ch,07eh,079h	; ae60  .GOLD.2.x<\.n<~y
	defb 07ah,07ah,067h,03ch,0fdh,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; ae70  zzg<............
	defb 000h,031h,030h,030h,000h,047h,04fh,04ch,044h,0ffh	; ae80  .100.GOLD.

; ----------------------------------------------------------------------
; DATOS lineas_1D: las 2 lineas de la conversacion 0x1D y un 0 de fin; lo leen
;   p02:80BC (6 bytes)
;   0xae8a..0xae90  (6 bytes)
DATA_lineas_1D:
	defb 090h,0aeh	; ae8a
	defb 0ach,0aeh	; ae8c
	defb 000h,000h	; ae8e

; ----------------------------------------------------------------------
; DATOS linea_AE90: accion 0x00 y texto hasta 0xFF (conversacion 0x1D); lo
;   leen p02:80CA (28 bytes)
;   0xae90..0xaeac  (28 bytes)
DATA_linea_AE90:
	defb 000h,086h,066h,081h,073h,000h,066h,08ah,05dh,06bh,08bh,05dh,087h,000h,06ah,067h	; ae90  ..f.s.f.]k.]..jg
	defb 063h,06ah,03ch,066h,06dh,062h,06ah,03ch,065h,084h,03eh,0ffh	; aea0  cj<fmbj<e.>.

; ----------------------------------------------------------------------
; DATOS linea_AEAC: accion 0x00 y texto hasta 0xFF (conversacion 0x1D); lo
;   leen p02:80CA (30 bytes)
;   0xaeac..0xaeca  (30 bytes)
DATA_linea_AEAC:
	defb 000h,066h,08ah,06bh,08bh,05dh,074h,000h,06eh,03ch,085h,073h,000h,060h,07ch,088h	; aeac  .f.k.]t.n<.s.`|.
	defb 070h,000h,06ch,084h,065h,081h,084h,06ah,088h,066h,03ch,089h,03eh,0ffh	; aebc  p.l.e..j.f<.>.

; ----------------------------------------------------------------------
; DATOS lineas_1E: las 1 lineas de la conversacion 0x1E y un 0 de fin; lo leen
;   p02:80BC (4 bytes)
;   0xaeca..0xaece  (4 bytes)
DATA_lineas_1E:
	defb 0ceh,0aeh	; aeca
	defb 000h,000h	; aecc

; ----------------------------------------------------------------------
; DATOS linea_AECE: accion 0x00 y texto hasta 0xFF (conversacion 0x1E); lo
;   leen p02:80CA (32 bytes)
;   0xaece..0xaeee  (32 bytes)
DATA_linea_AECE:
	defb 000h,054h,048h,045h,000h,04eh,041h,053h,054h,059h,074h,000h,079h,060h,076h,03dh	; aece  .THE.NASTYt.y`v=
	defb 081h,073h,000h,066h,03ch,08ah,07dh,088h,06dh,03ch,000h,06ah,05fh,068h,03eh,0ffh	; aede  .s.f<.}.m<.j_h>.

; ----------------------------------------------------------------------
; DATOS lineas_1F: las 3 lineas de la conversacion 0x1F y un 0 de fin; lo leen
;   p02:80BC (8 bytes)
;   0xaeee..0xaef6  (8 bytes)
DATA_lineas_1F:
	defb 0f6h,0aeh	; aeee
	defb 011h,0afh	; aef0
	defb 02dh,0afh	; aef2
	defb 000h,000h	; aef4

; ----------------------------------------------------------------------
; DATOS linea_AEF6: accion 0x00 y texto hasta 0xFF (conversacion 0x1F); lo
;   leen p02:80CA (27 bytes)
;   0xaef6..0xaf11  (27 bytes)
DATA_linea_AEF6:
	defb 000h,07ah,067h,03ch,063h,03ch,06ah,087h,000h,062h,084h,084h,074h,03ch,000h,06eh	; aef6  .zg<c<j..b..t<.n
	defb 07ch,06dh,07eh,08ch,06dh,07dh,05ch,05ch,080h,03eh,0ffh	; af06  |m~.m}\\.>.

; ----------------------------------------------------------------------
; DATOS linea_AF11: accion 0x12 y texto hasta 0xFF (conversacion 0x1F); lo
;   leen p02:80CA (28 bytes)
;   0xaf11..0xaf2d  (28 bytes)
DATA_linea_AF11:
	defb 012h,03ah,000h,031h,000h,07ah,067h,03ch,063h,03ch,06ah,087h,000h,05bh,063h,03ch	; af11  .:.1.zg<c<j..[c<
	defb 083h,0fdh,000h,000h,032h,000h,05bh,063h,03ch,06fh,05ch,0ffh	; af21  ....2.[c<o\.

; ----------------------------------------------------------------------
; DATOS linea_AF2D: accion 0x00 y texto hasta 0xFF (conversacion 0x1F); lo
;   leen p02:80CA (17 bytes)
;   0xaf2d..0xaf3e  (17 bytes)
DATA_linea_AF2D:
	defb 000h,07ah,067h,03ch,063h,03ch,06ah,060h,03ch,000h,05bh,082h,079h,068h,088h,03eh	; af2d  .zg<c<j`<.[.yh.>
	defb 0ffh	; af3d

; ----------------------------------------------------------------------
; DATOS lineas_20: las 1 lineas de la conversacion 0x20 y un 0 de fin; lo leen
;   p02:80BC (4 bytes)
;   0xaf3e..0xaf42  (4 bytes)
DATA_lineas_20:
	defb 042h,0afh	; af3e
	defb 000h,000h	; af40

; ----------------------------------------------------------------------
; DATOS linea_AF42: accion 0x13 y texto hasta 0xFF (conversacion 0x20); lo
;   leen p02:80CA (42 bytes)
;   0xaf42..0xaf6c  (42 bytes)
DATA_linea_AF42:
	defb 013h,05fh,05fh,03fh,04bh,04fh,04eh,047h,065h,079h,073h,000h,05fh,06bh,060h,081h	; af42  .__?KONGeys._k`.
	defb 073h,075h,06eh,06ch,000h,04bh,04fh,04eh,047h,065h,079h,073h,000h,061h,074h,03ch	; af52  sunl.KONGeys.at<
	defb 087h,000h,065h,067h,03ch,063h,080h,05dh,03eh,0ffh	; af62  ..eg<c.]>.

; ----------------------------------------------------------------------
; DATOS lineas_21: las 0 lineas de la conversacion 0x21 y un 0 de fin; lo leen
;   p02:80BC (2 bytes)
;   0xaf6c..0xaf6e  (2 bytes)
DATA_lineas_21:
	defb 000h,000h	; af6c

; ----------------------------------------------------------------------
; DATOS lineas_22: las 1 lineas de la conversacion 0x22 y un 0 de fin; lo leen
;   p02:80BC (4 bytes)
;   0xaf6e..0xaf72  (4 bytes)
DATA_lineas_22:
	defb 072h,0afh	; af6e
	defb 000h,000h	; af70

; ----------------------------------------------------------------------
; DATOS linea_AF72: accion 0x00 y texto hasta 0xFF (conversacion 0x22); lo
;   leen p02:80CA (29 bytes)
;   0xaf72..0xaf8f  (29 bytes)
DATA_linea_AF72:
	defb 000h,04dh,055h,044h,041h,052h,04dh,04fh,052h,074h,000h,081h,07ch,081h,073h,000h	; af72  .MUDARMORt..|.s.
	defb 066h,03ch,08ah,05eh,061h,06dh,03ch,000h,06ah,05fh,068h,03eh,0ffh	; af82  f<.^am<.j_h>.

; ----------------------------------------------------------------------
; DATOS lineas_23: las 1 lineas de la conversacion 0x23 y un 0 de fin; lo leen
;   p02:80BC (4 bytes)
;   0xaf8f..0xaf93  (4 bytes)
DATA_lineas_23:
	defb 093h,0afh	; af8f
	defb 000h,000h	; af91

; ----------------------------------------------------------------------
; DATOS linea_AF93: accion 0x00 y texto hasta 0xFF (conversacion 0x23); lo
;   leen p02:80CA (28 bytes)
;   0xaf93..0xafaf  (28 bytes)
DATA_linea_AF93:
	defb 000h,054h,057h,049h,04eh,04dh,049h,052h,045h,053h,074h,000h,05bh,060h,05ch,05ch	; af93  .TWINMIRESt.[`\\
	defb 086h,073h,000h,074h,03ch,088h,070h,088h,06fh,082h,03eh,0ffh	; afa3  .s.t<.p.o.>.

; ----------------------------------------------------------------------
; DATOS lineas_24: las 2 lineas de la conversacion 0x24 y un 0 de fin; lo leen
;   p02:80BC (6 bytes)
;   0xafaf..0xafb5  (6 bytes)
DATA_lineas_24:
	defb 0b5h,0afh	; afaf
	defb 0d0h,0afh	; afb1
	defb 000h,000h	; afb3

; ----------------------------------------------------------------------
; DATOS linea_AFB5: accion 0x00 y texto hasta 0xFF (conversacion 0x24); lo
;   leen p02:80CA (27 bytes)
;   0xafb5..0xafd0  (27 bytes)
DATA_linea_AFB5:
	defb 000h,064h,073h,065h,061h,070h,000h,063h,07bh,081h,088h,06eh,000h,080h,074h,03ch	; afb5  .dseap.c{..n..t<
	defb 084h,083h,000h,066h,079h,060h,03ch,05bh,083h,03eh,0ffh	; afc5  ...fy`<[.>.

; ----------------------------------------------------------------------
; DATOS linea_AFD0: accion 0x00 y texto hasta 0xFF (conversacion 0x24); lo
;   leen p02:80CA (40 bytes)
;   0xafd0..0xaff8  (40 bytes)
DATA_linea_AFD0:
	defb 000h,063h,07bh,081h,088h,074h,000h,04bh,04fh,04eh,047h,065h,079h,073h,000h,06dh	; afd0  .c{..t.KONGeys.m
	defb 03ch,088h,068h,06ch,000h,060h,03ch,000h,05ch,061h,06ch,03ch,05ch,06dh,05ch,083h	; afe0  <.hl.`<.\al<\m\.
	defb 000h,066h,079h,066h,03ch,089h,03eh,0ffh	; aff0  .fyf<.>.

; ----------------------------------------------------------------------
; DATOS lineas_25: las 3 lineas de la conversacion 0x25 y un 0 de fin; lo leen
;   p02:80BC (8 bytes)
;   0xaff8..0xb000  (8 bytes)
DATA_lineas_25:
	defb 000h,0b0h	; aff8
	defb 018h,0b0h	; affa
	defb 00ch,0aah	; affc
	defb 000h,000h	; affe

; ----------------------------------------------------------------------
; DATOS linea_B000: accion 0x00 y texto hasta 0xFF (conversacion 0x25); lo
;   leen p02:80CA (24 bytes)
;   0xb000..0xb018  (24 bytes)
DATA_linea_B000:
	defb 000h,05dh,07ah,073h,05ch,05eh,070h,000h,080h,05dh,064h,069h,03eh,0fdh,064h,03ch	; b000  .]zs\^p..]di>.d<
	defb 06bh,08ah,05dh,07dh,088h,074h,03bh,0ffh	; b010  k.]}.t;.

; ----------------------------------------------------------------------
; DATOS linea_B018: accion 0x15 y texto hasta 0xFF (conversacion 0x25); lo
;   leen p02:80CA (50 bytes)
;   0xb018..0xb04a  (50 bytes)
DATA_linea_B018:
	defb 015h,03ah,031h,000h,06fh,07ch,062h,066h,03ch,073h,000h,066h,05fh,060h,081h,031h	; b018  .:1.o|bf<s.f_`.1
	defb 030h,047h,04fh,04ch,044h,000h,032h,000h,076h,06fh,07bh,066h,073h,000h,07ah,069h	; b028  0GOLD.2.vo{fs.zi
	defb 06ch,03ch,063h,035h,030h,047h,04fh,04ch,044h,000h,033h,000h,06ah,077h,03ch,06fh	; b038  l<c50GOLD.3.jw<o
	defb 05ch,0ffh	; b048

; ----------------------------------------------------------------------
; DATOS lineas_26: las 4 lineas de la conversacion 0x26 y un 0 de fin; lo leen
;   p02:80BC (10 bytes)
;   0xb04a..0xb054  (10 bytes)
DATA_lineas_26:
	defb 054h,0b0h	; b04a
	defb 056h,0b0h	; b04c
	defb 078h,0b0h	; b04e
	defb 09eh,0b0h	; b050
	defb 000h,000h	; b052

; ----------------------------------------------------------------------
; DATOS linea_B054: accion 0x16 y texto hasta 0xFF (conversacion 0x26); lo
;   leen p02:80CA (2 bytes)
;   0xb054..0xb056  (2 bytes)
DATA_linea_B054:
	defb 016h,0ffh	; b054

; ----------------------------------------------------------------------
; DATOS linea_B056: accion 0x00 y texto hasta 0xFF (conversacion 0x26); lo
;   leen p02:80CA (34 bytes)
;   0xb056..0xb078  (34 bytes)
DATA_linea_B056:
	defb 000h,086h,066h,074h,000h,07bh,067h,064h,060h,081h,073h,000h,06dh,060h,03ch,07ah	; b056  ..ft.{gd`.s.m`<z
	defb 087h,000h,067h,03ch,08ch,06eh,000h,079h,08ch,06dh,05fh,083h,088h,066h,03ch,089h	; b066  ..g<.n.y.m_..f<.
	defb 03eh,0ffh	; b076

; ----------------------------------------------------------------------
; DATOS linea_B078: accion 0x00 y texto hasta 0xFF (conversacion 0x26); lo
;   leen p02:80CA (38 bytes)
;   0xb078..0xb09e  (38 bytes)
DATA_linea_B078:
	defb 000h,086h,065h,03ch,086h,065h,03ch,000h,06dh,060h,03ch,07ah,087h,000h,06eh,06eh	; b078  ..e<.e<.m`<z..nn
	defb 03ch,063h,06dh,062h,084h,06dh,000h,05bh,082h,060h,03ch,06eh,05dh,064h,03ch,065h	; b088  <cmb.m.[.`<n]d<e
	defb 03ch,05ch,079h,067h,03eh,0ffh	; b098

; ----------------------------------------------------------------------
; DATOS linea_B09E: accion 0x00 y texto hasta 0xFF (conversacion 0x26); lo
;   leen p02:80CA (28 bytes)
;   0xb09e..0xb0ba  (28 bytes)
DATA_linea_B09E:
	defb 000h,05fh,084h,05ch,070h,000h,04bh,04fh,04eh,047h,065h,079h,073h,000h,075h,06eh	; b09e  ._.\p.KONGeys.un
	defb 07ah,087h,000h,065h,066h,05bh,063h,03ch,079h,067h,03eh,0ffh	; b0ae  z..ef[c<yg>.

; ----------------------------------------------------------------------
; DATOS lineas_27: las 1 lineas de la conversacion 0x27 y un 0 de fin; lo leen
;   p02:80BC (4 bytes)
;   0xb0ba..0xb0be  (4 bytes)
DATA_lineas_27:
	defb 0beh,0b0h	; b0ba
	defb 000h,000h	; b0bc

; ----------------------------------------------------------------------
; DATOS linea_B0BE: accion 0x00 y texto hasta 0xFF (conversacion 0x27); lo
;   leen p02:80CA (52 bytes)
;   0xb0be..0xb0f2  (52 bytes)
DATA_linea_B0BE:
	defb 000h,06ah,088h,063h,088h,06ah,05ch,073h,000h,073h,064h,066h,06dh,05ch,08ch,06ah	; b0be  .j.c.j\s.sdfm\.j
	defb 000h,06dh,088h,06eh,073h,06fh,060h,070h,000h,06fh,088h,06ah,03ch,060h,000h,086h	; b0ce  .m.nso`p.o.j<`..
	defb 060h,081h,088h,000h,061h,060h,05ch,060h,03ch,000h,05bh,08ch,06ah,069h,05dh,066h	; b0de  `...a`\`<.[.ji]f
	defb 03ch,089h,03eh,0ffh	; b0ee

; ----------------------------------------------------------------------
; DATOS lineas_28: las 3 lineas de la conversacion 0x28 y un 0 de fin; lo leen
;   p02:80BC (8 bytes)
;   0xb0f2..0xb0fa  (8 bytes)
DATA_lineas_28:
	defb 0fah,0b0h	; b0f2
	defb 0fch,0b0h	; b0f4
	defb 00ah,0b1h	; b0f6
	defb 000h,000h	; b0f8

; ----------------------------------------------------------------------
; DATOS linea_B0FA: accion 0x17 y texto hasta 0xFF (conversacion 0x28); lo
;   leen p02:80CA (2 bytes)
;   0xb0fa..0xb0fc  (2 bytes)
DATA_linea_B0FA:
	defb 017h,0ffh	; b0fa

; ----------------------------------------------------------------------
; DATOS linea_B0FC: accion 0x00 y texto hasta 0xFF (conversacion 0x28); lo
;   leen p02:80CA (14 bytes)
;   0xb0fc..0xb10a  (14 bytes)
DATA_linea_B0FC:
	defb 000h,07bh,068h,088h,061h,060h,03ch,000h,05bh,082h,079h,067h,03eh,0ffh	; b0fc  .{h.a`<.[.yg>.

; ----------------------------------------------------------------------
; DATOS linea_B10A: accion 0x00 y texto hasta 0xFF (conversacion 0x28); lo
;   leen p02:80CA (21 bytes)
;   0xb10a..0xb11f  (21 bytes)
DATA_linea_B10A:
	defb 000h,07bh,068h,088h,061h,074h,000h,064h,086h,084h,06dh,05ch,083h,000h,080h,05dh	; b10a  .{h.at.d..m\...]
	defb 06dh,03ch,067h,03eh,0ffh	; b11a

; ----------------------------------------------------------------------
; DATOS lineas_29: las 1 lineas de la conversacion 0x29 y un 0 de fin; lo leen
;   p02:80BC (4 bytes)
;   0xb11f..0xb123  (4 bytes)
DATA_lineas_29:
	defb 023h,0b1h	; b11f
	defb 000h,000h	; b121

; ----------------------------------------------------------------------
; DATOS linea_B123: accion 0x00 y texto hasta 0xFF (conversacion 0x29); lo
;   leen p02:80CA (37 bytes)
;   0xb123..0xb148  (37 bytes)
DATA_linea_B123:
	defb 000h,04bh,04fh,04eh,047h,073h,000h,065h,063h,075h,03ch,087h,000h,06eh,083h,070h	; b123  .KONGs.ecu<..n.p
	defb 074h,000h,081h,062h,06fh,000h,073h,000h,06ah,079h,060h,03ch,000h,075h,06ch,080h	; b133  t..bo.s.jy`<.ul.
	defb 05dh,06ah,03ch,03eh,0ffh	; b143

; ----------------------------------------------------------------------
; DATOS lineas_2A: las 1 lineas de la conversacion 0x2A y un 0 de fin; lo leen
;   p02:80BC (4 bytes)
;   0xb148..0xb14c  (4 bytes)
DATA_lineas_2A:
	defb 04ch,0b1h	; b148
	defb 000h,000h	; b14a

; ----------------------------------------------------------------------
; DATOS linea_B14C: accion 0x00 y texto hasta 0xFF (conversacion 0x2A); lo
;   leen p02:80CA (42 bytes)
;   0xb14c..0xb176  (42 bytes)
DATA_linea_B14C:
	defb 000h,061h,05ch,085h,05ch,000h,05ch,086h,074h,000h,04bh,04fh,04eh,047h,065h,079h	; b14c  .a\.\.\.t.KONGey
	defb 073h,000h,06bh,060h,081h,06dh,03ch,06fh,063h,084h,074h,03ch,000h,05fh,067h,064h	; b15c  s.k`.m<oc.t<._gd
	defb 06eh,060h,03ch,06dh,03ch,061h,06fh,05ch,03eh,0ffh	; b16c  n`<m<ao\>.

; ----------------------------------------------------------------------
; DATOS lineas_2B: las 4 lineas de la conversacion 0x2B y un 0 de fin; lo leen
;   p02:80BC (10 bytes)
;   0xb176..0xb180  (10 bytes)
DATA_lineas_2B:
	defb 080h,0b1h	; b176
	defb 0ach,0b1h	; b178
	defb 0cah,0b1h	; b17a
	defb 011h,0a8h	; b17c
	defb 000h,000h	; b17e

; ----------------------------------------------------------------------
; DATOS linea_B180: accion 0x00 y texto hasta 0xFF (conversacion 0x2B); lo
;   leen p02:80CA (44 bytes)
;   0xb180..0xb1ac  (44 bytes)
DATA_linea_B180:
	defb 000h,064h,086h,084h,06ah,07dh,073h,06fh,081h,000h,06fh,088h,06dh,03ch,07dh,000h	; b180  .d..j}so..o.m<}.
	defb 066h,08ah,05dh,082h,067h,083h,068h,03ch,03eh,0fdh,075h,06eh,06ch,000h,033h,035h	; b190  f.].g.h<>.unl.35
	defb 030h,000h,047h,04fh,04ch,044h,000h,06dh,03ch,06fh,03eh,0ffh	; b1a0  0.GOLD.m<o>.

; ----------------------------------------------------------------------
; DATOS linea_B1AC: accion 0x18 y texto hasta 0xFF (conversacion 0x2B); lo
;   leen p02:80CA (30 bytes)
;   0xb1ac..0xb1ca  (30 bytes)
DATA_linea_B1AC:
	defb 018h,03ah,000h,031h,08dh,053h,048h,04fh,054h,040h,031h,0fdh,000h,000h,032h,08dh	; b1ac  .:.1.SHOT@1...2.
	defb 053h,048h,04fh,054h,040h,032h,000h,000h,033h,08dh,05fh,086h,082h,0ffh	; b1bc  SHOT@2..3._...

; ----------------------------------------------------------------------
; DATOS linea_B1CA: accion 0x00 y texto hasta 0xFF (conversacion 0x2B); lo
;   leen p02:80CA (6 bytes)
;   0xb1ca..0xb1d0  (6 bytes)
DATA_linea_B1CA:
	defb 000h,078h,060h,070h,074h,0ffh	; b1ca

; ----------------------------------------------------------------------
; DATOS lineas_2C: las 1 lineas de la conversacion 0x2C y un 0 de fin; lo leen
;   p02:80BC (4 bytes)
;   0xb1d0..0xb1d4  (4 bytes)
DATA_lineas_2C:
	defb 0d4h,0b1h	; b1d0
	defb 000h,000h	; b1d2

; ----------------------------------------------------------------------
; DATOS linea_B1D4: accion 0x19 y texto hasta 0xFF (conversacion 0x2C); lo
;   leen p02:80CA (37 bytes)
;   0xb1d4..0xb1f9  (37 bytes)
DATA_linea_B1D4:
	defb 019h,04bh,04fh,04eh,047h,065h,079h,070h,000h,065h,066h,05bh,063h,03ch,083h,07dh	; b1d4  .KONGeyp.ef[c<.}
	defb 073h,087h,000h,06dh,040h,076h,03ch,083h,073h,000h,05dh,05eh,070h,000h,05fh,061h	; b1e4  s..m@v<.s.]^p._a
	defb 06fh,065h,05ch,03eh,0ffh	; b1f4

; ----------------------------------------------------------------------
; DATOS lineas_2D: las 3 lineas de la conversacion 0x2D y un 0 de fin; lo leen
;   p02:80BC (8 bytes)
;   0xb1f9..0xb201  (8 bytes)
DATA_lineas_2D:
	defb 001h,0b2h	; b1f9
	defb 033h,0b2h	; b1fb
	defb 054h,0b2h	; b1fd
	defb 000h,000h	; b1ff

; ----------------------------------------------------------------------
; DATOS linea_B201: accion 0x00 y texto hasta 0xFF (conversacion 0x2D); lo
;   leen p02:80CA (50 bytes)
;   0xb201..0xb233  (50 bytes)
DATA_linea_B201:
	defb 000h,04bh,04fh,04eh,047h,065h,079h,073h,000h,06dh,03ch,088h,068h,06ch,070h,000h	; b201  .KONGeys.m<.hlp.
	defb 080h,083h,06eh,0fdh,06eh,03ch,05dh,062h,06ch,073h,000h,06fh,060h,070h,000h,065h	; b211  ..n.n<]bls.o`p.e
	defb 05ch,06dh,05ch,083h,000h,0fdh,061h,08bh,06ah,03ch,05ch,06fh,000h,074h,06fh,074h	; b221  \m\...a.j<\o.tot
	defb 03fh,0ffh	; b231

; ----------------------------------------------------------------------
; DATOS linea_B233: accion 0x00 y texto hasta 0xFF (conversacion 0x2D); lo
;   leen p02:80CA (33 bytes)
;   0xb233..0xb254  (33 bytes)
DATA_linea_B233:
	defb 000h,061h,05ch,085h,05ch,000h,05ch,066h,06dh,03ch,000h,06fh,063h,084h,074h,03ch	; b233  .a\.\.\fm<.oc.t<
	defb 000h,063h,067h,064h,06eh,060h,03ch,06dh,03ch,061h,06fh,05ch,081h,066h,05ch,03eh	; b243  .cgdn`<m<ao\.f\>
	defb 0ffh	; b253

; ----------------------------------------------------------------------
; DATOS linea_B254: accion 0x00 y texto hasta 0xFF (conversacion 0x2D); lo
;   leen p02:80CA (18 bytes)
;   0xb254..0xb266  (18 bytes)
DATA_linea_B254:
	defb 000h,080h,062h,000h,05fh,078h,03ch,05eh,06dh,05fh,062h,060h,03ch,000h,080h,05ch	; b254  ..b._x<^m_b`<..\
	defb 03eh,0ffh	; b264

; ----------------------------------------------------------------------
; DATOS lineas_2E: las 1 lineas de la conversacion 0x2E y un 0 de fin; lo leen
;   p02:80BC (4 bytes)
;   0xb266..0xb26a  (4 bytes)
DATA_lineas_2E:
	defb 06ah,0b2h	; b266
	defb 000h,000h	; b268

; ----------------------------------------------------------------------
; DATOS linea_B26A: accion 0x00 y texto hasta 0xFF (conversacion 0x2E); lo
;   leen p02:80CA (47 bytes)
;   0xb26a..0xb299  (47 bytes)
DATA_linea_B26A:
	defb 000h,06eh,03ch,05dh,062h,06ch,073h,000h,06fh,060h,073h,000h,066h,03ch,086h,084h	; b26a  .n<]bls.o`s.f<..
	defb 087h,000h,05dh,07ch,083h,070h,074h,000h,04bh,04fh,04eh,047h,065h,079h,073h,000h	; b27a  ..]|.pt.KONGeys.
	defb 06fh,07ah,06ah,03ch,060h,03ch,075h,06ch,080h,05dh,066h,03ch,089h,03eh,0ffh	; b28a  ozj<`<ul.]f<.>.

; ----------------------------------------------------------------------
; DATOS lineas_2F: las 2 lineas de la conversacion 0x2F y un 0 de fin; lo leen
;   p02:80BC (6 bytes)
;   0xb299..0xb29f  (6 bytes)
DATA_lineas_2F:
	defb 09fh,0b2h	; b299
	defb 0bbh,0b2h	; b29b
	defb 000h,000h	; b29d

; ----------------------------------------------------------------------
; DATOS linea_B29F: accion 0x00 y texto hasta 0xFF (conversacion 0x2F); lo
;   leen p02:80CA (28 bytes)
;   0xb29f..0xb2bb  (28 bytes)
DATA_linea_B29F:
	defb 000h,064h,073h,000h,06eh,075h,03ch,081h,074h,000h,066h,088h,068h,05ch,06fh,083h	; b29f  .ds.nu<.t.f.h\o.
	defb 000h,05ch,073h,082h,073h,000h,06eh,075h,03ch,081h,03eh,0ffh	; b2af  .\s.s.nu<.>.

; ----------------------------------------------------------------------
; DATOS linea_B2BB: accion 0x00 y texto hasta 0xFF (conversacion 0x2F); lo
;   leen p02:80CA (42 bytes)
;   0xb2bb..0xb2e5  (42 bytes)
DATA_linea_B2BB:
	defb 000h,04bh,04fh,04eh,047h,065h,079h,073h,000h,061h,074h,03ch,060h,03ch,000h,06fh	; b2bb  .KONGeys.at<`<.o
	defb 063h,084h,074h,03ch,000h,05ch,060h,06fh,083h,07dh,073h,07dh,000h,05bh,063h,083h	; b2cb  c.t<.\`o.}s}.[c.
	defb 064h,06eh,074h,06dh,03ch,061h,06fh,05ch,03eh,0ffh	; b2db  dntm<ao\>.

; ----------------------------------------------------------------------
; DATOS lineas_30: las 1 lineas de la conversacion 0x30 y un 0 de fin; lo leen
;   p02:80BC (4 bytes)
;   0xb2e5..0xb2e9  (4 bytes)
DATA_lineas_30:
	defb 0e9h,0b2h	; b2e5
	defb 000h,000h	; b2e7

; ----------------------------------------------------------------------
; DATOS linea_B2E9: accion 0x1A y texto hasta 0xFF (conversacion 0x30); lo
;   leen p02:80CA (33 bytes)
;   0xb2e9..0xb30a  (33 bytes)
DATA_linea_B2E9:
	defb 01ah,06eh,03ch,05dh,062h,06ch,073h,000h,069h,06eh,070h,000h,06dh,03ch,06ah,05ch	; b2e9  .n<]bls.inp.m<j\
	defb 060h,03bh,0fdh,03ah,000h,031h,000h,074h,05ch,000h,000h,032h,000h,05ch,05ch,05eh	; b2f9  `;.:.1.t\..2.\\^
	defb 0ffh	; b309

; ----------------------------------------------------------------------
; DATOS lineas_31: las 1 lineas de la conversacion 0x31 y un 0 de fin; lo leen
;   p02:80BC (4 bytes)
;   0xb30a..0xb30e  (4 bytes)
DATA_lineas_31:
	defb 00eh,0b3h	; b30a
	defb 000h,000h	; b30c

; ----------------------------------------------------------------------
; DATOS linea_B30E: accion 0x1B y texto hasta 0xFF (conversacion 0x31); lo
;   leen p02:80CA (61 bytes)
;   0xb30e..0xb34b  (61 bytes)
DATA_linea_B30E:
	defb 01bh,086h,066h,074h,000h,066h,08ah,05dh,06bh,08bh,05dh,066h,03ch,089h,03eh,000h	; b30e  ..ft.f.]k.]f<.>.
	defb 05bh,082h,060h,03ch,06eh,05dh,03fh,080h,062h,000h,06ah,067h,063h,06dh,062h,084h	; b31e  [.`<n]?.b.jgcmb.
	defb 06ah,03eh,05fh,084h,05ch,070h,000h,079h,060h,076h,03dh,081h,073h,000h,066h,03ch	; b32e  j>_.\p.y`v=.s.f<
	defb 08ah,07dh,088h,087h,000h,065h,067h,03ch,063h,080h,05dh,03eh,0ffh	; b33e  .}...eg<c.]>.

; ----------------------------------------------------------------------
; DATOS lineas_32: las 1 lineas de la conversacion 0x32 y un 0 de fin; lo leen
;   p02:80BC (4 bytes)
;   0xb34b..0xb34f  (4 bytes)
DATA_lineas_32:
	defb 04fh,0b3h	; b34b
	defb 000h,000h	; b34d

; ----------------------------------------------------------------------
; DATOS linea_B34F: accion 0x00 y texto hasta 0xFF (conversacion 0x32); lo
;   leen p02:80CA (24 bytes)
;   0xb34f..0xb367  (24 bytes)
DATA_linea_B34F:
	defb 000h,066h,085h,05ch,063h,07dh,073h,074h,000h,075h,060h,082h,073h,000h,063h,088h	; b34f  .f.\c}st.u`.s.c.
	defb 06dh,03ch,000h,06ah,05fh,068h,03eh,0ffh	; b35f  m<.j_h>.

; ----------------------------------------------------------------------
; DATOS lineas_33: las 1 lineas de la conversacion 0x33 y un 0 de fin; lo leen
;   p02:80BC (4 bytes)
;   0xb367..0xb36b  (4 bytes)
DATA_lineas_33:
	defb 06bh,0b3h	; b367
	defb 000h,000h	; b369

; ----------------------------------------------------------------------
; DATOS linea_B36B: accion 0x00 y texto hasta 0xFF (conversacion 0x33); lo
;   leen p02:80CA (46 bytes)
;   0xb36b..0xb399  (46 bytes)
DATA_linea_B36B:
	defb 000h,04bh,04fh,04eh,047h,065h,079h,073h,000h,06ch,07ch,074h,000h,067h,077h,03ch	; b36b  .KONGeys.l|t.gw<
	defb 06dh,073h,000h,073h,085h,05ch,087h,000h,05dh,06bh,063h,067h,000h,06ah,06ah,03ch	; b37b  ms.s.\..]kcg.jj<
	defb 000h,075h,06eh,06ch,073h,000h,076h,03ch,061h,066h,03ch,089h,03eh,0ffh	; b38b  .unls.v<af<.>.

; ----------------------------------------------------------------------
; DATOS lineas_34: las 1 lineas de la conversacion 0x34 y un 0 de fin; lo leen
;   p02:80BC (4 bytes)
;   0xb399..0xb39d  (4 bytes)
DATA_lineas_34:
	defb 09dh,0b3h	; b399
	defb 000h,000h	; b39b

; ----------------------------------------------------------------------
; DATOS linea_B39D: accion 0x00 y texto hasta 0xFF (conversacion 0x34); lo
;   leen p02:80CA (35 bytes)
;   0xb39d..0xb3c0  (35 bytes)
DATA_linea_B39D:
	defb 000h,064h,073h,000h,074h,064h,087h,000h,05bh,063h,083h,070h,074h,000h,05bh,062h	; b39d  .ds.td..[c.pt.[b
	defb 03ch,073h,067h,073h,000h,060h,061h,03ch,060h,03ch,000h,075h,06ch,080h,05dh,06fh	; b3ad  <sgs.`a<`<.ul.]o
	defb 082h,03eh,0ffh	; b3bd

; ----------------------------------------------------------------------
; DATOS lineas_35: las 1 lineas de la conversacion 0x35 y un 0 de fin; lo leen
;   p02:80BC (4 bytes)
;   0xb3c0..0xb3c4  (4 bytes)
DATA_lineas_35:
	defb 0c4h,0b3h	; b3c0
	defb 000h,000h	; b3c2

; ----------------------------------------------------------------------
; DATOS linea_B3C4: accion 0x00 y texto hasta 0xFF (conversacion 0x35); lo
;   leen p02:80CA (17 bytes)
;   0xb3c4..0xb3d5  (17 bytes)
DATA_linea_B3C4:
	defb 000h,060h,081h,067h,074h,000h,060h,06fh,081h,067h,03ch,000h,06ah,05fh,068h,03eh	; b3c4  .`.gt.`o.g<.j_h>
	defb 0ffh	; b3d4

; ----------------------------------------------------------------------
; DATOS lineas_36: las 1 lineas de la conversacion 0x36 y un 0 de fin; lo leen
;   p02:80BC (4 bytes)
;   0xb3d5..0xb3d9  (4 bytes)
DATA_lineas_36:
	defb 0d9h,0b3h	; b3d5
	defb 000h,000h	; b3d7

; ----------------------------------------------------------------------
; DATOS linea_B3D9: accion 0x00 y texto hasta 0xFF (conversacion 0x36); lo
;   leen p02:80CA (31 bytes)
;   0xb3d9..0xb3f8  (31 bytes)
DATA_linea_B3D9:
	defb 000h,066h,088h,06dh,03ch,088h,070h,074h,000h,04bh,04fh,04eh,047h,073h,000h,065h	; b3d9  .f.m<.pt.KONGs.e
	defb 063h,075h,03ch,060h,03ch,000h,060h,062h,065h,084h,06dh,05ch,083h,03eh,0ffh	; b3e9  cu<`<.`be.m\.>.

; ----------------------------------------------------------------------
; DATOS lineas_37: las 4 lineas de la conversacion 0x37 y un 0 de fin; lo leen
;   p02:80BC (10 bytes)
;   0xb3f8..0xb402  (10 bytes)
DATA_lineas_37:
	defb 002h,0b4h	; b3f8
	defb 01fh,0b4h	; b3fa
	defb 031h,0b4h	; b3fc
	defb 04eh,0b4h	; b3fe
	defb 000h,000h	; b400

; ----------------------------------------------------------------------
; DATOS linea_B402: accion 0x00 y texto hasta 0xFF (conversacion 0x37); lo
;   leen p02:80CA (29 bytes)
;   0xb402..0xb41f  (29 bytes)
DATA_linea_B402:
	defb 000h,05ch,079h,060h,081h,000h,048h,045h,04ch,049h,043h,04fh,050h,054h,045h,052h	; b402  .\y`..HELICOPTER
	defb 000h,06eh,000h,06ch,05dh,066h,088h,000h,066h,079h,067h,03eh,0ffh	; b412  .n.l]f..fyg>.

; ----------------------------------------------------------------------
; DATOS linea_B41F: accion 0x00 y texto hasta 0xFF (conversacion 0x37); lo
;   leen p02:80CA (18 bytes)
;   0xb41f..0xb431  (18 bytes)
DATA_linea_B41F:
	defb 000h,064h,06bh,081h,041h,052h,04dh,059h,000h,064h,06bh,081h,041h,052h,04dh,059h	; b41f  .dk.ARMY.dk.ARMY
	defb 000h,0ffh	; b42f

; ----------------------------------------------------------------------
; DATOS linea_B431: accion 0x00 y texto hasta 0xFF (conversacion 0x37); lo
;   leen p02:80CA (29 bytes)
;   0xb431..0xb44e  (29 bytes)
DATA_linea_B431:
	defb 000h,079h,06ah,03ch,000h,04ch,041h,044h,059h,000h,04bh,04fh,04eh,047h,087h,000h	; b431  .yj<.LADY.KONG..
	defb 074h,08ch,063h,088h,000h,06dh,03ch,061h,06fh,05ch,073h,060h,0ffh	; b441  t.c..m<ao\s`.

; ----------------------------------------------------------------------
; DATOS linea_B44E: accion 0x00 y texto hasta 0xFF (conversacion 0x37); lo
;   leen p02:80CA (32 bytes)
;   0xb44e..0xb46e  (32 bytes)
DATA_linea_B44E:
	defb 000h,074h,07eh,062h,066h,06fh,05ch,06eh,000h,04bh,049h,04eh,047h,000h,04bh,04fh	; b44e  .t~bfo\n.KING.KO
	defb 04eh,047h,060h,03ch,000h,066h,088h,06dh,03ch,066h,079h,05dh,069h,03ch,03eh,0ffh	; b45e  NG`<.f.m<fy]i<>.

; ----------------------------------------------------------------------
; DATOS lineas_38: las 5 lineas de la conversacion 0x38 y un 0 de fin; lo leen
;   p02:80BC (12 bytes)
;   0xb46e..0xb47a  (12 bytes)
DATA_lineas_38:
	defb 002h,0b4h	; b46e
	defb 07ah,0b4h	; b470
	defb 093h,0b4h	; b472
	defb 0a3h,0b4h	; b474
	defb 0beh,0b4h	; b476
	defb 000h,000h	; b478

; ----------------------------------------------------------------------
; DATOS linea_B47A: accion 0x00 y texto hasta 0xFF (conversacion 0x38); lo
;   leen p02:80CA (25 bytes)
;   0xb47a..0xb493  (25 bytes)
DATA_linea_B47A:
	defb 000h,064h,03ch,062h,085h,05dh,000h,04dh,049h,054h,043h,048h,045h,04ch,03eh,0fdh	; b47a  .d<b.].MITCHEL>.
	defb 080h,062h,07eh,08ch,06ah,069h,03ch,03eh,0ffh	; b48a  .b~.ji<>.

; ----------------------------------------------------------------------
; DATOS linea_B493: accion 0x00 y texto hasta 0xFF (conversacion 0x38); lo
;   leen p02:80CA (16 bytes)
;   0xb493..0xb4a3  (16 bytes)
DATA_linea_B493:
	defb 000h,067h,062h,03ch,070h,000h,069h,06bh,081h,070h,000h,07bh,060h,05dh,03eh,0ffh	; b493  .gb<p.ik.p.{`]>.

; ----------------------------------------------------------------------
; DATOS linea_B4A3: accion 0x21 y texto hasta 0xFF (conversacion 0x38); lo
;   leen p02:80CA (27 bytes)
;   0xb4a3..0xb4be  (27 bytes)
DATA_linea_B4A3:
	defb 021h,064h,084h,06dh,03ch,000h,04bh,049h,04eh,047h,000h,04bh,04fh,04eh,047h,07dh	; b4a3  !d.m<.KING.KONG}
	defb 000h,06ah,067h,060h,083h,06ah,03ch,085h,05dh,03eh,0ffh	; b4b3  .jg`.j<.]>.

; ----------------------------------------------------------------------
; DATOS linea_B4BE: accion 0x22 y texto hasta 0xFF (conversacion 0x38); lo
;   leen p02:80CA (22 bytes)
;   0xb4be..0xb4d4  (22 bytes)
DATA_linea_B4BE:
	defb 022h,048h,045h,04ch,049h,043h,04fh,050h,054h,045h,052h,060h,03ch,07eh,08ch,06dh	; b4be  "HELICOPTER`<~.m
	defb 061h,079h,066h,06ah,03eh,0ffh	; b4ce

; ----------------------------------------------------------------------
; DATOS ya_no_basta: [x][y] "これだけでは まんぞくできぬ。" 0xFE [x][y] "あいてむの こうりょくも いただく。"
;   0xFF: lo que escribe p00:454C
;   0xb4d4..0xb500  (44 bytes)
DATA_ya_no_basta:
	defb 008h,0b0h,064h,084h,06ah,03ch,063h,06dh,03ch,074h,000h,079h,088h,069h,03ch,062h	; b4d4  ..d.j<cm<t.y.i<b
	defb 06dh,03ch,061h,071h,03eh,0feh,008h,0b8h,05bh,05ch,06dh,07bh,073h,000h,064h,05dh	; b4e4  m<aq>...[\m{s.d]
	defb 082h,08bh,062h,07dh,000h,05ch,06ah,06ah,03ch,062h,03eh,0ffh	; b4f4  ..b}.\jj<b>.

; ======================================================================
; CODIGO 0xb500..0xb503  (3 bytes)
; ======================================================================


accion_01_el_cuchillo:
	call elige_1_2_o_3		;b500   ; elige_1_2_o_3: Detras del `call` van tres palabras: salta a la primera, la segunda o la

; ----------------------------------------------------------------------
; DATOS tabla_B503: 3 destinos del despachador de 0xB9B3 (call en p12:B500):
;   0xB509, 0xB522, 0xB536; lo leen p12:B500 (6 bytes)
;   0xb503..0xb509  (6 bytes)
DATA_tabla_B503:
	defb 009h,0b5h	; b503
	defb 022h,0b5h	; b505
	defb 036h,0b5h	; b507

; ======================================================================
; CODIGO 0xb509..0xb53a  (49 bytes)
; ======================================================================


L_B509:
	ld de,00200h		;b509   ; 200 GOLD
	call cobra		;b50c   ; cobra: Cobra DE (BCD) del oro 0xC135-0xC137. Acarreo = no hay bastante; con
	jr c,L_B529		;b50f
	ld a,001h		;b511   ; el objeto 1
	call 04068h		;b513   ; p00:puente_da_un_objeto: p01:79CE: da el objeto A, una unidad (lo usan las conversaciones de p12)
	ld a,002h		;b516
	ld (0c14dh),a		;b518   ; guarda la linea de la conversacion
	ld a,004h		;b51b
	ld (0c15dh),a		;b51d   ; guarda la linea a la que se salta tras la accion
	jr L_B531		;b520
L_B522:
	ld a,004h		;b522
	ld (0c14dh),a		;b524   ; guarda la linea de la conversacion
	jr L_B531		;b527
L_B529:
	ld a,003h		;b529
	ld (0c14dh),a		;b52b   ; guarda la linea de la conversacion
	jp L_B531		;b52e
L_B531:
	ld a,001h		;b531
	ld (0c14bh),a		;b533   ; guarda el paso de la conversacion
L_B536:
	ret			;b536
accion_02_el_hacha:
	call elige_1_2_o_3		;b537   ; elige_1_2_o_3: Detras del `call` van tres palabras: salta a la primera, la segunda o la

; ----------------------------------------------------------------------
; DATOS tabla_B53A: 3 destinos del despachador de 0xB9B3 (call en p12:B537):
;   0xB548, 0xB540, 0xB536; lo leen p12:B537 (6 bytes)
;   0xb53a..0xb540  (6 bytes)
DATA_tabla_B53A:
	defb 048h,0b5h	; b53a
	defb 040h,0b5h	; b53c
	defb 036h,0b5h	; b53e

; ======================================================================
; CODIGO 0xb540..0xb56f  (47 bytes)
; ======================================================================


L_B540:
	ld a,007h		;b540
	ld (0c14dh),a		;b542   ; guarda la linea de la conversacion
	jp L_B531		;b545
quiere_el_hacha:
	ld a,(0c136h)		;b548   ; con 300 GOLD o mas (0xC136 >= 3), la linea siguiente: "agotada"
	cp 003h		;b54b
	jp nc,L_B531		;b54d
	ld a,003h		;b550   ; con menos, la 3: "no te llega"
	ld (0c14dh),a		;b552   ; guarda la linea de la conversacion
	ld a,007h		;b555
	ld (0c15dh),a		;b557   ; guarda la linea a la que se salta tras la accion
	jp L_B531		;b55a
accion_03_la_radio:
	ld a,(0c358h)		;b55d   ; con el objeto 0x19 (0xC358) sigue la conversacion; sin el, se acaba
	and a			;b560
	jp nz,L_B7DA		;b561
	ld a,005h		;b564
	ld (0c14dh),a		;b566   ; guarda la linea de la conversacion
	jp L_B7DA		;b569
accion_04_la_carta:
	call elige_1_2_o_3		;b56c   ; elige_1_2_o_3: Detras del `call` van tres palabras: salta a la primera, la segunda o la

; ----------------------------------------------------------------------
; DATOS tabla_B56F: 3 destinos del despachador de 0xB9B3 (call en p12:B56C):
;   0xB575, 0xB57D, 0xB536; lo leen p12:B56C (6 bytes)
;   0xb56f..0xb575  (6 bytes)
DATA_tabla_B56F:
	defb 075h,0b5h	; b56f
	defb 07dh,0b5h	; b571
	defb 036h,0b5h	; b573

; ======================================================================
; CODIGO 0xb575..0xb58a  (21 bytes)
; ======================================================================


L_B575:
	ld a,020h		;b575   ; aceptar: el objeto 0x20
	call 04068h		;b577   ; p00:puente_da_un_objeto: p01:79CE: da el objeto A, una unidad (lo usan las conversaciones de p12)
	jp L_B531		;b57a
rechaza_la_carta:
	xor a			;b57d   ; rechazar: el MP se queda a 0
	ld (0c12fh),a		;b57e   ; guarda MP, la magia (BCD, hasta 99)
	call 04062h		;b581
	jp L_B531		;b584
accion_05_comida:
	call elige_1_2_o_3		;b587   ; elige_1_2_o_3: Detras del `call` van tres palabras: salta a la primera, la segunda o la

; ----------------------------------------------------------------------
; DATOS tabla_B58A: 3 destinos del despachador de 0xB9B3 (call en p12:B587):
;   0xB590, 0xB5A0, 0xB5AF; lo leen p12:B587 (6 bytes)
;   0xb58a..0xb590  (6 bytes)
DATA_tabla_B58A:
	defb 090h,0b5h	; b58a
	defb 0a0h,0b5h	; b58c
	defb 0afh,0b5h	; b58e

; ======================================================================
; CODIGO 0xb590..0xb5c2  (50 bytes)
; ======================================================================


L_B590:
	ld de,00050h		;b590   ; la primera, 50 GOLD: no hace nada mas
	call cobra		;b593   ; cobra: Cobra DE (BCD) del oro 0xC135-0xC137. Acarreo = no hay bastante; con
	jr c,L_B5B7		;b596
L_B598:
	ld a,003h		;b598
	ld (0c14dh),a		;b59a   ; guarda la linea de la conversacion
	jp L_B531		;b59d
L_B5A0:
	ld de,00100h		;b5a0   ; la segunda, 100 GOLD: media vida
	call cobra		;b5a3   ; cobra: Cobra DE (BCD) del oro 0xC135-0xC137. Acarreo = no hay bastante; con
	jp c,L_B531		;b5a6
	call media_vida		;b5a9   ; media_vida: cura la mitad de lo que falta hasta la vida maxima
	jp L_B598		;b5ac
L_B5AF:
	ld a,003h		;b5af
	ld (0c14dh),a		;b5b1   ; guarda la linea de la conversacion
	jp L_B531		;b5b4
L_B5B7:
	ld a,002h		;b5b7
	ld (0c14dh),a		;b5b9   ; guarda la linea de la conversacion
	jp L_B531		;b5bc
accion_06_posada:
	call elige_1_2_o_3		;b5bf   ; elige_1_2_o_3: Detras del `call` van tres palabras: salta a la primera, la segunda o la

; ----------------------------------------------------------------------
; DATOS tabla_B5C2: 3 destinos del despachador de 0xB9B3 (call en p12:B5BF):
;   0xB5C8, 0xB5D7, 0xB536; lo leen p12:B5BF (6 bytes)
;   0xb5c2..0xb5c8  (6 bytes)
DATA_tabla_B5C2:
	defb 0c8h,0b5h	; b5c2
	defb 0d7h,0b5h	; b5c4
	defb 036h,0b5h	; b5c6

; ======================================================================
; CODIGO 0xb5c8..0xb623  (91 bytes)
; ======================================================================


L_B5C8:
	ld de,00150h		;b5c8   ; 150 GOLD: vida llena y 20 de MP
	call cobra		;b5cb   ; cobra: Cobra DE (BCD) del oro 0xC135-0xC137. Acarreo = no hay bastante; con
	jp c,L_B531		;b5ce
	call vida_llena		;b5d1
	call mp_mas_20		;b5d4
L_B5D7:
	ld a,002h		;b5d7
	ld (0c14dh),a		;b5d9   ; guarda la linea de la conversacion
	jp L_B531		;b5dc
accion_07_da_el_0x0C:
	ld a,00ch		;b5df   ; el objeto 0x0C, てむさ
	call 04068h		;b5e1   ; p00:puente_da_un_objeto: p01:79CE: da el objeto A, una unidad (lo usan las conversaciones de p12)
	jp L_B7DA		;b5e4
accion_08_sin_libro:
	ld a,(0c360h)		;b5e7   ; 0xC360: el objeto 0x21; sin el, solo "kii kii kuu kii"
	and a			;b5ea
	jr z,L_B5F5		;b5eb
	ld a,002h		;b5ed
	ld (0c14dh),a		;b5ef   ; guarda la linea de la conversacion
	jp L_B531		;b5f2
L_B5F5:
	ld a,001h		;b5f5
	ld (0c14dh),a		;b5f7   ; guarda la linea de la conversacion
	ld a,003h		;b5fa
	ld (0c15dh),a		;b5fc   ; guarda la linea a la que se salta tras la accion
	jp L_B531		;b5ff
accion_09_da_el_0x17:
	ld a,017h		;b602   ; el objeto 0x17, どりあん
	call 04068h		;b604   ; p00:puente_da_un_objeto: p01:79CE: da el objeto A, una unidad (lo usan las conversaciones de p12)
	jp L_B7DA		;b607
accion_0A_sin_libro:
	ld a,(0c360h)		;b60a   ; lee cuantos objetos 0x21 se llevan (BCD; 0xFF sin cuenta)
	and a			;b60d
	jr z,L_B618		;b60e
	ld a,002h		;b610
	ld (0c14dh),a		;b612   ; guarda la linea de la conversacion
	jp L_B531		;b615
L_B618:
	ld a,009h		;b618
	ld (0c15dh),a		;b61a   ; guarda la linea a la que se salta tras la accion
	jp L_B531		;b61d
accion_1D_cinco_0x10:
	call elige_1_2_o_3		;b620   ; elige_1_2_o_3: Detras del `call` van tres palabras: salta a la primera, la segunda o la

; ----------------------------------------------------------------------
; DATOS tabla_B623: 3 destinos del despachador de 0xB9B3 (call en p12:B620):
;   0xB629, 0xB653, 0xB536; lo leen p12:B620 (6 bytes)
;   0xb623..0xb629  (6 bytes)
DATA_tabla_B623:
	defb 029h,0b6h	; b623
	defb 053h,0b6h	; b625
	defb 036h,0b5h	; b627

; ======================================================================
; CODIGO 0xb629..0xb65d  (52 bytes)
; ======================================================================


L_B629:
	ld hl,0c34fh		;b629   ; gasta cinco 0x10 (0xC34F)
	ld a,(hl)			;b62c
	sub 005h		;b62d
	daa			;b62f
	jr c,L_B646		;b630
	ld (hl),a			;b632
	ld a,007h		;b633
	ld (0c14dh),a		;b635   ; guarda la linea de la conversacion
	ld a,001h		;b638
	ld (0c15fh),a		;b63a
	ld a,(0c146h)		;b63d   ; lee la ENFERMEDAD (la picadura)
	and a			;b640
	jp nz,L_B531		;b641
	jr L_B64B		;b644
L_B646:
	ld a,006h		;b646
	ld (0c14dh),a		;b648   ; guarda la linea de la conversacion
L_B64B:
	ld a,009h		;b64b
	ld (0c15dh),a		;b64d   ; guarda la linea a la que se salta tras la accion
	jp L_B531		;b650
L_B653:
	ld a,005h		;b653
	ld (0c14dh),a		;b655   ; guarda la linea de la conversacion
	jr L_B64B		;b658
accion_0B_el_libro:
	call elige_1_2_o_3		;b65a   ; elige_1_2_o_3: Detras del `call` van tres palabras: salta a la primera, la segunda o la

; ----------------------------------------------------------------------
; DATOS tabla_B65D: 3 destinos del despachador de 0xB9B3 (call en p12:B65A):
;   0xB663, 0xB679, 0xB536; lo leen p12:B65A (6 bytes)
;   0xb65d..0xb663  (6 bytes)
DATA_tabla_B65D:
	defb 063h,0b6h	; b65d
	defb 079h,0b6h	; b65f
	defb 036h,0b5h	; b661

; ======================================================================
; CODIGO 0xb663..0xb684  (33 bytes)
; ======================================================================


L_B663:
	ld de,00200h		;b663   ; 200 GOLD
	call cobra		;b666   ; cobra: Cobra DE (BCD) del oro 0xC135-0xC137. Acarreo = no hay bastante; con
	jp c,L_B531		;b669
	ld a,021h		;b66c   ; el objeto 0x21
	call 04068h		;b66e   ; p00:puente_da_un_objeto: p01:79CE: da el objeto A, una unidad (lo usan las conversaciones de p12)
	ld a,002h		;b671
	ld (0c14dh),a		;b673   ; guarda la linea de la conversacion
	jp L_B531		;b676
L_B679:
	ld a,002h		;b679
	ld (0c14dh),a		;b67b   ; guarda la linea de la conversacion
	jp L_B531		;b67e
accion_0C_los_zuecos:
	call elige_1_2_o_3		;b681   ; elige_1_2_o_3: Detras del `call` van tres palabras: salta a la primera, la segunda o la

; ----------------------------------------------------------------------
; DATOS tabla_B684: 3 destinos del despachador de 0xB9B3 (call en p12:B681):
;   0xB68A, 0xB6B5, 0xB536; lo leen p12:B681 (6 bytes)
;   0xb684..0xb68a  (6 bytes)
DATA_tabla_B684:
	defb 08ah,0b6h	; b684
	defb 0b5h,0b6h	; b686
	defb 036h,0b5h	; b688

; ======================================================================
; CODIGO 0xb68a..0xb6e8  (94 bytes)
; ======================================================================


L_B68A:
	ld a,(0c35ch)		;b68a   ; sin el objeto 0x1D (0xC35C) no hay zuecos
	and a			;b68d
	jr z,L_B6AD		;b68e
	ld de,00150h		;b690   ; 150 GOLD
	call cobra		;b693   ; cobra: Cobra DE (BCD) del oro 0xC135-0xC137. Acarreo = no hay bastante; con
	jr c,L_B6BD		;b696
	ld hl,0c35ch		;b698   ; gasta un 0x1D...
	ld a,(hl)			;b69b
	sub 001h		;b69c
	daa			;b69e
	ld (hl),a			;b69f
	ld a,01eh		;b6a0   ; ...y da el 0x1E
	call 04068h		;b6a2   ; p00:puente_da_un_objeto: p01:79CE: da el objeto A, una unidad (lo usan las conversaciones de p12)
	ld a,004h		;b6a5
	ld (0c14dh),a		;b6a7   ; guarda la linea de la conversacion
	jp L_B531		;b6aa
L_B6AD:
	ld a,003h		;b6ad
	ld (0c14dh),a		;b6af   ; guarda la linea de la conversacion
	jp L_B531		;b6b2
L_B6B5:
	ld a,004h		;b6b5
	ld (0c14dh),a		;b6b7   ; guarda la linea de la conversacion
	jp L_B531		;b6ba
L_B6BD:
	ld a,002h		;b6bd
	ld (0c14dh),a		;b6bf   ; guarda la linea de la conversacion
	ld a,004h		;b6c2
	ld (0c15dh),a		;b6c4   ; guarda la linea a la que se salta tras la accion
	jp L_B531		;b6c7
accion_0D_sin_libro:
	ld a,(0c360h)		;b6ca   ; lee cuantos objetos 0x21 se llevan (BCD; 0xFF sin cuenta)
	and a			;b6cd
	jr z,L_B6D8		;b6ce
	ld a,002h		;b6d0
	ld (0c14dh),a		;b6d2   ; guarda la linea de la conversacion
	jp L_B531		;b6d5
L_B6D8:
	ld a,001h		;b6d8
	ld (0c14dh),a		;b6da   ; guarda la linea de la conversacion
	ld a,005h		;b6dd
	ld (0c15dh),a		;b6df   ; guarda la linea a la que se salta tras la accion
	jp L_B531		;b6e2
accion_1E_carne_para_pasar:
	call elige_1_2_o_3		;b6e5   ; elige_1_2_o_3: Detras del `call` van tres palabras: salta a la primera, la segunda o la

; ----------------------------------------------------------------------
; DATOS tabla_B6E8: 3 destinos del despachador de 0xB9B3 (call en p12:B6E5):
;   0xB6EE, 0xB701, 0xB536; lo leen p12:B6E5 (6 bytes)
;   0xb6e8..0xb6ee  (6 bytes)
DATA_tabla_B6E8:
	defb 0eeh,0b6h	; b6e8
	defb 001h,0b7h	; b6ea
	defb 036h,0b5h	; b6ec

; ======================================================================
; CODIGO 0xb6ee..0xb734  (70 bytes)
; ======================================================================


L_B6EE:
	call gasta_un_0x15		;b6ee   ; gasta_un_0x15: 0xC354: el objeto 0x15
	jp c,L_B531		;b6f1
	call 04050h		;b6f4
	ld a,001h		;b6f7
	ld (0c15fh),a		;b6f9
	ld a,001h		;b6fc
	ld (0c16ah),a		;b6fe
L_B701:
	ld a,005h		;b701
	ld (0c14dh),a		;b703   ; guarda la linea de la conversacion
	jp L_B531		;b706
gasta_un_0x15:
	ld hl,0c354h		;b709   ; 0xC354: el objeto 0x15
	ld a,(hl)			;b70c
	sub 001h		;b70d
	daa			;b70f
	ret c			;b710
	ld (hl),a			;b711
	ret			;b712
accion_0E_la_picadura:
	ld a,001h		;b713   ; 0xC146: la enfermedad
	ld (0c146h),a		;b715   ; guarda la ENFERMEDAD (la picadura)
	jp L_B7DA		;b718
accion_0F_sin_libro:
	ld a,(0c360h)		;b71b   ; lee cuantos objetos 0x21 se llevan (BCD; 0xFF sin cuenta)
	and a			;b71e
	jr z,L_B729		;b71f
	ld a,002h		;b721
	ld (0c14dh),a		;b723   ; guarda la linea de la conversacion
	jp L_B531		;b726
L_B729:
	ld a,005h		;b729
	ld (0c15dh),a		;b72b   ; guarda la linea a la que se salta tras la accion
	jp L_B531		;b72e
accion_1F_carne_por_posada:
	call elige_1_2_o_3		;b731   ; elige_1_2_o_3: Detras del `call` van tres palabras: salta a la primera, la segunda o la

; ----------------------------------------------------------------------
; DATOS tabla_B734: 3 destinos del despachador de 0xB9B3 (call en p12:B731):
;   0xB73A, 0xB74B, 0xB536; lo leen p12:B731 (6 bytes)
;   0xb734..0xb73a  (6 bytes)
DATA_tabla_B734:
	defb 03ah,0b7h	; b734
	defb 04bh,0b7h	; b736
	defb 036h,0b5h	; b738

; ======================================================================
; CODIGO 0xb73a..0xb76c  (50 bytes)
; ======================================================================


L_B73A:
	call gasta_un_0x15		;b73a   ; gasta_un_0x15: 0xC354: el objeto 0x15
	jp c,L_B531		;b73d
	call vida_llena		;b740
	ld a,005h		;b743
	ld (0c14dh),a		;b745   ; guarda la linea de la conversacion
	jp L_B531		;b748
L_B74B:
	ld a,005h		;b74b
	ld (0c14dh),a		;b74d   ; guarda la linea de la conversacion
	jp L_B531		;b750
accion_10_sin_libro:
	ld a,(0c360h)		;b753   ; lee cuantos objetos 0x21 se llevan (BCD; 0xFF sin cuenta)
	and a			;b756
	jr z,L_B761		;b757
	ld a,002h		;b759
	ld (0c14dh),a		;b75b   ; guarda la linea de la conversacion
	jp L_B531		;b75e
L_B761:
	ld a,005h		;b761
	ld (0c15dh),a		;b763   ; guarda la linea a la que se salta tras la accion
	jp L_B531		;b766
accion_20_carne_por_llave:
	call elige_1_2_o_3		;b769   ; elige_1_2_o_3: Detras del `call` van tres palabras: salta a la primera, la segunda o la

; ----------------------------------------------------------------------
; DATOS tabla_B76C: 3 destinos del despachador de 0xB9B3 (call en p12:B769):
;   0xB772, 0xB77F, 0xB536; lo leen p12:B769 (6 bytes)
;   0xb76c..0xb772  (6 bytes)
DATA_tabla_B76C:
	defb 072h,0b7h	; b76c
	defb 07fh,0b7h	; b76e
	defb 036h,0b5h	; b770

; ======================================================================
; CODIGO 0xb772..0xb78a  (24 bytes)
; ======================================================================


L_B772:
	call gasta_un_0x15		;b772   ; gasta_un_0x15: 0xC354: el objeto 0x15
	ld a,024h		;b775   ; el objeto 0x24
	call 04068h		;b777   ; p00:puente_da_un_objeto: p01:79CE: da el objeto A, una unidad (lo usan las conversaciones de p12)
	ld a,001h		;b77a
	ld (0c169h),a		;b77c
L_B77F:
	ld a,005h		;b77f
	ld (0c14dh),a		;b781   ; guarda la linea de la conversacion
	jp L_B531		;b784
accion_11_comida:
	call elige_1_2_o_3		;b787   ; elige_1_2_o_3: Detras del `call` van tres palabras: salta a la primera, la segunda o la

; ----------------------------------------------------------------------
; DATOS tabla_B78A: 3 destinos del despachador de 0xB9B3 (call en p12:B787):
;   0xB790, 0xB7A1, 0xB536; lo leen p12:B787 (6 bytes)
;   0xb78a..0xb790  (6 bytes)
DATA_tabla_B78A:
	defb 090h,0b7h	; b78a
	defb 0a1h,0b7h	; b78c
	defb 036h,0b5h	; b78e

; ======================================================================
; CODIGO 0xb790..0xb7b2  (34 bytes)
; ======================================================================


L_B790:
	ld de,00050h		;b790
	call cobra		;b793   ; cobra: Cobra DE (BCD) del oro 0xC135-0xC137. Acarreo = no hay bastante; con
	jp c,L_B531		;b796
L_B799:
	ld a,003h		;b799
	ld (0c14dh),a		;b79b   ; guarda la linea de la conversacion
	jp L_B531		;b79e
L_B7A1:
	ld de,00100h		;b7a1
	call cobra		;b7a4   ; cobra: Cobra DE (BCD) del oro 0xC135-0xC137. Acarreo = no hay bastante; con
	jp c,L_B531		;b7a7
	call media_vida		;b7aa   ; media_vida: cura la mitad de lo que falta hasta la vida maxima
	jr L_B799		;b7ad
accion_12_zuecos_por_posada:
	call elige_1_2_o_3		;b7af   ; elige_1_2_o_3: Detras del `call` van tres palabras: salta a la primera, la segunda o la

; ----------------------------------------------------------------------
; DATOS tabla_B7B2: 3 destinos del despachador de 0xB9B3 (call en p12:B7AF):
;   0xB7B8, 0xB531, 0xB536; lo leen p12:B7AF (6 bytes)
;   0xb7b2..0xb7b8  (6 bytes)
DATA_tabla_B7B2:
	defb 0b8h,0b7h	; b7b2
	defb 031h,0b5h	; b7b4
	defb 036h,0b5h	; b7b6

; ======================================================================
; CODIGO 0xb7b8..0xb7e2  (42 bytes)
; ======================================================================


L_B7B8:
	ld hl,0c35dh		;b7b8   ; gasta un 0x1E (0xC35D)...
	ld a,(hl)			;b7bb
	sub 001h		;b7bc
	daa			;b7be
	jp c,L_B531		;b7bf
	ld (hl),a			;b7c2
	xor a			;b7c3
	ld (0c142h),a		;b7c4   ; guarda los zuecos puestos
	call vida_llena		;b7c7   ; ...vida llena y 20 de MP
	call mp_mas_20		;b7ca
	ld a,003h		;b7cd
	ld (0c14dh),a		;b7cf   ; guarda la linea de la conversacion
	jp L_B531		;b7d2
accion_13_da_el_0x12:
	ld a,012h		;b7d5   ; el objeto 0x12, きば
	call 04068h		;b7d7   ; p00:puente_da_un_objeto: p01:79CE: da el objeto A, una unidad (lo usan las conversaciones de p12)
L_B7DA:
	ld hl,0c14bh		;b7da   ; apunta a el paso de la conversacion
	inc (hl)			;b7dd
	ret			;b7de
accion_14_sin_uso:
	call elige_1_2_o_3		;b7df   ; ninguna linea lleva la accion 0x14

; ----------------------------------------------------------------------
; DATOS tabla_B7E2: 3 destinos del despachador de 0xB9B3 (call en p12:B7DF):
;   0xB7E8, 0xB531, 0xB536; lo leen p12:B7DF (6 bytes)
;   0xb7e2..0xb7e8  (6 bytes)
DATA_tabla_B7E2:
	defb 0e8h,0b7h	; b7e2
	defb 031h,0b5h	; b7e4
	defb 036h,0b5h	; b7e6

; ======================================================================
; CODIGO 0xb7e8..0xb800  (24 bytes)
; ======================================================================


L_B7E8:
	ld de,00300h		;b7e8   ; 300 GOLD
	call cobra		;b7eb   ; cobra: Cobra DE (BCD) del oro 0xC135-0xC137. Acarreo = no hay bastante; con
	jp c,L_B531		;b7ee
	ld a,001h		;b7f1
	ld (0c144h),a		;b7f3
	inc a			;b7f6
	ld (0c15dh),a		;b7f7   ; guarda la linea a la que se salta tras la accion
	jp L_B531		;b7fa
accion_15_comida:
	call elige_1_2_o_3		;b7fd   ; elige_1_2_o_3: Detras del `call` van tres palabras: salta a la primera, la segunda o la

; ----------------------------------------------------------------------
; DATOS tabla_B800: 3 destinos del despachador de 0xB9B3 (call en p12:B7FD):
;   0xB806, 0xB590, 0xB531; lo leen p12:B7FD (6 bytes)
;   0xb800..0xb806  (6 bytes)
DATA_tabla_B800:
	defb 006h,0b8h	; b800
	defb 090h,0b5h	; b802
	defb 031h,0b5h	; b804

; ======================================================================
; CODIGO 0xb806..0xb872  (108 bytes)
; ======================================================================


L_B806:
	ld de,00010h		;b806   ; la primera, 10 GOLD...
	call cobra		;b809   ; cobra: Cobra DE (BCD) del oro 0xC135-0xC137. Acarreo = no hay bastante; con
	jp c,L_B531		;b80c
	ld hl,0c12ah		;b80f   ; ...y quita vida (LIFE / 2, redondeando en BCD)
	ld a,(hl)			;b812
	dec hl			;b813
	srl a		;b814
	ld d,a			;b816
	ld a,(hl)			;b817
	rra			;b818
	bit 7,a		;b819
	jr z,L_B81F		;b81b
	sub 030h		;b81d
L_B81F:
	bit 3,a		;b81f
	jr z,L_B825		;b821
	sub 003h		;b823
L_B825:
	ld e,a			;b825
	ld a,(hl)			;b826
	sub e			;b827
	daa			;b828
	ld (hl),a			;b829
	inc hl			;b82a
	ld a,(hl)			;b82b
	sbc a,d			;b82c
	daa			;b82d
	ld (hl),a			;b82e
	call 04062h		;b82f
	ld a,003h		;b832
	ld (0c14dh),a		;b834   ; guarda la linea de la conversacion
	jp L_B7DA		;b837
accion_16_la_carta_llega:
	ld a,(0c35fh)		;b83a   ; con el objeto 0x20 (0xC35F)...
	and a			;b83d
	jr z,L_B851		;b83e
	ld a,002h		;b840
	ld (0c14dh),a		;b842   ; guarda la linea de la conversacion
	ld a,01ah		;b845   ; ...da el 0x1A y se queda la carta
	call 04068h		;b847   ; p00:puente_da_un_objeto: p01:79CE: da el objeto A, una unidad (lo usan las conversaciones de p12)
	xor a			;b84a
	ld (0c35fh),a		;b84b   ; guarda cuantos objetos 0x20 se llevan (BCD; 0xFF sin cuenta)
	jp L_B531		;b84e
L_B851:
	ld a,004h		;b851
	ld (0c15dh),a		;b853   ; guarda la linea a la que se salta tras la accion
	jp L_B531		;b856
accion_17_da_el_0x19:
	ld a,(0c358h)		;b859   ; lee cuantos objetos 0x19 se llevan (BCD; 0xFF sin cuenta)
	and a			;b85c
	jr z,L_B867		;b85d
	ld a,003h		;b85f
	ld (0c14dh),a		;b861   ; guarda la linea de la conversacion
	jp L_B531		;b864
L_B867:
	ld a,019h		;b867   ; el objeto 0x19, むせんき
	call 04068h		;b869   ; p00:puente_da_un_objeto: p01:79CE: da el objeto A, una unidad (lo usan las conversaciones de p12)
	jp L_B531		;b86c
accion_18_repara:
	call elige_1_2_o_3		;b86f   ; elige_1_2_o_3: Detras del `call` van tres palabras: salta a la primera, la segunda o la

; ----------------------------------------------------------------------
; DATOS tabla_B872: 3 destinos del despachador de 0xB9B3 (call en p12:B86F):
;   0xB878, 0xB888, 0xB89E; lo leen p12:B86F (6 bytes)
;   0xb872..0xb878  (6 bytes)
DATA_tabla_B872:
	defb 078h,0b8h	; b872
	defb 088h,0b8h	; b874
	defb 09eh,0b8h	; b876

; ======================================================================
; CODIGO 0xb878..0xb8b4  (60 bytes)
; ======================================================================


L_B878:
	ld de,00350h		;b878   ; SHOT1: 350 GOLD y nada mas
	call cobra		;b87b   ; cobra: Cobra DE (BCD) del oro 0xC135-0xC137. Acarreo = no hay bastante; con
	jr c,L_B8A6		;b87e
L_B880:
	ld a,001h		;b880
	ld (0c15dh),a		;b882   ; guarda la linea a la que se salta tras la accion
	jp L_B531		;b885
L_B888:
	ld de,00350h		;b888   ; SHOT2: 350 GOLD...
	call cobra		;b88b   ; cobra: Cobra DE (BCD) del oro 0xC135-0xC137. Acarreo = no hay bastante; con
	jr c,L_B8A6		;b88e
	ld a,(0c141h)		;b890   ; ...y si SHOT2 es el 0x19, queda reparado (0xC14E)
	cp 019h		;b893   ; el objeto 0x19, むせんき?
	jr nz,L_B880		;b895
	ld a,001h		;b897
	ld (0c14eh),a		;b899   ; guarda la radio reparada
	jr L_B880		;b89c
L_B89E:
	ld a,004h		;b89e
	ld (0c14dh),a		;b8a0   ; guarda la linea de la conversacion
	jp L_B531		;b8a3
L_B8A6:
	ld a,003h		;b8a6
	ld (0c14dh),a		;b8a8   ; guarda la linea de la conversacion
	jp L_B531		;b8ab
accion_19_la_mesa:
	jp L_B7DA		;b8ae
accion_1A_salir_de_la_cueva:
	call elige_1_2_o_3		;b8b1   ; elige_1_2_o_3: Detras del `call` van tres palabras: salta a la primera, la segunda o la

; ----------------------------------------------------------------------
; DATOS tabla_B8B4: 3 destinos del despachador de 0xB9B3 (call en p12:B8B1):
;   0xB8BA, 0xB531, 0xB536; lo leen p12:B8B1 (6 bytes)
;   0xb8b4..0xb8ba  (6 bytes)
DATA_tabla_B8B4:
	defb 0bah,0b8h	; b8b4
	defb 031h,0b5h	; b8b6
	defb 036h,0b5h	; b8b8

; ======================================================================
; CODIGO 0xb8ba..0xb974  (186 bytes)
; ======================================================================


L_B8BA:
	ld a,009h		;b8ba   ; a la pantalla 9
	ld (0c125h),a		;b8bc   ; guarda la PANTALLA
	ld a,001h		;b8bf
	ld (0c201h),a		;b8c1   ; guarda el estado de la partida (0 jugando, 1 cambio de pantalla, 3 conversacion, 5 y 6 sucesos, 7 GAME OVER)
	ld (0c14fh),a		;b8c4
	ld hl,03858h		;b8c7
	ld (0c321h),hl		;b8ca   ; guarda el punto de entrada (y, x)
	jp 04050h		;b8cd
accion_1B_da_el_0x0E:
	ld a,00eh		;b8d0   ; el objeto 0x0E, まかぷら
	call 04068h		;b8d2   ; p00:puente_da_un_objeto: p01:79CE: da el objeto A, una unidad (lo usan las conversaciones de p12)
	jp L_B7DA		;b8d5
accion_1C_sin_libro:
	ld a,(0c360h)		;b8d8   ; lee cuantos objetos 0x21 se llevan (BCD; 0xFF sin cuenta)
	and a			;b8db
	jr z,L_B8E6		;b8dc
	ld a,002h		;b8de
	ld (0c14dh),a		;b8e0   ; guarda la linea de la conversacion
	jp L_B531		;b8e3
L_B8E6:
	ld a,003h		;b8e6
	ld (0c15dh),a		;b8e8   ; guarda la linea a la que se salta tras la accion
	jp L_B531		;b8eb
accion_21_espera:
	ld a,(0c106h)		;b8ee   ; lee las teclas nuevas del cuadro (bit 4 SHOT1, bit 5 SHOT2)
	and 010h		;b8f1
	ret z			;b8f3
	ld a,0ffh		;b8f4
	call 040e6h		;b8f6
	jp L_B531		;b8f9
accion_22_el_final:
	call 04212h		;b8fc
	ret nz			;b8ff
	ld a,08bh		;b900
	call 040e6h		;b902
	xor a			;b905
	ld (0c167h),a		;b906
	ld a,007h		;b909
	ld (0c201h),a		;b90b   ; guarda el estado de la partida (0 jugando, 1 cambio de pantalla, 3 conversacion, 5 y 6 sucesos, 7 GAME OVER)
	xor a			;b90e
	ld (0c682h),a		;b90f
	ret			;b912
vida_llena:
	call vida_maxima		;b913   ; vida_maxima: 30 + 16*LEVEL en BCD; 999 como mucho
	ld (0c129h),hl		;b916   ; guarda LIFE, los dos bytes (BCD)
	jp 04062h		;b919
vida_maxima:
	ld a,(0c12eh)		;b91c   ; 30 + 16*LEVEL en BCD; 999 como mucho
	ld h,000h		;b91f
	ld l,a			;b921
	add hl,hl			;b922
	add hl,hl			;b923
	add hl,hl			;b924
	add hl,hl			;b925
	ld a,030h		;b926
	add a,l			;b928
	daa			;b929
	ld l,a			;b92a
	ld a,h			;b92b
	adc a,000h		;b92c
	daa			;b92e
	ld h,a			;b92f
	cp 010h		;b930
	ret c			;b932
	ld hl,00999h		;b933
	ret			;b936
mp_mas_20:
	ld hl,0c12fh		;b937   ; apunta a MP, la magia (BCD, hasta 99)
	ld a,(hl)			;b93a
	add a,020h		;b93b
	daa			;b93d
	jr nc,L_B942		;b93e
	ld a,099h		;b940
L_B942:
	ld (hl),a			;b942
	jp 04062h		;b943
media_vida:
	call vida_maxima		;b946   ; cura la mitad de lo que falta hasta la vida maxima
	ld de,(0c129h)		;b949   ; lee LIFE, los dos bytes (BCD)
	ld a,l			;b94d
	sub e			;b94e
	daa			;b94f
	ld l,a			;b950
	ld a,h			;b951
	sub d			;b952
	daa			;b953
	ld h,a			;b954
	ret c			;b955
	ld a,l			;b956
	call media_en_bcd		;b957
	bit 0,h		;b95a
	jr z,L_B960		;b95c
	add a,005h		;b95e
L_B960:
	ld l,a			;b960
	ld a,h			;b961
	call media_en_bcd		;b962
	ld h,a			;b965
	ld a,l			;b966
	add a,e			;b967
	daa			;b968
	ld l,a			;b969
	ld a,h			;b96a
	add a,d			;b96b
	daa			;b96c
	ld h,a			;b96d
	ld (0c129h),hl		;b96e   ; guarda LIFE, los dos bytes (BCD)
	jp 04062h		;b971

; ----------------------------------------------------------------------
; DATOS codigo_B974: codigo que no llama nadie: si LEVEL (0xC12E) pasa del MP
;   (0xC12F), sube el MP la mitad de la diferencia
;   0xb974..0xb985  (17 bytes)
DATA_codigo_B974:
	defb 021h,02fh,0c1h,03ah,02eh,0c1h,096h,027h,0d8h,0cdh,085h,0b9h,086h,0c3h,062h,040h	; b974  !/.:...'......b@
	defb 0c9h	; b984

; ======================================================================
; CODIGO 0xb985..0xba93  (270 bytes)
; ======================================================================


media_en_bcd:
	srl a		;b985
	bit 3,a		;b987
	ret z			;b989
	res 3,a		;b98a
	add a,005h		;b98c
	ret			;b98e

; ----------------------------------------------------------------------
; Cobra DE (BCD) del oro 0xC135-0xC137. Acarreo = no hay bastante; con
; 0xC137 distinto de 0 (10000 o mas) no se mira.
; ----------------------------------------------------------------------
cobra:
	ld hl,0c137h		;b98f   ; apunta a en el final, cual de los tres (0, 1 o 2; 3 acabado)
	ld a,(hl)			;b992
	and a			;b993
	jr nz,L_B99E		;b994
	dec hl			;b996
	dec hl			;b997
	ld a,(hl)			;b998
	sub e			;b999
	inc hl			;b99a
	ld a,(hl)			;b99b
	sbc a,d			;b99c
	ret c			;b99d
L_B99E:
	ld hl,0c135h		;b99e   ; apunta a GOLD, el oro (tres bytes BCD)
	ld a,(hl)			;b9a1
	sub e			;b9a2
	daa			;b9a3
	ld (hl),a			;b9a4
	inc hl			;b9a5
	ld a,(hl)			;b9a6
	sbc a,d			;b9a7
	daa			;b9a8
	ld (hl),a			;b9a9
	inc hl			;b9aa
	ld a,(hl)			;b9ab
	sbc a,000h		;b9ac
	daa			;b9ae
	ld (hl),a			;b9af
	jp 04062h		;b9b0

; ----------------------------------------------------------------------
; Detras del `call` van tres palabras: salta a la primera, la segunda o la
; tercera segun la tecla 1, 2 o 3 (bits 3, 4 y 5 de 0xC112). Sin tecla,
; vuelve al que llamo al que llamo, y la pregunta sigue en pantalla.
; ----------------------------------------------------------------------
elige_1_2_o_3:
	pop hl			;b9b3
	ld e,000h		;b9b4
	ld a,(0c112h)		;b9b6   ; lee las teclas del teclado (bits 3-5: 1, 2 y 3; bit 2: F5)
	rra			;b9b9
	rra			;b9ba
	rra			;b9bb
	rra			;b9bc
	jr c,L_B9C6		;b9bd
	inc e			;b9bf
	rra			;b9c0
	jr c,L_B9C6		;b9c1
	rra			;b9c3
	ret nc			;b9c4
	inc e			;b9c5
L_B9C6:
	sla e		;b9c6
	ld d,000h		;b9c8
	add hl,de			;b9ca
	ld e,(hl)			;b9cb
	inc hl			;b9cc
	ld d,(hl)			;b9cd
	ex de,hl			;b9ce
	jp (hl)			;b9cf
L_B9D0:
	ld hl,0c201h		;b9d0   ; apunta a el estado de la partida (0 jugando, 1 cambio de pantalla, 3 conversacion, 5 y 6 sucesos, 7 GAME OVER)
	ld a,(hl)			;b9d3
	and a			;b9d4
	ret nz			;b9d5
	ld a,(0c112h)		;b9d6   ; lee las teclas del teclado (bits 3-5: 1, 2 y 3; bit 2: F5)
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
	ld hl,0e000h		;b9f3   ; apunta a el mapa de casillas de la pantalla en RAM (32 por fila)
	ld de,0ca00h		;b9f6
	ld bc,00300h		;b9f9
	ldir		;b9fc
	call 04200h		;b9fe
	call 041e2h		;ba01
	call cuentas_de_las_listas		;ba04
	call junta_las_listas		;ba07
	ld a,(0c307h)		;ba0a
	sub 004h		;ba0d
	ld (0c2f0h),a		;ba0f
	ld hl,00000h		;ba12
	ld (0c291h),hl		;ba15
	ld (0c281h),hl		;ba18
	ld a,001h		;ba1b
	ld (0c290h),a		;ba1d
	ld a,(0c140h)		;ba20   ; lee SHOT1, el arma que se lleva (0 el puno)
	ld c,004h		;ba23
	ld hl,0c2a0h		;ba25
	ld de,0c294h		;ba28
	call pon_si_no_es_cero		;ba2b
	ld a,(0c141h)		;ba2e   ; lee SHOT2, el objeto que se lleva
	ld c,007h		;ba31
	ld hl,0c2c0h		;ba33
	ld de,0c298h		;ba36
	call pon_si_no_es_cero		;ba39
	ld a,(0c142h)		;ba3c   ; lee los zuecos puestos
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
	ld de,0bf6fh		;ba75   ; patrones_de_la_ventana: [VRAM 0xF800] y un RLE de p00:45EF: los patrones de sprite que p12:BA75 sube para la ventana
	call 0418eh		;ba78
	ld hl,0ba93h		;ba7b   ; rotulos_de_la_ventana: [x][y] "SHOT 2", "MITCHEL" y "SPEED" (0xFE entre uno y otro, 0xFF acaba): la ventana de p12:BA20 (p12:BA7B)
	call 04056h		;ba7e
	ld hl,0baaeh		;ba81   ; rotulo_shot1: [x][y] "SHOT 1" 0xFF (p12:BA81 y p12:BC14)
	call 04056h		;ba84
	call iconos_de_shot1		;ba87
	call iconos_de_shot2		;ba8a
	call pinta_los_zuecos		;ba8d
	jp 04086h		;ba90

; ----------------------------------------------------------------------
; DATOS rotulos_de_la_ventana: [x][y] "SHOT 2", "MITCHEL" y "SPEED" (0xFE
;   entre uno y otro, 0xFF acaba): la ventana de p12:BA20 (p12:BA7B)
;   0xba93..0xbaae  (27 bytes)
DATA_rotulos_de_la_ventana:
	defb 060h,05ch,053h,048h,04fh,054h,000h,032h,0feh,060h,0dch,04dh,049h,054h,043h,048h	; ba93  `\SHOT.2.`.MITCH
	defb 045h,04ch,0feh,018h,0e8h,053h,050h,045h,045h,044h,0ffh	; baa3  EL...SPEED.

; ----------------------------------------------------------------------
; DATOS rotulo_shot1: [x][y] "SHOT 1" 0xFF (p12:BA81 y p12:BC14)
;   0xbaae..0xbab7  (9 bytes)
DATA_rotulo_shot1:
	defb 060h,004h,053h,048h,04fh,054h,000h,031h,0ffh	; baae  `.SHOT.1.

; ======================================================================
; CODIGO 0xbab7..0xbd84  (717 bytes)
; ======================================================================


cuentas_de_las_listas:
	ld de,0c2a0h		;bab7
	ld b,00ch		;baba
	call cuenta_de_cada_objeto		;babc
	ld b,015h		;babf
	ld de,0c2c0h		;bac1
cuenta_de_cada_objeto:
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
	djnz cuenta_de_cada_objeto		;bad2
	ret			;bad4
L_BAD5:
	ld (de),a			;bad5
	jr L_BAD1		;bad6
L_BAD8:
	call cursor_de_la_ventana		;bad8
	ld a,(0c112h)		;badb   ; lee las teclas del teclado (bits 3-5: 1, 2 y 3; bit 2: F5)
	and 002h		;bade
	jp nz,L_BBB3		;bae0
	ld a,(0c106h)		;bae3   ; lee las teclas nuevas del cuadro (bit 4 SHOT1, bit 5 SHOT2)
	bit 4,a		;bae6
	jr nz,L_BAF3		;bae8
	call cursor_horizontal		;baea
	call cursor_vertical		;baed
	jp L_BBE4		;baf0
L_BAF3:
	ld a,(0c291h)		;baf3
	cp 00bh		;baf6
	jr z,L_BB40		;baf8
	call elige_en_la_ventana		;bafa
	ld a,(hl)			;bafd
	and a			;bafe
	jr z,L_BB0E		;baff
	inc hl			;bb01
	ld e,(hl)			;bb02
	inc hl			;bb03
	ld a,(hl)			;bb04
	sub 008h		;bb05
	ld d,a			;bb07
	call sitio_del_cursor		;bb08
	rst 20h			;bb0b
	jr z,L_BB38		;bb0c
L_BB0E:
	call elige_en_la_ventana		;bb0e
	ld a,(de)			;bb11
	and a			;bb12
	ret z			;bb13
	ld a,(de)			;bb14
	ld c,a			;bb15
	ld (hl),001h		;bb16
	ex de,hl			;bb18
	call sitio_del_cursor		;bb19
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
	ld hl,0c140h		;bb29   ; apunta a SHOT1, el arma que se lleva (0 el puno)
	ld a,(0c291h)		;bb2c
	cp 004h		;bb2f
	jr c,L_BB36		;bb31
	ld hl,0c141h		;bb33   ; apunta a SHOT2, el objeto que se lleva
L_BB36:
	ld (hl),c			;bb36
	ret			;bb37
L_BB38:
	call elige_en_la_ventana		;bb38
	ld c,000h		;bb3b
	ld (hl),c			;bb3d
	jr L_BB29		;bb3e
L_BB40:
	ld a,(0c292h)		;bb40
	and a			;bb43
	jr z,L_BB5E		;bb44
	dec a			;bb46
	ret nz			;bb47
	ld a,(0c35dh)		;bb48   ; lee cuantos objetos 0x1E se llevan (BCD; 0xFF sin cuenta)
	and a			;bb4b
	ret z			;bb4c
	ld hl,0c29ch		;bb4d
	ld a,(hl)			;bb50
	xor 001h		;bb51
	ld (hl),a			;bb53
	ld (0c142h),a		;bb54   ; guarda los zuecos puestos
	and a			;bb57
	ret z			;bb58
	ld a,025h		;bb59
	jp 040e6h		;bb5b
L_BB5E:
	ld a,(0c12eh)		;bb5e   ; lee LEVEL, el nivel de Mitchel (BCD)
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
pinta_la_casilla_c2f0:
	ld hl,0c2f0h		;bb78
	ld b,001h		;bb7b
	ld de,048f0h		;bb7d
	jp 04092h		;bb80
elige_en_la_ventana:
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
	ld (0c500h),a		;bbb4   ; guarda el decorado que se quita (3 fichas de 32 bytes)
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
	ld (0c201h),a		;bbde   ; guarda el estado de la partida (0 jugando, 1 cambio de pantalla, 3 conversacion, 5 y 6 sucesos, 7 GAME OVER)
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
	call z,ventana_shot1		;bbfe
	pop hl			;bc01
	jr L_BC0D		;bc02
L_BC04:
	inc (hl)			;bc04
	push hl			;bc05
	ld a,(hl)			;bc06
	cp 020h		;bc07
	call z,borra_la_parte_de_arriba		;bc09
	pop hl			;bc0c
L_BC0D:
	ld a,(hl)			;bc0d
	ld b,a			;bc0e
	ld c,017h		;bc0f
	jp 00047h		;bc11   ; BIOS WRTVDP - Writes data in the VDP-register
ventana_shot1:
	ld hl,0baaeh		;bc14   ; rotulo_shot1: [x][y] "SHOT 1" 0xFF (p12:BA81 y p12:BC14)
	call 04056h		;bc17
	ld hl,0c2a0h		;bc1a
	ld bc,00000h		;bc1d
	call pinta_los_iconos_de_la_lista		;bc20
	ld bc,00100h		;bc23
	ld hl,0c2a8h		;bc26
	call pinta_los_iconos_de_la_lista		;bc29
	ld bc,00200h		;bc2c
	ld hl,0c2b0h		;bc2f
	jp pinta_los_iconos_de_la_lista		;bc32
borra_la_parte_de_arriba:
	ld hl,00000h		;bc35
	ld bc,00020h		;bc38
	xor a			;bc3b
	ld d,a			;bc3c
	jp 0407ah		;bc3d
cursor_horizontal:
	ld hl,0c291h		;bc40
	ld a,(0c106h)		;bc43   ; lee las teclas nuevas del cuadro (bit 4 SHOT1, bit 5 SHOT2)
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
cursor_vertical:
	ld hl,0c292h		;bc56
	ld a,(0c106h)		;bc59   ; lee las teclas nuevas del cuadro (bit 4 SHOT1, bit 5 SHOT2)
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
junta_las_listas:
	ld hl,0c2a0h		;bc6e
	ld b,00bh		;bc71
	call junta_una_lista		;bc73
	ld hl,0c2c0h		;bc76
	ld b,014h		;bc79
junta_una_lista:
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
	djnz junta_una_lista		;bc9e
	ret			;bca0
iconos_de_shot1:
	ld hl,0c2a0h		;bca1
	ld a,004h		;bca4
	ld c,000h		;bca6
	jr L_BCB3		;bca8
iconos_de_shot2:
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
	call pinta_los_iconos_de_la_lista		;bcc1
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
pinta_los_iconos_de_la_lista:
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
sitio_del_cursor:
	ld hl,(0c291h)		;bd1e
	jp 040c2h		;bd21
pon_si_no_es_cero:
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
pinta_los_zuecos:
	call pinta_la_casilla_c2f0		;bd63
	ld a,(0c35dh)		;bd66   ; lee cuantos objetos 0x1E se llevan (BCD; 0xFF sin cuenta)
	and a			;bd69
	ret z			;bd6a
	ld a,01eh		;bd6b
	ld de,068e8h		;bd6d
	call 040c8h		;bd70
	ld hl,0bd84h		;bd73   ; rotulo_mizugeta: [x][y] "みずげた" 0xFF: lo que p12:BD73 escribe si se tienen los zuecos (0xC35D)
	call 04056h		;bd76
	ld de,090f0h		;bd79
	ld hl,0c35dh		;bd7c   ; apunta a cuantos objetos 0x1E se llevan (BCD; 0xFF sin cuenta)
	ld b,001h		;bd7f
	jp 04092h		;bd81

; ----------------------------------------------------------------------
; DATOS rotulo_mizugeta: [x][y] "みずげた" 0xFF: lo que p12:BD73 escribe si se
;   tienen los zuecos (0xC35D)
;   0xbd84..0xbd8d  (9 bytes)
DATA_rotulo_mizugeta:
	defb 080h,0e8h,07ah,067h,03ch,063h,03ch,06ah,0ffh	; bd84  ..zg<c<j.

; ======================================================================
; CODIGO 0xbd8d..0xbf6f  (482 bytes)
; ======================================================================


cursor_de_la_ventana:
	ld hl,0f600h		;bd8d
	call 040d4h		;bd90
	call sitio_del_cursor		;bd93
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
	ld a,(0c131h)		;bde2   ; lee el plano de la pantalla (0, el exterior)
	and a			;bde5
	jr nz,L_BDF1		;bde6
	ld a,(0c153h)		;bde8
	ld hl,0c125h		;bdeb   ; apunta a la PANTALLA
	cp (hl)			;bdee
	jr z,L_BE0F		;bdef
L_BDF1:
	xor a			;bdf1
	ld (0c800h),a		;bdf2
	ld a,0e0h		;bdf5
	ld (0e678h),a		;bdf7
	ld (0e67ch),a		;bdfa
	ld a,(0c125h)		;bdfd   ; lee la PANTALLA
	cp 003h		;be00   ; la pantalla 0x03?
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
	ld a,(0c303h)		;be18   ; lee la Y de Mitchel
	ld c,a			;be1b
	sub e			;be1c
	add a,012h		;be1d
	cp 024h		;be1f
	jr nc,L_BE2F		;be21
	ld a,(0c305h)		;be23   ; lee la X de Mitchel
	ld b,a			;be26
	sub d			;be27
	add a,012h		;be28
	cp 024h		;be2a
	call c,pon_c800_delante_de_mitchel		;be2c   ; pon_c800_delante_de_mitchel: la posicion de 0xC800 a 0x10 de Mitchel, hacia donde mira
L_BE2F:
	ld a,001h		;be2f
	ld (0c800h),a		;be31
	ld a,(0c125h)		;be34   ; lee la PANTALLA
	ld (0c153h),a		;be37
	jp L_BF37		;be3a
pon_c800_delante_de_mitchel:
	call 040e0h		;be3d   ; la posicion de 0xC800 a 0x10 de Mitchel, hacia donde mira
	ld a,(0c306h)		;be40   ; lee hacia donde mira Mitchel (0 arriba, 1 abajo, 2 izquierda, 3 derecha)
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
	ld a,(0c300h)		;be7a   ; lee el estado de Mitchel
	dec a			;be7d
	cp 004h		;be7e
	ret nc			;be80
	dec a			;be81
	jr z,L_BEC7		;be82
	dec a			;be84
	jr z,L_BED4		;be85
	dec a			;be87
	jr z,L_BEFB		;be88
	ld a,(0c303h)		;be8a   ; lee la Y de Mitchel
	sub (ix+001h)		;be8d
	cp 010h		;be90
	ret nc			;be92
	ld c,0f0h		;be93
L_BE95:
	ld a,(0c305h)		;be95   ; lee la X de Mitchel
	sub (ix+002h)		;be98
	add a,00ch		;be9b
	cp 018h		;be9d
	ret nc			;be9f
	ld a,(0c303h)		;bea0   ; lee la Y de Mitchel
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
	ld a,(0c303h)		;beb8   ; lee la Y de Mitchel
	ld hl,0c305h		;bebb   ; apunta a la X de Mitchel
	or (hl)			;bebe
	and 007h		;bebf
	ret nz			;bec1
	ld a,00eh		;bec2
	jp 040e6h		;bec4
L_BEC7:
	ld a,(0c303h)		;bec7   ; lee la Y de Mitchel
	sub (ix+001h)		;beca
	add a,010h		;becd
	ret nc			;becf
	ld c,010h		;bed0
	jr L_BE95		;bed2
L_BED4:
	ld a,(0c305h)		;bed4   ; lee la X de Mitchel
	sub (ix+002h)		;bed7
	cp 010h		;beda
	ret nc			;bedc
	ld c,0f0h		;bedd
L_BEDF:
	ld a,(0c303h)		;bedf   ; lee la Y de Mitchel
	sub (ix+001h)		;bee2
	add a,00ch		;bee5
	cp 018h		;bee7
	ret nc			;bee9
	ld a,(0c305h)		;beea   ; lee la X de Mitchel
	add a,c			;beed
	ld (ix+002h),a		;beee
	cp 008h		;bef1
	jr c,L_BF17		;bef3
	cp 0a8h		;bef5
	jr nc,L_BF1D		;bef7
	jr L_BEAF		;bef9
L_BEFB:
	ld a,(0c305h)		;befb   ; lee la X de Mitchel
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
	call dieciseis_bytes		;bf63
	ld a,04ch		;bf66
dieciseis_bytes:
	ld b,010h		;bf68
L_BF6A:
	ld (hl),a			;bf6a
	inc hl			;bf6b
	djnz L_BF6A		;bf6c
	ret			;bf6e

; ----------------------------------------------------------------------
; DATOS patrones_de_la_ventana: [VRAM 0xF800] y un RLE de p00:45EF: los
;   patrones de sprite que p12:BA75 sube para la ventana
;   0xbf6f..0xbf9b  (44 bytes)
DATA_patrones_de_la_ventana:
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
	ld a,(0c125h)		;bfa0   ; lee la PANTALLA
	sub 073h		;bfa3
	cp 005h		;bfa5
	ret nc			;bfa7
	xor a			;bfa8
	ld (0c166h),a		;bfa9
	ld ix,0d000h		;bfac   ; apunta a las fichas de los enemigos (13 de 0x80)
	ld b,00dh		;bfb0
	call 040e0h		;bfb2
L_BFB5:
	ld a,(ix+000h)		;bfb5   ; lee el tipo del enemigo
	cp 040h		;bfb8   ; SHUT ALL (tipo 0x40)?
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
	ld (0c305h),a		;bfed   ; guarda la X de Mitchel
	jp 0420ch		;bff0

; ----------------------------------------------------------------------
; DATOS relleno_p12: 0xFF hasta el final del banco
;   0xbff3..0xc000  (13 bytes)
DATA_relleno_p12:
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bff3  .............
