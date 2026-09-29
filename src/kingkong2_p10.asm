; ==========================================================================
; KING KONG 2: YOMIGAERU DENSETSU - Konami (1986) - MSX - MegaROM RC-745 de 128 KB (Konami4) - banco 10 (se ejecuta en 0x6000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x06000


; ----------------------------------------------------------------------
; DATOS bloques_de_cada_pantalla: 25 bytes por pantalla (0x00-0x8D, 5 filas de
;   5 bloques): el bloque de cada casilla; p00:4F0B los lee con 0x6000 +
;   25*pantalla + 5*fila + columna; lo leen p00:4F1B (3550 bytes)
;   0x6000..0x6dde  (3550 bytes)
DATA_bloques_de_cada_pantalla:
	defb 006h,003h,00bh,00eh,000h,001h,00eh,00eh,034h,030h,001h,00eh,00eh,018h,031h,001h,00eh,00eh,00eh,000h,01ch,01eh,01eh,01eh,01dh	; 6000  ........40....1..........
	defb 01fh,01fh,01fh,01fh,01fh,01fh,01fh,01fh,01fh,01fh,024h,024h,024h,024h,036h,018h,018h,018h,018h,038h,002h,002h,009h,00eh,000h	; 6019  ..........$$$$6....8.....
	defb 001h,00eh,00eh,00eh,000h,001h,00eh,00eh,00eh,000h,02bh,00eh,00eh,00eh,02ah,01ah,00eh,00eh,00eh,01bh,002h,002h,002h,002h,002h	; 6032  ..........+...*..........
	defb 039h,03ah,03bh,003h,003h,03ch,03dh,03eh,00eh,00eh,001h,00eh,00eh,00eh,00eh,001h,00eh,00eh,00eh,00eh,001h,00eh,00eh,00eh,008h	; 604b  9:;..<=>.................
	defb 00bh,00eh,020h,01fh,01fh,00eh,00eh,020h,01fh,01fh,00eh,032h,020h,01fh,01fh,00eh,018h,020h,01fh,01fh,009h,00eh,020h,01fh,01fh	; 6064  .. .... ...2 .... .... ..
	defb 000h,000h,002h,017h,017h,000h,000h,002h,017h,017h,000h,000h,002h,017h,017h,000h,000h,002h,017h,017h,00ch,000h,002h,017h,017h	; 607d  .........................
	defb 005h,005h,009h,017h,017h,000h,003h,002h,017h,017h,000h,000h,002h,017h,017h,000h,000h,002h,017h,017h,000h,000h,002h,017h,017h	; 6096  .........................
	defb 005h,005h,005h,005h,005h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 60af  .........................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,004h,004h,004h,004h,004h	; 60c8  .........................
	defb 005h,005h,005h,005h,005h,000h,000h,000h,000h,000h,000h,003h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 60e1  .........................
	defb 000h,000h,000h,000h,000h,000h,00eh,012h,000h,000h,000h,010h,011h,000h,000h,000h,000h,000h,000h,000h,004h,004h,004h,004h,004h	; 60fa  .........................
	defb 005h,005h,005h,005h,005h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 6113  .........................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,00fh,012h,000h,000h,004h,014h,013h,004h,004h	; 612c  .........................
	defb 017h,017h,008h,00bh,005h,017h,017h,001h,00fh,012h,017h,017h,001h,015h,011h,017h,017h,001h,00ah,000h,017h,017h,001h,00ah,000h	; 6145  .........................
	defb 017h,017h,001h,00ah,000h,017h,017h,001h,00ah,000h,017h,017h,001h,00dh,000h,017h,017h,001h,00ah,000h,017h,017h,006h,016h,004h	; 615e  .........................
	defb 003h,003h,003h,003h,007h,00eh,00eh,00eh,00eh,000h,029h,00eh,00eh,00eh,000h,001h,00eh,00eh,00eh,000h,001h,00eh,00eh,00eh,000h	; 6177  ..........)..............
	defb 001h,00eh,00eh,00eh,00ah,001h,00eh,00eh,00eh,00eh,001h,00eh,00eh,00eh,00eh,001h,00eh,00eh,00eh,00eh,004h,002h,002h,002h,002h	; 6190  .........................
	defb 001h,001h,001h,001h,002h,000h,000h,000h,011h,014h,000h,000h,000h,012h,013h,000h,000h,000h,000h,00fh,004h,004h,004h,004h,003h	; 61a9  .........................
	defb 003h,003h,003h,003h,003h,00eh,00eh,00eh,00eh,00eh,00eh,00eh,00eh,00eh,00eh,00eh,00eh,00eh,00eh,00eh,002h,002h,002h,002h,002h	; 61c2  .........................
	defb 003h,02ch,035h,02dh,007h,00eh,00eh,00eh,00eh,000h,00eh,00eh,00eh,00eh,000h,00eh,00eh,00eh,00eh,000h,002h,02eh,046h,02fh,005h	; 61db  .,5-..................F/.
	defb 005h,00ch,016h,00ah,006h,001h,013h,017h,000h,009h,001h,00fh,015h,000h,012h,001h,014h,017h,013h,00dh,007h,018h,019h,018h,01ah	; 61f4  .........................
	defb 005h,004h,004h,004h,006h,00eh,000h,000h,000h,002h,011h,000h,000h,000h,002h,00bh,000h,013h,017h,002h,007h,003h,018h,019h,008h	; 620d  .........................
	defb 003h,003h,003h,003h,003h,00eh,00eh,00eh,00eh,00eh,00eh,00eh,033h,00eh,00eh,00eh,00eh,00eh,00eh,00eh,002h,02eh,046h,02fh,002h	; 6226  ............3.........F/.
	defb 003h,003h,003h,003h,007h,00eh,00eh,00eh,00eh,000h,00eh,00eh,00eh,00eh,000h,00eh,00eh,00eh,00eh,000h,002h,02eh,046h,02fh,005h	; 623f  ......................F/.
	defb 005h,00ch,016h,00ah,006h,001h,000h,000h,000h,002h,001h,000h,014h,017h,002h,001h,000h,00fh,015h,002h,007h,003h,003h,003h,008h	; 6258  .........................
	defb 006h,003h,003h,003h,003h,001h,00eh,00eh,00eh,00eh,02bh,00eh,00eh,00eh,00eh,01ah,00eh,00eh,00eh,00eh,002h,002h,002h,002h,002h	; 6271  ..........+..............
	defb 002h,000h,000h,000h,001h,00eh,000h,036h,018h,001h,00ah,000h,01ah,01ch,00dh,002h,000h,01ah,01ch,03fh,005h,003h,019h,01dh,003h	; 628a  .......6...........?.....
	defb 004h,004h,004h,004h,008h,000h,000h,000h,000h,001h,000h,000h,000h,000h,001h,000h,000h,000h,000h,001h,00ah,000h,000h,000h,001h	; 62a3  .........................
	defb 004h,004h,004h,004h,004h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,003h,003h,003h,003h,003h	; 62bc  .........................
	defb 034h,007h,004h,004h,008h,034h,002h,036h,03ah,032h,021h,03bh,01ah,039h,033h,031h,03ch,037h,030h,034h,005h,03dh,035h,038h,034h	; 62d5  4....4.6:2!;.931<704.=584
	defb 002h,000h,011h,004h,004h,002h,000h,000h,000h,000h,002h,000h,000h,000h,000h,002h,000h,000h,000h,000h,002h,000h,000h,000h,009h	; 62ee  .........................
	defb 002h,000h,000h,000h,001h,002h,000h,01fh,003h,006h,002h,000h,013h,03eh,03eh,002h,000h,013h,03eh,03eh,005h,003h,01eh,03eh,03eh	; 6307  .............>>...>>...>>
	defb 007h,004h,00fh,000h,00bh,002h,000h,000h,000h,000h,024h,025h,025h,025h,025h,03eh,03eh,03eh,03eh,03eh,03eh,03eh,03eh,03eh,03eh	; 6320  ..........$%%%%>>>>>>>>>>
	defb 004h,004h,004h,004h,004h,000h,000h,000h,000h,000h,025h,025h,025h,025h,025h,03eh,03eh,03eh,03eh,03eh,03eh,03eh,03eh,03eh,03eh	; 6339  ..........%%%%%>>>>>>>>>>
	defb 004h,004h,004h,004h,004h,000h,000h,000h,000h,000h,02dh,000h,000h,000h,000h,02eh,000h,000h,000h,000h,003h,003h,003h,003h,003h	; 6352  ..........-..............
	defb 004h,004h,004h,004h,008h,000h,014h,018h,000h,001h,000h,016h,015h,018h,001h,000h,000h,016h,014h,030h,003h,003h,003h,02fh,038h	; 636b  ...................0.../8
	defb 001h,001h,001h,001h,001h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,002h,002h,002h,002h,002h	; 6384  .........................
	defb 00dh,000h,000h,000h,005h,000h,000h,000h,000h,005h,000h,000h,000h,000h,005h,000h,000h,000h,000h,005h,002h,002h,002h,002h,007h	; 639d  .........................
	defb 001h,001h,001h,001h,009h,000h,000h,000h,000h,005h,000h,000h,000h,000h,00eh,000h,000h,000h,000h,00fh,00bh,000h,000h,000h,005h	; 63b6  .........................
	defb 005h,004h,004h,004h,006h,00eh,013h,017h,000h,002h,011h,00fh,015h,014h,01ch,00bh,014h,017h,00fh,01bh,001h,00fh,015h,000h,002h	; 63cf  .........................
	defb 001h,000h,000h,000h,002h,001h,000h,000h,000h,002h,001h,000h,000h,000h,002h,001h,000h,014h,017h,002h,007h,003h,018h,019h,008h	; 63e8  .........................
	defb 008h,00dh,00ch,001h,001h,004h,000h,000h,000h,000h,004h,000h,000h,000h,000h,004h,000h,000h,000h,000h,006h,002h,002h,002h,002h	; 6401  .........................
	defb 001h,001h,001h,001h,009h,000h,000h,012h,000h,005h,000h,000h,010h,000h,005h,000h,013h,010h,000h,005h,002h,014h,011h,000h,005h	; 641a  .........................
	defb 001h,000h,000h,000h,002h,001h,000h,000h,000h,002h,001h,000h,000h,000h,002h,001h,000h,000h,000h,002h,001h,00ah,004h,004h,007h	; 6433  .........................
	defb 008h,005h,005h,005h,005h,001h,00eh,013h,000h,000h,001h,011h,012h,000h,000h,001h,000h,000h,000h,000h,001h,000h,000h,000h,00ah	; 644c  .........................
	defb 005h,005h,005h,005h,009h,000h,000h,000h,00fh,014h,000h,000h,000h,011h,015h,000h,000h,000h,010h,014h,00bh,000h,018h,017h,016h	; 6465  .........................
	defb 001h,000h,01ch,023h,009h,001h,000h,01dh,010h,014h,001h,000h,011h,011h,015h,001h,00fh,01fh,021h,002h,006h,017h,01eh,022h,007h	; 647e  ...#..............!....".
	defb 001h,001h,001h,001h,001h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,002h,002h,002h,002h,002h	; 6497  .........................
	defb 004h,000h,000h,000h,00ch,004h,000h,000h,000h,000h,004h,000h,000h,000h,000h,004h,003h,000h,000h,000h,006h,002h,002h,002h,002h	; 64b0  .........................
	defb 008h,001h,001h,001h,001h,004h,000h,000h,000h,000h,004h,000h,000h,000h,000h,004h,000h,000h,000h,000h,004h,000h,000h,000h,00ah	; 64c9  .........................
	defb 001h,00dh,017h,01dh,01dh,000h,000h,017h,01dh,01dh,000h,000h,017h,01dh,01dh,000h,000h,017h,01dh,01dh,002h,002h,015h,01dh,01dh	; 64e2  .........................
	defb 001h,001h,016h,01dh,01dh,00bh,000h,017h,01dh,01dh,004h,000h,017h,01dh,01dh,004h,000h,017h,01dh,01dh,006h,00bh,017h,01dh,01dh	; 64fb  .........................
	defb 008h,019h,000h,018h,001h,004h,000h,000h,000h,00ah,01bh,000h,000h,000h,005h,01ah,000h,000h,000h,005h,006h,002h,002h,002h,007h	; 6514  .........................
	defb 002h,000h,00eh,011h,023h,003h,000h,00dh,010h,021h,001h,000h,00ch,00fh,022h,002h,000h,00bh,00ah,028h,004h,005h,006h,007h,008h	; 652d  ....#....!...."....(.....
	defb 018h,019h,01ah,01eh,019h,01ch,01dh,01bh,01fh,01dh,002h,000h,000h,000h,000h,003h,000h,00dh,013h,014h,001h,000h,00ch,016h,056h	; 6546  ........................V
	defb 028h,026h,025h,027h,020h,029h,012h,012h,012h,024h,029h,012h,012h,012h,021h,014h,02ah,02bh,02ch,022h,012h,02dh,02fh,030h,023h	; 655f  (&%' )...$)...!.*+,".-/0#
	defb 012h,012h,03fh,02ch,021h,012h,012h,032h,033h,022h,039h,034h,031h,02ch,023h,036h,037h,036h,033h,021h,034h,039h,035h,034h,031h	; 6578  ..?,!..23"941,#6763!49541
	defb 01ah,01eh,019h,01ah,01eh,01bh,01fh,01dh,01bh,01fh,000h,000h,000h,000h,000h,015h,013h,014h,015h,013h,039h,039h,039h,039h,039h	; 6591  ....................99999
	defb 02bh,03eh,03dh,03ch,014h,03fh,040h,000h,00ch,00fh,02fh,041h,000h,00dh,03bh,02eh,042h,000h,048h,047h,03fh,044h,045h,043h,046h	; 65aa  +>=<.?@.../A..;.B.HG?DECF
	defb 014h,02ch,03fh,040h,00eh,012h,012h,02fh,041h,00dh,035h,034h,04bh,042h,00ch,04ah,049h,047h,040h,00eh,045h,043h,046h,045h,04ch	; 65c3  .,?@.../A.54KB.JIG@.ECFEL
	defb 01ah,01eh,07eh,019h,01ah,01bh,01fh,01dh,01dh,01bh,000h,000h,000h,000h,000h,014h,015h,02bh,041h,000h,039h,02dh,02fh,042h,00eh	; 65dc  ..~..............+A.9-/B.
	defb 003h,003h,003h,003h,007h,00eh,00eh,016h,011h,012h,00eh,00eh,018h,00ch,012h,00eh,00eh,00eh,014h,012h,029h,00eh,00eh,018h,031h	; 65f5  ....................)...1
	defb 019h,000h,000h,000h,018h,019h,000h,011h,01ah,018h,019h,000h,012h,011h,01bh,019h,000h,000h,012h,01ch,007h,00dh,00dh,00dh,008h	; 660e  .........................
	defb 002h,000h,000h,000h,00bh,002h,000h,000h,000h,000h,002h,000h,000h,000h,000h,002h,000h,000h,000h,000h,002h,000h,000h,000h,000h	; 6627  .........................
	defb 004h,004h,004h,004h,006h,000h,000h,000h,000h,001h,000h,000h,000h,000h,001h,000h,000h,000h,000h,001h,000h,000h,000h,000h,001h	; 6640  .........................
	defb 002h,000h,000h,000h,000h,002h,000h,000h,000h,000h,002h,000h,000h,000h,000h,002h,000h,000h,000h,000h,007h,003h,003h,003h,003h	; 6659  .........................
	defb 000h,000h,000h,000h,001h,000h,000h,000h,000h,001h,000h,000h,000h,000h,001h,000h,000h,000h,000h,001h,00ah,000h,000h,000h,001h	; 6672  .........................
	defb 009h,00ch,00ch,00ch,00ah,019h,000h,000h,000h,018h,019h,000h,000h,010h,01bh,019h,000h,000h,012h,01ch,007h,00dh,00dh,00dh,008h	; 668b  .........................
	defb 00ch,000h,000h,000h,001h,000h,000h,000h,000h,001h,000h,000h,000h,000h,001h,000h,000h,000h,000h,001h,000h,000h,000h,000h,001h	; 66a4  .........................
	defb 002h,000h,000h,000h,00bh,002h,000h,000h,000h,000h,002h,000h,000h,000h,000h,002h,000h,000h,000h,000h,002h,000h,000h,000h,000h	; 66bd  .........................
	defb 016h,001h,001h,001h,015h,019h,00bh,000h,000h,018h,019h,000h,000h,011h,01bh,019h,000h,000h,012h,01ch,007h,00dh,00dh,00dh,008h	; 66d6  .........................
	defb 000h,000h,000h,000h,001h,000h,000h,000h,000h,001h,000h,000h,000h,000h,001h,000h,000h,000h,000h,001h,003h,003h,003h,003h,008h	; 66ef  .........................
	defb 002h,000h,000h,000h,000h,002h,000h,000h,000h,000h,002h,000h,000h,000h,000h,002h,000h,000h,000h,000h,002h,000h,000h,000h,009h	; 6708  .........................
	defb 002h,000h,000h,000h,00bh,002h,000h,000h,000h,000h,002h,000h,000h,000h,000h,002h,000h,000h,000h,000h,007h,003h,003h,003h,003h	; 6721  .........................
	defb 005h,001h,001h,001h,015h,00eh,000h,000h,000h,018h,00eh,000h,000h,000h,018h,00eh,000h,000h,01dh,01fh,006h,004h,004h,01eh,020h	; 673a  ........................
	defb 004h,004h,004h,004h,006h,000h,000h,000h,000h,001h,000h,000h,000h,000h,001h,000h,000h,000h,000h,001h,003h,003h,003h,003h,008h	; 6753  .........................
	defb 003h,003h,003h,003h,007h,00eh,00eh,00eh,00eh,000h,00eh,00eh,00eh,00eh,000h,00eh,00eh,00eh,00eh,000h,002h,02eh,008h,002h,005h	; 676c  .........................
	defb 001h,00eh,00eh,00eh,00ah,001h,00eh,00eh,00eh,00eh,001h,00eh,00eh,00eh,00eh,001h,00eh,00eh,00eh,00eh,004h,002h,002h,002h,002h	; 6785  .........................
	defb 003h,003h,003h,003h,003h,00eh,00eh,00eh,00eh,00eh,00eh,00eh,00eh,00eh,00eh,00eh,00eh,00eh,00eh,00eh,009h,00eh,00eh,00eh,008h	; 679e  .........................
	defb 006h,003h,003h,003h,003h,001h,00eh,00eh,00eh,00eh,001h,00eh,00eh,00eh,00eh,001h,00eh,00eh,00eh,00eh,001h,00eh,00eh,00eh,008h	; 67b7  .........................
	defb 001h,00eh,00eh,00eh,000h,02bh,00eh,00eh,00eh,000h,01ah,00eh,00eh,00eh,000h,029h,00eh,00eh,00eh,000h,004h,002h,002h,002h,005h	; 67d0  .....+.........).........
	defb 003h,003h,003h,003h,007h,00eh,00dh,00fh,013h,000h,00eh,047h,048h,049h,000h,00eh,00eh,00eh,034h,030h,002h,002h,002h,010h,015h	; 67e9  ...........GHI....40.....
	defb 008h,009h,008h,005h,009h,00dh,002h,006h,00bh,024h,027h,00ch,009h,001h,029h,001h,01fh,02ah,025h,026h,006h,01eh,02bh,02ch,007h	; 6802  .........$'...)..*%&..+,.
	defb 008h,005h,005h,005h,009h,001h,000h,000h,000h,00ch,001h,000h,000h,000h,026h,001h,000h,000h,000h,002h,006h,004h,004h,004h,007h	; 681b  ..............&..........
	defb 030h,001h,000h,002h,031h,030h,001h,000h,002h,031h,030h,001h,000h,002h,031h,030h,001h,000h,002h,031h,030h,02dh,02fh,02eh,031h	; 6834  0...10...10...10...10-/.1
	defb 03eh,03eh,03eh,03eh,03eh,03eh,03eh,03eh,03eh,03eh,032h,032h,032h,032h,032h,000h,000h,000h,000h,000h,004h,00bh,000h,00ah,004h	; 684d  >>>>>>>>>>22222..........
	defb 008h,005h,005h,005h,005h,001h,000h,000h,000h,000h,001h,026h,033h,033h,033h,001h,002h,03eh,03eh,03eh,001h,002h,03eh,03eh,03eh	; 6866  ...........&333..>>>..>>>
	defb 001h,002h,008h,005h,009h,001h,002h,001h,003h,002h,001h,024h,025h,000h,002h,001h,029h,028h,000h,002h,006h,004h,004h,004h,007h	; 687f  ...........$%...)(.......
	defb 005h,005h,038h,03eh,03eh,000h,000h,036h,03eh,03eh,03ah,000h,036h,03eh,03eh,028h,000h,036h,03eh,03eh,00bh,000h,036h,03eh,03eh	; 6898  ..8>>..6>>:.6>>(.6>>..6>>
	defb 001h,000h,020h,000h,002h,001h,000h,020h,000h,002h,001h,000h,01dh,000h,002h,001h,000h,000h,000h,002h,006h,004h,004h,004h,007h	; 68b1  .. .... .................
	defb 001h,000h,000h,000h,002h,001h,000h,000h,000h,002h,001h,003h,000h,000h,002h,001h,000h,000h,000h,002h,001h,000h,000h,000h,002h	; 68ca  .........................
	defb 001h,000h,000h,000h,002h,001h,000h,000h,000h,024h,001h,000h,000h,000h,029h,001h,000h,000h,000h,026h,006h,004h,004h,004h,007h	; 68e3  .........$....)....&.....
	defb 005h,005h,005h,005h,009h,000h,000h,000h,000h,002h,000h,000h,000h,000h,002h,000h,000h,000h,000h,002h,00bh,000h,000h,000h,002h	; 68fc  .........................
	defb 005h,005h,005h,005h,005h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,004h,004h,004h,004h,004h	; 6915  .........................
	defb 008h,005h,03bh,005h,005h,00dh,000h,03ch,000h,000h,000h,000h,03ch,000h,000h,00bh,000h,03ch,000h,000h,006h,004h,03dh,004h,004h	; 692e  ..;....<....<....<....=..
	defb 008h,00dh,00ch,005h,009h,001h,000h,000h,000h,00ch,001h,000h,000h,000h,000h,001h,000h,000h,000h,00ah,006h,004h,004h,004h,007h	; 6947  .........................
	defb 008h,005h,005h,005h,009h,001h,000h,000h,000h,002h,001h,000h,000h,000h,002h,001h,000h,000h,000h,002h,006h,00bh,00ah,004h,007h	; 6960  .........................
	defb 071h,072h,074h,073h,075h,06dh,06eh,06eh,070h,06fh,06ah,06bh,06ch,068h,069h,078h,066h,066h,066h,077h,065h,03eh,03dh,03ch,014h	; 6979  qrtsumnnpojklhixfffwe>=<.
	defb 000h,001h,002h,003h,004h,005h,007h,007h,007h,00ah,005h,007h,00ch,006h,00ah,005h,007h,039h,03ah,00ah,00dh,00fh,008h,00fh,00eh	; 6992  .................9:......
	defb 000h,001h,009h,001h,001h,005h,000h,001h,00bh,00fh,005h,011h,012h,013h,010h,005h,014h,015h,016h,017h,005h,018h,019h,01ah,004h	; 69ab  .........................
	defb 005h,005h,003h,01bh,00ah,00dh,012h,001h,013h,016h,018h,01ch,003h,001h,01dh,005h,01eh,012h,004h,012h,00dh,01fh,015h,020h,015h	; 69c4  ....................... .
	defb 005h,00fh,00fh,021h,004h,000h,023h,024h,025h,016h,022h,022h,005h,026h,027h,028h,005h,005h,029h,015h,02ah,00dh,00dh,02ah,01eh	; 69dd  ...!..#$%."".&'(..).*..*.
	defb 001h,001h,001h,004h,02bh,02ch,02eh,02fh,016h,02dh,022h,030h,031h,032h,02dh,001h,033h,034h,020h,015h,01ch,035h,009h,036h,037h	; 69f6  ....+,./.-"012-.34 ..5.67
	defb 000h,001h,002h,003h,004h,005h,007h,007h,007h,00ah,005h,007h,007h,007h,00ah,005h,007h,007h,007h,00ah,005h,007h,007h,007h,00ah	; 6a0f  .........................
	defb 005h,007h,007h,007h,00ah,005h,007h,00ch,006h,00ah,005h,007h,039h,03ah,00ah,000h,001h,038h,003h,004h,00dh,00fh,00fh,00fh,00eh	; 6a28  ............9:...8.......
	defb 000h,001h,002h,003h,004h,005h,007h,007h,007h,00ah,005h,007h,007h,007h,00ah,005h,007h,007h,007h,00ah,00dh,00fh,00fh,00fh,00eh	; 6a41  .........................
	defb 000h,001h,002h,003h,004h,005h,007h,007h,007h,00ah,005h,007h,007h,007h,00ah,005h,007h,007h,007h,00ah,00dh,00fh,008h,00fh,00eh	; 6a5a  .........................
	defb 000h,004h,02dh,012h,004h,000h,013h,017h,009h,03bh,005h,03ch,03dh,01ch,01eh,00dh,03eh,03fh,040h,025h,014h,041h,037h,042h,00eh	; 6a73  ..-......;.<=...>?@%.A7B.
	defb 001h,001h,001h,001h,004h,007h,007h,007h,007h,00ah,007h,007h,007h,007h,043h,007h,007h,007h,007h,00ah,00fh,00fh,00fh,00fh,00eh	; 6a8c  ..............C..........
	defb 001h,001h,001h,001h,001h,007h,007h,007h,007h,007h,007h,007h,007h,007h,007h,007h,007h,007h,007h,007h,00fh,00fh,00fh,00fh,00fh	; 6aa5  .........................
	defb 000h,001h,001h,001h,001h,005h,007h,007h,007h,007h,005h,044h,007h,007h,007h,005h,007h,007h,007h,007h,00dh,00fh,00fh,00fh,00fh	; 6abe  ...........D.............
	defb 000h,001h,001h,02eh,02fh,005h,007h,007h,051h,052h,047h,007h,007h,005h,00ah,01ch,007h,007h,047h,00ah,00dh,00fh,00fh,02ah,00eh	; 6ad7  ..../...QRG.......G....*.
	defb 000h,001h,002h,003h,004h,005h,007h,007h,007h,00ah,005h,007h,00ch,006h,00ah,005h,007h,039h,03ah,00ah,00dh,00fh,00fh,00fh,00eh	; 6af0  .................9:......
	defb 000h,001h,002h,003h,004h,005h,007h,007h,007h,00ah,005h,007h,00ch,006h,00ah,005h,007h,039h,03ah,00ah,00dh,00fh,00fh,00fh,00eh	; 6b09  .................9:......
	defb 000h,001h,002h,003h,004h,005h,007h,007h,007h,00ah,005h,007h,007h,007h,00ah,005h,007h,007h,007h,00ah,005h,06ah,00fh,00fh,00eh	; 6b22  .....................j...
	defb 005h,00ah,046h,046h,046h,005h,00ah,046h,046h,046h,005h,045h,001h,001h,004h,005h,007h,007h,007h,045h,00dh,00fh,00fh,00fh,00fh	; 6b3b  ..FFF..FFF.E.......E.....
	defb 005h,007h,007h,007h,00ah,005h,007h,007h,007h,00ah,005h,007h,007h,007h,00ah,028h,007h,007h,007h,00ah,00fh,00fh,00fh,00fh,00eh	; 6b54  ...............(.........
	defb 000h,001h,001h,001h,001h,005h,007h,007h,007h,00ah,000h,038h,007h,007h,025h,00dh,006h,007h,007h,00eh,018h,03ah,007h,007h,048h	; 6b6d  ...........8..%......:..H
	defb 001h,001h,001h,001h,004h,01ch,007h,007h,007h,00ah,00dh,00fh,00fh,006h,00ah,018h,04bh,04bh,03ah,00ah,00dh,00fh,006h,00fh,00eh	; 6b86  ................KK:......
	defb 000h,001h,002h,003h,004h,005h,007h,007h,007h,00ah,005h,007h,007h,007h,00ah,005h,00ah,04ch,01ch,00ah,00dh,00eh,04dh,00dh,00eh	; 6b9f  .................L....M..
	defb 046h,046h,04fh,046h,046h,046h,04eh,03ah,039h,046h,046h,04fh,007h,007h,039h,046h,04fh,007h,007h,046h,046h,046h,046h,046h,046h	; 6bb8  FFOFFFN:9FFO..9FO..FFFFFF
	defb 046h,046h,046h,046h,046h,046h,04eh,04bh,04ah,046h,04bh,03ah,007h,049h,04ah,046h,04ch,007h,00ah,016h,046h,046h,046h,046h,02dh	; 6bd1  FFFFFFNKJFK:.IJFL...FFFF-
	defb 046h,012h,001h,001h,013h,04bh,03ah,007h,007h,046h,046h,04ch,007h,007h,046h,046h,04fh,007h,007h,003h,046h,050h,00fh,00fh,046h	; 6bea  F....K:..FFL..FFO...FP..F
	defb 005h,003h,004h,04fh,00ah,005h,007h,00ah,04fh,00ah,005h,007h,00ah,04fh,00ah,028h,007h,00ah,04fh,025h,02ah,00fh,00eh,04dh,00eh	; 6c03  ...O....O....O.(..O%*..M.
	defb 000h,001h,001h,001h,004h,005h,007h,007h,007h,00ah,005h,007h,007h,007h,00ah,005h,007h,007h,007h,00ah,005h,00fh,00fh,006h,00ah	; 6c1c  .........................
	defb 000h,001h,001h,001h,004h,005h,007h,007h,007h,049h,005h,007h,007h,007h,00ah,005h,007h,007h,007h,00ah,00dh,00fh,00fh,00fh,00eh	; 6c35  .........I...............
	defb 000h,001h,038h,003h,004h,054h,05fh,05fh,05fh,055h,058h,053h,053h,053h,059h,060h,05eh,05eh,05eh,057h,00dh,00fh,00fh,00fh,00fh	; 6c4e  ..8..T___UXSSSY`^^^W.....
	defb 05ah,05ch,05ch,05ch,05bh,058h,053h,053h,053h,059h,058h,053h,046h,053h,059h,056h,05eh,046h,061h,057h,00fh,00fh,046h,050h,006h	; 6c67  Z\\\[XSSSYXSFSYV^FaW..FP.
	defb 000h,001h,000h,001h,001h,005h,007h,005h,007h,007h,005h,007h,005h,007h,007h,028h,007h,005h,007h,007h,007h,007h,005h,007h,007h	; 6c80  ...............(.........
	defb 007h,007h,005h,007h,007h,01ch,007h,005h,007h,007h,005h,007h,005h,007h,007h,005h,007h,005h,007h,007h,00dh,00fh,005h,007h,00fh	; 6c99  .........................
	defb 05ah,05ch,05ch,05bh,04fh,058h,053h,053h,053h,059h,058h,053h,053h,053h,059h,062h,053h,053h,053h,059h,069h,05dh,006h,05dh,063h	; 6cb2  Z\\[OXSSSYXSSSYbSSSYi].]c
	defb 05ah,05ch,038h,05ch,05bh,058h,053h,053h,053h,059h,058h,053h,053h,053h,059h,058h,053h,053h,053h,059h,064h,05dh,05dh,05dh,063h	; 6ccb  Z\8\[XSSSYXSSSYXSSSYd]]]c
	defb 05ah,05ch,05ch,05ch,05bh,058h,053h,053h,053h,059h,058h,053h,046h,053h,059h,058h,053h,046h,053h,065h,064h,061h,046h,05dh,066h	; 6ce4  Z\\\[XSSSYXSFSYXSFSedaF]f
	defb 000h,038h,001h,001h,004h,005h,007h,007h,007h,00ah,005h,007h,007h,007h,00ah,005h,007h,044h,007h,00ah,00dh,00fh,00fh,00fh,00eh	; 6cfd  .8...............D.......
	defb 000h,001h,028h,007h,025h,005h,007h,007h,007h,00ah,005h,007h,007h,007h,00ah,005h,007h,044h,007h,00ah,00dh,00fh,00fh,00fh,00eh	; 6d16  ..(.%............D.......
	defb 007h,046h,067h,068h,046h,007h,046h,067h,068h,046h,007h,046h,067h,068h,046h,007h,039h,04bh,04bh,04ah,00fh,00fh,00fh,00fh,00eh	; 6d2f  .FghF.FghF.FghF.9KKJ.....
	defb 001h,000h,001h,001h,004h,007h,005h,007h,007h,00ah,007h,005h,007h,007h,00ah,007h,005h,007h,007h,00ah,007h,046h,067h,068h,046h	; 6d48  .....................FghF
	defb 077h,062h,06eh,062h,059h,077h,067h,066h,076h,059h,078h,07ch,012h,03ah,064h,079h,012h,012h,012h,05bh,07ah,07bh,012h,05dh,05eh	; 6d61  wbnbYwgfvYx|.:dy...[z{.]^
	defb 07dh,07dh,051h,012h,012h,07dh,07dh,052h,012h,012h,07dh,07dh,053h,012h,056h,07dh,07dh,051h,012h,02fh,07dh,07dh,052h,039h,04bh	; 6d7a  }}Q..}}R..}}S.V}}Q./}}R9K
	defb 07dh,07dh,050h,014h,02bh,07dh,07dh,051h,030h,02fh,07dh,07dh,052h,02ch,02eh,07dh,07dh,053h,054h,027h,07dh,07dh,051h,055h,012h	; 6d93  }}P.+}}Q0/}}R,.}}ST'}}QU.
	defb 07dh,07dh,057h,058h,059h,07dh,07dh,057h,05fh,05ah,07dh,07dh,057h,030h,05bh,07dh,07dh,057h,030h,060h,07dh,07dh,057h,05ch,05dh	; 6dac  }}WXY}}W_Z}}W0[}}W0`}}W\]
	defb 07dh,07dh,057h,062h,059h,07dh,07dh,057h,063h,064h,07dh,07dh,057h,030h,05bh,07dh,07dh,057h,030h,05bh,07dh,07dh,057h,061h,05eh	; 6dc5  }}WbY}}Wcd}}W0[}}W0[}}Wa^

