; ==========================================================================
; KING KONG 2: YOMIGAERU DENSETSU - Konami (1986) - MSX - MegaROM RC-745 de 128 KB (Konami4) - banco 05 (se ejecuta en 0x8000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x08000


; ----------------------------------------------------------------------
; DATOS sprites_7FD4_cola: RLE de patrones de sprite (n con el bit 7 = n bytes
;   tal cual; sin el, repetir el siguiente; 0x80 [palabra] sigue en otra
;   direccion; 0 acaba); lista 13 (sigue del banco anterior, 0x7FD4); lo leen
;   p00:45EF (13 bytes)
;   0x8000..0x800d  (13 bytes)
DATA_sprites_7FD4_cola:
	defb 01ch,008h,000h,086h,004h,0e6h,006h,002h,000h,000h,003h,038h,000h	; 8000  ...........8.

; ----------------------------------------------------------------------
; DATOS sprites_800D: RLE de patrones de sprite (n con el bit 7 = n bytes tal
;   cual; sin el, repetir el siguiente; 0x80 [palabra] sigue en otra
;   direccion; 0 acaba); lista 3; lo leen p00:45EF (190 bytes)
;   0x800d..0x80cb  (190 bytes)
DATA_sprites_800D:
	defb 0a0h,000h,003h,007h,003h,00fh,01bh,019h,03ah,039h,07ch,03fh,019h,00bh,011h,017h	; 800d  ........:9|?....
	defb 00bh,0feh,0fbh,0ech,0b3h,0bfh,0feh,0fah,0fch,0b0h,0f8h,078h,0fch,0cch,098h,010h	; 801d  ...........x....
	defb 0b8h,005h,000h,081h,006h,003h,007h,0b7h,003h,000h,007h,007h,00fh,00eh,007h,000h	; 802d  ................
	defb 004h,012h,05eh,048h,000h,004h,000h,0c0h,0c0h,080h,000h,0b8h,070h,0e0h,070h,000h	; 803d  ..^H........p.p.
	defb 003h,007h,00fh,019h,016h,029h,03bh,06dh,0f5h,07fh,05fh,09ch,0b8h,098h,06ch,0feh	; 804d  .....);m.._...l.
	defb 0fbh,0ech,0b3h,0bfh,0feh,0fah,0fch,0f0h,0f8h,0fch,0f2h,06eh,026h,027h,013h,004h	; 805d  ...........n&'..
	defb 000h,093h,006h,00fh,01eh,01ch,01eh,00eh,000h,03ch,078h,070h,070h,018h,000h,004h	; 806d  .........<xpp...
	defb 012h,05eh,048h,000h,004h,004h,000h,0b2h,00ch,01ch,01ch,01eh,00fh,007h,00eh,01fh	; 807d  .^H.............
	defb 01ch,01bh,01dh,02eh,05fh,0bfh,08fh,09ch,07fh,03fh,02ah,03eh,022h,0f0h,038h,07ch	; 808d  ...._....?*>".8|
	defb 09ch,06ch,0dch,03ah,0efh,0f3h,0ffh,039h,0efh,0deh,07ch,044h,03ch,000h,001h,004h	; 809d  .l.:...9..|D<...
	defb 007h,006h,002h,011h,030h,060h,070h,063h,000h,000h,003h,01ch,090h,000h,0c0h,090h	; 80ad  ....0`pc........
	defb 0f0h,0b0h,020h,0cch,016h,00eh,006h,0deh,01ch,020h,000h,038h,000h,000h	; 80bd  .. ...... .8..

; ----------------------------------------------------------------------
; DATOS sprites_80CB: RLE de patrones de sprite (n con el bit 7 = n bytes tal
;   cual; sin el, repetir el siguiente; 0x80 [palabra] sigue en otra
;   direccion; 0 acaba); lista 3; lo leen p00:45EF (83 bytes)
;   0x80cb..0x811e  (83 bytes)
DATA_sprites_80CB:
	defb 002h,000h,08bh,00ch,012h,012h,009h,00ah,004h,005h,002h,002h,001h,001h,009h,000h	; 80cb  ................
	defb 002h,080h,087h,040h,0a0h,0a0h,050h,070h,0f0h,060h,004h,000h,002h,00ch,086h,006h	; 80db  ...@..Pp.`......
	defb 007h,003h,003h,001h,001h,00dh,000h,086h,080h,0c0h,0c0h,0e0h,0e0h,060h,009h,000h	; 80eb  .............`..
	defb 086h,003h,004h,01ah,021h,026h,018h,007h,000h,087h,01ch,06eh,09eh,064h,098h,060h	; 80fb  ....!&.....n.d.`
	defb 080h,00dh,000h,084h,003h,007h,01eh,018h,009h,000h,085h,01ch,07ch,0f8h,0e0h,080h	; 810b  ............|...
	defb 006h,000h,000h	; 811b

