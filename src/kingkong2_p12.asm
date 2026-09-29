; ==========================================================================
; KING KONG 2: YOMIGAERU DENSETSU - Konami (1986) - MSX - MegaROM RC-745 de 128 KB (Konami4) - banco 12 (se ejecuta en 0xa000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x0a000


; ----------------------------------------------------------------------
; DATOS sin identificar  0xa000..0xb9d0  (6608 bytes)
DATA_A000:
	defb 01ch,010h,011h,01ch,01ch,010h,011h,0cch,011h,000h,011h,0c1h,011h,000h,011h,011h	; a000  ................
	defb 0c1h,000h,01ch,011h,0c1h,010h,011h,0c1h,011h,011h,011h,011h,01ch,0c1h,001h,011h	; a010  ................
	defb 01eh,01eh,001h,0ech,01eh,01eh,001h,0cch,01ch,0c1h,001h,01ch,0c1h,0c1h,000h,011h	; a020  ................
	defb 011h,011h,000h,011h,011h,011h,000h,001h,010h,011h,000h,000h,000h,000h,0cch,0c1h	; a030  ................
	defb 01ch,0cch,0cch,0cch,0c1h,011h,0cch,011h,011h,01ch,011h,0c1h,011h,01ch,011h,011h	; a040  ................
	defb 011h,01ch,01ch,0c1h,01ch,011h,011h,011h,011h,011h,011h,011h,011h,011h,01ch,0cch	; a050  ................
	defb 011h,011h,011h,0c1h,011h,011h,011h,011h,011h,01ch,01ch,0cch,011h,0cch,0c1h,011h	; a060  ................
	defb 011h,011h,0c1h,011h,011h,011h,011h,011h,011h,011h,011h,011h,011h,000h,0cch,0c1h	; a070  ................
	defb 0c1h,011h,0c1h,0c1h,0c1h,010h,0c1h,0c1h,0c1h,011h,011h,011h,011h,011h,011h,011h	; a080  ................
	defb 011h,011h,011h,011h,011h,010h,011h,011h,011h,000h,000h,000h,000h,000h,011h,011h	; a090  ................
	defb 011h,011h,011h,0c3h,033h,033h,013h,01ch,0cch,0cch,013h,0c1h,011h,011h,013h,0c1h	; a0a0  ....33..........
	defb 0c3h,03ch,013h,0c1h,0cch,0cch,013h,0c1h,0c3h,0cch,013h,0c1h,0c3h,0cch,011h,011h	; a0b0  .<..............
	defb 011h,011h,033h,033h,0cch,011h,0cch,0cch,0c1h,0c1h,011h,011h,01ch,0c1h,03ch,0cch	; a0c0  ..33..........<.
	defb 01ch,0c1h,0cch,0cch,013h,0c1h,0cch,0cch,013h,0c1h,0cch,0cch,013h,0c1h,013h,0c1h	; a0d0  ................
	defb 0c3h,03ch,01ch,0c1h,0c3h,03ch,01ch,0c1h,0c3h,033h,013h,0c1h,0cch,0cch,013h,0c1h	; a0e0  .<...<...3......
	defb 011h,011h,01ch,01ch,0cch,0cch,011h,0cch,0cch,0cch,011h,011h,011h,011h,0cch,0cch	; a0f0  ................
	defb 013h,0c1h,0cch,0cch,013h,0c1h,033h,0cch,013h,0c1h,0cch,0cch,01ch,0c1h,011h,011h	; a100  ......3.........
	defb 01ch,0c1h,0cch,0cch,0c1h,0c1h,0cch,0cch,0cch,011h,011h,011h,011h,011h,001h,011h	; a110  ................
	defb 011h,010h,013h,031h,013h,031h,013h,031h,013h,031h,013h,031h,013h,031h,011h,011h	; a120  ...1.1.1.1.1.1..
	defb 011h,011h,012h,021h,012h,021h,012h,021h,012h,021h,012h,021h,012h,021h,033h,033h	; a130  ...!.!.!.!.!.!33
	defb 033h,032h,022h,022h,022h,021h,022h,022h,022h,021h,011h,011h,011h,011h,012h,021h	; a140  32"""!"""!.....!
	defb 012h,021h,012h,021h,012h,021h,012h,021h,012h,021h,001h,010h,001h,010h,001h,011h	; a150  .!.!.!.!.!......
	defb 011h,010h,013h,033h,033h,031h,013h,022h,022h,021h,001h,011h,011h,010h,001h,011h	; a160  ...331.""!......
	defb 011h,010h,013h,033h,033h,031h,013h,022h,022h,021h,001h,011h,011h,010h,000h,000h	; a170  ...331.""!......
	defb 000h,000h,000h,000h,000h,000h,000h,000h,001h,011h,000h,001h,015h,051h,000h,015h	; a180  .............Q..
	defb 054h,014h,001h,054h,041h,044h,015h,044h,044h,011h,015h,044h,051h,015h,000h,000h	; a190  T..TAD.DD..DQ...
	defb 000h,015h,000h,000h,001h,015h,000h,000h,001h,054h,000h,000h,015h,055h,000h,000h	; a1a0  .........T...U..
	defb 015h,045h,000h,000h,014h,051h,000h,001h,014h,051h,000h,001h,015h,055h,045h,015h	; a1b0  .E...Q...Q...UE.
	defb 014h,041h,055h,015h,045h,055h,055h,045h,055h,055h,055h,055h,051h,011h,055h,055h	; a1c0  .AU.EUUEUUUUQ.UU
	defb 011h,044h,055h,051h,044h,045h,055h,054h,055h,055h,055h,055h,055h,055h,000h,000h	; a1d0  .DUQDEUTUUUUUU..
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; a1e0  ................
	defb 000h,001h,000h,000h,001h,014h,001h,011h,014h,044h,015h,055h,055h,044h,000h,001h	; a1f0  .........D.UUD..
	defb 051h,015h,000h,015h,015h,011h,001h,054h,015h,051h,015h,015h,015h,051h,015h,045h	; a200  Q......T.Q...Q.E
	defb 011h,051h,044h,055h,011h,011h,044h,055h,011h,015h,055h,055h,011h,015h,055h,055h	; a210  .QDU..DU..UU..UU
	defb 055h,055h,055h,055h,055h,055h,055h,011h,055h,044h,015h,011h,011h,011h,015h,011h	; a220  UUUUUUU.UD......
	defb 011h,011h,055h,051h,011h,054h,055h,055h,041h,055h,015h,054h,055h,015h,000h,000h	; a230  ..UQ.TUUAU.TU...
	defb 000h,000h,000h,000h,000h,001h,000h,000h,000h,011h,000h,000h,001h,011h,000h,000h	; a240  ................
	defb 011h,011h,000h,001h,014h,044h,000h,001h,045h,055h,000h,011h,054h,055h,014h,044h	; a250  .....D..EU..TU.D
	defb 054h,045h,054h,045h,045h,044h,054h,044h,055h,054h,054h,055h,055h,055h,015h,055h	; a260  TETEEDTDUTTUUU.U
	defb 055h,055h,011h,045h,051h,055h,011h,045h,051h,055h,041h,015h,051h,015h,055h,055h	; a270  UU.EQU.EQUA.Q.UU
	defb 051h,045h,055h,055h,051h,045h,055h,055h,051h,015h,055h,011h,011h,014h,055h,055h	; a280  QEUUQEUUQ.U...UU
	defb 041h,011h,054h,044h,044h,041h,044h,045h,055h,051h,055h,055h,055h,055h,011h,054h	; a290  A.TDDADEUQUUUU.T
	defb 045h,055h,011h,045h,054h,055h,051h,045h,055h,055h,014h,045h,055h,055h,015h,055h	; a2a0  EU.ETUQEUU.EUU.U
	defb 051h,011h,011h,051h,014h,044h,011h,014h,055h,055h,011h,015h,055h,055h,000h,015h	; a2b0  Q..Q.D..UU..UU..
	defb 015h,055h,000h,015h,011h,011h,001h,055h,017h,088h,001h,051h,078h,09eh,001h,051h	; a2c0  .U.....U...Qx..Q
	defb 078h,099h,015h,051h,067h,088h,015h,01ch,066h,077h,015h,016h,0cch,0cch,055h,044h	; a2d0  x..Qg...fw....UD
	defb 041h,015h,055h,044h,045h,011h,014h,054h,045h,015h,081h,044h,044h,051h,081h,054h	; a2e0  A.UDE..TE..DDQ.T
	defb 044h,051h,071h,044h,044h,051h,0cch,014h,044h,051h,0c7h,014h,044h,051h,055h,055h	; a2f0  DQqDDQ..DQ..DQUU
	defb 055h,055h,055h,055h,055h,015h,051h,055h,055h,055h,055h,051h,055h,055h,051h,055h	; a300  UUUUU.QUUUUQUUQU
	defb 055h,045h,011h,055h,044h,054h,011h,055h,055h,044h,051h,055h,055h,055h,011h,011h	; a310  UE.UDT.UUDQUUU..
	defb 011h,055h,051h,011h,011h,011h,051h,011h,011h,011h,051h,011h,011h,011h,055h,011h	; a320  .UQ...Q...Q...U.
	defb 011h,011h,045h,051h,011h,011h,044h,055h,051h,011h,044h,045h,051h,011h,015h,016h	; a330  ..EQ..DUQ.DEQ...
	defb 076h,077h,015h,016h,076h,077h,015h,051h,076h,077h,015h,055h,011h,011h,015h,051h	; a340  vw..vw.Qvw.U...Q
	defb 011h,07ch,015h,051h,016h,07ch,015h,051h,016h,07ch,011h,051h,016h,07ch,077h,014h	; a350  .|.Q.|.Q.|.Q.|w.
	defb 045h,051h,077h,014h,045h,051h,071h,044h,045h,011h,014h,044h,051h,011h,014h,054h	; a360  EQw.EQqDE..DQ..T
	defb 051h,011h,015h,044h,055h,011h,015h,041h,051h,055h,011h,011h,011h,055h,051h,015h	; a370  Q..DU..AQU...UQ.
	defb 054h,054h,051h,045h,055h,044h,011h,014h,015h,054h,011h,044h,045h,054h,011h,055h	; a380  TTQEUD...T.DET.U
	defb 055h,041h,011h,015h,044h,011h,041h,015h,011h,011h,054h,011h,011h,011h,014h,044h	; a390  UA..D.A...T....D
	defb 011h,011h,014h,055h,014h,041h,015h,051h,011h,054h,011h,011h,041h,011h,011h,041h	; a3a0  ...U.A.Q.T..A..A
	defb 054h,011h,014h,051h,054h,015h,045h,051h,011h,041h,015h,051h,015h,051h,011h,011h	; a3b0  T..QT.EQ.A.Q.Q..
	defb 016h,07ch,001h,011h,016h,07ch,001h,011h,016h,07ch,001h,016h,011h,011h,001h,061h	; a3c0  .|...|...|.....a
	defb 017h,07ch,016h,011h,017h,077h,011h,011h,017h,077h,001h,011h,011h,011h,011h,011h	; a3d0  .|...w...w......
	defb 011h,011h,015h,011h,011h,011h,011h,011h,011h,011h,07ch,011h,011h,011h,0c7h,0c1h	; a3e0  ..........|.....
	defb 011h,011h,0cch,07ch,011h,011h,0cch,011h,011h,011h,011h,0c1h,011h,000h,055h,041h	; a3f0  ...|..........UA
	defb 011h,011h,015h,041h,011h,011h,015h,054h,011h,011h,015h,051h,011h,011h,011h,011h	; a400  ...A...T...Q....
	defb 0cch,0cch,011h,011h,0cch,0cch,011h,01ch,077h,07ch,000h,01ch,077h,0cch,011h,011h	; a410  ........w|..w...
	defb 015h,055h,051h,014h,045h,051h,014h,045h,051h,055h,011h,011h,011h,011h,0cch,0cch	; a420  .UQ.EQ.EQU......
	defb 0cch,0cch,0cch,0cch,0cch,0cch,0cch,0cch,0cch,0cch,0cch,0cch,0cch,0cch,000h,011h	; a430  ................
	defb 017h,077h,000h,001h,017h,077h,000h,017h,011h,07ch,001h,077h,071h,011h,001h,017h	; a440  .w...w...|.wq...
	defb 077h,077h,001h,016h,016h,06ch,000h,016h,016h,06ch,000h,001h,011h,011h,07ch,010h	; a450  ww...l...l....|.
	defb 000h,000h,0c1h,000h,000h,001h,017h,010h,000h,001h,077h,071h,000h,011h,077h,0c1h	; a460  ..........wq..w.
	defb 001h,011h,0cch,0c1h,001h,011h,0cch,010h,001h,011h,011h,000h,000h,011h,001h,0cch	; a470  ................
	defb 0cch,0cch,011h,0cch,0c7h,0cch,01ch,0cch,0cch,0cch,01ch,0cch,0cch,0cch,016h,066h	; a480  ...............f
	defb 061h,066h,016h,066h,066h,011h,016h,066h,061h,011h,011h,011h,011h,011h,0cch,0cch	; a490  af.ff..fa.......
	defb 0cch,0cch,077h,0cch,0cch,0cch,0cch,0cch,0cch,0cch,0cch,0cch,0cch,0cch,066h,066h	; a4a0  ..w...........ff
	defb 066h,066h,066h,066h,066h,061h,066h,066h,066h,066h,011h,011h,011h,011h,0c7h,061h	; a4b0  fffffaffff.....a
	defb 011h,011h,0c7h,061h,011h,010h,0c7h,061h,011h,010h,011h,011h,061h,010h,0c7h,071h	; a4c0  ...a...a....a..q
	defb 016h,010h,077h,071h,011h,061h,077h,071h,011h,011h,011h,011h,011h,010h,077h,071h	; a4d0  ..wq.awq......wq
	defb 011h,000h,077h,071h,010h,000h,0c7h,011h,071h,000h,011h,017h,077h,010h,077h,077h	; a4e0  ..wq....q...w.ww
	defb 071h,010h,0c6h,061h,061h,010h,0c6h,061h,061h,000h,011h,011h,010h,000h,000h,000h	; a4f0  q..aa..aa.......
	defb 001h,011h,000h,000h,014h,044h,000h,001h,044h,044h,000h,015h,044h,044h,000h,015h	; a500  .....D..DD..DD..
	defb 044h,044h,000h,015h,045h,055h,000h,015h,045h,055h,000h,015h,044h,055h,011h,010h	; a510  DD..EU..EU..DU..
	defb 000h,000h,044h,041h,000h,000h,044h,044h,010h,000h,044h,044h,051h,000h,044h,046h	; a520  ..DA..DD..DDQ.DF
	defb 051h,000h,056h,066h,051h,000h,056h,066h,051h,000h,055h,065h,061h,000h,001h,051h	; a530  Q.VfQ.VfQ.Uea..Q
	defb 064h,044h,001h,054h,011h,011h,001h,054h,051h,011h,001h,054h,045h,054h,001h,055h	; a540  dD.T...TQ..TET.U
	defb 046h,054h,001h,045h,046h,054h,015h,045h,056h,011h,015h,041h,055h,066h,045h,051h	; a550  FT.EFT.EV..AUfEQ
	defb 065h,010h,011h,011h,065h,010h,011h,016h,055h,010h,056h,044h,055h,010h,055h,055h	; a560  e...e...U.VDU.UU
	defb 056h,010h,056h,066h,056h,010h,016h,066h,055h,051h,066h,066h,015h,051h,015h,051h	; a570  V.VfV..fUQff.Q.Q
	defb 055h,055h,015h,041h,015h,055h,015h,044h,041h,011h,015h,044h,041h,041h,015h,055h	; a580  UU.A.U.DA..DAA.U
	defb 044h,041h,001h,065h,055h,051h,001h,016h,066h,061h,001h,051h,011h,015h,056h,066h	; a590  DA.eUQ..fa.Q..Vf
	defb 016h,051h,056h,061h,065h,051h,016h,015h,056h,051h,041h,015h,066h,051h,044h,055h	; a5a0  .QVaeQ..VQA.fQDU
	defb 066h,051h,055h,066h,066h,010h,016h,066h,061h,010h,051h,011h,011h,010h,001h,055h	; a5b0  fQUff..fa.Q....U
	defb 055h,055h,001h,054h,054h,055h,001h,054h,054h,055h,001h,054h,055h,055h,001h,054h	; a5c0  UU.TTU.TTU.TUU.T
	defb 055h,055h,001h,054h,055h,045h,000h,015h,045h,045h,000h,001h,011h,011h,065h,056h	; a5d0  UU.TUE..EE....eV
	defb 065h,010h,065h,066h,065h,010h,065h,066h,015h,010h,066h,016h,015h,010h,056h,066h	; a5e0  e.efe.ef..f...Vf
	defb 015h,010h,066h,016h,015h,010h,066h,011h,011h,000h,011h,011h,010h,000h,001h,005h	; a5f0  ..f...f.........
	defb 000h,000h,002h,000h,000h,000h,000h,000h,003h,000h,004h,063h,012h,000h,00eh,006h	; a600  ...........c....
	defb 000h,000h,063h,00ah,000h,000h,00bh,000h,010h,000h,000h,000h,000h,000h,00fh,000h	; a610  ..c.............
	defb 000h,063h,000h,022h,000h,063h,020h,000h,023h,000h,019h,063h,063h,000h,000h,000h	; a620  .c.".c .#..cc...
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,029h,063h,000h,000h,000h	; a630  ...........)c...
	defb 000h,026h,000h,000h,027h,000h,000h,000h,028h,000h,000h,000h,000h,000h,02ah,02bh	; a640  .&..'...(.....*+
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,02ch,000h	; a650  ..............,.
	defb 02dh,000h,000h,000h,02eh,000h,02fh,000h,000h,000h,000h,000h,000h,031h,032h,033h	; a660  -...../......123
	defb 0e0h,0a6h,0a2h,0a7h,07ah,0a8h,0b0h,0a8h,0d3h,0a8h,0f1h,0a8h,08fh,0a9h,0c5h,0a9h	; a670  ....z...........
	defb 01ah,0aah,04ah,0aah,0bch,0aah,0e6h,0aah,0e6h,0aah,008h,0abh,02fh,0abh,049h,0abh	; a680  ..J........./.I.
	defb 067h,0abh,080h,0abh,0b6h,0abh,0efh,0abh,0a2h,0ach,0d3h,0ach,036h,0adh,07dh,0adh	; a690  g...........6.}.
	defb 0b0h,0adh,0c6h,0adh,0fch,0adh,036h,0aeh,08ah,0aeh,0cah,0aeh,0eeh,0aeh,03eh,0afh	; a6a0  ......6.......>.
	defb 06ch,0afh,06eh,0afh,08fh,0afh,0afh,0afh,0f8h,0afh,04ah,0b0h,0bah,0b0h,0f2h,0b0h	; a6b0  l.n.......J.....
	defb 01fh,0b1h,048h,0b1h,076h,0b1h,0d0h,0b1h,0f9h,0b1h,066h,0b2h,099h,0b2h,0e5h,0b2h	; a6c0  ..H.v.....f.....
	defb 00ah,0b3h,04bh,0b3h,067h,0b3h,099h,0b3h,0c0h,0b3h,0d5h,0b3h,0f8h,0b3h,06eh,0b4h	; a6d0  ..K.g.........n.
	defb 0ech,0a6h,002h,0a7h,020h,0a7h,04ch,0a7h,073h,0a7h,000h,000h,000h,047h,04fh,04ch	; a6e0  .... .L.s....GOL
	defb 04eh,045h,042h,04fh,06eh,05dh,070h,000h,06fh,088h,073h,080h,05dh,066h,03ch,089h	; a6f0  NEBOn]p.o.s.]f<.
	defb 03eh,0ffh,000h,076h,07bh,000h,076h,07bh,03eh,04bh,04fh,04eh,047h,065h,079h,087h	; a700  >..v{.v{>KONGey.
	defb 000h,065h,060h,03ch,066h,070h,000h,061h,06ah,073h,066h,03ch,089h,06fh,03eh,0ffh	; a710  .e`<fp.ajsf<.o>.
	defb 000h,06dh,03ch,088h,068h,06ch,070h,080h,083h,06eh,03fh,04bh,04fh,04eh,047h,065h	; a720  .m<.hlp..n?KONGe
	defb 079h,074h,000h,064h,073h,066h,079h,073h,000h,06eh,03ch,064h,060h,070h,000h,064h	; a730  yt.dsfys.n<d`p.d
	defb 07dh,081h,084h,06dh,000h,05fh,083h,081h,066h,05ch,03eh,0ffh,000h,04bh,04fh,04eh	; a740  }..m._..f\>..KON
	defb 047h,065h,079h,070h,000h,05fh,05bh,05ch,067h,083h,070h,074h,000h,06dh,03ch,088h	; a750  Geyp._[\g.pt.m<.
	defb 068h,06ch,087h,000h,06eh,061h,05bh,060h,065h,072h,074h,03ch,000h,06fh,083h,079h	; a760  hl..na[`ert<.o.y
	defb 05ch,03eh,0ffh,000h,069h,05dh,063h,03ch,088h,073h,066h,03ch,05ch,065h,088h,070h	; a770  \>..i]c<.sf<\e.p
	defb 061h,063h,074h,03ch,03fh,06fh,070h,060h,086h,060h,083h,060h,07dh,066h,084h,088h	; a780  act<?op`.`.`}f..
	defb 069h,03ch,03eh,0fdh,061h,087h,06ch,063h,06dh,000h,05fh,05ch,061h,06fh,065h,084h	; a790  i<>.a.lcm._\aoe.
	defb 03eh,0ffh,0b2h,0a7h,0d9h,0a7h,008h,0a8h,011h,0a8h,01fh,0a8h,04bh,0a8h,05fh,0a8h	; a7a0  >...........K._.
	defb 000h,000h,000h,05fh,084h,06ah,06bh,074h,000h,07ah,06ch,082h,08bh,05dh,066h,089h	; a7b0  ..._.jkt.zl..]f.
	defb 06ah,03ch,03eh,000h,000h,000h,000h,076h,03ch,061h,087h,000h,05dh,08ch,06dh,07eh	; a7c0  j<>....v<a..].m~
	defb 08ch,06dh,07dh,05ch,05ch,069h,03ch,03eh,0ffh,001h,042h,049h,047h,053h,050h,049h	; a7d0  .m}\\i<>..BIGSPI
	defb 044h,045h,052h,087h,06ah,05fh,067h,000h,06fh,05ch,076h,0fdh,032h,030h,030h,000h	; a7e0  DER.j_g.o\v.200.
	defb 047h,04fh,04ch,044h,000h,06ah,03ch,03eh,0fdh,03ah,000h,031h,000h,060h,05dh,000h	; a7f0  GOLD.j<>.:.1.`].
	defb 000h,032h,000h,060h,086h,06fh,05ch,0ffh,000h,05bh,082h,060h,03ch,06eh,080h,03eh	; a800  .2.`.o\..[.`<n.>
	defb 0ffh,000h,060h,072h,060h,03ch,000h,06ah,082h,072h,05eh,069h,03ch,03eh,0ffh,002h	; a810  ..`r`<.j.r^i<>..
	defb 047h,052h,049h,05ah,05ah,04ch,059h,087h,000h,06ah,05fh,067h,000h,05fh,073h,0fdh	; a820  GRIZZLY..j_g._s.
	defb 033h,030h,030h,000h,047h,04fh,04ch,044h,06ah,03ch,03eh,0fdh,03ah,000h,031h,000h	; a830  300.GOLDj<>.:.1.
	defb 060h,05dh,000h,000h,032h,000h,060h,086h,06fh,05ch,0ffh,000h,067h,079h,072h,05eh	; a840  `]..2.`.o\..gyr^
	defb 000h,05fh,073h,074h,000h,05dh,082h,061h,084h,06bh,079h,08ch,06ah,03eh,0ffh,000h	; a850  ._st.].a.ky.j>..
	defb 05fh,073h,074h,000h,06bh,060h,081h,060h,03ch,000h,06fh,05ch,06eh,000h,06ch,060h	; a860  _st.k`.`<.o\n.l`
	defb 05ch,064h,06fh,068h,06fh,05ch,069h,03ch,03eh,0ffh,07eh,0a8h,000h,000h,000h,061h	; a870  \doho\i<>.~....a
	defb 06eh,05dh,066h,073h,000h,064h,07dh,081h,084h,06dh,05ch,083h,000h,06bh,060h,066h	; a880  n]fs.d}..m\..k`f
	defb 06ch,073h,060h,061h,03ch,074h,000h,042h,049h,047h,053h,050h,049h,044h,045h,052h	; a890  ls`a<t.BIGSPIDER
	defb 060h,03ch,000h,073h,07ah,064h,088h,06ah,03ch,069h,05dh,066h,03ch,089h,03eh,0ffh	; a8a0  `<.szd.j<i]f<.>.
	defb 0b4h,0a8h,000h,000h,000h,04bh,04fh,04eh,047h,065h,079h,074h,000h,075h,03ch,08ch	; a8b0  .....KONGeyt.u<.
	defb 062h,03ch,06eh,03ch,082h,05bh,088h,060h,03ch,06ah,03ch,05ch,067h,061h,066h,03ch	; a8c0  b<n<.[.`<j<\gaf<
	defb 089h,03eh,0ffh,0d7h,0a8h,000h,000h,000h,047h,052h,041h,053h,053h,04fh,047h,052h	; a8d0  .>......GRASSOGR
	defb 045h,074h,000h,05ch,066h,073h,06ah,079h,070h,000h,080h,086h,05ch,069h,03ch,03eh	; a8e0  Et.\fsjyp...\i<>
	defb 0ffh,0fdh,0a8h,022h,0a9h,048h,0a9h,06ah,0a9h,081h,0a9h,000h,000h,000h,06ah,088h	; a8f0  ...".H.j......j.
	defb 063h,088h,06ah,05ch,060h,03ch,000h,05fh,061h,073h,000h,066h,079h,070h,000h,05ch	; a900  c.j\`<._as.fyp.\
	defb 08ch,06ah,061h,082h,000h,07dh,06eh,03ch,08ch,06dh,064h,088h,073h,066h,03ch,089h	; a910  .ja..}n<.md.sf<.
	defb 03eh,0ffh,000h,052h,045h,044h,000h,046h,08dh,04dh,041h,04eh,070h,000h,062h,086h	; a920  >..RED.F.MANp.b.
	defb 084h,06ah,088h,060h,073h,05dh,03eh,05fh,079h,05eh,065h,088h,07dh,000h,061h,05ch	; a930  .j.`s]>_y^e.}.a\
	defb 06ch,063h,06fh,065h,084h,07eh,03eh,0ffh,000h,05bh,088h,075h,06eh,081h,074h,000h	; a940  lcoe.~>..[.un.t.
	defb 06fh,088h,06ah,03ch,060h,000h,086h,060h,081h,088h,000h,061h,060h,05ch,087h,000h	; a950  o.j<`..`...a`\..
	defb 07dh,08ch,06dh,05ch,08ch,06eh,08ch,06ah,03eh,0ffh,003h,069h,05ch,06ch,074h,000h	; a960  }.m\.n.j>..i\lt.
	defb 066h,089h,077h,03ch,083h,061h,060h,05ch,000h,066h,03ch,089h,08ch,06ah,080h,03eh	; a970  f.w<.a`\.f<..j.>
	defb 0ffh,000h,069h,084h,066h,03ch,089h,000h,069h,084h,066h,03ch,089h,03eh,0ffh,093h	; a980  ..i.f<..i.f<.>..
	defb 0a9h,000h,000h,004h,064h,084h,087h,000h,063h,07bh,081h,088h,070h,05ch,083h,000h	; a990  ....d...c{..p\..
	defb 05fh,066h,03ch,05ch,065h,088h,070h,000h,06eh,06eh,03ch,063h,06dh,062h,06ah,03ch	; a9a0  _f<\e.p.nn<cmbj<
	defb 065h,05ch,03eh,0fdh,03ah,000h,031h,000h,05dh,063h,06eh,083h,000h,000h,032h,000h	; a9b0  e\>.:.1.]cn...2.
	defb 064h,06eh,086h,083h,0ffh,0cdh,0a9h,0dah,0a9h,00ch,0aah,000h,000h,000h,06fh,070h	; a9c0  dn............op
	defb 060h,000h,06ah,077h,03ch,083h,060h,05ch,03bh,0ffh,005h,03ah,031h,000h,078h,03ch	; a9d0  `.jw<.`\;..:1.x<
	defb 05ch,083h,06eh,03ch,076h,06fh,07bh,066h,000h,035h,030h,047h,04fh,04ch,044h,000h	; a9e0  \.n<vo{f.50GOLD.
	defb 032h,000h,05ch,073h,066h,066h,073h,070h,062h,000h,000h,000h,031h,030h,030h,047h	; a9f0  2.\sffspb...100G
	defb 04fh,04ch,044h,000h,033h,000h,06ah,077h,03ch,06fh,05ch,0ffh,000h,05fh,060h,072h	; aa00  OLD.3.jw<o\.._`r
	defb 060h,03ch,000h,06ah,082h,079h,068h,088h,03eh,0ffh,020h,0aah,00ch,0aah,000h,000h	; aa10  `<.j.yh.>. .....
	defb 006h,06eh,079h,08ch,06dh,000h,05ch,062h,060h,05ch,03bh,0fdh,031h,035h,030h,000h	; aa20  .ny.m.\b`\;.150.
	defb 047h,04fh,04ch,044h,06ah,03ch,080h,03eh,0fdh,03ah,000h,031h,000h,06eh,079h,083h	; aa30  GOLDj<.>.:.1.ny.
	defb 000h,000h,032h,000h,06eh,079h,081h,06fh,05ch,0ffh,050h,0aah,089h,0aah,000h,000h	; aa40  ..2.ny.o\.P.....
	defb 000h,04bh,04fh,04eh,047h,065h,079h,073h,06dh,03ch,088h,068h,06ch,070h,000h,080h	; aa50  .KONGeysm<.hlp..
	defb 083h,06eh,03fh,04bh,04fh,04eh,047h,065h,079h,073h,000h,06ch,07ch,074h,000h,052h	; aa60  .n?KONGeys.l|t.R
	defb 045h,044h,000h,046h,08dh,04dh,041h,04eh,000h,060h,03ch,000h,073h,07ah,064h,088h	; aa70  ED.F.MAN.`<.szd.
	defb 06ah,03ch,069h,05dh,066h,03ch,089h,03eh,0ffh,000h,04bh,04fh,04eh,047h,065h,079h	; aa80  j<i]f<.>..KONGey
	defb 073h,000h,06ch,07ch,070h,000h,06ch,05ch,06dh,074h,000h,000h,000h,000h,069h,05dh	; aa90  s.l|p.l\mt....i]
	defb 063h,03ch,088h,073h,000h,06bh,060h,070h,000h,05ch,063h,074h,03ch,000h,000h,000h	; aaa0  c<.s.k`p.\ct<...
	defb 000h,000h,086h,060h,083h,066h,03ch,089h,085h,05dh,03eh,0ffh,0c0h,0aah,000h,000h	; aab0  ...`.f<..]>.....
	defb 007h,086h,066h,074h,000h,061h,06eh,05dh,066h,066h,03ch,089h,03eh,05fh,079h,05eh	; aac0  ..ft.an]ff<.>_y^
	defb 070h,000h,06dh,07bh,065h,073h,000h,066h,03ch,08ah,07dh,088h,087h,000h,065h,067h	; aad0  p.m{es.f<.}...eg
	defb 03ch,063h,080h,05dh,03eh,0ffh,0eah,0aah,000h,000h,000h,071h,079h,06bh,070h,000h	; aae0  <c.]>......qykp.
	defb 074h,05ch,083h,070h,074h,000h,07ah,067h,03ch,063h,03ch,06ah,060h,03ch,000h,075h	; aaf0  t\.pt.zg<c<j`<.u
	defb 06ch,080h,05dh,066h,03ch,089h,03eh,0ffh,00ch,0abh,000h,000h,000h,07ah,067h,03ch	; ab00  l.]f<.>......zg<
	defb 063h,03ch,06ah,06ch,03ch,062h,082h,073h,000h,07ch,05ch,066h,03ch,088h,074h,000h	; ab10  c<jl<b.s.|\f<.t.
	defb 07dh,082h,073h,000h,06fh,060h,070h,067h,088h,06dh,03ch,05ch,083h,03eh,0ffh,033h	; ab20  }.s.o`pg.m<\.>.3
	defb 0abh,000h,000h,000h,06dh,07bh,065h,073h,000h,066h,03ch,08ah,07dh,088h,06dh,03ch	; ab30  ....m{es.f<.}.m<
	defb 000h,05ch,086h,087h,000h,063h,068h,03eh,0ffh,04dh,0abh,000h,000h,000h,046h,049h	; ab40  .\...ch>.M....FI
	defb 052h,045h,054h,04fh,054h,045h,04dh,074h,000h,076h,03ch,040h,07ch,081h,088h,06dh	; ab50  RETOTEMt.v<@|..m
	defb 03ch,000h,06ah,05fh,068h,03eh,0ffh,06bh,0abh,000h,000h,000h,043h,04ch,055h,042h	; ab60  <.j_h>.k....CLUB
	defb 04dh,041h,04eh,074h,000h,052h,04fh,044h,06dh,03ch,000h,06ah,05fh,068h,03eh,0ffh	; ab70  MANt.RODm<.j_h>.
	defb 088h,0abh,08ah,0abh,097h,0abh,000h,000h,008h,0ffh,000h,061h,05ch,000h,061h,05ch	; ab80  ...........a\.a\
	defb 000h,062h,05dh,000h,061h,05ch,0ffh,000h,05fh,05ch,081h,073h,000h,078h,03ch,067h	; ab90  .b].a\.._\.s.x<g
	defb 074h,000h,075h,03ch,08ch,062h,03ch,06eh,03ch,082h,05bh,088h,087h,000h,07dh,08ch	; aba0  t.u<.b<n<.[...}.
	defb 06dh,05ch,083h,080h,03eh,0ffh,0beh,0abh,08ah,0abh,0c0h,0abh,000h,000h,01ch,0ffh	; abb0  m\..>...........
	defb 009h,075h,03ch,08bh,05dh,061h,087h,000h,06fh,05fh,066h,06dh,062h,084h,06dh,000h	; abc0  .u<.]a..o_fmb.m.
	defb 05bh,082h,060h,03ch,06eh,05dh,03eh,05fh,084h,05ch,070h,000h,075h,03ch,08ch,062h	; abd0  [.`<n]>_.\p.u<.b
	defb 03ch,06eh,03ch,082h,05bh,088h,087h,000h,05bh,063h,03ch,080h,05dh,03eh,0ffh,003h	; abe0  <n<.[...[c<.]>..
	defb 0ach,08ah,0abh,005h,0ach,01fh,0ach,045h,0ach,061h,0ach,06dh,0ach,07ch,0ach,085h	; abf0  .......E.a.m.|..
	defb 0ach,000h,000h,00ah,0ffh,000h,078h,03ch,067h,060h,03ch,000h,075h,03ch,08bh,05dh	; ac00  ......x<g`<.u<.]
	defb 061h,070h,000h,060h,060h,08ch,06dh,05ch,083h,073h,066h,03ch,089h,03eh,0ffh,000h	; ac10  ap.``.m\.sf<.>..
	defb 05fh,079h,05eh,065h,088h,073h,000h,07eh,062h,069h,05dh,087h,000h,035h,06ch,062h	; ac20  _y^e.s.~bi]..5lb
	defb 084h,06ah,081h,000h,078h,03ch,067h,073h,000h,075h,03ch,08bh,05dh,061h,060h,03ch	; ac30  .j..x<gs.u<.]a`<
	defb 06fh,05fh,083h,03eh,0ffh,01dh,03ah,000h,031h,000h,07eh,062h,069h,05dh,087h,000h	; ac40  o_.>..:.1.~bi]..
	defb 035h,06ch,000h,086h,06ah,067h,0fdh,000h,000h,032h,000h,086h,06ah,065h,06fh,05ch	; ac50  5l..jg...2..jeo\
	defb 0ffh,000h,065h,03ch,088h,072h,088h,066h,03ch,089h,06fh,03eh,0ffh,000h,07eh,062h	; ac60  ..e<.r.f<.o>..~b
	defb 069h,05dh,060h,03ch,000h,06ah,082h,079h,068h,088h,03eh,0ffh,000h,05bh,082h,060h	; ac70  i]`<.j.yh.>..[.`
	defb 03ch,06eh,05dh,03eh,0ffh,000h,05fh,079h,05eh,065h,088h,07dh,000h,075h,03ch,08bh	; ac80  <n]>.._y^e.}.u<.
	defb 05dh,061h,070h,000h,060h,060h,08ch,06dh,05ch,083h,080h,05dh,066h,03ch,089h,06fh	; ac90  ]ap.``.m\..]f<.o
	defb 03eh,0ffh,0a8h,0ach,00ch,0aah,000h,000h,00bh,078h,088h,087h,000h,060h,08ch,06dh	; aca0  >........x...`.m
	defb 05ch,062h,060h,05ch,03bh,0fdh,032h,030h,030h,000h,047h,04fh,04ch,044h,06ah,03ch	; acb0  \b`\;.200.GOLDj<
	defb 03eh,0fdh,03ah,000h,031h,000h,060h,05dh,000h,000h,000h,000h,032h,000h,060h,086h	; acc0  >.:.1.`]....2.`.
	defb 06fh,05ch,0ffh,0ddh,0ach,0feh,0ach,00ch,0aah,015h,0adh,000h,000h,000h,07ah,067h	; acd0  o\............zg
	defb 03ch,063h,03ch,06ah,087h,000h,06ch,062h,08ch,06dh,07eh,085h,05dh,060h,03bh,0fdh	; ace0  <c<j..lb.m~.]`;.
	defb 031h,035h,030h,000h,047h,04fh,04ch,044h,06dh,03ch,05ch,05ch,080h,0ffh,00ch,03ah	; acf0  150.GOLDm<\\...:
	defb 000h,031h,000h,06ch,062h,08ch,06dh,07dh,081h,05dh,0fdh,000h,000h,032h,000h,06ch	; ad00  .1.lb.m}.]...2.l
	defb 062h,081h,06fh,05ch,0ffh,000h,07ah,067h,03ch,063h,03ch,06ah,087h,000h,06ch,062h	; ad10  b.o\..zg<c<j..lb
	defb 083h,070h,074h,000h,065h,03ch,05ch,082h,08bh,05dh,000h,060h,03ch,000h,075h,06ch	; ad20  .pt.e<\..].`<.ul
	defb 080h,05dh,06ah,03ch,03eh,0ffh,042h,0adh,08ah,0abh,044h,0adh,05ah,0adh,070h,0adh	; ad30  .]j<>.B...D.Z.p.
	defb 000h,000h,00dh,0ffh,000h,070h,062h,087h,000h,062h,084h,06ah,081h,000h,06eh,05fh	; ad40  .....pb..b.j..n_
	defb 066h,06dh,000h,05bh,063h,03ch,083h,080h,03eh,0ffh,01eh,03ah,031h,000h,070h,062h	; ad50  fm.[c<..>..:1.pb
	defb 087h,000h,05bh,063h,03ch,083h,03eh,000h,032h,000h,05bh,063h,03ch,06fh,05ch,0ffh	; ad60  ..[c<.>.2.[c<o\.
	defb 000h,070h,062h,060h,03ch,000h,05bh,082h,079h,068h,088h,03eh,0ffh,081h,0adh,000h	; ad70  .pb`<.[.yh.>....
	defb 000h,000h,078h,03ch,067h,074h,000h,075h,03ch,08bh,05dh,061h,06ah,03ch,03eh,075h	; ad80  ..x<gt.u<.]aj<>u
	defb 03ch,08bh,05dh,061h,087h,000h,06fh,05fh,067h,070h,074h,000h,07eh,062h,069h,05dh	; ad90  <.]a..o_gpt.~bi]
	defb 060h,03ch,000h,06ah,062h,065h,088h,000h,075h,06ch,080h,05dh,06ah,03ch,03eh,0ffh	; ada0  `<.jbe..ul.]j<>.
	defb 0b4h,0adh,000h,000h,00eh,05bh,06fh,06ah,074h,000h,07bh,066h,070h,000h,060h,079h	; adb0  .....[ojt.{fp.`y
	defb 084h,079h,066h,06ah,03eh,0ffh,0d2h,0adh,08ah,0abh,0d4h,0adh,0e6h,0adh,070h,0adh	; adc0  .yfj>.........p.
	defb 000h,000h,00fh,0ffh,000h,070h,062h,087h,000h,062h,084h,06ah,081h,000h,06eh,07ch	; add0  .....pb..b.j..n|
	defb 06dh,07eh,083h,080h,03eh,0ffh,01fh,03ah,031h,000h,070h,062h,087h,000h,05bh,063h	; ade0  m~..>..:1.pb..[c
	defb 03ch,083h,03eh,000h,032h,000h,05bh,063h,03ch,06fh,05ch,0ffh,008h,0aeh,08ah,0abh	; adf0  <.>.2.[c<o\.....
	defb 00ah,0aeh,020h,0aeh,070h,0adh,000h,000h,010h,0ffh,000h,070h,062h,087h,000h,062h	; ae00  .. .p......pb..b
	defb 084h,06ah,081h,000h,060h,061h,03ch,087h,000h,05bh,063h,03ch,083h,080h,03eh,0ffh	; ae10  .j..`a<..[c<..>.
	defb 020h,03ah,031h,000h,070h,062h,087h,000h,05bh,063h,03ch,083h,03eh,000h,032h,000h	; ae20   :1.pb..[c<.>.2.
	defb 05bh,063h,03ch,06fh,05ch,0ffh,03eh,0aeh,050h,0aeh,00ch,0aah,000h,000h,000h,05ch	; ae30  [c<o\.>.P......\
	defb 081h,08ch,066h,089h,05ch,03eh,064h,03ch,06bh,08ah,05dh,07dh,088h,074h,03bh,0ffh	; ae40  ..f.\>d<k.]}.t;.
	defb 011h,03ah,031h,000h,07eh,079h,075h,083h,073h,000h,065h,066h,07ah,000h,035h,030h	; ae50  .:1.~yu.s.efz.50
	defb 000h,047h,04fh,04ch,044h,000h,032h,000h,078h,03ch,05ch,083h,06eh,03ch,07eh,079h	; ae60  .GOLD.2.x<\.n<~y
	defb 07ah,07ah,067h,03ch,0fdh,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; ae70  zzg<............
	defb 000h,031h,030h,030h,000h,047h,04fh,04ch,044h,0ffh,090h,0aeh,0ach,0aeh,000h,000h	; ae80  .100.GOLD.......
	defb 000h,086h,066h,081h,073h,000h,066h,08ah,05dh,06bh,08bh,05dh,087h,000h,06ah,067h	; ae90  ..f.s.f.]k.]..jg
	defb 063h,06ah,03ch,066h,06dh,062h,06ah,03ch,065h,084h,03eh,0ffh,000h,066h,08ah,06bh	; aea0  cj<fmbj<e.>..f.k
	defb 08bh,05dh,074h,000h,06eh,03ch,085h,073h,000h,060h,07ch,088h,070h,000h,06ch,084h	; aeb0  .]t.n<.s.`|.p.l.
	defb 065h,081h,084h,06ah,088h,066h,03ch,089h,03eh,0ffh,0ceh,0aeh,000h,000h,000h,054h	; aec0  e..j.f<.>......T
	defb 048h,045h,000h,04eh,041h,053h,054h,059h,074h,000h,079h,060h,076h,03dh,081h,073h	; aed0  HE.NASTYt.y`v=.s
	defb 000h,066h,03ch,08ah,07dh,088h,06dh,03ch,000h,06ah,05fh,068h,03eh,0ffh,0f6h,0aeh	; aee0  .f<.}.m<.j_h>...
	defb 011h,0afh,02dh,0afh,000h,000h,000h,07ah,067h,03ch,063h,03ch,06ah,087h,000h,062h	; aef0  ..-....zg<c<j..b
	defb 084h,084h,074h,03ch,000h,06eh,07ch,06dh,07eh,08ch,06dh,07dh,05ch,05ch,080h,03eh	; af00  ..t<.n|m~.m}\\.>
	defb 0ffh,012h,03ah,000h,031h,000h,07ah,067h,03ch,063h,03ch,06ah,087h,000h,05bh,063h	; af10  ..:.1.zg<c<j..[c
	defb 03ch,083h,0fdh,000h,000h,032h,000h,05bh,063h,03ch,06fh,05ch,0ffh,000h,07ah,067h	; af20  <....2.[c<o\..zg
	defb 03ch,063h,03ch,06ah,060h,03ch,000h,05bh,082h,079h,068h,088h,03eh,0ffh,042h,0afh	; af30  <c<j`<.[.yh.>.B.
	defb 000h,000h,013h,05fh,05fh,03fh,04bh,04fh,04eh,047h,065h,079h,073h,000h,05fh,06bh	; af40  ...__?KONGeys._k
	defb 060h,081h,073h,075h,06eh,06ch,000h,04bh,04fh,04eh,047h,065h,079h,073h,000h,061h	; af50  `.sunl.KONGeys.a
	defb 074h,03ch,087h,000h,065h,067h,03ch,063h,080h,05dh,03eh,0ffh,000h,000h,072h,0afh	; af60  t<..eg<c.]>...r.
	defb 000h,000h,000h,04dh,055h,044h,041h,052h,04dh,04fh,052h,074h,000h,081h,07ch,081h	; af70  ...MUDARMORt..|.
	defb 073h,000h,066h,03ch,08ah,05eh,061h,06dh,03ch,000h,06ah,05fh,068h,03eh,0ffh,093h	; af80  s.f<.^am<.j_h>..
	defb 0afh,000h,000h,000h,054h,057h,049h,04eh,04dh,049h,052h,045h,053h,074h,000h,05bh	; af90  ....TWINMIRESt.[
	defb 060h,05ch,05ch,086h,073h,000h,074h,03ch,088h,070h,088h,06fh,082h,03eh,0ffh,0b5h	; afa0  `\\.s.t<.p.o.>..
	defb 0afh,0d0h,0afh,000h,000h,000h,064h,073h,065h,061h,070h,000h,063h,07bh,081h,088h	; afb0  ......dseap.c{..
	defb 06eh,000h,080h,074h,03ch,084h,083h,000h,066h,079h,060h,03ch,05bh,083h,03eh,0ffh	; afc0  n..t<...fy`<[.>.
	defb 000h,063h,07bh,081h,088h,074h,000h,04bh,04fh,04eh,047h,065h,079h,073h,000h,06dh	; afd0  .c{..t.KONGeys.m
	defb 03ch,088h,068h,06ch,000h,060h,03ch,000h,05ch,061h,06ch,03ch,05ch,06dh,05ch,083h	; afe0  <.hl.`<.\al<\m\.
	defb 000h,066h,079h,066h,03ch,089h,03eh,0ffh,000h,0b0h,018h,0b0h,00ch,0aah,000h,000h	; aff0  .fyf<.>.........
	defb 000h,05dh,07ah,073h,05ch,05eh,070h,000h,080h,05dh,064h,069h,03eh,0fdh,064h,03ch	; b000  .]zs\^p..]di>.d<
	defb 06bh,08ah,05dh,07dh,088h,074h,03bh,0ffh,015h,03ah,031h,000h,06fh,07ch,062h,066h	; b010  k.]}.t;..:1.o|bf
	defb 03ch,073h,000h,066h,05fh,060h,081h,031h,030h,047h,04fh,04ch,044h,000h,032h,000h	; b020  <s.f_`.10GOLD.2.
	defb 076h,06fh,07bh,066h,073h,000h,07ah,069h,06ch,03ch,063h,035h,030h,047h,04fh,04ch	; b030  vo{fs.zil<c50GOL
	defb 044h,000h,033h,000h,06ah,077h,03ch,06fh,05ch,0ffh,054h,0b0h,056h,0b0h,078h,0b0h	; b040  D.3.jw<o\.T.V.x.
	defb 09eh,0b0h,000h,000h,016h,0ffh,000h,086h,066h,074h,000h,07bh,067h,064h,060h,081h	; b050  ........ft.{gd`.
	defb 073h,000h,06dh,060h,03ch,07ah,087h,000h,067h,03ch,08ch,06eh,000h,079h,08ch,06dh	; b060  s.m`<z..g<.n.y.m
	defb 05fh,083h,088h,066h,03ch,089h,03eh,0ffh,000h,086h,065h,03ch,086h,065h,03ch,000h	; b070  _..f<.>...e<.e<.
	defb 06dh,060h,03ch,07ah,087h,000h,06eh,06eh,03ch,063h,06dh,062h,084h,06dh,000h,05bh	; b080  m`<z..nn<cmb.m.[
	defb 082h,060h,03ch,06eh,05dh,064h,03ch,065h,03ch,05ch,079h,067h,03eh,0ffh,000h,05fh	; b090  .`<n]d<e<\yg>.._
	defb 084h,05ch,070h,000h,04bh,04fh,04eh,047h,065h,079h,073h,000h,075h,06eh,07ah,087h	; b0a0  .\p.KONGeys.unz.
	defb 000h,065h,066h,05bh,063h,03ch,079h,067h,03eh,0ffh,0beh,0b0h,000h,000h,000h,06ah	; b0b0  .ef[c<yg>......j
	defb 088h,063h,088h,06ah,05ch,073h,000h,073h,064h,066h,06dh,05ch,08ch,06ah,000h,06dh	; b0c0  .c.j\s.sdfm\.j.m
	defb 088h,06eh,073h,06fh,060h,070h,000h,06fh,088h,06ah,03ch,060h,000h,086h,060h,081h	; b0d0  .nso`p.o.j<`..`.
	defb 088h,000h,061h,060h,05ch,060h,03ch,000h,05bh,08ch,06ah,069h,05dh,066h,03ch,089h	; b0e0  ..a`\`<.[.ji]f<.
	defb 03eh,0ffh,0fah,0b0h,0fch,0b0h,00ah,0b1h,000h,000h,017h,0ffh,000h,07bh,068h,088h	; b0f0  >............{h.
	defb 061h,060h,03ch,000h,05bh,082h,079h,067h,03eh,0ffh,000h,07bh,068h,088h,061h,074h	; b100  a`<.[.yg>..{h.at
	defb 000h,064h,086h,084h,06dh,05ch,083h,000h,080h,05dh,06dh,03ch,067h,03eh,0ffh,023h	; b110  .d..m\...]m<g>.#
	defb 0b1h,000h,000h,000h,04bh,04fh,04eh,047h,073h,000h,065h,063h,075h,03ch,087h,000h	; b120  ....KONGs.ecu<..
	defb 06eh,083h,070h,074h,000h,081h,062h,06fh,000h,073h,000h,06ah,079h,060h,03ch,000h	; b130  n.pt..bo.s.jy`<.
	defb 075h,06ch,080h,05dh,06ah,03ch,03eh,0ffh,04ch,0b1h,000h,000h,000h,061h,05ch,085h	; b140  ul.]j<>.L....a\.
	defb 05ch,000h,05ch,086h,074h,000h,04bh,04fh,04eh,047h,065h,079h,073h,000h,06bh,060h	; b150  \.\.t.KONGeys.k`
	defb 081h,06dh,03ch,06fh,063h,084h,074h,03ch,000h,05fh,067h,064h,06eh,060h,03ch,06dh	; b160  .m<oc.t<._gdn`<m
	defb 03ch,061h,06fh,05ch,03eh,0ffh,080h,0b1h,0ach,0b1h,0cah,0b1h,011h,0a8h,000h,000h	; b170  <ao\>...........
	defb 000h,064h,086h,084h,06ah,07dh,073h,06fh,081h,000h,06fh,088h,06dh,03ch,07dh,000h	; b180  .d..j}so..o.m<}.
	defb 066h,08ah,05dh,082h,067h,083h,068h,03ch,03eh,0fdh,075h,06eh,06ch,000h,033h,035h	; b190  f.].g.h<>.unl.35
	defb 030h,000h,047h,04fh,04ch,044h,000h,06dh,03ch,06fh,03eh,0ffh,018h,03ah,000h,031h	; b1a0  0.GOLD.m<o>..:.1
	defb 08dh,053h,048h,04fh,054h,040h,031h,0fdh,000h,000h,032h,08dh,053h,048h,04fh,054h	; b1b0  .SHOT@1...2.SHOT
	defb 040h,032h,000h,000h,033h,08dh,05fh,086h,082h,0ffh,000h,078h,060h,070h,074h,0ffh	; b1c0  @2..3._....x`pt.
	defb 0d4h,0b1h,000h,000h,019h,04bh,04fh,04eh,047h,065h,079h,070h,000h,065h,066h,05bh	; b1d0  .....KONGeyp.ef[
	defb 063h,03ch,083h,07dh,073h,087h,000h,06dh,040h,076h,03ch,083h,073h,000h,05dh,05eh	; b1e0  c<.}s..m@v<.s.]^
	defb 070h,000h,05fh,061h,06fh,065h,05ch,03eh,0ffh,001h,0b2h,033h,0b2h,054h,0b2h,000h	; b1f0  p._aoe\>...3.T..
	defb 000h,000h,04bh,04fh,04eh,047h,065h,079h,073h,000h,06dh,03ch,088h,068h,06ch,070h	; b200  ..KONGeys.m<.hlp
	defb 000h,080h,083h,06eh,0fdh,06eh,03ch,05dh,062h,06ch,073h,000h,06fh,060h,070h,000h	; b210  ...n.n<]bls.o`p.
	defb 065h,05ch,06dh,05ch,083h,000h,0fdh,061h,08bh,06ah,03ch,05ch,06fh,000h,074h,06fh	; b220  e\m\...a.j<\o.to
	defb 074h,03fh,0ffh,000h,061h,05ch,085h,05ch,000h,05ch,066h,06dh,03ch,000h,06fh,063h	; b230  t?..a\.\.\fm<.oc
	defb 084h,074h,03ch,000h,063h,067h,064h,06eh,060h,03ch,06dh,03ch,061h,06fh,05ch,081h	; b240  .t<.cgdn`<m<ao\.
	defb 066h,05ch,03eh,0ffh,000h,080h,062h,000h,05fh,078h,03ch,05eh,06dh,05fh,062h,060h	; b250  f\>...b._x<^m_b`
	defb 03ch,000h,080h,05ch,03eh,0ffh,06ah,0b2h,000h,000h,000h,06eh,03ch,05dh,062h,06ch	; b260  <..\>.j....n<]bl
	defb 073h,000h,06fh,060h,073h,000h,066h,03ch,086h,084h,087h,000h,05dh,07ch,083h,070h	; b270  s.o`s.f<....]|.p
	defb 074h,000h,04bh,04fh,04eh,047h,065h,079h,073h,000h,06fh,07ah,06ah,03ch,060h,03ch	; b280  t.KONGeys.ozj<`<
	defb 075h,06ch,080h,05dh,066h,03ch,089h,03eh,0ffh,09fh,0b2h,0bbh,0b2h,000h,000h,000h	; b290  ul.]f<.>........
	defb 064h,073h,000h,06eh,075h,03ch,081h,074h,000h,066h,088h,068h,05ch,06fh,083h,000h	; b2a0  ds.nu<.t.f.h\o..
	defb 05ch,073h,082h,073h,000h,06eh,075h,03ch,081h,03eh,0ffh,000h,04bh,04fh,04eh,047h	; b2b0  \s.s.nu<.>..KONG
	defb 065h,079h,073h,000h,061h,074h,03ch,060h,03ch,000h,06fh,063h,084h,074h,03ch,000h	; b2c0  eys.at<`<.oc.t<.
	defb 05ch,060h,06fh,083h,07dh,073h,07dh,000h,05bh,063h,083h,064h,06eh,074h,06dh,03ch	; b2d0  \`o.}s}.[c.dntm<
	defb 061h,06fh,05ch,03eh,0ffh,0e9h,0b2h,000h,000h,01ah,06eh,03ch,05dh,062h,06ch,073h	; b2e0  ao\>......n<]bls
	defb 000h,069h,06eh,070h,000h,06dh,03ch,06ah,05ch,060h,03bh,0fdh,03ah,000h,031h,000h	; b2f0  .inp.m<j\`;.:.1.
	defb 074h,05ch,000h,000h,032h,000h,05ch,05ch,05eh,0ffh,00eh,0b3h,000h,000h,01bh,086h	; b300  t\..2.\\^.......
	defb 066h,074h,000h,066h,08ah,05dh,06bh,08bh,05dh,066h,03ch,089h,03eh,000h,05bh,082h	; b310  ft.f.]k.]f<.>.[.
	defb 060h,03ch,06eh,05dh,03fh,080h,062h,000h,06ah,067h,063h,06dh,062h,084h,06ah,03eh	; b320  `<n]?.b.jgcmb.j>
	defb 05fh,084h,05ch,070h,000h,079h,060h,076h,03dh,081h,073h,000h,066h,03ch,08ah,07dh	; b330  _.\p.y`v=.s.f<.}
	defb 088h,087h,000h,065h,067h,03ch,063h,080h,05dh,03eh,0ffh,04fh,0b3h,000h,000h,000h	; b340  ...eg<c.]>.O....
	defb 066h,085h,05ch,063h,07dh,073h,074h,000h,075h,060h,082h,073h,000h,063h,088h,06dh	; b350  f.\c}st.u`.s.c.m
	defb 03ch,000h,06ah,05fh,068h,03eh,0ffh,06bh,0b3h,000h,000h,000h,04bh,04fh,04eh,047h	; b360  <.j_h>.k....KONG
	defb 065h,079h,073h,000h,06ch,07ch,074h,000h,067h,077h,03ch,06dh,073h,000h,073h,085h	; b370  eys.l|t.gw<ms.s.
	defb 05ch,087h,000h,05dh,06bh,063h,067h,000h,06ah,06ah,03ch,000h,075h,06eh,06ch,073h	; b380  \..]kcg.jj<.unls
	defb 000h,076h,03ch,061h,066h,03ch,089h,03eh,0ffh,09dh,0b3h,000h,000h,000h,064h,073h	; b390  .v<af<.>......ds
	defb 000h,074h,064h,087h,000h,05bh,063h,083h,070h,074h,000h,05bh,062h,03ch,073h,067h	; b3a0  .td..[c.pt.[b<sg
	defb 073h,000h,060h,061h,03ch,060h,03ch,000h,075h,06ch,080h,05dh,06fh,082h,03eh,0ffh	; b3b0  s.`a<`<.ul.]o.>.
	defb 0c4h,0b3h,000h,000h,000h,060h,081h,067h,074h,000h,060h,06fh,081h,067h,03ch,000h	; b3c0  .....`.gt.`o.g<.
	defb 06ah,05fh,068h,03eh,0ffh,0d9h,0b3h,000h,000h,000h,066h,088h,06dh,03ch,088h,070h	; b3d0  j_h>......f.m<.p
	defb 074h,000h,04bh,04fh,04eh,047h,073h,000h,065h,063h,075h,03ch,060h,03ch,000h,060h	; b3e0  t.KONGs.ecu<`<.`
	defb 062h,065h,084h,06dh,05ch,083h,03eh,0ffh,002h,0b4h,01fh,0b4h,031h,0b4h,04eh,0b4h	; b3f0  be.m\.>.....1.N.
	defb 000h,000h,000h,05ch,079h,060h,081h,000h,048h,045h,04ch,049h,043h,04fh,050h,054h	; b400  ...\y`..HELICOPT
	defb 045h,052h,000h,06eh,000h,06ch,05dh,066h,088h,000h,066h,079h,067h,03eh,0ffh,000h	; b410  ER.n.l]f..fyg>..
	defb 064h,06bh,081h,041h,052h,04dh,059h,000h,064h,06bh,081h,041h,052h,04dh,059h,000h	; b420  dk.ARMY.dk.ARMY.
	defb 0ffh,000h,079h,06ah,03ch,000h,04ch,041h,044h,059h,000h,04bh,04fh,04eh,047h,087h	; b430  ..yj<.LADY.KONG.
	defb 000h,074h,08ch,063h,088h,000h,06dh,03ch,061h,06fh,05ch,073h,060h,0ffh,000h,074h	; b440  .t.c..m<ao\s`..t
	defb 07eh,062h,066h,06fh,05ch,06eh,000h,04bh,049h,04eh,047h,000h,04bh,04fh,04eh,047h	; b450  ~bfo\n.KING.KONG
	defb 060h,03ch,000h,066h,088h,06dh,03ch,066h,079h,05dh,069h,03ch,03eh,0ffh,002h,0b4h	; b460  `<.f.m<fy]i<>...
	defb 07ah,0b4h,093h,0b4h,0a3h,0b4h,0beh,0b4h,000h,000h,000h,064h,03ch,062h,085h,05dh	; b470  z..........d<b.]
	defb 000h,04dh,049h,054h,043h,048h,045h,04ch,03eh,0fdh,080h,062h,07eh,08ch,06ah,069h	; b480  .MITCHEL>..b~.ji
	defb 03ch,03eh,0ffh,000h,067h,062h,03ch,070h,000h,069h,06bh,081h,070h,000h,07bh,060h	; b490  <>..gb<p.ik.p.{`
	defb 05dh,03eh,0ffh,021h,064h,084h,06dh,03ch,000h,04bh,049h,04eh,047h,000h,04bh,04fh	; b4a0  ]>.!d.m<.KING.KO
	defb 04eh,047h,07dh,000h,06ah,067h,060h,083h,06ah,03ch,085h,05dh,03eh,0ffh,022h,048h	; b4b0  NG}.jg`.j<.]>."H
	defb 045h,04ch,049h,043h,04fh,050h,054h,045h,052h,060h,03ch,07eh,08ch,06dh,061h,079h	; b4c0  ELICOPTER`<~.may
	defb 066h,06ah,03eh,0ffh,008h,0b0h,064h,084h,06ah,03ch,063h,06dh,03ch,074h,000h,079h	; b4d0  fj>...d.j<cm<t.y
	defb 088h,069h,03ch,062h,06dh,03ch,061h,071h,03eh,0feh,008h,0b8h,05bh,05ch,06dh,07bh	; b4e0  .i<bm<aq>...[\m{
	defb 073h,000h,064h,05dh,082h,08bh,062h,07dh,000h,05ch,06ah,06ah,03ch,062h,03eh,0ffh	; b4f0  s.d]..b}.\jj<b>.
	defb 0cdh,0b3h,0b9h,009h,0b5h,022h,0b5h,036h,0b5h,011h,000h,002h,0cdh,08fh,0b9h,038h	; b500  .....".6.......8
	defb 018h,03eh,001h,0cdh,068h,040h,03eh,002h,032h,04dh,0c1h,03eh,004h,032h,05dh,0c1h	; b510  .>..h@>.2M.>.2].
	defb 018h,00fh,03eh,004h,032h,04dh,0c1h,018h,008h,03eh,003h,032h,04dh,0c1h,0c3h,031h	; b520  ..>.2M...>.2M..1
	defb 0b5h,03eh,001h,032h,04bh,0c1h,0c9h,0cdh,0b3h,0b9h,048h,0b5h,040h,0b5h,036h,0b5h	; b530  .>.2K.....H.@.6.
	defb 03eh,007h,032h,04dh,0c1h,0c3h,031h,0b5h,03ah,036h,0c1h,0feh,003h,0d2h,031h,0b5h	; b540  >.2M..1.:6....1.
	defb 03eh,003h,032h,04dh,0c1h,03eh,007h,032h,05dh,0c1h,0c3h,031h,0b5h,03ah,058h,0c3h	; b550  >.2M.>.2]..1.:X.
	defb 0a7h,0c2h,0dah,0b7h,03eh,005h,032h,04dh,0c1h,0c3h,0dah,0b7h,0cdh,0b3h,0b9h,075h	; b560  ....>.2M.......u
	defb 0b5h,07dh,0b5h,036h,0b5h,03eh,020h,0cdh,068h,040h,0c3h,031h,0b5h,0afh,032h,02fh	; b570  .}.6.> .h@.1..2/
	defb 0c1h,0cdh,062h,040h,0c3h,031h,0b5h,0cdh,0b3h,0b9h,090h,0b5h,0a0h,0b5h,0afh,0b5h	; b580  ..b@.1..........
	defb 011h,050h,000h,0cdh,08fh,0b9h,038h,01fh,03eh,003h,032h,04dh,0c1h,0c3h,031h,0b5h	; b590  .P....8.>.2M..1.
	defb 011h,000h,001h,0cdh,08fh,0b9h,0dah,031h,0b5h,0cdh,046h,0b9h,0c3h,098h,0b5h,03eh	; b5a0  .......1..F....>
	defb 003h,032h,04dh,0c1h,0c3h,031h,0b5h,03eh,002h,032h,04dh,0c1h,0c3h,031h,0b5h,0cdh	; b5b0  .2M..1.>.2M..1..
	defb 0b3h,0b9h,0c8h,0b5h,0d7h,0b5h,036h,0b5h,011h,050h,001h,0cdh,08fh,0b9h,0dah,031h	; b5c0  ......6..P.....1
	defb 0b5h,0cdh,013h,0b9h,0cdh,037h,0b9h,03eh,002h,032h,04dh,0c1h,0c3h,031h,0b5h,03eh	; b5d0  .....7.>.2M..1.>
	defb 00ch,0cdh,068h,040h,0c3h,0dah,0b7h,03ah,060h,0c3h,0a7h,028h,008h,03eh,002h,032h	; b5e0  ..h@...:`..(.>.2
	defb 04dh,0c1h,0c3h,031h,0b5h,03eh,001h,032h,04dh,0c1h,03eh,003h,032h,05dh,0c1h,0c3h	; b5f0  M..1.>.2M.>.2]..
	defb 031h,0b5h,03eh,017h,0cdh,068h,040h,0c3h,0dah,0b7h,03ah,060h,0c3h,0a7h,028h,008h	; b600  1.>..h@...:`..(.
	defb 03eh,002h,032h,04dh,0c1h,0c3h,031h,0b5h,03eh,009h,032h,05dh,0c1h,0c3h,031h,0b5h	; b610  >.2M..1.>.2]..1.
	defb 0cdh,0b3h,0b9h,029h,0b6h,053h,0b6h,036h,0b5h,021h,04fh,0c3h,07eh,0d6h,005h,027h	; b620  ...).S.6.!O.~..'
	defb 038h,014h,077h,03eh,007h,032h,04dh,0c1h,03eh,001h,032h,05fh,0c1h,03ah,046h,0c1h	; b630  8.w>.2M.>.2_.:F.
	defb 0a7h,0c2h,031h,0b5h,018h,005h,03eh,006h,032h,04dh,0c1h,03eh,009h,032h,05dh,0c1h	; b640  ..1...>.2M.>.2].
	defb 0c3h,031h,0b5h,03eh,005h,032h,04dh,0c1h,018h,0f1h,0cdh,0b3h,0b9h,063h,0b6h,079h	; b650  .1.>.2M......c.y
	defb 0b6h,036h,0b5h,011h,000h,002h,0cdh,08fh,0b9h,0dah,031h,0b5h,03eh,021h,0cdh,068h	; b660  .6........1.>!.h
	defb 040h,03eh,002h,032h,04dh,0c1h,0c3h,031h,0b5h,03eh,002h,032h,04dh,0c1h,0c3h,031h	; b670  @>.2M..1.>.2M..1
	defb 0b5h,0cdh,0b3h,0b9h,08ah,0b6h,0b5h,0b6h,036h,0b5h,03ah,05ch,0c3h,0a7h,028h,01dh	; b680  ........6.:\..(.
	defb 011h,050h,001h,0cdh,08fh,0b9h,038h,025h,021h,05ch,0c3h,07eh,0d6h,001h,027h,077h	; b690  .P....8%!\.~..'w
	defb 03eh,01eh,0cdh,068h,040h,03eh,004h,032h,04dh,0c1h,0c3h,031h,0b5h,03eh,003h,032h	; b6a0  >..h@>.2M..1.>.2
	defb 04dh,0c1h,0c3h,031h,0b5h,03eh,004h,032h,04dh,0c1h,0c3h,031h,0b5h,03eh,002h,032h	; b6b0  M..1.>.2M..1.>.2
	defb 04dh,0c1h,03eh,004h,032h,05dh,0c1h,0c3h,031h,0b5h,03ah,060h,0c3h,0a7h,028h,008h	; b6c0  M.>.2]..1.:`..(.
	defb 03eh,002h,032h,04dh,0c1h,0c3h,031h,0b5h,03eh,001h,032h,04dh,0c1h,03eh,005h,032h	; b6d0  >.2M..1.>.2M.>.2
	defb 05dh,0c1h,0c3h,031h,0b5h,0cdh,0b3h,0b9h,0eeh,0b6h,001h,0b7h,036h,0b5h,0cdh,009h	; b6e0  ]..1........6...
	defb 0b7h,0dah,031h,0b5h,0cdh,050h,040h,03eh,001h,032h,05fh,0c1h,03eh,001h,032h,06ah	; b6f0  ..1..P@>.2_.>.2j
	defb 0c1h,03eh,005h,032h,04dh,0c1h,0c3h,031h,0b5h,021h,054h,0c3h,07eh,0d6h,001h,027h	; b700  .>.2M..1.!T.~..'
	defb 0d8h,077h,0c9h,03eh,001h,032h,046h,0c1h,0c3h,0dah,0b7h,03ah,060h,0c3h,0a7h,028h	; b710  .w.>.2F....:`..(
	defb 008h,03eh,002h,032h,04dh,0c1h,0c3h,031h,0b5h,03eh,005h,032h,05dh,0c1h,0c3h,031h	; b720  .>.2M..1.>.2]..1
	defb 0b5h,0cdh,0b3h,0b9h,03ah,0b7h,04bh,0b7h,036h,0b5h,0cdh,009h,0b7h,0dah,031h,0b5h	; b730  ....:.K.6.....1.
	defb 0cdh,013h,0b9h,03eh,005h,032h,04dh,0c1h,0c3h,031h,0b5h,03eh,005h,032h,04dh,0c1h	; b740  ...>.2M..1.>.2M.
	defb 0c3h,031h,0b5h,03ah,060h,0c3h,0a7h,028h,008h,03eh,002h,032h,04dh,0c1h,0c3h,031h	; b750  .1.:`..(.>.2M..1
	defb 0b5h,03eh,005h,032h,05dh,0c1h,0c3h,031h,0b5h,0cdh,0b3h,0b9h,072h,0b7h,07fh,0b7h	; b760  .>.2]..1....r...
	defb 036h,0b5h,0cdh,009h,0b7h,03eh,024h,0cdh,068h,040h,03eh,001h,032h,069h,0c1h,03eh	; b770  6....>$.h@>.2i.>
	defb 005h,032h,04dh,0c1h,0c3h,031h,0b5h,0cdh,0b3h,0b9h,090h,0b7h,0a1h,0b7h,036h,0b5h	; b780  .2M..1........6.
	defb 011h,050h,000h,0cdh,08fh,0b9h,0dah,031h,0b5h,03eh,003h,032h,04dh,0c1h,0c3h,031h	; b790  .P.....1.>.2M..1
	defb 0b5h,011h,000h,001h,0cdh,08fh,0b9h,0dah,031h,0b5h,0cdh,046h,0b9h,018h,0eah,0cdh	; b7a0  ........1..F....
	defb 0b3h,0b9h,0b8h,0b7h,031h,0b5h,036h,0b5h,021h,05dh,0c3h,07eh,0d6h,001h,027h,0dah	; b7b0  ....1.6.!].~..'.
	defb 031h,0b5h,077h,0afh,032h,042h,0c1h,0cdh,013h,0b9h,0cdh,037h,0b9h,03eh,003h,032h	; b7c0  1.w.2B.....7.>.2
	defb 04dh,0c1h,0c3h,031h,0b5h,03eh,012h,0cdh,068h,040h,021h,04bh,0c1h,034h,0c9h,0cdh	; b7d0  M..1.>..h@!K.4..
	defb 0b3h,0b9h,0e8h,0b7h,031h,0b5h,036h,0b5h,011h,000h,003h,0cdh,08fh,0b9h,0dah,031h	; b7e0  ....1.6........1
	defb 0b5h,03eh,001h,032h,044h,0c1h,03ch,032h,05dh,0c1h,0c3h,031h,0b5h,0cdh,0b3h,0b9h	; b7f0  .>.2D.<2]..1....
	defb 006h,0b8h,090h,0b5h,031h,0b5h,011h,010h,000h,0cdh,08fh,0b9h,0dah,031h,0b5h,021h	; b800  ....1........1.!
	defb 02ah,0c1h,07eh,02bh,0cbh,03fh,057h,07eh,01fh,0cbh,07fh,028h,002h,0d6h,030h,0cbh	; b810  *.~+.?W~...(..0.
	defb 05fh,028h,002h,0d6h,003h,05fh,07eh,093h,027h,077h,023h,07eh,09ah,027h,077h,0cdh	; b820  _(..._~.'w#~.'w.
	defb 062h,040h,03eh,003h,032h,04dh,0c1h,0c3h,0dah,0b7h,03ah,05fh,0c3h,0a7h,028h,011h	; b830  b@>.2M....:_..(.
	defb 03eh,002h,032h,04dh,0c1h,03eh,01ah,0cdh,068h,040h,0afh,032h,05fh,0c3h,0c3h,031h	; b840  >.2M.>..h@.2_..1
	defb 0b5h,03eh,004h,032h,05dh,0c1h,0c3h,031h,0b5h,03ah,058h,0c3h,0a7h,028h,008h,03eh	; b850  .>.2]..1.:X..(.>
	defb 003h,032h,04dh,0c1h,0c3h,031h,0b5h,03eh,019h,0cdh,068h,040h,0c3h,031h,0b5h,0cdh	; b860  .2M..1.>..h@.1..
	defb 0b3h,0b9h,078h,0b8h,088h,0b8h,09eh,0b8h,011h,050h,003h,0cdh,08fh,0b9h,038h,026h	; b870  ..x......P....8&
	defb 03eh,001h,032h,05dh,0c1h,0c3h,031h,0b5h,011h,050h,003h,0cdh,08fh,0b9h,038h,016h	; b880  >.2]..1..P....8.
	defb 03ah,041h,0c1h,0feh,019h,020h,0e9h,03eh,001h,032h,04eh,0c1h,018h,0e2h,03eh,004h	; b890  :A... .>.2N...>.
	defb 032h,04dh,0c1h,0c3h,031h,0b5h,03eh,003h,032h,04dh,0c1h,0c3h,031h,0b5h,0c3h,0dah	; b8a0  2M..1.>.2M..1...
	defb 0b7h,0cdh,0b3h,0b9h,0bah,0b8h,031h,0b5h,036h,0b5h,03eh,009h,032h,025h,0c1h,03eh	; b8b0  ......1.6.>.2%.>
	defb 001h,032h,001h,0c2h,032h,04fh,0c1h,021h,058h,038h,022h,021h,0c3h,0c3h,050h,040h	; b8c0  .2..2O.!X8"!..P@
	defb 03eh,00eh,0cdh,068h,040h,0c3h,0dah,0b7h,03ah,060h,0c3h,0a7h,028h,008h,03eh,002h	; b8d0  >..h@...:`..(.>.
	defb 032h,04dh,0c1h,0c3h,031h,0b5h,03eh,003h,032h,05dh,0c1h,0c3h,031h,0b5h,03ah,006h	; b8e0  2M..1.>.2]..1.:.
	defb 0c1h,0e6h,010h,0c8h,03eh,0ffh,0cdh,0e6h,040h,0c3h,031h,0b5h,0cdh,012h,042h,0c0h	; b8f0  ....>...@.1...B.
	defb 03eh,08bh,0cdh,0e6h,040h,0afh,032h,067h,0c1h,03eh,007h,032h,001h,0c2h,0afh,032h	; b900  >...@.2g.>.2...2
	defb 082h,0c6h,0c9h,0cdh,01ch,0b9h,022h,029h,0c1h,0c3h,062h,040h,03ah,02eh,0c1h,026h	; b910  ......")..b@:..&
	defb 000h,06fh,029h,029h,029h,029h,03eh,030h,085h,027h,06fh,07ch,0ceh,000h,027h,067h	; b920  .o))))>0.'o|..'g
	defb 0feh,010h,0d8h,021h,099h,009h,0c9h,021h,02fh,0c1h,07eh,0c6h,020h,027h,030h,002h	; b930  ...!...!/.~. '0.
	defb 03eh,099h,077h,0c3h,062h,040h,0cdh,01ch,0b9h,0edh,05bh,029h,0c1h,07dh,093h,027h	; b940  >.w.b@....[).}.'
	defb 06fh,07ch,092h,027h,067h,0d8h,07dh,0cdh,085h,0b9h,0cbh,044h,028h,002h,0c6h,005h	; b950  o|.'g.}....D(...
	defb 06fh,07ch,0cdh,085h,0b9h,067h,07dh,083h,027h,06fh,07ch,082h,027h,067h,022h,029h	; b960  o|...g}.'o|.'g")
	defb 0c1h,0c3h,062h,040h,021h,02fh,0c1h,03ah,02eh,0c1h,096h,027h,0d8h,0cdh,085h,0b9h	; b970  ..b@!/.:...'....
	defb 086h,0c3h,062h,040h,0c9h,0cbh,03fh,0cbh,05fh,0c8h,0cbh,09fh,0c6h,005h,0c9h,021h	; b980  ..b@..?._......!
	defb 037h,0c1h,07eh,0a7h,020h,008h,02bh,02bh,07eh,093h,023h,07eh,09ah,0d8h,021h,035h	; b990  7.~. .++~.#~..!5
	defb 0c1h,07eh,093h,027h,077h,023h,07eh,09ah,027h,077h,023h,07eh,0deh,000h,027h,077h	; b9a0  .~.'w#~.'w#~..'w
	defb 0c3h,062h,040h,0e1h,01eh,000h,03ah,012h,0c1h,01fh,01fh,01fh,01fh,038h,007h,01ch	; b9b0  .b@...:......8..
	defb 01fh,038h,003h,01fh,0d0h,01ch,0cbh,023h,016h,000h,019h,05eh,023h,056h,0ebh,0e9h	; b9c0  .8.....#...^#V..

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