; ----------------------------------------------------------------------
; DATOS dibujos_6DDE: 12 dibujos de 8x8 a 4 bits para la hoja de la pagina 1
;   (desde el dibujo 1); los sube p00:48A6 por la lista 0x5564; lo leen
;   p00:48A6 (384 bytes)
;   0x6dde..0x6f5e  (384 bytes)
DATA_dibujos_6DDE:
	defb 0f1h,0f1h,0ffh,011h	; 6dde
	defb 01fh,0f1h,0f1h,01fh	; 6de2
	defb 01fh,01fh,011h,01dh	; 6de6
	defb 0f1h,011h,0d1h,01fh	; 6dea
	defb 011h,01fh,0f1h,0ddh	; 6dee
	defb 01fh,0ffh,01dh,0ffh	; 6df2
	defb 01fh,011h,0ffh,011h	; 6df6
	defb 0f1h,01fh,0ffh,01fh	; 6dfa
	defb 0f1h,0ffh,011h,0d1h	; 6dfe
	defb 01fh,0f1h,011h,01fh	; 6e02
	defb 011h,01fh,0fdh,0dfh	; 6e06
	defb 0f1h,0ffh,01fh,0f1h	; 6e0a
	defb 0f1h,011h,01fh,011h	; 6e0e
	defb 011h,01dh,0f1h,01dh	; 6e12
	defb 011h,0ffh,011h,0dfh	; 6e16
	defb 01fh,0f1h,0fdh,0f1h	; 6e1a
	defb 011h,0ffh,01fh,01fh	; 6e1e
	defb 0f1h,01fh,011h,0f1h	; 6e22
	defb 0d1h,011h,0f1h,011h	; 6e26
	defb 0f1h,01dh,011h,01fh	; 6e2a
	defb 0ddh,01fh,0f1h,011h	; 6e2e
	defb 0ffh,0d1h,011h,0f1h	; 6e32
	defb 011h,0ffh,011h,011h	; 6e36
	defb 0f1h,0ffh,0f1h,01fh	; 6e3a
	defb 01dh,011h,01fh,01fh	; 6e3e
	defb 0f1h,011h,011h,011h	; 6e42
	defb 0fdh,0dfh,0f1h,011h	; 6e46
	defb 01fh,0f1h,0ffh,01fh	; 6e4a
	defb 011h,0f1h,011h,011h	; 6e4e
	defb 0d1h,01fh,0d1h,011h	; 6e52
	defb 0fdh,011h,01fh,011h	; 6e56
	defb 01fh,0dfh,011h,011h	; 6e5a
	defb 011h,01fh,0f1h,01fh	; 6e5e
	defb 0f1h,011h,011h,0f1h	; 6e62
	defb 0ffh,011h,0f1h,0ffh	; 6e66
	defb 01fh,0d1h,0ffh,01fh	; 6e6a
	defb 0f1h,0f1h,01fh,011h	; 6e6e
	defb 0d1h,01fh,0fdh,011h	; 6e72
	defb 0fdh,011h,0fdh,01dh	; 6e76
	defb 01fh,0d1h,01fh,0f1h	; 6e7a
	defb 0f1h,011h,0f1h,01fh	; 6e7e
	defb 01fh,0f1h,01fh,0f1h	; 6e82
	defb 011h,0f1h,011h,0ffh	; 6e86
	defb 0f1h,0ffh,01fh,011h	; 6e8a
	defb 0ffh,01fh,0d1h,0ffh	; 6e8e
	defb 0ffh,0d1h,011h,01fh	; 6e92
	defb 011h,0fdh,011h,011h	; 6e96
	defb 0f1h,0fdh,0fdh,0f1h	; 6e9a
	defb 01fh,0d1h,01fh,0f1h	; 6e9e
	defb 0fdh,011h,0fdh,01dh	; 6ea2
	defb 0d1h,01fh,0fdh,011h	; 6ea6
	defb 0f1h,0f1h,01fh,011h	; 6eaa
	defb 011h,0d1h,0ffh,011h	; 6eae
	defb 01fh,011h,0f1h,01fh	; 6eb2
	defb 011h,011h,011h,011h	; 6eb6
	defb 011h,011h,0f1h,01fh	; 6eba
	defb 0f1h,0fdh,0fdh,0f1h	; 6ebe
	defb 011h,0fdh,011h,011h	; 6ec2
	defb 0ffh,0d1h,011h,01fh	; 6ec6
	defb 0ffh,01fh,0d1h,0ffh	; 6eca
	defb 0f1h,01fh,01fh,011h	; 6ece
	defb 011h,011h,011h,01fh	; 6ed2
	defb 011h,0f1h,011h,0f1h	; 6ed6
	defb 0f1h,011h,0f1h,01fh	; 6eda
	defb 011h,0ffh,01fh,011h	; 6ede
	defb 0ffh,01fh,011h,011h	; 6ee2
	defb 011h,011h,01fh,01fh	; 6ee6
	defb 0fdh,0f1h,011h,01fh	; 6eea
	defb 0d1h,011h,0f1h,0fdh	; 6eee
	defb 0ffh,011h,0f1h,0ffh	; 6ef2
	defb 0d1h,01fh,011h,0dfh	; 6ef6
	defb 01fh,01fh,011h,0d1h	; 6efa
	defb 01fh,01fh,011h,0d1h	; 6efe
	defb 0d1h,01fh,011h,0dfh	; 6f02
	defb 0ffh,011h,0f1h,0ffh	; 6f06
	defb 0d1h,011h,0f1h,0fdh	; 6f0a
	defb 0fdh,0f1h,011h,01fh	; 6f0e
	defb 011h,011h,01fh,01fh	; 6f12
	defb 0ffh,01fh,011h,011h	; 6f16
	defb 011h,0ffh,01fh,011h	; 6f1a
	defb 011h,0f1h,0ffh,011h	; 6f1e
	defb 011h,011h,0f1h,0ffh	; 6f22
	defb 0f1h,0f1h,011h,011h	; 6f26
	defb 0f1h,011h,01fh,0dfh	; 6f2a
	defb 0dfh,01fh,011h,01dh	; 6f2e
	defb 0ffh,01fh,011h,0ffh	; 6f32
	defb 0fdh,011h,0f1h,01dh	; 6f36
	defb 01dh,011h,0f1h,0f1h	; 6f3a
	defb 01dh,011h,0f1h,0f1h	; 6f3e
	defb 0fdh,011h,0f1h,01dh	; 6f42
	defb 0ffh,01fh,011h,0ffh	; 6f46
	defb 0dfh,01fh,011h,01dh	; 6f4a
	defb 0f1h,011h,01fh,0dfh	; 6f4e
	defb 0f1h,0f1h,011h,011h	; 6f52
	defb 011h,011h,0f1h,0ffh	; 6f56
	defb 011h,0f1h,0ffh,011h	; 6f5a

