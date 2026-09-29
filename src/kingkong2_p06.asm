; ==========================================================================
; KING KONG 2: YOMIGAERU DENSETSU - Konami (1986) - MSX - MegaROM RC-745 de 128 KB (Konami4) - banco 06 (se ejecuta en 0xa000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x0a000


; ----------------------------------------------------------------------
; DATOS sin identificar  0xa000..0xa649  (1609 bytes)
DATA_A000:
	defb 000h,000h,020h,050h,020h,000h,000h,000h,000h,000h,000h,000h,000h,000h,020h,050h	; a000  .. P ......... P
	defb 020h,000h,000h,000h,000h,000h,000h,040h,020h,000h,000h,000h,000h,000h,01fh,000h	; a010   ......@ .......
	defb 000h,000h,01ch,022h,022h,041h,071h,04fh,063h,000h,07eh,021h,022h,03ch,022h,021h	; a020  ...""AqOc.~!"<"!
	defb 07eh,000h,01eh,023h,040h,040h,040h,023h,01eh,000h,07ch,042h,021h,021h,021h,042h	; a030  ~..#@@@#..|B!!!B
	defb 07ch,000h,07eh,043h,020h,03ch,020h,043h,07eh,000h,07eh,043h,020h,03ch,020h,040h	; a040  |.~C < C~.~C < @
	defb 060h,000h,01eh,023h,040h,047h,041h,023h,01eh,000h,063h,041h,022h,03eh,022h,041h	; a050  `..#@GA#..cA">"A
	defb 063h,000h,01ch,010h,008h,008h,008h,004h,01ch,000h,007h,001h,002h,042h,042h,066h	; a060  c............BBf
	defb 03ch,000h,063h,046h,028h,030h,028h,046h,063h,000h,060h,040h,020h,020h,021h,043h	; a070  <.cF(0(Fc.`@  !C
	defb 07eh,000h,063h,022h,036h,02ah,02ah,041h,063h,000h,063h,021h,032h,02ah,026h,042h	; a080  ~.c"6**Ac.c!2*&B
	defb 063h,000h,01eh,023h,061h,041h,043h,062h,03ch,000h,07eh,043h,021h,023h,03eh,040h	; a090  c..#aACb<.~C!#>@
	defb 060h,000h,01eh,023h,061h,041h,04fh,042h,03fh,000h,07eh,041h,021h,03eh,024h,044h	; a0a0  `..#aAOB?.~A!>$D
	defb 063h,000h,03eh,043h,060h,01eh,003h,061h,03eh,000h,03eh,049h,008h,008h,008h,004h	; a0b0  c.>C`..a>.>I....
	defb 01ch,000h,063h,041h,022h,041h,041h,063h,03eh,000h,063h,041h,022h,022h,036h,014h	; a0c0  ..cA"AAc>.cA""6.
	defb 01ch,000h,063h,049h,02ah,02ah,036h,063h,041h,000h,063h,041h,022h,01ch,022h,041h	; a0d0  ..cI**6cA.cA"."A
	defb 063h,000h,063h,041h,022h,014h,008h,004h,01ch,000h,07fh,041h,00eh,008h,038h,041h	; a0e0  c.cA"......A..8A
	defb 07fh,000h,010h,07fh,011h,03fh,052h,055h,039h,000h,042h,042h,041h,041h,041h,050h	; a0f0  .....?RU9.BBAAAP
	defb 020h,000h,03eh,000h,07eh,001h,001h,002h,03ch,000h,03eh,000h,07fh,002h,00ch,038h	; a100   .>.~...<.>....8
	defb 047h,000h,008h,07fh,008h,03dh,04ah,049h,031h,000h,012h,079h,015h,012h,022h,022h	; a110  G....=JI1..y..""
	defb 044h,000h,020h,07eh,008h,03fh,002h,040h,03eh,000h,002h,00ch,030h,040h,030h,00ch	; a120  D. ~.?.@>...0@0.
	defb 002h,000h,042h,05fh,042h,042h,042h,042h,024h,000h,07ch,002h,000h,000h,000h,040h	; a130  ..B_BBBB$.|....@
	defb 03eh,000h,008h,07fh,004h,002h,021h,040h,03fh,000h,040h,040h,040h,041h,041h,022h	; a140  >.....!@?.@@@AA"
	defb 01ch,000h,004h,07fh,004h,01ch,024h,01ch,004h,000h,022h,07fh,022h,022h,026h,020h	; a150  ......$...".""&
	defb 01eh,000h,022h,014h,07fh,010h,020h,020h,01eh,000h,020h,077h,020h,020h,020h,028h	; a160  .."...  .. w   (
	defb 047h,000h,008h,07fh,010h,03eh,041h,001h,01eh,000h,000h,07eh,001h,001h,001h,002h	; a170  G....>A....~....
	defb 03ch,000h,07fh,008h,010h,020h,020h,010h,00eh,000h,042h,024h,018h,020h,040h,040h	; a180  <....  ...B$. @@
	defb 03eh,000h,026h,071h,024h,044h,01ch,026h,018h,000h,04fh,040h,040h,040h,040h,048h	; a190  >.&q$D.&..O@@@@H
	defb 027h,000h,024h,03eh,065h,069h,073h,055h,02ah,000h,020h,06eh,031h,021h,067h,029h	; a1a0  '.$>eisU*. n1!g)
	defb 026h,000h,01ch,02ah,049h,049h,049h,049h,032h,000h,042h,04fh,042h,042h,04eh,053h	; a1b0  &..*IIII2.BOBBNS
	defb 02ch,000h,078h,012h,023h,042h,042h,044h,038h,000h,038h,004h,010h,049h,045h,045h	; a1c0  ,.x.#BBD8.8..IEE
	defb 059h,000h,018h,024h,024h,042h,042h,001h,001h,000h,04fh,042h,04fh,042h,04eh,053h	; a1d0  Y..$$BB...OBOBNS
	defb 02ch,004h,07fh,004h,07fh,004h,03eh,045h,038h,000h,030h,00ah,00ah,03fh,04ah,04ah	; a1e0  ,.....>E8.0..?JJ
	defb 032h,000h,012h,079h,010h,030h,051h,051h,03eh,000h,041h,03eh,032h,055h,049h,049h	; a1f0  2..y.0QQ>.A>2UII
	defb 035h,000h,020h,07ch,020h,07ch,020h,021h,01eh,000h,024h,07eh,025h,029h,022h,010h	; a200  5. | | !..$~%)".
	defb 010h,000h,004h,04eh,055h,075h,055h,04eh,018h,000h,004h,004h,007h,004h,03ch,046h	; a210  ...NUuUN......<F
	defb 039h,000h,038h,004h,040h,07ch,002h,002h,03ch,000h,041h,041h,041h,041h,001h,002h	; a220  9.8.@|..<.AAAA..
	defb 01ch,000h,03fh,002h,03ch,002h,019h,025h,01eh,000h,020h,06ch,032h,022h,022h,062h	; a230  ..?.<..%.. l2""b
	defb 021h,000h,03fh,002h,00ch,032h,001h,001h,01eh,000h,020h,06eh,031h,021h,061h,021h	; a240  !.?..2.... n1!a!
	defb 022h,000h,008h,03eh,010h,03eh,014h,022h,01fh,000h,008h,010h,010h,028h,025h,045h	; a250  "..>.>.".....(%E
	defb 042h,000h,000h,024h,07ch,02ah,022h,010h,010h,000h,000h,048h,05ch,06ah,06ah,05ch	; a260  B..$|*"....H\jj\
	defb 008h,000h,000h,008h,00eh,008h,038h,04ch,032h,000h,000h,000h,07ch,002h,002h,004h	; a270  ......8L2...|...
	defb 038h,000h,000h,000h,000h,000h,000h,040h,040h,000h,01eh,021h,012h,004h,006h,000h	; a280  8......@@..!....
	defb 006h,000h,00ch,00ch,008h,008h,000h,008h,018h,03ch,042h,099h,0a1h,0a1h,099h,042h	; a290  .........<B....B
	defb 03ch,01fh,01fh,01fh,000h,00fh,00fh,00fh,00eh,0feh,0feh,0feh,0e0h,0feh,0ffh,0ffh	; a2a0  <...............
	defb 0efh,01eh,0deh,0feh,0ffh,0ffh,0ffh,0ffh,0deh,000h,007h,007h,0e7h,0e0h,0e0h,0e0h	; a2b0  ................
	defb 000h,000h,0ffh,0ffh,0ffh,007h,00fh,01fh,07eh,000h,0e0h,0e0h,0e0h,0e0h,0c0h,080h	; a2c0  ........~.......
	defb 000h,01ch,01eh,01eh,03eh,03ch,03ch,07ch,07bh,0ffh,0ffh,0ffh,0ffh,000h,000h,000h	; a2d0  ....><<|{.......
	defb 0ffh,0f9h,0f9h,0f9h,0f8h,003h,003h,003h,0fch,0feh,0ffh,0feh,000h,0ffh,0ffh,0ffh	; a2e0  ................
	defb 000h,070h,0f1h,0f9h,0fbh,073h,0ffh,0ffh,0ffh,0c0h,0f0h,0f0h,0e0h,0e0h,0f0h,0f0h	; a2f0  .p...s..........
	defb 0f0h,00fh,00fh,00fh,00eh,00fh,00fh,00fh,002h,0ffh,0feh,0feh,0eeh,0feh,0feh,0feh	; a300  ................
	defb 0f1h,09eh,0ffh,0ffh,0ffh,0ffh,01eh,01eh,0ffh,000h,0c3h,0c7h,0dfh,0dfh,00fh,00ch	; a310  ................
	defb 0e0h,0fch,0ffh,0ffh,0ffh,0c1h,000h,000h,0f8h,000h,0c1h,0f3h,0fbh,0fbh,07dh,03dh	; a320  ..............}=
	defb 03ch,0fbh,0fbh,0fbh,0f8h,0f8h,0f8h,078h,078h,0ffh,0ffh,0ffh,01fh,03eh,03eh,07ch	; a330  <......xx....>>|
	defb 07ch,0fdh,0fdh,0fdh,000h,001h,001h,011h,070h,0feh,0feh,0feh,000h,0feh,0feh,0feh	; a340  |.......p.......
	defb 000h,0ffh,0f0h,0f0h,0ffh,0ffh,0ffh,0ffh,03bh,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h	; a350  ........;.......
	defb 080h,007h,00fh,007h,003h,00fh,01fh,00fh,006h,0f1h,0f1h,0f1h,0fch,0ffh,0ffh,09fh	; a360  ................
	defb 003h,0ffh,0ffh,0ffh,000h,0ffh,0ffh,0ffh,0ffh,0e1h,0e3h,0e3h,003h,0f3h,0e1h,0e1h	; a370  ................
	defb 0c0h,0feh,0feh,0cfh,0c7h,0e7h,0ffh,0ffh,07fh,03ch,03ch,07ch,0f8h,0f8h,0f0h,0e0h	; a380  .........<<|....
	defb 080h,078h,078h,078h,07bh,07bh,07bh,079h,079h,078h,0f8h,0f1h,0ffh,0ffh,0ffh,0ffh	; a390  .xxx{{{yyx......
	defb 0f0h,0f9h,079h,0fdh,0fdh,0ffh,0ffh,01dh,019h,0feh,0feh,0feh,0ceh,0ffh,0ffh,0feh	; a3a0  ..y.............
	defb 0c0h,03bh,07bh,07bh,0fbh,0f3h,0f3h,0e3h,041h,080h,0a0h,0b0h,0b8h,0f8h,0f8h,0f8h	; a3b0  .;{{....A.......
	defb 0f0h,006h,00fh,00fh,01fh,03fh,03fh,07fh,01fh,000h,080h,0e0h,0f8h,0feh,0ffh,0ffh	; a3c0  .....??.........
	defb 0ffh,007h,00fh,00fh,01fh,01fh,0bfh,03fh,07fh,080h,0e0h,0f8h,0f8h,0f1h,0f1h,0e3h	; a3d0  .......?........
	defb 0e3h,060h,07ch,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,00fh,01eh,086h,0f0h,0feh,0ffh,0ffh	; a3e0  .`|.............
	defb 0ffh,000h,000h,000h,000h,003h,007h,007h,00fh,000h,000h,000h,000h,000h,080h,0b0h	; a3f0  ................
	defb 03ch,07ch,078h,0f8h,070h,010h,0c0h,0f0h,0f0h,007h,001h,000h,000h,000h,000h,000h	; a400  <|x.p...........
	defb 000h,0feh,0fch,07ch,019h,001h,003h,003h,007h,07fh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; a410  ...|............
	defb 0feh,0c7h,0c7h,08fh,08fh,01fh,01fh,03fh,03fh,0ffh,0fdh,0fch,0f8h,0f9h,0f1h,0e3h	; a420  .......??.......
	defb 0e3h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0e0h,0e0h,0c0h,0c0h,080h,080h,000h	; a430  ................
	defb 000h,000h,000h,000h,007h,01fh,03fh,03fh,03fh,00fh,03fh,0ffh,0ffh,0ffh,0ffh,0ffh	; a440  ......???.?.....
	defb 0ffh,0feh,0fch,0fch,0f8h,0f8h,0f0h,0f0h,0e0h,01fh,007h,001h,000h,000h,000h,000h	; a450  ................
	defb 000h,0c7h,0c7h,08fh,00fh,01fh,01fh,03fh,03fh,0ffh,0feh,0feh,0fch,0fch,0f8h,0f8h	; a460  .......??.......
	defb 0f8h,01fh,00fh,00fh,007h,007h,002h,000h,000h,0ffh,0feh,0f8h,0e0h,080h,000h,000h	; a470  ................
	defb 000h,080h,000h,000h,000h,000h,000h,000h,000h,07fh,07fh,0ffh,0ffh,07fh,01fh,007h	; a480  ................
	defb 001h,0f0h,0f0h,0e0h,0e0h,0c0h,0c0h,080h,080h,000h,000h,000h,000h,000h,007h,0ffh	; a490  ................
	defb 0ffh,000h,000h,000h,000h,000h,0c0h,0c0h,0c0h,000h,000h,000h,000h,007h,0ffh,0ffh	; a4a0  ................
	defb 0ffh,0ffh,0ffh,0ffh,07fh,0ffh,0ffh,0ffh,0ffh,0c0h,0e0h,0e3h,0ffh,0ffh,0ffh,0ffh	; a4b0  ................
	defb 0ffh,000h,000h,0e0h,0e0h,0e0h,0e0h,0f0h,0f0h,0ffh,07fh,07fh,07fh,07ch,000h,000h	; a4c0  .............|..
	defb 000h,0ffh,0ffh,0ffh,0ffh,03fh,03fh,03fh,03fh,0ffh,0ffh,0feh,0f0h,0f0h,0f0h,0ffh	; a4d0  .....????.......
	defb 0ffh,0f0h,0f0h,000h,000h,000h,078h,0f8h,0f8h,00fh,0ffh,0ffh,0ffh,0ffh,07fh,07fh	; a4e0  ......x.........
	defb 07fh,0f8h,0f8h,0f8h,0f8h,0f8h,0f8h,0f8h,000h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; a4f0  ................
	defb 0fch,0f8h,0fch,0fch,0fch,0fch,0fch,080h,000h,07eh,000h,000h,000h,000h,000h,000h	; a500  .........~......
	defb 000h,00fh,00fh,00fh,00fh,007h,007h,007h,007h,0fch,0fch,0fch,0feh,0feh,0feh,0feh	; a510  ................
	defb 080h,0f8h,0f8h,0f8h,0f8h,0f8h,0f8h,0f8h,0f8h,0fch,0fch,0fch,0fch,0fch,0fch,0fch	; a520  ................
	defb 0fch,0ffh,0ffh,000h,000h,000h,000h,000h,000h,0ffh,0ffh,00fh,00fh,00fh,00fh,00fh	; a530  ................
	defb 00fh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,000h,000h,000h,000h,000h,000h,0ffh,0ffh	; a540  ................
	defb 0ffh,00fh,00fh,00fh,00fh,00fh,0ffh,0ffh,0ffh,000h,000h,000h,000h,000h,000h,000h	; a550  ................
	defb 006h,0ffh,0ffh,0ffh,0ffh,07fh,01fh,003h,000h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0fch	; a560  ................
	defb 000h,000h,000h,000h,000h,001h,003h,007h,007h,000h,007h,01fh,07fh,0ffh,0ffh,0ffh	; a570  ................
	defb 0ffh,07fh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,080h,0f8h,0fch,0ffh,0ffh,0ffh,0ffh	; a580  ................
	defb 0ffh,000h,000h,000h,000h,080h,0c0h,0c0h,0e0h,00fh,00fh,00fh,01fh,01fh,01fh,01fh	; a590  ................
	defb 01fh,0ffh,0ffh,0feh,0feh,0feh,0ffh,0ffh,0ffh,083h,000h,000h,000h,000h,000h,080h	; a5a0  ................
	defb 0c0h,0ffh,07fh,03fh,03fh,01fh,01fh,01fh,01fh,0f0h,0f0h,0f8h,0f8h,0f8h,0fch,0fch	; a5b0  ...??...........
	defb 0fch,01fh,01fh,00fh,00fh,00fh,007h,001h,000h,0ffh,0ffh,0ffh,0ffh,0ffh,0feh,0f0h	; a5c0  ................
	defb 000h,0c0h,0c0h,0c0h,080h,000h,000h,000h,003h,01fh,01fh,03fh,03fh,07fh,07fh,0ffh	; a5d0  ...........??...
	defb 0ffh,0fch,0fch,0fch,0fch,0f8h,0f8h,0f0h,0f0h,000h,000h,000h,000h,007h,01fh,07fh	; a5e0  ................
	defb 0ffh,007h,01fh,03fh,0ffh,0ffh,0ffh,0fch,0c0h,0ffh,0ffh,0ffh,0feh,0f8h,0c0h,000h	; a5f0  ...?............
	defb 000h,0e0h,0c0h,080h,000h,000h,000h,000h,000h,001h,003h,003h,007h,007h,00fh,00fh	; a600  ................
	defb 00fh,0ffh,0feh,0fch,0fch,0ffh,0ffh,0ffh,0ffh,000h,000h,01fh,0ffh,0ffh,0ffh,0ffh	; a610  ................
	defb 0ffh,000h,000h,080h,0e0h,0f8h,0ffh,0ffh,0ffh,01fh,01fh,03fh,07fh,0ffh,0ffh,0feh	; a620  ...........?....
	defb 0feh,01fh,01fh,01fh,01fh,01fh,01fh,01fh,000h,0ffh,0ffh,0ffh,0e1h,080h,000h,000h	; a630  ................
	defb 000h,0fch,0fch,0f8h,0f0h,0e0h,080h,000h,000h	; a640  .........

; ======================================================================
; CODIGO 0xa649..0xa658  (15 bytes)
; ======================================================================


L_A649:
	ld a,(0c139h)		;a649
	ld hl,0a658h		;a64c
	add a,a			;a64f
	call 0408ch		;a650
	ld e,(hl)			;a653
	inc hl			;a654
	ld d,(hl)			;a655
	ex de,hl			;a656
	jp (hl)			;a657

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa658..0xa6cf  (119 bytes)
DATA_A658:
	defb 064h,0a6h,074h,0a6h,083h,0a6h,099h,0a6h,0a0h,0a6h,0ach,0a6h,001h,004h,004h,011h	; a658  d.t.............
	defb 088h,048h,0cdh,00ah,041h,03eh,002h,032h,007h,0c3h,018h,00ah,021h,03ah,0c1h,035h	; a668  .H..A>.2....!:.5
	defb 0c0h,03eh,010h,032h,03ah,0c1h,021h,039h,0c1h,034h,0c9h,021h,03ah,0c1h,035h,03eh	; a678  .>.2:.!9.4.!:.5>
	defb 008h,028h,0f0h,07eh,021h,0bfh,0a6h,0cdh,08ch,040h,07eh,021h,003h,0c3h,086h,077h	; a688  .(.~!....@~!...w
	defb 0c9h,021h,03ah,0c1h,035h,0c0h,018h,0deh,03ah,003h,0c3h,0feh,059h,038h,0d7h,03eh	; a698  .!:.5...:...Y8.>
	defb 001h,0c3h,004h,041h,03eh,0f0h,032h,02ah,0e2h,032h,02bh,0e2h,03eh,004h,032h,007h	; a6a8  ...A>.2*.2+.>.2.
	defb 0c3h,03eh,0ffh,032h,039h,0c1h,0c9h,003h,003h,002h,001h,001h,000h,000h,0ffh,0ffh	; a6b8  .>.29...........
	defb 0ffh,0feh,0fch,0fah,0fch,0feh,0ffh	; a6c8

; ======================================================================
; CODIGO 0xa6cf..0xa794  (197 bytes)
; ======================================================================


L_A6CF:
	djnz L_A6E8		;a6cf
	call L_A7C5		;a6d1
	ret nc			;a6d4
	call L_A774		;a6d5
	call 04206h		;a6d8
	call L_A837		;a6db
	ld a,020h		;a6de
L_A6E0:
	ld (0c104h),a		;a6e0
L_A6E3:
	ld hl,0c101h		;a6e3
	inc (hl)			;a6e6
	ret			;a6e7
L_A6E8:
	djnz L_A702		;a6e8
	call 041d6h		;a6ea
	call 04206h		;a6ed
	call L_A8AA		;a6f0
	ld a,(0c137h)		;a6f3
	cp 003h		;a6f6
	ret nz			;a6f8
	ld hl,0a879h		;a6f9
	call 040f2h		;a6fc
	jp L_A6E3		;a6ff
L_A702:
	djnz L_A71D		;a702
	call L_A7C5		;a704
	ret nc			;a707
	call L_A774		;a708
	ld hl,0a879h		;a70b
	call 040f2h		;a70e
	ld hl,0af39h		;a711
	ld de,06060h		;a714
	call L_AACC		;a717
	jp L_A6E3		;a71a
L_A71D:
	djnz L_A730		;a71d
	call L_AADD		;a71f
	ld a,(0cf36h)		;a722
	and a			;a725
	ret z			;a726
	ld a,0ffh		;a727
	call 040e6h		;a729
	xor a			;a72c
	jp L_A6E0		;a72d
L_A730:
	djnz L_A734		;a730
	jr L_A736		;a732
L_A734:
	djnz L_A749		;a734
L_A736:
	ld hl,0c104h		;a736
	dec (hl)			;a739
	ret nz			;a73a
	ld hl,0a879h		;a73b
	ld de,0cf00h		;a73e
	ld bc,00031h		;a741
	ldir		;a744
	jp L_A6E3		;a746
L_A749:
	djnz L_A769		;a749
	call L_A7C5		;a74b
	ret nc			;a74e
	call 0409eh		;a74f
	call 04116h		;a752
	call 04188h		;a755
	xor a			;a758
	ld (0c102h),a		;a759
	ld (0c100h),a		;a75c
	ld a,020h		;a75f
	ld (0c104h),a		;a761
	xor a			;a764
	ld (0c101h),a		;a765
	ret			;a768
L_A769:
	ld hl,0c104h		;a769
	dec (hl)			;a76c
	ret nz			;a76d
	call L_A788		;a76e
	jp L_A6E3		;a771
L_A774:
	call 0409eh		;a774
	call 04116h		;a777
	ld hl,0e600h		;a77a
	ld de,0e601h		;a77d
	ld (hl),0e0h		;a780
	ld bc,0007fh		;a782
	ldir		;a785
	ret			;a787
L_A788:
	ld hl,0a794h		;a788
	ld de,0cf00h		;a78b
	ld bc,00031h		;a78e
	ldir		;a791
	ret			;a793

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa794..0xa7c5  (49 bytes)
DATA_A794:
	defb 000h,000h,000h,001h,000h,000h,002h,041h,003h,003h,074h,005h,004h,073h,001h,005h	; a794  .......A..t..s..
	defb 076h,004h,006h,052h,002h,007h,065h,006h,008h,062h,000h,009h,061h,006h,00ah,025h	; a7a4  v..R..e..b..a..%
	defb 004h,00bh,041h,002h,00ch,055h,005h,00dh,053h,004h,00eh,077h,007h,00fh,005h,002h	; a7b4  ..A..U..S..w....
	defb 0ffh	; a7c4

; ======================================================================
; CODIGO 0xa7c5..0xa805  (64 bytes)
; ======================================================================


L_A7C5:
	call L_A7DF		;a7c5
	ld hl,0cf00h		;a7c8
	call 040f2h		;a7cb
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
L_A7DF:
	ld a,(0c103h)		;a7df
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

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa805..0xa837  (50 bytes)
DATA_A805:
	defb 03ah,003h,0c1h,0e6h,003h,0c0h,021h,000h,0cfh,07eh,0e6h,0f0h,028h,004h,07eh,0d6h	; a805  :.....!..~..(.~.
	defb 010h,077h,07eh,0e6h,00fh,028h,001h,035h,023h,07eh,0e6h,00fh,028h,001h,035h,02bh	; a815  .w~..(.5#~..(.5+
	defb 056h,023h,05eh,03eh,00eh,0cdh,0f8h,040h,03ah,000h,0cfh,021h,001h,0cfh,0b6h,0c0h	; a825  V#^>...@:..!....
	defb 037h,0c9h	; a835

; ======================================================================
; CODIGO 0xa837..0xa879  (66 bytes)
; ======================================================================


L_A837:
	ld de,08004h		;a837
	ld hl,0af41h		;a83a
	ld b,04dh		;a83d
	call 0411ch		;a83f
	call 041b8h		;a842
	ld hl,(0c127h)		;a845
	ld a,h			;a848
	cp 003h		;a849
	ld b,000h		;a84b
	ld c,088h		;a84d
	jr z,L_A855		;a84f
	jr nc,L_A869		;a851
	jr c,L_A85C		;a853
L_A855:
	ld a,l			;a855
	cp 066h		;a856
	ld c,088h		;a858
	jr nc,L_A869		;a85a
L_A85C:
	ld a,(0c16eh)		;a85c
	cp 033h		;a85f
	ld b,001h		;a861
	ld c,087h		;a863
	jr nc,L_A869		;a865
	ld b,002h		;a867
L_A869:
	ld l,b			;a869
	ld h,000h		;a86a
	ld (0c137h),hl		;a86c
	ld a,c			;a86f
	call 040e6h		;a870
	ld hl,0a879h		;a873
	jp 040f2h		;a876

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa879..0xa8aa  (49 bytes)
DATA_A879:
	defb 000h,000h,000h,001h,000h,000h,002h,060h,005h,003h,052h,004h,004h,040h,003h,005h	; a879  .......`..R..@..
	defb 052h,003h,006h,041h,002h,007h,077h,007h,008h,073h,000h,009h,022h,005h,00ah,062h	; a889  R..A..w..s.."..b
	defb 005h,00bh,000h,003h,00ch,054h,005h,00dh,033h,004h,00eh,077h,007h,00fh,007h,002h	; a899  .....T..3..w....
	defb 0ffh	; a8a9

; ======================================================================
; CODIGO 0xa8aa..0xa8b9  (15 bytes)
; ======================================================================


L_A8AA:
	ld a,(0c137h)		;a8aa
	ld hl,0a8b9h		;a8ad
	add a,a			;a8b0
	call 0408ch		;a8b1
	ld e,(hl)			;a8b4
	inc hl			;a8b5
	ld d,(hl)			;a8b6
	ex de,hl			;a8b7
	jp (hl)			;a8b8

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa8b9..0xaacc  (531 bytes)
DATA_A8B9:
	defb 0bfh,0a8h,05ch,0a9h,06fh,0aah,03ah,038h,0c1h,021h,0c7h,0a8h,018h,0e9h,0dfh,0a8h	; a8b9  ..\.o.:8.!......
	defb 0ebh,0a8h,0eeh,0a8h,0f1h,0a8h,004h,0a9h,007h,0a9h,00ah,0a9h,021h,0a9h,030h,0a9h	; a8c9  ............!.0.
	defb 033h,0a9h,04eh,0a9h,051h,0a9h,021h,044h,0adh,011h,098h,028h,0cdh,0cch,0aah,0c3h	; a8d9  3.N.Q.!D...(....
	defb 057h,0a9h,0c3h,026h,0abh,0c3h,033h,0abh,0cdh,005h,0a8h,0d0h,0cdh,046h,0abh,021h	; a8e9  W..&..3......F.!
	defb 08ah,0adh,011h,098h,040h,0cdh,0cch,0aah,0c3h,057h,0a9h,0c3h,026h,0abh,0c3h,073h	; a8f9  ....@....W..&..s
	defb 0abh,0cdh,0c5h,0a7h,0d0h,0cdh,086h,0abh,03eh,010h,032h,038h,0cfh,021h,0b6h,0adh	; a909  ........>.28.!..
	defb 011h,098h,048h,0cdh,0cch,0aah,018h,036h,03ah,036h,0cfh,0a7h,0cch,0ddh,0aah,0cdh	; a919  ..H....6:6......
	defb 068h,0ach,0d0h,03eh,080h,018h,024h,0c3h,073h,0abh,0cdh,0c5h,0a7h,0d0h,0cdh,09eh	; a929  h..>..$.s.......
	defb 040h,0cdh,016h,041h,021h,079h,0a8h,0cdh,0f2h,040h,021h,0e1h,0adh,011h,098h,030h	; a939  @..A!y...@!....0
	defb 0cdh,0cch,0aah,018h,009h,0c3h,026h,0abh,0c3h,007h,0ach,032h,004h,0c1h,021h,038h	; a949  ......&....2..!8
	defb 0c1h,034h,0c9h,03ah,038h,0c1h,021h,065h,0a9h,0c3h,0b0h,0a8h,07fh,0a9h,08ah,0a9h	; a959  .4.:8.!e........
	defb 08dh,0a9h,090h,0a9h,09bh,0a9h,0dfh,0a9h,0e2h,0a9h,0e5h,0a9h,032h,0aah,035h,0aah	; a969  ............2.5.
	defb 038h,0aah,059h,0aah,06ch,0aah,021h,024h,0aeh,011h,098h,028h,0cdh,0cch,0aah,018h	; a979  8.Y.l.!$...(....
	defb 0cdh,0c3h,026h,0abh,0c3h,033h,0abh,0cdh,005h,0a8h,0d0h,0cdh,046h,0abh,0afh,0c3h	; a989  ..&..3......F...
	defb 054h,0a9h,021h,004h,0c1h,035h,07eh,0feh,040h,028h,02fh,0feh,0c0h,0d0h,0feh,080h	; a999  T.!..5~.@(/.....
	defb 0d8h,0e6h,038h,01fh,01fh,01fh,04fh,0c5h,026h,008h,069h,011h,043h,06ch,083h,05fh	; a9a9  ..8...O.&.i.Cl._
	defb 001h,001h,008h,03eh,048h,0cdh,082h,041h,0c1h,079h,026h,010h,069h,011h,043h,088h	; a9b9  ...>H..A.y&.i.C.
	defb 083h,05fh,001h,001h,008h,03eh,048h,0c3h,082h,041h,021h,06fh,0aeh,011h,098h,020h	; a9c9  ._...>H..A!o...
	defb 0cdh,0cch,0aah,0c3h,057h,0a9h,0c3h,026h,0abh,0c3h,073h,0abh,0cdh,0c5h,0a7h,0d0h	; a9d9  ....W..&..s.....
	defb 0cdh,09eh,040h,0cdh,016h,041h,021h,079h,0a8h,0cdh,0f2h,040h,021h,03eh,05bh,011h	; a9e9  ..@..A!y...@!>[.
	defb 02ah,04ah,00eh,00ch,0cdh,07ch,041h,021h,03dh,05ah,011h,02ch,04ch,00eh,003h,0cdh	; a9f9  *J...|A!=Z.,L...
	defb 07ch,041h,021h,03ch,059h,011h,02eh,04eh,00eh,00dh,0cdh,07ch,041h,021h,03fh,05ch	; aa09  |A!<Y..N...|A!?\
	defb 001h,028h,048h,03eh,088h,016h,000h,0cdh,07ah,040h,0cdh,028h,041h,021h,0a4h,0aeh	; aa19  .(H>....z@.(A!..
	defb 011h,098h,020h,0cdh,0cch,0aah,0c3h,057h,0a9h,0c3h,026h,0abh,0c3h,073h,0abh,0cdh	; aa29  .. ....W..&..s..
	defb 0c5h,0a7h,0d0h,0cdh,086h,0abh,03eh,010h,032h,037h,0cfh,03eh,030h,032h,038h,0cfh	; aa39  ......>.27.>028.
	defb 021h,0bdh,0aeh,011h,098h,028h,0cdh,0cch,0aah,0afh,032h,036h,0cfh,0c3h,057h,0a9h	; aa49  !....(....26..W.
	defb 03ah,036h,0cfh,0a7h,0cch,0ddh,0aah,0cdh,056h,0ach,0cdh,068h,0ach,0d0h,03eh,080h	; aa59  :6......V..h..>.
	defb 0c3h,054h,0a9h,0c3h,007h,0ach,03ah,038h,0c1h,021h,078h,0aah,0c3h,0b0h,0a8h,07fh	; aa69  .T....:8.!x.....
	defb 0a9h,08ah,0a9h,08dh,0a9h,090h,0a9h,09bh,0a9h,0dfh,0a9h,0e2h,0a9h,0e5h,0a9h,032h	; aa79  ...............2
	defb 0aah,035h,0aah,038h,0aah,059h,0aah,098h,0aah,09bh,0aah,0b9h,0aah,0c9h,0aah,0c3h	; aa89  .5.8.Y..........
	defb 033h,0abh,0cdh,005h,0a8h,0d0h,0cdh,010h,041h,021h,079h,0a8h,0cdh,0f2h,040h,03eh	; aa99  3.......A!y...@>
	defb 010h,032h,039h,0cfh,021h,003h,0afh,011h,098h,018h,0cdh,0cch,0aah,0c3h,057h,0a9h	; aaa9  .29.!.........W.
	defb 03ah,036h,0cfh,0a7h,0cch,0ddh,0aah,0cdh,0e5h,0ach,0d0h,03eh,080h,0c3h,054h,0a9h	; aab9  :6.........>..T.
	defb 0c3h,007h,0ach	; aac9

; ======================================================================
; CODIGO 0xaacc..0xab26  (90 bytes)
; ======================================================================


L_AACC:
	ld a,004h		;aacc
	ld (0cf35h),a		;aace
	ld (0cf31h),hl		;aad1
	ld (0cf33h),de		;aad4
	xor a			;aad8
	ld (0cf36h),a		;aad9
	ret			;aadc
L_AADD:
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
	jr z,L_AB0D		;aaee
	inc a			;aaf0
	jr z,L_AB13		;aaf1
	ld a,c			;aaf3
	ld c,0ffh		;aaf4
	ld de,(0cf33h)		;aaf6
	call 040feh		;aafa
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

; ----------------------------------------------------------------------
; DATOS sin identificar  0xab26..0xb970  (3658 bytes)
DATA_AB26:
	defb 0cdh,0ddh,0aah,03ah,036h,0cfh,0a7h,0c8h,03eh,080h,0c3h,054h,0a9h,021h,004h,0c1h	; ab26  ...:6...>..T.!..
	defb 035h,0c0h,021h,000h,0cfh,036h,007h,023h,036h,007h,023h,036h,007h,0c3h,057h,0a9h	; ab36  5.!..6.#6.#6..W.
	defb 0cdh,010h,041h,021h,079h,0a8h,0cdh,0f2h,040h,021h,03eh,05bh,011h,02ah,04ah,00eh	; ab46  ..A!y...@!>[.*J.
	defb 00ch,0cdh,07ch,041h,021h,03dh,05ah,011h,02ch,04ch,00eh,003h,0cdh,07ch,041h,021h	; ab56  ..|A!=Z.,L...|A!
	defb 03ch,059h,011h,02eh,04eh,00eh,00dh,0cdh,07ch,041h,0c3h,022h,041h,021h,004h,0c1h	; ab66  <Y..N...|A."A!..
	defb 035h,0c0h,021h,079h,0a8h,011h,000h,0cfh,001h,031h,000h,0edh,0b0h,0c3h,057h,0a9h	; ab76  5.!y.....1....W.
	defb 0cdh,09eh,040h,0cdh,016h,041h,021h,079h,0a8h,0cdh,0f2h,040h,021h,01eh,037h,011h	; ab86  ..@..A!y...@!.7.
	defb 062h,092h,00eh,00ch,0cdh,07ch,041h,021h,01dh,036h,011h,064h,094h,00eh,003h,0cdh	; ab96  b....|A!.6.d....
	defb 07ch,041h,021h,01ch,035h,011h,066h,096h,00eh,00dh,0cdh,07ch,041h,021h,01fh,038h	; aba6  |A!.5.f....|A!.8
	defb 001h,060h,090h,03eh,0ffh,016h,000h,0cdh,07ah,040h,011h,060h,038h,0cdh,02eh,041h	; abb6  .`.>....z@.`8..A
	defb 011h,060h,070h,0cdh,02eh,041h,0cdh,034h,041h,021h,010h,048h,011h,030h,050h,001h	; abc6  .`p..A.4A!.H.0P.
	defb 008h,018h,03eh,048h,0cdh,082h,041h,021h,010h,048h,011h,040h,098h,001h,008h,018h	; abd6  ..>H..A!.H.@....
	defb 03eh,048h,0cdh,082h,041h,021h,010h,040h,011h,038h,058h,001h,008h,008h,03eh,048h	; abe6  >H..A!.@.8X...>H
	defb 0cdh,082h,041h,021h,010h,040h,011h,048h,0a0h,001h,008h,008h,03eh,048h,0c3h,082h	; abf6  ..A!.@.H....>H..
	defb 041h,021h,004h,0c1h,035h,0c0h,021h,079h,0a8h,011h,000h,0cfh,001h,031h,000h,0edh	; ac06  A!..5.!y.....1..
	defb 0b0h,03eh,003h,032h,037h,0c1h,0c9h,035h,021h,01ch,0adh,011h,020h,0e6h,001h,020h	; ac16  .>.27..5!... ..
	defb 000h,0edh,0b0h,021h,080h,0e4h,011h,044h,001h,018h,012h,035h,021h,01ch,0adh,011h	; ac26  ...!...D...5!...
	defb 000h,0e6h,001h,020h,000h,0edh,0b0h,021h,000h,0e4h,011h,046h,001h,00eh,004h,006h	; ac36  ... ...!...F....
	defb 010h,072h,023h,010h,0fch,006h,010h,073h,023h,010h,0fch,00dh,020h,0f1h,0a7h,0c9h	; ac46  .r#....s#... ...
	defb 021h,037h,0cfh,07eh,0a7h,028h,0c0h,03ch,028h,003h,035h,0a7h,0c9h,021h,021h,0e6h	; ac56  !7.~.(.<(.5..!!.
	defb 018h,010h,021h,038h,0cfh,07eh,0a7h,028h,0c2h,03ch,028h,003h,035h,0a7h,0c9h,021h	; ac66  ..!8.~.(.<(.5..!
	defb 001h,0e6h,03ah,003h,0c1h,01fh,0d0h,0e5h,0cdh,09fh,0ach,0e1h,006h,008h,035h,07eh	; ac76  ..:...........5~
	defb 0feh,038h,038h,008h,023h,023h,023h,023h,010h,0f4h,0a7h,0c9h,02bh,006h,008h,036h	; ac86  .88.####....+..6
	defb 0e0h,023h,023h,023h,023h,010h,0f8h,037h,0c9h,03ah,003h,0c1h,0cbh,067h,03eh,020h	; ac96  .####..7.:...g>
	defb 028h,001h,0afh,023h,006h,008h,077h,0c6h,004h,023h,023h,023h,023h,010h,0f7h,0c9h	; aca6  (..#..w..####...
	defb 03ah,003h,0c1h,0cbh,05fh,03eh,040h,028h,002h,03eh,048h,023h,006h,002h,077h,0c6h	; acb6  :..._>@(.>H#..w.
	defb 004h,023h,023h,023h,023h,010h,0f7h,0c9h,035h,021h,03ch,0adh,011h,040h,0e6h,001h	; acc6  .####...5!<..@..
	defb 008h,000h,0edh,0b0h,021h,000h,0e5h,011h,044h,001h,00eh,001h,0c3h,045h,0ach,021h	; acd6  ....!...D....E.!
	defb 039h,0cfh,07eh,0a7h,028h,0e2h,03ch,028h,003h,035h,0a7h,0c9h,021h,041h,0e6h,03ah	; ace6  9.~.(.<(.5..!A.:
	defb 003h,0c1h,01fh,0d0h,0e5h,0cdh,0b6h,0ach,0e1h,006h,002h,035h,07eh,0feh,038h,038h	; acf6  ...........5~.88
	defb 008h,023h,023h,023h,023h,010h,0f4h,0a7h,0c9h,02bh,006h,002h,036h,0e0h,023h,023h	; ad06  .####....+..6.##
	defb 023h,023h,010h,0f8h,037h,0c9h,058h,0b0h,020h,000h,058h,0b0h,024h,000h,058h,0c0h	; ad16  ##..7.X. .X.$.X.
	defb 028h,000h,058h,0c0h,02ch,000h,068h,0b0h,030h,000h,068h,0b0h,034h,000h,068h,0c0h	; ad26  (.X.,.h.0.h.4.h.
	defb 038h,000h,068h,0c0h,03ch,000h,068h,0c0h,040h,000h,068h,0c0h,044h,000h,04dh,049h	; ad36  8.h.<.h.@.h.D.MI
	defb 054h,043h,048h,045h,04ch,08dh,061h,07ah,074h,000h,07fh,05dh,060h,088h,070h,06ah	; ad46  TCHEL.azt..]`.pj
	defb 06ah,060h,05ch,0feh,058h,06ch,05ch,070h,000h,04ch,041h,044h,059h,04bh,04fh,04eh	; ad56  j`\.Xl\p.LADYKON
	defb 047h,087h,065h,060h,03ch,066h,06ah,03ch,066h,06ah,03eh,0feh,050h,066h,060h,066h	; ad66  G.e`<fj<fj>.Pf`f
	defb 03fh,06eh,061h,074h,067h,06dh,03ch,070h,05fh,069h,067h,061h,03ch,06ah,080h,05dh	; ad76  ?natgm<p_iga<j.]
	defb 06ah,03ch,03eh,0ffh,041h,04dh,059h,073h,06eh,03ch,082h,08bh,062h,073h,060h,05ch	; ad86  j<>.AMYsn<..bs`\
	defb 07dh,06fh,062h,03fh,0feh,060h,04bh,049h,04eh,047h,04bh,04fh,04eh,047h,074h,000h	; ad96  }ob?.`KINGKONGt.
	defb 06ah,08ch,06ah,05ch,079h,000h,05ch,061h,087h,075h,061h,06eh,08ch,06ah,03eh,0ffh	; ada6  j.j\y.\a.uan.j>.
	defb 07ah,06dh,064h,03ch,081h,088h,000h,04dh,049h,054h,043h,048h,045h,04ch,0feh,060h	; adb6  zmd<...MITCHEL.`
	defb 04ch,041h,044h,059h,060h,03ch,000h,05bh,088h,06fh,070h,06ah,073h,066h,069h,05dh	; adc6  LADY`<.[.opjsfi]
	defb 070h,060h,063h,079h,086h,08ch,06dh,05ch,083h,080h,0ffh,04bh,049h,04eh,047h,04bh	; add6  p`cy..m\...KINGK
	defb 04fh,04eh,047h,074h,067h,062h,05eh,06fh,060h,08ch,06ah,063h,084h,06eh,03ch,0feh	; ade6  ONGtgb^o`.jc.n<.
	defb 050h,061h,07ah,073h,078h,03ch,05dh,063h,088h,074h,03fh,063h,08ch,066h,06dh,07bh	; adf6  Pazsx<]c.t?c.fm{
	defb 06ah,03ch,06dh,03ch,074h,06fh,060h,08ch,06ah,03eh,0feh,058h,05bh,082h,060h,03ch	; ae06  j<m<to`.j>.X[.`<
	defb 06eh,05dh,000h,000h,000h,000h,04dh,049h,054h,043h,048h,045h,04ch,0ffh,04dh,049h	; ae16  n]....MITCHEL.MI
	defb 054h,043h,048h,045h,04ch,08dh,061h,07ah,074h,000h,07fh,05dh,060h,088h,070h,06ah	; ae26  TCHEL.azt..]`.pj
	defb 06ah,060h,05ch,0feh,058h,06ch,05ch,070h,000h,04ch,041h,044h,059h,04bh,04fh,04eh	; ae36  j`\.Xl\p.LADYKON
	defb 047h,087h,065h,060h,03ch,066h,06ah,03ch,066h,06ah,03eh,0feh,040h,069h,066h,06dh	; ae46  G.e`<fj<fj>.@ifm
	defb 03fh,041h,04dh,059h,070h,080h,08ch,06dh,000h,066h,08ah,066h,03ch,08ah,06ch,060h	; ae56  ?AMYp..m.f.f<.l`
	defb 03ch,05fh,064h,06fh,086h,084h,06ah,03eh,0ffh,068h,05ch,064h,05dh,06ah,03ch,08fh	; ae66  <_do..j>.h\d]j<.
	defb 000h,04bh,049h,04eh,047h,04bh,04fh,04eh,047h,074h,000h,05ch,061h,060h,05eh,08ch	; ae76  .KINGKONGt.\a`^.
	defb 06ah,08fh,0feh,038h,061h,07ah,073h,05fh,060h,063h,03ch,06dh,03ch,04bh,04fh,04eh	; ae86  j..8azs_`c<m<KON
	defb 047h,074h,000h,076h,08ch,060h,06ch,066h,06ah,073h,06ah,03ch,08fh,0ffh,05fh,07ch	; ae96  Gt.v.`lfjsj<.._|
	defb 06dh,03ch,06eh,05dh,04dh,049h,054h,043h,048h,045h,04ch,08fh,05fh,07ch,06dh,03ch	; aea6  m<n]MITCHEL._|m<
	defb 06eh,05dh,041h,04dh,059h,08fh,0ffh,047h,04fh,04ch,04eh,045h,042h,04fh,06eh,05dh	; aeb6  n]AMY..GOLNEBOn]
	defb 070h,07dh,000h,077h,05ch,086h,060h,03ch,07dh,06eh,03ch,082h,03fh,0feh,040h,04bh	; aec6  p}.w\.`<}n<.?.@K
	defb 04fh,04eh,047h,074h,000h,04ch,041h,044h,059h,06eh,05ch,08ch,066h,08bh,070h,06ah	; aed6  ONGt.LADYn\.f.pj
	defb 073h,066h,062h,062h,081h,066h,06dh,05ch,083h,0feh,058h,05bh,082h,060h,03ch,06eh	; aee6  sfbb.fm\..X[.`<n
	defb 05dh,000h,000h,000h,000h,04dh,049h,054h,043h,048h,045h,04ch,0ffh,05fh,08ch,06eh	; aef6  ]....MITCHEL._.n
	defb 08fh,064h,084h,074h,075h,03ch,08ch,062h,082h,08fh,05bh,060h,06bh,089h,088h,04bh	; af06  .d.tu<.b..[`k..K
	defb 04fh,04eh,047h,06ah,03ch,08fh,0feh,038h,07eh,08ch,06ah,072h,04bh,04fh,04eh,047h	; af16  ONGj<..8~.jrKONG
	defb 08fh,07eh,08ch,06ah,072h,04ch,041h,044h,059h,08fh,05fh,07ch,06dh,03ch,06eh,05dh	; af26  .~.jrLADY._|m<n]
	defb 08fh,08fh,0ffh,054h,048h,045h,026h,045h,04eh,044h,0ffh,000h,000h,000h,000h,000h	; af36  ...THE&END......
	defb 000h,000h,000h,00dh,044h,0cdh,000h,0d5h,00dh,04ch,0d0h,0d4h,000h,04dh,000h,00dh	; af46  ....D....L...M..
	defb 045h,0d0h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; af56  E...............
	defb 000h,000h,000h,00dh,0c4h,04dh,000h,0dch,04dh,005h,0d0h,00dh,040h,004h,0d0h,000h	; af66  .....M..M...@...
	defb 0d5h,04dh,000h,000h,000h,000h,000h,0d4h,000h,000h,000h,000h,000h,00dh,0cch,000h	; af76  .M..............
	defb 000h,0cch,0dch,000h,00dh,0ddh,0ddh,000h,0d0h,0d0h,000h,000h,0ddh,000h,000h,00dh	; af86  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,0cdh,0dch,0dch,0ddh,0ddh	; af96  ................
	defb 0ddh,0cdh,0dch,000h,000h,000h,0ddh,000h,000h,000h,000h,000h,000h,000h,000h,000h	; afa6  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,0ddh,0dch,0c0h,0c0h,0cdh	; afb6  ................
	defb 0ddh,0dch,0cch,0cch,0dch,0ddh,00ch,0ddh,0cch,0cdh,0d0h,000h,0ddh,0cch,00dh,000h	; afc6  ................
	defb 00dh,0d0h,000h,000h,000h,00dh,000h,000h,00dh,000h,000h,00dh,0ddh,000h,0ddh,0d0h	; afd6  ................
	defb 0ddh,0ddh,00ch,0d0h,0ddh,00ch,0cdh,00dh,0dch,000h,0ddh,000h,0d0h,000h,00dh,000h	; afe6  ................
	defb 0c0h,000h,000h,00ch,000h,0d0h,000h,000h,00dh,000h,000h,0cch,0cch,0dch,0ddh,0cdh	; aff6  ................
	defb 0ddh,0ddh,0cdh,0ddh,0ddh,0cdh,0dch,0d0h,0d0h,000h,000h,000h,000h,000h,000h,000h	; b006  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,0ddh,0ddh,000h,000h,0cdh	; b016  ................
	defb 0dch,0cch,000h,0ddh,0cdh,0ddh,0c0h,0ddh,0ddh,0cch,0dch,000h,000h,0ddh,0dch,000h	; b026  ................
	defb 000h,000h,0d0h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; b036  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; b046  ................
	defb 000h,000h,0ddh,000h,00dh,0ddh,0cch,00dh,0cch,0ddh,0d0h,000h,000h,000h,000h,000h	; b056  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,00ch,0d0h,0ddh	; b066  ................
	defb 0cch,0ddh,000h,0ddh,0ddh,000h,000h,0c0h,000h,0d0h,000h,000h,000h,000h,000h,000h	; b076  ................
	defb 000h,000h,0ddh,000h,000h,00dh,0dch,0d0h,00dh,0dch,0cdh,000h,0dch,0cch,0cch,00dh	; b086  ................
	defb 0cch,0cch,0cch,0dch,07ch,0c7h,0cch,0c7h,0cdh,0dch,0cdh,000h,000h,000h,000h,0ddh	; b096  ....|...........
	defb 0ddh,0d0h,000h,0cch,0cch,0ddh,0d0h,0dch,0cch,0cch,0ddh,0ddh,0cch,0cch,0cdh,0d0h	; b0a6  ................
	defb 0dch,0c7h,07ch,0d0h,0dch,07ch,0cdh,0d0h,0dch,0cdh,0d0h,000h,000h,000h,000h,000h	; b0b6  ..|..|..........
	defb 000h,000h,000h,000h,000h,000h,000h,000h,0d4h,000h,000h,0d0h,00dh,0ddh,000h,0cch	; b0c6  ................
	defb 0d0h,0cdh,0dch,0cch,0cch,00ch,0dch,0dch,0c7h,0c0h,0cdh,000h,000h,000h,000h,000h	; b0d6  ................
	defb 000h,000h,00dh,000h,000h,000h,0d0h,000h,000h,00dh,0d0h,000h,0d4h,0ddh,00ch,0dch	; b0e6  ................
	defb 0cdh,0ddh,0cch,0cdh,0cch,0cch,0dch,0cch,0dch,0cch,0cch,000h,000h,000h,000h,00ch	; b0f6  ................
	defb 000h,000h,000h,0dch,0d0h,000h,000h,0ddh,0cdh,000h,000h,0dch,0cdh,000h,000h,0cch	; b106  ................
	defb 0cdh,000h,000h,0cch,0d0h,000h,000h,0cch,0d0h,000h,000h,00dh,0dch,0cdh,0ddh,0d0h	; b116  ................
	defb 00dh,0dch,000h,000h,0d0h,000h,0d0h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; b126  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,00dh,0d0h,000h,00dh,0d0h	; b136  ................
	defb 000h,000h,0dch,000h,000h,004h,0dch,000h,000h,00dh,0cch,000h,000h,04dh,0cch,000h	; b146  .............M..
	defb 000h,04dh,0cdh,000h,000h,04dh,0cdh,000h,000h,00dh,0cdh,0cch,0ddh,0ddh,0ddh,07dh	; b156  .M...M.........}
	defb 0d4h,000h,0d0h,0cdh,040h,000h,004h,0ddh,040h,000h,000h,0d4h,000h,000h,000h,0d0h	; b166  ....@...@.......
	defb 000h,000h,000h,040h,000h,000h,000h,0d4h,000h,000h,00dh,0c0h,0cdh,0ddh,004h,0d0h	; b176  ...@............
	defb 0d0h,0d0h,000h,00dh,004h,000h,000h,00dh,0d0h,000h,000h,0dch,0d0h,000h,000h,0dch	; b186  ................
	defb 0ddh,000h,000h,0cdh,0cdh,000h,000h,0cch,0dch,0d0h,000h,04dh,0dch,07ch,00ch,004h	; b196  ...........M.|..
	defb 0ddh,0cch,0c0h,000h,04dh,0c7h,0c0h,000h,004h,0dch,0c0h,000h,004h,0dch,0c0h,000h	; b1a6  ....M...........
	defb 00dh,0dch,0c0h,000h,00dh,0c7h,0c0h,0d0h,0ddh,0cch,0c0h,0dch,0cdh,0cch,0cch,0cch	; b1b6  ................
	defb 0cdh,0cch,0ddh,00ch,0cch,0ddh,0ddh,000h,0cdh,00dh,000h,000h,00dh,0d0h,0d0h,0c0h	; b1c6  ................
	defb 0d0h,0cdh,000h,00dh,00dh,000h,000h,0ddh,00dh,000h,000h,0ddh,000h,000h,000h,0d0h	; b1d6  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; b1e6  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,0d0h,000h,00dh,00ch,000h	; b1f6  ................
	defb 000h,000h,0ddh,000h,000h,0d0h,0ddh,000h,000h,0ddh,0dch,000h,00dh,00dh,0dch,000h	; b206  ................
	defb 000h,0ddh,0cch,000h,00dh,00dh,0c7h,00dh,000h,0ddh,0cdh,0cch,0ddh,0c0h,000h,0cch	; b216  ................
	defb 0cdh,0d4h,000h,0cch,0ddh,0ddh,0ddh,0cdh,0cdh,0ddh,0ddh,0cch,0dch,0ddh,0ddh,0cdh	; b226  ................
	defb 0cdh,0ddh,0ddh,0cch,0dch,0ddh,0ddh,0cch,0cdh,0cdh,0ddh,000h,0dch,0cch,000h,0d0h	; b236  ................
	defb 04ch,0c0h,00dh,000h,000h,000h,000h,000h,0d0h,000h,000h,0ddh,0ddh,0d0h,0c0h,0ddh	; b246  L...............
	defb 0ddh,0ddh,0dch,00dh,0ddh,0ddh,0dch,0ddh,0ddh,0ddh,0ddh,0ddh,0c0h,000h,000h,00dh	; b256  ................
	defb 00dh,000h,000h,00ch,0ddh,000h,000h,000h,0d0h,0d0h,000h,000h,0ddh,0d0h,000h,0ddh	; b266  ................
	defb 00dh,0ddh,000h,0cdh,0dch,0ddh,000h,0cch,0ddh,0cdh,0d0h,000h,000h,000h,000h,000h	; b276  ................
	defb 000h,000h,000h,000h,000h,000h,0d0h,000h,000h,000h,0ddh,000h,000h,0ddh,00dh,000h	; b286  ................
	defb 0ddh,00dh,0ddh,000h,000h,000h,000h,000h,000h,000h,000h,000h,0d0h,0ddh,0cch,0d0h	; b296  ................
	defb 00ch,0dch,0cch,0cch,0cdh,0dch,0ddh,0ddh,0ddh,0cdh,0ddh,0ddh,0ddh,0ddh,0ddh,0ddh	; b2a6  ................
	defb 0ddh,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,0cdh,0cch,0cch,0cch,0dch	; b2b6  ................
	defb 0c7h,0c7h,0cch,0dch,00ch,0cch,077h,0ddh,0ddh,0ddh,0ddh,0ddh,0ddh,0ddh,0ddh,000h	; b2c6  ......w.........
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,0ddh,00dh,000h,0ddh,0cch	; b2d6  ................
	defb 0cch,0ddh,000h,0cch,07ch,0cch,0ddh,0ddh,0ddh,0dch,0cch,0ddh,0ddh,0ddh,0ddh,000h	; b2e6  ....|...........
	defb 000h,00dh,0ddh,000h,000h,000h,000h,000h,000h,000h,000h,0dch,0ddh,0ddh,0d0h,0dch	; b2f6  ................
	defb 0cdh,0d0h,0d0h,00dh,0dch,0ddh,00dh,0cdh,0d0h,00dh,00dh,0dch,0cdh,0d0h,000h,0ddh	; b306  ................
	defb 0ddh,0ddh,0d0h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; b316  ................
	defb 000h,000h,000h,000h,000h,000h,000h,0d0h,000h,000h,000h,0d0h,000h,000h,000h,00dh	; b326  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,088h,088h,088h,088h,088h	; b336  ................
	defb 088h,088h,088h,088h,088h,088h,088h,088h,088h,088h,081h,088h,088h,088h,013h,088h	; b346  ................
	defb 088h,088h,015h,088h,088h,088h,01ah,088h,088h,081h,011h,088h,011h,011h,011h,081h	; b356  ................
	defb 033h,044h,045h,013h,043h,033h,034h,034h,034h,034h,045h,0a3h,045h,045h,034h,034h	; b366  3DE.C34444E.EE44
	defb 044h,045h,04ah,01ah,031h,044h,0a5h,043h,01ah,015h,03ah,088h,088h,088h,088h,011h	; b376  DEJ.1D.C..:.....
	defb 088h,088h,088h,0a3h,018h,088h,011h,045h,041h,011h,044h,0a4h,014h,015h,0a3h,034h	; b386  .......EA.D....4
	defb 01ah,053h,045h,041h,044h,034h,0a3h,054h,044h,043h,043h,088h,088h,088h,088h,088h	; b396  .SEAD4.TDCC.....
	defb 088h,088h,088h,018h,088h,088h,088h,041h,088h,088h,088h,054h,018h,088h,088h,045h	; b3a6  .......A...T...E
	defb 041h,088h,088h,053h,054h,018h,088h,035h,034h,018h,088h,088h,088h,01ah,035h,088h	; b3b6  A..ST..54.....5.
	defb 081h,0a3h,0aah,088h,081h,0a5h,054h,088h,081h,053h,0a5h,088h,081h,01ah,031h,081h	; b3c6  ......T..S....1.
	defb 015h,015h,011h,013h,051h,051h,0c7h,081h,011h,011h,0cch,011h,03ah,05ah,033h,014h	; b3d6  ....QQ......:Z3.
	defb 0a3h,033h,033h,011h,0a5h,033h,03ah,011h,051h,0a3h,0aah,011h,045h,015h,0a3h,077h	; b3e6  .33..3:.Q...E..w
	defb 014h,051h,053h,077h,071h,011h,011h,0c7h,077h,0c1h,011h,0aah,015h,031h,0a5h,035h	; b3f6  .QSwq...w....1.5
	defb 043h,0aah,045h,054h,0aah,033h,01ah,038h,053h,0a3h,013h,0a4h,03ah,031h,044h,034h	; b406  C.ET.3.8S...:1D4
	defb 03ah,041h,05ah,011h,011h,0ddh,011h,011h,0cch,011h,0cch,053h,055h,041h,088h,035h	; b416  :AZ........SUA.5
	defb 053h,054h,018h,035h,034h,034h,018h,0a5h,035h,054h,018h,0a5h,034h,0a3h,018h,045h	; b426  ST.544..5T..4..E
	defb 043h,053h,051h,014h,055h,044h,035h,071h,043h,035h,035h,088h,081h,0b1h,01ch,088h	; b436  CSQ.UD5qC55.....
	defb 01fh,0ffh,011h,081h,0cfh,0cch,0f1h,081h,01bh,01ch,0cfh,081h,0ffh,0f1h,01ch,01fh	; b446  ................
	defb 0ffh,0ffh,011h,01fh,0ffh,0ffh,0f1h,01fh,0cfh,0ffh,0ffh,07ch,077h,0c7h,077h,0c7h	; b456  ...........|w.w.
	defb 0cch,07ch,077h,01ch,0c7h,0c7h,07ch,011h,01dh,0c7h,077h,0ffh,011h,011h,0dch,0cfh	; b466  .|w...|...w.....
	defb 0b1h,011h,011h,01ch,0fbh,011h,01dh,011h,0cbh,011h,011h,0c7h,077h,077h,01dh,077h	; b476  ............ww.w
	defb 077h,077h,077h,077h,0c7h,07ch,0cdh,0c7h,07ch,0c7h,0d7h,07ch,0c7h,0cdh,0cch,01dh	; b486  wwww.|..|..|....
	defb 0d1h,011h,0c7h,011h,011h,0ddh,0cch,01dh,011h,01ch,011h,0cch,015h,05ah,035h,0d7h	; b496  .............Z5.
	defb 0c1h,033h,053h,07ch,071h,055h,043h,0c7h,071h,015h,035h,077h,071h,045h,051h,077h	; b4a6  .3S|qUC.q.5wqEQw
	defb 071h,044h,018h,07ch,0c1h,041h,088h,0c7h,071h,018h,088h,054h,018h,088h,088h,054h	; b4b6  qD.|.A..q..T...T
	defb 018h,088h,088h,051h,088h,088h,088h,018h,088h,088h,088h,088h,088h,088h,088h,088h	; b4c6  ...Q............
	defb 088h,088h,088h,088h,088h,088h,088h,088h,088h,088h,088h,01ch,0ffh,0fch,0fbh,01ch	; b4d6  ................
	defb 0ffh,0ffh,0cfh,01fh,0fch,0ffh,0ffh,01fh,0ffh,0ffh,0fbh,081h,0ffh,0fbh,011h,081h	; b4e6  ................
	defb 0ffh,0b1h,01fh,081h,0bfh,0ffh,0ffh,081h,0ffh,0ffh,0fch,0b1h,0cfh,0b1h,011h,0d1h	; b4f6  ................
	defb 01dh,0b1h,011h,0ddh,01dh,01bh,011h,011h,011h,011h,015h,011h,0fdh,0f1h,0b1h,0fch	; b506  ................
	defb 0fch,0d1h,0b1h,0cbh,0cfh,0ffh,01bh,0ffh,0ffh,0ffh,011h,0d1h,013h,031h,013h,011h	; b516  .............1..
	defb 033h,013h,035h,015h,033h,033h,053h,035h,0aah,035h,033h,05ah,05ah,0a3h,031h,05ah	; b526  3.5.33S5.53ZZ.1Z
	defb 0a4h,041h,011h,015h,041h,01dh,01ch,011h,01dh,0cch,077h,01ch,071h,088h,088h,01dh	; b536  .A..A.....w.q...
	defb 071h,088h,088h,017h,013h,018h,088h,01ch,015h,031h,088h,017h,013h,018h,088h,077h	; b546  q........1.....w
	defb 013h,018h,088h,077h,015h,018h,088h,0cch,011h,088h,088h,081h,011h,0ffh,0ffh,088h	; b556  ...w............
	defb 01fh,0ffh,0ffh,088h,01dh,0ffh,0ffh,000h,000h,000h,000h,000h,000h,000h,000h,000h	; b566  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,0ffh,0ffh,0ffh,0d1h,0ffh	; b576  ................
	defb 0fdh,0dfh,011h,0fdh,0dfh,0f1h,011h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; b586  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,011h,0ddh,0c2h,0c2h,01dh	; b596  ................
	defb 0dch,022h,02ch,0ddh,0c2h,0c2h,022h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; b5a6  .",...".........
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,02ch,018h,088h,088h,0cch	; b5b6  ...........,....
	defb 0d1h,088h,088h,0cdh,0d1h,088h,088h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; b5c6  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,05ah,0a5h,044h,044h,044h	; b5d6  ...........Z.DDD
	defb 0aah,0a5h,04ah,05ah,05ah,0aah,05ah,0aah,0aah,0aah,0aah,05ah,0aah,0aah,0aah,0aah	; b5e6  ..JZZ.Z....Z....
	defb 055h,05ah,0a5h,054h,0aah,055h,05ah,045h,045h,05ah,0a5h,044h,055h,05ah,0aah,05ah	; b5f6  UZ.T.UZEEZ.DUZ.Z
	defb 04ah,0aah,0a5h,0a5h,0aah,05ah,0aah,0aah,0aah,0aah,0aah,0aah,0aah,0aah,0aah,03ah	; b606  J....Z.........:
	defb 05ah,0a5h,0aah,0aah,0a5h,055h,0a4h,055h,05ah,05ah,04ah,044h,044h,044h,045h,044h	; b616  Z....U.UZZJDDDED
	defb 04ah,0a5h,0a4h,0aah,0a5h,05ah,0aah,0aah,0aah,0aah,0aah,0aah,03ah,0aah,0a5h,055h	; b626  J....Z......:..U
	defb 0aah,0a5h,0aah,0a4h,04ah,0a5h,044h,045h,054h,044h,054h,0ffh,0ffh,0ffh,0ffh,0ffh	; b636  ....J.DETDT.....
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0f1h,011h,01fh,0ffh,01bh,0b9h,0b1h,0f1h	; b646  ................
	defb 0bbh,09bh,09bh,01bh,01bh,0bbh,0b1h,011h,0b1h,011h,0bbh,0ffh,0ffh,0ffh,0ffh,0ffh	; b656  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0f1h,0ffh,0ffh,0ffh,019h,011h,0ffh,0ffh,01bh,091h	; b666  ................
	defb 011h,011h,0bbh,01bh,0bbh,0bbh,011h,01bh,011h,01bh,0bbh,0ffh,0ffh,0ffh,0ffh,0ffh	; b676  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; b686  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0f1h,011h,0ffh,011h,019h,0b9h,0f1h,09bh,0b9h,09bh,019h	; b696  ................
	defb 0bbh,099h,099h,09bh,0b9h,09bh,0bbh,0b9h,09bh,0b9h,09bh,0b9h,0bbh,0bbh,0b9h,09bh	; b6a6  ................
	defb 0bbh,011h,01bh,01bh,0b1h,011h,0b1h,011h,0bbh,01bh,011h,091h,0ffh,0ffh,0ffh,099h	; b6b6  ................
	defb 01fh,0ffh,0ffh,099h,091h,0ffh,0ffh,0bbh,09bh,01fh,0ffh,0bbh,099h,091h,0ffh,09bh	; b6c6  ................
	defb 0b9h,09bh,01fh,0bbh,0b9h,0bbh,01fh,01bh,01bh,091h,0b1h,0ffh,0ffh,0ffh,0ffh,0ffh	; b6d6  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0f1h,0ffh,0ffh,0ffh,0f1h,0ffh	; b6e6  ................
	defb 0ffh,0ffh,01ch,0ffh,0ffh,0ffh,01ch,0ffh,0ffh,0ffh,01dh,0ffh,0ffh,0ffh,0ffh,0ffh	; b6f6  ................
	defb 0ffh,0ffh,0ffh,011h,01fh,0ffh,0ffh,0cch,0c1h,011h,011h,0cch,0cch,0cch,01ch,0ddh	; b706  ................
	defb 0cch,0cdh,0cch,0ddh,0dch,0dch,0cch,01dh,0ddh,0cch,0cch,0ffh,0ffh,0ffh,0ffh,0ffh	; b716  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,011h,0ffh,0ffh,0ffh,0cdh,01fh,0ffh,0ffh,0cdh	; b726  ................
	defb 0d1h,0ffh,0ffh,0cch,0ddh,01fh,0ffh,0cch,0cdh,01fh,0f1h,0b1h,011h,011h,011h,01bh	; b736  ................
	defb 019h,01bh,0b1h,0b9h,0b1h,091h,0bbh,01bh,09bh,011h,01bh,011h,0b1h,01bh,01bh,01bh	; b746  ................
	defb 011h,011h,011h,041h,01bh,011h,0b1h,0aah,0a1h,011h,014h,011h,01bh,011h,011h,0b1h	; b756  ...A............
	defb 011h,0bbh,011h,01bh,01bh,011h,01bh,0b1h,0bbh,0b1h,011h,01bh,0bbh,01bh,0bbh,0b1h	; b766  ................
	defb 01bh,0b4h,054h,01bh,0b4h,055h,041h,044h,044h,044h,044h,01bh,011h,011h,011h,011h	; b776  ..T..UADDDD.....
	defb 011h,011h,011h,09bh,011h,0b1h,011h,011h,0bbh,011h,0b1h,011h,011h,0b9h,01bh,0b9h	; b786  ................
	defb 01bh,0b1h,01bh,04bh,091h,019h,091h,044h,044h,041h,014h,011h,0bbh,0bbh,0bbh,011h	; b796  ...K...DDA......
	defb 01bh,0bbh,0b9h,011h,0b1h,01bh,0bbh,011h,011h,01bh,0bbh,0b1h,01bh,0b1h,0bbh,099h	; b7a6  ................
	defb 011h,01bh,011h,01bh,0b1h,011h,01bh,011h,014h,044h,041h,01fh,0ffh,011h,01dh,01fh	; b7b6  .........DA.....
	defb 0f1h,0bbh,01ch,091h,011h,0b1h,0dch,0b9h,01bh,01dh,0ddh,0bbh,0b1h,0bdh,0ddh,0b1h	; b7c6  ................
	defb 0bbh,011h,011h,01bh,0b1h,0bbh,014h,011h,011h,011h,044h,0cdh,0dch,0cdh,0cch,0cdh	; b7d6  ..........D.....
	defb 0ddh,0cdh,0dch,0ddh,0ddh,0ddh,0d1h,0d1h,0ddh,0cdh,0ddh,01dh,0cdh,0ddh,0cch,011h	; b7e6  ................
	defb 01dh,0cdh,0d1h,0aah,041h,01dh,01dh,04ah,0aah,041h,011h,01ch,01dh,0d1h,01bh,01ch	; b7f6  ....A..J.A......
	defb 01ch,0ddh,01bh,0cdh,01dh,0cdh,01bh,0cdh,01dh,0ddh,011h,0dch,01dh,0dch,014h,0d1h	; b806  ................
	defb 0ddh,01ch,0d1h,01dh,0ddh,0cdh,0ddh,011h,011h,011h,011h,0f7h,0cch,077h,0f7h,0ffh	; b816  .............w..
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; b826  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; b836  ................
	defb 0ffh,0ffh,0f7h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0fch,0ffh	; b846  ................
	defb 0cch,0cfh,0cch,0ffh,0fch,0cch,0c7h,0f7h,077h,0c7h,0cch,0f7h,07fh,07fh,0ffh,07ch	; b856  ........w......|
	defb 07ch,0c7h,0f7h,0ffh,0cch,0ffh,0c7h,0ffh,0ffh,0c7h,0cch,0c7h,07ch,07ch,077h,0cch	; b866  |...........||w.
	defb 0c7h,0c7h,07ch,077h,077h,077h,077h,07ch,077h,07ch,07fh,0ffh,0ffh,0ffh,0ffh,0fch	; b876  ..|wwww|w|......
	defb 0cfh,0ffh,0ffh,077h,077h,0c7h,0ffh,0cch,07fh,0cfh,0ffh,077h,077h,077h,0cfh,0cch	; b886  ...ww......www..
	defb 077h,07ch,077h,077h,0cch,0cfh,0ffh,0cch,07fh,0ffh,0ffh,000h,000h,004h,0d4h,000h	; b896  w|ww............
	defb 000h,000h,00dh,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; b8a6  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; b8b6  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; b8c6  ................
	defb 000h,000h,000h,010h,000h,000h,000h,010h,000h,000h,000h,000h,0fah,07fh,0ffh,041h	; b8d6  ...............A
	defb 0ffh,000h,000h,040h,041h,000h,042h,043h,044h,045h,046h,047h,048h,049h,04ah,033h	; b8e6  ...@A.BCDEFGHIJ3
	defb 04ch,04dh,04eh,04fh,050h,000h,000h,000h,058h,000h,000h,02bh,02ch,025h,026h,027h	; b8f6  LMNOP...X..+,%&'
	defb 028h,029h,02ah,02dh,02eh,02fh,030h,031h,032h,033h,034h,035h,036h,037h,038h,039h	; b906  ()*-./0123456789
	defb 03ah,000h,03bh,03ch,03dh,000h,03eh,03fh,000h,000h,000h,000h,033h,033h,052h,053h	; b916  :.;<=.>?....33RS
	defb 054h,052h,056h,057h,051h,055h,055h,04bh,05bh,05ch,05dh,05eh,05fh,060h,061h,062h	; b926  TRVWQUUK[\]^_`ab
	defb 063h,064h,065h,066h,067h,068h,069h,000h,06ah,06bh,06ch,06dh,06eh,06fh,070h,071h	; b936  cdefghi.jklmnopq
	defb 072h,073h,074h,059h,05ah,075h,001h,002h,003h,004h,005h,006h,007h,008h,009h,00ah	; b946  rstYZu..........
	defb 00bh,00ch,00dh,00eh,00fh,010h,011h,012h,013h,014h,015h,016h,017h,018h,019h,01ah	; b956  ................
	defb 01bh,01ch,01dh,01eh,01fh,020h,021h,022h,023h,024h	; b966  ..... !"#$

; ======================================================================
; CODIGO 0xb970..0xba5a  (234 bytes)
; ======================================================================


L_B970:
	call 0409eh		;b970
	ld bc,00007h		;b973
	call 00047h		;b976   ; BIOS WRTVDP - Writes data in the VDP-register
	call 041ach		;b979
	ld b,00bh		;b97c
	ld hl,0ba6eh		;b97e
	ld de,0dfb0h		;b981
L_B984:
	ld a,(hl)			;b984
	ld (de),a			;b985
	inc hl			;b986
	inc de			;b987
	djnz L_B984		;b988
	ld hl,0ba6fh		;b98a
	call 040f2h		;b98d
	call L_B9BD		;b990
	ld hl,0a2a1h		;b993
	ld de,00800h		;b996
	ld bc,02406h		;b999
	call 041b2h		;b99c
	call L_B9BD		;b99f
	ld hl,0a3c1h		;b9a2
	ld de,02808h		;b9a5
	ld bc,03405h		;b9a8
	call 041b2h		;b9ab
	call L_B9BD		;b9ae
	ld hl,0a561h		;b9b1
	ld de,0c810h		;b9b4
	ld bc,01d08h		;b9b7
	jp 041b2h		;b9ba
L_B9BD:
	di			;b9bd
	ld a,005h		;b9be
	ld (08000h),a		;b9c0
	ld (0f0f2h),a		;b9c3
	ei			;b9c6
	ret			;b9c7
L_B9C8:
	ld a,(0c104h)		;b9c8
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
	ld de,0ba5ah		;b9e3
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
	call 0408ch		;b9fa
	ld a,003h		;b9fd
	call 04098h		;b9ff
	jr L_B9E7		;ba02
L_BA04:
	ld a,002h		;ba04
	ld (0dfb0h),a		;ba06
	ld b,003h		;ba09
	ld hl,0dfb1h		;ba0b
	inc hl			;ba0e
	ld de,0ba5ah		;ba0f
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
	call 0408ch		;ba24
	ld a,003h		;ba27
	call 04098h		;ba29
	jr L_BA13		;ba2c
L_BA2E:
	xor a			;ba2e
	ld (0dfb0h),a		;ba2f
	ld b,003h		;ba32
	ld hl,0dfb1h		;ba34
	inc hl			;ba37
	inc hl			;ba38
	ld de,0ba5ah		;ba39
	inc de			;ba3c
	inc de			;ba3d
	jr L_BA13		;ba3e
L_BA40:
	ld hl,0dfb1h		;ba40
	jp 040f2h		;ba43
L_BA46:
	ld a,(0c104h)		;ba46
	ld b,a			;ba49
	and 003h		;ba4a
	ret nz			;ba4c
	bit 2,b		;ba4d
	ld hl,0ba5ah		;ba4f
	jr z,L_BA57		;ba52
	ld hl,0ba64h		;ba54
L_BA57:
	jp 040f2h		;ba57

; ----------------------------------------------------------------------
; DATOS sin identificar  0xba5a..0xba79  (31 bytes)
DATA_BA5A:
	defb 005h,070h,000h,006h,007h,003h,008h,070h,000h,0ffh,005h,050h,000h,006h,005h,001h	; ba5a  .p.....p...P....
	defb 008h,050h,000h,0ffh,000h,005h,000h,000h,006h,000h,000h,008h,000h,000h,0ffh	; ba6a  .P.............

; ======================================================================
; CODIGO 0xba79..0xbae7  (110 bytes)
; ======================================================================


L_BA79:
	call L_B970		;ba79
	ld b,003h		;ba7c
	ld de,06606h		;ba7e
L_BA81:
	ld a,00fh		;ba81
	call 040f8h		;ba83
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
	call 0406eh		;ba96
	ld bc,00405h		;ba99
	ld hl,0b8e8h		;ba9c
	ld de,01820h		;ba9f
	call 041c4h		;baa2
	ld bc,00305h		;baa5
	ld hl,0b91fh		;baa8
	ld de,07020h		;baab
	call 041c4h		;baae
	ld bc,00506h		;bab1
	ld hl,0b92eh		;bab4
	ld de,0c020h		;bab7
	call 041c4h		;baba
	ld de,03820h		;babd
	call L_BADE		;bac0
	ld de,08820h		;bac3
	call L_BADE		;bac6
	ld bc,00c03h		;bac9
	ld hl,0b94ch		;bacc
	ld de,05058h		;bacf
	call 041c4h		;bad2
	ld hl,0bae7h		;bad5
	call 04056h		;bad8
	jp 04086h		;badb
L_BADE:
	ld bc,00705h		;bade
	ld hl,0b8fch		;bae1
	jp 041c4h		;bae4

; ----------------------------------------------------------------------
; DATOS sin identificar  0xbae7..0xbb57  (112 bytes)
DATA_BAE7:
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
	ld a,(0c125h)		;bb5b
	cp 088h		;bb5e
	jp z,L_BBEF		;bb60
	ld c,a			;bb63
	ld a,(0c201h)		;bb64
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
	ld a,(0c35bh)		;bb7e
	and a			;bb81
	ret z			;bb82
	ld bc,0011bh		;bb83
	ld de,05060h		;bb86
	ld a,(0c350h)		;bb89
	and a			;bb8c
	call z,0419ah		;bb8d
	ld bc,00111h		;bb90
	ld de,06060h		;bb93
	ld a,(0c35ah)		;bb96
	and a			;bb99
	jp z,0419ah		;bb9a
	ret			;bb9d
L_BB9E:
	ld a,(0c373h)		;bb9e
	and a			;bba1
	ld bc,0010dh		;bba2
	ld de,07070h		;bba5
	call nz,0419ah		;bba8
	ld de,02090h		;bbab
	ld bc,0011dh		;bbae
	push bc			;bbb1
	ld a,(0c370h)		;bbb2
	and a			;bbb5
	call nz,0419ah		;bbb6
	pop bc			;bbb9
	ld de,09030h		;bbba
	ld a,(0c371h)		;bbbd
	and a			;bbc0
	ret z			;bbc1
	jp 0419ah		;bbc2
L_BBC5:
	ld a,(0c357h)		;bbc5
	and a			;bbc8
	ret nz			;bbc9
	ld de,05890h		;bbca
	ld bc,00118h		;bbcd
	jp 0419ah		;bbd0
L_BBD3:
	ld a,(0c35bh)		;bbd3
	and a			;bbd6
	ret nz			;bbd7
	ld de,05868h		;bbd8
	ld bc,0011ch		;bbdb
	jp 0419ah		;bbde
L_BBE1:
	ld a,(0c355h)		;bbe1
	and a			;bbe4
	ret nz			;bbe5
	ld de,05858h		;bbe6
	ld bc,00116h		;bbe9
	jp 0419ah		;bbec
L_BBEF:
	ld a,(0c352h)		;bbef
	and a			;bbf2
	ret nz			;bbf3
	ld a,001h		;bbf4
	ld (0c372h),a		;bbf6
	ld hl,0bc05h		;bbf9
	ld de,07828h		;bbfc
	ld bc,00202h		;bbff
	jp 041c4h		;bc02

; ----------------------------------------------------------------------
; DATOS sin identificar  0xbc05..0xbd49  (324 bytes)
DATA_BC05:
	defb 018h,019h,01ah,01bh,02bh,0bch,02fh,0bch,02bh,0bch,02bh,0bch,02dh,0bch,02dh,0bch	; bc05  ....+./.+.+.-.-.
	defb 02dh,0bch,02bh,0bch,02bh,0bch,02bh,0bch,02dh,0bch,02fh,0bch,02bh,0bch,02bh,0bch	; bc15  -.+.+.+.-./.+.+.
	defb 02fh,0bch,02bh,0bch,02bh,0bch,001h,046h,001h,044h,001h,048h,027h,000h,00dh,001h	; bc25  /.+.+..F.D.H'...
	defb 021h,009h,002h,001h,001h,005h,002h,001h,005h,005h,002h,015h,004h,011h,003h,001h	; bc35  !...............
	defb 002h,000h,002h,010h,003h,000h,002h,010h,009h,000h,014h,002h,013h,000h,00ch,001h	; bc45  ................
	defb 003h,010h,002h,000h,002h,010h,002h,000h,002h,010h,002h,000h,002h,010h,002h,000h	; bc55  ................
	defb 002h,010h,00bh,000h,004h,002h,044h,004h,001h,000h,00ch,008h,001h,018h,005h,010h	; bc65  ......D.........
	defb 003h,000h,003h,010h,001h,000h,003h,010h,00dh,000h,003h,001h,00dh,000h,007h,002h	; bc75  ................
	defb 043h,008h,001h,009h,032h,001h,004h,005h,00ch,004h,003h,000h,00ch,001h,008h,000h	; bc85  C...2...........
	defb 007h,002h,004h,000h,004h,010h,00ch,000h,001h,002h,001h,000h,003h,010h,009h,000h	; bc95  ................
	defb 00eh,002h,001h,000h,009h,004h,002h,005h,026h,001h,03bh,000h,017h,0ffh,001h,000h	; bca5  ........&.;.....
	defb 003h,0ffh,031h,000h,013h,001h,005h,000h,009h,002h,00eh,000h,023h,001h,001h,000h	; bcb5  ..1.........#...
	defb 004h,010h,001h,012h,002h,002h,004h,012h,002h,002h,001h,000h,003h,002h,003h,000h	; bcc5  ................
	defb 009h,002h,002h,000h,005h,002h,002h,012h,001h,010h,002h,000h,002h,010h,002h,000h	; bcd5  ................
	defb 002h,010h,001h,000h,002h,010h,003h,000h,002h,010h,002h,000h,002h,010h,006h,001h	; bce5  ................
	defb 001h,011h,002h,001h,002h,011h,002h,001h,002h,011h,02ah,001h,00ch,000h,003h,010h	; bcf5  ..........*.....
	defb 002h,000h,002h,012h,002h,002h,002h,012h,001h,002h,002h,012h,002h,002h,002h,012h	; bd05  ................
	defb 002h,002h,002h,012h,002h,002h,003h,012h,001h,002h,003h,012h,001h,002h,003h,012h	; bd15  ................
	defb 003h,002h,004h,012h,010h,002h,007h,000h,003h,002h,003h,000h,007h,002h,003h,012h	; bd25  ................
	defb 002h,002h,002h,012h,002h,002h,002h,012h,003h,002h,001h,012h,002h,002h,001h,012h	; bd35  ................
	defb 004h,002h,000h,0ffh	; bd45

; ======================================================================
; CODIGO 0xbd49..0xbdff  (182 bytes)
; ======================================================================


L_BD49:
	ld a,(0c125h)		;bd49
	cp 05bh		;bd4c
	ret nz			;bd4e
	ld a,(0c600h)		;bd4f
	and a			;bd52
	ret z			;bd53
	ld a,(0c603h)		;bd54
	cp 040h		;bd57
	ret c			;bd59
	ld a,002h		;bd5a
	ld (0c560h),a		;bd5c
	xor a			;bd5f
	ld (0c561h),a		;bd60
	ret			;bd63
L_BD64:
	ld a,(0c168h)		;bd64
	and a			;bd67
	ret nz			;bd68
	ld a,(0c133h)		;bd69
	and a			;bd6c
	ret nz			;bd6d
	call 040e0h		;bd6e
	ex de,hl			;bd71
	ld a,0f8h		;bd72
	add a,l			;bd74
	ld l,a			;bd75
	call 041cah		;bd76
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
	ld a,(0c303h)		;bd8b
	and 007h		;bd8e
	jp z,041a6h		;bd90
	add hl,de			;bd93
	ld a,(hl)			;bd94
	inc a			;bd95
	ret nz			;bd96
	ld a,(hl)			;bd97
	inc a			;bd98
	ret nz			;bd99
	jp 041a6h		;bd9a
L_BD9D:
	ld a,(0c133h)		;bd9d
	and a			;bda0
	ret nz			;bda1
	ld a,(0c300h)		;bda2
	cp 005h		;bda5
	ret nc			;bda7
	ld a,(0c303h)		;bda8
	ld l,a			;bdab
	and 007h		;bdac
	ret nz			;bdae
	ld a,(0c305h)		;bdaf
	ld h,a			;bdb2
	and 007h		;bdb3
	ret nz			;bdb5
	call 041cah		;bdb6
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
	ld a,(0c125h)		;bdcc
	ld c,a			;bdcf
	ld hl,0be16h		;bdd0
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
	ld (0c125h),a		;bde7
	ld (0c321h),de		;bdea
	ld a,c			;bdee
	ld (0c323h),a		;bdef
	ld a,001h		;bdf2
	ld (0c201h),a		;bdf4
	ld (0c14fh),a		;bdf7
	ld a,024h		;bdfa
	jp 040e6h		;bdfc

; ----------------------------------------------------------------------
; DATOS sin identificar  0xbdff..0xbe62  (99 bytes)
DATA_BDFF:
	defb 00eh,001h,03ah,003h,0c3h,0feh,058h,038h,007h,011h,010h,058h,03eh,06ah,018h,0d8h	; bdff  ..:...X8...X>j..
	defb 011h,010h,058h,03eh,071h,018h,0d1h,006h,071h,018h,058h,001h,016h,06ah,018h,058h	; be0f  ..X>q...q.X..j.X
	defb 001h,009h,062h,018h,058h,001h,00dh,070h,018h,058h,001h,00eh,067h,018h,058h,001h	; be1f  ..b.X..p.X..g.X.
	defb 030h,06ch,058h,0a0h,002h,08dh,072h,018h,058h,001h,046h,069h,018h,058h,001h,057h	; be2f  0lX...r.X.Fi.X.W
	defb 05ah,058h,038h,003h,05ah,057h,038h,078h,002h,06eh,06fh,058h,010h,003h,077h,078h	; be3f  ZX8.ZW8x.noX..wx
	defb 018h,058h,001h,07bh,07eh,018h,058h,001h,085h,086h,078h,058h,003h,086h,085h,078h	; be4f  .X.{~.X...xX...x
	defb 058h,002h,000h	; be5f

; ======================================================================
; CODIGO 0xbe62..0xbeb1  (79 bytes)
; ======================================================================


L_BE62:
	ld a,(0c165h)		;be62
	and a			;be65
	ret nz			;be66
	ld a,(0c300h)		;be67
	cp 005h		;be6a
	ret nz			;be6c
	ld a,(0c125h)		;be6d
	ld c,000h		;be70
	cp 076h		;be72
	jr z,L_BE87		;be74
	ld c,005h		;be76
	cp 07ah		;be78
	jr z,L_BE87		;be7a
	ld c,00ah		;be7c
	cp 082h		;be7e
	jr z,L_BE87		;be80
	ld c,00fh		;be82
	cp 084h		;be84
	ret nz			;be86
L_BE87:
	ld b,000h		;be87
	ld hl,0beb1h		;be89
	add hl,bc			;be8c
	ld a,(0c306h)		;be8d
	cp (hl)			;be90
	ret nz			;be91
	inc hl			;be92
	call 040e0h		;be93
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
	ld (0c561h),a		;bea4
	inc a			;bea7
	ld (0c165h),a		;bea8
	ld a,005h		;beab
	ld (0c560h),a		;bead
	ret			;beb0

; ----------------------------------------------------------------------
; DATOS sin identificar  0xbeb1..0xbec5  (20 bytes)
DATA_BEB1:
	defb 001h,090h,091h,040h,061h,002h,028h,039h,030h,031h,002h,079h,099h,020h,021h,001h	; beb1  ...@a.(901.y. !.
	defb 090h,091h,020h,041h	; bec1

; ======================================================================
; CODIGO 0xbec5..0xbfda  (277 bytes)
; ======================================================================


L_BEC5:
	ld hl,0c131h		;bec5
	ld a,(hl)			;bec8
	ld (0e800h),a		;bec9
	ld (hl),000h		;becc
	ld a,(0c303h)		;bece
	ld e,a			;bed1
	ld a,(0c305h)		;bed2
	ld d,a			;bed5
	ld a,(0c125h)		;bed6
	cp 001h		;bed9
	jr z,L_BF17		;bedb
	cp 004h		;bedd
	jr z,L_BF1E		;bedf
	cp 005h		;bee1
	jr z,L_BF25		;bee3
	cp 006h		;bee5
	jr z,L_BF2C		;bee7
	cp 00dh		;bee9
	jr z,L_BF33		;beeb
	cp 00eh		;beed
	jr z,L_BF3A		;beef
	cp 01fh		;bef1
	jr z,L_BF41		;bef3
	cp 020h		;bef5
	jr z,L_BF4C		;bef7
	cp 021h		;bef9
	jr z,L_BF53		;befb
	cp 055h		;befd
	jr z,L_BF5A		;beff
	cp 056h		;bf01
	jr z,L_BF61		;bf03
	cp 08ah		;bf05
	jr z,L_BF7A		;bf07
	cp 061h		;bf09
	jr z,L_BF6C		;bf0b
	cp 058h		;bf0d
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
	ld a,(0c305h)		;bf6c
	sub 020h		;bf6f
	cp 060h		;bf71
	ret c			;bf73
	ld a,039h		;bf74
	ld (0c125h),a		;bf76
	ret			;bf79
L_BF7A:
	ld a,(0c303h)		;bf7a
	cp 060h		;bf7d
	ret c			;bf7f
	ld a,08ch		;bf80
	ld (0c125h),a		;bf82
	ret			;bf85
L_BF86:
	ld hl,0bfdah		;bf86
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
; DATOS sin identificar  0xbfda..0xc000  (38 bytes)
DATA_BFDA:
	defb 001h,001h,02ah,001h,005h,001h,031h,001h,034h,001h,01ah,001h,01fh,001h,029h,001h	; bfda  ..*...1.4.....).
	defb 05ch,001h,05dh,001h,057h,001h,06fh,001h,077h,001h,07ch,001h,0ffh,0ffh,0ffh,0ffh	; bfea  \.].W.o.w.|.....
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bffa