; ----------------------------------------------------------------------
; DATOS sprites_811E: RLE de patrones de sprite (n con el bit 7 = n bytes tal
;   cual; sin el, repetir el siguiente; 0x80 [palabra] sigue en otra
;   direccion; 0 acaba); lista 9; lo leen p00:45EF (129 bytes)
;   0x811e..0x819f  (129 bytes)
DATA_sprites_811E:
	defb 0bdh,007h,009h,017h,016h,013h,03fh,053h,0b3h,0cfh,0ffh,097h,0f7h,07bh,03fh,022h	; 811e  ......?S.....{?"
	defb 03ch,0c0h,020h,0d0h,0d0h,098h,0f4h,09ah,09eh,0e6h,0fah,0eeh,0d2h,0bch,0d4h,07ch	; 812e  <. ............|
	defb 054h,000h,007h,00fh,009h,00dh,00bh,02ch,06fh,074h,063h,078h,03bh,005h,000h,01ch	; 813e  T......,otcx;...
	defb 000h,000h,0c0h,0e0h,020h,060h,0a8h,06ch,0ech,05ch,08ch,01ch,0ach,040h,003h,038h	; 814e  .... `.l.\...@.8
	defb 0bdh,007h,008h,012h,017h,018h,026h,05fh,0b7h,0d7h,0b3h,0b8h,07fh,03fh,027h,022h	; 815e  ......&_.....?'"
	defb 01ch,0c0h,020h,090h,0d0h,02ch,0eah,0ceh,0d6h,0d6h,09ah,03ch,0f8h,0e4h,0d4h,07ch	; 816e  .. ..,.....<...|
	defb 054h,000h,007h,00fh,008h,007h,01fh,03fh,06fh,06fh,04fh,047h,000h,000h,018h,01ch	; 817e  T......?ooOG....
	defb 000h,000h,0c0h,0e0h,020h,0d0h,0fch,0fch,0ech,0ech,0e4h,0c0h,000h,018h,003h,038h	; 818e  .... ..........8
	defb 000h	; 819e

; ----------------------------------------------------------------------
; DATOS sprites_819F: RLE de patrones de sprite (n con el bit 7 = n bytes tal
;   cual; sin el, repetir el siguiente; 0x80 [palabra] sigue en otra
;   direccion; 0 acaba); lista 0; lo leen p00:45EF (366 bytes)
;   0x819f..0x830d  (366 bytes)
DATA_sprites_819F:
	defb 09fh,000h,001h,021h,052h,07eh,074h,03bh,019h,016h,017h,039h,026h,01fh,00dh,003h	; 819f  ...!R~t;...9&...
	defb 000h,080h,040h,042h,0a5h,03fh,017h,06eh,0cch,0b4h,0f4h,0ceh,0b2h,0fch,0d8h,0e0h	; 81af  ..@B.?.n........
	defb 004h,000h,08bh,021h,023h,03bh,01dh,007h,009h,008h,017h,019h,00ah,003h,003h,000h	; 81bf  ...!#;..........
	defb 002h,080h,08bh,0c2h,0e2h,0eeh,0dch,0f0h,0c8h,088h,0f4h,0cch,028h,0e0h,004h,000h	; 81cf  ............(...
	defb 09eh,001h,022h,07fh,073h,038h,016h,017h,019h,03eh,027h,01fh,00fh,005h,003h,000h	; 81df  ..".s8...>'.....
	defb 080h,040h,0a2h,07dh,0e7h,08eh,0b4h,0f4h,0cch,0beh,0f2h,0fch,0f8h,0d0h,0e0h,003h	; 81ef  .@.}............
	defb 000h,08ch,001h,023h,03dh,017h,009h,008h,00fh,011h,018h,008h,002h,003h,003h,000h	; 81ff  ...#=...........
	defb 0adh,080h,0c0h,0e2h,0deh,0f4h,0c8h,088h,0f8h,0c4h,00ch,008h,020h,0e0h,000h,000h	; 820f  ............ ...
	defb 001h,021h,053h,07eh,074h,039h,01bh,015h,017h,03fh,027h,01fh,00fh,003h,000h,080h	; 821f  .!S~t9...?'.....
	defb 040h,042h,0e5h,0bfh,017h,04eh,0ech,0d4h,0f4h,0feh,0f2h,0fch,0f8h,0e0h,004h,000h	; 822f  @B...N..........
	defb 08ah,020h,023h,03bh,01fh,007h,00eh,008h,010h,018h,008h,004h,000h,002h,080h,08ah	; 823f  . #;............
	defb 082h,062h,0eeh,0fch,0f0h,038h,008h,004h,00ch,008h,004h,000h,08dh,020h,051h,07ah	; 824f  .b...8....... Qz
	defb 06eh,05bh,02ch,018h,011h,01bh,035h,02fh,01fh,007h,003h,000h,08dh,082h,045h,0afh	; 825f  n[,...5/......E.
	defb 0bbh,06dh,09ah,00ch,044h,0ech,0d6h,0fah,0fch,0f0h,004h,000h,08ah,020h,021h,031h	; 826f  .m..D........ !1
	defb 03eh,01bh,007h,00fh,00fh,01eh,010h,006h,000h,08ah,082h,0c2h,0c6h,0beh,06ch,0f0h	; 827f  >.............l.
	defb 0f8h,0f8h,03ch,004h,006h,000h,09ch,003h,04dh,0f1h,0b2h,0a3h,05ah,09dh,0f9h,0e1h	; 828f  ..<.....M...Z...
	defb 0dbh,06fh,07eh,03fh,000h,03ch,0e8h,090h,0d0h,0c8h,0e8h,094h,024h,068h,0d8h,0d8h	; 829f  .o~?.<......$h..
	defb 090h,020h,0c0h,005h,000h,08bh,002h,04eh,05dh,07fh,03fh,063h,046h,07eh,065h,013h	; 82af  . .....N].?cF~e.
	defb 037h,003h,000h,08ch,030h,060h,0a0h,0b0h,0d0h,0e8h,0d8h,090h,020h,0f0h,0e0h,0c0h	; 82bf  7...0`...... ...
	defb 005h,000h,09ch,013h,01ch,039h,073h,059h,05eh,0f9h,0e1h,0dbh,0ffh,077h,06eh,077h	; 82cf  .....9sY^....wnw
	defb 03eh,000h,020h,0f0h,0eeh,0e1h,0aah,054h,024h,068h,0d8h,0d8h,090h,020h,0c0h,005h	; 82df  >. ....T$h... ..
	defb 000h,08ch,003h,00eh,03dh,03fh,023h,047h,07eh,064h,001h,00bh,017h,038h,004h,000h	; 82ef  ....=?#G~d...8..
	defb 08ah,050h,0deh,0d4h,0a8h,0d8h,090h,020h,0f0h,0e0h,0c0h,003h,000h,000h	; 82ff  .P..... ......

; ----------------------------------------------------------------------
; DATOS sprites_830D: RLE de patrones de sprite (n con el bit 7 = n bytes tal
;   cual; sin el, repetir el siguiente; 0x80 [palabra] sigue en otra
;   direccion; 0 acaba); lista 10; lo leen p00:45EF (301 bytes)
;   0x830d..0x843a  (301 bytes)
DATA_sprites_830D:
	defb 003h,000h,08ah,003h,007h,00ch,019h,01bh,01bh,019h,00ch,007h,003h,006h,000h,08ah	; 830d  ................
	defb 0c0h,0e0h,030h,098h,0d8h,0d8h,098h,030h,0e0h,0c0h,007h,000h,088h,003h,007h,00eh	; 831d  ..0....0........
	defb 00dh,00dh,00eh,007h,003h,008h,000h,088h,0c0h,0e0h,070h,0b0h,0b0h,070h,0e0h,0c0h	; 832d  ..........p..p..
	defb 004h,000h,0aeh,003h,007h,00fh,03fh,04fh,0a9h,0feh,0dbh,09eh,0bfh,06fh,03fh,013h	; 833d  ......?O.....o?.
	defb 01dh,00eh,000h,0e0h,0f0h,0f8h,0fch,0fah,0ceh,0bbh,0efh,0b9h,0f9h,0fdh,0f6h,09ch	; 834d  ................
	defb 004h,0bch,07ch,000h,002h,005h,002h,030h,076h,045h,065h,061h,070h,030h,000h,00ch	; 835d  ..|....0vEeap0..
	defb 00eh,003h,000h,0cdh,020h,050h,020h,084h,034h,0d6h,052h,0c6h,006h,00eh,00ch,070h	; 836d  .... P .4.R....p
	defb 0f8h,078h,080h,007h,00eh,00fh,01fh,024h,061h,0d8h,0f0h,097h,0dfh,09fh,077h,023h	; 837d  .x.....$a.....w#
	defb 039h,03dh,01fh,0e0h,030h,0f0h,03ch,072h,00dh,017h,015h,0d9h,0f2h,0fch,0f8h,0c8h	; 838d  9=..0.<r........
	defb 0a8h,070h,000h,000h,001h,000h,003h,01fh,03eh,067h,06fh,068h,060h,060h,008h,01ch	; 839d  .p......>goh``..
	defb 01eh,002h,021h,000h,0c0h,000h,0c0h,0fch,0feh,0feh,0eeh,026h,00ch,000h,000h,030h	; 83ad  ..!........&...0
	defb 070h,003h,000h,0aeh,01fh,037h,07bh,077h,0f9h,0fch,0d5h,0edh,0dfh,07fh,006h,007h	; 83bd  p....7{w........
	defb 00eh,01ch,01fh,000h,000h,080h,0c0h,0f8h,03ch,0eeh,0ceh,07eh,07eh,0fch,036h,067h	; 83cd  ........<..~~.6g
	defb 071h,0a6h,09ch,000h,000h,018h,02ch,018h,046h,00fh,06eh,033h,063h,000h,001h,003h	; 83dd  q.....,.F.n3c...
	defb 007h,00fh,004h,000h,002h,080h,0b5h,0e0h,070h,0f0h,0e0h,080h,000h,0cch,09eh,08eh	; 83ed  ........p.......
	defb 018h,000h,00fh,01bh,03dh,03bh,07ch,07eh,06ah,075h,06eh,03fh,007h,001h,000h,000h	; 83fd  ....=;|~jun?....
	defb 001h,001h,080h,0c0h,0e0h,0f0h,0bch,05eh,0f6h,0e6h,0beh,0beh,0dch,018h,0cch,0e4h	; 840d  .......^........
	defb 0cch,0f8h,000h,00ch,016h,00ch,023h,007h,037h,01ah,031h,001h,008h,000h,003h,040h	; 841d  ......#.7.1....@
	defb 08bh,0b0h,038h,078h,0f0h,0c0h,020h,0f0h,070h,078h,0f0h,000h,000h	; 842d  ..8x.. .px...

; ----------------------------------------------------------------------
; DATOS sprites_843A: RLE de patrones de sprite (n con el bit 7 = n bytes tal
;   cual; sin el, repetir el siguiente; 0x80 [palabra] sigue en otra
;   direccion; 0 acaba); lista 1; lo leen p00:45EF (259 bytes)
;   0x843a..0x853d  (259 bytes)
DATA_sprites_843A:
	defb 0ffh,00fh,010h,029h,040h,085h,0b5h,08ah,0c7h,0a7h,0d3h,08dh,0a3h,04ch,027h,01bh	; 843a  ...)@........L'.
	defb 00fh,0f0h,008h,064h,012h,049h,0e5h,0f7h,0bfh,0cdh,055h,02fh,07fh,0eeh,0dch,078h	; 844a  ...d.I....U/...x
	defb 0f0h,000h,00fh,01fh,03fh,07bh,06fh,07fh,07dh,05fh,03eh,07bh,05ch,033h,018h,004h	; 845a  ....?{o.}_>{\3..
	defb 000h,000h,0f0h,0b8h,0fch,0f6h,0fah,0a8h,0d0h,072h,0eah,0d0h,080h,010h,020h,080h	; 846a  .........r.... .
	defb 000h,00fh,010h,021h,042h,094h,0b5h,083h,09fh,081h,0a4h,0abh,086h,054h,02bh,01dh	; 847a  ...!B........T+.
	defb 00fh,0f0h,008h,024h,092h,051h,0b5h,0e9h,035h,0e5h,0d5h,0cbh,0bfh,0d6h,0fch,078h	; 848a  ...$.Q..5......x
	defb 0f0h,000h,00fh,01eh,03fh,07fh,06bh,07fh,075h,07eh,05fh,057h,079h,02bh,014h,002h	; 849a  ....?.k.u~_Wy+..
	defb 000h,000h,0f0h,0d8h,0ech,0feh,0eah,07eh,0feh,0fah,0aah,074h,0c0h,028h,000h,080h	; 84aa  .......~...t.(..
	defb 0ffh,000h,00fh,011h,024h,041h,096h,0ach,0e8h,0ffh,0fdh,0eah,0fdh,0b6h,07fh,02fh	; 84ba  ....$A........./
	defb 01bh,00fh,0f0h,008h,044h,022h,089h,0b5h,0c9h,0f1h,0f5h,055h,0bbh,0adh,0dah,0bch	; 84ca  ....D".....U....
	defb 0c8h,0f0h,000h,00fh,01fh,03fh,06dh,05bh,017h,006h,00bh,015h,007h,04bh,000h,010h	; 84da  .....?m[.....K..
	defb 004h,000h,000h,0f0h,0f8h,0dch,07eh,0deh,07eh,0feh,0bah,0fah,06ch,0d2h,02ch,040h	; 84ea  ......~.~...l.,@
	defb 030h,000h,00fh,010h,025h,049h,086h,093h,092h,0a5h,0d7h,0ebh,0bdh,0f7h,06fh,03fh	; 84fa  0...%I........o?
	defb 01bh,00fh,0f0h,008h,024h,092h,0d1h,069h,0f1h,095h,0f5h,0d3h,0adh,0fbh,0b2h,0ech	; 850a  ....$..i........
	defb 0f8h,0f0h,000h,00fh,01ah,037h,07dh,06eh,07dh,05fh,07fh,01eh,057h,00ah,010h,000h	; 851a  .....7}n}_..W...
	defb 004h,000h,000h,0f0h,0d8h,0ech,07eh,0deh,0eeh,07ah,0aah,0fch,0d2h,024h,04ch,010h	; 852a  ......~..z...$L.
	defb 002h,000h,000h	; 853a

; ----------------------------------------------------------------------
; DATOS sprites_853D: RLE de patrones de sprite (n con el bit 7 = n bytes tal
;   cual; sin el, repetir el siguiente; 0x80 [palabra] sigue en otra
;   direccion; 0 acaba); lista 19; lo leen p00:45EF (311 bytes)
;   0x853d..0x8674  (311 bytes)
DATA_sprites_853D:
	defb 09eh,000h,003h,004h,00ah,008h,00dh,007h,000h,018h,034h,062h,059h,07ch,07eh,03fh	; 853d  ..........4bY|~?
	defb 00ch,000h,000h,080h,040h,0c0h,080h,030h,068h,0cch,0c4h,078h,030h,080h,080h,004h	; 854d  ....@..0h..x0...
	defb 000h,084h,003h,007h,007h,002h,003h,000h,085h,008h,01ch,02eh,007h,001h,005h,000h	; 855d  ................
	defb 081h,080h,003h,000h,083h,010h,030h,018h,006h,000h,0eeh,007h,00fh,00fh,03eh,05dh	; 856d  ......0.......>]
	defb 07dh,0dbh,0f7h,09fh,09fh,0bfh,06fh,039h,020h,03dh,03eh,0c0h,0e0h,0f0h,0fch,072h	; 857d  }.....o9 =>....r
	defb 075h,0bfh,0dbh,0f9h,0fdh,0f6h,0fch,0c8h,0b8h,070h,000h,000h,003h,001h,005h,023h	; 858d  u........p.....#
	defb 02bh,06ch,04bh,060h,063h,070h,030h,00eh,01fh,01eh,001h,000h,080h,000h,040h,08ch	; 859d  +lK`cp0.......@.
	defb 0aeh,062h,0a6h,006h,08eh,00ch,000h,030h,070h,000h,000h,007h,00dh,008h,03ch,04eh	; 85ad  .b.....0p.....<N
	defb 0b0h,0e8h,0a8h,09bh,04fh,03fh,01fh,013h,015h,00eh,000h,0c0h,060h,0a0h,0d8h,024h	; 85bd  ....O?......`..$
	defb 086h,01bh,00fh,0e9h,0fbh,0f9h,0eeh,0c4h,09ch,0bch,0f8h,000h,003h,007h,003h,03fh	; 85cd  ...............?
	defb 07fh,07fh,077h,064h,030h,000h,000h,00ch,00eh,003h,000h,0beh,080h,0c0h,0e0h,0f8h	; 85dd  ..wd0...........
	defb 07ch,0e6h,0f6h,016h,006h,006h,010h,038h,078h,040h,084h,000h,01fh,03bh,07fh,07bh	; 85ed  |......8x@...;.{
	defb 0feh,0ddh,077h,0edh,0ffh,0efh,07ah,007h,00eh,01ch,01fh,000h,000h,080h,0c0h,0f8h	; 85fd  ..w...z.........
	defb 0bch,0eeh,0ceh,07eh,07eh,0fch,036h,067h,071h,0a6h,09ch,000h,000h,01ch,020h,00ch	; 860d  ...~~.6gq..... .
	defb 041h,06eh,00ch,073h,003h,070h,085h,003h,007h,00fh,004h,000h,002h,080h,0b6h,060h	; 861d  An.s.p.........`
	defb 070h,0f0h,0e0h,080h,000h,0cch,09eh,08eh,018h,000h,00fh,01dh,03fh,03dh,07fh,06eh	; 862d  p...........?=.n
	defb 03ah,075h,07eh,077h,03fh,001h,000h,000h,001h,001h,080h,0c0h,0e0h,0f0h,03ch,05eh	; 863d  :u~w?.........<^
	defb 0f6h,0e6h,0beh,0beh,0dch,018h,0cch,0e4h,0cch,0f8h,000h,00eh,010h,006h,020h,037h	; 864d  .............. 7
	defb 007h,03ah,001h,039h,040h,007h,000h,002h,040h,08ch,0c0h,0b0h,038h,078h,0f0h,0c0h	; 865d  .:.9@...@...8x..
	defb 020h,0f0h,070h,078h,0f0h,000h,000h	; 866d

; ----------------------------------------------------------------------
; DATOS sprites_8674: RLE de patrones de sprite (n con el bit 7 = n bytes tal
;   cual; sin el, repetir el siguiente; 0x80 [palabra] sigue en otra
;   direccion; 0 acaba); lista 6; lo leen p00:45EF (250 bytes)
;   0x8674..0x876e  (250 bytes)
DATA_sprites_8674:
	defb 0eeh,013h,035h,03bh,02fh,012h,013h,019h,01dh,02bh,03ch,039h,03ah,019h,01dh,00fh	; 8674  ..5;/....+<9:...
	defb 003h,0c8h,0ach,0dch,0f4h,048h,0c8h,098h,0b8h,0d4h,03ch,09ch,05ch,098h,0b8h,0f0h	; 8684  .....H....<.\...
	defb 0c0h,000h,003h,017h,019h,00dh,00fh,00eh,003h,01ch,01fh,01eh,00dh,00eh,006h,002h	; 8694  ................
	defb 000h,000h,0c0h,0e8h,098h,0b0h,0f0h,070h,0c0h,038h,0f8h,078h,0b0h,070h,060h,040h	; 86a4  .......p.8.x.p`@
	defb 000h,013h,035h,03bh,02fh,012h,013h,01fh,01fh,02dh,03bh,031h,032h,035h,01ch,018h	; 86b4  ..5;/....-;125..
	defb 008h,0c8h,0ach,0dch,0f4h,048h,0c8h,0f8h,0f8h,0b4h,0dch,08ch,04ch,0ach,038h,018h	; 86c4  .....H......L.8.
	defb 010h,000h,003h,017h,019h,00dh,00fh,00ah,004h,01bh,01ch,01eh,01dh,018h,008h,003h	; 86d4  ................
	defb 000h,08dh,0c0h,0e8h,098h,0b0h,0f0h,050h,020h,0d8h,038h,078h,0b8h,018h,010h,004h	; 86e4  .......P .8x....
	defb 000h,08dh,013h,035h,03bh,02fh,012h,037h,07fh,07fh,0e7h,0e3h,0d9h,0e6h,041h,003h	; 86f4  ...5;/.7......A.
	defb 000h,08dh,0c8h,0ach,0dch,0f4h,048h,0ech,0feh,0feh,0e7h,0c7h,09bh,067h,082h,004h	; 8704  ......H......g..
	defb 000h,08bh,003h,017h,019h,00dh,00fh,02ah,034h,07ah,07dh,066h,041h,005h,000h,08bh	; 8714  .......*4z}fA...
	defb 0c0h,0e8h,098h,0b0h,0f0h,054h,02ch,05eh,0beh,066h,082h,004h,000h,08dh,003h,017h	; 8724  .....T,^.f......
	defb 02fh,02ah,017h,037h,07fh,07fh,0e7h,0c3h,0c9h,076h,021h,003h,000h,08dh,0c0h,0e8h	; 8734  /*.7.....v!.....
	defb 0f4h,054h,0e8h,0ech,0feh,0feh,0e7h,0c3h,093h,06eh,084h,004h,000h,08bh,003h,011h	; 8744  .T.......n......
	defb 01dh,00fh,00ah,028h,034h,07ah,07dh,076h,021h,005h,000h,08dh,0c0h,088h,0b8h,0f0h	; 8754  ...(4z}v!.......
	defb 050h,014h,02ch,05eh,0beh,06eh,084h,000h,000h,000h	; 8764  P.,^.n....

; ----------------------------------------------------------------------
; DATOS sprites_876E: RLE de patrones de sprite (n con el bit 7 = n bytes tal
;   cual; sin el, repetir el siguiente; 0x80 [palabra] sigue en otra
;   direccion; 0 acaba); lista 17; lo leen p00:45EF (129 bytes)
;   0x876e..0x87ef  (129 bytes)
DATA_sprites_876E:
	defb 0afh,00fh,01fh,02eh,03fh,03ch,02fh,016h,03fh,076h,0fbh,0edh,087h,04fh,039h,03ah	; 876e  ....?</.?v...O9:
	defb 01ch,0c0h,0e0h,070h,010h,0f0h,060h,0d0h,0e8h,068h,078h,0f8h,0e4h,056h,02ah,034h	; 877e  ...p..`..hx..V*4
	defb 018h,000h,000h,011h,004h,017h,013h,00fh,000h,039h,077h,077h,07ah,030h,006h,01ch	; 878e  .........9wwz0..
	defb 003h,000h,0bch,080h,0e0h,0a0h,080h,060h,0f0h,0d0h,080h,000h,038h,03ch,01ch,018h	; 879e  .......`....8<..
	defb 000h,007h,00fh,017h,01fh,01eh,017h,00bh,03fh,076h,0fdh,0efh,085h,04fh,03ch,007h	; 87ae  ........?v...O<.
	defb 000h,0e0h,0f0h,038h,088h,078h,0b0h,068h,0f4h,034h,024h,0fch,0f8h,094h,0f4h,088h	; 87be  ...8.x.h.4$.....
	defb 0f0h,000h,000h,008h,002h,00bh,009h,007h,000h,039h,077h,077h,07ah,030h,003h,004h	; 87ce  .........9wwz0..
	defb 000h,08eh,0c0h,070h,0d0h,0c0h,0b0h,078h,0e8h,0d8h,000h,000h,078h,038h,070h,000h	; 87de  ...p...x....x8p.
	defb 000h	; 87ee

; ----------------------------------------------------------------------
; DATOS sprites_87EF: RLE de patrones de sprite (n con el bit 7 = n bytes tal
;   cual; sin el, repetir el siguiente; 0x80 [palabra] sigue en otra
;   direccion; 0 acaba); lista 17; lo leen p00:45EF (121 bytes)
;   0x87ef..0x8868  (121 bytes)
DATA_sprites_87EF:
	defb 092h,00fh,01fh,02fh,03fh,03bh,033h,016h,02ch,059h,0f3h,0ffh,08fh,059h,032h,072h	; 87ef  .../?;3.,Y...Y2r
	defb 07ch,0c0h,0e0h,003h,0f0h,09ah,0e0h,0d0h,068h,028h,0f8h,0f8h,0dch,04ah,032h,024h	; 87ff  |.......h(...J2$
	defb 018h,000h,000h,010h,014h,01ch,01eh,009h,017h,03eh,05ch,060h,070h,02eh,01ch,03ch	; 880f  .........>\`p..<
	defb 007h,000h,09ch,0e0h,0f0h,0f0h,000h,000h,038h,03ch,01ch,018h,000h,007h,00fh,017h	; 881f  ........8<......
	defb 01fh,01dh,019h,00bh,01eh,03dh,07eh,075h,05fh,02eh,01ch,007h,000h,0e0h,0f0h,003h	; 882f  .....=~u_.......
	defb 0f8h,099h,0f0h,068h,034h,014h,0fch,0fch,0f8h,074h,0c4h,088h,0d0h,000h,000h,008h	; 883f  ...h4....t......
	defb 00ah,00eh,00fh,004h,001h,013h,02fh,02eh,030h,019h,003h,008h,000h,083h,0f0h,0f8h	; 884f  ....../.0.......
	defb 0f8h,003h,000h,084h,098h,038h,070h,020h,000h	; 885f  .....8p .

; ----------------------------------------------------------------------
; DATOS sprites_8868: RLE de patrones de sprite (n con el bit 7 = n bytes tal
;   cual; sin el, repetir el siguiente; 0x80 [palabra] sigue en otra
;   direccion; 0 acaba); lista 17; lo leen p00:45EF (212 bytes)
;   0x8868..0x893c  (212 bytes)
DATA_sprites_8868:
	defb 002h,000h,08ch,003h,004h,008h,011h,011h,010h,011h,011h,008h,006h,007h,003h,004h	; 8868  ................
	defb 000h,08ch,0e0h,010h,008h,004h,004h,024h,024h,004h,008h,030h,0f0h,0e0h,005h,000h	; 8878  .......$$..0....
	defb 089h,003h,007h,00eh,00fh,00fh,00eh,00fh,007h,001h,007h,000h,089h,0e0h,0f0h,0f8h	; 8888  ................
	defb 0f8h,0d8h,0f8h,0f8h,0f0h,0c0h,006h,000h,08ch,003h,004h,008h,011h,010h,014h,014h	; 8898  ................
	defb 010h,008h,004h,007h,003h,004h,000h,08ch,0e0h,010h,0c8h,064h,0b4h,014h,014h,084h	; 88a8  ...........d....
	defb 088h,010h,0f0h,0e0h,005h,000h,089h,003h,007h,00fh,00fh,00bh,00fh,00fh,007h,003h	; 88b8  ................
	defb 007h,000h,082h,0e0h,0f0h,004h,0f8h,083h,078h,0f0h,0e0h,006h,000h,08ch,003h,004h	; 88c8  ........x.......
	defb 008h,010h,013h,011h,012h,014h,00ch,006h,007h,003h,004h,000h,08ch,0e0h,010h,008h	; 88d8  ................
	defb 004h,044h,0c4h,0c4h,024h,088h,030h,0f0h,0e0h,005h,000h,082h,003h,007h,004h,00fh	; 88e8  .D..$.0.........
	defb 083h,00bh,007h,001h,007h,000h,082h,0e0h,0f0h,005h,0f8h,082h,0f0h,0c0h,006h,000h	; 88f8  ................
	defb 08ch,003h,004h,008h,010h,010h,014h,010h,016h,00bh,006h,007h,003h,004h,000h,08ch	; 8908  ................
	defb 0e0h,010h,088h,094h,014h,004h,084h,004h,088h,030h,0f0h,0e0h,005h,000h,082h,003h	; 8918  .........0......
	defb 007h,005h,00fh,082h,007h,001h,007h,000h,083h,0e0h,070h,0e8h,004h,0f8h,082h,0f0h	; 8928  ..........p.....
	defb 0c0h,004h,000h,000h	; 8938

; ----------------------------------------------------------------------
; DATOS sprites_893C: RLE de patrones de sprite (n con el bit 7 = n bytes tal
;   cual; sin el, repetir el siguiente; 0x80 [palabra] sigue en otra
;   direccion; 0 acaba); lista 8; lo leen p00:45EF (378 bytes)
;   0x893c..0x8ab6  (378 bytes)
DATA_sprites_893C:
	defb 083h,0ffh,09dh,01dh,003h,01fh,085h,03eh,07ch,074h,074h,024h,003h,02dh,084h,080h	; 893c  .......>|tt$.-..
	defb 07fh,0ffh,070h,003h,071h,083h,0fdh,0ddh,0fdh,003h,0f1h,0e4h,0ddh,09dh,09dh,002h	; 894c  ..p.q...........
	defb 0feh,07fh,0e2h,0e2h,0e4h,0f0h,0e1h,0c3h,08bh,08bh,0dbh,0dbh,0d2h,0d2h,0ffh,07fh	; 895c  ................
	defb 000h,0feh,08fh,08eh,0aeh,08eh,022h,022h,04eh,08eh,00eh,02eh,062h,062h,0feh,0fdh	; 896c  ......""N...bb..
	defb 000h,097h,011h,07dh,0e7h,03fh,07fh,00eh,06fh,07eh,03eh,07ch,0dfh,0bdh,04dh,080h	; 897c  ...}.?..o~>|..M.
	defb 05ch,0ffh,0f8h,075h,076h,07ah,0fdh,0ddh,0fdh,0f2h,0f4h,0fah,0ddh,09dh,0bdh,012h	; 898c  \..uvz..........
	defb 07eh,07fh,0eeh,0a2h,018h,000h,001h,031h,010h,001h,001h,003h,020h,042h,097h,06eh	; 899c  ~......1.... B.n
	defb 000h,0fah,007h,08ah,0a8h,084h,022h,022h,04eh,08ch,008h,024h,062h,062h,0d6h,0edh	; 89ac  ......""N..$bb..
	defb 042h,000h,087h,00fh,010h,027h,048h,050h,056h,056h,006h,052h,099h,053h,051h,000h	; 89bc  B....'HPVV.R.SQ.
	defb 0ffh,000h,0ffh,000h,000h,032h,037h,027h,0a5h,0a7h,0a6h,0a7h,0a7h,0e5h,0c7h,007h	; 89cc  .....27'........
	defb 01fh,03fh,078h,077h,0efh,0e9h,007h,0edh,082h,0eeh,0efh,003h,0ffh,0adh,000h,0ffh	; 89dc  .?xw............
	defb 0ffh,0cdh,0d8h,05ah,05ah,059h,05bh,058h,05ah,03ah,07ch,000h,0ffh,000h,0ffh,000h	; 89ec  ...ZZY[XZ:|.....
	defb 000h,002h,04fh,069h,06fh,048h,04fh,0cfh,031h,077h,0ech,000h,0f0h,008h,0e4h,012h	; 89fc  ..OioHO.1w......
	defb 00ah,00ah,02ah,0eah,0eah,00ah,0cah,0cah,04ah,04ah,00ah,003h,0ffh,0a1h,000h,0ffh	; 8a0c  ..*.....JJ......
	defb 0ffh,0fdh,0b0h,096h,0b0h,0b7h,0b0h,03eh,0ceh,098h,033h,0e0h,0f8h,0fch,01eh,0eeh	; 8a1c  .......>..3.....
	defb 0f7h,0f7h,0d7h,017h,0f7h,0f7h,037h,0b7h,0b7h,0f7h,0f7h,051h,055h,057h,056h,003h	; 8a2c  ......7....QUWV.
	defb 051h,0b3h,048h,025h,093h,048h,027h,010h,008h,007h,000h,0c3h,0d1h,0f1h,0b7h,0c7h	; 8a3c  Q.H%.H'.........
	defb 0c4h,081h,044h,0cdh,0ffh,000h,0ffh,000h,000h,0ffh,000h,0eeh,0ebh,0e8h,0efh,0eeh	; 8a4c  ..D.............
	defb 0efh,0eeh,0f7h,0fbh,07ch,0bfh,0dfh,06fh,037h,018h,007h,03eh,06eh,00eh,078h,03bh	; 8a5c  ....|..o7..>n.x;
	defb 0ffh,07eh,0bbh,0ffh,000h,004h,0ffh,095h,000h,0ffh,04fh,0c9h,04fh,0eah,0eah,02ah	; 8a6c  .~........O.O..*
	defb 020h,0b2h,0f2h,0ffh,000h,0ffh,000h,000h,0ffh,000h,00ah,08ah,0eah,003h,0aah,094h	; 8a7c   ...............
	defb 08ah,012h,0a4h,0c9h,012h,0e4h,008h,010h,0e0h,000h,0f0h,036h,0b1h,015h,0d5h,0ffh	; 8a8c  ...........6....
	defb 0dfh,04dh,0ffh,000h,004h,0ffh,092h,000h,0ffh,0f7h,077h,017h,057h,057h,0f7h,077h	; 8a9c  .M........w.WW.w
	defb 06fh,0dfh,03eh,0fdh,0fbh,0f6h,0ech,018h,0e0h,000h	; 8aac  o.>.......

; ----------------------------------------------------------------------
; DATOS sprites_8AB6: RLE de patrones de sprite (n con el bit 7 = n bytes tal
;   cual; sin el, repetir el siguiente; 0x80 [palabra] sigue en otra
;   direccion; 0 acaba); lista 2; lo leen p00:45EF (367 bytes)
;   0x8ab6..0x8c25  (367 bytes)
DATA_sprites_8AB6:
	defb 0bfh,01bh,025h,03bh,037h,02fh,05fh,0afh,0a4h,058h,017h,014h,00ah,01ah,034h,028h	; 8ab6  ..%;7/_..X....4(
	defb 010h,0d8h,0a4h,0dch,0ech,0f4h,0fah,0f5h,025h,01ah,0e8h,028h,050h,058h,02ch,014h	; 8ac6  ........%..(PX,.
	defb 008h,000h,01ah,015h,00fh,01ch,030h,053h,05fh,007h,008h,008h,004h,00ch,018h,010h	; 8ad6  ......0S_.......
	defb 000h,000h,058h,0a8h,0f0h,038h,00ch,0cah,0fah,0e0h,010h,010h,020h,030h,018h,008h	; 8ae6  ..X..8...... 0..
	defb 004h,000h,08dh,01bh,025h,03bh,037h,02fh,05fh,0afh,0a7h,05bh,017h,079h,0f2h,0fch	; 8af6  ....%;7/_..[.y..
	defb 003h,000h,08dh,0d8h,0a4h,0dch,0ech,0f4h,0fah,0f5h,0e5h,0dah,0e8h,09eh,04fh,03fh	; 8b06  ..............O?
	defb 004h,000h,08bh,01ah,015h,00fh,01ch,030h,050h,05ch,007h,008h,006h,07ch,005h,000h	; 8b16  .......0P\...|..
	defb 0cbh,058h,0a8h,0f0h,038h,00ch,00ah,03ah,0e0h,010h,060h,03eh,000h,01bh,024h,03bh	; 8b26  .X..8..:..`>..$;
	defb 034h,020h,040h,0a0h,0a0h,058h,017h,014h,00ah,016h,02ch,038h,010h,0d8h,024h,0dch	; 8b36  4 @..X....,8..$.
	defb 02ch,004h,002h,005h,005h,01ah,0e8h,028h,050h,068h,034h,01ch,008h,000h,01bh,017h	; 8b46  ,......(Ph4.....
	defb 00fh,01fh,03fh,05fh,05fh,007h,008h,008h,004h,00ch,018h,010h,000h,000h,0d8h,0e8h	; 8b56  ..?__...........
	defb 0f0h,0f8h,0fch,0fah,0fah,0e0h,010h,010h,020h,030h,018h,008h,004h,000h,08dh,01bh	; 8b66  ........ 0......
	defb 024h,03bh,034h,020h,040h,0a0h,0a0h,058h,017h,079h,082h,0fch,003h,000h,08dh,0d8h	; 8b76  $;4 @..X.y......
	defb 024h,0dch,02ch,004h,002h,005h,005h,01ah,0e8h,09eh,041h,03fh,004h,000h,08bh,01bh	; 8b86  $.,.......A?....
	defb 017h,00fh,01fh,03fh,05fh,05fh,007h,008h,006h,07ch,005h,000h,08bh,0d8h,0e8h,0f0h	; 8b96  ...?__...|......
	defb 0f8h,0fch,0fah,0fah,0e0h,010h,060h,03eh,004h,000h,08dh,018h,027h,075h,0f8h,0b8h	; 8ba6  ......`>....'u..
	defb 06ch,036h,05dh,0f1h,073h,00fh,006h,00dh,004h,000h,08ch,0e0h,070h,018h,004h,002h	; 8bb6  l6].s.......p...
	defb 0c1h,061h,081h,032h,09ch,004h,0f8h,004h,000h,08ch,018h,01ah,047h,077h,01bh,00dh	; 8bc6  .a.2........Gw..
	defb 032h,06eh,00ch,000h,003h,006h,005h,000h,097h,0e0h,0f0h,0f8h,0fch,03eh,0feh,0feh	; 8bd6  2n...........>..
	defb 0cch,060h,0f8h,000h,018h,027h,075h,0f8h,0b8h,06ch,037h,05ch,0f4h,073h,00ch,003h	; 8be6  .`...'u..l7\.s..
	defb 005h,000h,09ah,0e0h,070h,018h,004h,082h,022h,042h,084h,008h,044h,0e6h,019h,032h	; 8bf6  ....p..."B..D..2
	defb 06ch,070h,000h,018h,01ah,047h,077h,01bh,00ch,033h,06bh,00ch,003h,007h,000h,08eh	; 8c06  lp...Gw..3k.....
	defb 0e0h,0f0h,0f8h,07ch,0dch,0bch,078h,0f0h,0b8h,018h,00eh,01ch,030h,000h,000h	; 8c16  ...|..x.....0..

; ----------------------------------------------------------------------
; DATOS sprites_8C25: RLE de patrones de sprite (n con el bit 7 = n bytes tal
;   cual; sin el, repetir el siguiente; 0x80 [palabra] sigue en otra
;   direccion; 0 acaba); lista 26; lo leen p00:45EF (191 bytes)
;   0x8c25..0x8ce4  (191 bytes)
DATA_sprites_8C25:
	defb 004h,000h,09ch,002h,007h,019h,02eh,013h,009h,016h,023h,019h,012h,00fh,00ah,00fh	; 8c25  ..........#.....
	defb 013h,026h,04bh,04ch,09fh,099h,08eh,0f3h,0edh,0beh,0bah,0afh,053h,0ceh,0b2h,005h	; 8c35  .&KL........S...
	defb 000h,090h,002h,007h,01dh,00eh,007h,00dh,01eh,007h,00dh,002h,007h,000h,00fh,01fh	; 8c45  ................
	defb 03fh,03fh,003h,07fh,0ffh,00fh,013h,059h,04dh,050h,0ach,031h,05dh,00ah,01eh,02bh	; 8c55  ??.....YMP.1]..+
	defb 07eh,0bdh,0cdh,097h,0dah,0adh,051h,02bh,01eh,005h,002h,000h,000h,0b2h,02fh,0f8h	; 8c65  ~.....Q+....../.
	defb 09fh,0fbh,05bh,0ceh,0abh,0ach,07bh,0a4h,07bh,0dch,060h,009h,000h,007h,001h,01ch	; 8c75  ..[...{.{.`.....
	defb 03fh,07fh,07eh,06ch,025h,052h,02eh,014h,001h,002h,008h,000h,000h,05dh,0d3h,04fh	; 8c85  ?.~l%R.......].O
	defb 060h,02ch,0a7h,031h,054h,053h,0c4h,07bh,09ch,022h,0d5h,049h,00ah,006h,00dh,01eh	; 8c95  `,.1TS.{.".I....
	defb 03fh,066h,043h,07fh,0ddh,0a0h,0deh,0adh,05eh,054h,04dh,05bh,024h,02fh,0fdh,093h	; 8ca5  ?fC.....^TM[$/..
	defb 07fh,05eh,053h,02ah,0adh,0bbh,0c4h,0e3h,0fch,050h,044h,080h,000h,001h,002h,007h	; 8cb5  .^S*.....PD.....
	defb 013h,039h,03ch,000h,03eh,07fh,061h,05eh,03fh,03fh,0b6h,024h,000h,0d3h,04fh,06ch	; 8cc5  .9<.>.a^??.$..Ol
	defb 0a0h,0a9h,0ach,0d7h,089h,053h,044h,07bh,03ch,002h,0b5h,096h,008h,040h,000h	; 8cd5  .....SD{<....@.

; ----------------------------------------------------------------------
; DATOS sprites_8CE4: RLE de patrones de sprite (n con el bit 7 = n bytes tal
;   cual; sin el, repetir el siguiente; 0x80 [palabra] sigue en otra
;   direccion; 0 acaba); lista 14; lo leen p00:45EF (130 bytes)
;   0x8ce4..0x8d66  (130 bytes)
DATA_sprites_8CE4:
	defb 0e1h,000h,009h,01eh,01eh,055h,0eah,0efh,0b9h,054h,02eh,0a7h,0b2h,0d9h,02eh,011h	; 8ce4  .....U...T......
	defb 01ch,0e6h,0cfh,093h,0eah,054h,029h,09bh,0cfh,0d2h,06ch,05ch,0eeh,09ch,0e0h,070h	; 8cf4  .....T)...l\...p
	defb 0e0h,000h,000h,009h,009h,008h,045h,043h,047h,02bh,01dh,01eh,00fh,036h,011h,000h	; 8d04  ......ECG+...6..
	defb 000h,040h,084h,00eh,01ch,0e8h,0f0h,071h,0b2h,0ech,0c0h,0a0h,01ch,000h,000h,0e0h	; 8d14  .@.....q........
	defb 000h,004h,00fh,00fh,02ah,075h,076h,05fh,029h,014h,02eh,0a7h,0b2h,0d9h,02eh,010h	; 8d24  ....*uv_).......
	defb 01ch,0e6h,04dh,013h,0eah,054h,029h,09bh,0c9h,0d6h,06eh,077h,0ceh,070h,0b8h,070h	; 8d34  ..M..T)...nw.p.p
	defb 000h,000h,003h,004h,09ch,022h,021h,023h,017h,00bh,01dh,01eh,00fh,036h,010h,000h	; 8d44  ....."!#.....6..
	defb 000h,040h,086h,08eh,01ch,0e8h,0f0h,071h,0b6h,0e0h,0d0h,08eh,000h,080h,070h,000h	; 8d54  .@.....q......p.
	defb 000h,000h	; 8d64

; ----------------------------------------------------------------------
; DATOS sprites_8D66: RLE de patrones de sprite (n con el bit 7 = n bytes tal
;   cual; sin el, repetir el siguiente; 0x80 [palabra] sigue en otra
;   direccion; 0 acaba); lista 5; lo leen p00:45EF (121 bytes)
;   0x8d66..0x8ddf  (121 bytes)
DATA_sprites_8D66:
	defb 005h,000h,086h,01fh,000h,060h,008h,012h,01fh,00ah,000h,087h,080h,000h,026h,066h	; 8d66  .....`........&f
	defb 008h,0f0h,080h,009h,000h,086h,01fh,007h,07fh,00fh,013h,01fh,00ah,000h,087h,080h	; 8d76  ................
	defb 0f8h,03eh,0feh,0c8h,0f0h,080h,009h,000h,087h,003h,030h,007h,000h,026h,003h,030h	; 8d86  .>........0..&.0
	defb 009h,000h,088h,080h,04ch,000h,01ch,0e0h,040h,060h,0c0h,008h,000h,087h,003h,030h	; 8d96  ....L...@`.....0
	defb 007h,00fh,027h,003h,030h,009h,000h,088h,080h,0cch,0f0h,0fch,0e0h,040h,060h,0c0h	; 8da6  ..'.0........@`.
	defb 008h,000h,087h,007h,00ch,01eh,056h,03fh,032h,00fh,009h,000h,087h,0e0h,050h,0bch	; 8db6  ......V?2.....P.
	defb 060h,0e6h,030h,030h,00ah,000h,086h,007h,00bh,049h,016h,02dh,007h,00ah,000h,086h	; 8dc6  `.00.....I.-....
	defb 0e0h,0d4h,098h,07eh,0c8h,030h,004h,000h,000h	; 8dd6  ...~.0...

; ----------------------------------------------------------------------
; DATOS sprites_8DDF: RLE de patrones de sprite (n con el bit 7 = n bytes tal
;   cual; sin el, repetir el siguiente; 0x80 [palabra] sigue en otra
;   direccion; 0 acaba); lista 5; lo leen p00:45EF (166 bytes)
;   0x8ddf..0x8e85  (166 bytes)
DATA_sprites_8DDF:
	defb 0feh,007h,009h,017h,016h,02fh,027h,027h,023h,019h,02fh,047h,0cfh,0d6h,090h,061h	; 8ddf  ...../''#./G...a
	defb 000h,0e0h,090h,0e8h,068h,0f4h,0e4h,074h,07ch,094h,0e4h,0fch,07ah,068h,090h,004h	; 8def  ....h..t|...zh..
	defb 000h,000h,007h,00bh,009h,01fh,01fh,01ch,01eh,007h,090h,038h,070h,061h,06ch,001h	; 8dff  ...........8pal.
	defb 000h,000h,0e0h,0d0h,090h,0f8h,038h,0c8h,0f0h,078h,01ah,000h,082h,01ch,090h,044h	; 8e0f  ......8..x.....D
	defb 000h,007h,009h,017h,016h,027h,02bh,027h,037h,01bh,0bfh,067h,0cfh,0d7h,098h,061h	; 8e1f  .....'+'7..g...a
	defb 000h,0e0h,090h,0e8h,068h,0e4h,0d4h,0e4h,0ech,0dch,0feh,0f5h,07fh,0f5h,05ah,01ch	; 8e2f  ....h.........Z.
	defb 000h,000h,007h,00bh,009h,01fh,01ch,018h,018h,007h,090h,038h,070h,061h,06ch,001h	; 8e3f  ...........8pal.
	defb 000h,000h,0e0h,0d0h,090h,0f8h,038h,018h,018h,0e2h,004h,00eh,0a6h,00eh,06ch,006h	; 8e4f  ......8.......l.
	defb 000h,087h,003h,004h,009h,00bh,009h,004h,003h,009h,000h,087h,080h,040h,020h,0a0h	; 8e5f  .............@ .
	defb 020h,040h,080h,00ah,000h,081h,003h,003h,007h,081h,003h,00bh,000h,081h,080h,003h	; 8e6f   @..............
	defb 0c0h,081h,080h,006h,000h,000h	; 8e7f

; ----------------------------------------------------------------------
; DATOS sprites_8E85: RLE de patrones de sprite (n con el bit 7 = n bytes tal
;   cual; sin el, repetir el siguiente; 0x80 [palabra] sigue en otra
;   direccion; 0 acaba); lista 0; lo leen p00:45EF (447 bytes)
;   0x8e85..0x9044  (447 bytes)
DATA_sprites_8E85:
	defb 0bdh,007h,00bh,017h,01fh,01fh,03bh,056h,0b3h,0c8h,0ffh,094h,0f7h,07bh,03fh,022h	; 8e85  ......;V.....{?"
	defb 03ch,0c0h,0a0h,0d0h,0f0h,0f8h,0b4h,0dah,09eh,026h,0dah,02eh,0d2h,0bch,0d4h,07ch	; 8e95  <........&.....|
	defb 054h,000h,007h,00fh,009h,009h,00dh,02fh,06ch,077h,060h,07bh,03bh,005h,000h,01ch	; 8ea5  T....../lw`{;...
	defb 000h,000h,0c0h,0e0h,020h,020h,068h,0ech,06ch,0dch,02ch,0dch,0ach,040h,003h,038h	; 8eb5  ....  h.l.,..@.8
	defb 0aeh,007h,00bh,017h,01fh,03fh,052h,0b6h,0d3h,0f8h,097h,0f7h,07bh,0f7h,078h,030h	; 8ec5  .....?R.....{.x0
	defb 000h,0c0h,0a0h,0d0h,0f8h,0f4h,09ah,0deh,096h,03ah,0eeh,0d2h,08eh,0efh,01eh,00ch	; 8ed5  .........:......
	defb 000h,000h,007h,00fh,009h,009h,02dh,06fh,06ch,067h,078h,03bh,005h,068h,030h,003h	; 8ee5  ......-olgx;.h0.
	defb 000h,0cch,0c0h,0e0h,020h,028h,06ch,0ech,06ch,0cch,01ch,0ach,070h,016h,00ch,000h	; 8ef5  .... (l.l...p...
	defb 000h,007h,00bh,016h,01fh,018h,027h,05fh,0b7h,0d7h,0a3h,0a9h,06fh,037h,03fh,022h	; 8f05  ......'_....o7?"
	defb 01ch,0c0h,0e0h,0f0h,0f0h,02ch,0eah,0ceh,0d6h,0d6h,08ah,02ch,0e8h,0c4h,0d4h,07ch	; 8f15  .....,.....,...|
	defb 054h,000h,007h,00fh,008h,007h,01fh,03fh,06fh,06fh,05fh,05fh,01fh,00fh,000h,01ch	; 8f25  T......?oo__....
	defb 000h,000h,0c0h,0e0h,020h,0d0h,0fch,0fch,0ech,0ech,0f4h,0f0h,0f0h,078h,003h,038h	; 8f35  .... ........x.8
	defb 0aeh,007h,00bh,017h,018h,027h,05fh,0b7h,0d7h,0a3h,0a9h,06fh,0e7h,0cfh,044h,038h	; 8f45  .....'_....o..D8
	defb 000h,0c0h,0e0h,0f0h,02ch,0eah,0ceh,0d6h,0d6h,08ah,02ch,0eeh,0d5h,0e1h,012h,00ch	; 8f55  ....,.....,.....
	defb 000h,000h,007h,008h,007h,01fh,03fh,06fh,06fh,05fh,05fh,01fh,03fh,070h,038h,003h	; 8f65  ......?oo__.?p8.
	defb 000h,091h,0c0h,020h,0d0h,0fch,0fch,0ech,0ech,0f4h,0f0h,0f8h,06eh,01eh,00ch,000h	; 8f75  ... ........n...
	defb 000h,01fh,03ch,003h,07eh,0aah,076h,05dh,033h,027h,01eh,006h,007h,00bh,009h,006h	; 8f85  ..<.~.v]3'......
	defb 001h,000h,080h,060h,010h,0e8h,0f8h,0e4h,04ah,092h,07ah,0b2h,044h,038h,068h,044h	; 8f95  ...`....J.z.D8hD
	defb 0fch,000h,01fh,03fh,027h,027h,02fh,03eh,00dh,01bh,003h,001h,000h,007h,007h,001h	; 8fa5  ...?''/>........
	defb 003h,000h,0ach,080h,0e0h,070h,030h,078h,0f4h,0ech,08ch,07ch,0f8h,0c0h,090h,0b8h	; 8fb5  .....p0x...|....
	defb 000h,03eh,079h,0fch,0fdh,0fdh,0efh,0beh,06fh,04ch,03dh,00eh,016h,012h,00ch,003h	; 8fc5  .>y.....oL=.....
	defb 000h,000h,0c0h,020h,0d0h,0f0h,0c8h,094h,024h,0f4h,064h,088h,070h,0c0h,080h,003h	; 8fd5  ... ....$.d.p...
	defb 000h,08dh,03eh,07fh,04eh,04eh,05ch,07bh,017h,037h,002h,001h,00fh,00fh,003h,004h	; 8fe5  ..>.NN\{.7......
	defb 000h,08ah,0c0h,0e0h,060h,0f0h,0e8h,0d8h,018h,0f8h,0f0h,080h,004h,000h,0afh,03eh	; 8ff5  ....`..........>
	defb 079h,0fch,0fch,0fdh,0edh,0bbh,067h,04fh,03eh,014h,00fh,014h,019h,032h,03eh,000h	; 9005  y.....gO>....2>.
	defb 000h,0c0h,020h,0d0h,0f0h,0c8h,094h,0a4h,074h,0fch,052h,0e1h,01dh,03ah,024h,000h	; 9015  .. .....t.R..:$.
	defb 03eh,07fh,04fh,04eh,05eh,07ch,019h,033h,003h,00bh,000h,00fh,00eh,01ch,004h,000h	; 9025  >.ON^|.3........
	defb 08dh,0c0h,0e0h,060h,0f0h,0e8h,0d8h,098h,030h,0bch,01eh,00eh,01ch,018h,000h	; 9035  ...`....0......

; ----------------------------------------------------------------------
; DATOS sprites_9044: RLE de patrones de sprite (n con el bit 7 = n bytes tal
;   cual; sin el, repetir el siguiente; 0x80 [palabra] sigue en otra
;   direccion; 0 acaba); lista 16; lo leen p00:45EF (164 bytes)
;   0x9044..0x90e8  (164 bytes)
DATA_sprites_9044:
	defb 09ch,021h,073h,076h,0dch,089h,089h,0cch,076h,03eh,01eh,017h,02fh,03fh,07ch,070h	; 9044  .!sv....v>../?|p
	defb 060h,080h,0c4h,0cfh,0edh,07bh,07eh,058h,0b0h,070h,0e0h,0e0h,0c0h,005h,000h,08eh	; 9054  `....{~X.p......
	defb 021h,023h,067h,076h,076h,077h,03bh,01bh,003h,008h,010h,000h,030h,020h,003h,000h	; 9064  !#gvvw;.....0 ..
	defb 087h,004h,006h,08ch,080h,0a0h,040h,080h,00bh,000h,08ch,007h,00ch,018h,039h,038h	; 9074  ......@.......98
	defb 01bh,02fh,05fh,07eh,0f8h,0f0h,0c0h,003h,000h,089h,0e6h,0fdh,0dbh,03eh,090h,050h	; 9084  ./_~.........>.P
	defb 070h,0c0h,080h,009h,000h,08ah,007h,00fh,00eh,007h,004h,010h,020h,000h,060h,040h	; 9094  p........... .`@
	defb 005h,000h,086h,0c6h,02ch,0c0h,060h,0a0h,080h,00bh,000h,09bh,003h,007h,00ch,00ch	; 90a4  ....,.`.........
	defb 018h,027h,05fh,07fh,0ffh,0f3h,0c1h,000h,000h,006h,01dh,0f7h,0efh,018h,010h,00ch	; 90b4  .'_.............
	defb 032h,00ch,092h,0ceh,0f9h,0fdh,0e3h,006h,000h,089h,003h,007h,007h,00fh,01bh,020h	; 90c4  2..............
	defb 000h,060h,040h,004h,000h,08dh,006h,018h,070h,0e0h,0e0h,0f0h,0cch,0f0h,0ech,0f0h	; 90d4  .`@.....p.......
	defb 03eh,002h,000h,000h	; 90e4

; ----------------------------------------------------------------------
; DATOS sprites_90E8: RLE de patrones de sprite (n con el bit 7 = n bytes tal
;   cual; sin el, repetir el siguiente; 0x80 [palabra] sigue en otra
;   direccion; 0 acaba); lista 15; lo leen p00:45EF (65 bytes)
;   0x90e8..0x9129  (65 bytes)
DATA_sprites_90E8:
	defb 0bdh,004h,00ch,00ch,018h,01fh,03fh,05fh,0bfh,0f8h,0ffh,0bfh,0ffh,07bh,03eh,022h	; 90e8  ......?_.....{>"
	defb 03ch,040h,020h,020h,030h,0f0h,0f8h,0fch,0fah,01dh,0f9h,0fdh,0feh,0fch,054h,07ch	; 90f8  <@  0.........T|
	defb 044h,003h,007h,007h,00fh,008h,000h,020h,060h,047h,040h,040h,000h,004h,000h,01ch	; 9108  D...... `G@@....
	defb 000h,080h,0c0h,0c0h,0e0h,020h,000h,000h,004h,0e6h,006h,002h,000h,000h,003h,038h	; 9118  ..... .........8
	defb 000h	; 9128

; ----------------------------------------------------------------------
; DATOS sprites_9129: RLE de patrones de sprite (n con el bit 7 = n bytes tal
;   cual; sin el, repetir el siguiente; 0x80 [palabra] sigue en otra
;   direccion; 0 acaba); lista 15; lo leen p00:45EF (190 bytes)
;   0x9129..0x91e7  (190 bytes)
DATA_sprites_9129:
	defb 002h,000h,09eh,001h,003h,00fh,01bh,019h,03ah,039h,07ch,03eh,019h,00bh,011h,017h	; 9129  ........:9|>....
	defb 00bh,07ch,0deh,0beh,01ah,08ah,0fch,0ech,0fch,07ch,0e6h,09bh,0fdh,0ceh,098h,010h	; 9139  .|.......|......
	defb 0b8h,005h,000h,081h,006h,003h,007h,0b7h,003h,001h,007h,007h,00fh,00eh,007h,038h	; 9149  ...............8
	defb 064h,0f0h,0fch,07ch,020h,018h,000h,098h,0bch,066h,002h,0b8h,070h,0e0h,070h,000h	; 9159  d..| ....f..p.p.
	defb 000h,003h,00fh,019h,016h,029h,03bh,06dh,0f5h,07fh,05fh,09ch,0b8h,098h,06ch,07ch	; 9169  .....);m.._...l|
	defb 0deh,0beh,01ah,08ah,0fch,0ech,0fch,0cch,0b6h,0fah,0f6h,06eh,026h,027h,013h,004h	; 9179  ...........n&'..
	defb 000h,0d9h,006h,00fh,01eh,01ch,01eh,00eh,000h,03ch,078h,070h,070h,018h,038h,064h	; 9189  .........<xpp.8d
	defb 0f0h,0fch,07ch,020h,018h,030h,078h,0cch,004h,008h,01ch,01ch,01eh,00fh,007h,00fh	; 9199  ..| .0x.........
	defb 00ah,017h,012h,03bh,05ch,0b7h,0ceh,0fdh,09bh,0f7h,07bh,03eh,022h,03ch,0c0h,0e0h	; 91a9  ...;\.....{>"<..
	defb 0a0h,0d0h,090h,0b8h,074h,0fah,07dh,0b1h,0f9h,0feh,0fch,054h,07ch,044h,003h,001h	; 91b9  ....t.}....T|D..
	defb 005h,00eh,00fh,004h,033h,069h,073h,066h,074h,038h,004h,000h,01ch,000h,080h,000h	; 91c9  ....3isft8......
	defb 040h,0e0h,0e0h,040h,088h,08ch,0c6h,06eh,006h,000h,000h,003h,038h,000h	; 91d9  @..@...n....8.

; ----------------------------------------------------------------------
; DATOS sprites_91E7: RLE de patrones de sprite (n con el bit 7 = n bytes tal
;   cual; sin el, repetir el siguiente; 0x80 [palabra] sigue en otra
;   direccion; 0 acaba); lista 15; lo leen p00:45EF (188 bytes)
;   0x91e7..0x92a3  (188 bytes)
DATA_sprites_91E7:
	defb 099h,004h,00ch,0cch,0b8h,0ffh,0dfh,0bfh,05fh,038h,01fh,01fh,03fh,03fh,02ah,03eh	; 91e7  ........_8..??*>
	defb 022h,040h,020h,026h,035h,0ffh,0f9h,0fdh,0fah,01ch,003h,0fch,08dh,07eh,02ah,03eh	; 91f7  "@ &5........~*>
	defb 022h,003h,007h,007h,04fh,048h,060h,060h,020h,007h,004h,000h,003h,01ch,089h,080h	; 9207  "...OH`` .......
	defb 0c0h,0c0h,0e2h,022h,006h,006h,004h,0e0h,004h,000h,003h,01ch,002h,000h,09eh,001h	; 9217  ..."............
	defb 003h,00fh,01dh,01bh,039h,03eh,07fh,03fh,019h,00bh,011h,017h,00bh,07ch,0deh,0beh	; 9227  ....9>.?.....|..
	defb 01ah,08ah,0fch,0ech,0cch,074h,0ech,0f8h,0fch,0cch,098h,010h,0b8h,005h,000h,0c8h	; 9237  .....t..........
	defb 002h,007h,007h,001h,000h,000h,007h,007h,00fh,00eh,007h,038h,064h,0f0h,0fch,07ch	; 9247  ...........8d..|
	defb 020h,018h,0f0h,0f8h,010h,000h,000h,0b8h,070h,0e0h,070h,007h,00fh,00ah,057h,0f2h	; 9257   .......p.p...W.
	defb 0bbh,0bfh,057h,02fh,03fh,01ch,03fh,037h,056h,07ch,044h,0c0h,0e0h,0a0h,0d6h,09bh	; 9267  ..W/?.?7V|D.....
	defb 0bdh,0f6h,0eah,0f4h,0fch,018h,0fch,0ech,06ah,03eh,026h,003h,001h,005h,00eh,04fh	; 9277  ........j>&....O
	defb 064h,073h,038h,010h,000h,003h,000h,008h,003h,038h,090h,080h,000h,040h,0e0h,0e6h	; 9287  ds8......8...@..
	defb 046h,08ch,01ch,008h,000h,0e0h,000h,010h,01ch,01ch,018h,000h	; 9297  F...........

; ----------------------------------------------------------------------
; DATOS sprites_92A3: RLE de patrones de sprite (n con el bit 7 = n bytes tal
;   cual; sin el, repetir el siguiente; 0x80 [palabra] sigue en otra
;   direccion; 0 acaba); lista 15; lo leen p00:45EF (77 bytes)
;   0x92a3..0x92f0  (77 bytes)
DATA_sprites_92A3:
	defb 003h,000h,08ah,002h,005h,005h,002h,001h,001h,002h,005h,00bh,006h,008h,000h,086h	; 92a3  ................
	defb 080h,0c0h,060h,060h,0c0h,080h,009h,000h,088h,002h,003h,001h,000h,000h,001h,003h	; 92b3  ..``............
	defb 006h,00ah,000h,084h,080h,0c0h,0c0h,080h,00bh,000h,087h,001h,003h,006h,00dh,01ah	; 92c3  ................
	defb 014h,008h,009h,000h,086h,080h,0c0h,060h,0b0h,048h,030h,00bh,000h,085h,001h,003h	; 92d3  .......`.H0.....
	defb 006h,00ch,008h,00bh,000h,084h,080h,0c0h,060h,030h,006h,000h,000h	; 92e3  ........`0...

; ----------------------------------------------------------------------
; DATOS sprites_92F0: RLE de patrones de sprite (n con el bit 7 = n bytes tal
;   cual; sin el, repetir el siguiente; 0x80 [palabra] sigue en otra
;   direccion; 0 acaba); lista 16; lo leen p00:45EF (229 bytes)
;   0x92f0..0x93d5  (229 bytes)
DATA_sprites_92F0:
	defb 003h,000h,08ah,00fh,017h,02dh,04eh,066h,030h,03fh,01eh,00eh,004h,006h,000h,08ah	; 92f0  .....-Nf0?......
	defb 0f0h,0e8h,0b4h,072h,066h,00ch,0fch,078h,070h,020h,007h,000h,088h,00fh,013h,031h	; 9300  ...rf..xp .....1
	defb 019h,00fh,012h,008h,004h,008h,000h,088h,0f0h,0c8h,08ch,098h,0f0h,048h,010h,020h	; 9310  .............H.
	defb 007h,000h,08ah,00fh,017h,02dh,04eh,066h,030h,03fh,03eh,01ch,008h,006h,000h,08ah	; 9320  .....-Nf0?>.....
	defb 0f0h,0e8h,0b4h,072h,066h,00ch,0fch,07ch,038h,010h,007h,000h,088h,00fh,013h,031h	; 9330  ...rf..|8......1
	defb 019h,00fh,012h,010h,008h,008h,000h,088h,0f0h,0c8h,08ch,098h,0f0h,048h,008h,010h	; 9340  .............H..
	defb 004h,000h,0ffh,00fh,017h,037h,079h,0feh,0f7h,0d9h,07eh,0f7h,0f9h,0deh,077h,0f9h	; 9350  .....7y...~...w.
	defb 0feh,0cfh,003h,0f0h,0e8h,0ech,09eh,07fh,0efh,09bh,07eh,0efh,09fh,07bh,0eeh,09fh	; 9360  ..........~..{..
	defb 07fh,0f3h,0c0h,000h,00fh,009h,00eh,027h,049h,00eh,007h,029h,04eh,007h,009h,02eh	; 9370  .......'I..)N...
	defb 047h,001h,000h,000h,0f0h,090h,070h,0e4h,092h,070h,0e0h,094h,072h,0e0h,090h,074h	; 9380  G.....p..p..r..t
	defb 0e2h,080h,000h,00fh,017h,017h,039h,07eh,0f7h,0f9h,0deh,077h,0f9h,0feh,0d7h,079h	; 9390  ......9~...w...y
	defb 0feh,0efh,0c3h,0f0h,0e8h,0e8h,09ch,07eh,0efh,09fh,07bh,0eeh,09fh,07fh,0ebh,09eh	; 93a0  .......~..{.....
	defb 07fh,0f7h,0c3h,000h,00fh,009h,00eh,007h,029h,04eh,007h,009h,02eh,047h,009h,00eh	; 93b0  ........)N...G..
	defb 027h,041h,000h,000h,0f0h,090h,070h,0e0h,094h,072h,0e0h,090h,074h,0e2h,090h,070h	; 93c0  'A....p..r..t..p
	defb 0e4h,082h,081h,000h,000h	; 93d0

; ----------------------------------------------------------------------
; DATOS sprites_93D5: RLE de patrones de sprite (n con el bit 7 = n bytes tal
;   cual; sin el, repetir el siguiente; 0x80 [palabra] sigue en otra
;   direccion; 0 acaba); lista 1; lo leen p00:45EF (183 bytes)
;   0x93d5..0x948c  (183 bytes)
DATA_sprites_93D5:
	defb 09dh,000h,001h,003h,007h,00fh,037h,04fh,0aeh,0aeh,08eh,04ch,02ch,020h,011h,00eh	; 93d5  ......7O...L, ..
	defb 000h,000h,0c0h,0a0h,090h,00ch,03ah,07dh,079h,0f1h,0c2h,08ch,030h,0c0h,005h,000h	; 93e5  ......:}y...0...
	defb 085h,001h,003h,007h,00fh,03fh,003h,07fh,084h,03fh,01fh,01fh,00eh,004h,000h,084h	; 93f5  .....?...?......
	defb 0c0h,0e0h,0f0h,0fch,003h,0feh,083h,0fch,0f0h,0c0h,004h,000h,09eh,001h,002h,005h	; 9405  ................
	defb 00bh,013h,027h,047h,06eh,06eh,04eh,02eh,02ch,01ch,014h,011h,00eh,0c0h,020h,090h	; 9415  ..'GnnN.,..... .
	defb 088h,004h,032h,072h,072h,0e2h,0e4h,0c8h,0b0h,040h,080h,003h,000h,085h,001h,003h	; 9425  ..2rr....@......
	defb 007h,00fh,01fh,004h,03fh,002h,01fh,002h,00fh,087h,00eh,000h,000h,0c0h,0e0h,0f0h	; 9435  ....?...........
	defb 0f8h,004h,0fch,084h,0f8h,0f0h,0c0h,080h,003h,000h,095h,001h,002h,005h,00bh,00bh	; 9445  ................
	defb 017h,017h,01fh,01eh,02eh,02eh,02ch,01ch,014h,011h,00eh,0c0h,0a0h,090h,090h,088h	; 9455  ......,.........
	defb 003h,028h,086h,068h,050h,020h,020h,040h,080h,003h,000h,084h,001h,003h,007h,007h	; 9465  .(.hP  @........
	defb 004h,00fh,003h,01fh,002h,00fh,086h,00eh,000h,000h,0c0h,0e0h,0e0h,005h,0f0h,084h	; 9475  ................
	defb 0e0h,0c0h,0c0h,080h,003h,000h,000h	; 9485

; ----------------------------------------------------------------------
; DATOS sprites_948C: RLE de patrones de sprite (n con el bit 7 = n bytes tal
;   cual; sin el, repetir el siguiente; 0x80 [palabra] sigue en otra
;   direccion; 0 acaba); lista 0; lo leen p00:45EF (179 bytes)
;   0x948c..0x953f  (179 bytes)
DATA_sprites_948C:
	defb 003h,000h,089h,003h,004h,009h,013h,014h,010h,008h,00ch,007h,007h,000h,089h,080h	; 948c  ................
	defb 040h,020h,090h,090h,010h,020h,060h,0c0h,008h,000h,082h,003h,007h,003h,00fh,082h	; 949c  @ ... `.........
	defb 007h,003h,009h,000h,082h,080h,0c0h,003h,0e0h,082h,0c0h,080h,008h,000h,089h,003h	; 94ac  ................
	defb 004h,009h,010h,010h,011h,008h,00ch,007h,007h,000h,089h,080h,040h,020h,090h,0d0h	; 94bc  ............@ ..
	defb 090h,020h,060h,0c0h,008h,000h,082h,003h,007h,003h,00fh,082h,007h,003h,009h,000h	; 94cc  . `.............
	defb 082h,080h,0c0h,003h,0e0h,082h,0c0h,080h,008h,000h,089h,003h,004h,008h,010h,012h	; 94dc  ................
	defb 013h,009h,00ch,007h,007h,000h,089h,080h,040h,020h,010h,050h,090h,020h,060h,0c0h	; 94ec  ........@ .P. `.
	defb 008h,000h,082h,003h,007h,003h,00fh,082h,007h,003h,009h,000h,082h,080h,0c0h,003h	; 94fc  ................
	defb 0e0h,082h,0c0h,080h,008h,000h,089h,003h,004h,008h,013h,016h,012h,009h,00ch,007h	; 950c  ................
	defb 007h,000h,083h,080h,040h,020h,003h,010h,083h,020h,060h,0c0h,008h,000h,082h,003h	; 951c  ....@ ... `.....
	defb 007h,003h,00fh,082h,007h,003h,009h,000h,082h,080h,0c0h,003h,0e0h,082h,0c0h,080h	; 952c  ................
	defb 005h,000h,000h	; 953c

; ----------------------------------------------------------------------
; DATOS sprites_953F: RLE de patrones de sprite (n con el bit 7 = n bytes tal
;   cual; sin el, repetir el siguiente; 0x80 [palabra] sigue en otra
;   direccion; 0 acaba); lista 1; lo leen p00:45EF (260 bytes)
;   0x953f..0x9643  (260 bytes)
DATA_sprites_953F:
	defb 0ffh,03bh,064h,034h,016h,016h,03ah,038h,07ch,0fdh,08dh,0b3h,078h,03fh,07bh,073h	; 953f  .;d4..:8|...x?{s
	defb 07ch,0dch,026h,02ch,068h,068h,05ch,01ch,01ch,0beh,0bfh,0c7h,06bh,0ceh,0b8h,0c4h	; 954f  |.&,hh\.....k...
	defb 038h,000h,03bh,01fh,00bh,009h,015h,017h,013h,04fh,073h,05ch,01fh,013h,03dh,03ch	; 955f  8.;......Os\..=<
	defb 000h,000h,0dch,0f8h,0d0h,090h,0a8h,0e8h,0e8h,0f0h,0c6h,03eh,0f6h,0f0h,0c0h,038h	; 956f  ...........>...8
	defb 000h,03bh,064h,030h,010h,010h,020h,030h,038h,071h,083h,0b1h,079h,03eh,07bh,07fh	; 957f  .;d0.. 08q..y>{.
	defb 07ch,0dch,026h,00ch,008h,008h,004h,034h,01ch,00ch,086h,0d6h,05eh,01ch,0b8h,0c4h	; 958f  |.&....4....^...
	defb 038h,000h,03bh,01fh,00fh,00fh,01fh,01fh,017h,00eh,07dh,05eh,01eh,013h,03dh,020h	; 959f  8.;.......}^..=
	defb 000h,000h,0dch,0f8h,0f0h,0f0h,0f8h,0d8h,0e8h,0f0h,078h,0ach,0ach,0e0h,0c0h,038h	; 95af  ..........x....8
	defb 0ffh,000h,00fh,011h,032h,04ch,077h,03eh,044h,098h,0bdh,0feh,07dh,0d4h,07ah,039h	; 95bf  ....2Lw>D...}.z9
	defb 01eh,000h,0a0h,060h,060h,040h,060h,078h,07ch,04eh,0a3h,071h,0feh,0f4h,032h,0fah	; 95cf  ...``@`x|N.q..2.
	defb 0feh,0f8h,000h,00eh,00fh,03fh,039h,013h,03fh,067h,05ah,06dh,003h,06bh,00dh,01eh	; 95df  .....?9.?gZm.k..
	defb 000h,000h,040h,0c0h,0c0h,080h,0c0h,0c0h,0b8h,0bch,07eh,0eeh,0f0h,0f8h,0dch,03ch	; 95ef  ..@.......~....<
	defb 078h,000h,000h,00fh,011h,032h,04ch,077h,03eh,044h,098h,0bdh,0feh,07dh,050h,037h	; 95ff  x....2Lw>D...}P7
	defb 00bh,007h,040h,0a0h,060h,060h,040h,060h,078h,07ch,056h,0aeh,064h,0fch,0f4h,0e8h	; 960f  ..@.``@`x|V.d...
	defb 090h,0e0h,000h,000h,00eh,00fh,03fh,039h,013h,03fh,067h,05ah,06dh,003h,02fh,008h	; 961f  ......?9.?gZm./.
	defb 005h,000h,000h,040h,0c0h,0c0h,080h,0c0h,0c0h,0b8h,0ach,05ch,0d8h,0e0h,038h,0f0h	; 962f  ...@.......\..8.
	defb 082h,0e0h,000h,000h	; 963f

; ----------------------------------------------------------------------
; DATOS dibujos_9643: 12 dibujos de 8x8 a 4 bits para la hoja de la pagina 1
;   (desde el dibujo 1); los sube p00:48A6 por la lista 0x5530; lo leen
;   p00:48A6 (384 bytes)
;   0x9643..0x97c3  (384 bytes)
DATA_dibujos_9643:
	defb 0a1h,0a1h,0aah,011h	; 9643
	defb 01ah,0a1h,0a1h,01ah	; 9647
	defb 01ah,01dh,011h,01ch	; 964b
	defb 0a1h,011h,0c1h,01ah	; 964f
	defb 011h,01ah,0a1h,0cch	; 9653
	defb 01ah,0adh,01ch,0aah	; 9657
	defb 01ah,011h,0aah,011h	; 965b
	defb 0a1h,01ah,0adh,01ah	; 965f
	defb 0a1h,0aah,011h,0c1h	; 9663
	defb 01ah,0a1h,011h,01ah	; 9667
	defb 011h,01ah,0ach,0cah	; 966b
	defb 0a1h,0aah,01ah,0d1h	; 966f
	defb 0a1h,011h,01dh,011h	; 9673
	defb 011h,01ch,0a1h,01ch	; 9677
	defb 011h,0aah,011h,0cah	; 967b
	defb 01ah,0a1h,0ach,0a1h	; 967f
	defb 011h,0aah,01ah,01ah	; 9683
	defb 0a1h,01ah,011h,0a1h	; 9687
	defb 0c1h,011h,0a1h,011h	; 968b
	defb 0a1h,01ch,011h,01ah	; 968f
	defb 0cch,01ah,0a1h,011h	; 9693
	defb 0aah,0c1h,011h,0a1h	; 9697
	defb 011h,0afh,011h,011h	; 969b
	defb 0a1h,0aah,0a1h,01ah	; 969f
	defb 01ch,011h,01fh,01ah	; 96a3
	defb 0a1h,011h,011h,011h	; 96a7
	defb 0ach,0cah,0f1h,011h	; 96ab
	defb 01ah,0a1h,0ffh,01fh	; 96af
	defb 011h,0a1h,011h,011h	; 96b3
	defb 0c1h,01ah,0c1h,011h	; 96b7
	defb 0ach,011h,01ah,011h	; 96bb
	defb 01ah,0cah,011h,011h	; 96bf
	defb 011h,01ah,0a1h,01ah	; 96c3
	defb 0a1h,011h,011h,0a1h	; 96c7
	defb 0aah,011h,0a1h,0aah	; 96cb
	defb 01ah,0c1h,0aah,01ah	; 96cf
	defb 0a1h,0a1h,01ah,011h	; 96d3
	defb 0c1h,01dh,0ach,011h	; 96d7
	defb 0ach,011h,0dch,01ch	; 96db
	defb 01ah,0c1h,01ah,0a1h	; 96df
	defb 0a1h,011h,0a1h,01ah	; 96e3
	defb 01ah,0a1h,01ah,0a1h	; 96e7
	defb 011h,0a1h,011h,0aah	; 96eb
	defb 0a1h,0dah,01dh,011h	; 96ef
	defb 0aah,01ah,0c1h,0aah	; 96f3
	defb 0dah,0c1h,011h,01ah	; 96f7
	defb 011h,0ach,011h,011h	; 96fb
	defb 0a1h,0ach,0ach,0a1h	; 96ff
	defb 01ah,0c1h,01ah,0a1h	; 9703
	defb 0ach,011h,0ach,01ch	; 9707
	defb 0c1h,01ah,0ach,011h	; 970b
	defb 0a1h,0a1h,01ah,011h	; 970f
	defb 011h,0c1h,0ffh,011h	; 9713
	defb 01ah,011h,0f1h,01fh	; 9717
	defb 011h,011h,011h,011h	; 971b
	defb 011h,011h,0f1h,01ah	; 971f
	defb 0a1h,0ach,0ach,0a1h	; 9723
	defb 011h,0ach,011h,011h	; 9727
	defb 0aah,0c1h,011h,01ah	; 972b
	defb 0afh,01ah,0c1h,0aah	; 972f
	defb 0a1h,01ah,01ah,011h	; 9733
	defb 011h,011h,011h,01ah	; 9737
	defb 011h,0a1h,011h,0a1h	; 973b
	defb 0a1h,011h,0a1h,01ah	; 973f
	defb 011h,0aah,01ah,011h	; 9743
	defb 0aah,01ah,011h,011h	; 9747
	defb 011h,011h,01ah,01ah	; 974b
	defb 0ach,0a1h,0f1h,01ah	; 974f
	defb 0c1h,011h,0afh,0ach	; 9753
	defb 0aah,011h,0a1h,0aah	; 9757
	defb 0c1h,01ah,011h,0cah	; 975b
	defb 01ah,01ah,011h,0c1h	; 975f
	defb 01ah,01ah,011h,0c1h	; 9763
	defb 0c1h,01ah,011h,0cah	; 9767
	defb 0aah,011h,0a1h,0aah	; 976b
	defb 0c1h,011h,0a1h,0ach	; 976f
	defb 0ach,0a1h,011h,01ah	; 9773
	defb 011h,011h,01ah,01ah	; 9777
	defb 0aah,01ah,011h,011h	; 977b
	defb 011h,0aah,01ah,011h	; 977f
	defb 011h,0a1h,0aah,011h	; 9783
	defb 011h,011h,0a1h,0aah	; 9787
	defb 0a1h,0a1h,0ffh,011h	; 978b
	defb 0a1h,011h,01ah,0cah	; 978f
	defb 0cah,01ah,011h,01ch	; 9793
	defb 0aah,01ah,011h,0aah	; 9797
	defb 0ach,011h,0a1h,01ch	; 979b
	defb 01ch,011h,0a1h,0a1h	; 979f
	defb 01ch,011h,0a1h,0a1h	; 97a3
	defb 0ach,011h,0a1h,01ch	; 97a7
	defb 0aah,01ah,011h,0aah	; 97ab
	defb 0cah,01ah,011h,01ch	; 97af
	defb 0a1h,011h,01ah,0cah	; 97b3
	defb 0a1h,0a1h,011h,011h	; 97b7
	defb 011h,011h,0a1h,0aah	; 97bb
	defb 011h,0a1h,0aah,011h	; 97bf

; ----------------------------------------------------------------------
; DATOS dibujos_97C3: 21 dibujos de 8x8 a 4 bits para la hoja de la pagina 1
;   (desde el dibujo 96); los sube p00:48A6 por la lista 0x5530; lo leen
;   p00:48A6 (672 bytes)
;   0x97c3..0x9a63  (672 bytes)
DATA_dibujos_97C3:
	defb 0bdh,0dbh,0bbh,0ddh	; 97c3
	defb 0ddh,0bdh,0bbh,0fdh	; 97c7
	defb 0ddh,0dbh,0ddh,0bbh	; 97cb
	defb 0bbh,0bdh,0ddh,0dbh	; 97cf
	defb 0bdh,0ddh,0fdh,0bdh	; 97d3
	defb 0bdh,0bbh,0bbh,0ddh	; 97d7
	defb 0bdh,0ddh,0bdh,0bdh	; 97db
	defb 0dbh,0bbh,0bdh,0dbh	; 97df
	defb 0bdh,0bbh,0bdh,0dbh	; 97e3
	defb 0bbh,0bdh,0fdh,0bbh	; 97e7
	defb 0ddh,0bdh,0dfh,0dbh	; 97eb
	defb 0bdh,0bdh,0bfh,0bbh	; 97ef
	defb 0ddh,0fbh,0bbh,0ddh	; 97f3
	defb 0bdh,0dbh,0ddh,0bbh	; 97f7
	defb 0bbh,0bdh,0dbh,0ddh	; 97fb
	defb 0bbh,0bbh,0bbh,0dbh	; 97ff
	defb 0bbh,0dbh,0dbh,0fdh	; 9803
	defb 0bbh,0bbh,0dbh,0ddh	; 9807
	defb 0dbh,0ddh,0dfh,0dbh	; 980b
	defb 0bdh,0dbh,0ddh,0bbh	; 980f
	defb 0fbh,0bfh,0bbh,0dbh	; 9813
	defb 0bbh,0dbh,0dbh,0ddh	; 9817
	defb 0dbh,0ddh,0bdh,0bdh	; 981b
	defb 0bfh,0bbh,0dbh,0dbh	; 981f
	defb 0ddh,0bdh,0bdh,0bdh	; 9823
	defb 0bbh,0dbh,0bbh,0dbh	; 9827
	defb 0dfh,0bbh,0ddh,0fbh	; 982b
	defb 0bbh,0dbh,0dbh,0bdh	; 982f
	defb 0ddh,0bbh,0bdh,0bbh	; 9833
	defb 0dbh,0ddh,0fbh,0ddh	; 9837
	defb 0ddh,0bbh,0bdh,0dbh	; 983b
	defb 0bbh,0dbh,0dfh,0bbh	; 983f
	defb 0c1h,0cah,0aah,0aah	; 9843
	defb 01ch,0cah,0aah,0dah	; 9847
	defb 011h,01ah,0adh,0fah	; 984b
	defb 01ch,0aah,0aah,0aah	; 984f
	defb 01ch,0a1h,01ch,0aah	; 9853
	defb 0d1h,01ch,0cah,0aah	; 9857
	defb 01ch,0c1h,0adh,0aah	; 985b
	defb 01ch,0ach,0aah,0adh	; 985f
	defb 01ah,0aah,0aah,0dah	; 9863
	defb 0a1h,01ah,0d1h,0afh	; 9867
	defb 011h,011h,0aah,0aah	; 986b
	defb 01ch,0cch,011h,0aah	; 986f
	defb 0a1h,0aah,0cch,0aah	; 9873
	defb 01ch,0cah,0aah,0aah	; 9877
	defb 01ch,011h,0aah,0aah	; 987b
	defb 01ch,0cah,0aah,0aah	; 987f
	defb 0aah,0aah,0aah,0a1h	; 9883
	defb 0aah,01ah,0d1h,01ah	; 9887
	defb 0aah,0aah,011h,011h	; 988b
	defb 0aah,011h,0cch,0c1h	; 988f
	defb 0aah,0cch,0aah,01ah	; 9893
	defb 0aah,0aah,0ach,0c1h	; 9897
	defb 0aah,0dah,011h,0c1h	; 989b
	defb 0aah,0aah,0ach,0c1h	; 989f
	defb 0aah,0fah,0fch,01ch	; 98a3
	defb 0aah,0afh,0ach,0c1h	; 98a7
	defb 0aah,0aah,0a1h,011h	; 98ab
	defb 0aah,0aah,0aah,0c1h	; 98af
	defb 0aah,0c1h,01ah,0c1h	; 98b3
	defb 0aah,0ach,0c1h,01ah	; 98b7
	defb 0aah,0aah,01ch,0c1h	; 98bb
	defb 0aah,0aah,0cah,0c1h	; 98bf
	defb 011h,01ah,011h,0a1h	; 98c3
	defb 0cch,0c1h,0c1h,01ah	; 98c7
	defb 0c1h,0cah,0c1h,01ah	; 98cb
	defb 0a1h,0aah,0c1h,0aah	; 98cf
	defb 0aah,0ach,01ah,0dah	; 98d3
	defb 0aah,0ach,01ah,01ah	; 98d7
	defb 0aah,0aah,0aah,0adh	; 98db
	defb 0aah,0aah,0aah,0fah	; 98df
	defb 011h,0d1h,011h,01ch	; 98e3
	defb 0cch,01ch,0c1h,0c1h	; 98e7
	defb 0ach,01ah,0a1h,0cch	; 98eb
	defb 0c1h,0c1h,0aah,0aah	; 98ef
	defb 0aah,0c1h,0aah,0aah	; 98f3
	defb 0adh,0ach,0adh,0aah	; 98f7
	defb 0aah,0aah,0afh,0dah	; 98fb
	defb 0dah,0aah,0aah,0aah	; 98ff
	defb 0aah,0aah,0aah,0aah	; 9903
	defb 0aah,0aah,0aah,0aah	; 9907
	defb 0aah,0ach,0aah,0afh	; 990b
	defb 0aah,0c1h,0aah,0fah	; 990f
	defb 0c1h,0c1h,0aah,0afh	; 9913
	defb 0ach,01ah,0a1h,0cch	; 9917
	defb 0cch,01ch,0c1h,0c1h	; 991b
	defb 011h,0a1h,011h,01ch	; 991f
	defb 0aah,0aah,0aah,0aah	; 9923
	defb 0aah,0aah,0aah,0aah	; 9927
	defb 0adh,0ach,01ah,01ah	; 992b
	defb 0aah,0ach,01ah,0aah	; 992f
	defb 0a1h,0aah,0c1h,0dah	; 9933
	defb 0c1h,0cah,0c1h,01ah	; 9937
	defb 0cch,0c1h,0c1h,01ah	; 993b
	defb 011h,01ah,011h,0a1h	; 993f
	defb 0aah,0aah,0aah,0aah	; 9943
	defb 0aah,0cah,0adh,0aah	; 9947
	defb 0aah,01ch,0cah,0fah	; 994b
	defb 0aah,0a1h,01ch,0c1h	; 994f
	defb 0aah,0dah,011h,0f1h	; 9953
	defb 0aah,0aah,01ah,01ah	; 9957
	defb 0aah,0aah,0a1h,01ah	; 995b
	defb 0aah,0aah,011h,011h	; 995f
	defb 0aah,0aah,011h,011h	; 9963
	defb 0aah,0aah,0f1h,01ah	; 9967
	defb 0aah,0aah,01ah,01ah	; 996b
	defb 0adh,0afh,011h,011h	; 996f
	defb 0aah,0a1h,01ch,0c1h	; 9973
	defb 0aah,01ch,0cdh,0dah	; 9977
	defb 0aah,0cah,0dah,0aah	; 997b
	defb 0aah,0aah,0aah,0aah	; 997f
	defb 0aah,0adh,0aah,0aah	; 9983
	defb 0aah,0aah,0ach,0aah	; 9987
	defb 0aah,0dch,0c1h,0aah	; 998b
	defb 01ch,0c1h,01ah,0dah	; 998f
	defb 011h,011h,0afh,0fah	; 9993
	defb 0a1h,0a1h,0dah,0aah	; 9997
	defb 0a1h,01ah,0aah,0aah	; 999b
	defb 011h,011h,0aah,0aah	; 999f
	defb 011h,011h,0aah,0aah	; 99a3
	defb 0a1h,01ah,0afh,0aah	; 99a7
	defb 0a1h,0a1h,0adh,0adh	; 99ab
	defb 011h,011h,0aah,0aah	; 99af
	defb 01ch,0c1h,01ah,0aah	; 99b3
	defb 0aah,0ach,0c1h,0aah	; 99b7
	defb 0adh,0dah,0ach,0aah	; 99bb
	defb 0aah,0aah,0aah,0aah	; 99bf
	defb 0bfh,0fbh,0bbh,0ffh	; 99c3
	defb 0ffh,0bfh,0bbh,0ffh	; 99c7
	defb 0ffh,0fbh,0ffh,0bbh	; 99cb
	defb 0bbh,0bfh,0ffh,0fbh	; 99cf
	defb 0bfh,0ffh,0ffh,0bfh	; 99d3
	defb 0bfh,0bbh,0bbh,0ffh	; 99d7
	defb 0bfh,0ffh,0bfh,0bdh	; 99db
	defb 0ffh,0bbh,0bdh,0dbh	; 99df
	defb 0bfh,0bbh,0bfh,0fbh	; 99e3
	defb 0bbh,0bfh,0ffh,0bbh	; 99e7
	defb 0ffh,0bfh,0ffh,0fbh	; 99eb
	defb 0bfh,0bfh,0bfh,0bbh	; 99ef
	defb 0ffh,0fbh,0bbh,0ffh	; 99f3
	defb 0bfh,0fbh,0ffh,0bbh	; 99f7
	defb 0bbh,0bfh,0dbh,0ffh	; 99fb
	defb 0bbh,0bbh,0bbh,0dbh	; 99ff
	defb 0bfh,0fbh,0bbh,0ffh	; 9a03
	defb 0ffh,0bfh,0bbh,0fdh	; 9a07
	defb 0ffh,0fbh,0ffh,0bbh	; 9a0b
	defb 0bbh,0bfh,0ffh,0fbh	; 9a0f
	defb 0bfh,0ffh,0ffh,0bdh	; 9a13
	defb 0bfh,0bbh,0bbh,0fdh	; 9a17
	defb 0bfh,0ffh,0bfh,0bdh	; 9a1b
	defb 0fbh,0bbh,0bfh,0fbh	; 9a1f
	defb 0bbh,0fbh,0fbh,0ffh	; 9a23
	defb 0bbh,0bbh,0fbh,0fdh	; 9a27
	defb 0fbh,0ffh,0ffh,0fbh	; 9a2b
	defb 0bfh,0fbh,0ffh,0bbh	; 9a2f
	defb 0fbh,0bfh,0bbh,0dbh	; 9a33
	defb 0bbh,0fbh,0fbh,0ddh	; 9a37
	defb 0fbh,0ffh,0bfh,0bdh	; 9a3b
	defb 0bfh,0bbh,0fbh,0fbh	; 9a3f
	defb 0bfh,0bbh,0bfh,0fbh	; 9a43
	defb 0bbh,0bfh,0ffh,0bbh	; 9a47
	defb 0ffh,0bfh,0ffh,0fbh	; 9a4b
	defb 0bfh,0bfh,0bfh,0bbh	; 9a4f
	defb 0ffh,0fbh,0bbh,0ffh	; 9a53
	defb 0bfh,0fbh,0ffh,0bbh	; 9a57
	defb 0bbh,0bfh,0bbh,0ffh	; 9a5b
	defb 0bbh,0bbh,0bbh,0bbh	; 9a5f

; ----------------------------------------------------------------------
; DATOS dibujos_9A63: 6 dibujos de 8x8 a 4 bits para la hoja de la pagina 1
;   (desde el dibujo 37); los sube p00:48A6 por la lista 0x5530; lo leen
;   p00:48A6 (192 bytes)
;   0x9a63..0x9b23  (192 bytes)
DATA_dibujos_9A63:
	defb 0bdh,011h,011h,011h	; 9a63
	defb 0d1h,0aah,01ah,0a1h	; 9a67
	defb 0d1h,0ach,0aah,0cch	; 9a6b
	defb 01ah,0a1h,011h,0aah	; 9a6f
	defb 011h,011h,011h,011h	; 9a73
	defb 01ch,0cch,0cch,0cch	; 9a77
	defb 01ah,0aah,0aah,0aah	; 9a7b
	defb 011h,011h,011h,011h	; 9a7f
	defb 011h,011h,011h,011h	; 9a83
	defb 01ah,0aah,0a1h,0aah	; 9a87
	defb 0aah,0ach,0aah,0ach	; 9a8b
	defb 01ah,01ah,0a1h,0a1h	; 9a8f
	defb 011h,011h,011h,011h	; 9a93
	defb 0cch,0cch,0cch,0cch	; 9a97
	defb 0aah,0aah,0aah,0aah	; 9a9b
	defb 011h,011h,011h,011h	; 9a9f
	defb 011h,011h,011h,0dbh	; 9aa3
	defb 0aah,0aah,0aah,01bh	; 9aa7
	defb 01ah,0cah,0cah,0a1h	; 9aab
	defb 01ah,01ah,011h,011h	; 9aaf
	defb 011h,011h,011h,011h	; 9ab3
	defb 0cch,0cch,0cch,0c1h	; 9ab7
	defb 0aah,0aah,0aah,0c1h	; 9abb
	defb 011h,011h,011h,011h	; 9abf
	defb 01ah,0a1h,0aah,0aah	; 9ac3
	defb 01ah,0aah,0ach,0aah	; 9ac7
	defb 01ah,0cah,0cch,0cah	; 9acb
	defb 01ch,0cch,0cch,0cch	; 9acf
	defb 01ch,0cch,0ach,03ch	; 9ad3
	defb 01ch,03ch,0c3h,03ch	; 9ad7
	defb 01ah,0cch,0cch,0cah	; 9adb
	defb 011h,0ach,0aah,0a1h	; 9adf
	defb 0a1h,0aah,01ah,0aah	; 9ae3
	defb 0a1h,0aah,0aah,0ach	; 9ae7
	defb 0ach,0ach,0ach,0ach	; 9aeb
	defb 0cch,0ach,0cch,0ach	; 9aef
	defb 0cch,0cch,0cch,0cch	; 9af3
	defb 0c3h,03ch,0ach,033h	; 9af7
	defb 0cch,0cch,0cch,0cch	; 9afb
	defb 0ach,0cah,0ach,0aah	; 9aff
	defb 0aah,0aah,0aah,0a1h	; 9b03
	defb 0aah,0cah,0ach,0a1h	; 9b07
	defb 0ach,0cah,0cch,0a1h	; 9b0b
	defb 0cch,0cch,0cch,0c1h	; 9b0f
	defb 0cch,03ch,03ch,0c1h	; 9b13
	defb 0cch,03ch,0cch,0a1h	; 9b17
	defb 0cch,0cch,0cah,011h	; 9b1b
	defb 0ach,0ach,0aah,01bh	; 9b1f

; ----------------------------------------------------------------------
; DATOS dibujos_9B23: 17 dibujos de 8x8 a 4 bits para la hoja de la pagina 1
;   (desde el dibujo 123); los sube p00:48A6 por la lista 0x5530; lo leen
;   p00:48A6 (544 bytes)
;   0x9b23..0x9d43  (544 bytes)
DATA_dibujos_9B23:
	defb 0b1h,0aah,0a1h,0a1h	; 9b23
	defb 0d1h,011h,01ah,0a1h	; 9b27
	defb 0d1h,0a1h,011h,011h	; 9b2b
	defb 0b1h,01ah,012h,0a1h	; 9b2f
	defb 0bdh,01ah,012h,0a1h	; 9b33
	defb 0bdh,01ah,012h,0a1h	; 9b37
	defb 0bdh,01ah,012h,0a1h	; 9b3b
	defb 0dbh,012h,0a1h,011h	; 9b3f
	defb 0aah,0aah,0aah,0cah	; 9b43
	defb 0aah,01ah,01ah,0a1h	; 9b47
	defb 011h,011h,011h,011h	; 9b4b
	defb 02ah,011h,011h,011h	; 9b4f
	defb 0aah,011h,011h,011h	; 9b53
	defb 011h,011h,011h,011h	; 9b57
	defb 02ah,011h,011h,011h	; 9b5b
	defb 02ah,011h,011h,011h	; 9b5f
	defb 0aah,0aah,0aah,011h	; 9b63
	defb 0a1h,0a1h,01ah,0a1h	; 9b67
	defb 011h,011h,011h,011h	; 9b6b
	defb 011h,011h,011h,011h	; 9b6f
	defb 011h,011h,011h,011h	; 9b73
	defb 011h,011h,011h,011h	; 9b77
	defb 011h,011h,011h,011h	; 9b7b
	defb 011h,011h,011h,011h	; 9b7f
	defb 0aah,0aah,0a1h,01bh	; 9b83
	defb 011h,0a1h,011h,01bh	; 9b87
	defb 0a1h,011h,0a2h,01bh	; 9b8b
	defb 012h,0a1h,0a2h,01bh	; 9b8f
	defb 012h,0a1h,0a2h,01fh	; 9b93
	defb 012h,0a1h,0aah,01bh	; 9b97
	defb 01ah,0a1h,011h,01fh	; 9b9b
	defb 011h,011h,0a1h,0fbh	; 9b9f
	defb 0bbh,012h,0a1h,0a1h	; 9ba3
	defb 0bbh,012h,0a1h,0a1h	; 9ba7
	defb 0fbh,012h,0a1h,0a1h	; 9bab
	defb 0bfh,01ah,0a1h,0a1h	; 9baf
	defb 0fbh,011h,01ah,0a1h	; 9bb3
	defb 0bbh,0fbh,012h,0a1h	; 9bb7
	defb 0fbh,0ffh,01ah,0a1h	; 9bbb
	defb 01fh,0bbh,011h,011h	; 9bbf
	defb 02ah,011h,011h,011h	; 9bc3
	defb 02ah,011h,011h,011h	; 9bc7
	defb 02ah,011h,011h,011h	; 9bcb
	defb 0aah,011h,011h,011h	; 9bcf
	defb 011h,011h,011h,011h	; 9bd3
	defb 02ah,011h,011h,011h	; 9bd7
	defb 02ah,011h,011h,011h	; 9bdb
	defb 011h,011h,011h,011h	; 9bdf
	defb 02ah,01ah,0a1h,0bfh	; 9be3
	defb 02ah,012h,0a1h,0fbh	; 9be7
	defb 02ah,012h,0a1h,0fbh	; 9beb
	defb 02ah,01ah,0a1h,0bfh	; 9bef
	defb 02ah,011h,011h,0bbh	; 9bf3
	defb 02ah,012h,0a1h,0ffh	; 9bf7
	defb 02ah,012h,0a1h,0fbh	; 9bfb
	defb 011h,011h,01fh,0bbh	; 9bff
	defb 011h,0aah,0a1h,0a1h	; 9c03
	defb 01ah,011h,01ah,0a1h	; 9c07
	defb 012h,0a1h,011h,011h	; 9c0b
	defb 012h,0a1h,02ah,0a1h	; 9c0f
	defb 012h,0aah,012h,0aah	; 9c13
	defb 011h,0aah,012h,0aah	; 9c17
	defb 0b1h,02ah,012h,0aah	; 9c1b
	defb 0d1h,02ah,0a1h,02ah	; 9c1f
	defb 0aah,0aah,0aah,0cah	; 9c23
	defb 0aah,01ah,01ah,0a1h	; 9c27
	defb 011h,0a1h,0a1h,011h	; 9c2b
	defb 02ah,0aah,01ah,0a1h	; 9c2f
	defb 01ah,0a1h,0aah,0a1h	; 9c33
	defb 01ah,012h,0aah,011h	; 9c37
	defb 011h,012h,0aah,011h	; 9c3b
	defb 0a1h,012h,0aah,011h	; 9c3f
	defb 0b1h,02ah,0a1h,02ah	; 9c43
	defb 0b1h,02ah,0a1h,02ah	; 9c47
	defb 0d1h,02ah,0a1h,012h	; 9c4b
	defb 0b1h,012h,0a1h,012h	; 9c4f
	defb 0fbh,012h,0a1h,012h	; 9c53
	defb 0bbh,012h,0a1h,0a1h	; 9c57
	defb 0dbh,012h,0a1h,0a1h	; 9c5b
	defb 0bfh,011h,01ah,01ah	; 9c5f
	defb 0a1h,02ah,0a1h,0a1h	; 9c63
	defb 0a1h,02ah,0a1h,0a1h	; 9c67
	defb 0aah,01ah,0a1h,0a1h	; 9c6b
	defb 0aah,01ah,01ah,0a1h	; 9c6f
	defb 0aah,01ah,01ah,0a1h	; 9c73
	defb 02ah,0a1h,0aah,0a1h	; 9c77
	defb 02ah,0a1h,02ah,0a1h	; 9c7b
	defb 011h,011h,011h,011h	; 9c7f
	defb 0aah,0aah,0a1h,01bh	; 9c83
	defb 011h,0a1h,011h,01bh	; 9c87
	defb 011h,012h,0a1h,01bh	; 9c8b
	defb 011h,012h,0aah,01bh	; 9c8f
	defb 011h,012h,0aah,01fh	; 9c93
	defb 011h,0a1h,02ah,01bh	; 9c97
	defb 011h,0a1h,02ah,01fh	; 9c9b
	defb 011h,0a1h,02ah,01bh	; 9c9f
	defb 011h,02ah,012h,01fh	; 9ca3
	defb 011h,02ah,012h,01bh	; 9ca7
	defb 011h,02ah,011h,01bh	; 9cab
	defb 011h,02ah,01bh,0bfh	; 9caf
	defb 011h,02ah,01fh,0bbh	; 9cb3
	defb 011h,02ah,01bh,0ffh	; 9cb7
	defb 011h,02ah,01fh,0fbh	; 9cbb
	defb 011h,011h,01fh,0bbh	; 9cbf
	defb 093h,09dh,096h,09dh	; 9cc3
	defb 099h,09dh,09ch,09dh	; 9cc7
	defb 09fh,09dh,0a2h,09dh	; 9ccb
	defb 0a5h,09dh,0a8h,09dh	; 9ccf
	defb 0abh,09dh,0aeh,09dh	; 9cd3
	defb 0b1h,09dh,0b4h,09dh	; 9cd7
	defb 0b7h,09dh,0bah,09dh	; 9cdb
	defb 0bdh,09dh,0c0h,09dh	; 9cdf
	defb 0c3h,09dh,0c6h,09dh	; 9ce3
	defb 0c9h,09dh,0cch,09dh	; 9ce7
	defb 0cfh,09dh,0d2h,09dh	; 9ceb
	defb 0d5h,09dh,0d8h,09dh	; 9cef
	defb 0dbh,09dh,0e0h,09dh	; 9cf3
	defb 0e5h,09dh,0eah,09dh	; 9cf7
	defb 0efh,09dh,0f4h,09dh	; 9cfb
	defb 0f9h,09dh,0feh,09dh	; 9cff
	defb 003h,09eh,008h,09eh	; 9d03
	defb 00dh,09eh,012h,09eh	; 9d07
	defb 01bh,09eh,024h,09eh	; 9d0b
	defb 02dh,09eh,030h,09eh	; 9d0f
	defb 033h,09eh,036h,09eh	; 9d13
	defb 039h,09eh,03ch,09eh	; 9d17
	defb 03fh,09eh,042h,09eh	; 9d1b
	defb 045h,09eh,048h,09eh	; 9d1f
	defb 04bh,09eh,04eh,09eh	; 9d23
	defb 051h,09eh,054h,09eh	; 9d27
	defb 057h,09eh,05ah,09eh	; 9d2b
	defb 05dh,09eh,060h,09eh	; 9d2f
	defb 063h,09eh,066h,09eh	; 9d33
	defb 069h,09eh,06ch,09eh	; 9d37
	defb 06fh,09eh,072h,09eh	; 9d3b
	defb 075h,09eh,078h,09eh	; 9d3f

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9d43..0x9f99  (598 bytes)
DATA_9D43:
	defb 081h,09eh,099h,09eh,099h,09eh,09eh,09eh,0a3h,09eh,0ach,09eh,0b5h,09eh,0beh,09eh	; 9d43  ................
	defb 0c7h,09eh,0d0h,09eh,0d9h,09eh,0d9h,09eh,0dch,09eh,0dfh,09eh,0e2h,09eh,0e5h,09eh	; 9d53  ................
	defb 0ebh,09eh,0eeh,09eh,0f4h,09eh,0f7h,09eh,0f7h,09eh,0fah,09eh,0fdh,09eh,000h,09fh	; 9d63  ................
	defb 003h,09fh,006h,09fh,009h,09fh,00ch,09fh,00fh,09fh,012h,09fh,015h,09fh,018h,09fh	; 9d73  ................
	defb 01bh,09fh,021h,09fh,027h,09fh,030h,09fh,048h,09fh,048h,09fh,051h,09fh,075h,09fh	; 9d83  ..!.'.0.H.H.Q.u.
	defb 080h,040h,044h,080h,048h,04ch,080h,050h,054h,080h,058h,05ch,080h,060h,064h,080h	; 9d93  .@D.HL.PT.X\.`d.
	defb 068h,06ch,080h,070h,074h,080h,078h,07ch,080h,080h,084h,080h,088h,08ch,080h,090h	; 9da3  hl.pt.x|........
	defb 094h,080h,098h,09ch,080h,0a0h,0a4h,080h,0a8h,0ach,080h,0b0h,0b4h,080h,0b8h,0bch	; 9db3  ................
	defb 080h,0c0h,0c4h,080h,0c8h,0cch,080h,0d0h,0d4h,080h,0d8h,0dch,080h,0e0h,0e4h,080h	; 9dc3  ................
	defb 0e8h,0ech,080h,0f0h,0f4h,080h,0f8h,0fch,082h,090h,094h,088h,08ch,082h,098h,09ch	; 9dd3  ................
	defb 088h,08ch,082h,0a0h,0a4h,088h,08ch,082h,0a8h,0ach,088h,08ch,082h,0b8h,0bch,088h	; 9de3  ................
	defb 08ch,082h,0c0h,0c4h,088h,08ch,082h,0c8h,0cch,088h,08ch,082h,0d0h,0d4h,088h,08ch	; 9df3  ................
	defb 081h,060h,064h,080h,084h,081h,068h,06ch,088h,08ch,081h,070h,074h,090h,094h,083h	; 9e03  .`d...hl...pt...
	defb 040h,044h,048h,04ch,050h,054h,058h,05ch,083h,060h,064h,068h,06ch,070h,074h,078h	; 9e13  @DHLPTX\.`dhlptx
	defb 07ch,083h,080h,084h,088h,08ch,050h,054h,058h,05ch,080h,040h,044h,080h,048h,04ch	; 9e23  |.....PTX\.@D.HL
	defb 084h,050h,054h,080h,058h,05ch,084h,060h,064h,084h,068h,06ch,080h,070h,074h,084h	; 9e33  .PT.X\.`d.hl.pt.
	defb 078h,07ch,080h,080h,084h,084h,088h,08ch,080h,090h,094h,084h,098h,09ch,080h,0a0h	; 9e43  x|..............
	defb 0a4h,080h,0a8h,0ach,080h,0b0h,0b4h,080h,0b8h,0bch,080h,0c0h,0c4h,084h,040h,044h	; 9e53  ..............@D
	defb 080h,048h,04ch,080h,050h,054h,080h,058h,05ch,080h,060h,064h,084h,068h,06ch,080h	; 9e63  .HL.PT.X\.`d.hl.
	defb 070h,074h,080h,078h,07ch,083h,0e0h,0e4h,0e8h,0ech,0f0h,0f4h,0f8h,0fch,0f5h,0f0h	; 9e73  pt.x|...........
	defb 0e0h,0f5h,0f0h,0e4h,0f5h,000h,0e8h,0f5h,000h,0ech,005h,0f0h,0f0h,005h,0f0h,0f4h	; 9e83  ................
	defb 005h,000h,0f8h,005h,000h,0fch,081h,080h,084h,088h,08ch,081h,090h,094h,098h,09ch	; 9e93  ................
	defb 083h,040h,044h,040h,044h,040h,044h,040h,044h,083h,048h,04ch,048h,04ch,048h,04ch	; 9ea3  .@D@D@D@D.HLHLHL
	defb 048h,04ch,083h,050h,054h,050h,054h,050h,054h,050h,054h,083h,058h,05ch,058h,05ch	; 9eb3  HL.PTPTPTPT.X\X\
	defb 058h,05ch,058h,05ch,085h,040h,044h,040h,044h,040h,044h,040h,044h,085h,048h,04ch	; 9ec3  X\X\.@D@D@D@D.HL
	defb 048h,04ch,048h,04ch,048h,04ch,084h,040h,044h,080h,048h,04ch,084h,050h,054h,080h	; 9ed3  HLHLHL.@D.HL.PT.
	defb 058h,05ch,0f8h,0f7h,060h,0f8h,0f7h,064h,080h,068h,06ch,0f8h,0f7h,070h,0f8h,0f7h	; 9ee3  X\..`..d.hl..p..
	defb 074h,080h,078h,07ch,080h,040h,044h,080h,048h,04ch,080h,050h,054h,080h,058h,05ch	; 9ef3  t.x|.@D.HL.PT.X\
	defb 084h,060h,064h,080h,068h,06ch,084h,070h,074h,080h,078h,07ch,084h,080h,084h,080h	; 9f03  .`d.hl.pt.x|....
	defb 088h,08ch,084h,090h,094h,080h,098h,09ch,0e8h,0f7h,0c0h,0e8h,0f7h,0c4h,0e8h,0f7h	; 9f13  ................
	defb 0c8h,0e8h,0f7h,0cch,083h,040h,044h,068h,06ch,048h,04ch,070h,074h,0f1h,0f0h,040h	; 9f23  .....@DhlHLpt..@
	defb 0f1h,0f0h,044h,001h,0f0h,050h,001h,0f0h,054h,0f1h,000h,068h,0f1h,000h,06ch,001h	; 9f33  ..D..P..T..h..l.
	defb 000h,078h,001h,000h,07ch,083h,058h,05ch,060h,064h,068h,06ch,070h,074h,0e7h,0f0h	; 9f43  .x..|.X\`dhlpt..
	defb 040h,0e7h,0f0h,044h,0e7h,000h,040h,0e7h,000h,044h,0f7h,0f0h,040h,0f7h,0f0h,044h	; 9f53  @..D..@..D..@..D
	defb 0f7h,000h,040h,0f7h,000h,044h,007h,0f0h,040h,007h,0f0h,044h,007h,000h,040h,007h	; 9f63  ..@..D..@..D..@.
	defb 000h,044h,0e7h,0f0h,048h,0e7h,0f0h,04ch,0e7h,000h,048h,0e7h,000h,04ch,0f7h,0f0h	; 9f73  .D..H..L..H..L..
	defb 048h,0f7h,0f0h,04ch,0f7h,000h,048h,0f7h,000h,04ch,007h,0f0h,048h,007h,0f0h,04ch	; 9f83  H..L..H..L..H..L
	defb 007h,000h,048h,007h,000h,04ch	; 9f93

; ----------------------------------------------------------------------
; DATOS fuente: 96 letras de 1 bit (desde el '0', 0x30): la fuente; p01:6010
;   la sube dos veces (color 14 y color 3); lo leen p00:48ED (103 bytes)
;   0x9f99..0xa000  (103 bytes)
DATA_fuente:
	defb 000h,03eh,062h,043h,041h,061h,023h,03eh	; 9f99  .>bCAa#>
	defb 000h,00ch,018h,008h,008h,008h,010h,01ch	; 9fa1  ........
	defb 000h,03eh,041h,061h,00eh,030h,041h,07fh	; 9fa9  .>Aa.0A.
	defb 000h,03eh,041h,003h,00ch,003h,041h,03eh	; 9fb1  .>A...A>
	defb 000h,007h,009h,012h,022h,043h,07dh,003h	; 9fb9  ...."C}.
	defb 000h,07fh,020h,03ch,063h,001h,061h,01eh	; 9fc1  .. <c.a.
	defb 000h,01eh,020h,05eh,063h,041h,043h,03eh	; 9fc9  .. ^cAC>
	defb 000h,07fh,041h,022h,004h,004h,008h,00ch	; 9fd1  ..A"....
	defb 000h,03eh,043h,041h,03eh,041h,061h,03eh	; 9fd9  .>CA>Aa>
	defb 000h,03eh,061h,041h,063h,03dh,002h,03ch	; 9fe1  .>aAc=.<
	defb 000h,000h,020h,038h,03eh,038h,020h,000h	; 9fe9  .. 8>8 .
	defb 000h,03eh,041h,041h,006h,008h,000h,008h	; 9ff1  .>AA....
	defb 000h,050h,050h,000h,000h,000h,000h	; 9ff9