; ----------------------------------------------------------------------
; DATOS dibujos_6F5E: 26 dibujos de 8x8 a 4 bits para la hoja de la pagina 1
;   (desde el dibujo 96); los sube p00:48A6 por la lista 0x5564; lo leen
;   p00:48A6 (832 bytes)
;   0x6f5e..0x729e  (832 bytes)
DATA_dibujos_6F5E:
	defb 0fdh,0dfh,0ffh,0ddh	; 6f5e
	defb 0ddh,0fdh,0ffh,0ffh	; 6f62
	defb 0ddh,0dfh,0ddh,0ffh	; 6f66
	defb 0ffh,0fdh,0dfh,0dfh	; 6f6a
	defb 0ffh,0fdh,0ffh,0fdh	; 6f6e
	defb 0fdh,0ffh,0ffh,0ddh	; 6f72
	defb 0fdh,0dfh,0fdh,0ffh	; 6f76
	defb 0dfh,0ffh,0ffh,0ffh	; 6f7a
	defb 0fdh,0ffh,0ffh,0dfh	; 6f7e
	defb 0ffh,0fdh,0ddh,0ffh	; 6f82
	defb 0ddh,0fdh,0dfh,0dfh	; 6f86
	defb 0ffh,0fdh,0ffh,0ffh	; 6f8a
	defb 0dfh,0ffh,0ffh,0ddh	; 6f8e
	defb 0fdh,0ffh,0ddh,0ffh	; 6f92
	defb 0ffh,0fdh,0dfh,0ddh	; 6f96
	defb 0ffh,0ffh,0ffh,0dfh	; 6f9a
	defb 0ffh,0dfh,0dfh,0fdh	; 6f9e
	defb 0ffh,0ffh,0ffh,0ddh	; 6fa2
	defb 0ffh,0ddh,0dfh,0ffh	; 6fa6
	defb 0fdh,0ffh,0ddh,0ffh	; 6faa
	defb 0ffh,0ffh,0ffh,0ffh	; 6fae
	defb 0ffh,0fdh,0dfh,0fdh	; 6fb2
	defb 0dfh,0ddh,0fdh,0fdh	; 6fb6
	defb 0ffh,0ffh,0dfh,0ffh	; 6fba
	defb 0ddh,0fdh,0fdh,0fdh	; 6fbe
	defb 0ffh,0dfh,0ffh,0ffh	; 6fc2
	defb 0ddh,0ffh,0ddh,0ffh	; 6fc6
	defb 0ffh,0ffh,0ffh,0ffh	; 6fca
	defb 0ddh,0ffh,0ffh,0ffh	; 6fce
	defb 0dfh,0ddh,0ffh,0ddh	; 6fd2
	defb 0ddh,0ffh,0fdh,0dfh	; 6fd6
	defb 0ffh,0dfh,0ffh,0ffh	; 6fda
	defb 0d1h,0dfh,0ffh,0ffh	; 6fde
	defb 01dh,0dfh,0ffh,0ffh	; 6fe2
	defb 011h,01fh,0ffh,0ffh	; 6fe6
	defb 01dh,0ffh,0ffh,0ffh	; 6fea
	defb 01dh,0f1h,01dh,0ffh	; 6fee
	defb 0f1h,01dh,0dfh,0ffh	; 6ff2
	defb 01dh,0d1h,0ffh,0ffh	; 6ff6
	defb 01dh,0fdh,0ffh,0ffh	; 6ffa
	defb 01fh,0ffh,0ffh,0ffh	; 6ffe
	defb 0f1h,01fh,0f1h,0ffh	; 7002
	defb 011h,011h,0ffh,0ffh	; 7006
	defb 01dh,0ddh,011h,0ffh	; 700a
	defb 0f1h,0ffh,0ddh,0ffh	; 700e
	defb 01dh,0dfh,0ffh,0ffh	; 7012
	defb 01dh,011h,0ffh,0ffh	; 7016
	defb 01dh,0dfh,0ffh,0ffh	; 701a
	defb 0ffh,0ffh,0fdh,01dh	; 701e
	defb 0ffh,0ffh,0fdh,0d1h	; 7022
	defb 0ffh,0ffh,0f1h,011h	; 7026
	defb 0ffh,0ffh,0ffh,0d1h	; 702a
	defb 0ffh,0d1h,01fh,0d1h	; 702e
	defb 0ffh,0fdh,0d1h,01fh	; 7032
	defb 0ffh,0ffh,01dh,0d1h	; 7036
	defb 0ffh,0ffh,0dfh,0d1h	; 703a
	defb 0ffh,0ffh,0ffh,0f1h	; 703e
	defb 0ffh,01fh,0f1h,01fh	; 7042
	defb 0ffh,0ffh,011h,011h	; 7046
	defb 0ffh,011h,0ddh,0d1h	; 704a
	defb 0ffh,0ddh,0ffh,01fh	; 704e
	defb 0ffh,0ffh,0fdh,0d1h	; 7052
	defb 0ffh,0ffh,011h,0d1h	; 7056
	defb 0ffh,0ffh,0fdh,0d1h	; 705a
	defb 011h,01fh,011h,0f1h	; 705e
	defb 0ddh,0d1h,0d1h,01fh	; 7062
	defb 0d1h,0dfh,0d1h,01fh	; 7066
	defb 0f1h,0ffh,0d1h,0ffh	; 706a
	defb 0ffh,0fdh,01fh,0ffh	; 706e
	defb 0ffh,0fdh,01fh,01fh	; 7072
	defb 0ffh,0ffh,0ffh,0ffh	; 7076
	defb 0ffh,0ffh,0ffh,0ffh	; 707a
	defb 011h,0f1h,011h,01dh	; 707e
	defb 0ddh,01dh,0d1h,0d1h	; 7082
	defb 0fdh,01fh,0f1h,0ddh	; 7086
	defb 0d1h,0d1h,0ffh,0ffh	; 708a
	defb 0ffh,0d1h,0ffh,0ffh	; 708e
	defb 0ffh,0fdh,0ffh,0ffh	; 7092
	defb 0ffh,0ffh,0ffh,0ffh	; 7096
	defb 0ffh,0ffh,0ffh,0ffh	; 709a
	defb 0ffh,0ffh,0ffh,0ffh	; 709e
	defb 0ffh,0ffh,0ffh,0ffh	; 70a2
	defb 0ffh,0fdh,01fh,01fh	; 70a6
	defb 0ffh,0fdh,01fh,0ffh	; 70aa
	defb 0f1h,0ffh,0d1h,0ffh	; 70ae
	defb 0d1h,0dfh,0d1h,01fh	; 70b2
	defb 0ddh,0d1h,0d1h,01fh	; 70b6
	defb 011h,01fh,011h,0f1h	; 70ba
	defb 0ffh,0ffh,0ffh,0ffh	; 70be
	defb 0ffh,0ffh,0ffh,0ffh	; 70c2
	defb 0ffh,0fdh,0ffh,0ffh	; 70c6
	defb 0ffh,0d1h,0ffh,0ffh	; 70ca
	defb 0d1h,0d1h,0ffh,0ffh	; 70ce
	defb 0fdh,01fh,0f1h,0ddh	; 70d2
	defb 0ddh,01dh,0d1h,0d1h	; 70d6
	defb 011h,0f1h,011h,01dh	; 70da
	defb 0ffh,0ffh,0ffh,0ffh	; 70de
	defb 0ffh,0dfh,0ffh,0ffh	; 70e2
	defb 0ffh,01dh,0dfh,0ffh	; 70e6
	defb 0ffh,0f1h,01dh,0d1h	; 70ea
	defb 0ffh,0ffh,011h,011h	; 70ee
	defb 0ffh,0ffh,01fh,01fh	; 70f2
	defb 0ffh,0ffh,0f1h,01fh	; 70f6
	defb 0ffh,0ffh,011h,011h	; 70fa
	defb 0ffh,0ffh,011h,011h	; 70fe
	defb 0ffh,0ffh,0f1h,01fh	; 7102
	defb 0ffh,0ffh,01fh,01fh	; 7106
	defb 0ffh,0ffh,011h,011h	; 710a
	defb 0ffh,0f1h,01dh,0d1h	; 710e
	defb 0ffh,01dh,0dfh,0ffh	; 7112
	defb 0ffh,0dfh,0ffh,0ffh	; 7116
	defb 0ffh,0ffh,0ffh,0ffh	; 711a
	defb 0ffh,0ffh,0ffh,0ffh	; 711e
	defb 0ffh,0ffh,0fdh,0ffh	; 7122
	defb 0ffh,0fdh,0d1h,0ffh	; 7126
	defb 01dh,0d1h,01fh,0ffh	; 712a
	defb 011h,011h,0ffh,0ffh	; 712e
	defb 0f1h,0f1h,0ffh,0ffh	; 7132
	defb 0f1h,01fh,0ffh,0ffh	; 7136
	defb 011h,011h,0ffh,0ffh	; 713a
	defb 011h,011h,0ffh,0ffh	; 713e
	defb 0f1h,01fh,0ffh,0ffh	; 7142
	defb 0f1h,0f1h,0ffh,0ffh	; 7146
	defb 011h,011h,0ffh,0ffh	; 714a
	defb 01dh,0d1h,01fh,0ffh	; 714e
	defb 0ffh,0fdh,0d1h,0ffh	; 7152
	defb 0ffh,0ffh,0fdh,0ffh	; 7156
	defb 0ffh,0ffh,0ffh,0ffh	; 715a
	defb 0ffh,0ffh,0ffh,0ffh	; 715e
	defb 0ffh,0ffh,0ffh,0ffh	; 7162
	defb 0ffh,0ffh,0ffh,0ffh	; 7166
	defb 0ffh,0ffh,0ffh,0ffh	; 716a
	defb 0ffh,0ffh,0ffh,0ffh	; 716e
	defb 0ffh,0ffh,0ffh,0ffh	; 7172
	defb 0ffh,0ffh,0fdh,0ffh	; 7176
	defb 0dfh,0ffh,0ffh,0ffh	; 717a
	defb 0ffh,0ffh,0ffh,0ffh	; 717e
	defb 0ffh,0ffh,0ffh,0ffh	; 7182
	defb 0ffh,0ffh,0ffh,0ffh	; 7186
	defb 0ffh,0ffh,0ffh,0ffh	; 718a
	defb 0ffh,0ffh,0ffh,0ffh	; 718e
	defb 0ffh,0ffh,0ffh,0ffh	; 7192
	defb 0ffh,0fdh,0dfh,0ffh	; 7196
	defb 0ffh,0ffh,0ffh,0ffh	; 719a
	defb 0ffh,0ffh,0ffh,0ddh	; 719e
	defb 0ffh,0ffh,0ffh,0ffh	; 71a2
	defb 0ffh,0ffh,0ffh,0ffh	; 71a6
	defb 0ffh,0ffh,0ffh,0ffh	; 71aa
	defb 0ffh,0ffh,0ffh,0fdh	; 71ae
	defb 0ffh,0ffh,0ffh,0fdh	; 71b2
	defb 0ffh,0ffh,0ffh,0ffh	; 71b6
	defb 0ffh,0ffh,0ffh,0ffh	; 71ba
	defb 0ffh,0ffh,0ffh,0fdh	; 71be
	defb 0ffh,0ffh,0ffh,0ddh	; 71c2
	defb 0ffh,0ffh,0ffh,0ffh	; 71c6
	defb 0ffh,0ffh,0ffh,0ffh	; 71ca
	defb 0ffh,0ffh,0ffh,0ffh	; 71ce
	defb 0ffh,0ffh,0ffh,0fdh	; 71d2
	defb 0ffh,0ffh,0ffh,0fdh	; 71d6
	defb 0ffh,0ffh,0ffh,0ffh	; 71da
	defb 0ffh,0ffh,0ffh,0ffh	; 71de
	defb 0ffh,0ffh,0ffh,0ffh	; 71e2
	defb 0ffh,0ffh,0ffh,0ffh	; 71e6
	defb 0ffh,0ffh,0ffh,0ffh	; 71ea
	defb 0ffh,0ffh,0ffh,0ffh	; 71ee
	defb 0ffh,0ffh,0ffh,0ffh	; 71f2
	defb 0ffh,0ffh,0ffh,0ffh	; 71f6
	defb 0ffh,0ffh,0ffh,0ffh	; 71fa
	defb 0ffh,0eeh,0feh,0eeh	; 71fe
	defb 0feh,0eah,0eeh,0aeh	; 7202
	defb 0eah,0aah,0aah,0aah	; 7206
	defb 0eah,0aeh,0aah,0eah	; 720a
	defb 0aah,0aah,0aah,0aah	; 720e
	defb 0bah,0bah,0aah,0bah	; 7212
	defb 0abh,0abh,0bbh,0abh	; 7216
	defb 0bbh,0abh,0abh,0bbh	; 721a
	defb 0ffh,0ffh,0ffh,0ffh	; 721e
	defb 0efh,0efh,0ffh,0eeh	; 7222
	defb 0aah,0eeh,0eeh,0aeh	; 7226
	defb 0eah,0aah,0eah,0eah	; 722a
	defb 0aah,0aah,0aah,0aah	; 722e
	defb 0bbh,0aah,0aah,0bbh	; 7232
	defb 0bah,0bah,0abh,0aah	; 7236
	defb 0bbh,0bbh,0bbh,0abh	; 723a
	defb 0eah,0bah,0bah,0bbh	; 723e
	defb 0aah,0bbh,0bbh,0bbh	; 7242
	defb 0abh,0aah,0bbh,0abh	; 7246
	defb 0abh,0bbh,0bbh,0bbh	; 724a
	defb 0bah,0bbh,0abh,0bbh	; 724e
	defb 0eah,0bbh,0bbh,0bbh	; 7252
	defb 0aah,0abh,0bbh,0abh	; 7256
	defb 0aah,0bbh,0bbh,0bbh	; 725a
	defb 0bbh,0bah,0bah,0bbh	; 725e
	defb 0abh,0bbh,0bbh,0bbh	; 7262
	defb 0bbh,0aah,0bbh,0abh	; 7266
	defb 0bbh,0bbh,0bbh,0bbh	; 726a
	defb 0bbh,0bbh,0abh,0bbh	; 726e
	defb 0bah,0bbh,0bbh,0bbh	; 7272
	defb 0bbh,0bbh,0bbh,0abh	; 7276
	defb 0bbh,0bbh,0bbh,0bbh	; 727a
	defb 0bbh,0bah,0bah,0beh	; 727e
	defb 0abh,0bbh,0bbh,0bah	; 7282
	defb 0bbh,0aah,0bbh,0aah	; 7286
	defb 0bbh,0bbh,0bbh,0beh	; 728a
	defb 0bbh,0bbh,0abh,0aeh	; 728e
	defb 0bah,0bbh,0bbh,0aah	; 7292
	defb 0bbh,0bbh,0bbh,0aah	; 7296
	defb 0bbh,0bbh,0bbh,0beh	; 729a

