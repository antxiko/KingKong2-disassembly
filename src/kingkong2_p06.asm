; ==========================================================================
; KING KONG 2: YOMIGAERU DENSETSU - Konami (1986) - MSX - MegaROM RC-745 de 128 KB (Konami4) - banco 06 (se ejecuta en 0xa000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x0a000


; ----------------------------------------------------------------------
; DATOS fuente_cola: 96 letras de 1 bit (desde el '0', 0x30): la fuente;
;   p01:6010 la sube dos veces (color 14 y color 3) (sigue del banco anterior,
;   0x9F99); lo leen p00:48ED (665 bytes)
;   0xa000..0xa299  (665 bytes)
DATA_fuente_cola:
	defb 000h,000h,020h,050h,020h,000h,000h,000h	; a000  .. P ...
	defb 000h,000h,000h,000h,000h,000h,020h,050h	; a008  ...... P
	defb 020h,000h,000h,000h,000h,000h,000h,040h	; a010   ......@
	defb 020h,000h,000h,000h,000h,000h,01fh,000h	; a018   .......
	defb 000h,000h,01ch,022h,022h,041h,071h,04fh	; a020  ...""AqO
	defb 063h,000h,07eh,021h,022h,03ch,022h,021h	; a028  c.~!"<"!
	defb 07eh,000h,01eh,023h,040h,040h,040h,023h	; a030  ~..#@@@#
	defb 01eh,000h,07ch,042h,021h,021h,021h,042h	; a038  ..|B!!!B
	defb 07ch,000h,07eh,043h,020h,03ch,020h,043h	; a040  |.~C < C
	defb 07eh,000h,07eh,043h,020h,03ch,020h,040h	; a048  ~.~C < @
	defb 060h,000h,01eh,023h,040h,047h,041h,023h	; a050  `..#@GA#
	defb 01eh,000h,063h,041h,022h,03eh,022h,041h	; a058  ..cA">"A
	defb 063h,000h,01ch,010h,008h,008h,008h,004h	; a060  c.......
	defb 01ch,000h,007h,001h,002h,042h,042h,066h	; a068  .....BBf
	defb 03ch,000h,063h,046h,028h,030h,028h,046h	; a070  <.cF(0(F
	defb 063h,000h,060h,040h,020h,020h,021h,043h	; a078  c.`@  !C
	defb 07eh,000h,063h,022h,036h,02ah,02ah,041h	; a080  ~.c"6**A
	defb 063h,000h,063h,021h,032h,02ah,026h,042h	; a088  c.c!2*&B
	defb 063h,000h,01eh,023h,061h,041h,043h,062h	; a090  c..#aACb
	defb 03ch,000h,07eh,043h,021h,023h,03eh,040h	; a098  <.~C!#>@
	defb 060h,000h,01eh,023h,061h,041h,04fh,042h	; a0a0  `..#aAOB
	defb 03fh,000h,07eh,041h,021h,03eh,024h,044h	; a0a8  ?.~A!>$D
	defb 063h,000h,03eh,043h,060h,01eh,003h,061h	; a0b0  c.>C`..a
	defb 03eh,000h,03eh,049h,008h,008h,008h,004h	; a0b8  >.>I....
	defb 01ch,000h,063h,041h,022h,041h,041h,063h	; a0c0  ..cA"AAc
	defb 03eh,000h,063h,041h,022h,022h,036h,014h	; a0c8  >.cA""6.
	defb 01ch,000h,063h,049h,02ah,02ah,036h,063h	; a0d0  ..cI**6c
	defb 041h,000h,063h,041h,022h,01ch,022h,041h	; a0d8  A.cA"."A
	defb 063h,000h,063h,041h,022h,014h,008h,004h	; a0e0  c.cA"...
	defb 01ch,000h,07fh,041h,00eh,008h,038h,041h	; a0e8  ...A..8A
	defb 07fh,000h,010h,07fh,011h,03fh,052h,055h	; a0f0  .....?RU
	defb 039h,000h,042h,042h,041h,041h,041h,050h	; a0f8  9.BBAAAP
	defb 020h,000h,03eh,000h,07eh,001h,001h,002h	; a100   .>.~...
	defb 03ch,000h,03eh,000h,07fh,002h,00ch,038h	; a108  <.>....8
	defb 047h,000h,008h,07fh,008h,03dh,04ah,049h	; a110  G....=JI
	defb 031h,000h,012h,079h,015h,012h,022h,022h	; a118  1..y..""
	defb 044h,000h,020h,07eh,008h,03fh,002h,040h	; a120  D. ~.?.@
	defb 03eh,000h,002h,00ch,030h,040h,030h,00ch	; a128  >...0@0.
	defb 002h,000h,042h,05fh,042h,042h,042h,042h	; a130  ..B_BBBB
	defb 024h,000h,07ch,002h,000h,000h,000h,040h	; a138  $.|....@
	defb 03eh,000h,008h,07fh,004h,002h,021h,040h	; a140  >.....!@
	defb 03fh,000h,040h,040h,040h,041h,041h,022h	; a148  ?.@@@AA"
	defb 01ch,000h,004h,07fh,004h,01ch,024h,01ch	; a150  ......$.
	defb 004h,000h,022h,07fh,022h,022h,026h,020h	; a158  ..".""&
	defb 01eh,000h,022h,014h,07fh,010h,020h,020h	; a160  .."...
	defb 01eh,000h,020h,077h,020h,020h,020h,028h	; a168  .. w   (
	defb 047h,000h,008h,07fh,010h,03eh,041h,001h	; a170  G....>A.
	defb 01eh,000h,000h,07eh,001h,001h,001h,002h	; a178  ...~....
	defb 03ch,000h,07fh,008h,010h,020h,020h,010h	; a180  <....  .
	defb 00eh,000h,042h,024h,018h,020h,040h,040h	; a188  ..B$. @@
	defb 03eh,000h,026h,071h,024h,044h,01ch,026h	; a190  >.&q$D.&
	defb 018h,000h,04fh,040h,040h,040h,040h,048h	; a198  ..O@@@@H
	defb 027h,000h,024h,03eh,065h,069h,073h,055h	; a1a0  '.$>eisU
	defb 02ah,000h,020h,06eh,031h,021h,067h,029h	; a1a8  *. n1!g)
	defb 026h,000h,01ch,02ah,049h,049h,049h,049h	; a1b0  &..*IIII
	defb 032h,000h,042h,04fh,042h,042h,04eh,053h	; a1b8  2.BOBBNS
	defb 02ch,000h,078h,012h,023h,042h,042h,044h	; a1c0  ,.x.#BBD
	defb 038h,000h,038h,004h,010h,049h,045h,045h	; a1c8  8.8..IEE
	defb 059h,000h,018h,024h,024h,042h,042h,001h	; a1d0  Y..$$BB.
	defb 001h,000h,04fh,042h,04fh,042h,04eh,053h	; a1d8  ..OBOBNS
	defb 02ch,004h,07fh,004h,07fh,004h,03eh,045h	; a1e0  ,.....>E
	defb 038h,000h,030h,00ah,00ah,03fh,04ah,04ah	; a1e8  8.0..?JJ
	defb 032h,000h,012h,079h,010h,030h,051h,051h	; a1f0  2..y.0QQ
	defb 03eh,000h,041h,03eh,032h,055h,049h,049h	; a1f8  >.A>2UII
	defb 035h,000h,020h,07ch,020h,07ch,020h,021h	; a200  5. | | !
	defb 01eh,000h,024h,07eh,025h,029h,022h,010h	; a208  ..$~%)".
	defb 010h,000h,004h,04eh,055h,075h,055h,04eh	; a210  ...NUuUN
	defb 018h,000h,004h,004h,007h,004h,03ch,046h	; a218  ......<F
	defb 039h,000h,038h,004h,040h,07ch,002h,002h	; a220  9.8.@|..
	defb 03ch,000h,041h,041h,041h,041h,001h,002h	; a228  <.AAAA..
	defb 01ch,000h,03fh,002h,03ch,002h,019h,025h	; a230  ..?.<..%
	defb 01eh,000h,020h,06ch,032h,022h,022h,062h	; a238  .. l2""b
	defb 021h,000h,03fh,002h,00ch,032h,001h,001h	; a240  !.?..2..
	defb 01eh,000h,020h,06eh,031h,021h,061h,021h	; a248  .. n1!a!
	defb 022h,000h,008h,03eh,010h,03eh,014h,022h	; a250  "..>.>."
	defb 01fh,000h,008h,010h,010h,028h,025h,045h	; a258  .....(%E
	defb 042h,000h,000h,024h,07ch,02ah,022h,010h	; a260  B..$|*".
	defb 010h,000h,000h,048h,05ch,06ah,06ah,05ch	; a268  ...H\jj\
	defb 008h,000h,000h,008h,00eh,008h,038h,04ch	; a270  ......8L
	defb 032h,000h,000h,000h,07ch,002h,002h,004h	; a278  2...|...
	defb 038h,000h,000h,000h,000h,000h,000h,040h	; a280  8......@
	defb 040h,000h,01eh,021h,012h,004h,006h,000h	; a288  @..!....
	defb 006h,000h,00ch,00ch,008h,008h,000h,008h	; a290  ........
	defb 018h	; a298

; ----------------------------------------------------------------------
; DATOS letra_copyright: el (c) de los creditos: una letra de 1 bit que
;   p01:602F pone en el sitio de la 0x3A; lo leen p00:48ED (8 bytes)
;   0xa299..0xa2a1  (8 bytes)
DATA_letra_copyright:
	defb 03ch,042h,099h,0a1h,0a1h,099h,042h,03ch	; a299  <B....B<

; ----------------------------------------------------------------------
; DATOS titulo_A2A1: 36 letras de 1 bit del rotulo del titulo (color 6);
;   p06:B993; lo leen p00:48ED (288 bytes)
;   0xa2a1..0xa3c1  (288 bytes)
DATA_titulo_A2A1:
	defb 01fh,01fh,01fh,000h,00fh,00fh,00fh,00eh	; a2a1  ........
	defb 0feh,0feh,0feh,0e0h,0feh,0ffh,0ffh,0efh	; a2a9  ........
	defb 01eh,0deh,0feh,0ffh,0ffh,0ffh,0ffh,0deh	; a2b1  ........
	defb 000h,007h,007h,0e7h,0e0h,0e0h,0e0h,000h	; a2b9  ........
	defb 000h,0ffh,0ffh,0ffh,007h,00fh,01fh,07eh	; a2c1  .......~
	defb 000h,0e0h,0e0h,0e0h,0e0h,0c0h,080h,000h	; a2c9  ........
	defb 01ch,01eh,01eh,03eh,03ch,03ch,07ch,07bh	; a2d1  ...><<|{
	defb 0ffh,0ffh,0ffh,0ffh,000h,000h,000h,0ffh	; a2d9  ........
	defb 0f9h,0f9h,0f9h,0f8h,003h,003h,003h,0fch	; a2e1  ........
	defb 0feh,0ffh,0feh,000h,0ffh,0ffh,0ffh,000h	; a2e9  ........
	defb 070h,0f1h,0f9h,0fbh,073h,0ffh,0ffh,0ffh	; a2f1  p...s...
	defb 0c0h,0f0h,0f0h,0e0h,0e0h,0f0h,0f0h,0f0h	; a2f9  ........
	defb 00fh,00fh,00fh,00eh,00fh,00fh,00fh,002h	; a301  ........
	defb 0ffh,0feh,0feh,0eeh,0feh,0feh,0feh,0f1h	; a309  ........
	defb 09eh,0ffh,0ffh,0ffh,0ffh,01eh,01eh,0ffh	; a311  ........
	defb 000h,0c3h,0c7h,0dfh,0dfh,00fh,00ch,0e0h	; a319  ........
	defb 0fch,0ffh,0ffh,0ffh,0c1h,000h,000h,0f8h	; a321  ........
	defb 000h,0c1h,0f3h,0fbh,0fbh,07dh,03dh,03ch	; a329  .....}=<
	defb 0fbh,0fbh,0fbh,0f8h,0f8h,0f8h,078h,078h	; a331  ......xx
	defb 0ffh,0ffh,0ffh,01fh,03eh,03eh,07ch,07ch	; a339  ....>>||
	defb 0fdh,0fdh,0fdh,000h,001h,001h,011h,070h	; a341  .......p
	defb 0feh,0feh,0feh,000h,0feh,0feh,0feh,000h	; a349  ........
	defb 0ffh,0f0h,0f0h,0ffh,0ffh,0ffh,0ffh,03bh	; a351  .......;
	defb 0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,080h	; a359  ........
	defb 007h,00fh,007h,003h,00fh,01fh,00fh,006h	; a361  ........
	defb 0f1h,0f1h,0f1h,0fch,0ffh,0ffh,09fh,003h	; a369  ........
	defb 0ffh,0ffh,0ffh,000h,0ffh,0ffh,0ffh,0ffh	; a371  ........
	defb 0e1h,0e3h,0e3h,003h,0f3h,0e1h,0e1h,0c0h	; a379  ........
	defb 0feh,0feh,0cfh,0c7h,0e7h,0ffh,0ffh,07fh	; a381  ........
	defb 03ch,03ch,07ch,0f8h,0f8h,0f0h,0e0h,080h	; a389  <<|.....
	defb 078h,078h,078h,07bh,07bh,07bh,079h,079h	; a391  xxx{{{yy
	defb 078h,0f8h,0f1h,0ffh,0ffh,0ffh,0ffh,0f0h	; a399  x.......
	defb 0f9h,079h,0fdh,0fdh,0ffh,0ffh,01dh,019h	; a3a1  .y......
	defb 0feh,0feh,0feh,0ceh,0ffh,0ffh,0feh,0c0h	; a3a9  ........
	defb 03bh,07bh,07bh,0fbh,0f3h,0f3h,0e3h,041h	; a3b1  ;{{....A
	defb 080h,0a0h,0b0h,0b8h,0f8h,0f8h,0f8h,0f0h	; a3b9  ........

; ----------------------------------------------------------------------
; DATOS titulo_A3C1: 52 letras de 1 bit del rotulo del titulo (color 5);
;   p06:B993; lo leen p00:48ED (416 bytes)
;   0xa3c1..0xa561  (416 bytes)
DATA_titulo_A3C1:
	defb 006h,00fh,00fh,01fh,03fh,03fh,07fh,01fh	; a3c1  ....??..
	defb 000h,080h,0e0h,0f8h,0feh,0ffh,0ffh,0ffh	; a3c9  ........
	defb 007h,00fh,00fh,01fh,01fh,0bfh,03fh,07fh	; a3d1  ......?.
	defb 080h,0e0h,0f8h,0f8h,0f1h,0f1h,0e3h,0e3h	; a3d9  ........
	defb 060h,07ch,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; a3e1  `|......
	defb 00fh,01eh,086h,0f0h,0feh,0ffh,0ffh,0ffh	; a3e9  ........
	defb 000h,000h,000h,000h,003h,007h,007h,00fh	; a3f1  ........
	defb 000h,000h,000h,000h,000h,080h,0b0h,03ch	; a3f9  .......<
	defb 07ch,078h,0f8h,070h,010h,0c0h,0f0h,0f0h	; a401  |x.p....
	defb 007h,001h,000h,000h,000h,000h,000h,000h	; a409  ........
	defb 0feh,0fch,07ch,019h,001h,003h,003h,007h	; a411  ..|.....
	defb 07fh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0feh	; a419  ........
	defb 0c7h,0c7h,08fh,08fh,01fh,01fh,03fh,03fh	; a421  ......??
	defb 0ffh,0fdh,0fch,0f8h,0f9h,0f1h,0e3h,0e3h	; a429  ........
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; a431  ........
	defb 0e0h,0e0h,0c0h,0c0h,080h,080h,000h,000h	; a439  ........
	defb 000h,000h,000h,007h,01fh,03fh,03fh,03fh	; a441  .....???
	defb 00fh,03fh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; a449  .?......
	defb 0feh,0fch,0fch,0f8h,0f8h,0f0h,0f0h,0e0h	; a451  ........
	defb 01fh,007h,001h,000h,000h,000h,000h,000h	; a459  ........
	defb 0c7h,0c7h,08fh,00fh,01fh,01fh,03fh,03fh	; a461  ......??
	defb 0ffh,0feh,0feh,0fch,0fch,0f8h,0f8h,0f8h	; a469  ........
	defb 01fh,00fh,00fh,007h,007h,002h,000h,000h	; a471  ........
	defb 0ffh,0feh,0f8h,0e0h,080h,000h,000h,000h	; a479  ........
	defb 080h,000h,000h,000h,000h,000h,000h,000h	; a481  ........
	defb 07fh,07fh,0ffh,0ffh,07fh,01fh,007h,001h	; a489  ........
	defb 0f0h,0f0h,0e0h,0e0h,0c0h,0c0h,080h,080h	; a491  ........
	defb 000h,000h,000h,000h,000h,007h,0ffh,0ffh	; a499  ........
	defb 000h,000h,000h,000h,000h,0c0h,0c0h,0c0h	; a4a1  ........
	defb 000h,000h,000h,000h,007h,0ffh,0ffh,0ffh	; a4a9  ........
	defb 0ffh,0ffh,0ffh,07fh,0ffh,0ffh,0ffh,0ffh	; a4b1  ........
	defb 0c0h,0e0h,0e3h,0ffh,0ffh,0ffh,0ffh,0ffh	; a4b9  ........
	defb 000h,000h,0e0h,0e0h,0e0h,0e0h,0f0h,0f0h	; a4c1  ........
	defb 0ffh,07fh,07fh,07fh,07ch,000h,000h,000h	; a4c9  ....|...
	defb 0ffh,0ffh,0ffh,0ffh,03fh,03fh,03fh,03fh	; a4d1  ....????
	defb 0ffh,0ffh,0feh,0f0h,0f0h,0f0h,0ffh,0ffh	; a4d9  ........
	defb 0f0h,0f0h,000h,000h,000h,078h,0f8h,0f8h	; a4e1  .....x..
	defb 00fh,0ffh,0ffh,0ffh,0ffh,07fh,07fh,07fh	; a4e9  ........
	defb 0f8h,0f8h,0f8h,0f8h,0f8h,0f8h,0f8h,000h	; a4f1  ........
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0fch	; a4f9  ........
	defb 0f8h,0fch,0fch,0fch,0fch,0fch,080h,000h	; a501  ........
	defb 07eh,000h,000h,000h,000h,000h,000h,000h	; a509  ~.......
	defb 00fh,00fh,00fh,00fh,007h,007h,007h,007h	; a511  ........
	defb 0fch,0fch,0fch,0feh,0feh,0feh,0feh,080h	; a519  ........
	defb 0f8h,0f8h,0f8h,0f8h,0f8h,0f8h,0f8h,0f8h	; a521  ........
	defb 0fch,0fch,0fch,0fch,0fch,0fch,0fch,0fch	; a529  ........
	defb 0ffh,0ffh,000h,000h,000h,000h,000h,000h	; a531  ........
	defb 0ffh,0ffh,00fh,00fh,00fh,00fh,00fh,00fh	; a539  ........
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,000h	; a541  ........
	defb 000h,000h,000h,000h,000h,0ffh,0ffh,0ffh	; a549  ........
	defb 00fh,00fh,00fh,00fh,00fh,0ffh,0ffh,0ffh	; a551  ........
	defb 000h,000h,000h,000h,000h,000h,000h,006h	; a559  ........

; ----------------------------------------------------------------------
; DATOS titulo_A561: 29 letras de 1 bit del rotulo del titulo (color 8);
;   p06:B993; lo leen p00:48ED (232 bytes)
;   0xa561..0xa649  (232 bytes)
DATA_titulo_A561:
	defb 0ffh,0ffh,0ffh,0ffh,07fh,01fh,003h,000h	; a561  ........
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0fch,000h	; a569  ........
	defb 000h,000h,000h,000h,001h,003h,007h,007h	; a571  ........
	defb 000h,007h,01fh,07fh,0ffh,0ffh,0ffh,0ffh	; a579  ........
	defb 07fh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; a581  ........
	defb 080h,0f8h,0fch,0ffh,0ffh,0ffh,0ffh,0ffh	; a589  ........
	defb 000h,000h,000h,000h,080h,0c0h,0c0h,0e0h	; a591  ........
	defb 00fh,00fh,00fh,01fh,01fh,01fh,01fh,01fh	; a599  ........
	defb 0ffh,0ffh,0feh,0feh,0feh,0ffh,0ffh,0ffh	; a5a1  ........
	defb 083h,000h,000h,000h,000h,000h,080h,0c0h	; a5a9  ........
	defb 0ffh,07fh,03fh,03fh,01fh,01fh,01fh,01fh	; a5b1  ..??....
	defb 0f0h,0f0h,0f8h,0f8h,0f8h,0fch,0fch,0fch	; a5b9  ........
	defb 01fh,01fh,00fh,00fh,00fh,007h,001h,000h	; a5c1  ........
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0feh,0f0h,000h	; a5c9  ........
	defb 0c0h,0c0h,0c0h,080h,000h,000h,000h,003h	; a5d1  ........
	defb 01fh,01fh,03fh,03fh,07fh,07fh,0ffh,0ffh	; a5d9  ..??....
	defb 0fch,0fch,0fch,0fch,0f8h,0f8h,0f0h,0f0h	; a5e1  ........
	defb 000h,000h,000h,000h,007h,01fh,07fh,0ffh	; a5e9  ........
	defb 007h,01fh,03fh,0ffh,0ffh,0ffh,0fch,0c0h	; a5f1  ..?.....
	defb 0ffh,0ffh,0ffh,0feh,0f8h,0c0h,000h,000h	; a5f9  ........
	defb 0e0h,0c0h,080h,000h,000h,000h,000h,000h	; a601  ........
	defb 001h,003h,003h,007h,007h,00fh,00fh,00fh	; a609  ........
	defb 0ffh,0feh,0fch,0fch,0ffh,0ffh,0ffh,0ffh	; a611  ........
	defb 000h,000h,01fh,0ffh,0ffh,0ffh,0ffh,0ffh	; a619  ........
	defb 000h,000h,080h,0e0h,0f8h,0ffh,0ffh,0ffh	; a621  ........
	defb 01fh,01fh,03fh,07fh,0ffh,0ffh,0feh,0feh	; a629  ..?.....
	defb 01fh,01fh,01fh,01fh,01fh,01fh,01fh,000h	; a631  ........
	defb 0ffh,0ffh,0ffh,0e1h,080h,000h,000h,000h	; a639  ........
	defb 0fch,0fch,0f8h,0f0h,0e0h,080h,000h,000h	; a641  ........

; ======================================================================
; CODIGO 0xa649..0xa658  (15 bytes)
; ======================================================================


L_A649:
	ld a,(0c139h)		;a649   ; lee el paso del suceso de p06:A649
	ld hl,0a658h		;a64c   ; tabla_A658: 6 palabras: a donde salta p06:A649 segun 0xC139 (p06:A664, A674, A683, A699, A6A0 y A6AC)
	add a,a			;a64f
	call 0408ch		;a650   ; p00:puente_hl_mas_a
	ld e,(hl)			;a653
	inc hl			;a654
	ld d,(hl)			;a655
	ex de,hl			;a656
	jp (hl)			;a657

; ----------------------------------------------------------------------
; DATOS tabla_A658: 6 palabras: a donde salta p06:A649 segun 0xC139 (p06:A664,
;   A674, A683, A699, A6A0 y A6AC)
;   0xa658..0xa664  (12 bytes)
DATA_tabla_A658:
	defb 064h,0a6h,074h,0a6h,083h,0a6h,099h,0a6h,0a0h,0a6h,0ach,0a6h	; a658  d.t.........

; ======================================================================
; CODIGO 0xa664..0xa6bf  (91 bytes)
; ======================================================================


L_A664:
	ld bc,00404h		;a664
	ld de,04888h		;a667
	call 0410ah		;a66a   ; p00:puente_pinta_figura_BA05
	ld a,002h		;a66d
	ld (0c307h),a		;a66f
	jr L_A67E		;a672
L_A674:
	ld hl,0c13ah		;a674
	dec (hl)			;a677
	ret nz			;a678
	ld a,010h		;a679
L_A67B:
	ld (0c13ah),a		;a67b
L_A67E:
	ld hl,0c139h		;a67e   ; apunta a el paso del suceso de p06:A649
	inc (hl)			;a681
	ret			;a682
L_A683:
	ld hl,0c13ah		;a683
	dec (hl)			;a686
	ld a,008h		;a687
	jr z,L_A67B		;a689
	ld a,(hl)			;a68b
	ld hl,0a6bfh		;a68c   ; saltito_A6BF: 16 bytes que p06:A68C suma a la y de Mitchel (0xC303) segun 0xC13A: un saltito arriba y abajo
	call 0408ch		;a68f   ; p00:puente_hl_mas_a
	ld a,(hl)			;a692
	ld hl,0c303h		;a693   ; apunta a la Y de Mitchel
	add a,(hl)			;a696
	ld (hl),a			;a697
	ret			;a698
L_A699:
	ld hl,0c13ah		;a699
	dec (hl)			;a69c
	ret nz			;a69d
	jr L_A67E		;a69e
L_A6A0:
	ld a,(0c303h)		;a6a0   ; lee la Y de Mitchel
	cp 059h		;a6a3
	jr c,L_A67E		;a6a5
	ld a,001h		;a6a7
	jp 04104h		;a6a9   ; p00:puente_guarda_las_teclas
L_A6AC:
	ld a,0f0h		;a6ac
	ld (0e22ah),a		;a6ae
	ld (0e22bh),a		;a6b1
	ld a,004h		;a6b4
	ld (0c307h),a		;a6b6
	ld a,0ffh		;a6b9
	ld (0c139h),a		;a6bb   ; guarda el paso del suceso de p06:A649
	ret			;a6be

; ----------------------------------------------------------------------
; DATOS saltito_A6BF: 16 bytes que p06:A68C suma a la y de Mitchel (0xC303)
;   segun 0xC13A: un saltito arriba y abajo
;   0xa6bf..0xa6cf  (16 bytes)
DATA_saltito_A6BF:
	defb 003h,003h,002h,001h,001h,000h,000h,0ffh,0ffh,0ffh,0feh,0fch,0fah,0fch,0feh,0ffh	; a6bf  ................

; ======================================================================
; CODIGO 0xa6cf..0xa794  (197 bytes)
; ======================================================================


L_A6CF:
	djnz L_A6E8		;a6cf
	call aclara_la_paleta		;a6d1
	ret nc			;a6d4
	call limpia_para_el_final		;a6d5
	call 04206h		;a6d8   ; p00:puente_sube_los_colores_de_sprite
	call elige_el_final		;a6db   ; elige_el_final: Sube los 77 dibujos de la escena (p06:AF41) y elige el final (0xC137):
	ld a,020h		;a6de
L_A6E0:
	ld (0c104h),a		;a6e0   ; guarda la espera del estado, en cuadros
L_A6E3:
	ld hl,0c101h		;a6e3   ; apunta a el paso del estado
	inc (hl)			;a6e6
	ret			;a6e7
L_A6E8:
	djnz L_A702		;a6e8
	call 041d6h		;a6ea   ; p00:puente_copia_lineas_a_la_pagina_1
	call 04206h		;a6ed   ; p00:puente_sube_los_colores_de_sprite
	call escena_del_final		;a6f0   ; escena_del_final: 0xC137: el final (0, 1 o 2)
	ld a,(0c137h)		;a6f3   ; lee en el final, cual de los tres (0, 1 o 2; 3 acabado)
	cp 003h		;a6f6
	ret nz			;a6f8
	ld hl,0a879h		;a6f9   ; paleta_A879: paleta del final: [color][RB][G] ... 0xFF (p00:46CF); p06:A73B y p06:A788 la copian a 0xCF00
	call 040f2h		;a6fc   ; p00:puente_pon_paleta
	jp L_A6E3		;a6ff
L_A702:
	djnz L_A71D		;a702
	call aclara_la_paleta		;a704
	ret nc			;a707
	call limpia_para_el_final		;a708
	ld hl,0a879h		;a70b   ; paleta_A879: paleta del final: [color][RB][G] ... 0xFF (p00:46CF); p06:A73B y p06:A788 la copian a 0xCF00
	call 040f2h		;a70e   ; p00:puente_pon_paleta
	ld hl,0af39h		;a711   ; texto_AF39: texto del final: letras de la fuente, 0xFE [x] salta de renglon, 0xFF acaba (p06:AADD)
	ld de,06060h		;a714
	call empieza_texto		;a717   ; empieza_texto: HL el texto, DE donde; una letra cada 4 cuadros
	jp L_A6E3		;a71a
L_A71D:
	djnz L_A730		;a71d
	call escribe_una_letra		;a71f
	ld a,(0cf36h)		;a722
	and a			;a725
	ret z			;a726
	ld a,0ffh		;a727
	call 040e6h		;a729   ; p00:puente_sonido_si_juega
	xor a			;a72c
	jp L_A6E0		;a72d
L_A730:
	djnz L_A734		;a730
	jr L_A736		;a732
L_A734:
	djnz L_A749		;a734
L_A736:
	ld hl,0c104h		;a736   ; apunta a la espera del estado, en cuadros
	dec (hl)			;a739
	ret nz			;a73a
	ld hl,0a879h		;a73b   ; paleta_A879: paleta del final: [color][RB][G] ... 0xFF (p00:46CF); p06:A73B y p06:A788 la copian a 0xCF00
	ld de,0cf00h		;a73e
	ld bc,00031h		;a741
	ldir		;a744
	jp L_A6E3		;a746
L_A749:
	djnz L_A769		;a749
	call aclara_la_paleta		;a74b
	ret nc			;a74e
	call 0409eh		;a74f   ; p00:puente_limpia_la_pantalla
	call 04116h		;a752   ; p00:puente_espera_al_vdp
	call 04188h		;a755   ; p00:puente_paleta_inicial
	xor a			;a758
	ld (0c102h),a		;a759   ; guarda las banderas de la partida (bit 6: de verdad, no la demostracion)
	ld (0c100h),a		;a75c   ; guarda el ESTADO del juego
	ld a,020h		;a75f
	ld (0c104h),a		;a761   ; guarda la espera del estado, en cuadros
	xor a			;a764
	ld (0c101h),a		;a765   ; guarda el paso del estado
	ret			;a768
L_A769:
	ld hl,0c104h		;a769   ; apunta a la espera del estado, en cuadros
	dec (hl)			;a76c
	ret nz			;a76d
	call paleta_del_final_A794		;a76e
	jp L_A6E3		;a771
limpia_para_el_final:
	call 0409eh		;a774   ; p00:puente_limpia_la_pantalla
	call 04116h		;a777   ; p00:puente_espera_al_vdp
	ld hl,0e600h		;a77a   ; apunta a los atributos de los sprites, para la VRAM
	ld de,0e601h		;a77d
	ld (hl),0e0h		;a780
	ld bc,0007fh		;a782
	ldir		;a785
	ret			;a787
paleta_del_final_A794:
	ld hl,0a794h		;a788   ; paleta_A794: paleta del final: [color][RB][G] ... 0xFF (p00:46CF); p06:A73B y p06:A788 la copian a 0xCF00
	ld de,0cf00h		;a78b
	ld bc,00031h		;a78e
	ldir		;a791
	ret			;a793

; ----------------------------------------------------------------------
; DATOS paleta_A794: paleta del final: [color][RB][G] ... 0xFF (p00:46CF);
;   p06:A73B y p06:A788 la copian a 0xCF00; lo leen p06:A788 (49 bytes)
;   0xa794..0xa7c5  (49 bytes)
DATA_paleta_A794:
	defb 000h,000h,000h	; a794
	defb 001h,000h,000h	; a797
	defb 002h,041h,003h	; a79a
	defb 003h,074h,005h	; a79d
	defb 004h,073h,001h	; a7a0
	defb 005h,076h,004h	; a7a3
	defb 006h,052h,002h	; a7a6
	defb 007h,065h,006h	; a7a9
	defb 008h,062h,000h	; a7ac
	defb 009h,061h,006h	; a7af
	defb 00ah,025h,004h	; a7b2
	defb 00bh,041h,002h	; a7b5
	defb 00ch,055h,005h	; a7b8
	defb 00dh,053h,004h	; a7bb
	defb 00eh,077h,007h	; a7be
	defb 00fh,005h,002h	; a7c1
	defb 0ffh	; a7c4

; ======================================================================
; CODIGO 0xa7c5..0xa879  (180 bytes)
; ======================================================================


aclara_la_paleta:
	call sube_un_tono		;a7c5
	ld hl,0cf00h		;a7c8
	call 040f2h		;a7cb   ; p00:puente_pon_paleta
	ld hl,0cf01h		;a7ce
	ld b,010h		;a7d1
	xor a			;a7d3
L_A7D4:
	or (hl)			;a7d4
	inc hl			;a7d5
	or (hl)			;a7d6
	inc hl			;a7d7
	inc hl			;a7d8
	djnz L_A7D4		;a7d9
	and a			;a7db
	ret nz			;a7dc
	scf			;a7dd
	ret			;a7de
sube_un_tono:
	ld a,(0c103h)		;a7df   ; lee el contador de cuadros
	and 003h		;a7e2
	ret nz			;a7e4
	ld hl,0cf01h		;a7e5
	ld b,010h		;a7e8
L_A7EA:
	ld a,(hl)			;a7ea
	and 0f0h		;a7eb
	jr z,L_A7F3		;a7ed
	ld a,(hl)			;a7ef
	sub 010h		;a7f0
	ld (hl),a			;a7f2
L_A7F3:
	ld a,(hl)			;a7f3
	and 00fh		;a7f4
	jr z,L_A7F9		;a7f6
	dec (hl)			;a7f8
L_A7F9:
	inc hl			;a7f9
	ld a,(hl)			;a7fa
	and 00fh		;a7fb
	jr z,L_A800		;a7fd
	dec (hl)			;a7ff
L_A800:
	inc hl			;a800
	inc hl			;a801
	djnz L_A7EA		;a802
	ret			;a804
oscurece_la_paleta:
	ld a,(0c103h)		;a805   ; lee el contador de cuadros
	and 003h		;a808
	ret nz			;a80a
	ld hl,0cf00h		;a80b
	ld a,(hl)			;a80e
	and 0f0h		;a80f
	jr z,L_A817		;a811
	ld a,(hl)			;a813
	sub 010h		;a814
	ld (hl),a			;a816
L_A817:
	ld a,(hl)			;a817
	and 00fh		;a818
	jr z,L_A81D		;a81a
	dec (hl)			;a81c
L_A81D:
	inc hl			;a81d
	ld a,(hl)			;a81e
	and 00fh		;a81f
	jr z,L_A824		;a821
	dec (hl)			;a823
L_A824:
	dec hl			;a824
	ld d,(hl)			;a825
	inc hl			;a826
	ld e,(hl)			;a827
	ld a,00eh		;a828
	call 040f8h		;a82a   ; p00:puente_pon_un_color
	ld a,(0cf00h)		;a82d
	ld hl,0cf01h		;a830
	or (hl)			;a833
	ret nz			;a834
	scf			;a835
	ret			;a836

; ----------------------------------------------------------------------
; Sube los 77 dibujos de la escena (p06:AF41) y elige el final (0xC137):
; con DAYS (0xC127, BCD) en 366 o mas, el 0 (KING KONG muere); si no, con
; 0xC16E (las veces que se ha continuado tras GAME OVER, p01:66FF) en
; 0x33 o mas, el 1 (lo operan y revive); con menos, el 2 (y el bebe KONG).
; ----------------------------------------------------------------------
elige_el_final:
	ld de,08004h		;a837
	ld hl,0af41h		;a83a   ; dibujos_del_final: 77 dibujos de 8x8 a 4 bits de la escena del final; p06:A83F los sube a la hoja de la pagina 1 desde (8, 0) con p00:48A6
	ld b,04dh		;a83d
	call 0411ch		;a83f   ; p00:puente_sube_dibujos
	call 041b8h		;a842   ; p00:puente_sube_sprites_4C92
	ld hl,(0c127h)		;a845   ; DAYS
	ld a,h			;a848
	cp 003h		;a849   ; las centenas: 3...
	ld b,000h		;a84b
	ld c,088h		;a84d
	jr z,L_A855		;a84f
	jr nc,L_A869		;a851
	jr c,L_A85C		;a853
L_A855:
	ld a,l			;a855
	cp 066h		;a856   ; ...y 66 o mas: 366 dias
	ld c,088h		;a858
	jr nc,L_A869		;a85a
L_A85C:
	ld a,(0c16eh)		;a85c   ; 0xC16E: cuantas veces se ha continuado
	cp 033h		;a85f   ; 51 o mas: el final 1
	ld b,001h		;a861
	ld c,087h		;a863
	jr nc,L_A869		;a865
	ld b,002h		;a867   ; menos: el final 2
L_A869:
	ld l,b			;a869
	ld h,000h		;a86a
	ld (0c137h),hl		;a86c   ; 0xC137 = final, 0xC138 = 0 (el paso)
	ld a,c			;a86f
	call 040e6h		;a870   ; p00:puente_sonido_si_juega
	ld hl,0a879h		;a873   ; paleta_A879: paleta del final: [color][RB][G] ... 0xFF (p00:46CF); p06:A73B y p06:A788 la copian a 0xCF00
	jp 040f2h		;a876   ; p00:puente_pon_paleta

; ----------------------------------------------------------------------
; DATOS paleta_A879: paleta del final: [color][RB][G] ... 0xFF (p00:46CF);
;   p06:A73B y p06:A788 la copian a 0xCF00; lo leen p06:A6F9 (49 bytes)
;   0xa879..0xa8aa  (49 bytes)
DATA_paleta_A879:
	defb 000h,000h,000h	; a879
	defb 001h,000h,000h	; a87c
	defb 002h,060h,005h	; a87f
	defb 003h,052h,004h	; a882
	defb 004h,040h,003h	; a885
	defb 005h,052h,003h	; a888
	defb 006h,041h,002h	; a88b
	defb 007h,077h,007h	; a88e
	defb 008h,073h,000h	; a891
	defb 009h,022h,005h	; a894
	defb 00ah,062h,005h	; a897
	defb 00bh,000h,003h	; a89a
	defb 00ch,054h,005h	; a89d
	defb 00dh,033h,004h	; a8a0
	defb 00eh,077h,007h	; a8a3
	defb 00fh,007h,002h	; a8a6
	defb 0ffh	; a8a9

; ======================================================================
; CODIGO 0xa8aa..0xa8b9  (15 bytes)
; ======================================================================


escena_del_final:
	ld a,(0c137h)		;a8aa   ; 0xC137: el final (0, 1 o 2)
	ld hl,0a8b9h		;a8ad   ; finales: 3 palabras: la escena de cada final (0xC137 = 0, 1 o 2) que reparte p06:A8AA
salta_por_la_tabla:
	add a,a			;a8b0
	call 0408ch		;a8b1   ; p00:puente_hl_mas_a
	ld e,(hl)			;a8b4
	inc hl			;a8b5
	ld d,(hl)			;a8b6
	ex de,hl			;a8b7
	jp (hl)			;a8b8

; ----------------------------------------------------------------------
; DATOS finales: 3 palabras: la escena de cada final (0xC137 = 0, 1 o 2) que
;   reparte p06:A8AA
;   0xa8b9..0xa8bf  (6 bytes)
DATA_finales:
	defb 0bfh,0a8h,05ch,0a9h,06fh,0aah	; a8b9

; ======================================================================
; CODIGO 0xa8bf..0xa8c7  (8 bytes)
; ======================================================================


final_0:
	ld a,(0c138h)		;a8bf   ; 0xC138: el paso de la escena
	ld hl,0a8c7h		;a8c2   ; pasos_del_final_0: 12 palabras: los pasos (0xC138) del final 0, que reparte p06:A8B0
	jr $-21		;a8c5

; ----------------------------------------------------------------------
; DATOS pasos_del_final_0: 12 palabras: los pasos (0xC138) del final 0, que
;   reparte p06:A8B0
;   0xa8c7..0xa8df  (24 bytes)
DATA_pasos_del_final_0:
	defb 0dfh,0a8h,0ebh,0a8h,0eeh,0a8h,0f1h,0a8h,004h,0a9h,007h,0a9h,00ah,0a9h,021h,0a9h	; a8c7  ..............!.
	defb 030h,0a9h,033h,0a9h,04eh,0a9h,051h,0a9h	; a8d7  0.3.N.Q.

; ======================================================================
; CODIGO 0xa8df..0xa965  (134 bytes)
; ======================================================================


L_A8DF:
	ld hl,0ad44h		;a8df   ; texto_AD44: texto del final: letras de la fuente, 0xFE [x] salta de renglon, 0xFF acaba (p06:AADD)
	ld de,02898h		;a8e2
	call empieza_texto		;a8e5   ; empieza_texto: HL el texto, DE donde; una letra cada 4 cuadros
	jp L_A957		;a8e8
L_A8EB:
	jp L_AB26		;a8eb
L_A8EE:
	jp L_AB33		;a8ee
L_A8F1:
	call oscurece_la_paleta		;a8f1
	ret nc			;a8f4
	call escena_del_final_AB46		;a8f5
	ld hl,0ad8ah		;a8f8   ; texto_AD8A: texto del final: letras de la fuente, 0xFE [x] salta de renglon, 0xFF acaba (p06:AADD)
	ld de,04098h		;a8fb
	call empieza_texto		;a8fe   ; empieza_texto: HL el texto, DE donde; una letra cada 4 cuadros
	jp L_A957		;a901
L_A904:
	jp L_AB26		;a904
L_A907:
	jp L_AB73		;a907
L_A90A:
	call aclara_la_paleta		;a90a
	ret nc			;a90d
	call escena_del_final_AB86		;a90e
	ld a,010h		;a911
	ld (0cf38h),a		;a913
	ld hl,0adb6h		;a916   ; texto_ADB6: texto del final: letras de la fuente, 0xFE [x] salta de renglon, 0xFF acaba (p06:AADD)
	ld de,04898h		;a919
	call empieza_texto		;a91c   ; empieza_texto: HL el texto, DE donde; una letra cada 4 cuadros
	jr L_A957		;a91f
L_A921:
	ld a,(0cf36h)		;a921
	and a			;a924
	call z,escribe_una_letra		;a925
	call cuenta_cf38		;a928
	ret nc			;a92b
	ld a,080h		;a92c
	jr L_A954		;a92e
L_A930:
	jp L_AB73		;a930
L_A933:
	call aclara_la_paleta		;a933
	ret nc			;a936
	call 0409eh		;a937   ; p00:puente_limpia_la_pantalla
	call 04116h		;a93a   ; p00:puente_espera_al_vdp
	ld hl,0a879h		;a93d   ; paleta_A879: paleta del final: [color][RB][G] ... 0xFF (p00:46CF); p06:A73B y p06:A788 la copian a 0xCF00
	call 040f2h		;a940   ; p00:puente_pon_paleta
	ld hl,0ade1h		;a943   ; texto_ADE1: texto del final: letras de la fuente, 0xFE [x] salta de renglon, 0xFF acaba (p06:AADD)
	ld de,03098h		;a946
	call empieza_texto		;a949   ; empieza_texto: HL el texto, DE donde; una letra cada 4 cuadros
	jr L_A957		;a94c
L_A94E:
	jp L_AB26		;a94e
L_A951:
	jp fin_de_la_escena		;a951
L_A954:
	ld (0c104h),a		;a954   ; guarda la espera del estado, en cuadros
L_A957:
	ld hl,0c138h		;a957   ; apunta a el paso de la escena del final
	inc (hl)			;a95a
	ret			;a95b
final_1:
	ld a,(0c138h)		;a95c   ; lee el paso de la escena del final
	ld hl,0a965h		;a95f   ; pasos_del_final_1: 13 palabras: los pasos del final 1
	jp salta_por_la_tabla		;a962

; ----------------------------------------------------------------------
; DATOS pasos_del_final_1: 13 palabras: los pasos del final 1
;   0xa965..0xa97f  (26 bytes)
DATA_pasos_del_final_1:
	defb 07fh,0a9h,08ah,0a9h,08dh,0a9h,090h,0a9h,09bh,0a9h,0dfh,0a9h,0e2h,0a9h,0e5h,0a9h	; a965  ................
	defb 032h,0aah,035h,0aah,038h,0aah,059h,0aah,06ch,0aah	; a975  2.5.8.Y.l.

; ======================================================================
; CODIGO 0xa97f..0xaa78  (249 bytes)
; ======================================================================


L_A97F:
	ld hl,0ae24h		;a97f   ; texto_AE24: texto del final: letras de la fuente, 0xFE [x] salta de renglon, 0xFF acaba (p06:AADD)
	ld de,02898h		;a982
	call empieza_texto		;a985   ; empieza_texto: HL el texto, DE donde; una letra cada 4 cuadros
	jr $-49		;a988
L_A98A:
	jp L_AB26		;a98a
L_A98D:
	jp L_AB33		;a98d
L_A990:
	call oscurece_la_paleta		;a990
	ret nc			;a993
	call escena_del_final_AB46		;a994
	xor a			;a997
	jp L_A954		;a998
L_A99B:
	ld hl,0c104h		;a99b   ; apunta a la espera del estado, en cuadros
	dec (hl)			;a99e
	ld a,(hl)			;a99f
	cp 040h		;a9a0
	jr z,L_A9D3		;a9a2
	cp 0c0h		;a9a4
	ret nc			;a9a6
	cp 080h		;a9a7
	ret c			;a9a9
	and 038h		;a9aa
	rra			;a9ac
	rra			;a9ad
	rra			;a9ae
	ld c,a			;a9af
	push bc			;a9b0
	ld h,008h		;a9b1
	ld l,c			;a9b3
	ld de,06c43h		;a9b4
	add a,e			;a9b7
	ld e,a			;a9b8
	ld bc,00801h		;a9b9
	ld a,048h		;a9bc
	call 04182h		;a9be   ; p00:puente_lmmm
	pop bc			;a9c1
	ld a,c			;a9c2
	ld h,010h		;a9c3
	ld l,c			;a9c5
	ld de,08843h		;a9c6
	add a,e			;a9c9
	ld e,a			;a9ca
	ld bc,00801h		;a9cb
	ld a,048h		;a9ce
	jp 04182h		;a9d0   ; p00:puente_lmmm
L_A9D3:
	ld hl,0ae6fh		;a9d3   ; texto_AE6F: texto del final: letras de la fuente, 0xFE [x] salta de renglon, 0xFF acaba (p06:AADD)
	ld de,02098h		;a9d6
	call empieza_texto		;a9d9   ; empieza_texto: HL el texto, DE donde; una letra cada 4 cuadros
	jp L_A957		;a9dc
L_A9DF:
	jp L_AB26		;a9df
L_A9E2:
	jp L_AB73		;a9e2
L_A9E5:
	call aclara_la_paleta		;a9e5
	ret nc			;a9e8
	call 0409eh		;a9e9   ; p00:puente_limpia_la_pantalla
	call 04116h		;a9ec   ; p00:puente_espera_al_vdp
	ld hl,0a879h		;a9ef   ; paleta_A879: paleta del final: [color][RB][G] ... 0xFF (p00:46CF); p06:A73B y p06:A788 la copian a 0xCF00
	call 040f2h		;a9f2   ; p00:puente_pon_paleta
	ld hl,05b3eh		;a9f5
	ld de,04a2ah		;a9f8
	ld c,00ch		;a9fb
	call 0417ch		;a9fd   ; p00:puente_marco
	ld hl,05a3dh		;aa00
	ld de,04c2ch		;aa03
	ld c,003h		;aa06
	call 0417ch		;aa08   ; p00:puente_marco
	ld hl,0593ch		;aa0b
	ld de,04e2eh		;aa0e
	ld c,00dh		;aa11
	call 0417ch		;aa13   ; p00:puente_marco
	ld hl,05c3fh		;aa16
	ld bc,04828h		;aa19
	ld a,088h		;aa1c
	ld d,000h		;aa1e
	call 0407ah		;aa20   ; p00:puente_hmmv
	call 04128h		;aa23   ; p00:puente_pinta_figura_BA38
	ld hl,0aea4h		;aa26   ; texto_AEA4: texto del final: letras de la fuente, 0xFE [x] salta de renglon, 0xFF acaba (p06:AADD)
	ld de,02098h		;aa29
	call empieza_texto		;aa2c   ; empieza_texto: HL el texto, DE donde; una letra cada 4 cuadros
	jp L_A957		;aa2f
L_AA32:
	jp L_AB26		;aa32
L_AA35:
	jp L_AB73		;aa35
L_AA38:
	call aclara_la_paleta		;aa38
	ret nc			;aa3b
	call escena_del_final_AB86		;aa3c
	ld a,010h		;aa3f
	ld (0cf37h),a		;aa41
	ld a,030h		;aa44
	ld (0cf38h),a		;aa46
	ld hl,0aebdh		;aa49   ; texto_AEBD: texto del final: letras de la fuente, 0xFE [x] salta de renglon, 0xFF acaba (p06:AADD)
	ld de,02898h		;aa4c
	call empieza_texto		;aa4f   ; empieza_texto: HL el texto, DE donde; una letra cada 4 cuadros
	xor a			;aa52
	ld (0cf36h),a		;aa53
	jp L_A957		;aa56
L_AA59:
	ld a,(0cf36h)		;aa59
	and a			;aa5c
	call z,escribe_una_letra		;aa5d
	call cuenta_cf37		;aa60
	call cuenta_cf38		;aa63
	ret nc			;aa66
	ld a,080h		;aa67
	jp L_A954		;aa69
L_AA6C:
	jp fin_de_la_escena		;aa6c
final_2:
	ld a,(0c138h)		;aa6f   ; lee el paso de la escena del final
	ld hl,0aa78h		;aa72   ; pasos_del_final_2: 16 palabras: los pasos del final 2 (los doce primeros, los del final 1)
	jp salta_por_la_tabla		;aa75

; ----------------------------------------------------------------------
; DATOS pasos_del_final_2: 16 palabras: los pasos del final 2 (los doce
;   primeros, los del final 1)
;   0xaa78..0xaa98  (32 bytes)
DATA_pasos_del_final_2:
	defb 07fh,0a9h,08ah,0a9h,08dh,0a9h,090h,0a9h,09bh,0a9h,0dfh,0a9h,0e2h,0a9h,0e5h,0a9h	; aa78  ................
	defb 032h,0aah,035h,0aah,038h,0aah,059h,0aah,098h,0aah,09bh,0aah,0b9h,0aah,0c9h,0aah	; aa88  2.5.8.Y.........

; ======================================================================
; CODIGO 0xaa98..0xad1c  (644 bytes)
; ======================================================================


L_AA98:
	jp L_AB33		;aa98
L_AA9B:
	call oscurece_la_paleta		;aa9b
	ret nc			;aa9e
	call 04110h		;aa9f   ; p00:puente_borra_la_parte_de_abajo
	ld hl,0a879h		;aaa2   ; paleta_A879: paleta del final: [color][RB][G] ... 0xFF (p00:46CF); p06:A73B y p06:A788 la copian a 0xCF00
	call 040f2h		;aaa5   ; p00:puente_pon_paleta
	ld a,010h		;aaa8
	ld (0cf39h),a		;aaaa
	ld hl,0af03h		;aaad   ; texto_AF03: texto del final: letras de la fuente, 0xFE [x] salta de renglon, 0xFF acaba (p06:AADD)
	ld de,01898h		;aab0
	call empieza_texto		;aab3   ; empieza_texto: HL el texto, DE donde; una letra cada 4 cuadros
	jp L_A957		;aab6
L_AAB9:
	ld a,(0cf36h)		;aab9
	and a			;aabc
	call z,escribe_una_letra		;aabd
	call cuenta_cf39		;aac0
	ret nc			;aac3
	ld a,080h		;aac4
	jp L_A954		;aac6
L_AAC9:
	jp fin_de_la_escena		;aac9
empieza_texto:
	ld a,004h		;aacc   ; HL el texto, DE donde; una letra cada 4 cuadros
	ld (0cf35h),a		;aace
	ld (0cf31h),hl		;aad1
	ld (0cf33h),de		;aad4
	xor a			;aad8
	ld (0cf36h),a		;aad9
	ret			;aadc
escribe_una_letra:
	ld hl,0cf35h		;aadd
	dec (hl)			;aae0
	ret nz			;aae1
	ld a,(hl)			;aae2
	ld (0cf36h),a		;aae3
	ld (hl),004h		;aae6
	ld hl,(0cf31h)		;aae8
	ld a,(hl)			;aaeb
	ld c,a			;aaec
	inc a			;aaed
	jr z,L_AB0D		;aaee   ; 0xFF: se acabo (0xCF36 = 1)
	inc a			;aaf0
	jr z,L_AB13		;aaf1   ; 0xFE [x]: renglon siguiente, en x
	ld a,c			;aaf3
	ld c,0ffh		;aaf4
	ld de,(0cf33h)		;aaf6
	call 040feh		;aafa   ; p00:puente_escribe_una_letra
	ld hl,(0cf31h)		;aafd
	inc hl			;ab00
	ld (0cf31h),hl		;ab01
	ld a,(0cf34h)		;ab04
	add a,008h		;ab07
	ld (0cf34h),a		;ab09
	ret			;ab0c
L_AB0D:
	ld a,001h		;ab0d
	ld (0cf36h),a		;ab0f
	ret			;ab12
L_AB13:
	inc hl			;ab13
	ld a,(hl)			;ab14
	inc hl			;ab15
	ld (0cf31h),hl		;ab16
	ld hl,(0cf33h)		;ab19
	add a,h			;ab1c
	ld h,a			;ab1d
	ld a,l			;ab1e
	add a,010h		;ab1f
	ld l,a			;ab21
	ld (0cf33h),hl		;ab22
	ret			;ab25
L_AB26:
	call escribe_una_letra		;ab26
	ld a,(0cf36h)		;ab29
	and a			;ab2c
	ret z			;ab2d
	ld a,080h		;ab2e
	jp L_A954		;ab30
L_AB33:
	ld hl,0c104h		;ab33   ; apunta a la espera del estado, en cuadros
	dec (hl)			;ab36
	ret nz			;ab37
	ld hl,0cf00h		;ab38
	ld (hl),007h		;ab3b
	inc hl			;ab3d
	ld (hl),007h		;ab3e
	inc hl			;ab40
	ld (hl),007h		;ab41
	jp L_A957		;ab43
escena_del_final_AB46:
	call 04110h		;ab46   ; p00:puente_borra_la_parte_de_abajo
	ld hl,0a879h		;ab49   ; paleta_A879: paleta del final: [color][RB][G] ... 0xFF (p00:46CF); p06:A73B y p06:A788 la copian a 0xCF00
	call 040f2h		;ab4c   ; p00:puente_pon_paleta
	ld hl,05b3eh		;ab4f
	ld de,04a2ah		;ab52
	ld c,00ch		;ab55
	call 0417ch		;ab57   ; p00:puente_marco
	ld hl,05a3dh		;ab5a
	ld de,04c2ch		;ab5d
	ld c,003h		;ab60
	call 0417ch		;ab62   ; p00:puente_marco
	ld hl,0593ch		;ab65
	ld de,04e2eh		;ab68
	ld c,00dh		;ab6b
	call 0417ch		;ab6d   ; p00:puente_marco
	jp 04122h		;ab70   ; p00:puente_pinta_figura_BA15
L_AB73:
	ld hl,0c104h		;ab73   ; apunta a la espera del estado, en cuadros
	dec (hl)			;ab76
	ret nz			;ab77
	ld hl,0a879h		;ab78   ; paleta_A879: paleta del final: [color][RB][G] ... 0xFF (p00:46CF); p06:A73B y p06:A788 la copian a 0xCF00
	ld de,0cf00h		;ab7b
	ld bc,00031h		;ab7e
	ldir		;ab81
	jp L_A957		;ab83
escena_del_final_AB86:
	call 0409eh		;ab86   ; p00:puente_limpia_la_pantalla
	call 04116h		;ab89   ; p00:puente_espera_al_vdp
	ld hl,0a879h		;ab8c   ; paleta_A879: paleta del final: [color][RB][G] ... 0xFF (p00:46CF); p06:A73B y p06:A788 la copian a 0xCF00
	call 040f2h		;ab8f   ; p00:puente_pon_paleta
	ld hl,0371eh		;ab92
	ld de,09262h		;ab95
	ld c,00ch		;ab98
	call 0417ch		;ab9a   ; p00:puente_marco
	ld hl,0361dh		;ab9d
	ld de,09464h		;aba0
	ld c,003h		;aba3
	call 0417ch		;aba5   ; p00:puente_marco
	ld hl,0351ch		;aba8
	ld de,09666h		;abab
	ld c,00dh		;abae
	call 0417ch		;abb0   ; p00:puente_marco
	ld hl,0381fh		;abb3
	ld bc,09060h		;abb6
	ld a,0ffh		;abb9
	ld d,000h		;abbb
	call 0407ah		;abbd   ; p00:puente_hmmv
	ld de,03860h		;abc0
	call 0412eh		;abc3   ; p00:puente_pinta_figura_BA4C
	ld de,07060h		;abc6
	call 0412eh		;abc9   ; p00:puente_pinta_figura_BA4C
	call 04134h		;abcc   ; p00:puente_pinta_figura_BA68
	ld hl,04810h		;abcf
	ld de,05030h		;abd2
	ld bc,01808h		;abd5
	ld a,048h		;abd8
	call 04182h		;abda   ; p00:puente_lmmm
	ld hl,04810h		;abdd
	ld de,09840h		;abe0
	ld bc,01808h		;abe3
	ld a,048h		;abe6
	call 04182h		;abe8   ; p00:puente_lmmm
	ld hl,04010h		;abeb   ; p00:cabecera_de_konami: 'CD', 0x07 y 0x45: la cabecera que lee el Konami Game Master (RC-745)
	ld de,05838h		;abee
	ld bc,00808h		;abf1
	ld a,048h		;abf4
	call 04182h		;abf6   ; p00:puente_lmmm
	ld hl,04010h		;abf9   ; p00:cabecera_de_konami: 'CD', 0x07 y 0x45: la cabecera que lee el Konami Game Master (RC-745)
	ld de,0a048h		;abfc
	ld bc,00808h		;abff
	ld a,048h		;ac02
	jp 04182h		;ac04   ; p00:puente_lmmm
fin_de_la_escena:
	ld hl,0c104h		;ac07   ; apunta a la espera del estado, en cuadros
	dec (hl)			;ac0a
	ret nz			;ac0b
	ld hl,0a879h		;ac0c   ; paleta_A879: paleta del final: [color][RB][G] ... 0xFF (p00:46CF); p06:A73B y p06:A788 la copian a 0xCF00
	ld de,0cf00h		;ac0f
	ld bc,00031h		;ac12
	ldir		;ac15
	ld a,003h		;ac17
	ld (0c137h),a		;ac19   ; 0xC137 = 3: acabada
	ret			;ac1c
L_AC1D:
	dec (hl)			;ac1d
	ld hl,0ad1ch		;ac1e   ; sprites_del_final: 8 sprites [y][x][patron][color] que p06:AC1E y p06:AC32 copian a 0xE600/0xE620
	ld de,0e620h		;ac21
	ld bc,00020h		;ac24
	ldir		;ac27
	ld hl,0e480h		;ac29
	ld de,00144h		;ac2c
	jr L_AC43		;ac2f
L_AC31:
	dec (hl)			;ac31
	ld hl,0ad1ch		;ac32   ; sprites_del_final: 8 sprites [y][x][patron][color] que p06:AC1E y p06:AC32 copian a 0xE600/0xE620
	ld de,0e600h		;ac35   ; apunta a los atributos de los sprites, para la VRAM
	ld bc,00020h		;ac38
	ldir		;ac3b
	ld hl,0e400h		;ac3d   ; apunta a los colores de los sprites, para la VRAM
	ld de,00146h		;ac40
L_AC43:
	ld c,004h		;ac43
L_AC45:
	ld b,010h		;ac45
L_AC47:
	ld (hl),d			;ac47
	inc hl			;ac48
	djnz L_AC47		;ac49
	ld b,010h		;ac4b
L_AC4D:
	ld (hl),e			;ac4d
	inc hl			;ac4e
	djnz L_AC4D		;ac4f
	dec c			;ac51
	jr nz,L_AC45		;ac52
	and a			;ac54
	ret			;ac55
cuenta_cf37:
	ld hl,0cf37h		;ac56
	ld a,(hl)			;ac59
	and a			;ac5a
	jr z,L_AC1D		;ac5b
	inc a			;ac5d
	jr z,L_AC63		;ac5e
	dec (hl)			;ac60
	and a			;ac61
	ret			;ac62
L_AC63:
	ld hl,0e621h		;ac63
	jr L_AC78		;ac66
cuenta_cf38:
	ld hl,0cf38h		;ac68
	ld a,(hl)			;ac6b
	and a			;ac6c
	jr z,L_AC31		;ac6d
	inc a			;ac6f
	jr z,L_AC75		;ac70
	dec (hl)			;ac72
	and a			;ac73
	ret			;ac74
L_AC75:
	ld hl,0e601h		;ac75
L_AC78:
	ld a,(0c103h)		;ac78   ; lee el contador de cuadros
	rra			;ac7b
	ret nc			;ac7c
	push hl			;ac7d
	call parpadeo_AC9F		;ac7e
	pop hl			;ac81
	ld b,008h		;ac82
L_AC84:
	dec (hl)			;ac84
	ld a,(hl)			;ac85
	cp 038h		;ac86
	jr c,L_AC92		;ac88
	inc hl			;ac8a
	inc hl			;ac8b
	inc hl			;ac8c
	inc hl			;ac8d
	djnz L_AC84		;ac8e
	and a			;ac90
	ret			;ac91
L_AC92:
	dec hl			;ac92
	ld b,008h		;ac93
L_AC95:
	ld (hl),0e0h		;ac95
	inc hl			;ac97
	inc hl			;ac98
	inc hl			;ac99
	inc hl			;ac9a
	djnz L_AC95		;ac9b
	scf			;ac9d
	ret			;ac9e
parpadeo_AC9F:
	ld a,(0c103h)		;ac9f   ; lee el contador de cuadros
	bit 4,a		;aca2
	ld a,020h		;aca4
	jr z,L_ACA9		;aca6
	xor a			;aca8
L_ACA9:
	inc hl			;aca9
	ld b,008h		;acaa
L_ACAC:
	ld (hl),a			;acac
	add a,004h		;acad
	inc hl			;acaf
	inc hl			;acb0
	inc hl			;acb1
	inc hl			;acb2
	djnz L_ACAC		;acb3
	ret			;acb5
parpadeo_ACB6:
	ld a,(0c103h)		;acb6   ; lee el contador de cuadros
	bit 3,a		;acb9
	ld a,040h		;acbb
	jr z,L_ACC1		;acbd
	ld a,048h		;acbf
L_ACC1:
	inc hl			;acc1
	ld b,002h		;acc2
L_ACC4:
	ld (hl),a			;acc4
	add a,004h		;acc5
	inc hl			;acc7
	inc hl			;acc8
	inc hl			;acc9
	inc hl			;acca
	djnz L_ACC4		;accb
	ret			;accd
L_ACCE:
	dec (hl)			;acce
	ld hl,0ad3ch		;accf   ; sprites_del_final_2: 2 sprites [y][x][patron][color] que p06:ACCF copia a 0xE640
	ld de,0e640h		;acd2
	ld bc,00008h		;acd5
	ldir		;acd8
	ld hl,0e500h		;acda
	ld de,00144h		;acdd
	ld c,001h		;ace0
	jp L_AC45		;ace2
cuenta_cf39:
	ld hl,0cf39h		;ace5
	ld a,(hl)			;ace8
	and a			;ace9
	jr z,L_ACCE		;acea
	inc a			;acec
	jr z,L_ACF2		;aced
	dec (hl)			;acef
	and a			;acf0
	ret			;acf1
L_ACF2:
	ld hl,0e641h		;acf2
	ld a,(0c103h)		;acf5   ; lee el contador de cuadros
	rra			;acf8
	ret nc			;acf9
	push hl			;acfa
	call parpadeo_ACB6		;acfb
	pop hl			;acfe
	ld b,002h		;acff
L_AD01:
	dec (hl)			;ad01
	ld a,(hl)			;ad02
	cp 038h		;ad03
	jr c,L_AD0F		;ad05
	inc hl			;ad07
	inc hl			;ad08
	inc hl			;ad09
	inc hl			;ad0a
	djnz L_AD01		;ad0b
	and a			;ad0d
	ret			;ad0e
L_AD0F:
	dec hl			;ad0f
	ld b,002h		;ad10
L_AD12:
	ld (hl),0e0h		;ad12
	inc hl			;ad14
	inc hl			;ad15
	inc hl			;ad16
	inc hl			;ad17
	djnz L_AD12		;ad18
	scf			;ad1a
	ret			;ad1b

; ----------------------------------------------------------------------
; DATOS sprites_del_final: 8 sprites [y][x][patron][color] que p06:AC1E y
;   p06:AC32 copian a 0xE600/0xE620; lo leen p06:AC1E (32 bytes)
;   0xad1c..0xad3c  (32 bytes)
DATA_sprites_del_final:
	defb 058h,0b0h,020h,000h	; ad1c
	defb 058h,0b0h,024h,000h	; ad20
	defb 058h,0c0h,028h,000h	; ad24
	defb 058h,0c0h,02ch,000h	; ad28
	defb 068h,0b0h,030h,000h	; ad2c
	defb 068h,0b0h,034h,000h	; ad30
	defb 068h,0c0h,038h,000h	; ad34
	defb 068h,0c0h,03ch,000h	; ad38

; ----------------------------------------------------------------------
; DATOS sprites_del_final_2: 2 sprites [y][x][patron][color] que p06:ACCF
;   copia a 0xE640; lo leen p06:ACCF (8 bytes)
;   0xad3c..0xad44  (8 bytes)
DATA_sprites_del_final_2:
	defb 068h,0c0h,040h,000h	; ad3c
	defb 068h,0c0h,044h,000h	; ad40

; ----------------------------------------------------------------------
; DATOS texto_AD44: texto del final: letras de la fuente, 0xFE [x] salta de
;   renglon, 0xFF acaba (p06:AADD); lo leen p06:A8DF (70 bytes)
;   0xad44..0xad8a  (70 bytes)
DATA_texto_AD44:
	defb 04dh,049h,054h,043h,048h,045h,04ch,08dh,061h,07ah,074h,000h,07fh,05dh,060h,088h	; ad44  MITCHEL.azt..]`.
	defb 070h,06ah,06ah,060h,05ch,0feh,058h,06ch,05ch,070h,000h,04ch,041h,044h,059h,04bh	; ad54  pjj`\.Xl\p.LADYK
	defb 04fh,04eh,047h,087h,065h,060h,03ch,066h,06ah,03ch,066h,06ah,03eh,0feh,050h,066h	; ad64  ONG.e`<fj<fj>.Pf
	defb 060h,066h,03fh,06eh,061h,074h,067h,06dh,03ch,070h,05fh,069h,067h,061h,03ch,06ah	; ad74  `f?natgm<p_iga<j
	defb 080h,05dh,06ah,03ch,03eh,0ffh	; ad84

; ----------------------------------------------------------------------
; DATOS texto_AD8A: texto del final: letras de la fuente, 0xFE [x] salta de
;   renglon, 0xFF acaba (p06:AADD); lo leen p06:A8F8 (44 bytes)
;   0xad8a..0xadb6  (44 bytes)
DATA_texto_AD8A:
	defb 041h,04dh,059h,073h,06eh,03ch,082h,08bh,062h,073h,060h,05ch,07dh,06fh,062h,03fh	; ad8a  AMYsn<..bs`\}ob?
	defb 0feh,060h,04bh,049h,04eh,047h,04bh,04fh,04eh,047h,074h,000h,06ah,08ch,06ah,05ch	; ad9a  .`KINGKONGt.j.j\
	defb 079h,000h,05ch,061h,087h,075h,061h,06eh,08ch,06ah,03eh,0ffh	; adaa  y.\a.uan.j>.

; ----------------------------------------------------------------------
; DATOS texto_ADB6: texto del final: letras de la fuente, 0xFE [x] salta de
;   renglon, 0xFF acaba (p06:AADD); lo leen p06:A916 (43 bytes)
;   0xadb6..0xade1  (43 bytes)
DATA_texto_ADB6:
	defb 07ah,06dh,064h,03ch,081h,088h,000h,04dh,049h,054h,043h,048h,045h,04ch,0feh,060h	; adb6  zmd<...MITCHEL.`
	defb 04ch,041h,044h,059h,060h,03ch,000h,05bh,088h,06fh,070h,06ah,073h,066h,069h,05dh	; adc6  LADY`<.[.opjsfi]
	defb 070h,060h,063h,079h,086h,08ch,06dh,05ch,083h,080h,0ffh	; add6  p`cy..m\...

; ----------------------------------------------------------------------
; DATOS texto_ADE1: texto del final: letras de la fuente, 0xFE [x] salta de
;   renglon, 0xFF acaba (p06:AADD); lo leen p06:A943 (67 bytes)
;   0xade1..0xae24  (67 bytes)
DATA_texto_ADE1:
	defb 04bh,049h,04eh,047h,04bh,04fh,04eh,047h,074h,067h,062h,05eh,06fh,060h,08ch,06ah	; ade1  KINGKONGtgb^o`.j
	defb 063h,084h,06eh,03ch,0feh,050h,061h,07ah,073h,078h,03ch,05dh,063h,088h,074h,03fh	; adf1  c.n<.Pazsx<]c.t?
	defb 063h,08ch,066h,06dh,07bh,06ah,03ch,06dh,03ch,074h,06fh,060h,08ch,06ah,03eh,0feh	; ae01  c.fm{j<m<to`.j>.
	defb 058h,05bh,082h,060h,03ch,06eh,05dh,000h,000h,000h,000h,04dh,049h,054h,043h,048h	; ae11  X[.`<n]....MITCH
	defb 045h,04ch,0ffh	; ae21

; ----------------------------------------------------------------------
; DATOS texto_AE24: texto del final: letras de la fuente, 0xFE [x] salta de
;   renglon, 0xFF acaba (p06:AADD); lo leen p06:A97F (75 bytes)
;   0xae24..0xae6f  (75 bytes)
DATA_texto_AE24:
	defb 04dh,049h,054h,043h,048h,045h,04ch,08dh,061h,07ah,074h,000h,07fh,05dh,060h,088h	; ae24  MITCHEL.azt..]`.
	defb 070h,06ah,06ah,060h,05ch,0feh,058h,06ch,05ch,070h,000h,04ch,041h,044h,059h,04bh	; ae34  pjj`\.Xl\p.LADYK
	defb 04fh,04eh,047h,087h,065h,060h,03ch,066h,06ah,03ch,066h,06ah,03eh,0feh,040h,069h	; ae44  ONG.e`<fj<fj>.@i
	defb 066h,06dh,03fh,041h,04dh,059h,070h,080h,08ch,06dh,000h,066h,08ah,066h,03ch,08ah	; ae54  fm?AMYp..m.f.f<.
	defb 06ch,060h,03ch,05fh,064h,06fh,086h,084h,06ah,03eh,0ffh	; ae64  l`<_do..j>.

; ----------------------------------------------------------------------
; DATOS texto_AE6F: texto del final: letras de la fuente, 0xFE [x] salta de
;   renglon, 0xFF acaba (p06:AADD); lo leen p06:A9D3 (53 bytes)
;   0xae6f..0xaea4  (53 bytes)
DATA_texto_AE6F:
	defb 068h,05ch,064h,05dh,06ah,03ch,08fh,000h,04bh,049h,04eh,047h,04bh,04fh,04eh,047h	; ae6f  h\d]j<..KINGKONG
	defb 074h,000h,05ch,061h,060h,05eh,08ch,06ah,08fh,0feh,038h,061h,07ah,073h,05fh,060h	; ae7f  t.\a`^.j..8azs_`
	defb 063h,03ch,06dh,03ch,04bh,04fh,04eh,047h,074h,000h,076h,08ch,060h,06ch,066h,06ah	; ae8f  c<m<KONGt.v.`lfj
	defb 073h,06ah,03ch,08fh,0ffh	; ae9f

; ----------------------------------------------------------------------
; DATOS texto_AEA4: texto del final: letras de la fuente, 0xFE [x] salta de
;   renglon, 0xFF acaba (p06:AADD); lo leen p06:AA26 (25 bytes)
;   0xaea4..0xaebd  (25 bytes)
DATA_texto_AEA4:
	defb 05fh,07ch,06dh,03ch,06eh,05dh,04dh,049h,054h,043h,048h,045h,04ch,08fh,05fh,07ch	; aea4  _|m<n]MITCHEL._|
	defb 06dh,03ch,06eh,05dh,041h,04dh,059h,08fh,0ffh	; aeb4  m<n]AMY..

; ----------------------------------------------------------------------
; DATOS texto_AEBD: texto del final: letras de la fuente, 0xFE [x] salta de
;   renglon, 0xFF acaba (p06:AADD); lo leen p06:AA49 (70 bytes)
;   0xaebd..0xaf03  (70 bytes)
DATA_texto_AEBD:
	defb 047h,04fh,04ch,04eh,045h,042h,04fh,06eh,05dh,070h,07dh,000h,077h,05ch,086h,060h	; aebd  GOLNEBOn]p}.w\.`
	defb 03ch,07dh,06eh,03ch,082h,03fh,0feh,040h,04bh,04fh,04eh,047h,074h,000h,04ch,041h	; aecd  <}n<.?.@KONGt.LA
	defb 044h,059h,06eh,05ch,08ch,066h,08bh,070h,06ah,073h,066h,062h,062h,081h,066h,06dh	; aedd  DYn\.f.pjsfbb.fm
	defb 05ch,083h,0feh,058h,05bh,082h,060h,03ch,06eh,05dh,000h,000h,000h,000h,04dh,049h	; aeed  \..X[.`<n]....MI
	defb 054h,043h,048h,045h,04ch,0ffh	; aefd

; ----------------------------------------------------------------------
; DATOS texto_AF03: texto del final: letras de la fuente, 0xFE [x] salta de
;   renglon, 0xFF acaba (p06:AADD); lo leen p06:AAAD (54 bytes)
;   0xaf03..0xaf39  (54 bytes)
DATA_texto_AF03:
	defb 05fh,08ch,06eh,08fh,064h,084h,074h,075h,03ch,08ch,062h,082h,08fh,05bh,060h,06bh	; af03  _.n.d.tu<.b..[`k
	defb 089h,088h,04bh,04fh,04eh,047h,06ah,03ch,08fh,0feh,038h,07eh,08ch,06ah,072h,04bh	; af13  ..KONGj<..8~.jrK
	defb 04fh,04eh,047h,08fh,07eh,08ch,06ah,072h,04ch,041h,044h,059h,08fh,05fh,07ch,06dh	; af23  ONG.~.jrLADY._|m
	defb 03ch,06eh,05dh,08fh,08fh,0ffh	; af33

; ----------------------------------------------------------------------
; DATOS texto_AF39: texto del final: letras de la fuente, 0xFE [x] salta de
;   renglon, 0xFF acaba (p06:AADD); lo leen p06:A711 (8 bytes)
;   0xaf39..0xaf41  (8 bytes)
DATA_texto_AF39:
	defb 054h,048h,045h,026h,045h,04eh,044h,0ffh	; af39  THE&END.

; ----------------------------------------------------------------------
; DATOS dibujos_del_final: 77 dibujos de 8x8 a 4 bits de la escena del final;
;   p06:A83F los sube a la hoja de la pagina 1 desde (8, 0) con p00:48A6; lo
;   leen p06:A83A (2464 bytes)
;   0xaf41..0xb8e1  (2464 bytes)
DATA_dibujos_del_final:
	defb 000h,000h,000h,000h	; af41
	defb 000h,000h,000h,000h	; af45
	defb 00dh,044h,0cdh,000h	; af49
	defb 0d5h,00dh,04ch,0d0h	; af4d
	defb 0d4h,000h,04dh,000h	; af51
	defb 00dh,045h,0d0h,000h	; af55
	defb 000h,000h,000h,000h	; af59
	defb 000h,000h,000h,000h	; af5d
	defb 000h,000h,000h,000h	; af61
	defb 000h,000h,000h,000h	; af65
	defb 00dh,0c4h,04dh,000h	; af69
	defb 0dch,04dh,005h,0d0h	; af6d
	defb 00dh,040h,004h,0d0h	; af71
	defb 000h,0d5h,04dh,000h	; af75
	defb 000h,000h,000h,000h	; af79
	defb 0d4h,000h,000h,000h	; af7d
	defb 000h,000h,00dh,0cch	; af81
	defb 000h,000h,0cch,0dch	; af85
	defb 000h,00dh,0ddh,0ddh	; af89
	defb 000h,0d0h,0d0h,000h	; af8d
	defb 000h,0ddh,000h,000h	; af91
	defb 00dh,000h,000h,000h	; af95
	defb 000h,000h,000h,000h	; af99
	defb 000h,000h,000h,000h	; af9d
	defb 0cdh,0dch,0dch,0ddh	; afa1
	defb 0ddh,0ddh,0cdh,0dch	; afa5
	defb 000h,000h,000h,0ddh	; afa9
	defb 000h,000h,000h,000h	; afad
	defb 000h,000h,000h,000h	; afb1
	defb 000h,000h,000h,000h	; afb5
	defb 000h,000h,000h,000h	; afb9
	defb 000h,000h,000h,000h	; afbd
	defb 0ddh,0dch,0c0h,0c0h	; afc1
	defb 0cdh,0ddh,0dch,0cch	; afc5
	defb 0cch,0dch,0ddh,00ch	; afc9
	defb 0ddh,0cch,0cdh,0d0h	; afcd
	defb 000h,0ddh,0cch,00dh	; afd1
	defb 000h,00dh,0d0h,000h	; afd5
	defb 000h,000h,00dh,000h	; afd9
	defb 000h,00dh,000h,000h	; afdd
	defb 00dh,0ddh,000h,0ddh	; afe1
	defb 0d0h,0ddh,0ddh,00ch	; afe5
	defb 0d0h,0ddh,00ch,0cdh	; afe9
	defb 00dh,0dch,000h,0ddh	; afed
	defb 000h,0d0h,000h,00dh	; aff1
	defb 000h,0c0h,000h,000h	; aff5
	defb 00ch,000h,0d0h,000h	; aff9
	defb 000h,00dh,000h,000h	; affd
	defb 0cch,0cch,0dch,0ddh	; b001
	defb 0cdh,0ddh,0ddh,0cdh	; b005
	defb 0ddh,0ddh,0cdh,0dch	; b009
	defb 0d0h,0d0h,000h,000h	; b00d
	defb 000h,000h,000h,000h	; b011
	defb 000h,000h,000h,000h	; b015
	defb 000h,000h,000h,000h	; b019
	defb 000h,000h,000h,000h	; b01d
	defb 0ddh,0ddh,000h,000h	; b021
	defb 0cdh,0dch,0cch,000h	; b025
	defb 0ddh,0cdh,0ddh,0c0h	; b029
	defb 0ddh,0ddh,0cch,0dch	; b02d
	defb 000h,000h,0ddh,0dch	; b031
	defb 000h,000h,000h,0d0h	; b035
	defb 000h,000h,000h,000h	; b039
	defb 000h,000h,000h,000h	; b03d
	defb 000h,000h,000h,000h	; b041
	defb 000h,000h,000h,000h	; b045
	defb 000h,000h,000h,000h	; b049
	defb 000h,000h,000h,000h	; b04d
	defb 000h,000h,000h,000h	; b051
	defb 000h,000h,000h,0ddh	; b055
	defb 000h,00dh,0ddh,0cch	; b059
	defb 00dh,0cch,0ddh,0d0h	; b05d
	defb 000h,000h,000h,000h	; b061
	defb 000h,000h,000h,000h	; b065
	defb 000h,000h,000h,000h	; b069
	defb 000h,000h,000h,000h	; b06d
	defb 000h,000h,00ch,0d0h	; b071
	defb 0ddh,0cch,0ddh,000h	; b075
	defb 0ddh,0ddh,000h,000h	; b079
	defb 0c0h,000h,0d0h,000h	; b07d
	defb 000h,000h,000h,000h	; b081
	defb 000h,000h,000h,0ddh	; b085
	defb 000h,000h,00dh,0dch	; b089
	defb 0d0h,00dh,0dch,0cdh	; b08d
	defb 000h,0dch,0cch,0cch	; b091
	defb 00dh,0cch,0cch,0cch	; b095
	defb 0dch,07ch,0c7h,0cch	; b099
	defb 0c7h,0cdh,0dch,0cdh	; b09d
	defb 000h,000h,000h,000h	; b0a1
	defb 0ddh,0ddh,0d0h,000h	; b0a5
	defb 0cch,0cch,0ddh,0d0h	; b0a9
	defb 0dch,0cch,0cch,0ddh	; b0ad
	defb 0ddh,0cch,0cch,0cdh	; b0b1
	defb 0d0h,0dch,0c7h,07ch	; b0b5
	defb 0d0h,0dch,07ch,0cdh	; b0b9
	defb 0d0h,0dch,0cdh,0d0h	; b0bd
	defb 000h,000h,000h,000h	; b0c1
	defb 000h,000h,000h,000h	; b0c5
	defb 000h,000h,000h,000h	; b0c9
	defb 000h,0d4h,000h,000h	; b0cd
	defb 0d0h,00dh,0ddh,000h	; b0d1
	defb 0cch,0d0h,0cdh,0dch	; b0d5
	defb 0cch,0cch,00ch,0dch	; b0d9
	defb 0dch,0c7h,0c0h,0cdh	; b0dd
	defb 000h,000h,000h,000h	; b0e1
	defb 000h,000h,000h,00dh	; b0e5
	defb 000h,000h,000h,0d0h	; b0e9
	defb 000h,000h,00dh,0d0h	; b0ed
	defb 000h,0d4h,0ddh,00ch	; b0f1
	defb 0dch,0cdh,0ddh,0cch	; b0f5
	defb 0cdh,0cch,0cch,0dch	; b0f9
	defb 0cch,0dch,0cch,0cch	; b0fd
	defb 000h,000h,000h,000h	; b101
	defb 00ch,000h,000h,000h	; b105
	defb 0dch,0d0h,000h,000h	; b109
	defb 0ddh,0cdh,000h,000h	; b10d
	defb 0dch,0cdh,000h,000h	; b111
	defb 0cch,0cdh,000h,000h	; b115
	defb 0cch,0d0h,000h,000h	; b119
	defb 0cch,0d0h,000h,000h	; b11d
	defb 00dh,0dch,0cdh,0ddh	; b121
	defb 0d0h,00dh,0dch,000h	; b125
	defb 000h,0d0h,000h,0d0h	; b129
	defb 000h,000h,000h,000h	; b12d
	defb 000h,000h,000h,000h	; b131
	defb 000h,000h,000h,000h	; b135
	defb 000h,000h,000h,000h	; b139
	defb 000h,000h,000h,000h	; b13d
	defb 00dh,0d0h,000h,00dh	; b141
	defb 0d0h,000h,000h,0dch	; b145
	defb 000h,000h,004h,0dch	; b149
	defb 000h,000h,00dh,0cch	; b14d
	defb 000h,000h,04dh,0cch	; b151
	defb 000h,000h,04dh,0cdh	; b155
	defb 000h,000h,04dh,0cdh	; b159
	defb 000h,000h,00dh,0cdh	; b15d
	defb 0cch,0ddh,0ddh,0ddh	; b161
	defb 07dh,0d4h,000h,0d0h	; b165
	defb 0cdh,040h,000h,004h	; b169
	defb 0ddh,040h,000h,000h	; b16d
	defb 0d4h,000h,000h,000h	; b171
	defb 0d0h,000h,000h,000h	; b175
	defb 040h,000h,000h,000h	; b179
	defb 0d4h,000h,000h,00dh	; b17d
	defb 0c0h,0cdh,0ddh,004h	; b181
	defb 0d0h,0d0h,0d0h,000h	; b185
	defb 00dh,004h,000h,000h	; b189
	defb 00dh,0d0h,000h,000h	; b18d
	defb 0dch,0d0h,000h,000h	; b191
	defb 0dch,0ddh,000h,000h	; b195
	defb 0cdh,0cdh,000h,000h	; b199
	defb 0cch,0dch,0d0h,000h	; b19d
	defb 04dh,0dch,07ch,00ch	; b1a1
	defb 004h,0ddh,0cch,0c0h	; b1a5
	defb 000h,04dh,0c7h,0c0h	; b1a9
	defb 000h,004h,0dch,0c0h	; b1ad
	defb 000h,004h,0dch,0c0h	; b1b1
	defb 000h,00dh,0dch,0c0h	; b1b5
	defb 000h,00dh,0c7h,0c0h	; b1b9
	defb 0d0h,0ddh,0cch,0c0h	; b1bd
	defb 0dch,0cdh,0cch,0cch	; b1c1
	defb 0cch,0cdh,0cch,0ddh	; b1c5
	defb 00ch,0cch,0ddh,0ddh	; b1c9
	defb 000h,0cdh,00dh,000h	; b1cd
	defb 000h,00dh,0d0h,0d0h	; b1d1
	defb 0c0h,0d0h,0cdh,000h	; b1d5
	defb 00dh,00dh,000h,000h	; b1d9
	defb 0ddh,00dh,000h,000h	; b1dd
	defb 0ddh,000h,000h,000h	; b1e1
	defb 0d0h,000h,000h,000h	; b1e5
	defb 000h,000h,000h,000h	; b1e9
	defb 000h,000h,000h,000h	; b1ed
	defb 000h,000h,000h,000h	; b1f1
	defb 000h,000h,000h,000h	; b1f5
	defb 000h,000h,000h,000h	; b1f9
	defb 000h,000h,000h,000h	; b1fd
	defb 0d0h,000h,00dh,00ch	; b201
	defb 000h,000h,000h,0ddh	; b205
	defb 000h,000h,0d0h,0ddh	; b209
	defb 000h,000h,0ddh,0dch	; b20d
	defb 000h,00dh,00dh,0dch	; b211
	defb 000h,000h,0ddh,0cch	; b215
	defb 000h,00dh,00dh,0c7h	; b219
	defb 00dh,000h,0ddh,0cdh	; b21d
	defb 0cch,0ddh,0c0h,000h	; b221
	defb 0cch,0cdh,0d4h,000h	; b225
	defb 0cch,0ddh,0ddh,0ddh	; b229
	defb 0cdh,0cdh,0ddh,0ddh	; b22d
	defb 0cch,0dch,0ddh,0ddh	; b231
	defb 0cdh,0cdh,0ddh,0ddh	; b235
	defb 0cch,0dch,0ddh,0ddh	; b239
	defb 0cch,0cdh,0cdh,0ddh	; b23d
	defb 000h,0dch,0cch,000h	; b241
	defb 0d0h,04ch,0c0h,00dh	; b245
	defb 000h,000h,000h,000h	; b249
	defb 000h,0d0h,000h,000h	; b24d
	defb 0ddh,0ddh,0d0h,0c0h	; b251
	defb 0ddh,0ddh,0ddh,0dch	; b255
	defb 00dh,0ddh,0ddh,0dch	; b259
	defb 0ddh,0ddh,0ddh,0ddh	; b25d
	defb 0ddh,0c0h,000h,000h	; b261
	defb 00dh,00dh,000h,000h	; b265
	defb 00ch,0ddh,000h,000h	; b269
	defb 000h,0d0h,0d0h,000h	; b26d
	defb 000h,0ddh,0d0h,000h	; b271
	defb 0ddh,00dh,0ddh,000h	; b275
	defb 0cdh,0dch,0ddh,000h	; b279
	defb 0cch,0ddh,0cdh,0d0h	; b27d
	defb 000h,000h,000h,000h	; b281
	defb 000h,000h,000h,000h	; b285
	defb 000h,000h,000h,0d0h	; b289
	defb 000h,000h,000h,0ddh	; b28d
	defb 000h,000h,0ddh,00dh	; b291
	defb 000h,0ddh,00dh,0ddh	; b295
	defb 000h,000h,000h,000h	; b299
	defb 000h,000h,000h,000h	; b29d
	defb 000h,0d0h,0ddh,0cch	; b2a1
	defb 0d0h,00ch,0dch,0cch	; b2a5
	defb 0cch,0cdh,0dch,0ddh	; b2a9
	defb 0ddh,0ddh,0cdh,0ddh	; b2ad
	defb 0ddh,0ddh,0ddh,0ddh	; b2b1
	defb 0ddh,0ddh,000h,000h	; b2b5
	defb 000h,000h,000h,000h	; b2b9
	defb 000h,000h,000h,000h	; b2bd
	defb 0cdh,0cch,0cch,0cch	; b2c1
	defb 0dch,0c7h,0c7h,0cch	; b2c5
	defb 0dch,00ch,0cch,077h	; b2c9
	defb 0ddh,0ddh,0ddh,0ddh	; b2cd
	defb 0ddh,0ddh,0ddh,0ddh	; b2d1
	defb 000h,000h,000h,000h	; b2d5
	defb 000h,000h,000h,000h	; b2d9
	defb 000h,000h,000h,000h	; b2dd
	defb 0ddh,00dh,000h,0ddh	; b2e1
	defb 0cch,0cch,0ddh,000h	; b2e5
	defb 0cch,07ch,0cch,0ddh	; b2e9
	defb 0ddh,0ddh,0dch,0cch	; b2ed
	defb 0ddh,0ddh,0ddh,0ddh	; b2f1
	defb 000h,000h,00dh,0ddh	; b2f5
	defb 000h,000h,000h,000h	; b2f9
	defb 000h,000h,000h,000h	; b2fd
	defb 0dch,0ddh,0ddh,0d0h	; b301
	defb 0dch,0cdh,0d0h,0d0h	; b305
	defb 00dh,0dch,0ddh,00dh	; b309
	defb 0cdh,0d0h,00dh,00dh	; b30d
	defb 0dch,0cdh,0d0h,000h	; b311
	defb 0ddh,0ddh,0ddh,0d0h	; b315
	defb 000h,000h,000h,000h	; b319
	defb 000h,000h,000h,000h	; b31d
	defb 000h,000h,000h,000h	; b321
	defb 000h,000h,000h,000h	; b325
	defb 000h,000h,000h,000h	; b329
	defb 0d0h,000h,000h,000h	; b32d
	defb 0d0h,000h,000h,000h	; b331
	defb 00dh,000h,000h,000h	; b335
	defb 000h,000h,000h,000h	; b339
	defb 000h,000h,000h,000h	; b33d
	defb 088h,088h,088h,088h	; b341
	defb 088h,088h,088h,088h	; b345
	defb 088h,088h,088h,088h	; b349
	defb 088h,088h,088h,081h	; b34d
	defb 088h,088h,088h,013h	; b351
	defb 088h,088h,088h,015h	; b355
	defb 088h,088h,088h,01ah	; b359
	defb 088h,088h,081h,011h	; b35d
	defb 088h,011h,011h,011h	; b361
	defb 081h,033h,044h,045h	; b365
	defb 013h,043h,033h,034h	; b369
	defb 034h,034h,034h,045h	; b36d
	defb 0a3h,045h,045h,034h	; b371
	defb 034h,044h,045h,04ah	; b375
	defb 01ah,031h,044h,0a5h	; b379
	defb 043h,01ah,015h,03ah	; b37d
	defb 088h,088h,088h,088h	; b381
	defb 011h,088h,088h,088h	; b385
	defb 0a3h,018h,088h,011h	; b389
	defb 045h,041h,011h,044h	; b38d
	defb 0a4h,014h,015h,0a3h	; b391
	defb 034h,01ah,053h,045h	; b395
	defb 041h,044h,034h,0a3h	; b399
	defb 054h,044h,043h,043h	; b39d
	defb 088h,088h,088h,088h	; b3a1
	defb 088h,088h,088h,088h	; b3a5
	defb 018h,088h,088h,088h	; b3a9
	defb 041h,088h,088h,088h	; b3ad
	defb 054h,018h,088h,088h	; b3b1
	defb 045h,041h,088h,088h	; b3b5
	defb 053h,054h,018h,088h	; b3b9
	defb 035h,034h,018h,088h	; b3bd
	defb 088h,088h,01ah,035h	; b3c1
	defb 088h,081h,0a3h,0aah	; b3c5
	defb 088h,081h,0a5h,054h	; b3c9
	defb 088h,081h,053h,0a5h	; b3cd
	defb 088h,081h,01ah,031h	; b3d1
	defb 081h,015h,015h,011h	; b3d5
	defb 013h,051h,051h,0c7h	; b3d9
	defb 081h,011h,011h,0cch	; b3dd
	defb 011h,03ah,05ah,033h	; b3e1
	defb 014h,0a3h,033h,033h	; b3e5
	defb 011h,0a5h,033h,03ah	; b3e9
	defb 011h,051h,0a3h,0aah	; b3ed
	defb 011h,045h,015h,0a3h	; b3f1
	defb 077h,014h,051h,053h	; b3f5
	defb 077h,071h,011h,011h	; b3f9
	defb 0c7h,077h,0c1h,011h	; b3fd
	defb 0aah,015h,031h,0a5h	; b401
	defb 035h,043h,0aah,045h	; b405
	defb 054h,0aah,033h,01ah	; b409
	defb 038h,053h,0a3h,013h	; b40d
	defb 0a4h,03ah,031h,044h	; b411
	defb 034h,03ah,041h,05ah	; b415
	defb 011h,011h,0ddh,011h	; b419
	defb 011h,0cch,011h,0cch	; b41d
	defb 053h,055h,041h,088h	; b421
	defb 035h,053h,054h,018h	; b425
	defb 035h,034h,034h,018h	; b429
	defb 0a5h,035h,054h,018h	; b42d
	defb 0a5h,034h,0a3h,018h	; b431
	defb 045h,043h,053h,051h	; b435
	defb 014h,055h,044h,035h	; b439
	defb 071h,043h,035h,035h	; b43d
	defb 088h,081h,0b1h,01ch	; b441
	defb 088h,01fh,0ffh,011h	; b445
	defb 081h,0cfh,0cch,0f1h	; b449
	defb 081h,01bh,01ch,0cfh	; b44d
	defb 081h,0ffh,0f1h,01ch	; b451
	defb 01fh,0ffh,0ffh,011h	; b455
	defb 01fh,0ffh,0ffh,0f1h	; b459
	defb 01fh,0cfh,0ffh,0ffh	; b45d
	defb 07ch,077h,0c7h,077h	; b461
	defb 0c7h,0cch,07ch,077h	; b465
	defb 01ch,0c7h,0c7h,07ch	; b469
	defb 011h,01dh,0c7h,077h	; b46d
	defb 0ffh,011h,011h,0dch	; b471
	defb 0cfh,0b1h,011h,011h	; b475
	defb 01ch,0fbh,011h,01dh	; b479
	defb 011h,0cbh,011h,011h	; b47d
	defb 0c7h,077h,077h,01dh	; b481
	defb 077h,077h,077h,077h	; b485
	defb 077h,0c7h,07ch,0cdh	; b489
	defb 0c7h,07ch,0c7h,0d7h	; b48d
	defb 07ch,0c7h,0cdh,0cch	; b491
	defb 01dh,0d1h,011h,0c7h	; b495
	defb 011h,011h,0ddh,0cch	; b499
	defb 01dh,011h,01ch,011h	; b49d
	defb 0cch,015h,05ah,035h	; b4a1
	defb 0d7h,0c1h,033h,053h	; b4a5
	defb 07ch,071h,055h,043h	; b4a9
	defb 0c7h,071h,015h,035h	; b4ad
	defb 077h,071h,045h,051h	; b4b1
	defb 077h,071h,044h,018h	; b4b5
	defb 07ch,0c1h,041h,088h	; b4b9
	defb 0c7h,071h,018h,088h	; b4bd
	defb 054h,018h,088h,088h	; b4c1
	defb 054h,018h,088h,088h	; b4c5
	defb 051h,088h,088h,088h	; b4c9
	defb 018h,088h,088h,088h	; b4cd
	defb 088h,088h,088h,088h	; b4d1
	defb 088h,088h,088h,088h	; b4d5
	defb 088h,088h,088h,088h	; b4d9
	defb 088h,088h,088h,088h	; b4dd
	defb 01ch,0ffh,0fch,0fbh	; b4e1
	defb 01ch,0ffh,0ffh,0cfh	; b4e5
	defb 01fh,0fch,0ffh,0ffh	; b4e9
	defb 01fh,0ffh,0ffh,0fbh	; b4ed
	defb 081h,0ffh,0fbh,011h	; b4f1
	defb 081h,0ffh,0b1h,01fh	; b4f5
	defb 081h,0bfh,0ffh,0ffh	; b4f9
	defb 081h,0ffh,0ffh,0fch	; b4fd
	defb 0b1h,0cfh,0b1h,011h	; b501
	defb 0d1h,01dh,0b1h,011h	; b505
	defb 0ddh,01dh,01bh,011h	; b509
	defb 011h,011h,011h,015h	; b50d
	defb 011h,0fdh,0f1h,0b1h	; b511
	defb 0fch,0fch,0d1h,0b1h	; b515
	defb 0cbh,0cfh,0ffh,01bh	; b519
	defb 0ffh,0ffh,0ffh,011h	; b51d
	defb 0d1h,013h,031h,013h	; b521
	defb 011h,033h,013h,035h	; b525
	defb 015h,033h,033h,053h	; b529
	defb 035h,0aah,035h,033h	; b52d
	defb 05ah,05ah,0a3h,031h	; b531
	defb 05ah,0a4h,041h,011h	; b535
	defb 015h,041h,01dh,01ch	; b539
	defb 011h,01dh,0cch,077h	; b53d
	defb 01ch,071h,088h,088h	; b541
	defb 01dh,071h,088h,088h	; b545
	defb 017h,013h,018h,088h	; b549
	defb 01ch,015h,031h,088h	; b54d
	defb 017h,013h,018h,088h	; b551
	defb 077h,013h,018h,088h	; b555
	defb 077h,015h,018h,088h	; b559
	defb 0cch,011h,088h,088h	; b55d
	defb 081h,011h,0ffh,0ffh	; b561
	defb 088h,01fh,0ffh,0ffh	; b565
	defb 088h,01dh,0ffh,0ffh	; b569
	defb 000h,000h,000h,000h	; b56d
	defb 000h,000h,000h,000h	; b571
	defb 000h,000h,000h,000h	; b575
	defb 000h,000h,000h,000h	; b579
	defb 000h,000h,000h,000h	; b57d
	defb 0ffh,0ffh,0ffh,0d1h	; b581
	defb 0ffh,0fdh,0dfh,011h	; b585
	defb 0fdh,0dfh,0f1h,011h	; b589
	defb 000h,000h,000h,000h	; b58d
	defb 000h,000h,000h,000h	; b591
	defb 000h,000h,000h,000h	; b595
	defb 000h,000h,000h,000h	; b599
	defb 000h,000h,000h,000h	; b59d
	defb 011h,0ddh,0c2h,0c2h	; b5a1
	defb 01dh,0dch,022h,02ch	; b5a5
	defb 0ddh,0c2h,0c2h,022h	; b5a9
	defb 000h,000h,000h,000h	; b5ad
	defb 000h,000h,000h,000h	; b5b1
	defb 000h,000h,000h,000h	; b5b5
	defb 000h,000h,000h,000h	; b5b9
	defb 000h,000h,000h,000h	; b5bd
	defb 02ch,018h,088h,088h	; b5c1
	defb 0cch,0d1h,088h,088h	; b5c5
	defb 0cdh,0d1h,088h,088h	; b5c9
	defb 000h,000h,000h,000h	; b5cd
	defb 000h,000h,000h,000h	; b5d1
	defb 000h,000h,000h,000h	; b5d5
	defb 000h,000h,000h,000h	; b5d9
	defb 000h,000h,000h,000h	; b5dd
	defb 05ah,0a5h,044h,044h	; b5e1
	defb 044h,0aah,0a5h,04ah	; b5e5
	defb 05ah,05ah,0aah,05ah	; b5e9
	defb 0aah,0aah,0aah,0aah	; b5ed
	defb 05ah,0aah,0aah,0aah	; b5f1
	defb 0aah,055h,05ah,0a5h	; b5f5
	defb 054h,0aah,055h,05ah	; b5f9
	defb 045h,045h,05ah,0a5h	; b5fd
	defb 044h,055h,05ah,0aah	; b601
	defb 05ah,04ah,0aah,0a5h	; b605
	defb 0a5h,0aah,05ah,0aah	; b609
	defb 0aah,0aah,0aah,0aah	; b60d
	defb 0aah,0aah,0aah,0aah	; b611
	defb 03ah,05ah,0a5h,0aah	; b615
	defb 0aah,0a5h,055h,0a4h	; b619
	defb 055h,05ah,05ah,04ah	; b61d
	defb 044h,044h,044h,045h	; b621
	defb 044h,04ah,0a5h,0a4h	; b625
	defb 0aah,0a5h,05ah,0aah	; b629
	defb 0aah,0aah,0aah,0aah	; b62d
	defb 0aah,03ah,0aah,0a5h	; b631
	defb 055h,0aah,0a5h,0aah	; b635
	defb 0a4h,04ah,0a5h,044h	; b639
	defb 045h,054h,044h,054h	; b63d
	defb 0ffh,0ffh,0ffh,0ffh	; b641
	defb 0ffh,0ffh,0ffh,0ffh	; b645
	defb 0ffh,0ffh,0ffh,0ffh	; b649
	defb 0ffh,0f1h,011h,01fh	; b64d
	defb 0ffh,01bh,0b9h,0b1h	; b651
	defb 0f1h,0bbh,09bh,09bh	; b655
	defb 01bh,01bh,0bbh,0b1h	; b659
	defb 011h,0b1h,011h,0bbh	; b65d
	defb 0ffh,0ffh,0ffh,0ffh	; b661
	defb 0ffh,0ffh,0ffh,0ffh	; b665
	defb 0ffh,0ffh,0ffh,0f1h	; b669
	defb 0ffh,0ffh,0ffh,019h	; b66d
	defb 011h,0ffh,0ffh,01bh	; b671
	defb 091h,011h,011h,0bbh	; b675
	defb 01bh,0bbh,0bbh,011h	; b679
	defb 01bh,011h,01bh,0bbh	; b67d
	defb 0ffh,0ffh,0ffh,0ffh	; b681
	defb 0ffh,0ffh,0ffh,0ffh	; b685
	defb 0ffh,0ffh,0ffh,0ffh	; b689
	defb 0ffh,0ffh,0ffh,0ffh	; b68d
	defb 0ffh,0ffh,0ffh,0ffh	; b691
	defb 0ffh,0ffh,0ffh,0ffh	; b695
	defb 0ffh,0ffh,0f1h,011h	; b699
	defb 0ffh,011h,019h,0b9h	; b69d
	defb 0f1h,09bh,0b9h,09bh	; b6a1
	defb 019h,0bbh,099h,099h	; b6a5
	defb 09bh,0b9h,09bh,0bbh	; b6a9
	defb 0b9h,09bh,0b9h,09bh	; b6ad
	defb 0b9h,0bbh,0bbh,0b9h	; b6b1
	defb 09bh,0bbh,011h,01bh	; b6b5
	defb 01bh,0b1h,011h,0b1h	; b6b9
	defb 011h,0bbh,01bh,011h	; b6bd
	defb 091h,0ffh,0ffh,0ffh	; b6c1
	defb 099h,01fh,0ffh,0ffh	; b6c5
	defb 099h,091h,0ffh,0ffh	; b6c9
	defb 0bbh,09bh,01fh,0ffh	; b6cd
	defb 0bbh,099h,091h,0ffh	; b6d1
	defb 09bh,0b9h,09bh,01fh	; b6d5
	defb 0bbh,0b9h,0bbh,01fh	; b6d9
	defb 01bh,01bh,091h,0b1h	; b6dd
	defb 0ffh,0ffh,0ffh,0ffh	; b6e1
	defb 0ffh,0ffh,0ffh,0ffh	; b6e5
	defb 0ffh,0ffh,0ffh,0ffh	; b6e9
	defb 0ffh,0ffh,0ffh,0f1h	; b6ed
	defb 0ffh,0ffh,0ffh,0f1h	; b6f1
	defb 0ffh,0ffh,0ffh,01ch	; b6f5
	defb 0ffh,0ffh,0ffh,01ch	; b6f9
	defb 0ffh,0ffh,0ffh,01dh	; b6fd
	defb 0ffh,0ffh,0ffh,0ffh	; b701
	defb 0ffh,0ffh,0ffh,0ffh	; b705
	defb 011h,01fh,0ffh,0ffh	; b709
	defb 0cch,0c1h,011h,011h	; b70d
	defb 0cch,0cch,0cch,01ch	; b711
	defb 0ddh,0cch,0cdh,0cch	; b715
	defb 0ddh,0dch,0dch,0cch	; b719
	defb 01dh,0ddh,0cch,0cch	; b71d
	defb 0ffh,0ffh,0ffh,0ffh	; b721
	defb 0ffh,0ffh,0ffh,0ffh	; b725
	defb 0ffh,0ffh,0ffh,0ffh	; b729
	defb 011h,0ffh,0ffh,0ffh	; b72d
	defb 0cdh,01fh,0ffh,0ffh	; b731
	defb 0cdh,0d1h,0ffh,0ffh	; b735
	defb 0cch,0ddh,01fh,0ffh	; b739
	defb 0cch,0cdh,01fh,0f1h	; b73d
	defb 0b1h,011h,011h,011h	; b741
	defb 01bh,019h,01bh,0b1h	; b745
	defb 0b9h,0b1h,091h,0bbh	; b749
	defb 01bh,09bh,011h,01bh	; b74d
	defb 011h,0b1h,01bh,01bh	; b751
	defb 01bh,011h,011h,011h	; b755
	defb 041h,01bh,011h,0b1h	; b759
	defb 0aah,0a1h,011h,014h	; b75d
	defb 011h,01bh,011h,011h	; b761
	defb 0b1h,011h,0bbh,011h	; b765
	defb 01bh,01bh,011h,01bh	; b769
	defb 0b1h,0bbh,0b1h,011h	; b76d
	defb 01bh,0bbh,01bh,0bbh	; b771
	defb 0b1h,01bh,0b4h,054h	; b775
	defb 01bh,0b4h,055h,041h	; b779
	defb 044h,044h,044h,044h	; b77d
	defb 01bh,011h,011h,011h	; b781
	defb 011h,011h,011h,011h	; b785
	defb 09bh,011h,0b1h,011h	; b789
	defb 011h,0bbh,011h,0b1h	; b78d
	defb 011h,011h,0b9h,01bh	; b791
	defb 0b9h,01bh,0b1h,01bh	; b795
	defb 04bh,091h,019h,091h	; b799
	defb 044h,044h,041h,014h	; b79d
	defb 011h,0bbh,0bbh,0bbh	; b7a1
	defb 011h,01bh,0bbh,0b9h	; b7a5
	defb 011h,0b1h,01bh,0bbh	; b7a9
	defb 011h,011h,01bh,0bbh	; b7ad
	defb 0b1h,01bh,0b1h,0bbh	; b7b1
	defb 099h,011h,01bh,011h	; b7b5
	defb 01bh,0b1h,011h,01bh	; b7b9
	defb 011h,014h,044h,041h	; b7bd
	defb 01fh,0ffh,011h,01dh	; b7c1
	defb 01fh,0f1h,0bbh,01ch	; b7c5
	defb 091h,011h,0b1h,0dch	; b7c9
	defb 0b9h,01bh,01dh,0ddh	; b7cd
	defb 0bbh,0b1h,0bdh,0ddh	; b7d1
	defb 0b1h,0bbh,011h,011h	; b7d5
	defb 01bh,0b1h,0bbh,014h	; b7d9
	defb 011h,011h,011h,044h	; b7dd
	defb 0cdh,0dch,0cdh,0cch	; b7e1
	defb 0cdh,0ddh,0cdh,0dch	; b7e5
	defb 0ddh,0ddh,0ddh,0d1h	; b7e9
	defb 0d1h,0ddh,0cdh,0ddh	; b7ed
	defb 01dh,0cdh,0ddh,0cch	; b7f1
	defb 011h,01dh,0cdh,0d1h	; b7f5
	defb 0aah,041h,01dh,01dh	; b7f9
	defb 04ah,0aah,041h,011h	; b7fd
	defb 01ch,01dh,0d1h,01bh	; b801
	defb 01ch,01ch,0ddh,01bh	; b805
	defb 0cdh,01dh,0cdh,01bh	; b809
	defb 0cdh,01dh,0ddh,011h	; b80d
	defb 0dch,01dh,0dch,014h	; b811
	defb 0d1h,0ddh,01ch,0d1h	; b815
	defb 01dh,0ddh,0cdh,0ddh	; b819
	defb 011h,011h,011h,011h	; b81d
	defb 0f7h,0cch,077h,0f7h	; b821
	defb 0ffh,0ffh,0ffh,0ffh	; b825
	defb 0ffh,0ffh,0ffh,0ffh	; b829
	defb 0ffh,0ffh,0ffh,0ffh	; b82d
	defb 0ffh,0ffh,0ffh,0ffh	; b831
	defb 0ffh,0ffh,0ffh,0ffh	; b835
	defb 0ffh,0ffh,0ffh,0ffh	; b839
	defb 0ffh,0ffh,0ffh,0ffh	; b83d
	defb 0ffh,0ffh,0ffh,0ffh	; b841
	defb 0ffh,0ffh,0ffh,0f7h	; b845
	defb 0ffh,0ffh,0ffh,0ffh	; b849
	defb 0ffh,0ffh,0ffh,0ffh	; b84d
	defb 0ffh,0ffh,0ffh,0fch	; b851
	defb 0ffh,0cch,0cfh,0cch	; b855
	defb 0ffh,0fch,0cch,0c7h	; b859
	defb 0f7h,077h,0c7h,0cch	; b85d
	defb 0f7h,07fh,07fh,0ffh	; b861
	defb 07ch,07ch,0c7h,0f7h	; b865
	defb 0ffh,0cch,0ffh,0c7h	; b869
	defb 0ffh,0ffh,0c7h,0cch	; b86d
	defb 0c7h,07ch,07ch,077h	; b871
	defb 0cch,0c7h,0c7h,07ch	; b875
	defb 077h,077h,077h,077h	; b879
	defb 07ch,077h,07ch,07fh	; b87d
	defb 0ffh,0ffh,0ffh,0ffh	; b881
	defb 0fch,0cfh,0ffh,0ffh	; b885
	defb 077h,077h,0c7h,0ffh	; b889
	defb 0cch,07fh,0cfh,0ffh	; b88d
	defb 077h,077h,077h,0cfh	; b891
	defb 0cch,077h,07ch,077h	; b895
	defb 077h,0cch,0cfh,0ffh	; b899
	defb 0cch,07fh,0ffh,0ffh	; b89d
	defb 000h,000h,004h,0d4h	; b8a1
	defb 000h,000h,000h,00dh	; b8a5
	defb 000h,000h,000h,000h	; b8a9
	defb 000h,000h,000h,000h	; b8ad
	defb 000h,000h,000h,000h	; b8b1
	defb 000h,000h,000h,000h	; b8b5
	defb 000h,000h,000h,000h	; b8b9
	defb 000h,000h,000h,000h	; b8bd
	defb 000h,000h,000h,000h	; b8c1
	defb 000h,000h,000h,000h	; b8c5
	defb 000h,000h,000h,000h	; b8c9
	defb 000h,000h,000h,000h	; b8cd
	defb 000h,000h,000h,000h	; b8d1
	defb 000h,000h,000h,000h	; b8d5
	defb 010h,000h,000h,000h	; b8d9
	defb 010h,000h,000h,000h	; b8dd

; ----------------------------------------------------------------------
; DATOS sobra_B8E1: 7 bytes entre los dibujos del final y las figuras del
;   titulo que no lee nadie
;   0xb8e1..0xb8e8  (7 bytes)
DATA_sobra_B8E1:
	defb 000h,0fah,07fh,0ffh,041h,0ffh,000h	; b8e1

; ----------------------------------------------------------------------
; DATOS titulo_figura_B8E8: 4 columnas x 5 filas de dibujos del rotulo
;   (p06:BA99, con transparencia); lo leen p00:4EC1 (20 bytes)
;   0xb8e8..0xb8fc  (20 bytes)
DATA_titulo_figura_B8E8:
	defb 000h,040h,041h,000h	; b8e8
	defb 042h,043h,044h,045h	; b8ec
	defb 046h,047h,048h,049h	; b8f0
	defb 04ah,033h,04ch,04dh	; b8f4
	defb 04eh,04fh,050h,000h	; b8f8

; ----------------------------------------------------------------------
; DATOS titulo_figura_B8FC: 7 columnas x 5 filas de dibujos del rotulo
;   (p06:BA99, con transparencia); lo leen p00:4EC1 (35 bytes)
;   0xb8fc..0xb91f  (35 bytes)
DATA_titulo_figura_B8FC:
	defb 000h,000h,058h,000h,000h,02bh,02ch	; b8fc
	defb 025h,026h,027h,028h,029h,02ah,02dh	; b903
	defb 02eh,02fh,030h,031h,032h,033h,034h	; b90a
	defb 035h,036h,037h,038h,039h,03ah,000h	; b911
	defb 03bh,03ch,03dh,000h,03eh,03fh,000h	; b918

; ----------------------------------------------------------------------
; DATOS titulo_figura_B91F: 3 columnas x 5 filas de dibujos del rotulo
;   (p06:BA99, con transparencia); lo leen p00:4EC1 (15 bytes)
;   0xb91f..0xb92e  (15 bytes)
DATA_titulo_figura_B91F:
	defb 000h,000h,000h	; b91f
	defb 033h,033h,052h	; b922
	defb 053h,054h,052h	; b925
	defb 056h,057h,051h	; b928
	defb 055h,055h,04bh	; b92b

; ----------------------------------------------------------------------
; DATOS titulo_figura_B92E: 5 columnas x 6 filas de dibujos del rotulo
;   (p06:BA99, con transparencia); lo leen p00:4EC1 (30 bytes)
;   0xb92e..0xb94c  (30 bytes)
DATA_titulo_figura_B92E:
	defb 05bh,05ch,05dh,05eh,05fh	; b92e
	defb 060h,061h,062h,063h,064h	; b933
	defb 065h,066h,067h,068h,069h	; b938
	defb 000h,06ah,06bh,06ch,06dh	; b93d
	defb 06eh,06fh,070h,071h,072h	; b942
	defb 073h,074h,059h,05ah,075h	; b947

; ----------------------------------------------------------------------
; DATOS titulo_figura_B94C: 12 columnas x 3 filas de dibujos del rotulo
;   (p06:BA99, con transparencia); lo leen p00:4EC1 (36 bytes)
;   0xb94c..0xb970  (36 bytes)
DATA_titulo_figura_B94C:
	defb 001h,002h,003h,004h,005h,006h,007h,008h,009h,00ah,00bh,00ch	; b94c  ............
	defb 00dh,00eh,00fh,010h,011h,012h,013h,014h,015h,016h,017h,018h	; b958  ............
	defb 019h,01ah,01bh,01ch,01dh,01eh,01fh,020h,021h,022h,023h,024h	; b964  ....... !"#$

; ======================================================================
; CODIGO 0xb970..0xba5a  (234 bytes)
; ======================================================================


prepara_el_titulo:
	call 0409eh		;b970   ; borra la pagina 0, pone la paleta de p06:BA6F y sube las letras del rotulo
	ld bc,00007h		;b973
	call 00047h		;b976   ; BIOS WRTVDP - Writes data in the VDP-register
	call 041ach		;b979   ; p00:puente_modo_de_pantalla
	ld b,00bh		;b97c
	ld hl,0ba6eh		;b97e   ; paleta_del_titulo: 11 bytes que p06:B97C copia a 0xDFB0 (contador y [color][RB][G] x3 + 0xFF), la lista de p06:B98D
	ld de,0dfb0h		;b981
L_B984:
	ld a,(hl)			;b984
	ld (de),a			;b985
	inc hl			;b986
	inc de			;b987
	djnz L_B984		;b988
	ld hl,0ba6fh		;b98a
	call 040f2h		;b98d   ; p00:puente_pon_paleta
	call banco_5_en_8000		;b990
	ld hl,0a2a1h		;b993   ; titulo_A2A1: 36 letras de 1 bit del rotulo del titulo (color 6); p06:B993
	ld de,00800h		;b996
	ld bc,02406h		;b999
	call 041b2h		;b99c   ; p00:puente_sube_letras
	call banco_5_en_8000		;b99f
	ld hl,0a3c1h		;b9a2   ; titulo_A3C1: 52 letras de 1 bit del rotulo del titulo (color 5); p06:B993
	ld de,02808h		;b9a5
	ld bc,03405h		;b9a8
	call 041b2h		;b9ab   ; p00:puente_sube_letras
	call banco_5_en_8000		;b9ae
	ld hl,0a561h		;b9b1   ; titulo_A561: 29 letras de 1 bit del rotulo del titulo (color 8); p06:B993
	ld de,0c810h		;b9b4
	ld bc,01d08h		;b9b7
	jp 041b2h		;b9ba   ; p00:puente_sube_letras
banco_5_en_8000:
	di			;b9bd
	ld a,005h		;b9be
	ld (08000h),a		;b9c0   ; el mapper: el banco de A en 0x8000
	ld (0f0f2h),a		;b9c3   ; guarda la copia del banco de 0x8000
	ei			;b9c6
	ret			;b9c7
L_B9C8:
	ld a,(0c104h)		;b9c8   ; lee la espera del estado, en cuadros
	ld b,a			;b9cb
	and 003h		;b9cc
	ret nz			;b9ce
	ld a,(0dfb0h)		;b9cf
	dec a			;b9d2
	jr z,L_BA04		;b9d3
	dec a			;b9d5
	jr z,L_BA2E		;b9d6
	ld a,001h		;b9d8
	ld (0dfb0h),a		;b9da
	ld b,003h		;b9dd
	ld hl,0dfb1h		;b9df
	inc hl			;b9e2
	ld de,0ba5ah		;b9e3   ; brillo_BA5A: [color][RB][G] ... 0xFF: a donde sube (y con que parpadea) el rotulo (p06:B9C8, p06:BA46)
	inc de			;b9e6
L_B9E7:
	ld a,(de)			;b9e7
	and 0f0h		;b9e8
	ld c,a			;b9ea
	ld a,(hl)			;b9eb
	and 0f0h		;b9ec
	cp c			;b9ee
	jr z,L_B9F4		;b9ef
	add a,010h		;b9f1
	ld (hl),a			;b9f3
L_B9F4:
	djnz L_B9F8		;b9f4
	jr L_BA40		;b9f6
L_B9F8:
	ld a,003h		;b9f8
	call 0408ch		;b9fa   ; p00:puente_hl_mas_a
	ld a,003h		;b9fd
	call 04098h		;b9ff   ; p00:puente_de_mas_a
	jr L_B9E7		;ba02
L_BA04:
	ld a,002h		;ba04
	ld (0dfb0h),a		;ba06
	ld b,003h		;ba09
	ld hl,0dfb1h		;ba0b
	inc hl			;ba0e
	ld de,0ba5ah		;ba0f   ; brillo_BA5A: [color][RB][G] ... 0xFF: a donde sube (y con que parpadea) el rotulo (p06:B9C8, p06:BA46)
	inc de			;ba12
L_BA13:
	ld a,(de)			;ba13
	and 00fh		;ba14
	ld c,a			;ba16
	ld a,(hl)			;ba17
	and 00fh		;ba18
	cp c			;ba1a
	jr z,L_BA1E		;ba1b
	inc (hl)			;ba1d
L_BA1E:
	djnz L_BA22		;ba1e
	jr L_BA40		;ba20
L_BA22:
	ld a,003h		;ba22
	call 0408ch		;ba24   ; p00:puente_hl_mas_a
	ld a,003h		;ba27
	call 04098h		;ba29   ; p00:puente_de_mas_a
	jr L_BA13		;ba2c
L_BA2E:
	xor a			;ba2e
	ld (0dfb0h),a		;ba2f
	ld b,003h		;ba32
	ld hl,0dfb1h		;ba34
	inc hl			;ba37
	inc hl			;ba38
	ld de,0ba5ah		;ba39   ; brillo_BA5A: [color][RB][G] ... 0xFF: a donde sube (y con que parpadea) el rotulo (p06:B9C8, p06:BA46)
	inc de			;ba3c
	inc de			;ba3d
	jr L_BA13		;ba3e
L_BA40:
	ld hl,0dfb1h		;ba40
	jp 040f2h		;ba43   ; p00:puente_pon_paleta
L_BA46:
	ld a,(0c104h)		;ba46   ; lee la espera del estado, en cuadros
	ld b,a			;ba49
	and 003h		;ba4a
	ret nz			;ba4c
	bit 2,b		;ba4d
	ld hl,0ba5ah		;ba4f   ; brillo_BA5A: [color][RB][G] ... 0xFF: a donde sube (y con que parpadea) el rotulo (p06:B9C8, p06:BA46)
	jr z,L_BA57		;ba52
	ld hl,0ba64h		;ba54   ; brillo_BA64: [color][RB][G] ... 0xFF: a donde sube (y con que parpadea) el rotulo (p06:B9C8, p06:BA46)
L_BA57:
	jp 040f2h		;ba57   ; p00:puente_pon_paleta

; ----------------------------------------------------------------------
; DATOS brillo_BA5A: [color][RB][G] ... 0xFF: a donde sube (y con que
;   parpadea) el rotulo (p06:B9C8, p06:BA46); lo leen p00:46CF (10 bytes)
;   0xba5a..0xba64  (10 bytes)
DATA_brillo_BA5A:
	defb 005h,070h,000h	; ba5a
	defb 006h,007h,003h	; ba5d
	defb 008h,070h,000h	; ba60
	defb 0ffh	; ba63

; ----------------------------------------------------------------------
; DATOS brillo_BA64: [color][RB][G] ... 0xFF: a donde sube (y con que
;   parpadea) el rotulo (p06:B9C8, p06:BA46); lo leen p00:46CF (10 bytes)
;   0xba64..0xba6e  (10 bytes)
DATA_brillo_BA64:
	defb 005h,050h,000h	; ba64
	defb 006h,005h,001h	; ba67
	defb 008h,050h,000h	; ba6a
	defb 0ffh	; ba6d

; ----------------------------------------------------------------------
; DATOS paleta_del_titulo: 11 bytes que p06:B97C copia a 0xDFB0 (contador y
;   [color][RB][G] x3 + 0xFF), la lista de p06:B98D; lo leen p06:B984 (11
;   bytes)
;   0xba6e..0xba79  (11 bytes)
DATA_paleta_del_titulo:
	defb 000h,005h,000h,000h,006h,000h,000h,008h,000h,000h,0ffh	; ba6e  ...........

; ======================================================================
; CODIGO 0xba79..0xbae7  (110 bytes)
; ======================================================================


L_BA79:
	call prepara_el_titulo		;ba79   ; prepara_el_titulo: borra la pagina 0, pone la paleta de p06:BA6F y sube las letras del rotulo
	ld b,003h		;ba7c
	ld de,06606h		;ba7e
L_BA81:
	ld a,00fh		;ba81
	call 040f8h		;ba83   ; p00:puente_pon_un_color
	dec e			;ba86
	dec e			;ba87
	ld a,d			;ba88
	sub 022h		;ba89
	ld d,a			;ba8b
	ld hl,00800h		;ba8c
L_BA8F:
	dec hl			;ba8f
	ld a,h			;ba90
	or l			;ba91
	jr nz,L_BA8F		;ba92
	djnz L_BA81		;ba94
	call 0406eh		;ba96   ; p00:puente_apaga_la_pantalla
	ld bc,00405h		;ba99
	ld hl,0b8e8h		;ba9c   ; titulo_figura_B8E8: 4 columnas x 5 filas de dibujos del rotulo (p06:BA99, con transparencia)
	ld de,01820h		;ba9f
	call 041c4h		;baa2   ; p00:puente_pinta_figura_sin_bancos
	ld bc,00305h		;baa5
	ld hl,0b91fh		;baa8   ; titulo_figura_B91F: 3 columnas x 5 filas de dibujos del rotulo (p06:BA99, con transparencia)
	ld de,07020h		;baab
	call 041c4h		;baae   ; p00:puente_pinta_figura_sin_bancos
	ld bc,00506h		;bab1
	ld hl,0b92eh		;bab4   ; titulo_figura_B92E: 5 columnas x 6 filas de dibujos del rotulo (p06:BA99, con transparencia)
	ld de,0c020h		;bab7
	call 041c4h		;baba   ; p00:puente_pinta_figura_sin_bancos
	ld de,03820h		;babd
	call pinta_figura_del_titulo_B8FC		;bac0
	ld de,08820h		;bac3
	call pinta_figura_del_titulo_B8FC		;bac6
	ld bc,00c03h		;bac9
	ld hl,0b94ch		;bacc   ; titulo_figura_B94C: 12 columnas x 3 filas de dibujos del rotulo (p06:BA99, con transparencia)
	ld de,05058h		;bacf
	call 041c4h		;bad2   ; p00:puente_pinta_figura_sin_bancos
	ld hl,0bae7h		;bad5   ; creditos: los creditos del titulo: [x][y] letras, 0xFE otra posicion, 0xFF acaba (p00:4915)
	call 04056h		;bad8   ; p00:puente_rotulo
	jp 04086h		;badb   ; p00:puente_enciende_la_pantalla
pinta_figura_del_titulo_B8FC:
	ld bc,00705h		;bade
	ld hl,0b8fch		;bae1   ; titulo_figura_B8FC: 7 columnas x 5 filas de dibujos del rotulo (p06:BA99, con transparencia)
	jp 041c4h		;bae4   ; p00:puente_pinta_figura_sin_bancos

; ----------------------------------------------------------------------
; DATOS creditos: los creditos del titulo: [x][y] letras, 0xFE otra posicion,
;   0xFF acaba (p00:4915); lo leen p00:4919 (112 bytes)
;   0xbae7..0xbb57  (112 bytes)
DATA_creditos:
	defb 050h,088h,03ah,04bh,04fh,04eh,041h,04dh,049h,000h,031h,039h,038h,036h,0feh,028h	; bae7  P.:KONAMI.1986.(
	defb 098h,053h,048h,04fh,043h,048h,049h,04bh,055h,040h,046h,055h,04ah,049h,000h,043h	; baf7  .SHOCHIKU@FUJI.C
	defb 04fh,08dh,03fh,04ch,054h,044h,08dh,0feh,030h,0a8h,03ah,031h,039h,038h,036h,000h	; bb07  O.?LTD..0.:1986.
	defb 044h,045h,000h,04ch,041h,055h,052h,045h,04eh,054h,049h,049h,053h,0feh,020h,0b0h	; bb17  DE.LAURENTIIS. .
	defb 045h,04eh,054h,045h,052h,054h,041h,049h,04eh,04dh,045h,04eh,054h,000h,047h,052h	; bb27  ENTERTAINMENT.GR
	defb 04fh,055h,050h,000h,049h,04eh,043h,08dh,0feh,028h,0c0h,041h,04ch,04ch,000h,052h	; bb37  OUP.INC..(.ALL.R
	defb 049h,047h,048h,054h,053h,000h,052h,045h,053h,045h,052h,056h,045h,044h,08dh,0ffh	; bb47  IGHTS.RESERVED..

; ======================================================================
; CODIGO 0xbb57..0xbc05  (174 bytes)
; ======================================================================


L_BB57:
	xor a			;bb57
	ld (0c372h),a		;bb58
	ld a,(0c125h)		;bb5b   ; lee la PANTALLA
	cp 088h		;bb5e   ; la pantalla 0x88?
	jp z,L_BBEF		;bb60
	ld c,a			;bb63
	ld a,(0c201h)		;bb64   ; lee el estado de la partida (0 jugando, 1 cambio de pantalla, 3 conversacion, 5 y 6 sucesos, 7 GAME OVER)
	cp 002h		;bb67
	ret z			;bb69
	ld a,c			;bb6a
	cp 068h		;bb6b
	jr z,L_BBC5		;bb6d
	cp 069h		;bb6f
	jr z,L_BBD3		;bb71
	cp 07dh		;bb73
	jr z,L_BBE1		;bb75
	cp 06bh		;bb77
	jr z,L_BB9E		;bb79
	cp 089h		;bb7b
	ret nz			;bb7d
	ld a,(0c35bh)		;bb7e   ; lee cuantos objetos 0x1C se llevan (BCD; 0xFF sin cuenta)
	and a			;bb81
	ret z			;bb82
	ld bc,0011bh		;bb83
	ld de,05060h		;bb86
	ld a,(0c350h)		;bb89   ; lee cuantos objetos 0x11 se llevan (BCD; 0xFF sin cuenta)
	and a			;bb8c
	call z,0419ah		;bb8d   ; p00:puente_pon_objeto: p01:7852: pone el objeto C (B unidades) en (E, D) de la pantalla
	ld bc,00111h		;bb90
	ld de,06060h		;bb93
	ld a,(0c35ah)		;bb96   ; lee cuantos objetos 0x1B se llevan (BCD; 0xFF sin cuenta)
	and a			;bb99
	jp z,0419ah		;bb9a   ; p00:puente_pon_objeto: p01:7852: pone el objeto C (B unidades) en (E, D) de la pantalla
	ret			;bb9d
L_BB9E:
	ld a,(0c373h)		;bb9e
	and a			;bba1
	ld bc,0010dh		;bba2
	ld de,07070h		;bba5
	call nz,0419ah		;bba8   ; p00:puente_pon_objeto: p01:7852: pone el objeto C (B unidades) en (E, D) de la pantalla
	ld de,02090h		;bbab
	ld bc,0011dh		;bbae
	push bc			;bbb1
	ld a,(0c370h)		;bbb2
	and a			;bbb5
	call nz,0419ah		;bbb6   ; p00:puente_pon_objeto: p01:7852: pone el objeto C (B unidades) en (E, D) de la pantalla
	pop bc			;bbb9
	ld de,09030h		;bbba
	ld a,(0c371h)		;bbbd
	and a			;bbc0
	ret z			;bbc1
	jp 0419ah		;bbc2   ; p00:puente_pon_objeto: p01:7852: pone el objeto C (B unidades) en (E, D) de la pantalla
L_BBC5:
	ld a,(0c357h)		;bbc5   ; lee cuantos objetos 0x18 se llevan (BCD; 0xFF sin cuenta)
	and a			;bbc8
	ret nz			;bbc9
	ld de,05890h		;bbca
	ld bc,00118h		;bbcd
	jp 0419ah		;bbd0   ; p00:puente_pon_objeto: p01:7852: pone el objeto C (B unidades) en (E, D) de la pantalla
L_BBD3:
	ld a,(0c35bh)		;bbd3   ; lee cuantos objetos 0x1C se llevan (BCD; 0xFF sin cuenta)
	and a			;bbd6
	ret nz			;bbd7
	ld de,05868h		;bbd8
	ld bc,0011ch		;bbdb
	jp 0419ah		;bbde   ; p00:puente_pon_objeto: p01:7852: pone el objeto C (B unidades) en (E, D) de la pantalla
L_BBE1:
	ld a,(0c355h)		;bbe1   ; lee cuantos objetos 0x16 se llevan (BCD; 0xFF sin cuenta)
	and a			;bbe4
	ret nz			;bbe5
	ld de,05858h		;bbe6
	ld bc,00116h		;bbe9
	jp 0419ah		;bbec   ; p00:puente_pon_objeto: p01:7852: pone el objeto C (B unidades) en (E, D) de la pantalla
L_BBEF:
	ld a,(0c352h)		;bbef   ; lee cuantos objetos 0x13 se llevan (BCD; 0xFF sin cuenta)
	and a			;bbf2
	ret nz			;bbf3
	ld a,001h		;bbf4
	ld (0c372h),a		;bbf6
	ld hl,0bc05h		;bbf9   ; figura_BC05: 2x2 numeros de dibujo que p06:BBF9 pinta en (0x28, 0x78) mientras no se tiene el objeto 0x13 (0xC352)
	ld de,07828h		;bbfc
	ld bc,00202h		;bbff
	jp 041c4h		;bc02   ; p00:puente_pinta_figura_sin_bancos

; ----------------------------------------------------------------------
; DATOS figura_BC05: 2x2 numeros de dibujo que p06:BBF9 pinta en (0x28, 0x78)
;   mientras no se tiene el objeto 0x13 (0xC352)
;   0xbc05..0xbc09  (4 bytes)
DATA_figura_BC05:
	defb 018h,019h,01ah,01bh	; bc05

; ----------------------------------------------------------------------
; DATOS colores_de_los_especiales: 17 punteros segun ix+0 - 0x80 (1-17): la
;   lista de colores de los sprites de cada figura especial; p01:7126 con
;   0xBC07 (la palabra 0 son dos bytes de la figura de 0xBC05)
;   0xbc09..0xbc2b  (34 bytes)
DATA_colores_de_los_especiales:
	defb 02bh,0bch,02fh,0bch,02bh,0bch,02bh,0bch,02dh,0bch,02dh,0bch,02dh,0bch,02bh,0bch	; bc09  +./.+.+.-.-.-.+.
	defb 02bh,0bch,02bh,0bch,02dh,0bch,02fh,0bch,02bh,0bch,02bh,0bch,02fh,0bch,02bh,0bch	; bc19  +.+.-./.+.+./.+.
	defb 02bh,0bch	; bc29

; ----------------------------------------------------------------------
; DATOS listas_de_colores_especiales: tres listas de dos colores (0xBC2B,
;   0xBC2D, 0xBC2F) que p01:7136 copia a los sprites
;   0xbc2b..0xbc31  (6 bytes)
DATA_listas_de_colores_especiales:
	defb 001h,046h,001h,044h,001h,048h	; bc2b

; ----------------------------------------------------------------------
; DATOS demostracion_1: la primera demostracion (p01:69CC): parejas
;   [cuadros][teclas] que p01:69F7 va poniendo en 0xC109 y 0xC10A; la tecla
;   0xFF acaba
;   0xbc31..0xbcb3  (130 bytes)
DATA_demostracion_1:
	defb 027h,000h,00dh,001h,021h,009h,002h,001h,001h,005h,002h,001h,005h,005h,002h,015h	; bc31  '...!...........
	defb 004h,011h,003h,001h,002h,000h,002h,010h,003h,000h,002h,010h,009h,000h,014h,002h	; bc41  ................
	defb 013h,000h,00ch,001h,003h,010h,002h,000h,002h,010h,002h,000h,002h,010h,002h,000h	; bc51  ................
	defb 002h,010h,002h,000h,002h,010h,00bh,000h,004h,002h,044h,004h,001h,000h,00ch,008h	; bc61  ..........D.....
	defb 001h,018h,005h,010h,003h,000h,003h,010h,001h,000h,003h,010h,00dh,000h,003h,001h	; bc71  ................
	defb 00dh,000h,007h,002h,043h,008h,001h,009h,032h,001h,004h,005h,00ch,004h,003h,000h	; bc81  ....C...2.......
	defb 00ch,001h,008h,000h,007h,002h,004h,000h,004h,010h,00ch,000h,001h,002h,001h,000h	; bc91  ................
	defb 003h,010h,009h,000h,00eh,002h,001h,000h,009h,004h,002h,005h,026h,001h,03bh,000h	; bca1  ............&.;.
	defb 017h,0ffh	; bcb1

; ----------------------------------------------------------------------
; DATOS demostracion_sin_uso: dos parejas mas, [1][0] [3][0xFF], que no pide
;   ninguna demostracion
;   0xbcb3..0xbcb7  (4 bytes)
DATA_demostracion_sin_uso:
	defb 001h,000h,003h,0ffh	; bcb3

; ----------------------------------------------------------------------
; DATOS demostracion_2: la segunda demostracion, igual (0xC10C alterna entre
;   las dos)
;   0xbcb7..0xbd49  (146 bytes)
DATA_demostracion_2:
	defb 031h,000h,013h,001h,005h,000h,009h,002h,00eh,000h,023h,001h,001h,000h,004h,010h	; bcb7  1.........#.....
	defb 001h,012h,002h,002h,004h,012h,002h,002h,001h,000h,003h,002h,003h,000h,009h,002h	; bcc7  ................
	defb 002h,000h,005h,002h,002h,012h,001h,010h,002h,000h,002h,010h,002h,000h,002h,010h	; bcd7  ................
	defb 001h,000h,002h,010h,003h,000h,002h,010h,002h,000h,002h,010h,006h,001h,001h,011h	; bce7  ................
	defb 002h,001h,002h,011h,002h,001h,002h,011h,02ah,001h,00ch,000h,003h,010h,002h,000h	; bcf7  ........*.......
	defb 002h,012h,002h,002h,002h,012h,001h,002h,002h,012h,002h,002h,002h,012h,002h,002h	; bd07  ................
	defb 002h,012h,002h,002h,003h,012h,001h,002h,003h,012h,001h,002h,003h,012h,003h,002h	; bd17  ................
	defb 004h,012h,010h,002h,007h,000h,003h,002h,003h,000h,007h,002h,003h,012h,002h,002h	; bd27  ................
	defb 002h,012h,002h,002h,002h,012h,003h,002h,001h,012h,002h,002h,001h,012h,004h,002h	; bd37  ................
	defb 000h,0ffh	; bd47

; ======================================================================
; CODIGO 0xbd49..0xbdff  (182 bytes)
; ======================================================================


L_BD49:
	ld a,(0c125h)		;bd49   ; lee la PANTALLA
	cp 05bh		;bd4c   ; la pantalla 0x5B?
	ret nz			;bd4e
	ld a,(0c600h)		;bd4f   ; lee la figura que sigue a Mitchel
	and a			;bd52
	ret z			;bd53
	ld a,(0c603h)		;bd54
	cp 040h		;bd57
	ret c			;bd59
	ld a,002h		;bd5a
	ld (0c560h),a		;bd5c   ; guarda el SUCESO: el tipo de decorado que hay que quitar
	xor a			;bd5f
	ld (0c561h),a		;bd60   ; guarda el paso del suceso
	ret			;bd63
L_BD64:
	ld a,(0c168h)		;bd64
	and a			;bd67
	ret nz			;bd68
	ld a,(0c133h)		;bd69
	and a			;bd6c
	ret nz			;bd6d
	call 040e0h		;bd6e   ; p00:puente_posicion_de_mitchel
	ex de,hl			;bd71
	ld a,0f8h		;bd72
	add a,l			;bd74
	ld l,a			;bd75
	call 041cah		;bd76   ; p00:puente_casilla_en_ram
	ld a,(hl)			;bd79
	inc a			;bd7a
	ret nz			;bd7b
	dec hl			;bd7c
	ld a,(hl)			;bd7d
	inc a			;bd7e
	ret nz			;bd7f
	ld de,00021h		;bd80
	add hl,de			;bd83
	ld a,(hl)			;bd84
	inc a			;bd85
	ret nz			;bd86
	dec hl			;bd87
	ld a,(hl)			;bd88
	inc a			;bd89
	ret nz			;bd8a
	ld a,(0c303h)		;bd8b   ; lee la Y de Mitchel
	and 007h		;bd8e
	jp z,041a6h		;bd90   ; p00:puente_mitchel_muere
	add hl,de			;bd93
	ld a,(hl)			;bd94
	inc a			;bd95
	ret nz			;bd96
	ld a,(hl)			;bd97
	inc a			;bd98
	ret nz			;bd99
	jp 041a6h		;bd9a   ; p00:puente_mitchel_muere
L_BD9D:
	ld a,(0c133h)		;bd9d
	and a			;bda0
	ret nz			;bda1
	ld a,(0c300h)		;bda2   ; lee el estado de Mitchel
	cp 005h		;bda5
	ret nc			;bda7
	ld a,(0c303h)		;bda8   ; lee la Y de Mitchel
	ld l,a			;bdab
	and 007h		;bdac
	ret nz			;bdae
	ld a,(0c305h)		;bdaf   ; lee la X de Mitchel
	ld h,a			;bdb2
	and 007h		;bdb3
	ret nz			;bdb5
	call 041cah		;bdb6   ; p00:puente_casilla_en_ram
	ld a,(hl)			;bdb9
	sub 0c0h		;bdba
	cp 004h		;bdbc
	jr c,L_BDC5		;bdbe
	xor a			;bdc0
	ld (0c14fh),a		;bdc1
	ret			;bdc4
L_BDC5:
	ld hl,0c14fh		;bdc5
	ld a,(hl)			;bdc8
	and a			;bdc9
	ret nz			;bdca
	inc (hl)			;bdcb
	ld a,(0c125h)		;bdcc   ; lee la PANTALLA
	ld c,a			;bdcf
	ld hl,0be16h		;bdd0   ; pasadizos: 15 fichas [pantalla][a donde][x][y][C] y un 0: p06:BDD0 busca la pantalla y manda alli a Mitchel (0xC201 = 1, sonido 0x24)
L_BDD3:
	ld a,(hl)			;bdd3
	inc hl			;bdd4
	and a			;bdd5
	ret z			;bdd6
	cp c			;bdd7
	jr z,L_BDE0		;bdd8
	inc hl			;bdda
	inc hl			;bddb
	inc hl			;bddc
	inc hl			;bddd
	jr L_BDD3		;bdde
L_BDE0:
	ld a,(hl)			;bde0
	inc hl			;bde1
	ld e,(hl)			;bde2
	inc hl			;bde3
	ld d,(hl)			;bde4
	inc hl			;bde5
	ld c,(hl)			;bde6
L_BDE7:
	ld (0c125h),a		;bde7   ; guarda la PANTALLA
	ld (0c321h),de		;bdea   ; guarda el punto de entrada (y, x)
	ld a,c			;bdee
	ld (0c323h),a		;bdef
	ld a,001h		;bdf2
	ld (0c201h),a		;bdf4   ; guarda el estado de la partida (0 jugando, 1 cambio de pantalla, 3 conversacion, 5 y 6 sucesos, 7 GAME OVER)
	ld (0c14fh),a		;bdf7
	ld a,024h		;bdfa
	jp 040e6h		;bdfc   ; p00:puente_sonido_si_juega

; ----------------------------------------------------------------------
; DATOS codigo_BDFF: codigo al que no se llega (p06:BDFC acaba en un jp): mira
;   la x de Mitchel y salta atras con otra pantalla
;   0xbdff..0xbe16  (23 bytes)
DATA_codigo_BDFF:
	defb 00eh,001h,03ah,003h,0c3h,0feh,058h,038h,007h,011h,010h,058h,03eh,06ah,018h,0d8h	; bdff  ..:...X8...X>j..
	defb 011h,010h,058h,03eh,071h,018h,0d1h	; be0f

; ----------------------------------------------------------------------
; DATOS pasadizos: 15 fichas [pantalla][a donde][x][y][C] y un 0: p06:BDD0
;   busca la pantalla y manda alli a Mitchel (0xC201 = 1, sonido 0x24)
;   0xbe16..0xbe62  (76 bytes)
DATA_pasadizos:
	defb 006h,071h,018h,058h,001h,016h,06ah,018h,058h,001h,009h,062h,018h,058h,001h,00dh	; be16  .q.X..j.X..b.X..
	defb 070h,018h,058h,001h,00eh,067h,018h,058h,001h,030h,06ch,058h,0a0h,002h,08dh,072h	; be26  p.X..g.X.0lX...r
	defb 018h,058h,001h,046h,069h,018h,058h,001h,057h,05ah,058h,038h,003h,05ah,057h,038h	; be36  .X.Fi.X.WZX8.ZW8
	defb 078h,002h,06eh,06fh,058h,010h,003h,077h,078h,018h,058h,001h,07bh,07eh,018h,058h	; be46  x.noX..wx.X.{~.X
	defb 001h,085h,086h,078h,058h,003h,086h,085h,078h,058h,002h,000h	; be56  ...xX...xX..

; ======================================================================
; CODIGO 0xbe62..0xbeb1  (79 bytes)
; ======================================================================


L_BE62:
	ld a,(0c165h)		;be62
	and a			;be65
	ret nz			;be66
	ld a,(0c300h)		;be67   ; lee el estado de Mitchel
	cp 005h		;be6a
	ret nz			;be6c
	ld a,(0c125h)		;be6d   ; lee la PANTALLA
	ld c,000h		;be70
	cp 076h		;be72   ; la pantalla 0x76?
	jr z,L_BE87		;be74
	ld c,005h		;be76
	cp 07ah		;be78   ; la pantalla 0x7A?
	jr z,L_BE87		;be7a
	ld c,00ah		;be7c
	cp 082h		;be7e   ; la pantalla 0x82?
	jr z,L_BE87		;be80
	ld c,00fh		;be82
	cp 084h		;be84   ; la pantalla 0x84?
	ret nz			;be86
L_BE87:
	ld b,000h		;be87
	ld hl,0beb1h		;be89   ; zonas_BEB1: 4 fichas [direccion][x min][x max][y min][y max]: donde tiene que estar Mitchel, y mirando a donde, para lo de p06:BE87
	add hl,bc			;be8c
	ld a,(0c306h)		;be8d   ; lee hacia donde mira Mitchel (0 arriba, 1 abajo, 2 izquierda, 3 derecha)
	cp (hl)			;be90
	ret nz			;be91
	inc hl			;be92
	call 040e0h		;be93   ; p00:puente_posicion_de_mitchel
	ld a,e			;be96
	cp (hl)			;be97
	ret c			;be98
	inc hl			;be99
	cp (hl)			;be9a
	ret nc			;be9b
	inc hl			;be9c
	ld a,d			;be9d
	cp (hl)			;be9e
	ret c			;be9f
	inc hl			;bea0
	cp (hl)			;bea1
	ret nc			;bea2
	xor a			;bea3
	ld (0c561h),a		;bea4   ; guarda el paso del suceso
	inc a			;bea7
	ld (0c165h),a		;bea8
	ld a,005h		;beab
	ld (0c560h),a		;bead   ; guarda el SUCESO: el tipo de decorado que hay que quitar
	ret			;beb0

; ----------------------------------------------------------------------
; DATOS zonas_BEB1: 4 fichas [direccion][x min][x max][y min][y max]: donde
;   tiene que estar Mitchel, y mirando a donde, para lo de p06:BE87
;   0xbeb1..0xbec5  (20 bytes)
DATA_zonas_BEB1:
	defb 001h,090h,091h,040h,061h,002h,028h,039h,030h,031h,002h,079h,099h,020h,021h,001h	; beb1  ...@a.(901.y. !.
	defb 090h,091h,020h,041h	; bec1

; ======================================================================
; CODIGO 0xbec5..0xbfda  (277 bytes)
; ======================================================================


L_BEC5:
	ld hl,0c131h		;bec5   ; apunta a el plano de la pantalla (0, el exterior)
	ld a,(hl)			;bec8
	ld (0e800h),a		;bec9
	ld (hl),000h		;becc
	ld a,(0c303h)		;bece   ; lee la Y de Mitchel
	ld e,a			;bed1
	ld a,(0c305h)		;bed2   ; lee la X de Mitchel
	ld d,a			;bed5
	ld a,(0c125h)		;bed6   ; lee la PANTALLA
	cp 001h		;bed9   ; la pantalla 0x01?
	jr z,L_BF17		;bedb
	cp 004h		;bedd   ; la pantalla 0x04?
	jr z,L_BF1E		;bedf
	cp 005h		;bee1   ; la pantalla 0x05?
	jr z,L_BF25		;bee3
	cp 006h		;bee5   ; la pantalla 0x06?
	jr z,L_BF2C		;bee7
	cp 00dh		;bee9   ; la pantalla 0x0D?
	jr z,L_BF33		;beeb
	cp 00eh		;beed   ; la pantalla 0x0E?
	jr z,L_BF3A		;beef
	cp 01fh		;bef1   ; la pantalla 0x1F?
	jr z,L_BF41		;bef3
	cp 020h		;bef5   ; la pantalla 0x20?
	jr z,L_BF4C		;bef7
	cp 021h		;bef9   ; la pantalla 0x21?
	jr z,L_BF53		;befb
	cp 055h		;befd   ; la pantalla 0x55?
	jr z,L_BF5A		;beff
	cp 056h		;bf01   ; la pantalla 0x56?
	jr z,L_BF61		;bf03
	cp 08ah		;bf05   ; la pantalla 0x8A?
	jr z,L_BF7A		;bf07
	cp 061h		;bf09   ; la pantalla 0x61?
	jr z,L_BF6C		;bf0b
	cp 058h		;bf0d   ; la pantalla 0x58?
	ret nz			;bf0f
	ld a,d			;bf10
	cp 058h		;bf11
	ret c			;bf13
	ld (hl),00eh		;bf14
	ret			;bf16
L_BF17:
	ld a,e			;bf17
	cp 058h		;bf18
	ret nc			;bf1a
	ld (hl),001h		;bf1b
	ret			;bf1d
L_BF1E:
	ld a,d			;bf1e
	cp 058h		;bf1f
	ret c			;bf21
	ld (hl),002h		;bf22
	ret			;bf24
L_BF25:
	ld a,d			;bf25
	cp 058h		;bf26
	ret c			;bf28
	ld (hl),003h		;bf29
	ret			;bf2b
L_BF2C:
	ld a,d			;bf2c
	cp 058h		;bf2d
	ret c			;bf2f
	ld (hl),004h		;bf30
	ret			;bf32
L_BF33:
	ld a,d			;bf33
	cp 058h		;bf34
	ret nc			;bf36
	ld (hl),005h		;bf37
	ret			;bf39
L_BF3A:
	ld a,d			;bf3a
	cp 058h		;bf3b
	ret nc			;bf3d
	ld (hl),006h		;bf3e
	ret			;bf40
L_BF41:
	ld a,e			;bf41
	cp 058h		;bf42
	ret c			;bf44
	ld a,d			;bf45
	cp 048h		;bf46
	ret c			;bf48
	ld (hl),007h		;bf49
	ret			;bf4b
L_BF4C:
	ld a,e			;bf4c
	cp 058h		;bf4d
	ret c			;bf4f
	ld (hl),008h		;bf50
	ret			;bf52
L_BF53:
	ld a,e			;bf53
	cp 058h		;bf54
	ret c			;bf56
	ld (hl),009h		;bf57
	ret			;bf59
L_BF5A:
	ld a,e			;bf5a
	cp 058h		;bf5b
	ret nc			;bf5d
	ld (hl),00ch		;bf5e
	ret			;bf60
L_BF61:
	ld a,e			;bf61
	cp 058h		;bf62
	ret c			;bf64
	ld a,d			;bf65
	cp 048h		;bf66
	ret c			;bf68
	ld (hl),00dh		;bf69
	ret			;bf6b
L_BF6C:
	ld a,(0c305h)		;bf6c   ; lee la X de Mitchel
	sub 020h		;bf6f
	cp 060h		;bf71
	ret c			;bf73
	ld a,039h		;bf74
	ld (0c125h),a		;bf76   ; guarda la PANTALLA
	ret			;bf79
L_BF7A:
	ld a,(0c303h)		;bf7a   ; lee la Y de Mitchel
	cp 060h		;bf7d
	ret c			;bf7f
	ld a,08ch		;bf80
	ld (0c125h),a		;bf82   ; guarda la PANTALLA
	ret			;bf85
L_BF86:
	ld hl,0bfdah		;bf86   ; contadores_iniciales: 28 bytes que p06:BF86 copia a 0xDE00 al empezar la partida
	ld de,0de00h		;bf89
	ld bc,0001ch		;bf8c
	ldir		;bf8f
	xor a			;bf91
	ld (0dfc0h),a		;bf92
	ld (0dfc1h),a		;bf95
	ld a,002h		;bf98
	ld (0dfc4h),a		;bf9a
	ld (0dfd9h),a		;bf9d
	inc a			;bfa0
	ld (0dfd2h),a		;bfa1
	ld a,005h		;bfa4
	ld (0dfd6h),a		;bfa6
	ld (0dfd7h),a		;bfa9
	ld (0dfd3h),a		;bfac
	ld (0dfd4h),a		;bfaf
	inc a			;bfb2
	ld (0dfdah),a		;bfb3
	ld (0dfdbh),a		;bfb6
	ld (0dfd1h),a		;bfb9
	ld (0dfc5h),a		;bfbc
	ld a,008h		;bfbf
	ld (0dfd0h),a		;bfc1
	ld a,00ah		;bfc4
	ld (0dfd8h),a		;bfc6
	ld a,00ch		;bfc9
	ld (0dfc3h),a		;bfcb
	ld a,010h		;bfce
	ld (0dfc6h),a		;bfd0
	ld (0dfc2h),a		;bfd3
	ld (0dfd5h),a		;bfd6
	ret			;bfd9

; ----------------------------------------------------------------------
; DATOS contadores_iniciales: 28 bytes que p06:BF86 copia a 0xDE00 al empezar
;   la partida
;   0xbfda..0xbff6  (28 bytes)
DATA_contadores_iniciales:
	defb 001h,001h,02ah,001h,005h,001h,031h,001h,034h,001h,01ah,001h,01fh,001h,029h,001h	; bfda  ..*...1.4.....).
	defb 05ch,001h,05dh,001h,057h,001h,06fh,001h,077h,001h,07ch,001h	; bfea  \.].W.o.w.|.

; ----------------------------------------------------------------------
; DATOS relleno_p06: 0xFF hasta el final del banco
;   0xbff6..0xc000  (10 bytes)
DATA_relleno_p06:
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bff6  ..........
