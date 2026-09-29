; ==========================================================================
; KING KONG 2: YOMIGAERU DENSETSU - Konami (1986) - MSX - MegaROM RC-745 de 128 KB (Konami4) - banco 14 (se ejecuta en 0x8000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x08000


; ----------------------------------------------------------------------
; DATOS pose_7FCA_cola: la pose 8 de Mitchel (0xC160 = 0): RLE de los dos
;   patrones de 16x16 (n con el bit 7 = n bytes tal cual; sin el, repetir el
;   siguiente; 0 acaba) (sigue del banco anterior, 0x7FCA); lo leen p00:5010
;   (7 bytes)
;   0x8000..0x8007  (7 bytes)
DATA_pose_7FCA_cola:
	defb 0e0h,0c0h,020h,0c0h,000h,000h,000h	; 8000

; ----------------------------------------------------------------------
; DATOS pose_8007: la pose 9 de Mitchel (0xC160 = 0): RLE de los dos patrones
;   de 16x16 (n con el bit 7 = n bytes tal cual; sin el, repetir el siguiente;
;   0 acaba); lo leen p00:5010 (63 bytes)
;   0x8007..0x8046  (63 bytes)
DATA_pose_8007:
	defb 082h,000h,001h,003h,003h,09bh,007h,005h,00ah,009h,00fh,00bh,01fh,033h,031h,03ah	; 8007  .............31:
	defb 01ch,0f8h,0fch,0ffh,0fbh,0feh,0bfh,05eh,03ch,008h,004h,0aeh,0f2h,0ach,044h,02ch	; 8017  .......^<.....D,
	defb 03eh,006h,000h,089h,003h,007h,006h,000h,007h,00bh,01ch,00eh,004h,003h,000h,08eh	; 8027  >...............
	defb 020h,0b4h,0f4h,07eh,0bch,0c0h,0f0h,0f8h,054h,02ch,050h,038h,010h,000h,000h	; 8037   ..~....T,P8...

; ----------------------------------------------------------------------
; DATOS pose_8046: la pose 10 de Mitchel (0xC160 = 0): RLE de los dos patrones
;   de 16x16 (n con el bit 7 = n bytes tal cual; sin el, repetir el siguiente;
;   0 acaba); lo leen p00:5010 (64 bytes)
;   0x8046..0x8086  (64 bytes)
DATA_pose_8046:
	defb 081h,001h,003h,003h,09ch,007h,003h,005h,004h,00bh,00bh,00fh,00ah,005h,002h,003h	; 8046  ................
	defb 003h,0fch,0ffh,0fbh,0feh,0bfh,05eh,03ch,010h,0a8h,0c8h,0a8h,0f0h,070h,010h,060h	; 8056  ......^<.....p.`
	defb 0f0h,005h,000h,089h,001h,003h,003h,004h,005h,003h,005h,002h,001h,003h,000h,08fh	; 8066  ................
	defb 020h,0b4h,0f4h,07eh,0bch,0c0h,0e0h,050h,0b0h,0d0h,020h,0c0h,0e0h,0c0h,000h,000h	; 8076   ..~...P.. .....

; ----------------------------------------------------------------------
; DATOS pose_8086: la pose 11 de Mitchel (0xC160 = 0): RLE de los dos patrones
;   de 16x16 (n con el bit 7 = n bytes tal cual; sin el, repetir el siguiente;
;   0 acaba); lo leen p00:5010 (62 bytes)
;   0x8086..0x80c4  (62 bytes)
DATA_pose_8086:
	defb 082h,000h,001h,003h,003h,09bh,007h,004h,009h,00ah,00fh,00fh,007h,00bh,00ch,00fh	; 8086  ................
	defb 006h,0f8h,0feh,0ffh,0fah,0feh,0bfh,05eh,03ch,010h,04ch,0eeh,0feh,07ch,0b0h,0f8h	; 8096  .......^<.L..|..
	defb 07ch,006h,000h,088h,003h,007h,007h,000h,007h,003h,004h,003h,004h,000h,08eh,020h	; 80a6  |..............
	defb 0b4h,0f4h,07eh,0bch,0c0h,0e0h,0b0h,054h,02ch,0c0h,060h,000h,000h,000h	; 80b6  ..~....T,.`...

; ----------------------------------------------------------------------
; DATOS pose_80C4: la pose 12 de Mitchel (0xC160 = 0): RLE de los dos patrones
;   de 16x16 (n con el bit 7 = n bytes tal cual; sin el, repetir el siguiente;
;   0 acaba); lo leen p00:5010 (63 bytes)
;   0x80c4..0x8103  (63 bytes)
DATA_pose_80C4:
	defb 0aeh,037h,07fh,05fh,07fh,05fh,02dh,028h,010h,015h,00fh,015h,011h,02ah,034h,07ch	; 80c4  .7._._-(.....*4|
	defb 078h,0e0h,0f0h,0f0h,0f8h,0f8h,0b0h,028h,014h,054h,0ech,05ch,018h,0a8h,058h,07ch	; 80d4  x......(.T.\..X|
	defb 03ch,008h,030h,020h,008h,028h,012h,01fh,00fh,00ah,005h,00ah,00eh,01ch,018h,006h	; 80e4  <.0 .(..........
	defb 000h,08ch,010h,040h,0f0h,0f8h,0b8h,050h,0a8h,0e0h,070h,030h,000h,000h,000h	; 80f4  ...@...P..p0...

; ----------------------------------------------------------------------
; DATOS pose_8103: la pose 13 de Mitchel (0xC160 = 0): RLE de los dos patrones
;   de 16x16 (n con el bit 7 = n bytes tal cual; sin el, repetir el siguiente;
;   0 acaba); lo leen p00:5010 (65 bytes)
;   0x8103..0x8144  (65 bytes)
DATA_pose_8103:
	defb 0a0h,007h,00fh,01fh,01ah,01fh,017h,02bh,047h,0e0h,0f5h,05fh,025h,053h,065h,0f9h	; 8103  .......+G.._%Se.
	defb 0f8h,0e0h,0f0h,0b0h,0f8h,0f8h,0f0h,0f0h,0c8h,004h,054h,0f4h,0a4h,0ceh,0bfh,0efh	; 8113  ..........T.....
	defb 0c0h,003h,000h,08bh,005h,00dh,00fh,017h,038h,05fh,06ah,025h,01ah,03ch,038h,004h	; 8123  ........8_j%.<8.
	defb 000h,08eh,040h,050h,070h,0e0h,0c0h,030h,0f8h,0b8h,018h,078h,030h,0c0h,0c0h,000h	; 8133  ..@Pp..0...x0...
	defb 000h	; 8143

; ----------------------------------------------------------------------
; DATOS pose_8144: la pose 14 de Mitchel (0xC160 = 0): RLE de los dos patrones
;   de 16x16 (n con el bit 7 = n bytes tal cual; sin el, repetir el siguiente;
;   0 acaba); lo leen p00:5010 (65 bytes)
;   0x8144..0x8185  (65 bytes)
DATA_pose_8144:
	defb 092h,00fh,01fh,07fh,06fh,03fh,07eh,07bh,0fch,0d3h,070h,00fh,00bh,016h,021h,072h	; 8144  ....o?~{..p...!r
	defb 07ch,080h,0c0h,003h,0e0h,09ah,0f0h,060h,090h,030h,0f8h,0e8h,084h,082h,046h,02eh	; 8154  |......`.0....F.
	defb 01ch,000h,000h,002h,016h,017h,03fh,01ch,063h,06fh,00fh,000h,006h,009h,01eh,00ch	; 8164  ......?.co......
	defb 004h,000h,002h,080h,08bh,000h,0c0h,0e0h,0c0h,020h,090h,078h,07ch,038h,010h,000h	; 8174  ......... .x|8..
	defb 000h	; 8184

; ----------------------------------------------------------------------
; DATOS pose_8185: la pose 15 de Mitchel (0xC160 = 0): RLE de los dos patrones
;   de 16x16 (n con el bit 7 = n bytes tal cual; sin el, repetir el siguiente;
;   0 acaba); lo leen p00:5010 (66 bytes)
;   0x8185..0x81c7  (66 bytes)
DATA_pose_8185:
	defb 082h,001h,003h,003h,007h,09bh,00fh,006h,009h,00ch,01fh,017h,029h,051h,062h,074h	; 8185  ............)Qbt
	defb 038h,0f0h,0f8h,0feh,0f6h,0fch,07eh,0deh,03fh,0cbh,00eh,0f0h,0d0h,068h,094h,04eh	; 8195  8.....~.?....h.N
	defb 03eh,003h,000h,002h,001h,08ah,000h,003h,007h,003h,004h,009h,01eh,03eh,01ch,008h	; 81a5  >............>..
	defb 003h,000h,08eh,040h,068h,0e8h,0fch,038h,0c6h,0f6h,0f0h,000h,060h,090h,078h,030h	; 81b5  ...@h..8....`.x0
	defb 000h,000h	; 81c5

; ----------------------------------------------------------------------
; DATOS pose_81C7: la pose 16 de Mitchel (0xC160 = 0): RLE de los dos patrones
;   de 16x16 (n con el bit 7 = n bytes tal cual; sin el, repetir el siguiente;
;   0 acaba); lo leen p00:5010 (50 bytes)
;   0x81c7..0x81f9  (50 bytes)
DATA_pose_81C7:
	defb 005h,000h,089h,007h,01dh,037h,06fh,08fh,0cfh,0ffh,0d7h,063h,007h,000h,08bh,0f0h	; 81c7  .....7o....c....
	defb 088h,0ech,0f6h,0f3h,0fbh,0f3h,0f2h,07ch,068h,030h,006h,000h,087h,002h,018h,030h	; 81d7  .......|h0.....0
	defb 070h,030h,040h,060h,009h,000h,08ah,070h,018h,00ch,00ch,004h,00ch,00ch,030h,030h	; 81e7  p0@`...p......00
	defb 000h,000h	; 81f7

; ----------------------------------------------------------------------
; DATOS arma_81F9: el sprite del arma 1 de SHOT1: RLE como el de las poses; lo
;   leen p00:5010 (70 bytes)
;   0x81f9..0x823f  (70 bytes)
DATA_arma_81F9:
	defb 008h,000h,081h,004h,005h,006h,082h,01fh,00eh,018h,000h,081h,004h,005h,00eh,012h	; 81f9  ................
	defb 000h,082h,001h,003h,00eh,000h,082h,0c0h,0e0h,005h,0c0h,081h,080h,00ah,000h,005h	; 8209  ................
	defb 001h,00bh,000h,005h,0c0h,081h,080h,01dh,000h,085h,002h,07fh,0ffh,003h,002h,01ch	; 8219  ................
	defb 000h,083h,07ch,0fch,07ch,00ch,000h,085h,040h,0feh,0ffh,0c0h,040h,01ch,000h,083h	; 8229  ..|.|...@...@...
	defb 03eh,03fh,03eh,017h,000h,000h	; 8239

; ----------------------------------------------------------------------
; DATOS arma_823F: el sprite del arma 6 de SHOT1: RLE como el de las poses; lo
;   leen p00:5010 (86 bytes)
;   0x823f..0x8295  (86 bytes)
DATA_arma_823F:
	defb 002h,004h,00ch,006h,082h,01fh,00eh,010h,000h,002h,004h,00ch,00eh,012h,000h,082h	; 823f  ................
	defb 001h,003h,00eh,000h,082h,0c0h,0e0h,00ch,0c0h,002h,080h,002h,000h,00ch,001h,004h	; 824f  ................
	defb 000h,00ch,0c0h,002h,080h,006h,000h,082h,03fh,0ffh,00dh,000h,085h,002h,0ffh,0ffh	; 825f  ........?.......
	defb 003h,002h,00ch,000h,083h,03fh,0ffh,03fh,00dh,000h,003h,0fch,00ch,000h,085h,040h	; 826f  .....?.?.......@
	defb 0ffh,0ffh,0c0h,040h,00ch,000h,082h,0fch,0ffh,00eh,000h,003h,03fh,00dh,000h,083h	; 827f  ...@........?...
	defb 0fch,0ffh,0fch,007h,000h,000h	; 828f

; ----------------------------------------------------------------------
; DATOS arma_8295: el sprite del arma 2 de SHOT1: RLE como el de las poses; lo
;   leen p00:5010 (153 bytes)
;   0x8295..0x832e  (153 bytes)
DATA_arma_8295:
	defb 004h,000h,08ch,00eh,015h,02eh,035h,03fh,02fh,02ah,014h,015h,015h,012h,00ah,006h	; 8295  ......5?/*......
	defb 000h,006h,080h,009h,000h,081h,00eh,005h,01fh,085h,00fh,00eh,00eh,00ch,004h,010h	; 82a5  ................
	defb 000h,081h,001h,004h,002h,002h,005h,085h,007h,006h,005h,002h,001h,004h,000h,002h	; 82b5  ................
	defb 040h,002h,0a0h,088h,090h,050h,0f0h,0f0h,0b0h,0d0h,0a0h,0c0h,005h,000h,004h,001h	; 82c5  @....P..........
	defb 005h,003h,081h,001h,005h,000h,002h,080h,002h,0c0h,006h,0e0h,081h,0c0h,009h,000h	; 82d5  ................
	defb 087h,003h,005h,00ah,00fh,00ah,005h,003h,009h,000h,087h,0f0h,0cch,0e3h,0dch,0e1h	; 82e5  ................
	defb 09eh,0e0h,00ah,000h,081h,003h,003h,007h,081h,003h,00bh,000h,085h,0f0h,0fch,0ffh	; 82f5  ................
	defb 0feh,0e0h,00ah,000h,087h,00fh,033h,0c7h,03bh,087h,079h,007h,009h,000h,087h,0c0h	; 8305  ......3.;.y.....
	defb 0a0h,050h,0f0h,050h,0a0h,0c0h,00ah,000h,085h,00fh,03fh,0ffh,07fh,007h,00bh,000h	; 8315  .P.P......?.....
	defb 081h,0c0h,003h,0e0h,081h,0c0h,006h,000h,000h	; 8325  .........

; ----------------------------------------------------------------------
; DATOS arma_832E: el sprite del arma 5 de SHOT1: RLE como el de las poses; lo
;   leen p00:5010 (202 bytes)
;   0x832e..0x83f8  (202 bytes)
DATA_arma_832E:
	defb 005h,000h,08bh,003h,007h,00eh,01ch,018h,030h,03fh,002h,004h,00bh,00ah,004h,000h	; 832e  ........0?......
	defb 08ah,0c0h,0e0h,090h,010h,018h,038h,074h,0e4h,0e8h,090h,008h,000h,08ah,003h,007h	; 833e  ......8t........
	defb 00fh,00fh,01fh,000h,001h,003h,006h,004h,005h,000h,081h,0c0h,003h,0e0h,084h,0d0h	; 834e  ................
	defb 0a8h,058h,010h,003h,000h,08ch,001h,003h,024h,05dh,09fh,0b8h,070h,060h,021h,027h	; 835e  .X......$]..p`!'
	defb 01fh,00ch,004h,000h,002h,040h,088h,080h,000h,0f0h,030h,060h,0e0h,0c0h,080h,007h	; 836e  .....@....0`....
	defb 000h,086h,001h,003h,022h,068h,057h,02fh,003h,01fh,081h,00ch,005h,000h,002h,080h	; 837e  ...."hW/........
	defb 003h,000h,084h,0e0h,0c0h,0c0h,080h,009h,000h,088h,003h,004h,00ch,00eh,006h,007h	; 838e  ................
	defb 003h,001h,006h,000h,08ch,030h,0c8h,0e4h,078h,038h,01ch,012h,01bh,094h,0d3h,0f0h	; 839e  .....0..x8......
	defb 030h,007h,000h,086h,003h,007h,007h,003h,003h,001h,008h,000h,08ah,030h,058h,0a0h	; 83ae  0............0X.
	defb 0d0h,0e0h,0ech,0e6h,0e3h,0e0h,020h,005h,000h,08ch,00ch,013h,027h,01eh,01ch,038h	; 83be  ...... .....'..8
	defb 048h,0d8h,029h,0cbh,00fh,00ch,006h,000h,088h,0c0h,020h,030h,070h,060h,0e0h,0c0h	; 83ce  H.)....... 0p`..
	defb 080h,007h,000h,08ah,00ch,01ah,005h,00bh,007h,037h,067h,0c7h,007h,004h,008h,000h	; 83de  .........7g.....
	defb 086h,0c0h,0e0h,0e0h,0c0h,0c0h,080h,007h,000h,000h	; 83ee  ..........

; ----------------------------------------------------------------------
; DATOS arma_83F8: el sprite del arma 10 de SHOT1: RLE como el de las poses;
;   lo leen p00:5010 (151 bytes)
;   0x83f8..0x848f  (151 bytes)
DATA_arma_83F8:
	defb 005h,000h,087h,001h,003h,006h,00dh,01ah,014h,008h,009h,000h,086h,080h,0c0h,060h	; 83f8  ...............`
	defb 0b0h,048h,030h,00bh,000h,085h,001h,003h,006h,00ch,008h,00bh,000h,084h,080h,0c0h	; 8408  .H0.............
	defb 060h,030h,00bh,000h,086h,00ch,012h,00dh,006h,003h,001h,009h,000h,087h,010h,028h	; 8418  `0.............(
	defb 058h,0b0h,060h,0c0h,080h,00bh,000h,084h,00ch,006h,003h,001h,00bh,000h,085h,010h	; 8428  X.`.............
	defb 030h,060h,0c0h,080h,00bh,000h,086h,001h,003h,006h,006h,003h,001h,008h,000h,08ah	; 8438  0`..............
	defb 040h,0a0h,0a0h,040h,080h,080h,040h,0a0h,0d0h,060h,009h,000h,084h,001h,003h,003h	; 8448  @..@..@..`......
	defb 001h,00ah,000h,088h,040h,0c0h,080h,000h,000h,080h,0c0h,060h,007h,000h,08ah,002h	; 8458  ....@......`....
	defb 005h,005h,002h,001h,001h,002h,005h,00bh,006h,008h,000h,086h,080h,0c0h,060h,060h	; 8468  ..............``
	defb 0c0h,080h,009h,000h,088h,002h,003h,001h,000h,000h,001h,003h,006h,00ah,000h,084h	; 8478  ................
	defb 080h,0c0h,0c0h,080h,006h,000h,000h	; 8488

; ----------------------------------------------------------------------
; DATOS arma_848F: el sprite del arma 11 de SHOT1: RLE como el de las poses;
;   lo leen p00:5010 (97 bytes)
;   0x848f..0x84f0  (97 bytes)
DATA_arma_848F:
	defb 084h,004h,00eh,01fh,015h,008h,004h,084h,00eh,00ah,00ah,00eh,011h,000h,081h,004h	; 848f  ................
	defb 00bh,000h,002h,004h,011h,000h,004h,001h,008h,000h,088h,002h,003h,001h,000h,0c0h	; 849f  ................
	defb 040h,040h,0c0h,008h,080h,084h,0a0h,0e0h,0c0h,080h,011h,000h,002h,080h,00bh,000h	; 84af  @@..............
	defb 081h,080h,006h,000h,085h,030h,060h,0ffh,060h,030h,00ch,000h,083h,00fh,0f9h,00fh	; 84bf  .....0`.`0......
	defb 00eh,000h,081h,040h,00fh,000h,081h,006h,00eh,000h,083h,0f0h,09fh,0f0h,00ch,000h	; 84cf  ...@............
	defb 085h,00ch,006h,0ffh,006h,00ch,00dh,000h,081h,060h,00fh,000h,081h,002h,008h,000h	; 84df  .........`......
	defb 000h	; 84ef

; ----------------------------------------------------------------------
; DATOS arma_84F0: el sprite del arma 8 de SHOT1: RLE como el de las poses; lo
;   leen p00:5010 (155 bytes)
;   0x84f0..0x858b  (155 bytes)
DATA_arma_84F0:
	defb 004h,000h,088h,003h,006h,00dh,00ah,00bh,008h,004h,003h,008h,000h,088h,0c0h,020h	; 84f0  ...............
	defb 090h,050h,010h,090h,020h,0c0h,009h,000h,081h,003h,004h,007h,081h,003h,00ah,000h	; 8500  .P.. ...........
	defb 081h,0c0h,004h,0e0h,081h,0c0h,009h,000h,088h,003h,004h,009h,009h,00ah,008h,004h	; 8510  ................
	defb 003h,008h,000h,088h,0c0h,060h,0b0h,050h,050h,090h,020h,0c0h,009h,000h,081h,003h	; 8520  .....`.PP. .....
	defb 004h,007h,081h,003h,00ah,000h,081h,0c0h,004h,0e0h,081h,0c0h,009h,000h,088h,003h	; 8530  ................
	defb 004h,009h,008h,00ah,009h,004h,003h,008h,000h,088h,0c0h,020h,010h,0d0h,050h,0b0h	; 8540  ........... ..P.
	defb 060h,0c0h,009h,000h,081h,003h,004h,007h,081h,003h,00ah,000h,081h,0c0h,004h,0e0h	; 8550  `...............
	defb 081h,0c0h,009h,000h,088h,003h,004h,009h,00ah,00ah,00dh,006h,003h,008h,000h,088h	; 8560  ................
	defb 0c0h,020h,010h,050h,090h,090h,020h,0c0h,009h,000h,081h,003h,004h,007h,081h,003h	; 8570  . .P.. .........
	defb 00ah,000h,081h,0c0h,004h,0e0h,081h,0c0h,005h,000h,000h	; 8580  ...........

; ----------------------------------------------------------------------
; DATOS arma_858B: el sprite del arma 9 de SHOT1: RLE como el de las poses; lo
;   leen p00:5010 (211 bytes)
;   0x858b..0x865e  (211 bytes)
DATA_arma_858B:
	defb 004h,000h,087h,001h,004h,001h,00bh,007h,007h,002h,007h,000h,089h,010h,000h,040h	; 858b  ...............@
	defb 040h,080h,0e0h,0a0h,0c0h,080h,005h,000h,08ch,002h,001h,007h,02bh,027h,00fh,01fh	; 859b  @...........+'..
	defb 03fh,01fh,01fh,00fh,007h,005h,000h,08bh,080h,070h,0c0h,0e8h,0f0h,0f0h,0f8h,0f0h	; 85ab  ?........p......
	defb 0e8h,0f0h,0e0h,004h,000h,083h,004h,000h,008h,003h,000h,085h,002h,003h,001h,002h	; 85bb  ................
	defb 001h,00ah,000h,085h,0a0h,0c0h,0f0h,0e0h,0c0h,006h,000h,085h,004h,001h,00ch,003h	; 85cb  ................
	defb 007h,004h,00fh,083h,01fh,00fh,003h,004h,000h,086h,040h,000h,0a0h,0d0h,0e0h,0f0h	; 85db  ..........@.....
	defb 004h,0f8h,082h,0f0h,0e0h,004h,000h,08ah,004h,000h,008h,001h,003h,003h,005h,007h	; 85eb  ................
	defb 003h,001h,008h,000h,089h,080h,000h,0c0h,0e0h,0a0h,0d0h,0f0h,040h,080h,005h,000h	; 85fb  ............@...
	defb 085h,004h,001h,00fh,003h,007h,004h,00fh,002h,007h,081h,003h,004h,000h,086h,0c0h	; 860b  ................
	defb 080h,0e8h,0d0h,0e0h,0f0h,004h,0f8h,082h,0f0h,0e0h,006h,000h,089h,008h,000h,002h	; 861b  ................
	defb 003h,003h,007h,005h,003h,001h,006h,000h,08ah,010h,000h,020h,080h,0a0h,0e0h,0d0h	; 862b  ........... ....
	defb 0f0h,0e0h,040h,006h,000h,08bh,001h,00eh,003h,017h,00fh,00fh,01fh,00fh,017h,00fh	; 863b  ..@.............
	defb 007h,004h,000h,08ch,040h,090h,0e0h,0f4h,0e4h,0f0h,0f8h,0fch,0f8h,0f8h,0f0h,0e0h	; 864b  ....@...........
	defb 004h,000h,000h	; 865b

; ----------------------------------------------------------------------
; DATOS arma_865E: el sprite del arma 4 de SHOT1: RLE como el de las poses; lo
;   leen p00:5010 (127 bytes)
;   0x865e..0x86dd  (127 bytes)
DATA_arma_865E:
	defb 003h,004h,002h,00eh,006h,00ah,085h,04ah,03bh,01fh,011h,00eh,00bh,000h,082h,040h	; 865e  .......J;......@
	defb 080h,003h,000h,003h,004h,002h,00ah,008h,00eh,082h,000h,00eh,011h,000h,085h,001h	; 866e  ................
	defb 002h,003h,007h,009h,008h,001h,003h,000h,085h,0c0h,020h,0e0h,070h,048h,006h,040h	; 867e  .......... .pH.@
	defb 002h,0c0h,003h,080h,083h,000h,001h,000h,00ah,001h,004h,000h,082h,0c0h,000h,008h	; 868e  ................
	defb 0c0h,002h,040h,003h,080h,006h,000h,083h,01fh,0f8h,01fh,00ah,000h,089h,010h,008h	; 869e  ..@.............
	defb 00eh,0fdh,005h,0fdh,00eh,008h,010h,00ah,000h,083h,01fh,0e7h,01fh,00dh,000h,003h	; 86ae  ................
	defb 0fah,00bh,000h,088h,008h,070h,0bfh,0a0h,0bfh,070h,010h,008h,00ah,000h,083h,0f8h	; 86be  .....p...p......
	defb 01fh,0f8h,00dh,000h,003h,05fh,00dh,000h,083h,0f8h,0e7h,0f8h,007h,000h,000h	; 86ce  ....._.........

; ----------------------------------------------------------------------
; DATOS arma_86DD: el sprite del arma 7 de SHOT1: RLE como el de las poses; lo
;   leen p00:5010 (158 bytes)
;   0x86dd..0x877b  (158 bytes)
DATA_arma_86DD:
	defb 004h,000h,084h,078h,02eh,017h,00bh,004h,009h,084h,011h,013h,00fh,007h,007h,000h	; 86dd  ...x............
	defb 081h,080h,005h,0c0h,002h,080h,006h,000h,082h,018h,00eh,005h,007h,002h,00fh,081h	; 86ed  ................
	defb 007h,009h,000h,005h,080h,003h,000h,083h,001h,003h,003h,005h,007h,082h,003h,001h	; 86fd  ................
	defb 006h,000h,084h,0c0h,0e0h,090h,010h,004h,020h,084h,0a0h,0d0h,0e8h,03ch,005h,000h	; 870d  ........ ....<..
	defb 002h,001h,005h,003h,081h,001h,008h,000h,083h,0c0h,0e0h,0e0h,005h,0c0h,082h,0e0h	; 871d  ................
	defb 030h,00ah,000h,088h,001h,003h,007h,006h,00dh,00ah,00ch,008h,007h,000h,087h,0f8h	; 872d  0...............
	defb 0feh,0ffh,007h,003h,0f2h,00ch,00bh,000h,085h,001h,003h,003h,006h,004h,00ah,000h	; 873d  ................
	defb 081h,0f8h,003h,0feh,081h,00ch,00bh,000h,087h,030h,04fh,0c0h,0e0h,0ffh,07fh,01fh	; 874d  .........0O.....
	defb 007h,000h,088h,010h,030h,050h,0b0h,060h,0e0h,0c0h,080h,00bh,000h,081h,030h,003h	; 875d  ....0P.`......0.
	defb 07fh,081h,01fh,00ah,000h,085h,020h,060h,0c0h,0c0h,080h,006h,000h,000h	; 876d  ...... `......

; ----------------------------------------------------------------------
; DATOS arma_877B: el sprite del arma 3 de SHOT1: RLE como el de las poses; lo
;   leen p00:5010 (137 bytes)
;   0x877b..0x8804  (137 bytes)
DATA_arma_877B:
	defb 08ah,006h,009h,010h,012h,016h,014h,012h,014h,011h,01dh,003h,009h,002h,00ah,083h	; 877b  ................
	defb 00eh,000h,000h,006h,080h,009h,000h,081h,006h,006h,00fh,081h,00eh,004h,006h,002h	; 878b  ................
	defb 004h,011h,000h,006h,001h,081h,003h,007h,002h,085h,001h,000h,0c0h,040h,040h,003h	; 879b  .............@@.
	defb 020h,08ah,0a0h,020h,090h,050h,090h,0d0h,050h,010h,020h,0c0h,007h,000h,007h,001h	; 87ab   .. .P..P. .....
	defb 003h,000h,002h,080h,005h,0c0h,006h,0e0h,081h,0c0h,006h,000h,086h,03fh,040h,08dh	; 87bb  .............?@.
	defb 09ah,040h,03fh,00ah,000h,085h,0c0h,07fh,041h,007h,0f8h,00ch,000h,084h,03fh,07fh	; 87cb  .@?.....A.....?.
	defb 07fh,03fh,00ch,000h,083h,080h,0feh,0f8h,00ch,000h,085h,003h,0feh,082h,0e0h,01fh	; 87db  .?..............
	defb 00bh,000h,086h,0fch,002h,0b1h,059h,002h,0fch,00bh,000h,083h,001h,07fh,01fh,00dh	; 87eb  ......Y.........
	defb 000h,084h,0fch,0feh,0feh,0fch,006h,000h,000h	; 87fb  .........

; ----------------------------------------------------------------------
; DATOS sprite_8804: RLE como el de las poses que p00:50EA sube a 0xF840; lo
;   leen p00:50F3 (235 bytes)
;   0x8804..0x88ef  (235 bytes)
DATA_sprite_8804:
	defb 003h,000h,08bh,00fh,030h,040h,007h,018h,020h,043h,00ch,010h,001h,002h,005h,000h	; 8804  ....0@.. C......
	defb 08bh,0f0h,00ch,002h,0e1h,018h,004h,0c2h,030h,008h,080h,040h,004h,000h,08ch,00fh	; 8814  ........0..@....
	defb 03fh,070h,0c7h,01fh,038h,063h,04fh,01ch,011h,003h,002h,004h,000h,08ch,0f0h,0fch	; 8824  ?p..8cO.........
	defb 00eh,0e3h,0f9h,01ch,0c6h,0f2h,038h,088h,0c0h,040h,004h,000h,08bh,002h,001h,010h	; 8834  ......8..@......
	defb 00ch,043h,020h,018h,087h,040h,030h,00fh,005h,000h,08bh,040h,080h,008h,030h,0c2h	; 8844  .C ..@0....@..0.
	defb 004h,018h,0e0h,002h,00ch,0f0h,005h,000h,08ch,002h,003h,011h,01ch,04fh,063h,038h	; 8854  .............Oc8
	defb 09fh,0c7h,070h,03fh,00fh,004h,000h,093h,040h,0c0h,088h,038h,0f2h,0c6h,01ch,0f8h	; 8864  ..p?....@..8....
	defb 0e3h,00eh,0fch,0f0h,000h,000h,002h,004h,008h,009h,011h,006h,012h,09ah,011h,009h	; 8874  ................
	defb 008h,004h,000h,000h,040h,080h,010h,020h,020h,044h,048h,048h,044h,020h,020h,010h	; 8884  ....@..  DHHD  .
	defb 080h,040h,000h,006h,00ch,019h,01bh,033h,006h,036h,0aah,033h,01bh,019h,00ch,004h	; 8894  .@.....3.6.3....
	defb 000h,0c0h,080h,030h,060h,060h,0cch,0d8h,0d8h,0cch,060h,060h,030h,080h,0c0h,000h	; 88a4  ...0``....``0...
	defb 000h,002h,001h,008h,004h,004h,022h,012h,012h,022h,004h,004h,008h,001h,002h,000h	; 88b4  ......".."......
	defb 000h,020h,010h,090h,088h,006h,048h,09ah,088h,090h,010h,020h,040h,000h,003h,001h	; 88c4  . ....H.... @...
	defb 00ch,006h,006h,033h,01bh,01bh,033h,006h,006h,00ch,001h,003h,000h,020h,030h,098h	; 88d4  ...3..3...... 0.
	defb 0d8h,0cch,006h,06ch,085h,0cch,0d8h,098h,030h,060h,000h	; 88e4  ...l....0`.

; ----------------------------------------------------------------------
; DATOS pose_88EF: la pose 0 de Mitchel (0xC160 distinto de 0): RLE de los dos
;   patrones de 16x16 (n con el bit 7 = n bytes tal cual; sin el, repetir el
;   siguiente; 0 acaba); lo leen p00:5010 (62 bytes)
;   0x88ef..0x892d  (62 bytes)
DATA_pose_88EF:
	defb 09eh,007h,00fh,00fh,01fh,01fh,00dh,014h,02ch,07dh,07fh,075h,022h,008h,021h,000h	; 88ef  ........,}.u".!.
	defb 000h,0e0h,0f0h,0f0h,0e8h,0f8h,090h,018h,008h,048h,0f0h,052h,008h,024h,040h,006h	; 88ff  .........H.R.$@.
	defb 000h,08bh,008h,002h,00fh,01bh,002h,035h,022h,009h,00ch,031h,002h,004h,000h,002h	; 890f  .......5"..1....
	defb 010h,08bh,060h,0f0h,0f0h,0b0h,040h,0aah,0e8h,0a4h,048h,000h,000h,000h	; 891f  ..`...@...H...

; ----------------------------------------------------------------------
; DATOS pose_892D: la pose 1 de Mitchel (0xC160 distinto de 0): RLE de los dos
;   patrones de 16x16 (n con el bit 7 = n bytes tal cual; sin el, repetir el
;   siguiente; 0 acaba); lo leen p00:5010 (65 bytes)
;   0x892d..0x896e  (65 bytes)
DATA_pose_892D:
	defb 0a0h,007h,00fh,00fh,01fh,01fh,00bh,00bh,018h,028h,032h,037h,07ah,010h,014h,000h	; 892d  .........(27z...
	defb 008h,0e0h,0f0h,0f0h,0e8h,0f8h,0d0h,0d8h,00ch,014h,0aeh,0feh,03ch,088h,000h,008h	; 893d  ............<...
	defb 0a0h,004h,000h,08ch,008h,004h,005h,00fh,017h,01dh,00ah,055h,003h,015h,022h,008h	; 894d  ...........U..".
	defb 003h,000h,002h,010h,08bh,020h,070h,0f8h,0e8h,054h,0ach,0c8h,060h,012h,048h,0a0h	; 895d  ..... p..T..`.H.
	defb 000h	; 896d

; ----------------------------------------------------------------------
; DATOS pose_896E: la pose 2 de Mitchel (0xC160 distinto de 0): RLE de los dos
;   patrones de 16x16 (n con el bit 7 = n bytes tal cual; sin el, repetir el
;   siguiente; 0 acaba); lo leen p00:5010 (61 bytes)
;   0x896e..0x89ab  (61 bytes)
DATA_pose_896E:
	defb 09eh,007h,00fh,00fh,017h,01fh,009h,018h,010h,012h,00fh,00ah,010h,044h,002h,000h	; 896e  .............D..
	defb 000h,0e0h,0f0h,0f0h,0f8h,0f8h,0b0h,028h,034h,0beh,0feh,0aeh,044h,010h,084h,005h	; 897e  .......(4...D...
	defb 000h,002h,008h,089h,006h,00fh,00fh,00dh,002h,015h,017h,045h,012h,006h,000h,08ch	; 898e  ...........E....
	defb 010h,040h,0f0h,0d8h,040h,0ach,044h,090h,030h,08ch,040h,000h,000h	; 899e  .@..@.D.0.@..

; ----------------------------------------------------------------------
; DATOS pose_89AB: la pose 3 de Mitchel (0xC160 distinto de 0): RLE de los dos
;   patrones de 16x16 (n con el bit 7 = n bytes tal cual; sin el, repetir el
;   siguiente; 0 acaba); lo leen p00:5010 (64 bytes)
;   0x89ab..0x89eb  (64 bytes)
DATA_pose_89AB:
	defb 09fh,007h,00fh,00fh,01eh,01fh,00fh,01fh,03bh,03eh,05fh,02ah,011h,004h,012h,000h	; 89ab  ........;>_*....
	defb 000h,0e0h,0f0h,0f0h,0f8h,0f8h,0d8h,0a4h,0c4h,0aeh,0fch,0b9h,008h,044h,000h,010h	; 89bb  .............D..
	defb 004h,000h,08ch,001h,00dh,007h,00bh,004h,019h,03ah,015h,002h,044h,012h,004h,004h	; 89cb  .........:..D...
	defb 000h,08dh,050h,070h,0e0h,0d8h,038h,054h,0a8h,041h,0c8h,054h,080h,010h,000h,000h	; 89db  ..Pp..8T.A.T....

; ----------------------------------------------------------------------
; DATOS pose_89EB: la pose 4 de Mitchel (0xC160 distinto de 0): RLE de los dos
;   patrones de 16x16 (n con el bit 7 = n bytes tal cual; sin el, repetir el
;   siguiente; 0 acaba); lo leen p00:5010 (65 bytes)
;   0x89eb..0x8a2c  (65 bytes)
DATA_pose_89EB:
	defb 09fh,007h,00fh,00fh,01ah,01fh,00fh,00fh,01bh,030h,026h,077h,07ah,038h,014h,000h	; 89eb  .........0&wz8..
	defb 000h,0e0h,0f0h,0f0h,0f8h,0f8h,0d0h,0b8h,0cch,004h,0aeh,0feh,0bch,082h,010h,080h	; 89fb  ................
	defb 004h,000h,08dh,005h,00dh,007h,003h,00ch,01fh,019h,02ah,035h,015h,006h,000h,008h	; 8a0b  ..........*5....
	defb 003h,000h,08dh,050h,070h,0e0h,0d0h,038h,0f8h,054h,0ach,048h,06ah,012h,0a0h,010h	; 8a1b  ...Pp..8.T.Hj...
	defb 000h	; 8a2b

; ----------------------------------------------------------------------
; DATOS pose_8A2C: la pose 5 de Mitchel (0xC160 distinto de 0): RLE de los dos
;   patrones de 16x16 (n con el bit 7 = n bytes tal cual; sin el, repetir el
;   siguiente; 0 acaba); lo leen p00:5010 (63 bytes)
;   0x8a2c..0x8a6b  (63 bytes)
DATA_pose_8A2C:
	defb 09eh,007h,00fh,00fh,01eh,01fh,01fh,027h,023h,075h,03fh,05dh,010h,022h,000h,008h	; 8a2c  .......'#u?]."..
	defb 000h,0e0h,0f0h,0f0h,0f8h,0f8h,0d0h,0b8h,0dch,07ch,0fah,054h,088h,020h,048h,005h	; 8a3c  .........|.T. H.
	defb 000h,08ch,001h,00dh,007h,01bh,01ch,02ah,015h,042h,013h,02ah,001h,008h,004h,000h	; 8a4c  .......*.B.*....
	defb 08dh,050h,070h,0e0h,0d0h,020h,098h,05ch,0a8h,040h,022h,048h,020h,000h,000h	; 8a5c  .Pp.. .\.@"H ..

; ----------------------------------------------------------------------
; DATOS pose_8A6B: la pose 6 de Mitchel (0xC160 distinto de 0): RLE de los dos
;   patrones de 16x16 (n con el bit 7 = n bytes tal cual; sin el, repetir el
;   siguiente; 0 acaba); lo leen p00:5010 (63 bytes)
;   0x8a6b..0x8aaa  (63 bytes)
DATA_pose_8A6B:
	defb 092h,01fh,03fh,0ffh,0dfh,07fh,0fdh,07ah,03ch,010h,020h,075h,04fh,034h,050h,000h	; 8a6b  ..?....z<. uO4P.
	defb 008h,000h,080h,003h,0c0h,08ah,0e0h,0a0h,050h,090h,0f0h,0d0h,0e0h,0d0h,004h,080h	; 8a7b  ........P.......
	defb 003h,000h,08eh,004h,02dh,02fh,07eh,03dh,003h,00fh,01fh,02ah,034h,083h,052h,024h	; 8a8b  ....-/~=...*4.R$
	defb 008h,006h,000h,08ah,0c0h,0e0h,060h,000h,0e4h,0c0h,018h,024h,080h,010h,000h	; 8a9b  ......`....$...

; ----------------------------------------------------------------------
; DATOS pose_8AAA: la pose 7 de Mitchel (0xC160 distinto de 0): RLE de los dos
;   patrones de 16x16 (n con el bit 7 = n bytes tal cual; sin el, repetir el
;   siguiente; 0 acaba); lo leen p00:5010 (64 bytes)
;   0x8aaa..0x8aea  (64 bytes)
DATA_pose_8AAA:
	defb 091h,03fh,0ffh,0dfh,07fh,0fdh,07ah,03ch,008h,015h,013h,015h,08fh,000h,024h,000h	; 8aaa  .?....z<......$.
	defb 000h,080h,003h,0c0h,09ch,0e0h,0c0h,0a0h,020h,0d0h,0d0h,0f0h,040h,004h,040h,000h	; 8aba  ........ ...@.@.
	defb 010h,000h,004h,02dh,02fh,07eh,03dh,003h,007h,00ah,00dh,00bh,0a4h,001h,026h,000h	; 8aca  ...-/~=.......&.
	defb 008h,005h,000h,08bh,080h,0c0h,0c0h,020h,0a0h,0c0h,0a4h,014h,040h,000h,010h,000h	; 8ada  ....... ....@...

; ----------------------------------------------------------------------
; DATOS pose_8AEA: la pose 8 de Mitchel (0xC160 distinto de 0): RLE de los dos
;   patrones de 16x16 (n con el bit 7 = n bytes tal cual; sin el, repetir el
;   siguiente; 0 acaba); lo leen p00:5010 (62 bytes)
;   0x8aea..0x8b28  (62 bytes)
DATA_pose_8AEA:
	defb 092h,01fh,07fh,0ffh,05fh,07fh,0fdh,07ah,03ch,008h,032h,075h,07fh,036h,088h,001h	; 8aea  ...._..z<.2u.6..
	defb 000h,000h,080h,003h,0c0h,08ah,0e0h,020h,090h,050h,0f0h,0f0h,0e4h,0c1h,020h,002h	; 8afa  ....... .P.... .
	defb 003h,000h,08dh,004h,02dh,02fh,07eh,03dh,003h,007h,00dh,02ah,034h,003h,088h,011h	; 8b0a  ....-/~=...*4...
	defb 007h,000h,08ah,0c0h,0e0h,0e0h,000h,0e0h,0c4h,011h,020h,042h,000h,000h	; 8b1a  .......... B..

; ----------------------------------------------------------------------
; DATOS pose_8B28: la pose 9 de Mitchel (0xC160 distinto de 0): RLE de los dos
;   patrones de 16x16 (n con el bit 7 = n bytes tal cual; sin el, repetir el
;   siguiente; 0 acaba); lo leen p00:5010 (63 bytes)
;   0x8b28..0x8b67  (63 bytes)
DATA_pose_8B28:
	defb 082h,000h,001h,003h,003h,09bh,007h,005h,00ah,009h,00fh,00bh,007h,00bh,020h,001h	; 8b28  .............. .
	defb 000h,0f8h,0fch,0ffh,0fbh,0feh,0bfh,05eh,03ch,008h,004h,0aeh,0f2h,02ch,00ah,000h	; 8b38  .......^<....,..
	defb 010h,006h,000h,09ah,003h,007h,006h,000h,027h,003h,018h,024h,001h,008h,000h,000h	; 8b48  ........'..$....
	defb 020h,0b4h,0f4h,07eh,0bch,0c0h,0f0h,0f8h,054h,02ch,0c1h,04ah,024h,010h,000h	; 8b58   ..~....T,.J$..

; ----------------------------------------------------------------------
; DATOS pose_8B67: la pose 10 de Mitchel (0xC160 distinto de 0): RLE de los
;   dos patrones de 16x16 (n con el bit 7 = n bytes tal cual; sin el, repetir
;   el siguiente; 0 acaba); lo leen p00:5010 (62 bytes)
;   0x8b67..0x8ba5  (62 bytes)
DATA_pose_8B67:
	defb 081h,001h,003h,003h,09ah,007h,003h,005h,004h,00bh,00bh,00fh,002h,020h,002h,000h	; 8b67  ............. ..
	defb 008h,0fch,0ffh,0fbh,0feh,0bfh,05eh,03ch,010h,0a8h,0c8h,0a8h,0f1h,000h,024h,007h	; 8b77  ......^<......$.
	defb 000h,09bh,001h,003h,003h,004h,005h,003h,025h,028h,002h,000h,008h,000h,020h,0b4h	; 8b87  ........%(.... .
	defb 0f4h,07eh,0bch,0c0h,0e0h,050h,0b0h,0d0h,025h,080h,064h,000h,010h,000h	; 8b97  .~...P..%.d...

; ----------------------------------------------------------------------
; DATOS pose_8BA5: la pose 11 de Mitchel (0xC160 distinto de 0): RLE de los
;   dos patrones de 16x16 (n con el bit 7 = n bytes tal cual; sin el, repetir
;   el siguiente; 0 acaba); lo leen p00:5010 (62 bytes)
;   0x8ba5..0x8be3  (62 bytes)
DATA_pose_8BA5:
	defb 082h,000h,001h,003h,003h,09ah,007h,004h,009h,00ah,00fh,00fh,027h,083h,004h,040h	; 8ba5  ............'..@
	defb 000h,0f8h,0feh,0ffh,0fah,0feh,0bfh,05eh,03ch,010h,04ch,0aeh,0feh,06ch,011h,080h	; 8bb5  .......^<.L..l..
	defb 007h,000h,089h,003h,007h,007h,000h,007h,023h,088h,004h,042h,003h,000h,08eh,020h	; 8bc5  ........#..B...
	defb 0b4h,0f4h,07eh,0bch,0c0h,0e0h,0b0h,054h,02ch,0c0h,011h,088h,000h,000h	; 8bd5  ..~....T,.....

; ----------------------------------------------------------------------
; DATOS pose_8BE3: la pose 12 de Mitchel (0xC160 distinto de 0): RLE de los
;   dos patrones de 16x16 (n con el bit 7 = n bytes tal cual; sin el, repetir
;   el siguiente; 0 acaba); lo leen p00:5010 (64 bytes)
;   0x8be3..0x8c23  (64 bytes)
DATA_pose_8BE3:
	defb 0afh,037h,07fh,05fh,07fh,05fh,02dh,028h,010h,015h,00fh,015h,045h,011h,000h,009h	; 8be3  .7._._-(....E...
	defb 000h,0e0h,0f0h,0f0h,0f8h,0f8h,0b0h,028h,014h,054h,0ech,05ch,028h,080h,0a8h,000h	; 8bf3  .......(.T.\(...
	defb 000h,008h,030h,020h,008h,028h,012h,01fh,00fh,00ah,005h,00ah,046h,019h,002h,009h	; 8c03  ..0 .(......F...
	defb 005h,000h,08ch,010h,040h,0f0h,0f8h,0b8h,050h,0a8h,0e1h,090h,0a8h,000h,020h,000h	; 8c13  ....@...P..... .

; ----------------------------------------------------------------------
; DATOS pose_8C23: la pose 13 de Mitchel (0xC160 distinto de 0): RLE de los
;   dos patrones de 16x16 (n con el bit 7 = n bytes tal cual; sin el, repetir
;   el siguiente; 0 acaba); lo leen p00:5010 (66 bytes)
;   0x8c23..0x8c65  (66 bytes)
DATA_pose_8C23:
	defb 0a0h,007h,00fh,01fh,01ah,01fh,017h,02bh,047h,0e0h,0f5h,05fh,025h,012h,001h,049h	; 8c23  .......+G.._%..I
	defb 002h,0e0h,0f0h,0b0h,0f8h,0f8h,0f0h,0f0h,0c8h,004h,054h,0f4h,0a4h,0cah,0b0h,0e0h	; 8c33  ..........T.....
	defb 0c0h,003h,000h,09dh,005h,00dh,00fh,017h,038h,05fh,06ah,025h,002h,0b3h,000h,048h	; 8c43  ........8_j%...H
	defb 002h,000h,000h,040h,050h,070h,0e0h,0c0h,030h,0f8h,0b8h,01ah,079h,032h,0c4h,0c0h	; 8c53  ...@Pp..0...y2..
	defb 000h,000h	; 8c63

; ----------------------------------------------------------------------
; DATOS pose_8C65: la pose 14 de Mitchel (0xC160 distinto de 0): RLE de los
;   dos patrones de 16x16 (n con el bit 7 = n bytes tal cual; sin el, repetir
;   el siguiente; 0 acaba); lo leen p00:5010 (66 bytes)
;   0x8c65..0x8ca7  (66 bytes)
DATA_pose_8C65:
	defb 092h,00fh,01fh,07fh,06fh,03fh,07eh,07bh,0fch,0d3h,070h,00fh,00bh,040h,009h,040h	; 8c65  ....o?~{..p..@.@
	defb 000h,080h,0c0h,003h,0e0h,08ah,0f0h,060h,090h,030h,0f8h,0e8h,084h,020h,002h,020h	; 8c75  .......`.0... .
	defb 003h,000h,08eh,002h,016h,017h,03fh,01ch,063h,06fh,00fh,000h,016h,0c6h,029h,040h	; 8c85  ......?.co....)@
	defb 001h,003h,000h,002h,080h,08bh,000h,0c0h,0e0h,0c0h,020h,090h,074h,020h,04ah,020h	; 8c95  .......... .t J
	defb 000h,000h	; 8ca5

; ----------------------------------------------------------------------
; DATOS pose_8CA7: la pose 15 de Mitchel (0xC160 distinto de 0): RLE de los
;   dos patrones de 16x16 (n con el bit 7 = n bytes tal cual; sin el, repetir
;   el siguiente; 0 acaba); lo leen p00:5010 (65 bytes)
;   0x8ca7..0x8ce8  (65 bytes)
DATA_pose_8CA7:
	defb 082h,001h,003h,003h,007h,09ah,00fh,006h,009h,00ch,01fh,017h,021h,004h,040h,004h	; 8ca7  ............!.@.
	defb 000h,0f0h,0f8h,0feh,0f6h,0fch,07eh,0deh,03fh,0cbh,00eh,0f0h,0d0h,002h,090h,002h	; 8cb7  ......~.?.......
	defb 004h,000h,002h,001h,08ah,000h,003h,007h,003h,004h,009h,02eh,004h,052h,004h,003h	; 8cc7  .............R..
	defb 000h,08eh,040h,068h,0e8h,0fch,038h,0c6h,0f6h,0f0h,000h,068h,063h,094h,002h,080h	; 8cd7  ..@h..8....hc...
	defb 000h	; 8ce7

; ----------------------------------------------------------------------
; DATOS pose_8CE8: la pose 16 de Mitchel (0xC160 distinto de 0): RLE de los
;   dos patrones de 16x16 (n con el bit 7 = n bytes tal cual; sin el, repetir
;   el siguiente; 0 acaba); lo leen p00:5010 (55 bytes)
;   0x8ce8..0x8d1f  (55 bytes)
DATA_pose_8CE8:
	defb 005h,000h,08bh,007h,01dh,037h,06fh,08fh,0cfh,0ffh,0d7h,06bh,080h,001h,005h,000h	; 8ce8  .....7o....k....
	defb 08bh,0f0h,088h,0ech,0f6h,0f3h,0fbh,0f3h,0f2h,07dh,068h,030h,006h,000h,08ah,002h	; 8cf8  .........}h0....
	defb 018h,030h,070h,030h,040h,060h,008h,0a4h,001h,006h,000h,08ah,070h,018h,00ch,00ch	; 8d08  .0p0@`......p...
	defb 004h,00ch,00ch,033h,030h,004h,000h	; 8d18

; ----------------------------------------------------------------------
; DATOS figura_8D1F: figura a pelo de la pantalla 0x57: [bandera de espejo][40
;   filas][24 bytes][VRAM 0xD468] y 960 bytes; lo leen p00:4C2C (965 bytes)
;   0x8d1f..0x90e4  (965 bytes)
DATA_figura_8D1F:
	defb 000h,028h,018h,068h,0d4h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 8d1f  .(.h............
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 8d2f  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 8d3f  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,001h	; 8d4f  ................
	defb 011h,011h,011h,011h,010h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 8d5f  ................
	defb 000h,000h,000h,000h,000h,000h,001h,014h,064h,046h,064h,066h,061h,000h,000h,000h	; 8d6f  ........dFdfa...
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,011h,010h,000h,016h,064h	; 8d7f  ...............d
	defb 075h,055h,055h,054h,044h,011h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 8d8f  uUUTD...........
	defb 000h,000h,011h,045h,041h,011h,044h,075h,057h,055h,053h,057h,054h,064h,011h,000h	; 8d9f  ...EA.DuWUSWTd..
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,011h,044h,035h,054h,061h,064h,064h	; 8daf  ..........D5Tadd
	defb 074h,044h,044h,074h,044h,046h,016h,011h,010h,000h,000h,000h,000h,000h,000h,000h	; 8dbf  tDDtDF..........
	defb 001h,045h,075h,055h,066h,011h,011h,016h,064h,066h,046h,066h,066h,011h,014h,055h	; 8dcf  .EuUf...dfFff..U
	defb 041h,010h,000h,000h,000h,000h,000h,000h,014h,057h,055h,044h,061h,011h,011h,011h	; 8ddf  A........WUDa...
	defb 011h,011h,011h,016h,011h,016h,045h,075h,035h,041h,000h,000h,000h,000h,000h,001h	; 8def  ......Eu5A......
	defb 045h,077h,057h,046h,011h,011h,011h,044h,055h,054h,054h,011h,011h,066h,045h,057h	; 8dff  EwWF...DUTT..fEW
	defb 055h,034h,010h,000h,000h,000h,000h,014h,075h,055h,046h,061h,011h,014h,077h,051h	; 8e0f  U4......uUFa..wQ
	defb 011h,011h,017h,055h,041h,011h,064h,055h,075h,075h,041h,000h,000h,000h,001h,045h	; 8e1f  ...UA.dUuuA....E
	defb 076h,046h,061h,011h,014h,055h,051h,016h,065h,076h,071h,011h,074h,041h,016h,065h	; 8e2f  vFa..UQ.evq.tA.e
	defb 045h,057h,054h,010h,000h,000h,001h,046h,041h,061h,011h,011h,045h,011h,017h,06ch	; 8e3f  EWT....FAa..E..l
	defb 044h,076h,057h,046h,011h,074h,011h,014h,066h,045h,055h,010h,000h,000h,014h,061h	; 8e4f  DvWF.t..fEU....a
	defb 011h,011h,011h,016h,051h,015h,074h,0e7h,04eh,054h,076h,075h,076h,017h,041h,011h	; 8e5f  ....Q.t.NTvuv.A.
	defb 011h,016h,055h,041h,000h,000h,016h,016h,011h,066h,011h,065h,041h,057h,06eh,045h	; 8e6f  ..UA.....f.eAWnE
	defb 066h,047h,065h,046h,057h,015h,046h,011h,046h,011h,064h,056h,010h,000h,011h,011h	; 8e7f  fGeFW.F.F.dV....
	defb 064h,054h,061h,064h,076h,016h,054h,057h,05eh,054h,066h,05eh,064h,017h,056h,016h	; 8e8f  dTadv.TW^Tf^d.V.
	defb 047h,061h,011h,064h,010h,000h,011h,016h,055h,055h,046h,014h,057h,014h,05ch,056h	; 8e9f  Ga.d....UUF.W.\V
	defb 074h,046h,0e7h,046h,011h,075h,041h,064h,075h,057h,061h,016h,010h,000h,001h,065h	; 8eaf  tF.F.uAduWa....e
	defb 057h,075h,036h,061h,047h,0e1h,014h,057h,066h,0c6h,041h,011h,077h,064h,011h,066h	; 8ebf  Wu6aG..Wf.A.wd.f
	defb 045h,075h,046h,011h,000h,000h,001h,045h,074h,035h,055h,041h,064h,077h,051h,011h	; 8ecf  EuF....Et5UAdwQ.
	defb 011h,011h,017h,077h,074h,041h,011h,011h,066h,055h,057h,061h,000h,000h,014h,057h	; 8edf  ...wtA..fUWa...W
	defb 055h,057h,075h,054h,016h,064h,07eh,0e7h,07eh,077h,054h,0e5h,046h,011h,064h,066h	; 8eef  UWuT.d~.~wT.F.df
	defb 016h,044h,075h,056h,010h,000h,015h,055h,057h,075h,057h,055h,041h,016h,045h,075h	; 8eff  .DuV...UWuWUA.Eu
	defb 077h,075h,044h,061h,011h,064h,045h,044h,061h,066h,045h,076h,010h,001h,047h,057h	; 8f0f  wuDa.dEDafEv..GW
	defb 074h,077h,074h,033h,054h,061h,016h,045h,054h,044h,061h,016h,064h,045h,055h,075h	; 8f1f  twt3Ta.ETDa.dEUu
	defb 056h,011h,064h,055h,061h,001h,045h,054h,057h,075h,077h,055h,054h,041h,011h,011h	; 8f2f  V.dUa.ETWuwUTA..
	defb 011h,011h,011h,064h,045h,055h,057h,057h,075h,061h,016h,047h,061h,001h,045h,075h	; 8f3f  ...dEUWWua.Ga.Eu
	defb 057h,047h,054h,053h,045h,046h,011h,011h,011h,011h,066h,045h,057h,057h,054h,075h	; 8f4f  WGTSEF....fEWWTu
	defb 055h,056h,011h,065h,061h,001h,045h,055h,055h,075h,037h,057h,074h,066h,011h,066h	; 8f5f  UV.ea.EUUu7Wtf.f
	defb 061h,014h,044h,057h,055h,045h,075h,055h,077h,055h,061h,064h,061h,001h,047h,055h	; 8f6f  a.DWUEuUwUada.GU
	defb 057h,055h,075h,075h,044h,061h,016h,045h,046h,016h,045h,045h,057h,057h,057h,057h	; 8f7f  WUuuDa.EF.EEWWWW
	defb 054h,075h,046h,016h,061h,001h,045h,057h,045h,057h,055h,075h,046h,011h,014h,075h	; 8f8f  TuF.a.EWEWUuF..u
	defb 054h,061h,064h,057h,055h,075h,057h,045h,074h,055h,054h,011h,010h,001h,045h,054h	; 8f9f  TadWUuWEtUT...ET
	defb 035h,074h,055h,054h,066h,011h,045h,055h,075h,041h,064h,055h,074h,055h,075h,077h	; 8faf  5tUTf.EUuAdUtUuw
	defb 057h,057h,045h,061h,000h,000h,014h,057h,037h,047h,054h,044h,061h,014h,055h,075h	; 8fbf  WWEa...W7GTDa.Uu
	defb 057h,046h,016h,045h,057h,055h,057h,045h,055h,075h,055h,041h,000h,000h,014h,055h	; 8fcf  WF.EWUWEUuUA...U
	defb 047h,075h,045h,046h,011h,045h,055h,057h,055h,046h,016h,045h,055h,075h,045h,055h	; 8fdf  GuEF.EUWUF.EUuEU
	defb 054h,077h,055h,041h,000h,000h,014h,045h,055h,055h,046h,061h,016h,057h,045h,075h	; 8fef  TwUA...EUUFa.WEu
	defb 055h,054h,061h,064h,055h,055h,075h,045h,055h,075h,054h,061h,000h,000h,001h,045h	; 8fff  UTadUUuEUuTa...E
	defb 046h,044h,041h,011h,064h,055h,075h,055h,075h,054h,061h,066h,045h,057h,077h,055h	; 900f  FDA.dUuUuTafEWwU
	defb 057h,045h,054h,010h,000h,000h,000h,014h,014h,046h,011h,061h,047h,055h,055h,045h	; 901f  WET......F.aGUUE
	defb 075h,055h,046h,016h,064h,055h,057h,057h,055h,055h,046h,010h,000h,000h,000h,011h	; 902f  uUF.dUWWUUF.....
	defb 011h,011h,016h,016h,055h,057h,057h,055h,057h,054h,061h,011h,064h,055h,077h,045h	; 903f  ....UWWUWTa.dUwE
	defb 055h,054h,061h,000h,000h,000h,000h,000h,001h,016h,041h,016h,047h,055h,055h,055h	; 904f  UTa.......A.GUUU
	defb 055h,046h,061h,041h,016h,044h,055h,054h,054h,046h,010h,000h,000h,000h,000h,000h	; 905f  UFaA.DUTTF......
	defb 000h,011h,064h,011h,064h,045h,075h,045h,044h,066h,014h,064h,041h,064h,044h,044h	; 906f  ..d.dEuEDf.dAdDD
	defb 046h,011h,000h,000h,000h,000h,000h,000h,000h,001h,016h,016h,016h,064h,054h,056h	; 907f  F............dTV
	defb 066h,011h,016h,016h,066h,016h,064h,066h,061h,000h,000h,000h,000h,000h,000h,000h	; 908f  f...f.dfa.......
	defb 000h,000h,001h,011h,061h,016h,066h,061h,011h,016h,061h,041h,061h,011h,011h,011h	; 909f  ....a.fa..aAa...
	defb 010h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,001h,011h,011h,011h,011h	; 90af  ................
	defb 016h,061h,016h,061h,011h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 90bf  .a.a............
	defb 000h,000h,000h,000h,000h,001h,011h,011h,011h,011h,011h,010h,000h,000h,000h,000h	; 90cf  ................
	defb 000h,000h,000h,000h,000h	; 90df

; ----------------------------------------------------------------------
; DATOS figura_90E4: figura a pelo de la pantalla 0x5C: [bandera de espejo][64
;   filas][16 bytes][VRAM 0xD460] y 1024 bytes; lo leen p00:4C2C (1029 bytes)
;   0x90e4..0x94e9  (1029 bytes)
DATA_figura_90E4:
	defb 001h,040h,010h,060h,0d4h,000h,000h,000h,000h,000h,001h,011h,010h,000h,000h,000h	; 90e4  .@.`............
	defb 000h,001h,011h,011h,011h,000h,000h,000h,000h,000h,015h,071h,000h,000h,000h,000h	; 90f4  ...........q....
	defb 011h,011h,011h,011h,017h,000h,000h,000h,000h,001h,057h,010h,000h,000h,000h,011h	; 9104  ..........W.....
	defb 011h,014h,061h,011h,065h,000h,000h,000h,000h,015h,071h,000h,000h,000h,011h,011h	; 9114  ..a.e.....q.....
	defb 011h,011h,046h,011h,016h,000h,000h,000h,000h,017h,051h,000h,000h,001h,011h,011h	; 9124  ..F.......Q.....
	defb 011h,011h,014h,066h,011h,001h,011h,000h,001h,057h,051h,000h,000h,011h,011h,011h	; 9134  ...f.....WQ.....
	defb 011h,011h,011h,044h,066h,011h,044h,010h,001h,077h,054h,011h,001h,011h,011h,011h	; 9144  ...Df.D..wT.....
	defb 011h,011h,011h,011h,044h,014h,065h,061h,001h,057h,075h,044h,011h,011h,011h,011h	; 9154  ....D.ea.WuD....
	defb 017h,077h,077h,011h,011h,014h,057h,056h,011h,057h,077h,041h,011h,011h,011h,011h	; 9164  .ww...WV.WwA....
	defb 055h,055h,077h,071h,011h,014h,065h,075h,061h,045h,055h,011h,051h,011h,011h,015h	; 9174  UUwq..euaEU.Q...
	defb 055h,065h,055h,077h,011h,011h,046h,057h,056h,014h,051h,014h,065h,011h,011h,055h	; 9184  UeUw..FWV.Q.e..U
	defb 066h,066h,065h,057h,017h,011h,014h,065h,075h,061h,011h,011h,046h,051h,015h,056h	; 9194  ffeW...eua..FQ.V
	defb 014h,044h,066h,057h,077h,001h,011h,046h,055h,051h,014h,067h,014h,061h,014h,011h	; 91a4  .DfWw..FUQ.g.a..
	defb 011h,014h,046h,065h,077h,001h,066h,014h,065h,041h,046h,075h,061h,011h,011h,011h	; 91b4  ..Few.f.eAFua...
	defb 011h,011h,044h,066h,047h,016h,057h,051h,044h,011h,067h,056h,041h,011h,011h,011h	; 91c4  ..DfG.WQD.gVA...
	defb 011h,011h,014h,046h,064h,014h,065h,075h,011h,011h,015h,064h,011h,011h,011h,011h	; 91d4  ...Fd.eu...d....
	defb 011h,011h,011h,046h,066h,014h,046h,057h,051h,011h,051h,041h,011h,011h,011h,011h	; 91e4  ...Ff.FWQ.QA....
	defb 011h,044h,011h,014h,066h,011h,044h,065h,075h,011h,065h,011h,011h,011h,011h,011h	; 91f4  .D..f.Deu.e.....
	defb 044h,044h,044h,011h,044h,001h,011h,046h,056h,011h,046h,051h,011h,011h,011h,014h	; 9204  DDD.D..FV.FQ....
	defb 046h,066h,066h,041h,014h,001h,044h,014h,064h,011h,014h,064h,011h,011h,011h,014h	; 9214  FffA..D.d..d....
	defb 066h,057h,075h,041h,011h,014h,077h,051h,044h,011h,011h,041h,015h,051h,011h,011h	; 9224  fWuA..wQD..A.Q..
	defb 046h,055h,056h,011h,011h,014h,057h,075h,014h,011h,011h,011h,014h,057h,041h,011h	; 9234  FUV...Wu.....WA.
	defb 011h,011h,011h,011h,014h,014h,065h,057h,051h,011h,011h,011h,014h,057h,077h,054h	; 9244  ......eWQ....WwT
	defb 011h,011h,015h,075h,044h,011h,046h,065h,075h,011h,011h,011h,011h,045h,077h,077h	; 9254  ...uD.Feu....Eww
	defb 077h,077h,077h,054h,041h,001h,044h,066h,066h,017h,011h,011h,011h,014h,057h,077h	; 9264  wwwTA.Dff.....Ww
	defb 077h,077h,077h,054h,011h,000h,014h,044h,044h,017h,011h,011h,011h,011h,045h,057h	; 9274  wwwT...DD.....EW
	defb 077h,077h,055h,041h,016h,000h,001h,044h,044h,017h,011h,011h,011h,011h,014h,045h	; 9284  wwUA...DD......E
	defb 055h,055h,044h,011h,016h,000h,000h,014h,041h,017h,071h,011h,011h,011h,011h,014h	; 9294  UUD.....A.q.....
	defb 044h,044h,011h,011h,066h,000h,000h,001h,011h,015h,071h,011h,011h,011h,011h,011h	; 92a4  DD..f.....q.....
	defb 011h,011h,011h,011h,066h,000h,000h,000h,011h,015h,077h,011h,011h,011h,011h,011h	; 92b4  ....f.....w.....
	defb 011h,011h,011h,016h,065h,000h,000h,000h,001h,011h,057h,071h,011h,011h,011h,011h	; 92c4  ....e.....Wq....
	defb 011h,011h,011h,016h,055h,000h,000h,000h,011h,011h,057h,071h,011h,011h,011h,011h	; 92d4  ....U.....Wq....
	defb 011h,015h,055h,046h,053h,000h,000h,011h,011h,011h,055h,077h,011h,011h,011h,011h	; 92e4  ..UFS.....Uw....
	defb 011h,055h,066h,054h,077h,000h,001h,044h,041h,011h,016h,057h,071h,011h,011h,011h	; 92f4  .UfTw..DA..Wq...
	defb 011h,044h,046h,055h,077h,000h,014h,044h,044h,011h,016h,055h,077h,077h,011h,011h	; 9304  .DFUw..DD..Uww..
	defb 011h,014h,044h,065h,057h,001h,044h,046h,066h,041h,011h,065h,057h,077h,077h,077h	; 9314  ..DeW.DFfA.eWwww
	defb 075h,011h,014h,065h,055h,001h,044h,066h,055h,041h,011h,016h,055h,077h,077h,077h	; 9324  u..eU.DfUA..Uwww
	defb 077h,071h,011h,046h,055h,001h,044h,055h,055h,044h,011h,011h,066h,055h,057h,077h	; 9334  wq.FU.DUUD..fUWw
	defb 077h,055h,011h,046h,065h,014h,046h,055h,056h,044h,011h,071h,011h,066h,055h,055h	; 9344  wU.Fe.FUVD.q.fUU
	defb 055h,055h,051h,016h,046h,014h,066h,055h,056h,044h,011h,047h,011h,011h,066h,066h	; 9354  UUQ.F.fUVD.G..ff
	defb 066h,066h,011h,014h,044h,014h,066h,055h,044h,041h,041h,046h,071h,011h,011h,011h	; 9364  ff..D.fUDAAFq...
	defb 011h,011h,011h,011h,014h,014h,046h,066h,044h,014h,041h,014h,065h,051h,011h,011h	; 9374  ......FfD.A.eQ..
	defb 011h,044h,011h,011h,011h,014h,046h,064h,044h,044h,041h,014h,046h,065h,055h,011h	; 9384  .D....FdDDA.FeU.
	defb 014h,011h,011h,011h,011h,014h,044h,044h,044h,044h,061h,011h,044h,046h,066h,051h	; 9394  ......DDDDa.DFfQ
	defb 041h,011h,011h,011h,011h,001h,044h,044h,014h,045h,011h,011h,011h,044h,044h,061h	; 93a4  A.....DD.E...DDa
	defb 011h,011h,011h,011h,011h,001h,044h,041h,041h,061h,016h,014h,061h,011h,044h,011h	; 93b4  ......DAAa..a.D.
	defb 011h,011h,011h,011h,011h,000h,014h,014h,075h,011h,051h,011h,046h,055h,011h,011h	; 93c4  ........u.Q.FU..
	defb 011h,011h,011h,011h,044h,000h,011h,041h,056h,016h,011h,011h,014h,044h,051h,011h	; 93d4  ....D..AV....DQ.
	defb 011h,011h,011h,044h,066h,000h,016h,075h,015h,011h,015h,011h,011h,044h,041h,011h	; 93e4  ...Df..u.....DA.
	defb 011h,011h,014h,046h,077h,001h,011h,065h,014h,011h,054h,014h,051h,014h,041h,011h	; 93f4  ...Fw..e..T.Q.A.
	defb 011h,011h,044h,067h,077h,015h,071h,046h,016h,011h,044h,011h,045h,061h,011h,011h	; 9404  ..Dgw.qF..D.Ea..
	defb 011h,014h,046h,076h,044h,014h,051h,046h,011h,041h,041h,011h,044h,056h,011h,011h	; 9414  ..FvD.QF.AA.DV..
	defb 011h,014h,067h,064h,011h,014h,061h,044h,014h,041h,011h,011h,014h,045h,011h,011h	; 9424  ..gd..aD.A...E..
	defb 011h,014h,065h,061h,011h,014h,064h,011h,045h,011h,047h,041h,041h,044h,011h,011h	; 9434  ..ea..d.E.GAAD..
	defb 011h,014h,045h,041h,011h,014h,061h,044h,054h,011h,075h,061h,015h,011h,011h,011h	; 9444  ..EA..aDT.ua....
	defb 011h,011h,046h,054h,011h,001h,014h,045h,041h,011h,055h,041h,014h,045h,011h,011h	; 9454  ..FT...EA.UA.E..
	defb 011h,011h,014h,067h,044h,001h,040h,044h,011h,011h,056h,041h,011h,044h,061h,011h	; 9464  ...gD.@D..VA.Da.
	defb 011h,011h,011h,046h,077h,001h,061h,011h,011h,041h,016h,061h,014h,011h,066h,011h	; 9474  ...Fw.a..A.a..f.
	defb 011h,011h,011h,011h,044h,001h,046h,044h,014h,044h,066h,011h,011h,066h,011h,011h	; 9484  ....D.FD.Df..f..
	defb 011h,011h,011h,011h,011h,001h,045h,064h,041h,046h,064h,011h,011h,014h,066h,061h	; 9494  ......EdAFd...fa
	defb 011h,011h,011h,011h,011h,000h,014h,056h,064h,066h,041h,011h,011h,011h,044h,046h	; 94a4  .......VdfA...DF
	defb 061h,011h,011h,011h,011h,000h,001h,045h,066h,054h,041h,011h,000h,001h,011h,044h	; 94b4  a......EfTA....D
	defb 044h,011h,011h,011h,011h,000h,000h,014h,046h,044h,011h,000h,000h,000h,001h,011h	; 94c4  D.......FD......
	defb 014h,044h,011h,011h,011h,000h,000h,001h,011h,011h,000h,000h,000h,000h,000h,000h	; 94d4  .D..............
	defb 011h,011h,011h,011h,011h	; 94e4

; ----------------------------------------------------------------------
; DATOS figura_94E9: figura a pelo de la pantalla 0x5C: [bandera de espejo][24
;   filas][8 bytes][VRAM 0xD450] y 192 bytes; lo leen p00:4C2C (197 bytes)
;   0x94e9..0x95ae  (197 bytes)
DATA_figura_94E9:
	defb 001h,018h,008h,050h,0d4h,011h,011h,011h,011h,011h,011h,011h,014h,061h,011h,011h	; 94e9  ...P.........a..
	defb 011h,044h,011h,011h,011h,056h,066h,011h,014h,011h,014h,055h,066h,045h,055h,061h	; 94f9  .D...Vf....UfEUa
	defb 041h,014h,046h,066h,077h,044h,044h,051h,011h,046h,067h,075h,066h,011h,044h,011h	; 9509  A.FfwDDQ.Fguf.D.
	defb 014h,067h,077h,044h,044h,066h,011h,011h,046h,055h,044h,041h,011h,044h,061h,014h	; 9519  .gwDDf..FUDA.Da.
	defb 066h,044h,011h,011h,011h,044h,041h,016h,064h,011h,011h,011h,011h,014h,041h,046h	; 9529  fD...DA.d.....AF
	defb 041h,011h,011h,011h,011h,051h,011h,064h,011h,011h,011h,011h,011h,065h,014h,041h	; 9539  A....Q.d.....e.A
	defb 011h,011h,011h,011h,011h,046h,015h,051h,011h,011h,011h,011h,011h,044h,014h,074h	; 9549  .....F.Q.....D.t
	defb 041h,011h,011h,011h,011h,011h,011h,047h,054h,011h,011h,011h,011h,046h,011h,046h	; 9559  A......GT....F.F
	defb 076h,054h,011h,011h,011h,044h,051h,014h,067h,066h,054h,041h,011h,011h,055h,011h	; 9569  vT...DQ.gfTA..U.
	defb 046h,077h,066h,054h,044h,055h,011h,011h,014h,056h,077h,066h,065h,014h,055h,051h	; 9579  FwfTDU...Vwfe.UQ
	defb 011h,044h,056h,077h,077h,011h,044h,045h,051h,011h,044h,056h,077h,001h,011h,044h	; 9589  .DVww.DEQ.DVw..D
	defb 044h,011h,011h,044h,044h,000h,001h,011h,014h,044h,011h,011h,011h,000h,000h,000h	; 9599  D..DD....D......
	defb 011h,011h,011h,011h,011h	; 95a9

; ----------------------------------------------------------------------
; DATOS figura_95AE: figura a pelo de la pantalla 0x53 y 0x5D: [bandera de
;   espejo][40 filas][20 bytes][VRAM 0xD46C] y 800 bytes; lo leen p00:4C2C
;   (805 bytes)
;   0x95ae..0x98d3  (805 bytes)
DATA_figura_95AE:
	defb 000h,028h,014h,06ch,0d4h,000h,000h,000h,000h,000h,000h,000h,011h,011h,010h,010h	; 95ae  .(.l............
	defb 001h,011h,011h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,011h	; 95be  ................
	defb 044h,055h,041h,011h,014h,055h,044h,011h,010h,000h,000h,000h,000h,000h,000h,000h	; 95ce  DUA..UD.........
	defb 000h,000h,011h,045h,055h,055h,051h,051h,045h,055h,055h,054h,041h,000h,000h,000h	; 95de  ...EUUQQEUUTA...
	defb 000h,000h,000h,000h,000h,001h,045h,055h,051h,044h,051h,051h,054h,041h,055h,055h	; 95ee  ......EUQDQQTAUU
	defb 044h,010h,000h,000h,000h,000h,000h,000h,001h,014h,054h,044h,014h,045h,014h,054h	; 95fe  D.........TD.E.T
	defb 015h,044h,014h,044h,055h,041h,000h,000h,000h,000h,000h,000h,014h,055h,045h,011h	; 960e  .D.DUA.......UE.
	defb 044h,045h,014h,044h,015h,044h,041h,015h,045h,054h,010h,000h,000h,000h,000h,001h	; 961e  DE.D.DA.ET......
	defb 045h,055h,054h,041h,044h,055h,011h,041h,015h,054h,041h,044h,055h,055h,010h,000h	; 962e  EUTADU.A.TADUU..
	defb 000h,000h,000h,014h,055h,045h,054h,041h,045h,054h,051h,011h,054h,055h,041h,044h	; 963e  ....UETAETQ.TUAD
	defb 055h,055h,051h,000h,000h,000h,000h,015h,054h,055h,054h,014h,045h,045h,044h,044h	; 964e  UUQ.....TUT.EEDD
	defb 045h,045h,044h,014h,054h,045h,051h,000h,000h,000h,001h,045h,055h,055h,044h,014h	; 965e  EED.TEQ....EUUD.
	defb 044h,011h,055h,055h,051h,014h,044h,014h,045h,055h,044h,010h,000h,000h,001h,044h	; 966e  D.UUQ.D.EUD....D
	defb 055h,054h,041h,014h,041h,011h,014h,054h,011h,011h,044h,011h,044h,044h,041h,041h	; 967e  UTA.A..T..D.DDAA
	defb 000h,000h,001h,044h,044h,044h,011h,014h,014h,051h,011h,051h,011h,054h,014h,011h	; 968e  ...DDD...Q.Q.T..
	defb 014h,044h,014h,041h,000h,000h,001h,045h,014h,011h,011h,011h,014h,015h,015h,055h	; 969e  .D.A...E.......U
	defb 015h,014h,011h,011h,011h,014h,055h,044h,010h,000h,014h,054h,041h,041h,011h,011h	; 96ae  ......UD...TAA..
	defb 041h,011h,051h,041h,051h,011h,041h,011h,011h,045h,055h,054h,010h,000h,014h,011h	; 96be  A.QAQ.A..EUT....
	defb 014h,011h,011h,011h,014h,011h,011h,011h,011h,014h,011h,011h,014h,044h,055h,055h	; 96ce  .............DUU
	defb 041h,001h,044h,054h,055h,041h,011h,011h,014h,011h,011h,011h,011h,014h,011h,011h	; 96de  A.DTUA..........
	defb 014h,045h,055h,055h,041h,001h,015h,055h,055h,044h,011h,011h,011h,041h,011h,011h	; 96ee  .EUUA..UUD...A..
	defb 011h,041h,011h,011h,011h,014h,055h,054h,041h,001h,045h,045h,054h,045h,051h,011h	; 96fe  .A....UTA.EETEQ.
	defb 011h,041h,011h,011h,011h,041h,011h,014h,054h,041h,045h,044h,010h,014h,044h,044h	; 970e  .A...A..TAED..DD
	defb 055h,014h,055h,011h,011h,014h,015h,015h,014h,011h,011h,055h,055h,054h,044h,044h	; 971e  U.U........UUTDD
	defb 010h,015h,041h,051h,054h,011h,044h,011h,011h,011h,044h,054h,041h,011h,015h,041h	; 972e  ..AQT.D...DTA..A
	defb 055h,055h,041h,041h,000h,015h,051h,054h,045h,041h,011h,011h,011h,011h,011h,011h	; 973e  UUAA..QTEA......
	defb 011h,011h,045h,015h,054h,045h,054h,010h,000h,001h,054h,015h,014h,054h,011h,044h	; 974e  ..E.TET...T..T.D
	defb 011h,011h,011h,011h,011h,011h,054h,015h,041h,054h,054h,010h,000h,000h,011h,011h	; 975e  ......T.ATT.....
	defb 011h,044h,014h,044h,041h,011h,011h,011h,011h,011h,011h,055h,015h,041h,044h,010h	; 976e  .D.DA......U.AD.
	defb 000h,000h,001h,044h,044h,011h,044h,044h,014h,011h,011h,011h,011h,011h,011h,054h	; 977e  ...DD.DD.......T
	defb 054h,014h,041h,010h,000h,000h,014h,055h,054h,041h,045h,041h,041h,011h,011h,011h	; 978e  T.A....UTAEAA...
	defb 011h,041h,011h,011h,041h,044h,011h,010h,000h,000h,015h,055h,055h,054h,041h,044h	; 979e  .A..AD.....UUTAD
	defb 011h,011h,011h,011h,011h,011h,011h,011h,014h,011h,045h,011h,000h,001h,044h,055h	; 97ae  ..........E...DU
	defb 055h,044h,041h,011h,011h,011h,011h,011h,011h,011h,011h,014h,044h,044h,045h,041h	; 97be  UDA.........DDEA
	defb 000h,001h,014h,044h,044h,041h,011h,011h,011h,001h,011h,014h,011h,010h,011h,014h	; 97ce  ...DDA..........
	defb 054h,044h,044h,051h,000h,001h,041h,014h,054h,054h,011h,010h,000h,000h,010h,011h	; 97de  TDDQ..A.TT......
	defb 010h,000h,011h,011h,055h,044h,044h,051h,010h,000h,014h,041h,055h,044h,011h,010h	; 97ee  ....UDDQ...AUD..
	defb 001h,010h,000h,001h,000h,011h,011h,041h,045h,044h,044h,044h,041h,000h,014h,054h	; 97fe  .......AEDDDA..T
	defb 045h,054h,041h,011h,011h,011h,001h,010h,011h,011h,041h,044h,014h,054h,044h,045h	; 980e  ETA.......AD.TDE
	defb 041h,000h,001h,054h,045h,045h,041h,011h,011h,011h,011h,011h,011h,011h,044h,014h	; 981e  A..TEEA.......D.
	defb 014h,045h,044h,045h,041h,000h,001h,044h,044h,054h,014h,041h,011h,011h,011h,011h	; 982e  .EDEA..DDT.A....
	defb 011h,011h,014h,015h,044h,044h,044h,044h,041h,000h,001h,044h,045h,044h,044h,044h	; 983e  ....DDDDA..DEDDD
	defb 011h,011h,011h,011h,011h,011h,011h,014h,054h,044h,044h,055h,010h,000h,014h,055h	; 984e  ........TDDU...U
	defb 044h,044h,041h,044h,011h,011h,011h,011h,000h,011h,011h,011h,045h,044h,055h,011h	; 985e  DDAD........EDU.
	defb 010h,000h,015h,054h,044h,044h,045h,041h,011h,011h,010h,000h,000h,000h,001h,011h	; 986e  ...TDDEA........
	defb 011h,015h,055h,011h,000h,001h,045h,055h,044h,055h,044h,041h,011h,000h,000h,000h	; 987e  ..U...EUDUDA....
	defb 000h,000h,000h,000h,001h,011h,011h,000h,000h,001h,044h,055h,055h,044h,044h,011h	; 988e  ..........DUUDD.
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,014h,044h	; 989e  ...............D
	defb 044h,044h,011h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 98ae  DD..............
	defb 000h,000h,001h,011h,011h,011h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 98be  ................
	defb 000h,000h,000h,000h,000h	; 98ce

; ----------------------------------------------------------------------
; DATOS figura_98D3: figura a pelo de la pantalla 0x53 y 0x5D: [bandera de
;   espejo][16 filas][12 bytes][VRAM 0xE86C] y 192 bytes; lo leen p00:4C2C
;   (197 bytes)
;   0x98d3..0x9998  (197 bytes)
DATA_figura_98D3:
	defb 000h,010h,00ch,06ch,0e8h,055h,054h,041h,045h,055h,011h,041h,015h,055h,041h,044h	; 98d3  ...l.UTAEU.A.UAD
	defb 054h,055h,044h,011h,044h,054h,051h,011h,054h,054h,041h,014h,045h,054h,041h,014h	; 98e3  TUD.DTQ.TTA.ETA.
	defb 014h,045h,044h,054h,045h,044h,014h,011h,044h,044h,011h,014h,011h,014h,055h,055h	; 98f3  .EDTED..DD....UU
	defb 054h,011h,014h,011h,014h,011h,011h,011h,014h,014h,044h,044h,044h,014h,011h,011h	; 9903  T.........DDD...
	defb 011h,041h,011h,011h,041h,011h,044h,044h,041h,011h,041h,011h,011h,011h,011h,011h	; 9913  .A..A.DDA.A.....
	defb 015h,011h,011h,051h,011h,015h,011h,011h,014h,041h,011h,011h,014h,051h,015h,055h	; 9923  ...Q.....A...Q.U
	defb 011h,054h,011h,011h,014h,044h,011h,011h,011h,045h,054h,054h,055h,041h,011h,011h	; 9933  .T...D...ETTUA..
	defb 011h,045h,051h,011h,011h,044h,041h,011h,044h,041h,011h,014h,054h,014h,055h,011h	; 9943  .EQ..DA.DA..T.U.
	defb 011h,014h,011h,041h,014h,011h,011h,055h,055h,011h,044h,011h,011h,011h,014h,054h	; 9953  ...A...UU.D....T
	defb 011h,011h,015h,041h,055h,041h,011h,011h,011h,011h,011h,011h,011h,011h,045h,015h	; 9963  ...AUA........E.
	defb 054h,054h,011h,044h,011h,011h,011h,011h,011h,011h,054h,015h,041h,044h,014h,044h	; 9973  TT.D......T.AD.D
	defb 041h,011h,011h,011h,011h,011h,011h,055h,015h,011h,044h,044h,014h,011h,011h,011h	; 9983  A......U..DD....
	defb 011h,011h,011h,054h,054h	; 9993

; ----------------------------------------------------------------------
; DATOS figura_9998: figura a pelo de la pantalla 0x29: [bandera de espejo][32
;   filas][8 bytes][VRAM 0xD470] y 256 bytes; lo leen p00:4C2C (261 bytes)
;   0x9998..0x9a9d  (261 bytes)
DATA_figura_9998:
	defb 001h,020h,008h,070h,0d4h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0fdh,0ffh,0ffh,0ffh,0ddh	; 9998  . .p............
	defb 0ffh,0fdh,0ffh,0ffh,0ffh,0fdh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0fdh,0ffh	; 99a8  ................
	defb 0ffh,0ffh,0ffh,011h,011h,0ffh,0ffh,0ffh,0ffh,0fdh,011h,016h,066h,0ffh,0ffh,0ddh	; 99b8  ............f...
	defb 0f1h,011h,016h,064h,044h,0ffh,0ffh,0ffh,011h,045h,044h,044h,074h,0fdh,0dfh,0f1h	; 99c8  ...dD....EDDt...
	defb 014h,057h,054h,067h,067h,0ffh,0f1h,011h,054h,066h,075h,065h,064h,0ffh,0f1h,064h	; 99d8  .WTgg...Tfued..d
	defb 046h,046h,067h,065h,076h,0ffh,011h,057h,067h,044h,066h,046h,057h,0fdh,014h,071h	; 99e8  FFgev..WgDfFW..q
	defb 067h,055h,074h,067h,065h,0ffh,014h,071h,011h,017h,057h,065h,066h,0ffh,017h,046h	; 99f8  gUtge..q..Wef..F
	defb 011h,011h,075h,065h,076h,0dfh,014h,077h,011h,011h,017h,056h,057h,0f1h,075h,057h	; 9a08  ..uev..w...VW.uW
	defb 011h,011h,011h,077h,065h,001h,074h,075h,071h,011h,0c1h,015h,076h,001h,075h,055h	; 9a18  ...we.tuq...v.uU
	defb 056h,011h,01ch,011h,057h,001h,075h,075h,055h,061h,011h,011h,074h,001h,077h,045h	; 9a28  V...W.uuUa..t.wE
	defb 047h,055h,061h,011h,065h,016h,075h,074h,047h,075h,055h,066h,075h,014h,045h,057h	; 9a38  GUa.e.utGuUfu.EW
	defb 074h,044h,044h,045h,017h,014h,077h,055h,057h,075h,057h,046h,066h,017h,047h,077h	; 9a48  tDDE..wUWuWFf.Gw
	defb 077h,046h,011h,011h,011h,017h,064h,077h,046h,061h,075h,061h,011h,016h,076h,044h	; 9a58  wF....dwFaua..vD
	defb 066h,011h,017h,011h,011h,016h,076h,064h,047h,061h,011h,016h,066h,001h,067h,067h	; 9a68  f.....vdGa..f.gg
	defb 045h,076h,064h,047h,075h,001h,066h,046h,074h,055h,077h,075h,055h,001h,016h,064h	; 9a78  EvdGu.fFtUwuU..d
	defb 067h,044h,055h,057h,066h,000h,011h,016h,016h,074h,066h,066h,066h,000h,011h,011h	; 9a88  gDUWf....tfff...
	defb 011h,011h,011h,011h,011h	; 9a98

; ----------------------------------------------------------------------
; DATOS figura_9A9D: figura a pelo de la pantalla 0x29: [bandera de espejo][32
;   filas][8 bytes][VRAM 0xE470] y 256 bytes; lo leen p00:4C2C (261 bytes)
;   0x9a9d..0x9ba2  (261 bytes)
DATA_figura_9A9D:
	defb 001h,020h,008h,070h,0e4h,000h,000h,000h,000h,000h,000h,011h,011h,000h,000h,000h	; 9a9d  . .p............
	defb 000h,000h,011h,016h,066h,000h,000h,000h,001h,011h,016h,064h,044h,000h,000h,000h	; 9aad  ....f......dD...
	defb 011h,045h,044h,044h,074h,000h,000h,001h,014h,057h,054h,067h,067h,000h,001h,011h	; 9abd  .EDDt....WTgg...
	defb 054h,066h,075h,065h,064h,000h,001h,064h,046h,046h,067h,065h,076h,000h,011h,057h	; 9acd  Tfued..dFFgev..W
	defb 067h,044h,066h,046h,057h,000h,014h,071h,067h,055h,074h,067h,065h,000h,014h,071h	; 9add  gDfFW..qgUtge..q
	defb 011h,017h,057h,065h,066h,000h,017h,046h,011h,011h,075h,065h,076h,000h,014h,077h	; 9aed  ..Wef..F..uev..w
	defb 011h,011h,017h,056h,057h,001h,075h,057h,011h,01eh,011h,077h,065h,001h,074h,075h	; 9afd  ...VW.uW...we.tu
	defb 071h,01eh,0e1h,015h,076h,001h,075h,055h,056h,011h,0eeh,011h,057h,001h,075h,075h	; 9b0d  q...v.uUV...W.uu
	defb 055h,061h,011h,011h,074h,001h,077h,045h,047h,055h,061h,011h,065h,001h,075h,074h	; 9b1d  Ua..t.wEGUa.e.ut
	defb 047h,075h,055h,066h,075h,001h,045h,057h,074h,044h,044h,045h,017h,011h,077h,055h	; 9b2d  GuUfu.EWtDDE..wU
	defb 057h,075h,057h,076h,066h,017h,047h,077h,074h,066h,011h,011h,011h,014h,064h,077h	; 9b3d  WuWvf.Gwtf....dw
	defb 046h,011h,075h,061h,011h,014h,076h,044h,061h,011h,017h,011h,011h,017h,046h,054h	; 9b4d  F.ua..vDa.....FT
	defb 011h,011h,011h,011h,011h,017h,046h,044h,011h,011h,011h,011h,011h,016h,077h,065h	; 9b5d  ......FD......we
	defb 071h,011h,011h,011h,011h,016h,077h,067h,047h,011h,011h,011h,011h,001h,067h,067h	; 9b6d  q.....wgG.....gg
	defb 045h,076h,011h,011h,011h,001h,066h,046h,074h,055h,077h,044h,044h,001h,016h,064h	; 9b7d  Ev....fFtUwDD..d
	defb 067h,044h,055h,055h,055h,000h,011h,016h,016h,074h,044h,046h,066h,000h,011h,011h	; 9b8d  gDUUU....tDFf...
	defb 011h,011h,011h,011h,011h	; 9b9d

; ----------------------------------------------------------------------
; DATOS figura_9BA2: figura a pelo de la pantalla 0x31 y 0x34: [bandera de
;   espejo][40 filas][20 bytes][VRAM 0xD46C] y 800 bytes; lo leen p00:4C2C
;   (805 bytes)
;   0x9ba2..0x9ec7  (805 bytes)
DATA_figura_9BA2:
	defb 000h,028h,014h,06ch,0d4h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 9ba2  .(.l............
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 9bb2  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 9bc2  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 9bd2  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 9be2  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 9bf2  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 9c02  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 9c12  ................
	defb 000h,000h,000h,000h,011h,011h,011h,011h,011h,011h,000h,000h,000h,000h,000h,000h	; 9c22  ................
	defb 000h,000h,000h,000h,000h,000h,000h,011h,017h,076h,066h,066h,077h,071h,011h,000h	; 9c32  .........vffwq..
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,011h,017h,076h,067h,077h,077h	; 9c42  ............vgww
	defb 066h,067h,071h,011h,000h,000h,000h,000h,000h,000h,000h,000h,011h,011h,077h,076h	; 9c52  fgq...........wv
	defb 066h,077h,011h,017h,076h,066h,067h,077h,011h,011h,000h,000h,000h,000h,000h,001h	; 9c62  fw..vfgw........
	defb 077h,076h,077h,066h,067h,071h,011h,011h,077h,076h,066h,077h,067h,077h,010h,000h	; 9c72  wvwfgq..wvfwgw..
	defb 000h,000h,000h,017h,077h,077h,067h,066h,067h,077h,011h,017h,077h,076h,066h,076h	; 9c82  ....wwgfgw..wvfv
	defb 077h,077h,071h,000h,000h,000h,001h,076h,067h,077h,067h,066h,066h,077h,077h,077h	; 9c92  wwq....vgwgffwww
	defb 076h,066h,066h,076h,077h,076h,067h,010h,000h,000h,017h,076h,077h,077h,066h,076h	; 9ca2  vffvwvg....vwwfv
	defb 066h,067h,077h,077h,066h,066h,067h,066h,077h,077h,067h,071h,000h,000h,017h,067h	; 9cb2  fgwwffgfwwgq...g
	defb 077h,076h,016h,077h,066h,066h,066h,066h,066h,066h,077h,061h,067h,077h,076h,071h	; 9cc2  wv.wffffffwagwvq
	defb 000h,000h,017h,077h,077h,066h,016h,077h,077h,066h,066h,066h,067h,077h,077h,061h	; 9cd2  ...wwf.wwfffgwwa
	defb 066h,077h,077h,071h,000h,000h,016h,077h,066h,061h,067h,077h,077h,066h,066h,066h	; 9ce2  fwwq...wfagwwfff
	defb 067h,077h,077h,076h,016h,066h,077h,061h,000h,001h,061h,066h,077h,011h,017h,077h	; 9cf2  gwwv.fwa..afw..w
	defb 077h,076h,066h,066h,077h,077h,077h,071h,011h,077h,066h,016h,010h,001h,066h,067h	; 9d02  wvffwwwq.wf...fg
	defb 071h,061h,017h,077h,077h,077h,066h,067h,077h,077h,077h,071h,016h,017h,076h,066h	; 9d12  qa.wwwfgwwwq..vf
	defb 010h,001h,067h,077h,016h,066h,011h,077h,077h,077h,076h,077h,077h,077h,077h,011h	; 9d22  ..gw.f.wwwvwwww.
	defb 066h,061h,077h,076h,010h,016h,077h,071h,066h,066h,011h,017h,077h,077h,076h,077h	; 9d32  fawv..wqff..wwvw
	defb 077h,077h,071h,011h,066h,066h,017h,077h,061h,016h,077h,066h,067h,066h,011h,016h	; 9d42  wwq.ff.wa.wfgf..
	defb 077h,077h,076h,077h,077h,077h,061h,011h,066h,076h,066h,077h,061h,016h,076h,016h	; 9d52  wwvwwwa.fvfwa.v.
	defb 077h,061h,016h,011h,067h,077h,061h,067h,077h,076h,011h,061h,016h,077h,061h,067h	; 9d62  wa..gwagwv.a.wag
	defb 061h,016h,067h,066h,076h,061h,011h,011h,011h,066h,011h,016h,061h,011h,011h,011h	; 9d72  a.gfva...f..a...
	defb 016h,067h,066h,076h,061h,001h,066h,061h,066h,011h,011h,016h,011h,011h,017h,011h	; 9d82  .gfva.faf.......
	defb 011h,011h,061h,011h,011h,066h,016h,066h,010h,001h,016h,076h,011h,011h,061h,011h	; 9d92  ..a..f.f...v..a.
	defb 071h,011h,011h,011h,011h,017h,011h,016h,011h,011h,067h,061h,010h,001h,067h,077h	; 9da2  q.........ga..gw
	defb 061h,011h,011h,011h,017h,071h,017h,011h,017h,071h,011h,011h,011h,016h,077h,076h	; 9db2  a....q...q....wv
	defb 010h,001h,067h,077h,076h,011h,011h,016h,011h,011h,011h,011h,011h,011h,061h,011h	; 9dc2  ..gwv.........a.
	defb 011h,067h,077h,076h,010h,000h,016h,077h,066h,010h,011h,011h,071h,011h,017h,011h	; 9dd2  .gwv...wf...q...
	defb 011h,017h,011h,011h,001h,066h,077h,061h,000h,000h,016h,077h,066h,010h,011h,011h	; 9de2  .....fwa...wf...
	defb 017h,061h,011h,011h,067h,071h,011h,011h,001h,066h,077h,061h,000h,007h,001h,067h	; 9df2  .a..gq...fwa...g
	defb 061h,017h,001h,011h,011h,011h,011h,011h,011h,011h,011h,010h,071h,016h,076h,010h	; 9e02  a...........q.v.
	defb 070h,000h,001h,066h,066h,011h,006h,001h,011h,011h,000h,001h,011h,011h,010h,060h	; 9e12  p..ff..........`
	defb 011h,066h,066h,010h,000h,077h,001h,016h,076h,076h,010h,076h,060h,007h,077h,060h	; 9e22  .ff..w..vv.v`.w`
	defb 007h,006h,067h,001h,067h,067h,061h,010h,077h,060h,016h,077h,076h,067h,071h,000h	; 9e32  ..g.gga.w`.wvgq.
	defb 077h,000h,000h,000h,000h,077h,000h,017h,076h,067h,077h,061h,006h,001h,067h,077h	; 9e42  w....w..vgwa..gw
	defb 066h,011h,067h,010h,006h,067h,066h,007h,076h,060h,001h,076h,011h,066h,077h,076h	; 9e52  f.g..gf.v`.v.fwv
	defb 010h,001h,077h,067h,061h,000h,011h,000h,000h,060h,007h,077h,000h,000h,000h,011h	; 9e62  ..wga....`.w....
	defb 000h,016h,076h,077h,010h,017h,016h,016h,061h,000h,067h,070h,077h,000h,000h,060h	; 9e72  ..vw....a.gpw..`
	defb 006h,077h,007h,076h,000h,016h,061h,061h,071h,016h,016h,061h,066h,010h,000h,000h	; 9e82  .w.v..aaq..af...
	defb 006h,070h,066h,000h,070h,060h,000h,000h,001h,066h,016h,061h,061h,001h,061h,016h	; 9e92  .pf.p`...f.aa.a.
	defb 011h,061h,000h,067h,000h,007h,000h,000h,000h,000h,076h,000h,016h,011h,061h,016h	; 9ea2  .a.g......v...a.
	defb 010h,000h,010h,001h,000h,010h,000h,000h,007h,070h,000h,000h,000h,070h,000h,000h	; 9eb2  .........p...p..
	defb 001h,000h,010h,001h,000h	; 9ec2

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9ec7..0xa000  (313 bytes)
DATA_9EC7:
	defb 0a5h,055h,055h,055h,054h,04ah,0a4h,044h,044h,0a1h,01ah,044h,044h,015h,051h,044h	; 9ec7  .UUUTJ.DD..DD.QD
	defb 044h,014h,041h,044h,044h,01ah,0a1h,0aah,044h,051h,015h,011h,044h,041h,054h,055h	; 9ed7  D.ADD...DQ..DATU
	defb 055h,055h,055h,05ah,044h,044h,044h,044h,044h,044h,044h,04ah,044h,044h,0aah,04ah	; 9ee7  UUUZDDDDDDDJDD.J
	defb 044h,04ah,011h,04ah,0aah,0a1h,051h,04ah,011h,015h,041h,04ah,0a1h,054h,041h,04ah	; 9ef7  DJ.J..QJ..AJ.TAJ
	defb 044h,041h,044h,04ah,044h,0a1h,0aah,0a1h,044h,011h,011h,011h,04ah,015h,055h,01ah	; 9f07  DADJD...D...J.U.
	defb 041h,014h,044h,051h,045h,054h,044h,045h,0a4h,044h,044h,044h,01ah,0aah,0aah,0aah	; 9f17  A.DQETDE.DDD....
	defb 015h,04ah,0a1h,04ah,0aah,0a1h,011h,04ah,011h,015h,051h,04ah,0aah,01ah,0a1h,04ah	; 9f27  .J.J...J..QJ...J
	defb 011h,011h,011h,04ah,055h,055h,055h,04ah,044h,044h,044h,0a4h,0aah,0aah,0aah,0a1h	; 9f37  ...JUUUJDDD.....
	defb 041h,041h,011h,041h,044h,0a1h,041h,0a1h,044h,011h,011h,011h,04ah,015h,011h,011h	; 9f47  AA.AD.A.D...J...
	defb 011h,014h,0a1h,011h,045h,04ah,01ah,011h,011h,011h,011h,011h,01ah,011h,011h,011h	; 9f57  ....EJ..........
	defb 011h,01ah,011h,01ah,011h,041h,011h,041h,011h,011h,011h,011h,011h,01ah,014h,01ah	; 9f67  .....A.A........
	defb 011h,011h,015h,04ah,011h,011h,045h,041h,011h,011h,014h,014h,011h,011h,011h,011h	; 9f77  ...J..EA........
	defb 0aah,041h,011h,011h,011h,0a1h,011h,011h,09ah,011h,0a1h,011h,0a4h,04ah,011h,011h	; 9f87  .A...........J..
	defb 0aah,045h,0a1h,011h,04ah,0a4h,0aah,01ah,01ah,0aah,0a1h,011h,011h,011h,011h,011h	; 9f97  .E..J...........
	defb 011h,011h,011h,01ah,011h,011h,014h,09ah,011h,011h,044h,0a4h,01ah,011h,014h,0a1h	; 9fa7  ..........D.....
	defb 0a5h,0a1h,041h,011h,04ah,014h,04ah,0a1h,0a1h,0aah,0aah,011h,011h,011h,011h,011h	; 9fb7  ..A.J.J.........
	defb 011h,041h,011h,011h,011h,011h,011h,011h,01ah,011h,011h,011h,0a4h,011h,011h,011h	; 9fc7  .A..............
	defb 011h,01ah,011h,011h,011h,041h,011h,011h,011h,011h,011h,011h,01ah,011h,011h,011h	; 9fd7  .....A..........
	defb 011h,01ah,011h,01ah,011h,04ah,011h,011h,011h,011h,011h,011h,011h,01ah,011h,011h	; 9fe7  .....J..........
	defb 011h,011h,01ah,011h,011h,011h,011h,011h,011h	; 9ff7  .........