; ----------------------------------------------------------------------
; DATOS dibujos_729E: 9 dibujos de 8x8 a 4 bits para la hoja de la pagina 1
;   (desde el dibujo 42); los sube p00:48A6 por la lista 0x5564; lo leen
;   p00:48A6 (288 bytes)
;   0x729e..0x73be  (288 bytes)
DATA_dibujos_729E:
	defb 0fdh,011h,011h,011h	; 729e
	defb 0d1h,0ffh,01fh,0f1h	; 72a2
	defb 0d1h,0fdh,0ffh,0ddh	; 72a6
	defb 01fh,0f1h,011h,0ffh	; 72aa
	defb 011h,011h,011h,011h	; 72ae
	defb 01dh,0ddh,0ddh,0ddh	; 72b2
	defb 01fh,0ffh,0ffh,0ffh	; 72b6
	defb 011h,011h,011h,011h	; 72ba
	defb 011h,011h,011h,011h	; 72be
	defb 01fh,0ffh,0f1h,0ffh	; 72c2
	defb 0ffh,0fdh,0ffh,0fdh	; 72c6
	defb 01fh,01fh,0f1h,0f1h	; 72ca
	defb 011h,011h,011h,011h	; 72ce
	defb 0ddh,0ddh,0ddh,0ddh	; 72d2
	defb 0ffh,0ffh,0ffh,0ffh	; 72d6
	defb 011h,011h,011h,011h	; 72da
	defb 011h,011h,011h,0dfh	; 72de
	defb 0ffh,0ffh,0ffh,01fh	; 72e2
	defb 01fh,0dfh,0dfh,0f1h	; 72e6
	defb 01fh,01fh,011h,011h	; 72ea
	defb 011h,011h,011h,011h	; 72ee
	defb 0ddh,0ddh,0ddh,0d1h	; 72f2
	defb 0ffh,0ffh,0ffh,0d1h	; 72f6
	defb 011h,011h,011h,011h	; 72fa
	defb 01fh,0f1h,0ffh,0ffh	; 72fe
	defb 01fh,0ffh,0fdh,0ffh	; 7302
	defb 01fh,0dfh,0ddh,0dfh	; 7306
	defb 01dh,0ddh,0ddh,0ddh	; 730a
	defb 01dh,0ddh,0fdh,03dh	; 730e
	defb 01dh,03dh,0d3h,03dh	; 7312
	defb 01fh,0ddh,0ddh,0dfh	; 7316
	defb 011h,0fdh,0ffh,0f1h	; 731a
	defb 0f1h,0ffh,01fh,0ffh	; 731e
	defb 0f1h,0ffh,0ffh,0fdh	; 7322
	defb 0fdh,0fdh,0fdh,0fdh	; 7326
	defb 0ddh,0fdh,0ddh,0fdh	; 732a
	defb 0ddh,0ddh,0ddh,0ddh	; 732e
	defb 0d3h,03dh,0fdh,033h	; 7332
	defb 0ddh,0ddh,0ddh,0ddh	; 7336
	defb 0fdh,0dfh,0fdh,0ffh	; 733a
	defb 0ffh,0ffh,0ffh,0f1h	; 733e
	defb 0ffh,0dfh,0fdh,0f1h	; 7342
	defb 0fdh,0dfh,0ddh,0f1h	; 7346
	defb 0ddh,0ddh,0ddh,0d1h	; 734a
	defb 0ddh,03dh,03dh,0d1h	; 734e
	defb 0ddh,03dh,0ddh,0f1h	; 7352
	defb 0ddh,0ddh,0dfh,011h	; 7356
	defb 0fdh,0fdh,0ffh,011h	; 735a
	defb 0fdh,0dfh,0ffh,0ddh	; 735e
	defb 0ddh,0fdh,0ffh,0ffh	; 7362
	defb 0ddh,0dfh,0ddh,0ffh	; 7366
	defb 0ffh,0fdh,0dfh,0dfh	; 736a
	defb 0ffh,0fdh,0ffh,0f1h	; 736e
	defb 0fdh,0ffh,0ffh,0d1h	; 7372
	defb 0fdh,0dfh,0fdh,013h	; 7376
	defb 0dfh,0ffh,0ffh,013h	; 737a
	defb 0fdh,0ffh,0ffh,011h	; 737e
	defb 0ffh,0fdh,011h,031h	; 7382
	defb 0ddh,011h,033h,031h	; 7386
	defb 011h,033h,033h,031h	; 738a
	defb 013h,033h,033h,0d1h	; 738e
	defb 013h,033h,03dh,0d1h	; 7392
	defb 013h,033h,0ddh,0d1h	; 7396
	defb 013h,033h,033h,031h	; 739a
	defb 01dh,0dfh,0ffh,0ddh	; 739e
	defb 0d1h,01dh,0ffh,0ffh	; 73a2
	defb 0ddh,0d0h,00dh,0ffh	; 73a6
	defb 0ddh,0ddh,0d0h,01fh	; 73aa
	defb 0ddh,0ddh,0ddh,011h	; 73ae
	defb 0ddh,0ddh,0ddh,011h	; 73b2
	defb 0ddh,0ddh,0ddh,01fh	; 73b6
	defb 0ddh,0ddh,0fdh,01fh	; 73ba

