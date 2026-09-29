; ==========================================================================
; KING KONG 2: YOMIGAERU DENSETSU - Konami (1986) - MSX - MegaROM RC-745 de 128 KB (Konami4) - banco 15 (se ejecuta en 0xa000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x0a000


; ----------------------------------------------------------------------
; DATOS sin identificar  0xa000..0xbd3a  (7482 bytes)
DATA_A000:
	defb 011h,011h,01ah,011h,011h,011h,011h,0aah,011h,011h,011h,011h,011h,011h,011h,011h	; a000  ................
	defb 011h,011h,011h,014h,01ah,011h,011h,011h,011h,011h,011h,041h,0a4h,0a1h,011h,011h	; a010  ...........A....
	defb 0aah,0a1h,011h,011h,011h,011h,011h,011h,011h,011h,011h,011h,011h,011h,011h,011h	; a020  ................
	defb 011h,041h,014h,011h,011h,011h,011h,011h,014h,0a1h,011h,011h,044h,0a1h,0a1h,0a1h	; a030  .A..........D...
	defb 0aah,011h,011h,011h,011h,011h,011h,000h,001h,004h,005h,008h,009h,00dh,00dh,0feh	; a040  ................
	defb 002h,003h,006h,007h,00ah,00bh,00dh,00dh,0feh,00ch,00ch,00dh,00dh,00dh,00dh,00dh	; a050  ................
	defb 00dh,0ffh,087h,000h,06eh,082h,079h,066h,06ah,03eh,0ffh,0b3h,0a0h,0b7h,0a0h,0bbh	; a060  ....n.yfj>......
	defb 0a0h,0c1h,0a0h,0c8h,0a0h,0cbh,0a0h,0ceh,0a0h,0d1h,0a0h,0d4h,0a0h,0dbh,0a0h,0e2h	; a070  ................
	defb 0a0h,0e5h,0a0h,0e9h,0a0h,0edh,0a0h,0f3h,0a0h,0fah,0a0h,0ffh,0a0h,006h,0a1h,00ah	; a080  ................
	defb 0a1h,00fh,0a1h,015h,0a1h,018h,0a1h,01dh,0a1h,023h,0a1h,028h,0a1h,02dh,0a1h,031h	; a090  .........#.(.-.1
	defb 0a1h,036h,0a1h,03dh,0a1h,044h,0a1h,04bh,0a1h,052h,0a1h,059h,0a1h,05ch,0a1h,061h	; a0a0  .6.=.D.K.R.Y.\.a
	defb 0a1h,067h,0a1h,06fh,05ch,076h,0ffh,052h,04fh,044h,0ffh,064h,088h,078h,03ch,05dh	; a0b0  .g.o\v.ROD.d.x<]
	defb 0ffh,075h,060h,082h,073h,063h,088h,0ffh,05fh,073h,0ffh,063h,088h,0ffh,06ch,07ch	; a0c0  .u`.sc.._s.c..l|
	defb 0ffh,05ch,066h,0ffh,078h,073h,05fh,073h,06ah,079h,0ffh,076h,03ch,040h,07ch,081h	; a0d0  .\f.xs_sjy.v<@|.
	defb 088h,0ffh,07dh,082h,0ffh,06dh,07bh,065h,0ffh,072h,07bh,082h,0ffh,079h,060h,076h	; a0e0  ..}..m{e.r{..y`v
	defb 03dh,081h,0ffh,081h,07ch,081h,073h,05eh,061h,0ffh,07eh,062h,069h,05dh,0ffh,06bh	; a0f0  =...|.s^a.~bi].k
	defb 060h,081h,073h,06ah,079h,0ffh,061h,074h,03ch,0ffh,065h,065h,07eh,061h,0ffh,05bh	; a100  `.sjy.at<.ee~a.[
	defb 062h,03ch,073h,067h,0ffh,070h,062h,0ffh,06fh,07ah,06ah,03ch,0ffh,06eh,03ch,082h	; a110  b<sg.pb.ozj<.n<.
	defb 05bh,088h,0ffh,05fh,079h,07dh,082h,0ffh,07bh,068h,088h,061h,0ffh,075h,06eh,07ah	; a120  [.._y}..{h.a.unz
	defb 0ffh,065h,063h,075h,03ch,0ffh,081h,062h,06fh,073h,06ah,079h,0ffh,074h,03dh,075h	; a130  .ecu<..bosjy.t=u
	defb 03dh,083h,067h,0ffh,07ah,067h,03ch,063h,03ch,06ah,0ffh,061h,05ch,085h,05ch,05ch	; a140  =.g.zg<c<j.a\.\\
	defb 066h,0ffh,06eh,06eh,03ch,063h,07dh,073h,0ffh,078h,088h,0ffh,060h,05ch,06dh,088h	; a150  f.nn<c}s.x..`\m.
	defb 0ffh,061h,073h,060h,061h,03ch,0ffh,06dh,06ch,073h,060h,061h,03ch,0ffh,002h,002h	; a160  .as`a<.mls`a<...
	defb 002h,008h,008h,002h,002h,002h,002h,002h,008h,008h,002h,002h,002h,002h,002h,002h	; a170  ................
	defb 002h,002h,002h,002h,002h,002h,002h,008h,002h,002h,002h,008h,008h,002h,008h,002h	; a180  ................
	defb 008h,002h,002h,008h,008h,002h,002h,008h,00ch,002h,002h,002h,002h,002h,002h,002h	; a190  ................
	defb 008h,008h,008h,002h,002h,008h,008h,002h,002h,004h,008h,002h,002h,000h,00ch,00ch	; a1a0  ................
	defb 002h,002h,03ah,0a2h,03ah,0a2h,03ah,0a2h,052h,0a2h,052h,0a2h,03ah,0a2h,052h,0a2h	; a1b0  ..:.:.:.R.R.:.R.
	defb 03ah,0a2h,052h,0a2h,03ah,0a2h,052h,0a2h,052h,0a2h,03ah,0a2h,05ah,0a2h,05ah,0a2h	; a1c0  :.R.:.R.R.:.Z.Z.
	defb 052h,0a2h,052h,0a2h,03ah,0a2h,052h,0a2h,052h,0a2h,03ah,0a2h,05ah,0a2h,03ah,0a2h	; a1d0  R.R.:.R.R.:.Z.:.
	defb 052h,0a2h,052h,0a2h,058h,0a2h,052h,0a2h,052h,0a2h,03ah,0a2h,03ah,0a2h,03ah,0a2h	; a1e0  R.R.X.R.R.:.:.:.
	defb 052h,0a2h,052h,0a2h,052h,0a2h,05ah,0a2h,03ah,0a2h,052h,0a2h,03ah,0a2h,03ah,0a2h	; a1f0  R.R.R.Z.:.R.:.:.
	defb 052h,0a2h,052h,0a2h,05ah,0a2h,05ah,0a2h,052h,0a2h,052h,0a2h,052h,0a2h,052h,0a2h	; a200  R.R.Z.Z.R.R.R.R.
	defb 03ah,0a2h,03ah,0a2h,052h,0a2h,052h,0a2h,042h,0a2h,052h,0a2h,03ah,0a2h,052h,0a2h	; a210  :.:.R.R.B.R.:.R.
	defb 05ah,0a2h,05ah,0a2h,052h,0a2h,052h,0a2h,03ah,0a2h,03ah,0a2h,03ah,0a2h,052h,0a2h	; a220  Z.Z.R.R.:.:.:.R.
	defb 05ah,0a2h,03eh,0a2h,05ah,0a2h,03ah,0a2h,03ah,0a2h,001h,044h,001h,044h,001h,044h	; a230  Z.>.Z.:.:..D.D.D
	defb 001h,044h,001h,044h,001h,044h,001h,044h,001h,044h,000h,000h,000h,000h,000h,000h	; a240  .D.D.D.D.D......
	defb 000h,000h,001h,046h,001h,046h,001h,046h,001h,046h,000h,000h,000h,000h,000h,000h	; a250  ...F.F.F.F......
	defb 000h,000h,000h,000h,000h,000h,001h,010h,008h,026h,045h,010h,001h,020h,005h,001h	; a260  .........&E.. ..
	defb 086h,018h,010h,013h,014h,014h,002h,008h,015h,020h,012h,0ffh,004h,012h,010h,062h	; a270  ......... .....b
	defb 006h,006h,007h,080h,090h,012h,090h,060h,088h,009h,010h,078h,058h,010h,011h,020h	; a280  .......`...xX..
	defb 034h,010h,032h,010h,014h,018h,022h,016h,090h,090h,090h,025h,025h,065h,095h,006h	; a290  4.2..."....%%e..
	defb 007h,028h,010h,010h,025h,0ffh,030h,034h,001h,002h,0c2h,0a2h,0cah,0a2h,0d2h,0a2h	; a2a0  .(..%.04........
	defb 0dah,0a2h,0fah,0a2h,01ah,0a3h,0dah,0a2h,0fah,0a2h,01ah,0a3h,03ah,0a3h,06ah,0a3h	; a2b0  ............:.j.
	defb 09ah,0a3h,0f8h,0f8h,028h,006h,0f8h,0f8h,02ch,048h,0f8h,0f8h,030h,006h,0f8h,0f8h	; a2c0  ....(...,H..0...
	defb 034h,048h,0f8h,0f8h,038h,006h,0f8h,0f8h,03ch,048h,001h,0f1h,028h,006h,001h,0f1h	; a2d0  4H..8...<H..(...
	defb 02ch,048h,0f1h,0f9h,030h,006h,0f1h,0f9h,034h,048h,0f9h,001h,038h,006h,0f9h,001h	; a2e0  ,H..0...4H..8...
	defb 03ch,048h,001h,001h,030h,006h,001h,001h,034h,048h,000h,0f6h,028h,006h,000h,0f6h	; a2f0  <H..0...4H..(...
	defb 02ch,048h,0fch,0eah,030h,006h,0fch,0eah,034h,048h,0fch,002h,038h,006h,0fch,002h	; a300  ,H..0...4H..8...
	defb 03ch,048h,0f4h,0fah,030h,006h,0f4h,0fah,034h,048h,0fch,0ech,038h,006h,0fch,0ech	; a310  <H..0...4H..8...
	defb 03ch,048h,0f6h,0f9h,038h,006h,0f6h,0f9h,03ch,048h,0f4h,004h,038h,006h,0f4h,004h	; a320  <H..8...<H..8...
	defb 03ch,048h,004h,0fch,038h,006h,004h,0fch,03ch,048h,0f1h,0e1h,028h,006h,0f1h,0e1h	; a330  <H..8...<H..(...
	defb 02ch,048h,009h,0e9h,028h,006h,009h,0e9h,02ch,048h,0e9h,009h,028h,006h,0e9h,009h	; a340  ,H..(...,H..(...
	defb 02ch,048h,011h,0f9h,028h,006h,011h,0f9h,02ch,048h,001h,009h,028h,006h,001h,009h	; a350  ,H..(...,H..(...
	defb 02ch,048h,0f1h,0f9h,030h,006h,0f1h,0f9h,034h,048h,000h,0f8h,028h,006h,000h,0f8h	; a360  ,H..0...4H..(...
	defb 02ch,048h,0f1h,0e1h,030h,006h,0f1h,0e1h,034h,048h,0fch,0eah,030h,006h,0fch,0eah	; a370  ,H..0...4H..0...
	defb 034h,048h,0e9h,0f8h,030h,006h,0e9h,0f8h,034h,048h,011h,0f9h,030h,006h,011h,0f9h	; a380  4H..0...4H..0...
	defb 034h,048h,009h,0f9h,030h,006h,009h,0f9h,034h,048h,0f9h,0f9h,030h,006h,0f9h,0f9h	; a390  4H..0...4H..0...
	defb 034h,048h,0e9h,0e9h,038h,006h,0e9h,0e9h,03ch,048h,0fch,0ech,038h,006h,0fch,0ech	; a3a0  4H..8...<H..8...
	defb 03ch,048h,009h,0f1h,038h,006h,009h,0f1h,03ch,048h,004h,0fch,038h,006h,004h,0fch	; a3b0  <H..8...<H..8...
	defb 03ch,048h,0f4h,004h,038h,006h,0f4h,004h,03ch,048h,0f0h,0f0h,0f0h,0f6h,0f6h,0f0h	; a3c0  <H..8...<H......
	defb 0f0h,0f0h,0f0h,0f0h,0f6h,0f6h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f6h	; a3d0  ................
	defb 0f0h,0f0h,0f0h,0f6h,0f0h,0f0h,0f0h,0f6h,0f3h,0f0h,0f3h,0f0h,0f6h,0f0h,0f0h,0f6h	; a3e0  ................
	defb 0f6h,0f0h,0f0h,0f6h,0f9h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f3h,0f3h,0f3h,0f0h	; a3f0  ................
	defb 0f0h,0f6h,0f6h,0f0h,0f0h,0f0h,0f3h,0f0h,0f0h,0f0h,0f9h,0f9h,0f0h,0f0h,0bdh,00fh	; a400  ................
	defb 01fh,03fh,06eh,0efh,0ffh,0bfh,08fh,05fh,03fh,03ch,03fh,01bh,03eh,022h,03ch,0e0h	; a410  .?n...._?<?.>"<.
	defb 0f0h,0fah,0b7h,0f7h,0fdh,03dh,0f2h,0fch,0f8h,00ch,0feh,0fch,054h,07ch,044h,000h	; a420  .....=......T|D.
	defb 002h,005h,013h,050h,041h,060h,070h,020h,000h,003h,000h,004h,000h,01ch,000h,000h	; a430  ...PA`p ........
	defb 020h,050h,06ah,0cah,022h,0c6h,00ch,000h,000h,0f0h,000h,000h,003h,038h,0a0h,00fh	; a440   Pj."........8..
	defb 01fh,03fh,06fh,0efh,0ffh,0bfh,09fh,058h,03fh,03fh,01fh,03bh,03eh,022h,03ch,0e0h	; a450  .?o....X??.;>"<.
	defb 0f0h,0feh,0edh,0ebh,0fdh,0f1h,0fah,01ch,0f8h,0fch,0feh,0fch,054h,07ch,044h,003h	; a460  ............T|D.
	defb 000h,086h,010h,050h,040h,060h,060h,027h,003h,000h,083h,004h,000h,01ch,004h,000h	; a470  ...P@``'........
	defb 002h,016h,084h,006h,00eh,004h,0e0h,004h,000h,003h,038h,005h,000h,086h,00fh,017h	; a480  ..........8.....
	defb 018h,013h,00ch,003h,00ah,000h,086h,0e0h,090h,0c8h,010h,060h,080h,00bh,000h,003h	; a490  ...........`....
	defb 00fh,081h,003h,00ch,000h,084h,0e0h,0f0h,0e0h,080h,006h,000h,0bdh,00fh,01fh,03fh	; a4a0  ...............?
	defb 02eh,02fh,03fh,05fh,0b7h,0cbh,0fch,09dh,0f6h,07bh,03eh,022h,03ch,0e0h,0f0h,0f8h	; a4b0  ./?_.....{>"<...
	defb 0b8h,0f8h,0f8h,034h,0fah,0cdh,065h,089h,03eh,0fch,054h,07ch,044h,000h,002h,005h	; a4c0  ...4..e.>.T|D...
	defb 013h,010h,001h,030h,068h,077h,067h,07bh,039h,004h,000h,01ch,000h,000h,020h,050h	; a4d0  ...0hwg{9..... P
	defb 060h,0c0h,020h,0c8h,00ch,0f6h,0fah,0f6h,0c0h,000h,003h,038h,0a0h,00fh,01fh,03fh	; a4e0  `. ........8...?
	defb 02fh,02fh,03fh,05fh,0bfh,0f8h,0ffh,0bfh,0ffh,07bh,03eh,022h,03ch,0e0h,0f0h,0f8h	; a4f0  //?_.....{>"<...
	defb 0f8h,0f0h,0f8h,0fch,0fah,01dh,0f9h,0fdh,0feh,0fch,054h,07ch,044h,003h,000h,002h	; a500  ..........T|D...
	defb 010h,08ah,000h,020h,060h,047h,040h,040h,000h,004h,000h,01ch,008h,000h,086h,004h	; a510  ... `G@@........
	defb 0e6h,006h,002h,000h,000h,003h,038h,0b0h,00fh,01fh,03fh,02eh,07eh,07fh,04fh,03fh	; a520  ......8...?.~.O?
	defb 05ah,0b3h,081h,047h,03dh,00ch,004h,00eh,0c0h,0e0h,0f0h,0f0h,0f8h,0ech,0cch,0aeh	; a530  Z..G=...........
	defb 0ceh,09fh,07eh,0cch,0e8h,0c4h,074h,0e8h,000h,008h,014h,019h,031h,008h,030h,000h	; a540  ..~...t.....1.0.
	defb 03dh,07dh,07eh,038h,002h,007h,003h,007h,005h,000h,0bbh,030h,070h,070h,0f0h,0e0h	; a550  =}~8.......0pp..
	defb 080h,070h,0f0h,078h,0b8h,070h,00fh,01fh,03fh,02eh,07eh,07fh,04fh,03fh,016h,02ch	; a560  .p.x.p..?.~.O?.,
	defb 020h,051h,07eh,064h,0e4h,0c8h,0c0h,0e0h,0f0h,0f0h,090h,068h,094h,0dch,0b6h,0afh	; a570   Q~d.......h....
	defb 07eh,0fah,039h,01dh,019h,036h,000h,008h,014h,019h,031h,008h,030h,000h,00fh,01fh	; a580  ~.9..6....1.0...
	defb 01fh,02eh,030h,038h,078h,0f0h,004h,000h,09eh,060h,0f0h,078h,038h,078h,070h,080h	; a590  ..08x....`.x8xp.
	defb 03ch,01eh,00eh,00eh,018h,00fh,01fh,03fh,02eh,07eh,07fh,04bh,0b4h,0d9h,05fh,03fh	; a5a0  <......?.~.K.._?
	defb 04fh,076h,064h,0e4h,0c8h,0c0h,0e0h,003h,0f0h,09bh,0d8h,018h,038h,0fch,0fch,0feh	; a5b0  Ovd.........8...
	defb 0fah,039h,01dh,019h,036h,000h,008h,014h,019h,031h,008h,037h,04fh,066h,020h,000h	; a5c0  .9..6....1.7Of .
	defb 030h,038h,038h,078h,0f0h,005h,000h,002h,0e0h,081h,0c0h,003h,000h,085h,03ch,01eh	; a5d0  088x..........<.
	defb 00eh,00eh,018h,000h,0ffh,000h,005h,01ah,02fh,05fh,06fh,057h,09ah,0afh,0b7h,098h	; a5e0  ......../_oW....
	defb 04fh,067h,027h,017h,00fh,0f8h,028h,0deh,0aah,0f4h,0c4h,0b6h,0eah,0dah,03ah,0f6h	; a5f0  Og'...(.......:.
	defb 0e6h,00ch,088h,030h,0c0h,000h,000h,005h,01bh,03fh,03fh,02fh,067h,072h,07ah,07fh	; a600  ...0.....??/grz.
	defb 03fh,038h,018h,00fh,000h,000h,0f0h,0e0h,0fch,0f8h,0f8h,0dch,01ch,03ch,0fch,0f8h	; a610  ?8...........<..
	defb 0fch,0f8h,070h,0c0h,000h,000h,007h,00bh,015h,02fh,037h,02bh,04dh,057h,05bh,04ch	; a620  ..p....../7+MW[L
	defb 027h,027h,013h,008h,007h,0e0h,03ch,063h,097h,0fah,0e2h,0dbh,075h,0edh,09dh,079h	; a630  ''....<c....u..y
	defb 0f1h,0a6h,08ch,018h,0e0h,000h,000h,005h,00fh,01fh,01fh,017h,033h,039h,03dh,03fh	; a640  ............39=?
	defb 01fh,01ch,00fh,007h,000h,000h,0e0h,0dch,0fah,0fch,0fch,0eeh,08eh,01eh,07eh,0feh	; a650  ..............~.
	defb 0feh,07ch,0f8h,0e0h,002h,000h,0a3h,005h,01ah,02dh,05bh,06fh,05fh,09fh,0bfh,09fh	; a660  .|.......-[o_...
	defb 08fh,06fh,052h,029h,010h,00fh,0f8h,028h,0deh,0aah,0f4h,0ech,0f6h,0feh,0fah,0f2h	; a670  .oR)...(........
	defb 0feh,0e6h,0ech,088h,030h,0c0h,000h,000h,005h,01bh,003h,03fh,004h,07fh,002h,03fh	; a680  ....0......?...?
	defb 0b7h,01fh,00fh,000h,000h,0f0h,0e0h,0fch,0f8h,0f0h,0fch,0f8h,0fch,0fch,0f8h,0fch	; a690  ................
	defb 0f8h,0f0h,0c0h,000h,001h,00eh,016h,02bh,05fh,067h,05fh,09fh,0bfh,0bfh,09fh,06fh	; a6a0  .......+_g_....o
	defb 049h,033h,010h,00fh,0c0h,078h,0c6h,02eh,0f4h,0f4h,0f6h,0fah,0feh,0feh,0f6h,0e2h	; a6b0  I3...x..........
	defb 0cch,018h,030h,0c0h,000h,001h,00bh,01fh,003h,03fh,004h,07fh,002h,03fh,089h,01fh	; a6c0  ..0......?...?..
	defb 00fh,000h,000h,0c0h,0b8h,0f4h,0f8h,0f8h,003h,0fch,087h,0f8h,0fch,0fch,0f8h,0f0h	; a6d0  ................
	defb 0c0h,000h,000h,0aeh,003h,005h,063h,0d3h,07fh,077h,03bh,019h,036h,077h,049h,076h	; a6e0  ......c..w;.6wIv
	defb 029h,07ch,07bh,000h,000h,080h,042h,0e5h,0ffh,0f7h,0eeh,0cch,0b4h,0f4h,0ceh,032h	; a6f0  )|{...B........2
	defb 0ceh,011h,0efh,00fh,000h,003h,001h,060h,023h,038h,01dh,007h,009h,028h,037h,039h	; a700  .......`#8...(79
	defb 016h,033h,004h,000h,08dh,080h,082h,0e2h,00eh,0dch,0f0h,0c8h,088h,0f4h,0cch,03ch	; a710  .3.............<
	defb 0eeh,006h,003h,000h,09dh,043h,0ech,0fbh,0ffh,07fh,03fh,07ch,07ch,02eh,042h,070h	; a720  .....C....?||.Bp
	defb 0c8h,0f7h,0f0h,000h,000h,0c6h,0afh,0feh,0feh,0fch,0f8h,0ech,05eh,02ah,00eh,01ch	; a730  ............^*..
	defb 07eh,0beh,004h,000h,08ch,043h,04fh,07fh,035h,00ah,02bh,03bh,01dh,03fh,02fh,037h	; a740  ~....CO.5.+;.?/7
	defb 060h,004h,000h,08bh,0c6h,0e4h,0fch,0d8h,0c0h,030h,0a4h,0f4h,0f4h,0f0h,098h,004h	; a750  `........0......
	defb 000h,09eh,070h,0c8h,074h,03eh,067h,0dbh,0bbh,0ffh,09fh,07fh,01bh,037h,04fh,07ch	; a760  ..p.t>g......7O|
	defb 008h,004h,006h,005h,005h,007h,0ebh,015h,0feh,0fah,0fah,0f6h,0b9h,01dh,0e9h,00eh	; a770  ................
	defb 003h,000h,08ch,070h,018h,00ch,03eh,077h,067h,04dh,07bh,005h,00fh,01eh,03ch,004h	; a780  ...p..>wgM{...<.
	defb 000h,003h,002h,089h,006h,0eeh,0fch,0fch,0ech,0d8h,0deh,0eah,006h,004h,000h,09dh	; a790  ................
	defb 078h,094h,07eh,077h,0e3h,0dbh,0bdh,0fah,095h,07ah,014h,019h,01eh,000h,000h,01ch	; a7a0  x.~w.....z......
	defb 00ah,005h,007h,0ebh,015h,0feh,0fah,063h,0b7h,0bfh,077h,0eeh,076h,004h,000h,08bh	; a7b0  .......c..w.v...
	defb 078h,00ch,01eh,03fh,077h,067h,04dh,07bh,007h,00fh,00eh,004h,000h,085h,004h,002h	; a7c0  x..?wgM{........
	defb 002h,006h,0eeh,003h,0fch,085h,0d8h,0dah,0bah,074h,000h,000h,006h,000h,09ah,001h	; a7d0  .........t......
	defb 003h,002h,00eh,034h,06ch,05ch,0f4h,0a6h,042h,000h,000h,007h,01ch,073h,0dfh,0bfh	; a7e0  ...4l\..B....s..
	defb 03fh,05eh,075h,053h,00ch,011h,027h,04ah,051h,008h,000h,002h,001h,086h,00bh,03bh	; a7f0  ?^uS..'JQ......;
	defb 033h,043h,041h,001h,003h,000h,084h,003h,00fh,03fh,07fh,003h,0ffh,096h,0fch,0f3h	; a800  3CA......?......
	defb 0efh,0dfh,0bfh,0bfh,000h,000h,0e0h,038h,0feh,073h,0fdh,0fah,0fch,0ceh,0f6h,030h	; a810  .......8.s.....0
	defb 0c8h,0f4h,0fah,0f2h,006h,000h,08ah,080h,0c0h,040h,070h,02ch,036h,03ah,02fh,065h	; a820  .........@p,6:/e
	defb 042h,003h,000h,084h,0c0h,0f0h,0fch,0feh,003h,0ffh,086h,03fh,0cfh,0f7h,0fbh,0fdh	; a830  B..........?....
	defb 0fdh,008h,000h,002h,080h,0a6h,0d0h,0dch,0cch,0c2h,082h,080h,003h,001h,001h,003h	; a840  ................
	defb 01eh,033h,056h,098h,0f0h,0e1h,0e2h,001h,002h,003h,001h,000h,082h,080h,083h,0cfh	; a850  .3V.............
	defb 05fh,0ffh,037h,07dh,0beh,04eh,0c7h,083h,084h,084h,0c0h,080h,003h,000h,098h,001h	; a860  _.7}.N..........
	defb 003h,01ch,028h,060h,040h,040h,001h,000h,001h,001h,000h,000h,07fh,07fh,07ch,033h	; a870  ..(`@@........|3
	defb 0a7h,00fh,00fh,003h,049h,085h,081h,003h,000h,0adh,080h,000h,059h,001h,0c1h,0f3h	; a880  ....I.......Y...
	defb 0fah,0ffh,0dch,0beh,07dh,0f2h,0e3h,0c1h,021h,021h,003h,001h,0c0h,080h,080h,0c0h	; a890  ....}...!!......
	defb 078h,0cch,02ah,019h,00fh,087h,047h,080h,040h,0c0h,080h,000h,0feh,0feh,03eh,0cch	; a8a0  x.*...G.@.....>.
	defb 0e5h,0f0h,0f0h,0c0h,092h,0a1h,081h,003h,000h,081h,001h,004h,000h,08bh,080h,0c0h	; a8b0  ................
	defb 038h,014h,006h,002h,002h,080h,000h,080h,080h,007h,000h,09bh,001h,003h,002h,006h	; a8c0  8...............
	defb 00ch,034h,06ch,05ch,0f4h,0a6h,042h,000h,007h,01ch,073h,0dfh,0bfh,03fh,05eh,075h	; a8d0  .4l\..B...s..?^u
	defb 053h,00ch,011h,027h,04ah,051h,080h,007h,000h,002h,001h,08dh,003h,00bh,03bh,033h	; a8e0  S..'JQ........;3
	defb 043h,041h,001h,000h,000h,003h,00fh,03fh,07fh,003h,0ffh,097h,0fch,0f3h,0efh,0dfh	; a8f0  CA.....?........
	defb 0bfh,0bfh,07fh,000h,0e0h,038h,0feh,073h,0fdh,0fah,0fch,0ceh,0f6h,030h,0c8h,0e4h	; a900  .....8.s.....0..
	defb 0f2h,0fah,0f1h,005h,000h,091h,080h,0c0h,040h,060h,030h,02ch,036h,03ah,02fh,065h	; a910  ........@`0,6:/e
	defb 042h,000h,000h,0c0h,0f0h,0fch,0feh,003h,0ffh,087h,03fh,0cfh,0f7h,0fbh,0fdh,0fdh	; a920  B.........?.....
	defb 0feh,007h,000h,002h,080h,092h,0c0h,0d0h,0dch,0cch,0c2h,082h,080h,003h,001h,000h	; a930  ................
	defb 001h,00fh,019h,02bh,04ch,078h,0d0h,0e0h,005h,000h,090h,082h,080h,083h,0cfh,05fh	; a940  ...+Lx........._
	defb 0f7h,03dh,07eh,036h,05bh,0b6h,061h,0a2h,0e2h,070h,020h,004h,000h,086h,001h,00eh	; a950  .=~6[.a..p .....
	defb 014h,030h,020h,060h,006h,000h,002h,07fh,0a9h,07ch,033h,0a7h,00fh,003h,009h,00dh	; a960  .0 `.....|3.....
	defb 025h,061h,000h,040h,040h,020h,000h,059h,009h,0c1h,0f3h,0fah,0dfh,0bch,07eh,0ech	; a970  %a.@@ .Y......~.
	defb 0dah,06dh,086h,045h,047h,00eh,004h,0c0h,080h,000h,080h,0f0h,098h,0d4h,032h,01eh	; a980  .m.EG.........2.
	defb 00bh,007h,005h,000h,002h,0feh,08dh,03eh,0cch,0e5h,0f0h,0c0h,090h,0b0h,0a4h,086h	; a990  .......>........
	defb 000h,002h,002h,004h,005h,000h,086h,080h,070h,028h,00ch,004h,006h,009h,000h,08ah	; a9a0  ........p(......
	defb 003h,007h,00eh,01dh,01bh,01ah,012h,008h,004h,003h,006h,000h,08ah,0c0h,0e0h,030h	; a9b0  ...............0
	defb 0c8h,028h,0c8h,088h,010h,020h,0c0h,007h,000h,082h,003h,007h,004h,00fh,082h,007h	; a9c0  .(... ..........
	defb 003h,008h,000h,082h,0c0h,0e0h,004h,0f0h,082h,0e0h,0c0h,004h,000h,000h,0aeh,003h	; a9d0  ................
	defb 007h,00bh,00bh,009h,01ch,037h,062h,077h,05fh,03dh,01ch,012h,023h,03dh,000h,0e0h	; a9e0  .....7bw_=..#=..
	defb 070h,0e8h,0e8h,0c8h,0f8h,004h,0fah,0ffh,0ffh,0fdh,072h,0dah,0feh,0ffh,0ffh,000h	; a9f0  p.........r.....
	defb 003h,004h,004h,006h,003h,018h,03dh,02ah,032h,003h,00bh,00dh,01ch,003h,000h,0bdh	; aa00  ......=*2.......
	defb 0e0h,090h,090h,0b0h,000h,0f8h,0dch,052h,002h,026h,0fch,024h,088h,052h,000h,003h	; aa10  .......R.&.$.R..
	defb 005h,00ah,00ch,00eh,016h,030h,064h,048h,058h,031h,01ah,011h,022h,03ch,000h,0e0h	; aa20  .....0dHX1.."<..
	defb 0f0h,028h,008h,00ch,02ah,00dh,003h,00bh,00dh,02ah,0e4h,092h,04eh,033h,01eh,000h	; aa30  .(..*....*..N3..
	defb 003h,007h,007h,001h,00fh,01fh,03bh,037h,027h,00fh,00dh,00eh,01ch,003h,000h,081h	; aa40  ......;7'.......
	defb 0e0h,003h,0f0h,0adh,0f4h,0fah,0fch,0f4h,0f2h,0f4h,0d8h,07ch,03ch,01eh,000h,007h	; aa50  ...........|<...
	defb 00eh,01ch,019h,010h,00fh,019h,033h,064h,065h,042h,069h,044h,0eeh,09dh,07ch,0c0h	; aa60  ......3deBiD..|.
	defb 0e0h,0d0h,0f0h,070h,033h,0e4h,0f9h,0afh,0dfh,09fh,0edh,025h,077h,03bh,0f2h,000h	; aa70  ...p3......%w;..
	defb 007h,003h,00fh,0bdh,000h,00fh,01fh,03bh,03bh,03dh,016h,03bh,071h,078h,000h,000h	; aa80  .......;;=.;qx..
	defb 040h,020h,020h,0a0h,0c0h,003h,086h,0f4h,0f4h,0e2h,003h,0c2h,0e1h,0f0h,000h,003h	; aa90  @  .............
	defb 007h,00eh,00ch,008h,007h,00ch,019h,032h,032h,021h,010h,00ch,005h,008h,00fh,0e0h	; aaa0  .......22!......
	defb 070h,0f8h,0f8h,028h,09bh,0f4h,0f9h,05fh,0efh,04fh,0fdh,025h,0c7h,0e3h,0e2h,000h	; aab0  p..(..._.O.%....
	defb 003h,003h,007h,09bh,000h,007h,00fh,01dh,01dh,01eh,00fh,003h,003h,007h,000h,000h	; aac0  ................
	defb 0a0h,090h,090h,0d0h,060h,083h,0c6h,0f4h,0f4h,0f2h,003h,0c2h,081h,0c0h,000h,000h	; aad0  ....`...........
	defb 0ffh,003h,00dh,014h,02ah,051h,0bah,0bbh,0b7h,0b7h,0bah,0b9h,052h,02dh,014h,00eh	; aae0  ....*Q......R-..
	defb 001h,0f0h,0e8h,0ach,06ah,033h,0b5h,08ah,052h,029h,0f7h,031h,0adh,0deh,0c2h,02ch	; aaf0  ....j3..R).1...,
	defb 0f0h,000h,003h,00bh,015h,02eh,047h,077h,04fh,04fh,077h,046h,02dh,013h,00bh,001h	; ab00  ......GwOOwF-...
	defb 000h,000h,0d0h,0d8h,0b4h,0feh,07ah,077h,0afh,0f6h,078h,0feh,0d6h,0ech,0fch,0d0h	; ab10  ......zw..x.....
	defb 000h,007h,008h,017h,02fh,056h,071h,04bh,095h,0bah,0b2h,0cfh,096h,059h,05ah,032h	; ab20  ..../VqK.....YZ2
	defb 00fh,0e0h,010h,0e8h,0f4h,06ah,086h,0e9h,0d3h,067h,08bh,03fh,0b1h,04eh,024h,0d8h	; ab30  .....j...g.?.N$.
	defb 030h,000h,007h,00ah,012h,029h,00fh,037h,07bh,07dh,07fh,037h,06fh,036h,03dh,00dh	; ab40  0....).7{}.7o6=.
	defb 000h,000h,0e0h,050h,048h,094h,0f8h,0f6h,0eeh,09eh,076h,0f8h,07eh,0b4h,0d8h,0f0h	; ab50  ...PH.....v.~...
	defb 0ffh,0c0h,003h,01fh,029h,056h,06ch,0adh,0b1h,0fah,0b4h,0afh,04ch,055h,06bh,02bh	; ab60  ....)Vl.....LUk+
	defb 01ch,003h,080h,0f0h,04ch,0b6h,0b6h,0c9h,037h,055h,0e9h,053h,0bdh,049h,0b6h,044h	; ab70  ....L...7U.S.I.D
	defb 038h,0c0h,000h,003h,017h,02dh,01fh,05eh,06eh,075h,06fh,05eh,03fh,02bh,037h,017h	; ab80  8....-.^nuo^?+7.
	defb 003h,000h,000h,080h,0b0h,078h,078h,0b6h,0ceh,0eeh,0f6h,0ech,04eh,0b6h,0f8h,0b8h	; ab90  .....xx.....N...
	defb 0c0h,000h,007h,01ah,03bh,024h,05bh,05ah,065h,0dch,0e6h,0d1h,05ch,06dh,053h,02fh	; aba0  ....;$[Ze...\mS/
	defb 019h,007h,0f0h,048h,02ch,0b2h,06ah,0aah,0d5h,0a9h,05dh,04dh,0f2h,06eh,092h,0cch	; abb0  ...H,.j...]M.n..
	defb 038h,0c0h,000h,007h,007h,01bh,03ch,03dh,01bh,067h,079h,06eh,03fh,01eh,02dh,013h	; abc0  8.....<=.gyn?.-.
	defb 007h,000h,000h,0b0h,0f0h,06ch,09ch,0dch,0eah,0deh,0beh,0feh,0ech,0f0h,06ch,0b8h	; abd0  .....l........l.
	defb 082h,0c0h,000h,000h,002h,06fh,086h,07ah,07eh,06fh,03bh,00ah,007h,008h,000h,002h	; abe0  .....o.z~o;.....
	defb 0fbh,086h,0afh,0bfh,0fbh,0eeh,0a8h,0f0h,008h,000h,087h,030h,038h,00fh,033h,03ch	; abf0  ...........08.3<
	defb 00fh,007h,009h,000h,087h,006h,00eh,0f8h,0e6h,01eh,0f8h,0f0h,009h,000h,0ffh,007h	; ac00  ................
	defb 01ch,03bh,037h,02fh,025h,05fh,079h,051h,047h,057h,055h,068h,07bh,03dh,07fh,0f0h	; ac10  .;7/%_yQGWUh{=..
	defb 09ch,06eh,0f6h,0fah,0d2h,0fdh,0cfh,0c5h,0f1h,0f5h,0d5h,08bh,0efh,0deh,0ffh,000h	; ac20  .n..............
	defb 003h,007h,009h,018h,01eh,03dh,03eh,03fh,03ch,02bh,02eh,017h,007h,003h,000h,000h	; ac30  .....=>?<+......
	defb 060h,0f0h,0c8h,08ch,0bch,0deh,03eh,0feh,01eh,0eah,03ah,074h,0f0h,0e0h,000h,007h	; ac40  `.....>...:t....
	defb 01ch,03bh,037h,02fh,025h,05fh,079h,051h,045h,053h,055h,069h,07ah,03dh,07fh,0f0h	; ac50  .;7/%_yQESUiz=..
	defb 09ch,06eh,0f6h,0fah,0d2h,0fdh,0cfh,0c5h,0d1h,0e5h,0d5h,0cbh,0afh,0deh,0ffh,000h	; ac60  .n..............
	defb 003h,007h,009h,018h,01eh,03dh,03eh,03fh,03eh,02ch,02fh,016h,007h,003h,000h,000h	; ac70  .....=>?>,/.....
	defb 060h,0f0h,0c8h,08ch,0bch,0deh,03eh,0feh,03eh,01ah,0fah,034h,070h,0e0h,005h,000h	; ac80  `.....>.>..4p...
	defb 088h,003h,007h,00eh,00dh,00dh,00eh,007h,003h,008h,000h,088h,0c0h,0e0h,070h,0b0h	; ac90  ..............p.
	defb 0b0h,070h,0e0h,0c0h,007h,000h,08ah,003h,007h,00ch,019h,01bh,01bh,019h,00ch,007h	; aca0  .p..............
	defb 003h,006h,000h,08ah,0c0h,0e0h,030h,098h,0d8h,0d8h,098h,030h,0e0h,0c0h,003h,000h	; acb0  ......0....0....
	defb 000h,008h,000h,097h,001h,006h,009h,010h,020h,024h,040h,049h,003h,004h,005h,008h	; acc0  ........ $@I....
	defb 018h,016h,018h,070h,0e0h,000h,000h,040h,080h,000h,004h,00ah,000h,0a7h,001h,006h	; acd0  ...p...@........
	defb 00fh,01fh,01fh,03fh,03eh,000h,003h,003h,007h,007h,009h,007h,00fh,01fh,0ffh,0ffh	; ace0  ...?>...........
	defb 0bfh,07fh,0ffh,0fbh,0ffh,0e0h,0d0h,0f0h,028h,008h,014h,00ah,007h,002h,000h,080h	; acf0  ........(.......
	defb 000h,001h,004h,000h,002h,008h,000h,098h,0c0h,030h,048h,024h,002h,002h,055h,083h	; ad00  .........0H$..U.
	defb 000h,0e0h,020h,0d0h,0f0h,0e8h,0f4h,0f8h,0fdh,0ffh,07fh,0ffh,0feh,0fbh,0ffh,0fdh	; ad10  .. .............
	defb 009h,000h,0c4h,0c0h,0b0h,0d8h,0fch,0fch,0bah,07ch,0a0h,0c9h,0afh,043h,04fh,054h	; ad20  .........|...COT
	defb 070h,020h,033h,01bh,035h,038h,034h,01ah,00fh,000h,080h,0c0h,0c0h,080h,090h,080h	; ad30  p 3.584.........
	defb 04ch,001h,000h,080h,0c0h,0f0h,03fh,0f0h,0c0h,000h,05fh,036h,058h,03ch,030h,02bh	; ad40  L.....?..._6X<0+
	defb 00fh,01fh,00ch,004h,00eh,007h,00bh,005h,000h,000h,07fh,03fh,03fh,07fh,06fh,07fh	; ad50  ...........??.o.
	defb 0b3h,0feh,0ffh,07fh,03fh,00fh,0c0h,003h,000h,0c0h,080h,020h,000h,080h,023h,024h	; ad60  ....?...... ..#$
	defb 031h,000h,0c0h,008h,021h,0ffh,007h,002h,003h,001h,049h,04bh,02bh,035h,053h,019h	; ad70  1...!.....IK+5S.
	defb 025h,017h,067h,0c6h,09ch,00eh,012h,025h,001h,0ffh,07fh,0dfh,0ffh,07fh,0dch,0dbh	; ad80  %.g....%........
	defb 0ceh,0ffh,03fh,0f7h,0deh,000h,001h,001h,000h,000h,0beh,0bch,0d4h,0cah,0ach,0e6h	; ad90  ..?.............
	defb 0fah,0e8h,098h,038h,060h,0f0h,0ech,0dah,0feh,000h,000h,008h,000h,098h,003h,00ch	; ada0  ...8`...........
	defb 012h,024h,040h,040h,0aah,0c1h,007h,00bh,00fh,014h,010h,028h,050h,0e0h,040h,000h	; adb0  .$@@.......(P.@.
	defb 001h,000h,080h,020h,000h,040h,009h,000h,0a6h,003h,00dh,01bh,03fh,03fh,05dh,03eh	; adc0  ... .@......??]>
	defb 000h,007h,004h,00bh,00fh,017h,02fh,01fh,0bfh,0ffh,0feh,0ffh,07fh,0dfh,0ffh,0bfh	; add0  ....../.........
	defb 0c0h,020h,0a0h,010h,018h,068h,018h,00eh,007h,000h,000h,002h,001h,000h,020h,009h	; ade0  . ...h........ .
	defb 000h,098h,080h,060h,090h,008h,004h,024h,002h,092h,000h,0c0h,0c0h,0e0h,0e0h,090h	; adf0  ...`...$........
	defb 0e0h,0f0h,0f8h,0ffh,0ffh,0fdh,0feh,0ffh,0dfh,0ffh,009h,000h,0f4h,080h,060h,0f0h	; ae00  ..............`.
	defb 0f8h,0f8h,0fch,07ch,092h,0d2h,0d4h,0ach,0cah,098h,0a4h,0e8h,0e6h,063h,039h,070h	; ae10  ...|.........c9p
	defb 048h,0a4h,080h,0ffh,001h,004h,000h,001h,0c4h,024h,08ch,000h,003h,010h,084h,0ffh	; ae20  H........$......
	defb 0e0h,040h,0c0h,080h,07dh,03dh,02bh,053h,035h,067h,05fh,017h,019h,01ch,006h,00fh	; ae30  .@..}=+S5g_.....
	defb 037h,05bh,07fh,000h,0feh,0fbh,0ffh,0feh,03bh,0dbh,073h,0ffh,0fch,0efh,07bh,000h	; ae40  7[......;.s...{.
	defb 080h,080h,000h,000h,001h,003h,003h,001h,009h,001h,032h,080h,000h,001h,003h,00fh	; ae50  ..........2.....
	defb 0fch,00fh,003h,000h,005h,093h,0f5h,0c2h,0f2h,02ah,00eh,004h,0cch,0d8h,0ach,01ch	; ae60  .........*......
	defb 02ch,058h,0f0h,000h,0feh,0fch,0fch,0feh,0f6h,0feh,0cdh,07fh,0ffh,0feh,0fch,0f0h	; ae70  ,X..............
	defb 003h,003h,000h,090h,0fah,06ch,01ah,03ch,00ch,0d4h,0f0h,0f8h,030h,020h,070h,0e0h	; ae80  .....l.<....0 p.
	defb 0d0h,0a0h,000h,000h,000h,008h,000h,098h,003h,00dh,012h,024h,040h,040h,0aah,0c1h	; ae90  ...........$@@..
	defb 007h,00bh,00fh,014h,010h,02eh,05fh,0edh,05ah,0d5h,073h,02ch,0d8h,03fh,017h,043h	; aea0  ......_.Z.s,.?.C
	defb 009h,000h,0a7h,002h,00dh,01bh,03fh,03fh,05dh,03eh,000h,007h,004h,00bh,00fh,011h	; aeb0  ......??]>......
	defb 020h,013h,0a5h,02eh,08ch,0d3h,027h,0c0h,0e8h,0bch,0c0h,020h,0a0h,010h,018h,0e8h	; aec0   .....'.... ....
	defb 0f8h,06eh,0a7h,054h,09eh,06eh,039h,0f8h,0f4h,048h,008h,000h,098h,080h,060h,090h	; aed0  .n.T.n9..H....`.
	defb 008h,004h,024h,002h,092h,000h,0c0h,0c0h,0e0h,0e0h,010h,000h,090h,058h,0ebh,061h	; aee0  ..$..........X.a
	defb 091h,0c6h,007h,00bh,0b7h,009h,000h,0f3h,080h,060h,0f0h,0f8h,0f8h,0fch,07ch,093h	; aef0  .........`....|.
	defb 0d1h,0c1h,0c7h,0c3h,0a8h,0e4h,0e8h,0f5h,068h,038h,07eh,04fh,0a7h,083h,0ffh,004h	; af00  ........h8~O....
	defb 081h,080h,0c1h,0f8h,0fdh,0ffh,076h,039h,05eh,06fh,095h,084h,064h,08ch,0f8h,07ch	; af10  ......v9^o..d..|
	defb 03eh,03eh,038h,03ch,05fh,01fh,017h,00ah,017h,007h,001h,030h,058h,07ch,000h,0fbh	; af20  >>8<_......0X|..
	defb 07eh,07fh,03eh,00fh,002h,000h,089h,0c6h,0a1h,090h,068h,0f8h,0f8h,070h,000h,081h	; af30  ~.>.......h..p..
	defb 00bh,003h,017h,05fh,077h,0feh,0beh,06fh,09eh,0fch,01dh,01fh,00fh,003h,000h,005h	; af40  ..._w..o........
	defb 093h,0f5h,0c2h,0f2h,02ah,00eh,084h,06ch,038h,0ach,01ch,0ach,058h,0f0h,000h,07eh	; af50  ....*..l8...X..~
	defb 0f4h,0fch,0f8h,0e0h,088h,001h,041h,090h,061h,003h,002h,004h,000h,090h,0fah,06ch	; af60  ......A.a......l
	defb 01ah,03ch,00ch,0d4h,0f0h,078h,090h,0e0h,070h,0e0h,050h,0a0h,000h,000h,000h,008h	; af70  .<...x..p.P.....
	defb 000h,098h,001h,006h,009h,010h,020h,024h,040h,049h,003h,004h,005h,008h,018h,017h	; af80  ...... $@I......
	defb 01fh,076h,0e5h,02ah,079h,076h,09ch,01fh,02fh,012h,009h,000h,0a7h,001h,006h,00fh	; af90  .v.*yv../.......
	defb 01fh,01fh,03fh,03eh,000h,003h,003h,007h,007h,008h,000h,009h,01ah,0d7h,086h,089h	; afa0  ..?>............
	defb 063h,0e0h,0d0h,0edh,0e0h,0d0h,0f0h,028h,008h,074h,0fah,0b7h,05ah,0abh,0ceh,034h	; afb0  c......(.t..Z..4
	defb 01bh,0fch,0e8h,0c2h,008h,000h,098h,0c0h,0b0h,048h,024h,002h,002h,055h,083h,000h	; afc0  .........H$..U..
	defb 0e0h,020h,0d0h,0f0h,088h,004h,0c8h,0a5h,074h,031h,0cbh,0e4h,003h,017h,03dh,009h	; afd0  . ......t1....=.
	defb 000h,0c3h,040h,0b0h,0d8h,0fch,0fch,0bah,07ch,0a0h,0c9h,0afh,043h,04fh,054h,070h	; afe0  ..@.....|...COTp
	defb 021h,036h,01ch,035h,038h,035h,01ah,00fh,000h,081h,0d0h,0c0h,0e8h,0fah,0eeh,07fh	; aff0  !6.585..........
	defb 07dh,0f6h,079h,03fh,0b8h,0f8h,0f0h,0c0h,000h,05fh,036h,058h,03ch,030h,02bh,00fh	; b000  }.y?....._6X<0+.
	defb 01eh,009h,007h,00eh,007h,00ah,005h,000h,000h,07eh,02fh,03fh,01fh,007h,011h,080h	; b010  .........~/?....
	defb 082h,009h,086h,0c0h,040h,004h,000h,0c0h,020h,081h,001h,083h,01fh,0bfh,0ffh,06eh	; b020  ....@... ......n
	defb 09ch,07ah,0f6h,0a9h,021h,026h,031h,01fh,0c9h,08bh,083h,0e3h,0c3h,015h,027h,017h	; b030  .z..!&1.......'.
	defb 0afh,016h,01ch,07eh,0f2h,0e5h,0c1h,0ffh,0dfh,07eh,0feh,07ch,0f0h,040h,000h,091h	; b040  ...~.....~.|.@..
	defb 063h,085h,009h,016h,01fh,01fh,00eh,000h,03eh,07ch,07ch,01ch,03ch,0fah,0f8h,0e8h	; b050  c.......>||.<...
	defb 050h,0e8h,0e0h,080h,00ch,01ah,03eh,000h,000h,09bh,007h,008h,010h,010h,024h,02bh	; b060  P.....>.......$+
	defb 059h,038h,07ch,04dh,0a5h,0ceh,07dh,01eh,00eh,00ch,080h,0c0h,060h,050h,028h,006h	; b070  Y8|M..}.....`P(.
	defb 009h,021h,040h,0f0h,0c0h,003h,000h,09dh,042h,000h,000h,007h,00fh,00fh,01fh,01ch	; b080  .!@.....B.......
	defb 026h,007h,003h,032h,05ah,031h,002h,001h,001h,003h,000h,080h,0c0h,0e0h,0d0h,0f8h	; b090  &..2Z1..........
	defb 0f6h,0dfh,0bfh,00fh,03fh,003h,0ffh,082h,0bdh,0ffh,007h,000h,089h,080h,0c0h,060h	; b0a0  ....?..........`
	defb 038h,00eh,003h,000h,000h,014h,00dh,000h,083h,0c0h,020h,010h,008h,000h,088h,080h	; b0b0  8......... .....
	defb 0c0h,0e0h,0f8h,0feh,0ffh,0ffh,0fbh,00eh,000h,0a3h,0c0h,0e0h,01eh,01ch,03ch,01ch	; b0c0  ..............<.
	defb 018h,009h,009h,013h,021h,040h,045h,0abh,0c7h,087h,05fh,07dh,00ah,006h,007h,00eh	; b0d0  ....!@E..._}....
	defb 00dh,01eh,09fh,0dfh,03fh,0ffh,0c7h,083h,0c4h,094h,03ch,0f8h,001h,003h,003h,0a7h	; b0e0  ....?.....<.....
	defb 007h,006h,006h,00ch,01eh,03fh,03ah,074h,078h,079h,030h,000h,0f5h,0f9h,0f8h,0f1h	; b0f0  .....?:txy0.....
	defb 0f2h,0e1h,060h,020h,0c0h,000h,038h,07ch,038h,0e8h,0f0h,000h,038h,0a2h,047h,00dh	; b100  ..` ..8|8...8.G.
	defb 05ah,0ach,0dah,0fdh,0ffh,0f9h,0f0h,005h,000h,098h,010h,008h,048h,098h,008h,028h	; b110  Z...........H..(
	defb 004h,00ch,002h,085h,0c1h,0e9h,0fdh,0afh,0dfh,07eh,0e7h,05dh,0b8h,0f2h,0a5h,053h	; b120  .........~.]...S
	defb 025h,002h,008h,000h,081h,0e0h,005h,0f0h,002h,0f8h,088h,0fch,07eh,03eh,016h,002h	; b130  %...........~>..
	defb 05ah,03ch,000h,000h,0ach,001h,002h,004h,004h,009h,00ah,016h,00eh,01fh,013h,029h	; b140  Z<.............)
	defb 033h,01fh,007h,003h,003h,0e0h,030h,018h,014h,00ah,0c1h,042h,008h,010h,02ch,070h	; b150  3.....0....B..,p
	defb 0a0h,040h,080h,090h,000h,000h,001h,003h,003h,007h,007h,009h,001h,000h,00ch,016h	; b160  .@..............
	defb 00ch,005h,000h,08fh,0e0h,0f0h,0f8h,0f4h,03eh,0bdh,0f7h,0efh,0d3h,08fh,05fh,0bfh	; b170  ........>....._.
	defb 07fh,06fh,0ffh,005h,000h,08bh,080h,040h,060h,030h,018h,00eh,003h,000h,000h,080h	; b180  .o.....@`0......
	defb 005h,00bh,000h,085h,080h,0c0h,030h,008h,004h,006h,000h,08ah,080h,0c0h,0e0h,0f0h	; b190  ......0.........
	defb 0f8h,0feh,0ffh,0ffh,07fh,0feh,00ch,000h,08fh,080h,0c0h,0f0h,0f8h,005h,00bh,00fh	; b1a0  ................
	defb 007h,003h,002h,003h,002h,002h,003h,001h,005h,000h,092h,082h,041h,040h,0a0h,0c2h	; b1b0  ............A@..
	defb 0e0h,070h,0e8h,0e0h,040h,0e5h,0d3h,08bh,08eh,0ddh,07bh,002h,004h,003h,000h,084h	; b1c0  .p..@.....{.....
	defb 001h,000h,001h,001h,007h,000h,0d0h,07dh,0beh,0bfh,05fh,03dh,01fh,08fh,017h,01fh	; b1d0  .......}.._=....
	defb 0bfh,03ah,06ch,074h,079h,032h,000h,08ah,0d5h,0ebh,0deh,07ch,07dh,07ch,07ah,0fch	; b1e0  .:lty2.....|}|z.
	defb 0f8h,0bah,0adh,05eh,015h,02eh,0cfh,004h,082h,012h,062h,004h,008h,008h,018h,028h	; b1f0  ...^......b....(
	defb 050h,030h,010h,010h,0a0h,0e0h,0c0h,07dh,02ah,014h,021h,083h,082h,083h,085h,003h	; b200  P0.....}*.!.....
	defb 007h,045h,042h,0a1h,0ebh,0c5h,000h,0f8h,07ch,0fch,0bch,0f8h,0f0h,0f0h,0e0h,0d0h	; b210  .EB.....|.......
	defb 0a0h,0c0h,0e0h,0e0h,0c0h,0c0h,000h,000h,00dh,000h,083h,003h,004h,008h,007h,000h	; b220  ................
	defb 089h,001h,003h,006h,01ch,070h,0c0h,000h,000h,028h,00eh,000h,082h,003h,007h,008h	; b230  .....p...(......
	defb 000h,0e3h,001h,003h,007h,01fh,07fh,0ffh,0ffh,0dfh,001h,003h,006h,00ah,014h,060h	; b240  ...............`
	defb 090h,084h,002h,00dh,003h,001h,000h,000h,042h,000h,0e0h,010h,008h,008h,024h,0d4h	; b250  ........B.....$.
	defb 09ah,01ch,03eh,032h,0a5h,073h,0beh,078h,070h,030h,000h,001h,003h,007h,00bh,01fh	; b260  ..>2.s.xp0......
	defb 06fh,0fbh,0fdh,0f2h,0fch,0feh,0ffh,0ffh,0bdh,0ffh,000h,0e0h,0f0h,0f0h,0f8h,038h	; b270  o..............8
	defb 064h,0e0h,0c0h,0cch,05ah,08ch,040h,080h,080h,0c0h,008h,010h,012h,019h,010h,014h	; b280  d...Z.@.........
	defb 020h,030h,040h,0a1h,083h,097h,0bfh,0f5h,0e3h,07eh,01ch,045h,0e2h,0b0h,05ah,035h	; b290   0@......~.E..Z5
	defb 05bh,0bfh,0ffh,09fh,00fh,005h,000h,081h,007h,005h,00fh,002h,01fh,090h,03fh,07eh	; b2a0  [.............?~
	defb 07ch,068h,040h,05ah,03ch,000h,0e7h,0bah,01dh,04fh,0a5h,0cah,0a4h,040h,008h,000h	; b2b0  |h@Z<....O...@..
	defb 0c0h,050h,060h,0e0h,070h,0b0h,078h,0f9h,0fbh,0fch,0ffh,0e3h,0c1h,023h,029h,03ch	; b2c0  .P`.p.x......#)<
	defb 01fh,068h,030h,03ch,038h,018h,090h,090h,0c8h,084h,002h,0a2h,0d5h,0e3h,0e1h,0fah	; b2d0  .h0<8...........
	defb 0beh,0afh,09fh,01fh,08fh,04fh,087h,006h,004h,003h,000h,01ch,03eh,01ch,017h,00fh	; b2e0  .....O......>...
	defb 000h,090h,0c8h,0c0h,0c0h,0e0h,060h,060h,030h,078h,0fch,05ch,02eh,01eh,09eh,00ch	; b2f0  ......``0x.\....
	defb 000h,000h,00bh,000h,085h,001h,003h,00ch,010h,020h,005h,000h,08bh,001h,002h,006h	; b300  ......... ......
	defb 00ch,018h,070h,0c0h,000h,000h,001h,0a0h,00ch,000h,084h,001h,003h,00fh,01fh,006h	; b310  ..p.............
	defb 000h,0c6h,001h,003h,007h,00fh,01fh,07fh,0ffh,0ffh,0feh,07fh,007h,00ch,018h,028h	; b320  ...............(
	defb 050h,083h,042h,010h,008h,034h,00eh,005h,002h,001h,009h,000h,080h,040h,020h,020h	; b330  P.B..4.......@
	defb 090h,050h,068h,070h,0f8h,0c8h,094h,0cch,0f8h,0e0h,0c0h,0c0h,000h,007h,00fh,01fh	; b340  .Php............
	defb 02fh,07ch,0bdh,0efh,0f7h,0cbh,0f1h,0fah,0fdh,0feh,0f6h,0ffh,000h,080h,0c0h,0c0h	; b350  /|..............
	defb 0e0h,0e0h,090h,080h,000h,030h,068h,030h,004h,000h,0dbh,020h,041h,048h,046h,020h	; b360  .....0h0... AHF
	defb 010h,010h,018h,014h,00ah,00ch,008h,008h,005h,007h,003h,051h,0abh,0d7h,07bh,03eh	; b370  ...........Q..{>
	defb 0beh,03eh,05eh,03fh,01fh,05dh,0b5h,07ah,0a8h,074h,0f3h,01fh,03eh,03fh,03dh,01fh	; b380  .>^?.].z.t..>?=.
	defb 00fh,00fh,007h,00bh,005h,003h,007h,007h,003h,003h,000h,0beh,054h,028h,084h,0c1h	; b390  ............T(..
	defb 041h,0c1h,0a1h,0c0h,0e0h,0a2h,042h,085h,0d7h,0a3h,000h,041h,082h,002h,005h,043h	; b3a0  A.....B....A...C
	defb 007h,00eh,017h,007h,002h,0a7h,0cbh,0d1h,071h,0bbh,0deh,0a0h,0d0h,0f0h,0e0h,0c0h	; b3b0  ........q.......
	defb 040h,0c0h,040h,040h,0c0h,080h,005h,000h,092h,0beh,07dh,0fdh,0fah,0bch,0f8h,0f1h	; b3c0  @.@@......}.....
	defb 0e8h,0f8h,0fdh,05ch,036h,02eh,09eh,04ch,000h,040h,020h,003h,000h,084h,080h,000h	; b3d0  ...\6..L.@ .....
	defb 080h,080h,007h,000h,000h,0afh,00eh,017h,039h,05eh,0e4h,080h,0fbh,067h,03eh,01ch	; b3e0  ........9^...g>.
	defb 019h,03ah,073h,066h,079h,030h,000h,000h,080h,0c0h,070h,018h,004h,082h,081h,039h	; b3f0  .:sfy0....p....9
	defb 063h,0c1h,0cbh,0c5h,0c5h,0fah,000h,00eh,01fh,02fh,07fh,07fh,00fh,03bh,007h,00fh	; b400  c......../...;..
	defb 00eh,01dh,03ch,039h,030h,004h,000h,0bch,080h,0c0h,0f0h,0f8h,0fch,0feh,0c6h,0beh	; b410  ..<90...........
	defb 07eh,074h,07ah,0fah,000h,00eh,017h,039h,05eh,0e4h,080h,06bh,077h,066h,03bh,016h	; b420  ~tz....9^..kwf;.
	defb 016h,02ah,02ch,02dh,016h,000h,000h,0c0h,0f0h,078h,01ch,006h,083h,093h,031h,061h	; b430  .*,-.....x....1a
	defb 0ceh,0e6h,0b2h,062h,03ch,000h,00eh,01fh,02fh,07fh,07fh,01fh,00bh,03bh,005h,00bh	; b440  ...b<.../....;..
	defb 00bh,017h,017h,016h,004h,000h,08dh,0c0h,0f0h,0f8h,0fch,0feh,0eeh,0deh,0beh,078h	; b450  ...............x
	defb 03ch,05ch,03ch,000h,000h,002h,000h,09eh,003h,00ch,00bh,014h,02eh,029h,02fh,035h	; b460  <\<..........)/5
	defb 034h,07eh,057h,07ah,063h,041h,000h,000h,0e0h,038h,014h,0b6h,0aah,0dah,0f9h,055h	; b470  4~WzcA...8.....U
	defb 05dh,027h,0d7h,09eh,0beh,054h,003h,000h,08ch,003h,007h,00fh,01fh,01fh,01eh,01eh	; b480  ]'...T..........
	defb 01bh,025h,02ah,021h,001h,004h,000h,0ach,0e0h,0e8h,0f8h,0fch,07ch,0eeh,0feh,0aeh	; b490  .%*!........|...
	defb 0deh,0aeh,064h,054h,000h,000h,003h,006h,019h,030h,037h,02fh,02eh,014h,017h,010h	; b4a0  ..dT.....07/....
	defb 009h,009h,005h,003h,000h,000h,0e0h,0b8h,044h,006h,076h,0fah,0bah,094h,0f4h,024h	; b4b0  ........D.v....$
	defb 0c8h,048h,0d0h,0e0h,003h,000h,08ch,003h,007h,01fh,01fh,01ch,019h,00fh,00eh,00fh	; b4c0  .H..............
	defb 006h,007h,003h,004h,000h,099h,0e0h,0f8h,0fch,0fch,09ch,0cch,0f8h,038h,0f8h,030h	; b4d0  .............8.0
	defb 0f0h,0e0h,000h,000h,003h,006h,019h,030h,037h,02fh,02eh,011h,017h,01eh,013h,003h	; b4e0  .......07/......
	defb 00bh,08dh,005h,002h,0e0h,0b8h,044h,006h,076h,0fah,0bah,0c4h,0f4h,03ch,0e4h,003h	; b4f0  ......D.v....<..
	defb 0e8h,0a2h,0d0h,020h,000h,003h,007h,01fh,01fh,01ch,019h,00fh,00eh,00fh,00dh,004h	; b500  ... ............
	defb 004h,006h,003h,001h,000h,0e0h,0f8h,0fch,0fch,09ch,0cch,0f8h,038h,0f8h,058h,010h	; b510  ............8.X.
	defb 010h,030h,0e0h,0c0h,000h,0cch,0cch,0cch,0cch,0cah,0ffh,0ffh,0ffh,0cah,0cch,0cch	; b520  .0..............
	defb 0cch,0cah,0ffh,0ffh,0ffh,0cah,0cch,0cch,0cch,0cah,0afh,0ffh,0fah,0cah,0ach,0cch	; b530  ................
	defb 0cah,0cah,0aah,0afh,0fah,0cch,0cch,0cch,0cfh,0ffh,0fah,0aah,0afh,0cch,0cfh,0aah	; b540  ................
	defb 0afh,0aah,0ach,0aah,0afh,0aah,0ach,0aah,0afh,0aah,0fch,0aah,0afh,0aah,0cah,0aah	; b550  ................
	defb 0afh,0aah,0cfh,0fah,0afh,0cah,0ffh,0fch,0cah,0cah,0cch,0cah,0aah,0cah,0fah,0ffh	; b560  ................
	defb 0aah,0cah,0cah,0cch,0ffh,0cah,0afh,0fch,0cch,0cah,0ach,0cah,0cah,0cah,0aah,0aah	; b570  ................
	defb 0aah,0ffh,0ffh,0ffh,0ffh,0aah,0cch,0cfh,0afh,0afh,0ffh,0ach,0afh,0ach,0cch,0ach	; b580  ................
	defb 0afh,0fch,0ach,0fch,0afh,0cah,0aah,0cch,0afh,0aah,0aah,0ach,0afh,0aah,0aah,0aah	; b590  ................
	defb 0afh,0ffh,0ffh,0ffh,0ffh,01ah,0fah,0fah,0aah,01ch,0cch,0aah,0cch,01ch,0aah,0ffh	; b5a0  ................
	defb 0aah,01ch,0aah,0fch,0fch,01ch,0afh,0fch,0fch,01ch,0afh,0cah,0aah,01ch,0aah,0aah	; b5b0  ................
	defb 0fch,01ch,0afh,0cah,0fch,0aah,0aah,0fah,0a1h,0cch,0aah,0cch,0f1h,0aah,0fch,0aah	; b5c0  ................
	defb 0f1h,0aah,0cah,0aah,0f1h,0aah,0aah,0ffh,0f1h,0aah,0aah,0aah,0f1h,0aah,0afh,0cah	; b5d0  ................
	defb 0f1h,0aah,0afh,0cah,0f1h,01ch,0aah,0afh,0fch,01ch,0aah,0aah,0fch,01ch,0afh,0cah	; b5e0  ................
	defb 0afh,01ch,0afh,0cah,0ffh,01ch,0fch,0afh,0fch,01ch,0aah,0afh,0cah,01fh,0ffh,0ffh	; b5f0  ................
	defb 0ffh,011h,011h,011h,011h,0aah,0fch,0aah,0f1h,0afh,0cah,0aah,0f1h,0afh,0cah,0aah	; b600  ................
	defb 0f1h,0ffh,0cah,0aah,0f1h,0afh,0cah,0aah,0f1h,0aah,0fch,0aah,0f1h,0ffh,01fh,0ffh	; b610  ................
	defb 0f1h,011h,011h,011h,011h,0ffh,011h,011h,011h,0f1h,0aah,01ah,0a1h,0f1h,0ach,0aah	; b620  ................
	defb 0cch,01ah,0a1h,011h,0aah,011h,011h,011h,011h,01ch,0cch,0cch,0cch,01ah,0aah,0aah	; b630  ................
	defb 0aah,011h,011h,011h,011h,011h,011h,011h,011h,01ah,0aah,0a1h,0aah,0aah,0ach,0aah	; b640  ................
	defb 0ach,01ah,01ah,0a1h,0a1h,011h,011h,011h,011h,0cch,0cch,0cch,0cch,0aah,0aah,0aah	; b650  ................
	defb 0aah,011h,011h,011h,011h,011h,011h,011h,0ffh,0aah,0aah,0aah,01dh,01ah,0cah,0cah	; b660  ................
	defb 0a1h,01ah,01ah,011h,011h,011h,011h,011h,011h,0cch,0cch,0cch,0c1h,0aah,0aah,0aah	; b670  ................
	defb 0c1h,011h,011h,011h,011h,01ah,0a1h,0aah,0aah,01ah,0aah,0ach,0aah,01ah,0cah,0cch	; b680  ................
	defb 0cah,01ch,0cch,0cch,0cch,01ch,0cch,0ach,0bch,01ch,0bch,0cbh,0bch,01ah,0cch,0cch	; b690  ................
	defb 0cah,011h,0ach,0aah,0a1h,0a1h,0aah,01ah,0aah,0a1h,0aah,0aah,0ach,0ach,0ach,0ach	; b6a0  ................
	defb 0ach,0cch,0ach,0cch,0ach,0cch,0cch,0cch,0cch,0cbh,0bch,0ach,0bbh,0cch,0cch,0cch	; b6b0  ................
	defb 0cch,0ach,0cah,0ach,0aah,0aah,0aah,0aah,0a1h,0aah,0cah,0ach,0a1h,0ach,0cah,0cch	; b6c0  ................
	defb 0a1h,0cch,0cch,0cch,0c1h,0cch,0bch,0bch,0c1h,0cch,0bch,0cch,0a1h,0cch,0cch,0cah	; b6d0  ................
	defb 011h,0ach,0ach,0aah,01fh,01fh,0ddh,01dh,0cch,01fh,0ddh,01dh,0cch,01dh,0cch,01dh	; b6e0  ................
	defb 0cch,01dh,0cch,01dh,0cch,01dh,0cch,01dh,0cch,01dh,0cch,01dh,0cch,01dh,0cch,01dh	; b6f0  ................
	defb 0cch,01dh,0cch,01dh,0cch,01dh,0cch,01dh,0cch,01dh,0cch,01dh,0cch,01dh,0cch,01dh	; b700  ................
	defb 0cch,01dh,0cch,01dh,0cch,01dh,0cch,01dh,0cch,01dh,0cch,01dh,0cch,01dh,0cch,01dh	; b710  ................
	defb 0cch,01dh,0cch,01dh,0cch,0fbh,0bdh,0bbh,0bfh,0fbh,0ddh,0ddh,0ddh,0fbh,0ddh,0ddh	; b720  ................
	defb 0fdh,0ffh,0ffh,0fdh,0ddh,0bbh,0dbh,0fdh,0dfh,0bdh,0dfh,0fdh,0ddh,0bdh,0ddh,0fdh	; b730  ................
	defb 0ddh,0bfh,0fdh,0ffh,0ffh,01dh,0dfh,0ddh,0ddh,0fdh,0ffh,0ffh,0ffh,0fbh,0ffh,0ffh	; b740  ................
	defb 01fh,0ffh,0f1h,01fh,0ffh,0bbh,0dbh,01fh,0f1h,0bdh,0dfh,0ffh,0ffh,0bdh,0ddh,0fdh	; b750  ................
	defb 0ffh,0bfh,0fdh,0ffh,0f1h,01bh,0bdh,0bbh,0bfh,01dh,0ddh,0ddh,0ddh,01dh,0fdh,0ddh	; b760  ................
	defb 0fdh,011h,011h,0fdh,0ddh,0ddh,0fdh,01dh,0dfh,0dfh,0f1h,01fh,0ddh,0dfh,0ffh,01fh	; b770  ................
	defb 0fdh,0d1h,01fh,011h,011h,01dh,0dfh,0ddh,0d1h,01dh,0ffh,0ffh,0ffh,01dh,0ffh,0ffh	; b780  ................
	defb 01fh,011h,011h,01fh,0ffh,0ddh,0fdh,01fh,0f1h,0dfh,0f1h,01fh,0ffh,0dfh,0ffh,01fh	; b790  ................
	defb 0ffh,0d1h,01fh,011h,011h,011h,011h,011h,011h,0ddh,0ddh,0ddh,0ddh,0ddh,0ddh,0ddh	; b7a0  ................
	defb 0ddh,0ffh,0ffh,0ffh,0ffh,011h,011h,011h,011h,0ddh,0ddh,0ddh,0ddh,0ddh,0ddh,0ddh	; b7b0  ................
	defb 0ddh,0ffh,0ffh,0ffh,0ffh,011h,011h,011h,011h,0bbh,0bbh,0bbh,0bbh,0bbh,0bbh,0bbh	; b7c0  ................
	defb 0bbh,0ddh,0ddh,0ddh,0ddh,011h,011h,011h,011h,0bbh,0bbh,0bbh,0bbh,0bbh,0bbh,0bbh	; b7d0  ................
	defb 0bbh,0ddh,0ddh,0ddh,0ddh,011h,0aah,0a1h,0a1h,01fh,011h,01ah,0a1h,01ah,0f1h,011h	; b7e0  ................
	defb 011h,01ch,0a1h,0afh,0f1h,01ch,0aah,01ch,0aah,011h,0aah,01ch,0aah,0d1h,0cah,01ch	; b7f0  ................
	defb 0aah,0d1h,0cah,0a1h,0cah,0aah,0aah,0aah,0cah,0aah,01ah,01ah,0a1h,011h,0f1h,0f1h	; b800  ................
	defb 011h,0afh,0ffh,01fh,0f1h,01ah,0a1h,0aah,0a1h,01ah,01ch,0aah,011h,011h,01ch,0aah	; b810  ................
	defb 011h,0a1h,01ch,0aah,011h,0aah,0aah,0aah,011h,0a1h,0a1h,01ah,0a1h,011h,011h,011h	; b820  ................
	defb 011h,011h,011h,011h,011h,011h,011h,011h,011h,011h,011h,011h,011h,011h,011h,011h	; b830  ................
	defb 011h,011h,011h,011h,011h,0aah,0aah,0a1h,011h,011h,0a1h,011h,01fh,011h,01ah,0f1h	; b840  ................
	defb 01fh,011h,01ch,0aah,01fh,011h,01ch,0aah,011h,011h,0a1h,0cah,01fh,011h,0a1h,0cah	; b850  ................
	defb 01fh,011h,0a1h,0cah,011h,001h,0cah,0a1h,0cah,001h,0cah,0a1h,0cah,001h,0cah,0a1h	; b860  ................
	defb 01ch,001h,01ch,0a1h,01ch,0ddh,01ch,0a1h,01ch,0d1h,01ch,0a1h,0a1h,0d1h,01ch,0a1h	; b870  ................
	defb 0a1h,0d0h,011h,01ah,01ah,0a1h,0cah,0a1h,0a1h,0a1h,0cah,0a1h,0a1h,0aah,01ah,0a1h	; b880  ................
	defb 0a1h,0aah,01ah,01ah,0a1h,0aah,01ah,01ah,0a1h,0cah,0a1h,0aah,0a1h,0cah,0a1h,0cah	; b890  ................
	defb 0a1h,011h,011h,011h,011h,011h,0cah,01ch,011h,011h,0cah,01ch,01fh,011h,0cah,011h	; b8a0  ................
	defb 01fh,011h,0cah,01fh,0ffh,011h,0cah,01fh,0f1h,011h,0cah,01fh,0ffh,011h,0cah,01fh	; b8b0  ................
	defb 0ffh,011h,011h,011h,011h,01bh,0fdh,0bdh,0ddh,01bh,0fdh,0bdh,0ddh,01bh,0ffh,0bdh	; b8c0  ................
	defb 0ddh,01bh,01dh,0bdh,0ddh,01bh,0fdh,011h,011h,01bh,0fdh,01fh,0ddh,011h,011h,01fh	; b8d0  ................
	defb 0ddh,01fh,0ddh,01fh,0ddh,0fdh,0fbh,011h,011h,0fdh,0ddh,01fh,0ddh,011h,011h,01fh	; b8e0  ................
	defb 0ddh,01fh,0ddh,01fh,0ddh,01fh,0ddh,01fh,0ddh,01fh,0ddh,01fh,0ddh,01fh,0ddh,01fh	; b8f0  ................
	defb 0ddh,01fh,0ddh,01fh,0ddh,01fh,0ddh,01fh,0ddh,01fh,0ddh,01fh,0ddh,01fh,0ddh,01fh	; b900  ................
	defb 0ddh,01fh,0ddh,01fh,0ddh,01fh,0ddh,01dh,0cch,01fh,0ddh,01dh,0cch,01dh,0cch,01dh	; b910  ................
	defb 0cch,01dh,0cch,01dh,0cch,000h,011h,011h,011h,001h,0ceh,0ceh,0eeh,01eh,0cch,0ceh	; b920  ................
	defb 011h,01eh,0cch,0c1h,0eeh,01eh,0cch,0cch,011h,01ch,0cch,0ceh,0eeh,01eh,0cch,0c1h	; b930  ................
	defb 011h,01ch,0cch,0ceh,0eeh,011h,011h,011h,000h,0eeh,0cch,0cch,010h,011h,0ech,0cch	; b940  ................
	defb 0c1h,0eeh,01ch,0cch,021h,011h,0cch,0c2h,021h,01eh,0cch,0cch,021h,01eh,0c2h,0cch	; b950  ....!...!...!...
	defb 0c1h,01eh,0cch,0cch,021h,01ch,0cch,0c1h,011h,011h,022h,0c2h,0cch,011h,011h,011h	; b960  ....!.....".....
	defb 011h,012h,012h,021h,012h,012h,012h,021h,021h,012h,021h,021h,021h,001h,012h,022h	; b970  ...!...!!.!!!.."
	defb 021h,000h,011h,011h,011h,01eh,0cch,0cch,021h,0cch,0cch,022h,011h,011h,011h,011h	; b980  !.......!.."....
	defb 021h,021h,021h,022h,011h,022h,021h,012h,011h,021h,022h,012h,021h,021h,022h,012h	; b990  !!!"."!..!".!!".
	defb 010h,011h,011h,011h,000h,000h,000h,000h,071h,011h,000h,000h,000h,000h,000h,000h	; b9a0  ........q.......
	defb 072h,073h,013h,012h,000h,000h,000h,000h,074h,075h,076h,016h,015h,014h,000h,000h	; b9b0  rs......tuv.....
	defb 077h,078h,079h,07ah,01ah,019h,018h,017h,000h,07bh,07ch,07dh,07eh,01eh,01dh,01ch	; b9c0  wxyz.....{|}~...
	defb 01bh,000h,07fh,080h,081h,082h,062h,061h,060h,01fh,000h,083h,084h,085h,086h,066h	; b9d0  ......ba`......f
	defb 065h,064h,08bh,0cfh,087h,088h,089h,08ah,06ah,069h,068h,08ch,0ceh,0cch,0cdh,0ceh	; b9e0  ed......jih.....
	defb 0ceh,0ceh,0ceh,0ceh,0ceh,0ceh,030h,031h,000h,032h,033h,000h,034h,035h,000h,036h	; b9f0  ......01.23.45.6
	defb 037h,0cfh,0cch,0cdh,0ceh,007h,07ch,07dh,008h,033h,090h,091h,034h,035h,03bh,03ch	; ba00  7.....|}.3..45;<
	defb 036h,037h,038h,039h,03ah,003h,004h,005h,006h,007h,008h,000h,009h,00ah,00bh,00ch	; ba10  6789:...........
	defb 00dh,00eh,00fh,010h,011h,012h,013h,014h,015h,016h,000h,04ch,017h,018h,019h,01ah	; ba20  ...........L....
	defb 000h,000h,01bh,01ch,01dh,01eh,01fh,020h,021h,022h,023h,024h,000h,025h,026h,027h	; ba30  ....... !"#$.%&'
	defb 028h,04dh,029h,02ah,02bh,02ch,02dh,02eh,02fh,030h,031h,000h,000h,000h,03bh,000h	; ba40  (M)*+,-./01...;.
	defb 000h,000h,000h,039h,03ah,03ch,03dh,03eh,03fh,040h,041h,042h,043h,044h,045h,046h	; ba50  ...9:<=>?@ABCDEF
	defb 047h,036h,037h,038h,036h,037h,038h,036h,000h,000h,03bh,000h,039h,03ah,03ch,03dh	; ba60  G6786786..;.9:<=
	defb 041h,042h,043h,044h,036h,037h,038h,036h,000h,0bbh,008h,0bbh,012h,0bbh,01bh,0bbh	; ba70  ABCD6786........
	defb 023h,0bbh,02ch,0bbh,035h,0bbh,03fh,0bbh,049h,0bbh,051h,0bbh,05ah,0bbh,064h,0bbh	; ba80  #.,.5.?.I.Q.Z.d.
	defb 039h,0bdh,06eh,0bbh,076h,0bbh,080h,0bbh,085h,0bbh,08ah,0bbh,094h,0bbh,094h,0bbh	; ba90  9.n.v...........
	defb 09eh,0bbh,0a7h,0bbh,0b1h,0bbh,0b9h,0bbh,0c3h,0bbh,0cch,0bbh,0d6h,0bbh,0dfh,0bbh	; baa0  ................
	defb 0e6h,0bbh,0f0h,0bbh,0f8h,0bbh,001h,0bch,009h,0bch,013h,0bch,01bh,0bch,025h,0bch	; bab0  ..............%.
	defb 02eh,0bch,037h,0bch,040h,0bch,047h,0bch,051h,0bch,05bh,0bch,065h,0bch,06fh,0bch	; bac0  ..7.@.G.Q.[.e.o.
	defb 078h,0bch,07eh,0bch,087h,0bch,08fh,0bch,099h,0bch,0a2h,0bch,0a7h,0bch,0b1h,0bch	; bad0  x.~.............
	defb 0b9h,0bch,0c1h,0bch,0c9h,0bch,0d2h,0bch,0d2h,0bch,0dbh,0bch,0e5h,0bch,0efh,0bch	; bae0  ................
	defb 039h,0bdh,0f9h,0bch,002h,0bdh,00bh,0bdh,014h,0bdh,01eh,0bdh,028h,0bdh,032h,0bdh	; baf0  9...........(.2.
	defb 050h,049h,047h,057h,04fh,052h,04dh,0ffh,053h,04ch,049h,050h,053h,04ch,049h,04dh	; bb00  PIGWORM.SLIPSLIM
	defb 045h,0ffh,057h,04fh,04fh,044h,057h,04fh,052h,04dh,0ffh,043h,04ch,055h,042h,04dh	; bb10  E.WOODWORM.CLUBM
	defb 041h,04eh,0ffh,04dh,055h,044h,041h,052h,04dh,04fh,052h,0ffh,047h,041h,052h,047h	; bb20  AN.MUDARMOR.GARG
	defb 04fh,059h,04ch,045h,0ffh,050h,04fh,049h,053h,04eh,046h,052h,04fh,047h,0ffh,047h	; bb30  OYLE.POISNFROG.G
	defb 041h,052h,047h,04fh,059h,04ch,045h,032h,0ffh,052h,04fh,043h,04bh,04dh,041h,04eh	; bb40  ARGOYLE2.ROCKMAN
	defb 0ffh,057h,049h,04ch,044h,042h,04fh,041h,052h,0ffh,052h,045h,044h,053h,050h,049h	; bb50  .WILDBOAR.REDSPI
	defb 044h,045h,052h,0ffh,042h,049h,047h,053h,050h,049h,044h,045h,052h,0ffh,04dh,055h	; bb60  DER.BIGSPIDER.MU
	defb 044h,04dh,041h,053h,04bh,0ffh,042h,04fh,047h,047h,045h,044h,04dh,041h,04eh,0ffh	; bb70  DMASK.BOGGEDMAN.
	defb 042h,041h,054h,054h,0ffh,052h,041h,054h,054h,0ffh,047h,052h,041h,053h,053h,057h	; bb80  BATT.RATT.GRASSW
	defb 04fh,052h,04dh,0ffh,043h,045h,04eh,054h,049h,050h,045h,044h,045h,0ffh,044h,055h	; bb90  ORM.CENTIPEDE.DU
	defb 04eh,047h,052h,04fh,04ch,04ch,0ffh,042h,04ch,04fh,057h,050h,049h,050h,045h,052h	; bba0  NGROLL.BLOWPIPER
	defb 0ffh,050h,04fh,04ch,045h,04dh,041h,04eh,0ffh,042h,04fh,04fh,04dh,045h,052h,041h	; bbb0  .POLEMAN.BOOMERA
	defb 04eh,047h,0ffh,042h,04ch,04fh,057h,04dh,049h,052h,045h,0ffh,054h,057h,049h,04eh	; bbc0  NG.BLOWMIRE.TWIN
	defb 04dh,049h,052h,045h,053h,0ffh,053h,045h,041h,04ch,04fh,055h,053h,045h,0ffh,042h	; bbd0  MIRES.SEALOUSE.B
	defb 04fh,057h,04ch,045h,052h,0ffh,054h,048h,049h,043h,04bh,053h,04bh,049h,04eh,0ffh	; bbe0  OWLER.THICKSKIN.
	defb 047h,052h,049h,05ah,05ah,04ch,059h,0ffh,04dh,052h,08dh,052h,055h,049h,04eh,053h	; bbf0  GRIZZLY.MR.RUINS
	defb 0ffh,043h,041h,056h,045h,04dh,041h,04eh,0ffh,043h,041h,056h,045h,052h,04eh,04dh	; bc00  .CAVEMAN.CAVERNM
	defb 041h,04eh,0ffh,050h,052h,04fh,057h,04ch,045h,052h,0ffh,043h,041h,056h,045h,052h	; bc10  AN.PROWLER.CAVER
	defb 04eh,042h,049h,047h,0ffh,046h,041h,04ch,043h,04fh,04eh,045h,052h,0ffh,057h,041h	; bc20  NBIG.FALCONER.WA
	defb 054h,043h,048h,04dh,041h,04eh,0ffh,042h,049h,047h,047h,055h,041h,052h,044h,0ffh	; bc30  TCHMAN.BIGGUARD.
	defb 053h,041h,056h,041h,047h,045h,0ffh,046h,041h,04ch,043h,04fh,04eh,042h,041h,054h	; bc40  SAVAGE.FALCONBAT
	defb 0ffh,046h,049h,052h,045h,054h,04fh,054h,045h,04dh,0ffh,054h,048h,045h,000h,04eh	; bc50  .FIRETOTEM.THE.N
	defb 041h,053h,054h,059h,0ffh,042h,041h,044h,050h,052h,049h,045h,053h,054h,0ffh,047h	; bc60  ASTY.BADPRIEST.G
	defb 052h,04fh,055h,04eh,044h,045h,052h,0ffh,053h,08dh,050h,08dh,053h,0ffh,04dh,049h	; bc70  ROUNDER.S.P.S.MI
	defb 052h,045h,057h,04fh,052h,04dh,0ffh,054h,048h,045h,000h,04eh,04fh,054h,0ffh,048h	; bc80  REWORM.THE.NOT.H
	defb 055h,04dh,050h,045h,044h,04dh,041h,04eh,0ffh,053h,054h,04fh,04eh,045h,04dh,041h	; bc90  UMPEDMAN.STONEMA
	defb 04eh,0ffh,043h,052h,04fh,057h,0ffh,052h,045h,044h,000h,046h,08dh,04dh,041h,04eh	; bca0  N.CROW.RED.F.MAN
	defb 0ffh,042h,000h,046h,08dh,04dh,041h,04eh,0ffh,044h,000h,046h,08dh,04dh,041h,04eh	; bcb0  .B.F.MAN.D.F.MAN
	defb 0ffh,04ah,055h,04dh,050h,04dh,041h,04eh,0ffh,043h,04ch,049h,04eh,047h,04dh,041h	; bcc0  .JUMPMAN.CLINGMA
	defb 04eh,0ffh,052h,045h,056h,04fh,04ch,056h,045h,052h,0ffh,057h,048h,049h,054h,045h	; bcd0  N.REVOLVER.WHITE
	defb 046h,049h,052h,045h,0ffh,057h,048h,049h,054h,045h,04fh,047h,052h,045h,0ffh,053h	; bce0  FIRE.WHITEOGRE.S
	defb 054h,04fh,04eh,045h,04fh,047h,052h,045h,0ffh,04dh,049h,052h,045h,046h,052h,04fh	; bcf0  TONEOGRE.MIREFRO
	defb 047h,0ffh,052h,055h,049h,04eh,053h,042h,041h,054h,0ffh,053h,048h,055h,054h,000h	; bd00  G.RUINSBAT.SHUT.
	defb 041h,04ch,04ch,0ffh,052h,04fh,043h,04bh,000h,052h,04fh,043h,04bh,0ffh,042h,049h	; bd10  ALL.ROCK.ROCK.BI
	defb 047h,046h,04ch,04fh,057h,045h,052h,0ffh,047h,052h,041h,053h,053h,04fh,047h,052h	; bd20  GFLOWER.GRASSOGR
	defb 045h,0ffh,042h,055h,043h,04bh,04ch,045h,052h,0ffh	; bd30  E.BUCKLER.

; ======================================================================
; CODIGO 0xbd3a..0xbe8e  (340 bytes)
; ======================================================================


L_BD3A:
	ld a,(0c560h)		;bd3a
	ld ix,0c500h		;bd3d
	cp (ix+000h)		;bd41
	jr z,L_BD88		;bd44
	ld ix,0c520h		;bd46
	cp (ix+000h)		;bd4a
	jr z,L_BD88		;bd4d
	ld ix,0c540h		;bd4f
	cp (ix+000h)		;bd53
	jr z,L_BD88		;bd56
	xor a			;bd58
	ld (0c560h),a		;bd59
	ret			;bd5c
L_BD5D:
	xor a			;bd5d
	ld (ix+000h),a		;bd5e
	ld (0c561h),a		;bd61
	ld a,(0c560h)		;bd64
	ld hl,0c500h		;bd67
	cp (hl)			;bd6a
	ret z			;bd6b
	ld hl,0c520h		;bd6c
	cp (hl)			;bd6f
	ret z			;bd70
	ld hl,0c540h		;bd71
	cp (hl)			;bd74
	ret z			;bd75
	xor a			;bd76
	ld (0c560h),a		;bd77
	ld a,(0c125h)		;bd7a
	cp 00bh		;bd7d
	ret nz			;bd7f
	ld c,004h		;bd80
	ld de,05858h		;bd82
	jp 0419ah		;bd85
L_BD88:
	ld a,(0c561h)		;bd88
	dec a			;bd8b
	jr z,L_BDA7		;bd8c
	ld a,01dh		;bd8e
	call 040e6h		;bd90
	call L_BE0F		;bd93
	ld hl,0c561h		;bd96
	inc (hl)			;bd99
	xor a			;bd9a
	ld (0c563h),a		;bd9b
	ld (0c565h),a		;bd9e
	ld a,008h		;bda1
	ld (0c562h),a		;bda3
	ret			;bda6
L_BDA7:
	ld a,(0c209h)		;bda7
	rra			;bdaa
	ret c			;bdab
	ld e,(ix+005h)		;bdac
	ld d,(ix+006h)		;bdaf
	xor a			;bdb2
	ld (0c565h),a		;bdb3
	ld (0c566h),a		;bdb6
	ld b,(ix+003h)		;bdb9
L_BDBC:
	ld c,(ix+004h)		;bdbc
	xor a			;bdbf
	ld (0c566h),a		;bdc0
	push bc			;bdc3
L_BDC4:
	ld a,(0c563h)		;bdc4
	ld (0c564h),a		;bdc7
	ld b,008h		;bdca
L_BDCC:
	push de			;bdcc
	call L_BE55		;bdcd
	push af			;bdd0
	call L_BE35		;bdd1
	pop af			;bdd4
	call L_BF8C		;bdd5
	ld hl,0c564h		;bdd8
	ld a,(hl)			;bddb
	add a,003h		;bddc
	and 007h		;bdde
	ld (hl),a			;bde0
	pop de			;bde1
	djnz L_BDCC		;bde2
	ld hl,0c566h		;bde4
	inc (hl)			;bde7
	inc de			;bde8
	dec c			;bde9
	jr nz,L_BDC4		;bdea
	ld hl,0c565h		;bdec
	inc (hl)			;bdef
	pop bc			;bdf0
	djnz L_BDBC		;bdf1
	ld hl,0c563h		;bdf3
	ld a,(hl)			;bdf6
	add a,003h		;bdf7
	and 007h		;bdf9
	ld (hl),a			;bdfb
	ld hl,0c562h		;bdfc
	dec (hl)			;bdff
	ret nz			;be00
	ld hl,0c580h		;be01
	ld a,(ix+008h)		;be04
	call 0408ch		;be07
	ld (hl),000h		;be0a
	jp L_BD5D		;be0c
L_BE0F:
	ld l,(ix+001h)		;be0f
	ld h,(ix+002h)		;be12
	call 041cah		;be15
	ld e,(ix+005h)		;be18
	ld d,(ix+006h)		;be1b
	ld c,(ix+003h)		;be1e
L_BE21:
	ld b,(ix+004h)		;be21
	push hl			;be24
L_BE25:
	ld a,(de)			;be25
	ld (hl),a			;be26
	inc de			;be27
	inc hl			;be28
	djnz L_BE25		;be29
	pop hl			;be2b
	ld a,020h		;be2c
	call 0408ch		;be2e
	dec c			;be31
	jr nz,L_BE21		;be32
	ret			;be34
L_BE35:
	ld a,b			;be35
	sub 008h		;be36
	neg		;be38
	add a,(ix+001h)		;be3a
	ld e,a			;be3d
	ld a,(0c565h)		;be3e
	add a,a			;be41
	add a,a			;be42
	add a,a			;be43
	add a,e			;be44
	ld e,a			;be45
	ld a,(0c566h)		;be46
	add a,a			;be49
	add a,a			;be4a
	add a,a			;be4b
	add a,(ix+002h)		;be4c
	ld hl,0c564h		;be4f
	add a,(hl)			;be52
	ld d,a			;be53
	ret			;be54
L_BE55:
	ld a,(de)			;be55
	ld e,a			;be56
	and 01fh		;be57
	add a,a			;be59
	add a,a			;be5a
	ld l,a			;be5b
	ld a,e			;be5c
	and 0e0h		;be5d
	rra			;be5f
	rra			;be60
	rra			;be61
	and 01fh		;be62
	ld h,a			;be64
	ld a,b			;be65
	sub 008h		;be66
	neg		;be68
	ld d,a			;be6a
	ld e,000h		;be6b
	srl d		;be6d
	rr e		;be6f
	add hl,de			;be71
	set 7,h		;be72
	ld a,(0c564h)		;be74
	srl a		;be77
	call 0408ch		;be79
	call 00174h		;be7c   ; BIOS NRDVRM - Reads VRAM like in RDVRM (with 16-bit VRAM-address)
	ld l,a			;be7f
	ld a,(0c564h)		;be80
	rra			;be83
	ld a,l			;be84
	jr c,L_BE8B		;be85
	rra			;be87
	rra			;be88
	rra			;be89
	rra			;be8a
L_BE8B:
	and 00fh		;be8b
	ret			;be8d

; ----------------------------------------------------------------------
; DATOS sin identificar  0xbe8e..0xbe98  (10 bytes)
DATA_BE8E:
	defb 03eh,005h,032h,001h,0c2h,0afh,032h,067h,0c5h,0c9h	; be8e  >.2...2g..

; ======================================================================
; CODIGO 0xbe98..0xbff3  (347 bytes)
; ======================================================================


L_BE98:
	ld ix,0c500h		;be98
	ld a,(ix+000h)		;be9c
	cp 006h		;be9f
	jr nc,L_BEBA		;bea1
	ld ix,0c520h		;bea3
	ld a,(ix+000h)		;bea7
	cp 006h		;beaa
	jr nc,L_BEBA		;beac
	ld a,(ix+000h)		;beae
	cp 006h		;beb1
	jr nc,L_BEBA		;beb3
	xor a			;beb5
	ld (0c201h),a		;beb6
	ret			;beb9
L_BEBA:
	ld a,(0c567h)		;beba
	and a			;bebd
	jr nz,L_BEF2		;bebe
	call L_BE0F		;bec0
	ld hl,00000h		;bec3
	ld (0c563h),hl		;bec6
	ld (0c565h),hl		;bec9
	ld a,001h		;becc
	ld (0c567h),a		;bece
	ld a,(ix+000h)		;bed1
	cp 006h		;bed4
	ld a,(ix+004h)		;bed6
	jr z,L_BEDE		;bed9
	ld a,(ix+003h)		;bedb
L_BEDE:
	add a,a			;bede
	add a,a			;bedf
	add a,a			;bee0
	ld (0c562h),a		;bee1
	ld a,(0c125h)		;bee4
	cp 02dh		;bee7
	ld a,022h		;bee9
	jr z,L_BEEF		;beeb
	ld a,023h		;beed
L_BEEF:
	jp 040e6h		;beef
L_BEF2:
	ld e,(ix+005h)		;bef2
	ld d,(ix+006h)		;bef5
	ld a,(ix+000h)		;bef8
	cp 007h		;befb
	jr z,L_BF4F		;befd
	ld a,(0c566h)		;beff
	call 04098h		;bf02
	xor a			;bf05
	ld (0c565h),a		;bf06
L_BF09:
	ld b,008h		;bf09
L_BF0B:
	push de			;bf0b
	call L_BE55		;bf0c
	push af			;bf0f
	call L_BE35		;bf10
	pop af			;bf13
	call L_BF8C		;bf14
	pop de			;bf17
	djnz L_BF0B		;bf18
	ld a,(ix+004h)		;bf1a
	call 04098h		;bf1d
	ld hl,0c565h		;bf20
	inc (hl)			;bf23
	ld a,(hl)			;bf24
	sub 002h		;bf25
	jr nz,L_BF09		;bf27
	ld (hl),a			;bf29
	ld hl,0c564h		;bf2a
	ld a,(hl)			;bf2d
	inc a			;bf2e
	and 007h		;bf2f
	ld (hl),a			;bf31
	jr nz,L_BF38		;bf32
	ld hl,0c566h		;bf34
	inc (hl)			;bf37
L_BF38:
	ld hl,0c562h		;bf38
	dec (hl)			;bf3b
	ret nz			;bf3c
L_BF3D:
	ld hl,0c580h		;bf3d
	ld a,(ix+008h)		;bf40
	call 0408ch		;bf43
	xor a			;bf46
	ld (hl),a			;bf47
	ld (0c201h),a		;bf48
	ld (ix+000h),a		;bf4b
	ret			;bf4e
L_BF4F:
	ld a,(0c565h)		;bf4f
	call 04098h		;bf52
	xor a			;bf55
	ld (0c564h),a		;bf56
L_BF59:
	push de			;bf59
	ld a,(0c563h)		;bf5a
	sub 008h		;bf5d
	neg		;bf5f
	ld b,a			;bf61
	call L_BE55		;bf62
	push af			;bf65
	call L_BE35		;bf66
	pop af			;bf69
	call L_BF8C		;bf6a
	pop de			;bf6d
	ld hl,0c564h		;bf6e
	inc (hl)			;bf71
	ld a,(hl)			;bf72
	cp 008h		;bf73
	jr nz,L_BF59		;bf75
	ld hl,0c563h		;bf77
	ld a,(hl)			;bf7a
	inc a			;bf7b
	and 007h		;bf7c
	ld (hl),a			;bf7e
	jr nz,L_BF85		;bf7f
	ld hl,0c565h		;bf81
	inc (hl)			;bf84
L_BF85:
	ld hl,0c562h		;bf85
	dec (hl)			;bf88
	ret nz			;bf89
	jr L_BF3D		;bf8a
L_BF8C:
	push bc			;bf8c
	push hl			;bf8d
	push de			;bf8e
	push af			;bf8f
	call 04116h		;bf90
	ld l,d			;bf93
	ld h,000h		;bf94
	ld a,(0faf6h)		;bf96
	and 003h		;bf99
	ld d,a			;bf9b
	call L_BFB0		;bf9c
	xor a			;bf9f
	call L_BFDD		;bfa0
	pop af			;bfa3
	call L_BFD4		;bfa4
	ld a,050h		;bfa7
	call L_BFE6		;bfa9
	pop de			;bfac
	pop hl			;bfad
	pop bc			;bfae
	ret			;bfaf
L_BFB0:
	ld b,024h		;bfb0
	call L_BFCB		;bfb2
	out (c),b		;bfb5
	ld a,091h		;bfb7
	out (c),a		;bfb9
	inc c			;bfbb
	inc c			;bfbc
	ld a,l			;bfbd
	out (c),a		;bfbe
	ld a,h			;bfc0
	out (c),a		;bfc1
	ld a,e			;bfc3
	out (c),a		;bfc4
	ld a,d			;bfc6
	out (c),a		;bfc7
	ei			;bfc9
	ret			;bfca
L_BFCB:
	push af			;bfcb
	ld a,(00007h)		;bfcc
	inc a			;bfcf
	ld c,a			;bfd0
	pop af			;bfd1
	di			;bfd2
	ret			;bfd3
L_BFD4:
	call L_BFCB		;bfd4
	out (c),a		;bfd7
	ld a,0ach		;bfd9
	jr L_BFEF		;bfdb
L_BFDD:
	call L_BFCB		;bfdd
	out (c),a		;bfe0
	ld a,0adh		;bfe2
	jr L_BFEF		;bfe4
L_BFE6:
	call L_BFCB		;bfe6
	out (c),a		;bfe9
	ld a,0aeh		;bfeb
	jr L_BFEF		;bfed
L_BFEF:
	out (c),a		;bfef
	ei			;bff1
	ret			;bff2

; ----------------------------------------------------------------------
; DATOS sin identificar  0xbff3..0xc000  (13 bytes)
DATA_BFF3:
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bff3  .............