; ----------------------------------------------------------------------
; DATOS dibujos_73BE: 13 dibujos de 8x8 a 4 bits para la hoja de la pagina 1
;   (desde el dibujo 131); los sube p00:48A6 por la lista 0x5564; lo leen
;   p00:48A6 (416 bytes)
;   0x73be..0x755e  (416 bytes)
DATA_dibujos_73BE:
	defb 0f1h,0ffh,0f1h,0f1h	; 73be
	defb 0f1h,011h,01fh,0f1h	; 73c2
	defb 0f1h,0f1h,011h,011h	; 73c6
	defb 0f1h,01fh,012h,0f1h	; 73ca
	defb 0ffh,01fh,012h,0f1h	; 73ce
	defb 0ffh,01fh,012h,0f1h	; 73d2
	defb 0ffh,01fh,012h,0f1h	; 73d6
	defb 0ffh,012h,0f1h,011h	; 73da
	defb 0ffh,0ffh,0ffh,0dfh	; 73de
	defb 0ffh,01fh,01fh,0f1h	; 73e2
	defb 011h,011h,011h,011h	; 73e6
	defb 02fh,011h,011h,011h	; 73ea
	defb 0ffh,011h,011h,011h	; 73ee
	defb 011h,011h,011h,011h	; 73f2
	defb 02fh,011h,011h,011h	; 73f6
	defb 02fh,011h,011h,011h	; 73fa
	defb 0ffh,0ffh,0ffh,011h	; 73fe
	defb 0f1h,0f1h,01fh,0f1h	; 7402
	defb 011h,011h,011h,011h	; 7406
	defb 011h,011h,011h,011h	; 740a
	defb 011h,011h,011h,011h	; 740e
	defb 011h,011h,011h,011h	; 7412
	defb 011h,011h,011h,011h	; 7416
	defb 011h,011h,011h,011h	; 741a
	defb 0ffh,0ffh,0f1h,011h	; 741e
	defb 011h,0f1h,011h,011h	; 7422
	defb 0f1h,011h,0f2h,01fh	; 7426
	defb 012h,0f1h,0f2h,01fh	; 742a
	defb 012h,0f1h,0f2h,01fh	; 742e
	defb 012h,0f1h,0ffh,01fh	; 7432
	defb 01fh,0f1h,011h,01fh	; 7436
	defb 011h,011h,0f1h,0ffh	; 743a
	defb 0ffh,012h,0f1h,0f1h	; 743e
	defb 0ffh,012h,0f1h,0f1h	; 7442
	defb 0ffh,012h,0f1h,0f1h	; 7446
	defb 0ffh,01fh,0f1h,0f1h	; 744a
	defb 0ffh,011h,01fh,0f1h	; 744e
	defb 0ffh,0ffh,012h,0f1h	; 7452
	defb 0ffh,0ffh,01fh,0f1h	; 7456
	defb 0ffh,0ffh,011h,011h	; 745a
	defb 02fh,011h,011h,011h	; 745e
	defb 02fh,011h,011h,011h	; 7462
	defb 02fh,011h,011h,011h	; 7466
	defb 0ffh,011h,011h,011h	; 746a
	defb 011h,011h,011h,011h	; 746e
	defb 02fh,011h,011h,011h	; 7472
	defb 02fh,011h,011h,011h	; 7476
	defb 011h,011h,011h,011h	; 747a
	defb 02fh,01fh,0f1h,0ffh	; 747e
	defb 02fh,012h,0f1h,0ffh	; 7482
	defb 02fh,012h,0f1h,0ffh	; 7486
	defb 02fh,01fh,0f1h,0ffh	; 748a
	defb 02fh,011h,011h,0ffh	; 748e
	defb 02fh,012h,0f1h,0ffh	; 7492
	defb 02fh,012h,0f1h,0ffh	; 7496
	defb 011h,011h,01fh,0ffh	; 749a
	defb 011h,0ffh,0f1h,0f1h	; 749e
	defb 01fh,011h,01fh,0f1h	; 74a2
	defb 012h,0f1h,011h,011h	; 74a6
	defb 012h,0f1h,02fh,0f1h	; 74aa
	defb 012h,0ffh,012h,0ffh	; 74ae
	defb 011h,0ffh,012h,0ffh	; 74b2
	defb 0f1h,02fh,012h,0ffh	; 74b6
	defb 0d1h,02fh,0f1h,02fh	; 74ba
	defb 0ffh,0ffh,0ffh,0dfh	; 74be
	defb 0ffh,01fh,01fh,0f1h	; 74c2
	defb 011h,0f1h,0f1h,011h	; 74c6
	defb 02fh,0ffh,01fh,0f1h	; 74ca
	defb 01fh,0f1h,0ffh,0f1h	; 74ce
	defb 01fh,012h,0ffh,011h	; 74d2
	defb 011h,012h,0ffh,011h	; 74d6
	defb 0f1h,012h,0ffh,011h	; 74da
	defb 011h,02fh,0f1h,02fh	; 74de
	defb 0f1h,02fh,0f1h,02fh	; 74e2
	defb 0f1h,02fh,0f1h,012h	; 74e6
	defb 0f1h,012h,0f1h,012h	; 74ea
	defb 0f1h,012h,0f1h,012h	; 74ee
	defb 0ffh,012h,0f1h,0f1h	; 74f2
	defb 0d1h,012h,0f1h,0f1h	; 74f6
	defb 01fh,011h,01fh,01fh	; 74fa
	defb 0f1h,02fh,0f1h,0f1h	; 74fe
	defb 0f1h,02fh,0f1h,0f1h	; 7502
	defb 0ffh,01fh,0f1h,0f1h	; 7506
	defb 0ffh,01fh,01fh,0f1h	; 750a
	defb 0ffh,01fh,01fh,0f1h	; 750e
	defb 02fh,0f1h,0ffh,0f1h	; 7512
	defb 02fh,0f1h,02fh,0f1h	; 7516
	defb 011h,011h,011h,011h	; 751a
	defb 0ffh,0ffh,0f1h,011h	; 751e
	defb 011h,0f1h,011h,01fh	; 7522
	defb 011h,012h,0f1h,01fh	; 7526
	defb 011h,012h,0ffh,01fh	; 752a
	defb 011h,012h,0ffh,01fh	; 752e
	defb 011h,0f1h,02fh,01fh	; 7532
	defb 011h,0f1h,02fh,01fh	; 7536
	defb 011h,0f1h,02fh,01fh	; 753a
	defb 011h,02fh,012h,01fh	; 753e
	defb 011h,02fh,012h,01fh	; 7542
	defb 011h,02fh,011h,01fh	; 7546
	defb 011h,02fh,01fh,0ffh	; 754a
	defb 011h,02fh,01fh,0ffh	; 754e
	defb 011h,02fh,01fh,0ffh	; 7552
	defb 011h,02fh,01fh,0ffh	; 7556
	defb 011h,011h,01fh,0ffh	; 755a

; ----------------------------------------------------------------------
; DATOS dibujos_755E: 9 dibujos de 8x8 a 4 bits para la hoja de la pagina 1
;   (desde el dibujo 68); los sube p00:48A6 por la lista 0x5564; lo leen
;   p00:48A6 (288 bytes)
;   0x755e..0x767e  (288 bytes)
DATA_dibujos_755E:
	defb 0fdh,0ffh,0ffh,0dfh	; 755e
	defb 0ffh,0fdh,0ddh,0ffh	; 7562
	defb 0ddh,0fdh,0dfh,0dfh	; 7566
	defb 0ffh,0fdh,0ffh,0ffh	; 756a
	defb 0dfh,0ffh,0ffh,0ddh	; 756e
	defb 0fdh,0ffh,0ddh,0ffh	; 7572
	defb 01fh,0fdh,0dfh,0ddh	; 7576
	defb 01fh,0ffh,0ffh,0dfh	; 757a
	defb 0ffh,0dfh,0d1h,033h	; 757e
	defb 0ffh,0ffh,0f1h,033h	; 7582
	defb 0ffh,0ddh,013h,033h	; 7586
	defb 0fdh,0ffh,013h,033h	; 758a
	defb 0ffh,0f1h,033h,033h	; 758e
	defb 0ffh,0f1h,033h,0d3h	; 7592
	defb 0dfh,013h,033h,033h	; 7596
	defb 0ffh,013h,033h,033h	; 759a
	defb 013h,033h,033h,031h	; 759e
	defb 013h,033h,033h,031h	; 75a2
	defb 013h,0d3h,033h,031h	; 75a6
	defb 013h,033h,033h,031h	; 75aa
	defb 013h,033h,03dh,0d1h	; 75ae
	defb 013h,03dh,0d3h,031h	; 75b2
	defb 013h,033h,033h,031h	; 75b6
	defb 013h,033h,033h,011h	; 75ba
	defb 0fdh,0ddh,0ddh,01fh	; 75be
	defb 0fdh,0ddh,0ddh,01fh	; 75c2
	defb 0fdh,0ddh,0ddh,01fh	; 75c6
	defb 0ffh,0ddh,0ffh,01fh	; 75ca
	defb 0ffh,0ddh,0dfh,01fh	; 75ce
	defb 0ddh,0fdh,0ddh,01fh	; 75d2
	defb 0ddh,0dfh,0ddh,01fh	; 75d6
	defb 01dh,0ddh,0ddh,01fh	; 75da
	defb 0f1h,0fdh,0fdh,0fdh	; 75de
	defb 0f1h,0dfh,0ffh,0ffh	; 75e2
	defb 0ffh,01fh,0ddh,0ffh	; 75e6
	defb 0ffh,01fh,0ffh,0ffh	; 75ea
	defb 0ffh,0f1h,0ffh,0ffh	; 75ee
	defb 0ffh,0f1h,0ffh,0ddh	; 75f2
	defb 0ffh,0ffh,01dh,0dfh	; 75f6
	defb 0ffh,0ffh,01fh,0ffh	; 75fa
	defb 0f1h,033h,03dh,033h	; 75fe
	defb 0d1h,033h,03dh,0d3h	; 7602
	defb 0d1h,03dh,03dh,033h	; 7606
	defb 0f1h,033h,033h,031h	; 760a
	defb 0f1h,033h,033h,031h	; 760e
	defb 0f1h,033h,0d3h,01dh	; 7612
	defb 0f1h,033h,0d3h,01dh	; 7616
	defb 0d1h,033h,0d1h,0ddh	; 761a
	defb 013h,033h,011h,0ddh	; 761e
	defb 013h,011h,0ddh,0ddh	; 7622
	defb 011h,0ddh,0ddh,0ddh	; 7626
	defb 0ddh,0ddh,0ddh,0dfh	; 762a
	defb 0ddh,0ddh,0ddh,0ffh	; 762e
	defb 0ddh,0ddh,0ddh,0ddh	; 7632
	defb 0dfh,0fdh,0fdh,0ddh	; 7636
	defb 011h,011h,011h,011h	; 763a
	defb 0d1h,01dh,0ddh,01fh	; 763e
	defb 0ddh,0d1h,01dh,01fh	; 7642
	defb 0ddh,0ddh,0d1h,01fh	; 7646
	defb 0fdh,0ddh,0ddh,0d1h	; 764a
	defb 0ddh,0ddh,0dfh,0f1h	; 764e
	defb 0ffh,0fdh,0ddh,0ffh	; 7652
	defb 0ddh,0ddh,0ddh,0ddh	; 7656
	defb 0ddh,0ddh,0ddh,0ddh	; 765a
	defb 0ffh,0ffh,0f1h,0dfh	; 765e
	defb 0ffh,0ffh,0f1h,0ffh	; 7662
	defb 0ffh,0ffh,0f1h,0ffh	; 7666
	defb 0ffh,0ffh,0f1h,0ffh	; 766a
	defb 0ffh,0ffh,0f1h,0ffh	; 766e
	defb 01fh,0ffh,0f1h,0ffh	; 7672
	defb 01fh,0ffh,0f1h,0ffh	; 7676
	defb 0d1h,0ffh,0f1h,0ffh	; 767a

; ----------------------------------------------------------------------
; DATOS dibujos_767E: 8 dibujos de 8x8 a 4 bits para la hoja de la pagina 1
;   (desde el dibujo 152); los sube p00:48A6 por la lista 0x5564; lo leen
;   p00:48A6 (256 bytes)
;   0x767e..0x777e  (256 bytes)
DATA_dibujos_767E:
	defb 0bah,0bah,0eeh,0ffh	; 767e
	defb 0bbh,0aah,0aah,0efh	; 7682
	defb 0aah,0bah,0aah,0eeh	; 7686
	defb 0bbh,0aah,0eah,0aeh	; 768a
	defb 0abh,0aah,0aah,0efh	; 768e
	defb 0bbh,0aah,0aah,0eeh	; 7692
	defb 0bah,0bah,0eah,0aeh	; 7696
	defb 0bbh,0aah,0aah,0eeh	; 769a
	defb 0bbh,0bah,0eah,0efh	; 769e
	defb 0bah,0bah,0aah,0ffh	; 76a2
	defb 0bbh,0aah,0aeh,0efh	; 76a6
	defb 0bah,0aah,0aeh,0ffh	; 76aa
	defb 0bah,0aah,0eeh,0ffh	; 76ae
	defb 0bbh,0aah,0aeh,0ffh	; 76b2
	defb 0aah,0bah,0eah,0efh	; 76b6
	defb 0bah,0bah,0aeh,0efh	; 76ba
	defb 0bbh,0bah,0bah,0bbh	; 76be
	defb 0bah,0bbh,0bah,0bah	; 76c2
	defb 0abh,0aah,0abh,0abh	; 76c6
	defb 0aah,0aah,0aah,0aah	; 76ca
	defb 0aeh,0aah,0eah,0aeh	; 76ce
	defb 0aah,0aah,0aah,0aeh	; 76d2
	defb 0eah,0eeh,0aeh,0efh	; 76d6
	defb 0eeh,0efh,0eeh,0ffh	; 76da
	defb 0bah,0bbh,0bbh,0bbh	; 76de
	defb 0aah,0bah,0abh,0abh	; 76e2
	defb 0bbh,0aah,0aah,0bbh	; 76e6
	defb 0aah,0aah,0aah,0aah	; 76ea
	defb 0aeh,0aeh,0aah,0aeh	; 76ee
	defb 0eah,0eeh,0eeh,0aah	; 76f2
	defb 0eeh,0ffh,0feh,0feh	; 76f6
	defb 0ffh,0ffh,0ffh,0ffh	; 76fa
	defb 0eeh,0aah,0aah,0bbh	; 76fe
	defb 0eah,0aeh,0abh,0abh	; 7702
	defb 0eeh,0aah,0aah,0bbh	; 7706
	defb 0feh,0aah,0aah,0bah	; 770a
	defb 0eah,0aeh,0aah,0bbh	; 770e
	defb 0eeh,0aah,0abh,0aah	; 7712
	defb 0feh,0aah,0aah,0bbh	; 7716
	defb 0ffh,0eeh,0abh,0abh	; 771a
	defb 0feh,0eah,0abh,0abh	; 771e
	defb 0feh,0aeh,0abh,0aah	; 7722
	defb 0ffh,0eah,0aah,0bbh	; 7726
	defb 0ffh,0eeh,0aah,0abh	; 772a
	defb 0ffh,0eah,0aah,0abh	; 772e
	defb 0feh,0eah,0aah,0bbh	; 7732
	defb 0ffh,0aah,0abh,0abh	; 7736
	defb 0feh,0aeh,0abh,0bbh	; 773a
	defb 0bbh,0bah,0bah,0bbh	; 773e
	defb 0abh,0bbh,0bbh,0bbh	; 7742
	defb 0bbh,0aah,0bbh,0abh	; 7746
	defb 0bbh,0bbh,0bbh,0bbh	; 774a
	defb 0bbh,0bbh,0abh,0bbh	; 774e
	defb 0bah,0bah,0bah,0bah	; 7752
	defb 0abh,0aah,0aah,0abh	; 7756
	defb 0aah,0ebh,0eah,0eah	; 775a
	defb 0beh,0aah,0eah,0eah	; 775e
	defb 0aah,0aah,0aah,0bah	; 7762
	defb 0bbh,0aah,0bah,0abh	; 7766
	defb 0abh,0bbh,0bbh,0bbh	; 776a
	defb 0bbh,0bbh,0abh,0bbh	; 776e
	defb 0bah,0bbh,0bbh,0bbh	; 7772
	defb 0bbh,0bbh,0bbh,0abh	; 7776
	defb 0bbh,0bbh,0bbh,0bbh	; 777a

; ----------------------------------------------------------------------
; DATOS dibujos_777E: 3 dibujos de 8x8 a 4 bits para la hoja de la pagina 1
;   (desde el dibujo 165); los sube p00:48A6 por la lista 0x5564; lo leen
;   p00:48A6 (96 bytes)
;   0x777e..0x77de  (96 bytes)
DATA_dibujos_777E:
	defb 0f1h,033h,031h,0ddh	; 777e
	defb 0f1h,033h,01dh,0ddh	; 7782
	defb 0f1h,033h,01dh,0ddh	; 7786
	defb 0f1h,031h,0ddh,0ddh	; 778a
	defb 0f1h,031h,0dfh,0fdh	; 778e
	defb 0f1h,01dh,0ddh,0ddh	; 7792
	defb 0d1h,01dh,0ddh,0ddh	; 7796
	defb 0f1h,011h,011h,011h	; 779a
	defb 0dfh,0ddh,0ddh,0ddh	; 779e
	defb 0ffh,0ddh,0ddh,0ddh	; 77a2
	defb 0fdh,0ddh,0ddh,0ddh	; 77a6
	defb 0fdh,0ddh,0fdh,0ddh	; 77aa
	defb 0ddh,0ddh,0ddh,0ddh	; 77ae
	defb 0ddh,0ddh,0dfh,0ddh	; 77b2
	defb 0ddh,0ddh,0ddh,0ddh	; 77b6
	defb 011h,011h,011h,011h	; 77ba
	defb 0d1h,0ffh,0f1h,0ffh	; 77be
	defb 0fdh,01fh,0f1h,0ffh	; 77c2
	defb 0ddh,01fh,0f1h,0ffh	; 77c6
	defb 0ddh,0d1h,0f1h,0ffh	; 77ca
	defb 0fdh,0d1h,0f1h,0ffh	; 77ce
	defb 0ddh,0ddh,011h,0ffh	; 77d2
	defb 0ddh,0ddh,011h,0ffh	; 77d6
	defb 011h,011h,011h,0ffh	; 77da

; ----------------------------------------------------------------------
; DATOS dibujos_77DE: 12 dibujos de 8x8 a 4 bits para la hoja de la pagina 1
;   (desde el dibujo 1); los sube p00:48A6 por la lista 0x5586; lo leen
;   p00:48A6 (384 bytes)
;   0x77de..0x795e  (384 bytes)
DATA_dibujos_77DE:
	defb 0f1h,0abh,0b1h,01bh	; 77de
	defb 0e1h,0abh,0b1h,0a1h	; 77e2
	defb 0f1h,0abh,01ah,011h	; 77e6
	defb 0f1h,0abh,0abh,01bh	; 77ea
	defb 01ah,011h,09bh,01ah	; 77ee
	defb 0f1h,0a1h,0a1h,01ah	; 77f2
	defb 0f1h,011h,0a1h,011h	; 77f6
	defb 0e1h,0aah,0b1h,0b1h	; 77fa
	defb 0e1h,01ah,0b1h,0b1h	; 77fe
	defb 0f1h,01ah,0b1h,0b1h	; 7802
	defb 0e1h,0a1h,011h,0b1h	; 7806
	defb 0fdh,01ah,0b1h,0b1h	; 780a
	defb 0feh,011h,09bh,011h	; 780e
	defb 0ffh,01ah,01ah,0b1h	; 7812
	defb 0deh,01ah,0b1h,091h	; 7816
	defb 0ffh,01ah,0b1h,0abh	; 781a
	defb 01bh,01ah,01dh,0ffh	; 781e
	defb 0b1h,0abh,0b1h,0ffh	; 7822
	defb 0b1h,0abh,0bbh,01fh	; 7826
	defb 0b1h,0a1h,011h,0b1h	; 782a
	defb 01ah,0a1h,0ffh,01fh	; 782e
	defb 01ah,0b1h,0efh,0fdh	; 7832
	defb 01ah,0b1h,0dfh,0ffh	; 7836
	defb 0aah,0b1h,0ffh,0ffh	; 783a
	defb 0abh,0b1h,0ffh,0ffh	; 783e
	defb 0abh,0b1h,0efh,0dfh	; 7842
	defb 0abh,0b1h,0ffh,0ffh	; 7846
	defb 0abh,01eh,0ffh,0ffh	; 784a
	defb 0bbh,01eh,0ffh,0ddh	; 784e
	defb 0bbh,01fh,0ffh,0ffh	; 7852
	defb 0bbh,01fh,0ffh,0ffh	; 7856
	defb 0abh,011h,0efh,0ffh	; 785a
	defb 0f1h,01fh,0fdh,01fh	; 785e
	defb 01ah,01fh,0f1h,0b1h	; 7862
	defb 0b1h,0a1h,011h,0b1h	; 7866
	defb 011h,0abh,011h,0b1h	; 786a
	defb 01ah,011h,01bh,019h	; 786e
	defb 0b1h,09ah,01bh,01ah	; 7872
	defb 0b1h,01ah,0b1h,01ah	; 7876
	defb 0b1h,011h,0abh,01ah	; 787a
	defb 011h,0ffh,0ffh,01fh	; 787e
	defb 09bh,01fh,0d1h,0b1h	; 7882
	defb 0abh,01fh,0f1h,0b1h	; 7886
	defb 0abh,01dh,011h,0b1h	; 788a
	defb 0abh,011h,0a1h,0abh	; 788e
	defb 0abh,011h,0a1h,0abh	; 7892
	defb 0bbh,01ah,0b1h,0abh	; 7896
	defb 0bbh,01ah,011h,0abh	; 789a
	defb 0ffh,0ffh,0ffh,01fh	; 789e
	defb 0ffh,0ffh,0d1h,0a1h	; 78a2
	defb 0fdh,0ffh,01ah,011h	; 78a6
	defb 0f1h,0fbh,0abh,01bh	; 78aa
	defb 01ah,011h,09bh,01ah	; 78ae
	defb 0f1h,0a1h,0a1h,01ah	; 78b2
	defb 0f1h,011h,0a1h,011h	; 78b6
	defb 0e1h,0aah,0b1h,0b1h	; 78ba
	defb 0ffh,01ah,01dh,0ffh	; 78be
	defb 0f1h,0abh,0b1h,0ffh	; 78c2
	defb 0f1h,0abh,0bbh,01fh	; 78c6
	defb 0f1h,0a1h,011h,0b1h	; 78ca
	defb 01ah,0a1h,0ffh,01fh	; 78ce
	defb 01ah,0b1h,0ffh,0fdh	; 78d2
	defb 01ah,0b1h,0dfh,0ffh	; 78d6
	defb 0aah,0b1h,0ffh,0ffh	; 78da
	defb 011h,01ah,0b1h,0b1h	; 78de
	defb 01ah,01ah,011h,0b1h	; 78e2
	defb 0b1h,0abh,011h,0b1h	; 78e6
	defb 011h,0abh,011h,0b1h	; 78ea
	defb 01ah,011h,01bh,019h	; 78ee
	defb 0b1h,09ah,01bh,01ah	; 78f2
	defb 0b1h,01ah,0b1h,01ah	; 78f6
	defb 0b1h,011h,0abh,01ah	; 78fa
	defb 09bh,01ah,01ah,011h	; 78fe
	defb 0abh,01ah,011h,0a1h	; 7902
	defb 0abh,01ah,011h,011h	; 7906
	defb 0a1h,01ah,019h,0a1h	; 790a
	defb 01ah,011h,09bh,0bah	; 790e
	defb 0b1h,01ah,0b1h,0bbh	; 7912
	defb 0b1h,0abh,011h,01bh	; 7916
	defb 01ah,011h,0abh,011h	; 791a
	defb 01ah,01bh,01ah,01bh	; 791e
	defb 09bh,01bh,01ah,0b1h	; 7922
	defb 0abh,01bh,011h,0b1h	; 7926
	defb 0abh,01bh,011h,0b1h	; 792a
	defb 0abh,011h,0a1h,0abh	; 792e
	defb 0abh,011h,0a1h,0abh	; 7932
	defb 0bbh,01ah,0b1h,0abh	; 7936
	defb 0bbh,01ah,011h,0abh	; 793a
	defb 0abh,01ah,011h,0b1h	; 793e
	defb 0a1h,0abh,011h,0b1h	; 7942
	defb 0b1h,0abh,011h,0b1h	; 7946
	defb 0b1h,0a1h,0b1h,0b1h	; 794a
	defb 01ah,011h,0bbh,01ah	; 794e
	defb 011h,0aah,01bh,01ah	; 7952
	defb 01ah,01ah,0b1h,01ah	; 7956
	defb 01ah,0b1h,0abh,011h	; 795a

; ----------------------------------------------------------------------
; DATOS dibujos_795E: 10 dibujos de 8x8 a 4 bits para la hoja de la pagina 1
;   (desde el dibujo 96); los sube p00:48A6 por la lista 0x5586; lo leen
;   p00:48A6 (320 bytes)
;   0x795e..0x7a9e  (320 bytes)
DATA_dibujos_795E:
	defb 0ffh,0ffh,0ffh,0ffh	; 795e
	defb 0ffh,0ffh,0ddh,0ffh	; 7962
	defb 0fdh,0ffh,0ffh,0ffh	; 7966
	defb 0ffh,0fdh,0ffh,0ffh	; 796a
	defb 0ffh,0ffh,0ffh,0ffh	; 796e
	defb 0ffh,0ffh,0ddh,0ffh	; 7972
	defb 0ffh,0ffh,0ffh,0ffh	; 7976
	defb 0fdh,0dfh,0ffh,0ffh	; 797a
	defb 0ffh,0ffh,0fdh,0ffh	; 797e
	defb 0fdh,0ffh,0ffh,0ffh	; 7982
	defb 0ffh,0ffh,0ffh,0ffh	; 7986
	defb 0ffh,0ffh,0ddh,0ffh	; 798a
	defb 0fdh,0ffh,0ffh,0ffh	; 798e
	defb 0ffh,0ffh,0ffh,0fdh	; 7992
	defb 0ddh,0ffh,0dfh,0ffh	; 7996
	defb 0ffh,0ffh,0ffh,0ffh	; 799a
	defb 0ffh,0ffh,0ffh,0dfh	; 799e
	defb 0ffh,0ffh,0ffh,0ffh	; 79a2
	defb 0ffh,0ffh,0dfh,0ffh	; 79a6
	defb 0fdh,0ffh,0ffh,0ffh	; 79aa
	defb 0ffh,0ffh,0fdh,0dfh	; 79ae
	defb 0ffh,0ffh,0ffh,0ffh	; 79b2
	defb 0dfh,0ffh,0ffh,0ffh	; 79b6
	defb 0ffh,0fdh,0dfh,0ffh	; 79ba
	defb 0ffh,0ffh,0ffh,0ffh	; 79be
	defb 0ffh,0fdh,0ffh,0dfh	; 79c2
	defb 0dfh,0ffh,0ffh,0ffh	; 79c6
	defb 0ffh,0ffh,0ffh,0ffh	; 79ca
	defb 0ffh,0ffh,0ffh,0ddh	; 79ce
	defb 0ffh,0dfh,0ffh,0ffh	; 79d2
	defb 0ffh,0ffh,0ffh,0ffh	; 79d6
	defb 0dfh,0ffh,0ffh,0ffh	; 79da
	defb 0ffh,01ah,0b1h,0abh	; 79de
	defb 0ffh,01ah,0b1h,0abh	; 79e2
	defb 0fdh,0edh,0e1h,0abh	; 79e6
	defb 0fdh,0fdh,0d1h,0abh	; 79ea
	defb 0ffh,0ddh,0f1h,0abh	; 79ee
	defb 0ddh,0ffh,0d1h,0abh	; 79f2
	defb 0ffh,0feh,0feh,0ddh	; 79f6
	defb 0fdh,0dfh,0ffh,0ffh	; 79fa
	defb 01ah,0b1h,0abh,01bh	; 79fe
	defb 01ah,0b1h,0abh,01bh	; 7a02
	defb 01ah,0b1h,0abh,01bh	; 7a06
	defb 01ah,0b1h,0edh,01bh	; 7a0a
	defb 01eh,0ddh,0ddh,01bh	; 7a0e
	defb 01dh,0ffh,0feh,0feh	; 7a12
	defb 0ddh,0ffh,0dfh,0ffh	; 7a16
	defb 0ffh,0ffh,0ffh,0ffh	; 7a1a
	defb 01ah,0b1h,0abh,011h	; 7a1e
	defb 01ah,0b1h,0abh,011h	; 7a22
	defb 01ah,0b1h,0abh,011h	; 7a26
	defb 01ah,0b1h,0abh,011h	; 7a2a
	defb 01dh,0ddh,0abh,011h	; 7a2e
	defb 0efh,0ddh,0edh,0edh	; 7a32
	defb 0ffh,0fdh,0ddh,0dfh	; 7a36
	defb 0fdh,0dfh,0ffh,0ffh	; 7a3a
	defb 0abh,01fh,0fdh,0ffh	; 7a3e
	defb 0abh,01fh,0ffh,0ffh	; 7a42
	defb 0abh,01eh,0ffh,0ffh	; 7a46
	defb 0abh,01fh,0ddh,0ffh	; 7a4a
	defb 0deh,0ddh,0ffh,0ffh	; 7a4e
	defb 0ffh,0feh,0ffh,0fdh	; 7a52
	defb 0ddh,0ffh,0dfh,0ffh	; 7a56
	defb 0ffh,0ffh,0ffh,0ffh	; 7a5a
	defb 0edh,0dah,0feh,0eah	; 7a5e
	defb 0dah,0aah,0aah,0aah	; 7a62
	defb 0fah,0bbh,0bah,0abh	; 7a66
	defb 0bbh,0bah,0bbh,0bbh	; 7a6a
	defb 0dbh,0bbh,0bbh,0bbh	; 7a6e
	defb 0fbh,0bbh,0aah,0fbh	; 7a72
	defb 0bbh,0ffh,0bbh,0bbh	; 7a76
	defb 0fdh,0dfh,0bbh,0ffh	; 7a7a
	defb 0aah,0dah,0fdh,0aeh	; 7a7e
	defb 0abh,0aah,0bbh,0aah	; 7a82
	defb 0bbh,0bbh,0abh,0bah	; 7a86
	defb 0abh,0aah,0aah,0bbh	; 7a8a
	defb 0aah,0bah,0bbh,0bbh	; 7a8e
	defb 0bbh,0bfh,0aah,0bbh	; 7a92
	defb 0bfh,0ffh,0bbh,0bbh	; 7a96
	defb 0fdh,0dfh,0ffh,0ffh	; 7a9a

; ----------------------------------------------------------------------
; DATOS dibujos_7A9E: 8 dibujos de 8x8 a 4 bits para la hoja de la pagina 1
;   (desde el dibujo 26); los sube p00:48A6 por la lista 0x5586; lo leen
;   p00:48A6 (256 bytes)
;   0x7a9e..0x7b9e  (256 bytes)
DATA_dibujos_7A9E:
	defb 0ffh,011h,011h,011h	; 7a9e
	defb 0f1h,022h,012h,021h	; 7aa2
	defb 0f1h,02ah,022h,0aah	; 7aa6
	defb 012h,021h,011h,022h	; 7aaa
	defb 011h,011h,011h,011h	; 7aae
	defb 01ah,0aah,0aah,0aah	; 7ab2
	defb 012h,022h,022h,022h	; 7ab6
	defb 011h,011h,011h,011h	; 7aba
	defb 011h,011h,011h,011h	; 7abe
	defb 012h,022h,021h,022h	; 7ac2
	defb 022h,02ah,022h,02ah	; 7ac6
	defb 012h,012h,021h,021h	; 7aca
	defb 011h,011h,011h,011h	; 7ace
	defb 0aah,0aah,0aah,0aah	; 7ad2
	defb 022h,022h,022h,022h	; 7ad6
	defb 011h,011h,011h,011h	; 7ada
	defb 011h,011h,011h,0ffh	; 7ade
	defb 022h,022h,022h,01fh	; 7ae2
	defb 012h,0a2h,0a2h,021h	; 7ae6
	defb 012h,012h,011h,011h	; 7aea
	defb 011h,011h,011h,011h	; 7aee
	defb 0aah,0aah,0aah,0a1h	; 7af2
	defb 022h,022h,022h,0a1h	; 7af6
	defb 011h,011h,011h,011h	; 7afa
	defb 021h,022h,012h,022h	; 7afe
	defb 021h,022h,022h,02ah	; 7b02
	defb 02ah,02ah,02ah,02ah	; 7b06
	defb 0aah,02ah,0aah,02ah	; 7b0a
	defb 0aah,0aah,0aah,0aah	; 7b0e
	defb 0a9h,09ah,02ah,099h	; 7b12
	defb 0aah,0aah,0aah,0aah	; 7b16
	defb 02ah,0a2h,02ah,022h	; 7b1a
	defb 022h,022h,022h,021h	; 7b1e
	defb 022h,0a2h,02ah,021h	; 7b22
	defb 02ah,0a2h,0aah,021h	; 7b26
	defb 0aah,0aah,0aah,0a1h	; 7b2a
	defb 0aah,09ah,09ah,0a1h	; 7b2e
	defb 0aah,09ah,0aah,021h	; 7b32
	defb 0aah,0aah,0a2h,011h	; 7b36
	defb 02ah,02ah,022h,01fh	; 7b3a
	defb 011h,011h,011h,011h	; 7b3e
	defb 022h,012h,022h,021h	; 7b42
	defb 02ah,02ah,0a2h,0a1h	; 7b46
	defb 012h,022h,021h,021h	; 7b4a
	defb 011h,021h,011h,011h	; 7b4e
	defb 0a1h,011h,0aah,0aah	; 7b52
	defb 011h,012h,022h,022h	; 7b56
	defb 011h,011h,011h,011h	; 7b5a
	defb 012h,021h,022h,021h	; 7b5e
	defb 012h,022h,02ah,011h	; 7b62
	defb 012h,0a2h,0aah,011h	; 7b66
	defb 01ah,0a1h,011h,011h	; 7b6a
	defb 011h,011h,011h,011h	; 7b6e
	defb 01ah,09ah,011h,011h	; 7b72
	defb 012h,0aah,0aah,011h	; 7b76
	defb 011h,02ah,011h,011h	; 7b7a
	defb 011h,022h,012h,021h	; 7b7e
	defb 011h,022h,022h,02ah	; 7b82
	defb 011h,021h,02ah,02ah	; 7b86
	defb 011h,011h,011h,021h	; 7b8a
	defb 01ah,01ah,011h,01ah	; 7b8e
	defb 019h,01ah,02ah,099h	; 7b92
	defb 0aah,0aah,0aah,0aah	; 7b96
	defb 02ah,0a2h,02ah,022h	; 7b9a

; ----------------------------------------------------------------------
; DATOS dibujos_7B9E: 7 dibujos de 8x8 a 4 bits para la hoja de la pagina 1
;   (desde el dibujo 114); los sube p00:48A6 por la lista 0x5586; lo leen
;   p00:48A6 (224 bytes)
;   0x7b9e..0x7c7e  (224 bytes)
DATA_dibujos_7B9E:
	defb 011h,022h,021h,021h	; 7b9e
	defb 012h,011h,012h,021h	; 7ba2
	defb 01ah,021h,011h,011h	; 7ba6
	defb 01ah,021h,0a2h,021h	; 7baa
	defb 01ah,022h,01ah,022h	; 7bae
	defb 011h,022h,01ah,022h	; 7bb2
	defb 0f1h,0a2h,01ah,022h	; 7bb6
	defb 0f1h,0a2h,021h,0a2h	; 7bba
	defb 022h,022h,022h,0a2h	; 7bbe
	defb 022h,012h,012h,021h	; 7bc2
	defb 011h,021h,021h,011h	; 7bc6
	defb 0a2h,022h,011h,011h	; 7bca
	defb 012h,021h,011h,011h	; 7bce
	defb 012h,011h,011h,011h	; 7bd2
	defb 011h,011h,01ah,011h	; 7bd6
	defb 021h,011h,012h,011h	; 7bda
	defb 022h,022h,022h,011h	; 7bde
	defb 021h,021h,012h,021h	; 7be2
	defb 011h,0c1h,01ch,011h	; 7be6
	defb 011h,01ch,01ch,01ch	; 7bea
	defb 011h,01ch,011h,0cch	; 7bee
	defb 011h,011h,0cch,011h	; 7bf2
	defb 011h,011h,01ch,0cch	; 7bf6
	defb 011h,011h,011h,011h	; 7bfa
	defb 022h,022h,021h,011h	; 7bfe
	defb 011h,021h,011h,01fh	; 7c02
	defb 0c1h,01ah,021h,01fh	; 7c06
	defb 011h,01ah,022h,01fh	; 7c0a
	defb 0c1h,01ah,022h,01fh	; 7c0e
	defb 011h,021h,0a2h,01fh	; 7c12
	defb 0c1h,021h,0a2h,01fh	; 7c16
	defb 01ch,021h,0a2h,01fh	; 7c1a
	defb 0f1h,0a2h,021h,0a2h	; 7c1e
	defb 0f1h,0a2h,021h,0a2h	; 7c22
	defb 021h,0a2h,021h,01ah	; 7c26
	defb 0f1h,01ah,021h,01ah	; 7c2a
	defb 02eh,01ah,021h,01ah	; 7c2e
	defb 0f2h,01ah,021h,011h	; 7c32
	defb 02eh,01ah,021h,011h	; 7c36
	defb 0f2h,011h,011h,011h	; 7c3a
	defb 021h,011h,0a1h,011h	; 7c3e
	defb 021h,01ah,021h,011h	; 7c42
	defb 022h,012h,021h,011h	; 7c46
	defb 022h,012h,012h,011h	; 7c4a
	defb 022h,012h,012h,021h	; 7c4e
	defb 0a2h,021h,022h,021h	; 7c52
	defb 0a2h,021h,0a2h,021h	; 7c56
	defb 011h,011h,011h,011h	; 7c5a
	defb 011h,0a2h,01ah,01fh	; 7c5e
	defb 011h,0a2h,01ah,01fh	; 7c62
	defb 011h,0a2h,011h,01fh	; 7c66
	defb 011h,0a2h,01fh,0ffh	; 7c6a
	defb 011h,0a2h,01fh,0ffh	; 7c6e
	defb 011h,0a2h,01fh,0ffh	; 7c72
	defb 011h,0a2h,01fh,0ffh	; 7c76
	defb 011h,011h,01fh,0ffh	; 7c7a

; ----------------------------------------------------------------------
; DATOS dibujos_7C7E: 16 dibujos de 8x8 a 4 bits para la hoja de la pagina 1
;   (desde el dibujo 1); los sube p00:48A6 por la lista 0x55A4; lo leen
;   p00:48A6 (512 bytes)
;   0x7c7e..0x7e7e  (512 bytes)
DATA_dibujos_7C7E:
	defb 015h,051h,01ch,0c5h	; 7c7e
	defb 0d1h,01ch,011h,0c5h	; 7c82
	defb 0d1h,0cbh,0c1h,011h	; 7c86
	defb 0b1h,0cch,051h,011h	; 7c8a
	defb 0b1h,0bch,051h,011h	; 7c8e
	defb 0b1h,0b5h,041h,011h	; 7c92
	defb 0b1h,0c5h,041h,0c5h	; 7c96
	defb 0dbh,015h,01ch,0c5h	; 7c9a
	defb 0bbh,011h,01ch,055h	; 7c9e
	defb 0b1h,0cch,01ch,054h	; 7ca2
	defb 01ch,0c5h,011h,041h	; 7ca6
	defb 01ch,0b5h,041h,011h	; 7caa
	defb 01ch,055h,041h,0cch	; 7cae
	defb 01ch,0b5h,041h,0bbh	; 7cb2
	defb 01bh,0c5h,01ch,0b5h	; 7cb6
	defb 01ch,0c1h,01ch,05ch	; 7cba
	defb 015h,044h,05bh,041h	; 7cbe
	defb 055h,054h,015h,041h	; 7cc2
	defb 055h,0b4h,015h,041h	; 7cc6
	defb 05bh,044h,011h,01fh	; 7cca
	defb 015h,054h,011h,0ffh	; 7cce
	defb 015h,054h,011h,01fh	; 7cd2
	defb 015h,044h,015h,011h	; 7cd6
	defb 011h,011h,015h,051h	; 7cda
	defb 01ch,051h,015h,041h	; 7cde
	defb 015h,051h,055h,041h	; 7ce2
	defb 0c5h,041h,055h,041h	; 7ce6
	defb 0c5h,041h,0b4h,041h	; 7cea
	defb 055h,041h,0b5h,041h	; 7cee
	defb 0b5h,041h,014h,041h	; 7cf2
	defb 014h,041h,011h,01fh	; 7cf6
	defb 011h,011h,014h,04fh	; 7cfa
	defb 011h,011h,011h,0ddh	; 7cfe
	defb 0cch,0cch,0cch,01dh	; 7d02
	defb 0cch,0b5h,0cch,0c1h	; 7d06
	defb 015h,055h,0bbh,0c1h	; 7d0a
	defb 011h,044h,041h,011h	; 7d0e
	defb 0cch,011h,011h,0cch	; 7d12
	defb 05ch,0cch,014h,055h	; 7d16
	defb 0b5h,0cch,011h,045h	; 7d1a
	defb 0bdh,0bbh,0bdh,0d1h	; 7d1e
	defb 0b1h,011h,011h,015h	; 7d22
	defb 01ch,0cch,0cch,015h	; 7d26
	defb 055h,0bch,0bch,0c1h	; 7d2a
	defb 014h,045h,05bh,011h	; 7d2e
	defb 0c1h,011h,011h,01ch	; 7d32
	defb 0cch,011h,011h,0cch	; 7d36
	defb 055h,011h,011h,05bh	; 7d3a
	defb 011h,055h,0cch,011h	; 7d3e
	defb 014h,05bh,055h,05ch	; 7d42
	defb 014h,044h,044h,05bh	; 7d46
	defb 011h,011h,011h,011h	; 7d4a
	defb 011h,015h,05bh,0b1h	; 7d4e
	defb 041h,04bh,045h,055h	; 7d52
	defb 041h,044h,044h,044h	; 7d56
	defb 0ffh,011h,011h,011h	; 7d5a
	defb 011h,011h,05bh,0b1h	; 7d5e
	defb 015h,05bh,055h,055h	; 7d62
	defb 014h,0b5h,045h,054h	; 7d66
	defb 014h,044h,044h,044h	; 7d6a
	defb 011h,011h,011h,015h	; 7d6e
	defb 055h,011h,015h,05bh	; 7d72
	defb 051h,01fh,014h,044h	; 7d76
	defb 011h,0ffh,0f1h,011h	; 7d7a
	defb 011h,011h,015h,055h	; 7d7e
	defb 0cch,011h,011h,011h	; 7d82
	defb 0cch,0cch,011h,044h	; 7d86
	defb 0b5h,0cch,011h,011h	; 7d8a
	defb 055h,041h,01ch,0cch	; 7d8e
	defb 044h,011h,0cch,0bch	; 7d92
	defb 011h,011h,05bh,055h	; 7d96
	defb 0c5h,011h,014h,044h	; 7d9a
	defb 011h,0cbh,044h,011h	; 7d9e
	defb 015h,0c5h,055h,041h	; 7da2
	defb 011h,0cch,0c5h,041h	; 7da6
	defb 011h,011h,011h,011h	; 7daa
	defb 011h,0cch,041h,011h	; 7dae
	defb 051h,0c5h,041h,0cbh	; 7db2
	defb 01ch,0b4h,041h,0c5h	; 7db6
	defb 01ch,054h,01ch,055h	; 7dba
	defb 051h,041h,0cbh,054h	; 7dbe
	defb 051h,041h,0b5h,044h	; 7dc2
	defb 051h,011h,0cch,054h	; 7dc6
	defb 011h,011h,01ch,051h	; 7dca
	defb 011h,0cbh,011h,011h	; 7dce
	defb 011h,0cbh,041h,011h	; 7dd2
	defb 01ch,0c5h,054h,015h	; 7dd6
	defb 01ch,0bch,054h,01ch	; 7dda
	defb 011h,051h,011h,011h	; 7dde
	defb 0cch,011h,011h,051h	; 7de2
	defb 05bh,0cch,01ch,0cch	; 7de6
	defb 044h,05ch,01bh,05bh	; 7dea
	defb 014h,044h,01ch,054h	; 7dee
	defb 0c1h,011h,015h,054h	; 7df2
	defb 05ch,0c1h,014h,041h	; 7df6
	defb 055h,0c1h,011h,011h	; 7dfa
	defb 0b1h,011h,011h,0ddh	; 7dfe
	defb 01ch,0cch,0cch,01dh	; 7e02
	defb 01ch,05bh,0cch,0c1h	; 7e06
	defb 015h,055h,05bh,0c1h	; 7e0a
	defb 0b1h,044h,041h,011h	; 7e0e
	defb 0b1h,011h,011h,0cch	; 7e12
	defb 01ch,0cch,014h,05bh	; 7e16
	defb 015h,0cch,011h,045h	; 7e1a
	defb 0bdh,0bbh,0bdh,0dbh	; 7e1e
	defb 0b1h,011h,011h,0bbh	; 7e22
	defb 01ch,0cch,0cch,01bh	; 7e26
	defb 055h,05ch,0cch,0c1h	; 7e2a
	defb 014h,045h,0bch,011h	; 7e2e
	defb 0c1h,011h,011h,01bh	; 7e32
	defb 0cch,011h,011h,0ffh	; 7e36
	defb 05bh,011h,011h,0fbh	; 7e3a
	defb 011h,05bh,0cch,011h	; 7e3e
	defb 014h,055h,0b5h,0bch	; 7e42
	defb 014h,044h,044h,055h	; 7e46
	defb 0b1h,011h,011h,011h	; 7e4a
	defb 0cbh,015h,055h,051h	; 7e4e
	defb 0b1h,045h,045h,0b5h	; 7e52
	defb 0d1h,044h,044h,044h	; 7e56
	defb 0bch,011h,011h,011h	; 7e5a
	defb 011h,011h,055h,051h	; 7e5e
	defb 015h,055h,055h,051h	; 7e62
	defb 014h,055h,045h,051h	; 7e66
	defb 014h,044h,044h,011h	; 7e6a
	defb 011h,011h,011h,01bh	; 7e6e
	defb 055h,011h,01bh,0ffh	; 7e72
	defb 051h,01bh,0bfh,0fbh	; 7e76
	defb 011h,0fbh,0f5h,0bbh	; 7e7a

; ----------------------------------------------------------------------
; DATOS dibujos_7E7E: 21 dibujos de 8x8 a 4 bits para la hoja de la pagina 1
;   (desde el dibujo 144); los sube p00:48A6 por la lista 0x55A4; lo leen
;   p00:48A6 (386 bytes)
;   0x7e7e..0x8000  (386 bytes)
DATA_dibujos_7E7E:
	defb 0bdh,0dbh,0bbh,0ddh	; 7e7e
	defb 0ddh,0bdh,0bbh,0cdh	; 7e82
	defb 0ddh,0dbh,0ddh,0bbh	; 7e86
	defb 0bbh,0bdh,0ddh,0dbh	; 7e8a
	defb 0bdh,0ddh,0cdh,0bdh	; 7e8e
	defb 0bdh,0bbh,0bbh,0ddh	; 7e92
	defb 0bdh,0ddh,0bdh,0bdh	; 7e96
	defb 0dbh,0bbh,0bdh,0dbh	; 7e9a
	defb 0bdh,0bbh,0bdh,0dbh	; 7e9e
	defb 0bbh,0bdh,0cdh,0bbh	; 7ea2
	defb 0ddh,0bdh,0dch,0dbh	; 7ea6
	defb 0bdh,0bdh,0bch,0bbh	; 7eaa
	defb 0ddh,0cbh,0bbh,0ddh	; 7eae
	defb 0bdh,0dbh,0ddh,0bbh	; 7eb2
	defb 0bbh,0bdh,0dbh,0ddh	; 7eb6
	defb 0bbh,0bbh,0bbh,0dbh	; 7eba
	defb 0bbh,0dbh,0dbh,0cdh	; 7ebe
	defb 0bbh,0bbh,0dbh,0ddh	; 7ec2
	defb 0dbh,0ddh,0dch,0dbh	; 7ec6
	defb 0bdh,0dbh,0ddh,0bbh	; 7eca
	defb 0cbh,0bch,0bbh,0dbh	; 7ece
	defb 0bbh,0dbh,0dbh,0ddh	; 7ed2
	defb 0dbh,0ddh,0bdh,0bdh	; 7ed6
	defb 0bch,0bbh,0dbh,0dbh	; 7eda
	defb 0ddh,0bdh,0bdh,0bdh	; 7ede
	defb 0bbh,0dbh,0bbh,0dbh	; 7ee2
	defb 0dch,0bbh,0ddh,0cbh	; 7ee6
	defb 0bbh,0dbh,0dbh,0bdh	; 7eea
	defb 0ddh,0bbh,0bdh,0bbh	; 7eee
	defb 0dbh,0ddh,0cbh,0ddh	; 7ef2
	defb 0ddh,0bbh,0bdh,0dbh	; 7ef6
	defb 0bbh,0dbh,0dch,0bbh	; 7efa
	defb 051h,051h,0c5h,0b4h	; 7efe
	defb 01ch,0c1h,0cch,054h	; 7f02
	defb 01ch,051h,015h,051h	; 7f06
	defb 0cbh,051h,011h,011h	; 7f0a
	defb 0c5h,011h,011h,01ch	; 7f0e
	defb 011h,0cch,0c1h,01ch	; 7f12
	defb 011h,0cbh,0c1h,01ch	; 7f16
	defb 01ch,0b5h,055h,01ch	; 7f1a
	defb 01ch,0cbh,054h,01ch	; 7f1e
	defb 01ch,0c5h,054h,015h	; 7f22
	defb 011h,0cch,041h,011h	; 7f26
	defb 011h,0cbh,011h,011h	; 7f2a
	defb 011h,011h,01ch,051h	; 7f2e
	defb 051h,011h,0cch,054h	; 7f32
	defb 051h,041h,0c5h,0b4h	; 7f36
	defb 051h,041h,0cch,054h	; 7f3a
	defb 011h,0c5h,0b5h,041h	; 7f3e
	defb 011h,015h,055h,041h	; 7f42
	defb 011h,011h,054h,041h	; 7f46
	defb 0c5h,051h,011h,011h	; 7f4a
	defb 055h,0b5h,011h,051h	; 7f4e
	defb 0cbh,054h,01ch,0b4h	; 7f52
	defb 0cbh,044h,01ch,054h	; 7f56
	defb 055h,044h,015h,044h	; 7f5a
	defb 0c5h,044h,015h,044h	; 7f5e
	defb 055h,0b4h,014h,041h	; 7f62
	defb 054h,041h,011h,011h	; 7f66
	defb 011h,011h,055h,011h	; 7f6a
	defb 011h,01ch,05bh,041h	; 7f6e
	defb 011h,0c5h,054h,041h	; 7f72
	defb 011h,0c5h,0b4h,041h	; 7f76
	defb 011h,0c5h,0b4h,041h	; 7f7a
	defb 055h,051h,011h,011h	; 7f7e
	defb 011h,011h,011h,0cch	; 7f82
	defb 044h,011h,0cch,0cbh	; 7f86
	defb 011h,011h,0cch,0bch	; 7f8a
	defb 0cch,0c1h,014h,055h	; 7f8e
	defb 0cbh,0cch,011h,044h	; 7f92
	defb 055h,0b5h,011h,011h	; 7f96
	defb 044h,041h,011h,05ch	; 7f9a
	defb 011h,01ch,0c1h,015h	; 7f9e
	defb 0c1h,015h,0cch,0b1h	; 7fa2
	defb 0bch,0c1h,055h,0c5h	; 7fa6
	defb 055h,0b1h,011h,011h	; 7faa
	defb 05ch,0c1h,011h,0cbh	; 7fae
	defb 051h,011h,015h,0cbh	; 7fb2
	defb 011h,011h,01bh,055h	; 7fb6
	defb 0cch,0cch,011h,044h	; 7fba
	defb 011h,011h,015h,05ch	; 7fbe
	defb 011h,011h,014h,055h	; 7fc2
	defb 0cch,0c1h,014h,044h	; 7fc6
	defb 05bh,05ch,011h,044h	; 7fca
	defb 055h,0b5h,0b1h,011h	; 7fce
	defb 044h,045h,051h,045h	; 7fd2
	defb 044h,044h,011h,044h	; 7fd6
	defb 011h,011h,011h,014h	; 7fda
	defb 05ch,0c5h,0c1h,011h	; 7fde
	defb 055h,0b5h,051h,011h	; 7fe2
	defb 044h,0b5h,051h,01ch	; 7fe6
	defb 044h,045h,011h,0b5h	; 7fea
	defb 011h,011h,015h,05bh	; 7fee
	defb 05ch,0c1h,014h,055h	; 7ff2
	defb 04bh,055h,014h,044h	; 7ff6
	defb 044h,041h,011h,011h	; 7ffa
	defb 045h,0c1h	; 7ffe
