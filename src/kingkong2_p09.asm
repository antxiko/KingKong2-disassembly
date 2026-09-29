; ==========================================================================
; KING KONG 2: YOMIGAERU DENSETSU - Konami (1986) - MSX - MegaROM RC-745 de 128 KB (Konami4) - banco 09 (se ejecuta en 0xa000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x0a000


; ----------------------------------------------------------------------
; DATOS sin identificar  0xa000..0xb7d6  (6102 bytes)
DATA_A000:
	defb 01bh,0b1h,0bbh,011h,011h,0bbh,0bbh,01dh,0ddh,011h,0bbh,0b1h,0bbh,0ddh,0bbh,01dh	; a000  ................
	defb 0dbh,0bbh,0bbh,01dh,011h,0bbh,0bbh,01dh,0dbh,0bbh,0bbh,0bbh,0bbh,0bdh,01dh,0bbh	; a010  ................
	defb 0bbh,0bdh,0d1h,0bbh,0bbh,0b1h,011h,0bbh,0bbh,0bbh,0d1h,0bbh,0d1h,01bh,0d1h,0bbh	; a020  ................
	defb 0bdh,0d1h,01bh,0bbh,0bbh,01dh,0d1h,0bbh,0bbh,0dbh,0d1h,0bbh,0bbh,0bbh,0b1h,0bbh	; a030  ................
	defb 01bh,0b1h,01bh,0bbh,0bbh,011h,011h,0bbh,011h,0ddh,0d1h,0bbh,0ddh,0bbh,01bh,0bbh	; a040  ................
	defb 0bbh,0bdh,0d1h,0bbh,0bbh,011h,0d1h,0bbh,0bbh,0bdh,0d1h,011h,01bh,011h,0b1h,0ddh	; a050  ................
	defb 0d1h,0d1h,01bh,0d1h,0dbh,0d1h,01bh,0b1h,0bbh,0d1h,0bbh,0bbh,0bdh,01bh,0bbh,0bbh	; a060  ................
	defb 0bdh,01bh,01bh,0bbh,0bbh,0bbh,0bbh,0bbh,0bbh,0bbh,0bbh,011h,0b1h,011h,01dh,0ddh	; a070  ................
	defb 01dh,0d1h,0d1h,0bdh,01bh,0b1h,0ddh,0d1h,0d1h,0bbh,0bbh,0bbh,0d1h,0bbh,0bbh,0bbh	; a080  ................
	defb 0bdh,0bbh,0bbh,0bbh,0bbh,0bbh,0bbh,0bbh,0bbh,0bbh,0bbh,0bbh,0bbh,0bbh,0bbh,0bbh	; a090  ................
	defb 0bbh,0bbh,0bbh,0bbh,0bdh,01bh,01bh,0bbh,0bdh,01bh,0bbh,0b1h,0bbh,0d1h,0bbh,0d1h	; a0a0  ................
	defb 0dbh,0d1h,01bh,0ddh,0d1h,0d1h,01bh,011h,01bh,011h,0b1h,0bbh,0bbh,0bbh,0bbh,0bbh	; a0b0  ................
	defb 0bbh,0bbh,0bbh,0bbh,0bdh,0bbh,0bbh,0bbh,0d1h,0bbh,0bbh,0d1h,0d1h,0bbh,0bbh,0bdh	; a0c0  ................
	defb 01bh,0b1h,0ddh,0ddh,01dh,0d1h,0d1h,011h,0b1h,011h,01dh,0bbh,0bbh,0bbh,0bbh,0bbh	; a0d0  ................
	defb 0dbh,0bbh,0bbh,0bbh,01dh,0dbh,0bbh,0bbh,0b1h,01dh,0d1h,0bbh,0bbh,011h,011h,0bbh	; a0e0  ................
	defb 0bbh,01bh,01bh,0bbh,0bbh,0b1h,01bh,0bbh,0bbh,011h,011h,0bbh,0bbh,011h,011h,0bbh	; a0f0  ................
	defb 0bbh,0b1h,01bh,0bbh,0bbh,01bh,01bh,0bbh,0bbh,011h,011h,0bbh,0b1h,01dh,0d1h,0bbh	; a100  ................
	defb 01dh,0dbh,0bbh,0bbh,0dbh,0bbh,0bbh,0bbh,0bbh,0bbh,0bbh,0bbh,0bbh,0bbh,0bbh,0bbh	; a110  ................
	defb 0bbh,0bdh,0bbh,0bbh,0bdh,0d1h,0bbh,01dh,0d1h,01bh,0bbh,011h,011h,0bbh,0bbh,0b1h	; a120  ................
	defb 0b1h,0bbh,0bbh,0b1h,01bh,0bbh,0bbh,011h,011h,0bbh,0bbh,011h,011h,0bbh,0bbh,0b1h	; a130  ................
	defb 01bh,0bbh,0bbh,0b1h,0b1h,0bbh,0bbh,011h,011h,0bbh,0bbh,01dh,0d1h,01bh,0bbh,0bbh	; a140  ................
	defb 0bdh,0d1h,0bbh,0bbh,0bbh,0bdh,0bbh,0bbh,0bbh,0bbh,0bbh,0bbh,0bbh,0bbh,0bbh,0bbh	; a150  ................
	defb 0bbh,01bh,0bbh,0bbh,0b1h,0bbh,01bh,0b1h,01bh,0bbh,0b1h,0bbh,0bbh,0bbh,01bh,0bbh	; a160  ................
	defb 0bbh,011h,0bbh,0bbh,0bbh,0bdh,0bbh,0dbh,0b1h,0bbh,0b1h,0bbh,01bh,0bbh,0bbh,011h	; a170  ................
	defb 0bbh,0bbh,0bbh,0bbh,0bbh,0bbh,0bbh,01bh,0bbh,0bbh,01bh,0bbh,0b1h,01bh,0bbh,0bbh	; a180  ................
	defb 0bbh,0bbh,0bbh,0b1h,0bdh,0dbh,0bbh,01bh,0bbh,011h,0bbh,0b1h,01bh,0bbh,0ddh,0b1h	; a190  ................
	defb 0b1h,0bbh,0bbh,0b1h,01bh,011h,0bbh,0bbh,0b1h,01bh,011h,0bbh,0b1h,0bbh,0bdh,0b1h	; a1a0  ................
	defb 0bbh,0bbh,01dh,0b1h,01bh,0b1h,0bbh,01bh,0bbh,0bbh,0b1h,0bbh,01bh,01bh,0bdh,0bbh	; a1b0  ................
	defb 0bbh,0bbh,0ddh,0bbh,011h,01bh,0b1h,0b1h,0bbh,011h,0bbh,0bbh,0bbh,0bbh,0bbh,0bbh	; a1c0  ................
	defb 0b1h,01bh,0bdh,01bh,011h,0b1h,0bdh,0bbh,0bbh,01bh,0bbh,0b1h,01bh,0bbh,011h,011h	; a1d0  ................
	defb 0b1h,0bbh,0bbh,011h,01bh,011h,0bbh,0bbh,0b1h,01bh,01bh,0bbh,0b1h,0bbh,0b1h,0b1h	; a1e0  ................
	defb 0bbh,0bbh,011h,0b1h,01bh,0b1h,0bbh,01bh,0bbh,0bbh,0bbh,011h,0eeh,01eh,0eeh,01eh	; a1f0  ................
	defb 0eah,0eeh,0aeh,0eah,0aah,0aah,0aah,0eah,0aeh,0aah,0eah,0aah,0aah,0aah,0aah,0fah	; a200  ................
	defb 0fah,0aah,0fah,0afh,0afh,0ffh,0afh,0ffh,0afh,0afh,0ffh,011h,011h,011h,011h,0e1h	; a210  ................
	defb 0e1h,011h,0eeh,0aah,0eeh,0eeh,0aeh,0eah,0aah,0eah,0eah,0aah,0aah,0aah,0aah,0ffh	; a220  ................
	defb 0aah,0aah,0ffh,0fah,0fah,0afh,0aah,0ffh,0ffh,0ffh,0afh,0eah,0fah,0fah,0ffh,0aah	; a230  ................
	defb 0ffh,0ffh,0ffh,0afh,0aah,0ffh,0afh,0afh,0ffh,0ffh,0ffh,0fah,0ffh,0afh,0ffh,0eah	; a240  ................
	defb 0ffh,0ffh,0ffh,0aah,0afh,0ffh,0afh,0aah,0ffh,0ffh,0ffh,0ffh,0fah,0fah,0ffh,0afh	; a250  ................
	defb 0ffh,0ffh,0ffh,0ffh,0aah,0ffh,0afh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0afh,0ffh,0fah	; a260  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0afh,0ffh,0ffh,0ffh,0ffh,0ffh,0fah,0fah,0feh,0afh	; a270  ................
	defb 0ffh,0ffh,0fah,0ffh,0aah,0ffh,0aah,0ffh,0ffh,0ffh,0feh,0ffh,0ffh,0afh,0aeh,0fah	; a280  ................
	defb 0ffh,0ffh,0aah,0ffh,0ffh,0ffh,0aah,0ffh,0ffh,0ffh,0feh,0b1h,0b1h,0bbh,011h,01bh	; a290  ................
	defb 0b1h,0b1h,01bh,01bh,01bh,011h,01dh,0b1h,011h,0d1h,01bh,011h,01bh,0b1h,0ddh,01bh	; a2a0  ................
	defb 0bbh,01dh,0bbh,01bh,011h,0bbh,011h,0b1h,01bh,0bbh,01bh,0b1h,0bbh,011h,0d1h,01bh	; a2b0  ................
	defb 0b1h,011h,01bh,011h,01bh,0bdh,0dbh,0b1h,0bbh,01bh,0b1h,0b1h,011h,01bh,011h,011h	; a2c0  ................
	defb 01dh,0b1h,01dh,011h,0bbh,011h,0dbh,01bh,0b1h,0bdh,0b1h,0b1h,0bdh,0bdh,0b1h,011h	; a2d0  ................
	defb 0bdh,011h,011h,0bbh,0d1h,011h,01bh,0bbh,01bh,0d1h,0bbh,0b1h,01bh,01bh,011h,011h	; a2e0  ................
	defb 011h,011h,01bh,011h,0b1h,011h,0b1h,0b1h,011h,0b1h,01bh,011h,0bbh,01bh,011h,0bbh	; a2f0  ................
	defb 01bh,011h,011h,011h,011h,01bh,01bh,0bdh,0b1h,011h,01bh,0d1h,011h,0b1h,0bdh,0bbh	; a300  ................
	defb 011h,0b1h,0bbh,0d1h,01bh,011h,0dbh,01bh,01bh,011h,0d1h,0bdh,011h,011h,011h,0d1h	; a310  ................
	defb 0bbh,01bh,0b1h,0d1h,0bdh,0bbh,0ddh,01bh,0b1h,011h,0bbh,011h,011h,011h,011h,01dh	; a320  ................
	defb 0ddh,0ddh,0ddh,01bh,0bbh,0bbh,0bbh,011h,011h,011h,011h,011h,011h,011h,011h,01bh	; a330  ................
	defb 0bbh,0b1h,0bbh,0bbh,0bdh,0bbh,0bdh,01bh,01bh,0b1h,0b1h,011h,011h,011h,011h,0ddh	; a340  ................
	defb 0ddh,0ddh,0ddh,0bbh,0bbh,0bbh,0bbh,011h,011h,011h,011h,011h,011h,011h,0dbh,0bbh	; a350  ................
	defb 0bbh,0bbh,01bh,01bh,0dbh,0dbh,0b1h,01bh,01bh,011h,011h,011h,011h,011h,011h,0ddh	; a360  ................
	defb 0ddh,0ddh,0d1h,0bbh,0bbh,0bbh,0d1h,011h,011h,011h,011h,01bh,0b1h,0bbh,0bbh,01bh	; a370  ................
	defb 0bbh,0bdh,0bbh,01bh,0dbh,0ddh,0dbh,01dh,0ddh,0ddh,0ddh,01dh,0ddh,0bdh,03dh,01dh	; a380  ..............=.
	defb 03dh,0d3h,03dh,01bh,0ddh,0ddh,0dbh,011h,0bdh,0bbh,0b1h,0b1h,0bbh,01bh,0bbh,0b1h	; a390  =.=.............
	defb 0bbh,0bbh,0bdh,0bdh,0bdh,0bdh,0bdh,0ddh,0bdh,0ddh,0bdh,0ddh,0ddh,0ddh,0ddh,0d3h	; a3a0  ................
	defb 03dh,0bdh,033h,0ddh,0ddh,0ddh,0ddh,0bdh,0dbh,0bdh,0bbh,0bbh,0bbh,0bbh,0b1h,0bbh	; a3b0  =.3.............
	defb 0dbh,0bdh,0b1h,0bdh,0dbh,0ddh,0b1h,0ddh,0ddh,0ddh,0d1h,0ddh,03dh,03dh,0d1h,0ddh	; a3c0  ............==..
	defb 03dh,0ddh,0b1h,0ddh,0ddh,0dbh,011h,0bdh,0bdh,0bbh,011h,011h,011h,011h,011h,0bbh	; a3d0  =...............
	defb 01bh,0bbh,0b1h,0bdh,0bdh,0dbh,0d1h,01bh,0bbh,0b1h,0b1h,011h,0b1h,011h,011h,0d1h	; a3e0  ................
	defb 011h,0ddh,0ddh,011h,01bh,0bbh,0bbh,011h,011h,011h,011h,01bh,0b1h,0bbh,0b1h,01bh	; a3f0  ................
	defb 0bbh,0bdh,011h,01bh,0dbh,0ddh,011h,01dh,0d1h,011h,011h,011h,011h,011h,011h,01dh	; a400  ................
	defb 03dh,011h,011h,01bh,0ddh,0ddh,011h,011h,0bdh,011h,011h,011h,0bbh,01bh,0b1h,011h	; a410  =...............
	defb 0bbh,0bbh,0bdh,011h,0b1h,0bdh,0bdh,011h,011h,011h,0b1h,01dh,01dh,011h,01dh,013h	; a420  ................
	defb 01dh,0bdh,033h,0ddh,0ddh,0ddh,0ddh,0bdh,0dbh,0bdh,0bbh,0b1h,0bbh,0b1h,0b1h,0d1h	; a430  ..3.............
	defb 011h,01bh,0b1h,0d1h,0b1h,011h,011h,0b1h,01bh,012h,0b1h,0bbh,01bh,012h,0b1h,0bdh	; a440  ................
	defb 01bh,012h,0b1h,0bdh,01bh,012h,0b1h,0dbh,012h,0b1h,011h,0bbh,0bbh,0bbh,0dbh,0bbh	; a450  ................
	defb 01bh,01bh,0b1h,011h,011h,011h,011h,02bh,011h,011h,011h,0bbh,011h,011h,011h,011h	; a460  .......+........
	defb 011h,011h,011h,02bh,011h,011h,011h,02bh,011h,011h,011h,0bbh,0bbh,0bbh,011h,0b1h	; a470  ...+...+........
	defb 0b1h,01bh,0b1h,011h,011h,011h,011h,011h,011h,011h,011h,011h,011h,011h,011h,011h	; a480  ................
	defb 011h,011h,011h,011h,011h,011h,011h,011h,011h,011h,011h,0bbh,0bbh,0b1h,011h,011h	; a490  ................
	defb 0b1h,011h,011h,0b1h,011h,0b2h,01bh,012h,0b1h,0b2h,01bh,012h,0b1h,0b2h,01bh,012h	; a4a0  ................
	defb 0b1h,0bbh,01bh,01bh,0b1h,011h,01bh,011h,011h,0b1h,0bbh,011h,012h,0b1h,0b1h,0bbh	; a4b0  ................
	defb 012h,0b1h,0b1h,0bbh,012h,0b1h,0b1h,0bdh,01bh,0b1h,0b1h,0b1h,011h,01bh,0b1h,0bbh	; a4c0  ................
	defb 01bh,012h,0b1h,0d1h,01bh,01bh,0b1h,01bh,0b1h,011h,011h,02bh,011h,011h,011h,02bh	; a4d0  ...........+...+
	defb 011h,011h,011h,02bh,011h,011h,011h,0bbh,011h,011h,011h,011h,011h,011h,011h,02bh	; a4e0  ...+...........+
	defb 011h,011h,011h,02bh,011h,011h,011h,011h,011h,011h,011h,02bh,01bh,0b1h,01bh,02bh	; a4f0  ...+.......+...+
	defb 012h,0b1h,0b1h,02bh,012h,0b1h,0bbh,02bh,01bh,0b1h,0b1h,02bh,011h,011h,01bh,02bh	; a500  ...+...+...+...+
	defb 012h,0b1h,0bbh,02bh,012h,0b1h,0bbh,011h,011h,01bh,011h,011h,0bbh,0b1h,0b1h,01bh	; a510  ...+............
	defb 011h,01bh,0b1h,012h,0b1h,011h,011h,012h,0b1h,02bh,0b1h,012h,0bbh,012h,0bbh,011h	; a520  .........+......
	defb 0bbh,012h,0bbh,0b1h,02bh,012h,0bbh,0d1h,02bh,0b1h,02bh,0bbh,0bbh,0bbh,0dbh,0bbh	; a530  ....+...+.+.....
	defb 01bh,01bh,0b1h,011h,0b1h,0b1h,011h,02bh,0bbh,01bh,0b1h,01bh,0b1h,0bbh,0b1h,01bh	; a540  .......+........
	defb 012h,0bbh,011h,011h,012h,0bbh,011h,0b1h,012h,0bbh,011h,011h,02bh,0b1h,02bh,0b1h	; a550  ............+.+.
	defb 02bh,0b1h,02bh,0b1h,02bh,0b1h,012h,0b1h,012h,0b1h,012h,0b1h,012h,0b1h,012h,0bbh	; a560  +.+.+...........
	defb 012h,0b1h,0b1h,0d1h,012h,0b1h,0b1h,01bh,011h,01bh,01bh,0b1h,02bh,0b1h,0b1h,0b1h	; a570  ............+...
	defb 02bh,0b1h,0b1h,0bbh,01bh,0b1h,0b1h,0bbh,01bh,01bh,0b1h,0bbh,01bh,01bh,0b1h,02bh	; a580  +..............+
	defb 0b1h,0bbh,0b1h,02bh,0b1h,02bh,0b1h,011h,011h,011h,011h,0bbh,0bbh,0b1h,011h,011h	; a590  ...+.+..........
	defb 0b1h,011h,01bh,011h,012h,0b1h,01bh,011h,012h,0bbh,01bh,011h,012h,0bbh,01bh,011h	; a5a0  ................
	defb 0b1h,02bh,01bh,011h,0b1h,02bh,01bh,011h,0b1h,02bh,01bh,011h,02bh,012h,01bh,011h	; a5b0  .+...+...+..+...
	defb 02bh,012h,011h,011h,02bh,011h,01bh,011h,02bh,01bh,0b1h,011h,02bh,011h,01bh,011h	; a5c0  +...+...+...+...
	defb 02bh,01bh,0bbh,011h,02bh,01bh,0bbh,011h,011h,01bh,011h,0bbh,0bbh,0bbh,0dbh,0bbh	; a5d0  +...+...........
	defb 01bh,01bh,0b1h,011h,0b1h,0b1h,011h,02bh,0bbh,011h,011h,01bh,0b1h,011h,011h,01bh	; a5e0  .......+........
	defb 011h,011h,011h,011h,011h,012h,011h,0b1h,011h,01bh,011h,0bbh,0bbh,0bbh,011h,0b1h	; a5f0  ................
	defb 0b1h,01bh,0b1h,011h,0c1h,01ch,011h,011h,01ch,01ch,01ch,011h,01ch,011h,0cch,011h	; a600  ................
	defb 011h,0cch,011h,011h,011h,01ch,0cch,011h,011h,011h,011h,0bbh,0bbh,0b1h,011h,011h	; a610  ................
	defb 0b1h,011h,01bh,0c1h,012h,0b1h,01bh,011h,012h,0bbh,01bh,0c1h,012h,0bbh,01bh,011h	; a620  ................
	defb 0b1h,02bh,01bh,0c1h,0b1h,02bh,01bh,01ch,0b1h,02bh,01bh,0b1h,011h,021h,011h,0b1h	; a630  .+...+...+...!..
	defb 012h,0b1h,011h,0bbh,01bh,0b1h,011h,0bbh,01bh,01bh,011h,0bbh,01bh,01bh,0b1h,02bh	; a640  ...............+
	defb 0b1h,0bbh,0b1h,02bh,0b1h,02bh,0b1h,011h,011h,011h,011h,0ffh,0fah,0fah,0a1h,0afh	; a650  ...+.+..........
	defb 0ffh,0ffh,0f1h,0ffh,0aah,0ffh,0a1h,0ffh,0ffh,0fah,011h,0ffh,0ffh,0fah,01bh,0fah	; a660  ................
	defb 0ffh,0a1h,0bbh,0ffh,0afh,0e1h,0bbh,0ffh,0aah,01bh,0b1h,0b1h,011h,01dh,0b1h,01bh	; a670  ................
	defb 0ddh,0bdh,0b1h,011h,011h,0bbh,01bh,0b1h,01bh,0bdh,01bh,0bdh,01bh,0d1h,0ddh,011h	; a680  ................
	defb 011h,0d1h,0bbh,0bbh,0bbh,01bh,0ddh,0bbh,0b1h,011h,0dbh,0ffh,0fah,0fah,0ffh,0afh	; a690  ................
	defb 0ffh,0ffh,0ffh,0ffh,0aah,0ffh,0afh,0ffh,0ffh,0fah,0ffh,0afh,0afh,0afh,0ffh,0fah	; a6a0  ................
	defb 0ffh,0ffh,0afh,0fah,0afh,0afh,0aah,0aah,0eah,0eah,0aah,0ffh,0fah,0fah,0ffh,0afh	; a6b0  ................
	defb 0ffh,0ffh,0fah,0ffh,0aah,0ffh,0aah,0ffh,0ffh,0ffh,0aah,0ffh,0ffh,0fah,0aeh,0fah	; a6c0  ................
	defb 0aeh,0aah,011h,0aah,0aah,011h,0b1h,011h,011h,0b1h,01bh,0afh,0feh,011h,0b1h,0fah	; a6d0  ................
	defb 0a1h,0bbh,011h,0aeh,011h,0bbh,0bdh,0a1h,0bbh,01bh,011h,011h,01dh,011h,011h,011h	; a6e0  ................
	defb 01bh,0d1h,01dh,01bh,011h,01dh,0bdh,011h,0bbh,0dbh,0bbh,01dh,011h,0bdh,01dh,011h	; a6f0  ................
	defb 01bh,0bbh,0b1h,011h,01bh,0ddh,0bbh,011h,0bbh,0bbh,0b1h,0ddh,0bbh,0b1h,01bh,0dbh	; a700  ................
	defb 0ddh,0bbh,0ddh,0ddh,011h,0bdh,0dbh,011h,0d1h,0bbh,011h,0ceh,0ech,0cch,0eeh,0eeh	; a710  ................
	defb 0ceh,0bch,0cch,0eeh,0ebh,0eeh,0bch,0cbh,0beh,0ech,0ebh,0cch,0ceh,0cch,0beh,0ceh	; a720  ................
	defb 0cch,0bbh,0eeh,0ceh,0ech,0ceh,0cch,0ech,0cbh,0cch,0cbh,0eeh,0ceh,0ceh,0beh,0cch	; a730  ................
	defb 0ech,0cch,0cbh,0eeh,0bch,0eeh,0cch,0bbh,0cch,0cch,0cbh,0eeh,0cch,0cbh,0bch,0ech	; a740  ................
	defb 0eeh,0cch,0eeh,0eeh,0bbh,0ceh,0ech,0bbh,0ebh,0cch,0bbh,011h,011h,0b1h,01bh,011h	; a750  ................
	defb 0eeh,011h,011h,01eh,0eah,011h,015h,0fah,011h,055h,055h,0f1h,055h,055h,05bh,01bh	; a760  .........UU.UU[.
	defb 0bbh,05bh,055h,011h,0bbh,05bh,0bbh,014h,01bh,0bbh,05bh,011h,011h,011h,011h,055h	; a770  .[U..[....[....U
	defb 055h,051h,0b1h,055h,055h,051h,0b1h,015h,055h,051h,0b1h,051h,055h,051h,0b1h,051h	; a780  UQ.UUQ..UQ.QUQ.Q
	defb 055h,01bh,0b1h,051h,055h,01bh,0b1h,011h,011h,01bh,0b1h,0f1h,041h,0bbh,05bh,0f1h	; a790  U..QU.......A.[.
	defb 044h,01bh,0b1h,0afh,014h,051h,01bh,0ffh,014h,045h,051h,0ffh,0f1h,055h,054h,0ffh	; a7a0  D....Q...EQ..UT.
	defb 0f1h,055h,055h,0fah,0feh,015h,055h,0ffh,0ffh,0e1h,045h,01bh,0bbh,01bh,0b1h,01bh	; a7b0  .UU...U...E.....
	defb 0b1h,0bbh,0b1h,0bbh,0b1h,0bbh,0b1h,0bbh,0b1h,0bbh,011h,011h,011h,0bbh,01fh,044h	; a7c0  ...............D
	defb 044h,0bbh,01fh,045h,044h,0bbh,01eh,014h,044h,0b1h,01fh,0ffh,0ffh,0ffh,014h,0ffh	; a7d0  D..ED...D.......
	defb 0fah,0fah,0e1h,0afh,0ffh,0ffh,0feh,0ffh,0aah,0ffh,0aah,0ffh,0ffh,0ffh,0ffh,0ffh	; a7e0  ................
	defb 0ffh,0afh,0ffh,0fah,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0afh,044h,045h,044h,044h,015h	; a7f0  ...........DEDD.
	defb 045h,044h,044h,0a1h,014h,044h,044h,0afh,0a1h,011h,011h,0ffh,0fah,0aeh,0aeh,0ffh	; a800  EDD..DD.........
	defb 0ffh,0afh,0ffh,0fah,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0afh,054h,01bh,055h,055h,044h	; a810  ...........T.UUD
	defb 041h,0b5h,055h,044h,041h,0b5h,055h,011h,011h,01bh,055h,0aeh,0eah,0a1h,0b5h,0fah	; a820  A.UDA.U...U.....
	defb 0ffh,0aah,0feh,0fah,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0aah,041h,044h,0b1h,0ffh,054h	; a830  ...........AD..T
	defb 015h,0b1h,0efh,055h,041h,0b1h,0eah,055h,054h,011h,0afh,055h,055h,041h,0afh,0aeh	; a840  ...UA..UT..UUA..
	defb 0aeh,0aah,0ffh,0fah,0aah,0ffh,0ffh,0aah,0aah,0afh,0afh,011h,011h,0b5h,041h,0bbh	; a850  ..............A.
	defb 0bbh,01bh,054h,0bbh,0bbh,0b1h,0b5h,011h,0bbh,0bbh,01bh,044h,011h,011h,011h,044h	; a860  ..T........D...D
	defb 054h,045h,054h,045h,054h,045h,054h,044h,044h,045h,044h,0bbh,014h,044h,045h,01bh	; a870  TETETETDDED..DE.
	defb 014h,044h,045h,041h,044h,044h,051h,054h,014h,044h,051h,0b5h,041h,011h,011h,01bh	; a880  .DEADDQT.DQ.A...
	defb 054h,011h,044h,041h,0b5h,044h,011h,044h,01bh,055h,044h,011h,011h,011h,011h,011h	; a890  T.DA.D.D.UD.....
	defb 055h,055h,055h,055h,055h,055h,055h,055h,055h,055h,055h,055h,055h,055h,055h,055h	; a8a0  UUUUUUUUUUUUUUUU
	defb 051h,015h,055h,055h,015h,041h,055h,055h,01bh,054h,011h,011h,011h,011h,011h,055h	; a8b0  Q.UU.AUU.T.....U
	defb 055h,055h,055h,0b5h,055h,055h,055h,055h,055h,011h,011h,055h,051h,044h,044h,055h	; a8c0  UUU.UUUUU..UQDDU
	defb 051h,044h,044h,055h,051h,044h,044h,011h,014h,045h,045h,0b1h,0d1h,0d9h,0ffh,0a1h	; a8d0  QDDUQDD..EE.....
	defb 01dh,0dfh,0f9h,01dh,011h,09dh,0ddh,01dh,09dh,099h,0ddh,01fh,091h,09dh,0d9h,0b1h	; a8e0  ................
	defb 019h,0d9h,0ffh,01dh,0d9h,0fdh,0fdh,0b1h,01dh,0d9h,0fdh,0b1h,0ddh,09dh,0ddh,01dh	; a8f0  ................
	defb 01dh,099h,0d1h,011h,011h,0d1h,09fh,0b1h,0d9h,09fh,0f9h,0f1h,011h,0d9h,0d9h,0b1h	; a900  ................
	defb 0d1h,01dh,0ddh,0abh,01dh,0d9h,09dh,0b1h,0d9h,099h,0ddh,0f1h,0f1h,01dh,01bh,0ffh	; a910  ................
	defb 0d1h,011h,01bh,0ddh,0f1h,0f1h,0d1h,011h,0ffh,0dfh,0f1h,011h,0dfh,01fh,0d1h,0fdh	; a920  ................
	defb 0f1h,0f1h,01bh,0ffh,0f1h,0ffh,011h,0f1h,011h,011h,01bh,01fh,011h,0ffh,01bh,01dh	; a930  ................
	defb 0f1h,01fh,011h,0dfh,01fh,011h,011h,01dh,01fh,0ffh,01bh,011h,0ffh,011h,01fh,0ffh	; a940  ................
	defb 01dh,01fh,01bh,011h,011h,011h,0bbh,01fh,0f1h,0fdh,01bh,0bah,0bfh,0b1h,01bh,01bh	; a950  ................
	defb 011h,011h,0d1h,0d1h,0d1h,0d1h,01dh,09dh,011h,091h,0ddh,09dh,01dh,09dh,099h,099h	; a960  ................
	defb 0d9h,0f1h,09dh,0d9h,0ddh,0f9h,0ddh,0ddh,0d9h,09fh,01dh,0b1h,0b1h,011h,0abh,01dh	; a970  ................
	defb 01fh,0ddh,011h,01dh,019h,091h,01dh,0d9h,091h,0d1h,0d1h,0dfh,0d9h,099h,0ddh,09dh	; a980  ................
	defb 09dh,09dh,0f9h,0ffh,0fdh,0ddh,0ffh,0ddh,0f9h,0ddh,09fh,011h,0f1h,01dh,011h,0f1h	; a990  ................
	defb 0f1h,0dfh,0dfh,0f1h,01fh,011h,0f1h,011h,0dfh,0ffh,011h,0f1h,011h,0f1h,01fh,0d1h	; a9a0  ................
	defb 0f1h,0f1h,0ffh,011h,011h,011h,011h,011h,01fh,011h,011h,0ffh,0f1h,01dh,0ffh,01fh	; a9b0  ................
	defb 0d1h,01dh,0f1h,01fh,0fdh,0ffh,0dfh,011h,01fh,0f1h,011h,01fh,0f1h,0dfh,011h,01fh	; a9c0  ................
	defb 01fh,0f1h,01dh,011h,01dh,0fdh,011h,011h,011h,011h,011h,0bah,0abh,0b1h,011h,0aah	; a9d0  ................
	defb 0b1h,01fh,0f9h,0a1h,011h,09dh,0ddh,0b1h,01dh,099h,0ddh,01fh,091h,09dh,0d9h,0b1h	; a9e0  ................
	defb 019h,0d9h,0ffh,01dh,0d9h,0fdh,0fdh,0b1h,01dh,0d9h,0fdh,0bah,0bbh,0bdh,0abh,011h	; a9f0  ................
	defb 011h,0fdh,0bbh,0ddh,0f1h,0f1h,0abh,011h,0ffh,0dfh,01bh,011h,0dfh,01fh,01bh,0fdh	; aa00  ................
	defb 0f1h,0f1h,01bh,0ffh,0f1h,0ffh,011h,0f1h,011h,011h,01bh,0b1h,01dh,0d9h,0fdh,01dh	; aa10  ................
	defb 0d9h,0fdh,0fdh,0b1h,019h,0d9h,0ffh,01fh,091h,09dh,0dfh,0b1h,01dh,0dfh,0dfh,0a1h	; aa20  ................
	defb 011h,0ddh,0ffh,0aah,0b1h,01fh,0ffh,0bah,0abh,0b1h,011h,0f1h,011h,011h,01bh,0ffh	; aa30  ................
	defb 0f1h,0ffh,011h,0fdh,0f1h,0f1h,01bh,011h,0dfh,01fh,01bh,011h,0ffh,0dfh,01bh,0ddh	; aa40  ................
	defb 0f1h,0f1h,0fbh,011h,011h,0ffh,0bbh,011h,011h,0bbh,0bbh,0bah,0abh,0bbh,0dah,0aah	; aa50  ................
	defb 0bah,0bbh,0fdh,0aah,0abh,0dah,0bbh,0bbh,0bah,0ddh,0abh,0bdh,0dah,0fdh,0bah,0bah	; aa60  ................
	defb 0bbh,0bbh,0adh,0bah,0ddh,0bah,0bdh,0abh,0bbh,0bdh,0dbh,0bah,0bbh,0bdh,0abh,0bbh	; aa70  ................
	defb 0bah,0fdh,0bbh,0aah,0bah,0afh,0abh,0bdh,0bah,0bfh,0bbh,0adh,0fbh,0bbh,0aah,0bah	; aa80  ................
	defb 0dbh,0aah,0bbh,0bbh,0bah,0abh,0aah,0bbh,0bbh,0bbh,0abh,0bbh,0abh,0abh,0fah,0bbh	; aa90  ................
	defb 0bbh,0dbh,0aah,0dbh,0aah,0dfh,0fbh,0bah,0ddh,0aah,0bbh,0fbh,0bbh,0bbh,0dbh,0bbh	; aaa0  ................
	defb 0dah,0abh,0fah,0abh,0aah,0bah,0bah,0bbh,0bbh,0abh,0bbh,0aah,0bah,0bah,0bah,0bbh	; aab0  ................
	defb 0abh,0bbh,0dbh,0afh,0bbh,0dah,0fbh,0bbh,0bbh,0fbh,0bbh,0aah,0bbh,0bbh,0bbh,0abh	; aac0  ................
	defb 0adh,0fbh,0aah,0aah,0bbh,0bah,0abh,0bbh,0abh,0bbh,0bbh,0dfh,0fdh,0ddh,0dfh,09dh	; aad0  ................
	defb 0dfh,0dfh,0ffh,0dfh,0ffh,0fdh,0ffh,0ffh,0f9h,0ddh,0fdh,0ffh,09dh,0ddh,099h,0dfh	; aae0  ................
	defb 0ddh,0d9h,0ddh,0ddh,0dfh,0ddh,0d9h,0dfh,09dh,0ddh,09dh,0ffh,0ddh,0ffh,0ddh,0f9h	; aaf0  ................
	defb 0ddh,09fh,0ffh,09dh,0fdh,0ddh,0fdh,09fh,0fdh,0dfh,0ddh,0d9h,0dfh,0ffh,0ddh,0fdh	; ab00  ................
	defb 0ddh,0ddh,0ffh,09dh,0fdh,0fdh,0ddh,09dh,0ffh,0ddh,0ddh,0ffh,0dfh,0dfh,0dfh,0ddh	; ab10  ................
	defb 0ddh,0fdh,0dfh,0dfh,0fdh,0ddh,0ddh,0ffh,0fdh,0d1h,0d1h,0ddh,0f1h,0fdh,0ddh,0dfh	; ab20  ................
	defb 0ffh,01fh,0ddh,0dfh,0d1h,0ffh,0ffh,0dfh,0dfh,0d1h,0fdh,0ddh,0fdh,0fdh,0fdh,0d1h	; ab30  ................
	defb 01fh,0dfh,0fdh,0d1h,0ddh,011h,011h,0ddh,0ddh,0ddh,0d1h,0ffh,01dh,0ffh,0ffh,011h	; ab40  ................
	defb 0d1h,01fh,0ffh,0fdh,011h,0d1h,011h,0ddh,0ddh,0dfh,0d1h,099h,0fdh,099h,0ffh,0ddh	; ab50  ................
	defb 0d9h,0fdh,09fh,0ffh,0ddh,0ffh,0ddh,0fdh,0dfh,0ddh,0ddh,0dfh,0dfh,0ddh,09fh,0ddh	; ab60  ................
	defb 0dfh,0fdh,0ffh,0ddh,0fdh,0dfh,0fdh,0ddh,0fdh,0ddh,0fdh,0ddh,0dfh,0fdh,09dh,0fdh	; ab70  ................
	defb 0ffh,0ffh,0dfh,09dh,0d9h,0ffh,0dfh,0dfh,0ddh,09fh,0fdh,0ddh,0ddh,0dfh,0ddh,0ddh	; ab80  ................
	defb 09dh,0ddh,0fdh,09dh,0d9h,0ffh,0fdh,0d9h,0d9h,0dfh,0ffh,0dfh,01fh,0ddh,0ddh,0ddh	; ab90  ................
	defb 01fh,0d1h,01dh,0d1h,0d1h,0ddh,01fh,0d1h,01dh,0ddh,0fdh,0ddh,01fh,0d1h,0dfh,0f1h	; aba0  ................
	defb 0ffh,0d1h,0fdh,0d1h,0ffh,0d1h,0ffh,011h,0ffh,011h,0ddh,0ddh,0ddh,0fdh,0dfh,0ffh	; abb0  ................
	defb 0fdh,0ffh,0dfh,0ddh,0ffh,0ffh,0ddh,0f1h,0f1h,0ddh,0dfh,0dfh,01fh,0ddh,0fdh,01fh	; abc0  ................
	defb 0fdh,01dh,0dfh,0ffh,0ddh,0ddh,0ddh,0dfh,0ddh,01dh,0ffh,011h,0bbh,011h,01bh,011h	; abd0  ................
	defb 0abh,011h,01ah,011h,0abh,011h,01ah,01bh,011h,011h,01ah,0bfh,0fbh,0bfh,0b1h,0bbh	; abe0  ................
	defb 0bbh,0bbh,0bdh,0bbh,0ffh,0bah,0bdh,0abh,0bbh,0bdh,0dbh,0b1h,0b1h,0bbh,011h,0b1h	; abf0  ................
	defb 0b1h,0abh,0b1h,0b1h,0b1h,0abh,0b1h,0b1h,011h,011h,011h,011h,011h,011h,011h,0bbh	; ac00  ................
	defb 0fbh,0bbh,0bbh,0bbh,0bbh,0bbh,0aah,0bbh,0bbh,0bbh,0abh,0bbh,0bbh,0bbh,0fah,0bbh	; ac10  ................
	defb 0bbh,0fbh,0aah,0fbh,0bbh,0ffh,0fbh,0bbh,0ffh,0bbh,0bbh,0fbh,0bbh,0bbh,0bbh,0bbh	; ac20  ................
	defb 0fbh,0bbh,0bah,0bbh,0bbh,0bbh,0bah,0bbh,0bbh,0bbh,0bbh,0bbh,0bbh,0bbh,0fah,0bbh	; ac30  ................
	defb 0bbh,0bbh,0ffh,0bbh,0bbh,0fbh,0bbh,0bbh,0bbh,0ffh,0bbh,0bfh,0fbh,0ffh,0bbh,0bbh	; ac40  ................
	defb 0bbh,0bbh,0bdh,0bbh,0ffh,0bbh,0bdh,0bbh,0bbh,0bfh,0fbh,0b1h,0b1h,0bbh,0bfh,0b1h	; ac50  ................
	defb 011h,0bfh,0bbh,0b1h,0bbh,0fbh,0fbh,0b1h,0bbh,0fbh,0bbh,011h,0bbh,0bbh,0bbh,0bbh	; ac60  ................
	defb 0bbh,0bbh,0bbh,0bbh,0bbh,0ffh,0bbh,0bbh,0abh,0bah,0dbh,0bbh,0bbh,0bbh,0fbh,0bbh	; ac70  ................
	defb 0bbh,0bbh,0bfh,0bbh,0bbh,0fbh,0bbh,0bbh,0bbh,0bbh,0bbh,0bfh,0fbh,0ffh,0bbh,0bbh	; ac80  ................
	defb 0bbh,0bbh,0bfh,0bbh,0ffh,0bah,0bdh,0abh,0bbh,0bdh,0dbh,0bbh,0bbh,0bbh,0bbh,0bbh	; ac90  ................
	defb 0bbh,0fbh,0bbh,0bbh,0bbh,0bfh,0bbh,0bfh,0bbh,0bfh,0bbh,0bbh,0bbh,0bbh,0bbh,0bbh	; aca0  ................
	defb 0fbh,0bbh,0bbh,0bbh,0bbh,0bbh,0bah,0bbh,0bbh,0bbh,0abh,0aah,0a1h,0bbh,011h,0abh	; acb0  ................
	defb 0a1h,0abh,0b1h,0bbh,0b1h,0abh,0b1h,0aah,0b1h,011h,011h,0bbh,0b1h,011h,011h,0bbh	; acc0  ................
	defb 0fbh,0bbh,0bbh,0bbh,0bbh,0bbh,0aah,0bbh,0bbh,0bbh,0abh,0bah,011h,011h,011h,0a1h	; acd0  ................
	defb 0bbh,01bh,0b1h,0a1h,0bdh,0bbh,0ddh,01bh,0b1h,011h,0bbh,011h,011h,011h,011h,01dh	; ace0  ................
	defb 0ddh,0ddh,0ddh,01bh,0bbh,0bbh,0bbh,011h,011h,011h,011h,011h,011h,011h,011h,01bh	; acf0  ................
	defb 0bbh,0b1h,0bbh,0bbh,0bdh,0bbh,0bdh,01bh,01bh,0b1h,0b1h,011h,011h,011h,011h,0ddh	; ad00  ................
	defb 0ddh,0ddh,0ddh,0bbh,0bbh,0bbh,0bbh,011h,011h,011h,011h,011h,011h,011h,0abh,0bbh	; ad10  ................
	defb 0bbh,0bbh,01bh,01bh,0dbh,0dbh,0b1h,01bh,01bh,011h,011h,011h,011h,011h,011h,0ddh	; ad20  ................
	defb 0ddh,0ddh,0d1h,0bbh,0bbh,0bbh,0d1h,011h,011h,011h,011h,01bh,0b1h,0bbh,0bbh,01bh	; ad30  ................
	defb 0bbh,0bdh,0bbh,01bh,0dbh,0ddh,0dbh,01dh,0ddh,0ddh,0ddh,01dh,0ddh,0bdh,03dh,01dh	; ad40  ..............=.
	defb 03dh,0d3h,03dh,01bh,0ddh,0ddh,0dbh,011h,0bdh,0bbh,0b1h,0b1h,0bbh,01bh,0bbh,0b1h	; ad50  =.=.............
	defb 0bbh,0bbh,0bdh,0bdh,0bdh,0bdh,0bdh,0ddh,0bdh,0ddh,0bdh,0ddh,0ddh,0ddh,0ddh,0d3h	; ad60  ................
	defb 03dh,0bdh,033h,0ddh,0ddh,0ddh,0ddh,0bdh,0dbh,0bdh,0bbh,0bbh,0bbh,0bbh,0b1h,0bbh	; ad70  =.3.............
	defb 0dbh,0bdh,0b1h,0bdh,0dbh,0ddh,0b1h,0ddh,0ddh,0ddh,0d1h,0ddh,03dh,03dh,0d1h,0ddh	; ad80  ............==..
	defb 03dh,0ddh,0b1h,0ddh,0ddh,0dbh,011h,0bdh,0bdh,0bbh,011h,0b1h,0bbh,0b1h,0b1h,0a1h	; ad90  =...............
	defb 011h,01bh,0b1h,0a1h,0b1h,011h,011h,0bbh,01bh,012h,0b1h,0bdh,01bh,012h,0b1h,0bah	; ada0  ................
	defb 01bh,012h,0b1h,0bah,01bh,012h,0b1h,0abh,012h,0b1h,011h,0bbh,0bbh,0bbh,0dbh,0bbh	; adb0  ................
	defb 01bh,01bh,0b1h,011h,011h,011h,011h,02bh,011h,011h,011h,0bbh,011h,011h,011h,011h	; adc0  .......+........
	defb 011h,011h,011h,02bh,011h,011h,011h,02bh,011h,011h,011h,0bbh,0bbh,0bbh,011h,0b1h	; add0  ...+...+........
	defb 0b1h,01bh,0b1h,011h,011h,011h,011h,011h,011h,011h,011h,011h,011h,011h,011h,011h	; ade0  ................
	defb 011h,011h,011h,011h,011h,011h,011h,011h,011h,011h,011h,0bbh,0bbh,0b1h,011h,011h	; adf0  ................
	defb 0b1h,011h,011h,0b1h,011h,0b2h,01bh,012h,0b1h,0b2h,01bh,012h,0b1h,0b2h,01bh,012h	; ae00  ................
	defb 0b1h,0bbh,01bh,01bh,0b1h,011h,01bh,011h,011h,0b1h,0bbh,0bbh,012h,0b1h,0b1h,0bbh	; ae10  ................
	defb 012h,0b1h,0b1h,0dbh,012h,0b1h,0b1h,0bah,01bh,0b1h,0b1h,0fbh,011h,01bh,0b1h,0bbh	; ae20  ................
	defb 01bh,012h,0b1h,0abh,01bh,01bh,0b1h,0bbh,0b1h,011h,011h,02bh,011h,011h,011h,02bh	; ae30  ...........+...+
	defb 011h,011h,011h,02bh,011h,011h,011h,0bbh,011h,011h,011h,011h,011h,011h,011h,02bh	; ae40  ...+...........+
	defb 011h,011h,011h,02bh,011h,011h,011h,011h,011h,011h,011h,02bh,01bh,0b1h,0bbh,02bh	; ae50  ...+.......+...+
	defb 012h,0b1h,0fbh,02bh,012h,0b1h,0fbh,02bh,01bh,0b1h,0bbh,02bh,011h,011h,0bbh,02bh	; ae60  ...+...+...+...+
	defb 012h,0b1h,0bbh,02bh,012h,0b1h,0bbh,011h,011h,01bh,0bbh,011h,0bbh,0b1h,0b1h,01bh	; ae70  ...+............
	defb 011h,01bh,0b1h,012h,0b1h,011h,011h,012h,0b1h,02bh,0b1h,012h,0bbh,012h,0bbh,011h	; ae80  .........+......
	defb 0bbh,012h,0bbh,0b1h,02bh,012h,0bbh,0a1h,02bh,0b1h,02bh,0bbh,0bbh,0bbh,0dbh,0bbh	; ae90  ....+...+.+.....
	defb 01bh,01bh,0b1h,011h,0b1h,0b1h,011h,02bh,0bbh,01bh,0b1h,01bh,0b1h,0bbh,0b1h,01bh	; aea0  .......+........
	defb 012h,0bbh,011h,011h,012h,0bbh,011h,0b1h,012h,0bbh,011h,0b1h,02bh,0b1h,02bh,0b1h	; aeb0  ............+.+.
	defb 02bh,0b1h,02bh,0d1h,02bh,0b1h,012h,0b1h,012h,0b1h,012h,0f1h,012h,0b1h,012h,0bbh	; aec0  +.+.+...........
	defb 012h,0b1h,0b1h,0abh,012h,0b1h,0b1h,0bbh,011h,01bh,01bh,0b1h,02bh,0b1h,0b1h,0b1h	; aed0  ............+...
	defb 02bh,0b1h,0b1h,0bbh,01bh,0b1h,0b1h,0bbh,01bh,01bh,0b1h,0bbh,01bh,01bh,0b1h,02bh	; aee0  +..............+
	defb 0b1h,0bbh,0b1h,02bh,0b1h,02bh,0b1h,011h,011h,011h,011h,0bbh,0bbh,0b1h,011h,011h	; aef0  ...+.+..........
	defb 0b1h,011h,01bh,011h,012h,0b1h,01bh,011h,012h,0bbh,01bh,011h,012h,0bbh,01bh,011h	; af00  ................
	defb 0b1h,02bh,01bh,011h,0b1h,02bh,01bh,011h,0b1h,02bh,01bh,011h,02bh,012h,01bh,011h	; af10  .+...+...+..+...
	defb 02bh,012h,01bh,011h,02bh,011h,01bh,011h,02bh,01bh,0bbh,011h,02bh,01bh,0bbh,011h	; af20  +...+...+...+...
	defb 02bh,01bh,0bbh,011h,02bh,01bh,0bbh,011h,011h,01bh,0bbh,0ffh,01fh,030h,02fh,02fh	; af30  +...+........0//
	defb 05fh,04bh,046h,084h,0b3h,0b9h,0bah,0d5h,075h,072h,039h,01fh,0f8h,00ch,0f4h,0f4h	; af40  _KF.....ur9.....
	defb 0fah,0d2h,062h,021h,0cdh,09dh,05dh,0abh,0aeh,04eh,09ch,0f8h,000h,01fh,01fh,013h	; af50  ..b!..]..N......
	defb 02dh,035h,039h,07fh,05ch,05eh,05dh,06ah,02ah,02dh,01eh,000h,000h,0f8h,0f8h,0c8h	; af60  -59.\^]j*-......
	defb 0b4h,0ach,09ch,0feh,03ah,07ah,0bah,056h,054h,0b4h,078h,000h,01fh,020h,02fh,05eh	; af70  ....:z.VT.x.. /^
	defb 04ah,04eh,084h,0a7h,0b8h,0b3h,0b7h,0d7h,077h,073h,03ch,01fh,0f8h,004h,0f4h,07ah	; af80  JN......ws<....z
	defb 052h,072h,021h,0e5h,01dh,0cdh,0edh,0ebh,0eeh,0ceh,03ch,0f8h,000h,01fh,013h,02dh	; af90  Rr!.......<....-
	defb 035h,039h,07bh,058h,057h,04ch,048h,068h,028h,02ch,013h,000h,000h,0f8h,0c8h,0b4h	; afa0  59{XWLHh(,......
	defb 0ach,09ch,0deh,01ah,0eah,032h,012h,016h,014h,034h,0c8h,081h,000h,000h,099h,001h	; afb0  .....2...4......
	defb 011h,012h,013h,017h,05fh,03fh,03eh,03ch,038h,018h,01ch,04dh,027h,003h,000h,040h	; afc0  ...._?><8..M'..@
	defb 040h,080h,0d1h,0f8h,0fah,0bch,07eh,0aeh,003h,01ch,0a4h,038h,0f0h,0e4h,000h,000h	; afd0  @.....~....8....
	defb 010h,011h,001h,002h,056h,01bh,017h,01fh,01fh,00fh,00fh,047h,023h,000h,000h,040h	; afe0  ....V......G#..@
	defb 040h,008h,081h,0d0h,0f2h,0f8h,0f4h,0fch,0fch,0f8h,0f8h,0f0h,0e0h,004h,000h,000h	; aff0  @...............
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
	defb 000h,008h,080h,080h,003h,000h,000h,000h,002h,002h,018h,019h,004h,01bh,015h,00bh	; b0b0  ................
	defb 001h,00bh,015h,004h,00bh,009h,003h,010h,00eh,010h,019h,000h,000h,011h,011h,000h	; b0c0  ................
	defb 009h,012h,00dh,00dh,00eh,00fh,012h,00fh,00fh,011h,000h,01bh,01bh,015h,000h,000h	; b0d0  ................
	defb 000h,00bh,009h,000h,000h,000h,005h,005h,005h,005h,005h,005h,00ah,00ah,00ch,00ah	; b0e0  ................
	defb 00ch,00ch,00ch,00ch,010h,00eh,01ah,01ah,01ah,01ah,00eh,01ah,01ah,00eh,01ah,01ah	; b0f0  ................
	defb 01ah,00eh,01ah,000h,000h,000h,000h,000h,000h,017h,00ah,006h,013h,013h,013h,013h	; b100  ................
	defb 013h,010h,013h,000h,00ah,006h,000h,000h,000h,000h,016h,016h,016h,016h,016h,000h	; b110  ................
	defb 000h,016h,016h,013h,013h,013h,011h,000h,000h,00ch,008h,008h,008h,008h,008h,017h	; b120  ................
	defb 017h,017h,017h,008h,000h,008h,008h,000h,000h,008h,008h,008h,000h,000h,000h,000h	; b130  ................
	defb 000h,000h,000h,000h,000h,040h,000h,03eh,0f8h,03ch,0f1h,03bh,0ebh,038h,0e5h,036h	; b140  .....@.>.<.;.8.6
	defb 0e0h,033h,0dch,030h,0d7h,02dh,0d3h,028h,0cfh,022h,0cbh,01ch,0c8h,017h,0c6h,012h	; b150  .3.0.-.(."......
	defb 0c4h,00ch,0c2h,006h,0c1h,000h,0c0h,0fah,0c1h,0f4h,0c2h,0eeh,0c4h,0e9h,0c6h,0e4h	; b160  ................
	defb 0c8h,0deh,0cbh,0d8h,0cfh,0d3h,0d3h,0d0h,0d7h,0cdh,0dch,0cah,0e0h,0c8h,0e5h,0c5h	; b170  ................
	defb 0ebh,0c4h,0f1h,0c2h,0f8h,0c0h,000h,0c2h,008h,0c4h,00fh,0c5h,015h,0c8h,01bh,0cah	; b180  ................
	defb 020h,0cdh,024h,0d0h,029h,0d3h,02dh,0d8h,031h,0deh,035h,0e4h,038h,0e9h,03ah,0eeh	; b190   .$.).-.1.5.8.:.
	defb 03ch,0f4h,03eh,0fah,03fh,000h,040h,006h,03fh,00ch,03eh,012h,03ch,017h,03ah,01ch	; b1a0  <.>.?.@.?.>.<.:.
	defb 038h,022h,035h,028h,031h,02dh,02dh,030h,029h,033h,024h,036h,020h,038h,01bh,03bh	; b1b0  8"5(1--0)3$6 8.;
	defb 015h,03ch,00fh,03eh,008h,001h,0ffh,0ffh,0ffh,004h,000h,002h,00fh,003h,0ffh,01ah	; b1c0  .<.>............
	defb 001h,0ffh,002h,0ffh,004h,005h,001h,003h,012h,006h,004h,008h,019h,02ah,005h,007h	; b1d0  .............*..
	defb 024h,0ffh,008h,009h,006h,007h,0ffh,00ah,005h,0ffh,00ah,00bh,007h,009h,0ffh,00ch	; b1e0  $...............
	defb 008h,0ffh,00ch,00dh,009h,00bh,0ffh,00eh,00ah,02bh,00eh,0ffh,00bh,00dh,01eh,0ffh	; b1f0  .........+......
	defb 00ch,0ffh,010h,001h,0ffh,00fh,0ffh,0ffh,011h,0ffh,0ffh,010h,04bh,0ffh,0ffh,004h	; b200  ............K...
	defb 013h,016h,014h,012h,0ffh,013h,0ffh,0ffh,015h,0ffh,0ffh,014h,0ffh,0ffh,013h,019h	; b210  ................
	defb 017h,0ffh,018h,016h,0ffh,017h,0ffh,0ffh,0ffh,0ffh,0ffh,005h,016h,01bh,0ffh,01dh	; b220  ................
	defb 002h,0ffh,01ah,01ch,0ffh,0ffh,01dh,01eh,01bh,01ch,0ffh,01fh,01ah,00eh,01fh,0ffh	; b230  ................
	defb 01ch,01eh,020h,0ffh,01dh,01fh,0ffh,0ffh,021h,0ffh,0ffh,020h,022h,0ffh,0ffh,021h	; b240  .. .....!.. "..!
	defb 023h,0ffh,0ffh,022h,0ffh,0ffh,0ffh,006h,025h,026h,0ffh,024h,0ffh,0ffh,025h,029h	; b250  #.."....%&.$..%)
	defb 027h,0ffh,028h,026h,0ffh,027h,0ffh,0ffh,0ffh,035h,0ffh,0ffh,026h,0ffh,006h,02fh	; b260  '.(&.'...5..&../
	defb 0ffh,02ch,00dh,0ffh,0ffh,0ffh,02bh,0ffh,02dh,0ffh,02eh,02ch,0ffh,02dh,0ffh,0ffh	; b270  .,....+.-..,.-..
	defb 0ffh,0ffh,0ffh,030h,02ah,031h,0ffh,0ffh,02fh,0ffh,030h,0ffh,032h,033h,0ffh,031h	; b280  ...0*1../.0.23.1
	defb 038h,0ffh,032h,034h,0ffh,054h,0ffh,052h,033h,036h,029h,038h,03ah,0ffh,035h,037h	; b290  8.24.T.R36)8:.57
	defb 039h,0ffh,038h,08bh,036h,037h,0ffh,08ah,0ffh,0ffh,0ffh,036h,03ch,061h,0ffh,035h	; b2a0  9.8.67.....6<a.5
	defb 03bh,03ch,0ffh,03ah,0ffh,04ch,03bh,039h,03dh,0ffh,03eh,03ch,0ffh,03dh,03fh,0ffh	; b2b0  ;<.:.L;9=.><.=?.
	defb 0ffh,03eh,041h,0ffh,040h,0ffh,042h,03fh,0ffh,03fh,0ffh,0ffh,042h,040h,043h,041h	; b2c0  .>A.@.B?.?..B@CA
	defb 0ffh,042h,044h,0ffh,0ffh,043h,047h,045h,0ffh,046h,048h,0ffh,044h,0ffh,045h,0ffh	; b2d0  .BD..CGE.FH.D.E.
	defb 0ffh,044h,0ffh,048h,0ffh,045h,049h,0ffh,047h,048h,0ffh,04bh,04ah,0ffh,0ffh,049h	; b2e0  .D.H.EI.GH.KJ..I
	defb 0ffh,0ffh,0ffh,011h,049h,0ffh,03ch,04dh,0ffh,04eh,0ffh,0ffh,04ch,0ffh,04dh,04fh	; b2f0  ....I.<M.N..L.MO
	defb 051h,0ffh,050h,0ffh,04eh,04fh,0ffh,05bh,0ffh,0ffh,0ffh,04eh,0ffh,0ffh,0ffh,053h	; b300  Q.P.NO.[...N...S
	defb 034h,0ffh,0ffh,0ffh,052h,055h,034h,0ffh,0ffh,0ffh,054h,056h,058h,0ffh,057h,0ffh	; b310  4...RU4...TVX.W.
	defb 055h,056h,0ffh,0ffh,0ffh,0ffh,059h,055h,0ffh,058h,0ffh,0ffh,0ffh,05ch,05bh,0ffh	; b320  UV....YU.X...\[.
	defb 0ffh,05ah,0ffh,0ffh,050h,0ffh,05ah,05dh,0ffh,0ffh,0ffh,05eh,05ch,0ffh,0ffh,05fh	; b330  .Z..P.Z]...^\.._
	defb 05dh,060h,0ffh,0ffh,05eh,0ffh,05fh,0ffh,0ffh,089h,03ah,0ffh,0ffh,0f6h,063h,0ffh	; b340  ]`..^._...:...c.
	defb 0ffh,062h,064h,0ffh,066h,063h,0ffh,0ffh,065h,066h,0ffh,064h,0ffh,0ffh,065h,063h	; b350  .bd.fc..ef.d..ec
	defb 0ffh,0fah,068h,0ffh,0ffh,067h,0ffh,0ffh,0ffh,0f0h,0ffh,0ffh,0ffh,0f5h,06bh,0ffh	; b360  ..h..g........k.
	defb 0ffh,06ah,0ffh,0ffh,0ffh,0ffh,0ffh,06dh,0f9h,0ffh,0ffh,06eh,06ch,0ffh,0ffh,0ffh	; b370  .j.....m...nl...
	defb 06dh,0ffh,0ffh,0f8h,0ffh,0f1h,0ffh,0ffh,0ffh,0f4h,0ffh,0ffh,0ffh,0f7h,073h,0ffh	; b380  m.............s.
	defb 0ffh,072h,0ffh,0ffh,074h,075h,0ffh,073h,0ffh,0ffh,074h,0ffh,076h,0ffh,077h,075h	; b390  .r..tu.s..t.v.wu
	defb 0ffh,076h,078h,0ffh,0ffh,0f3h,0ffh,0ffh,079h,0ffh,07ah,078h,0ffh,079h,0ffh,07dh	; b3a0  .vx.....y.zx.y.}
	defb 07bh,07ch,07eh,07ah,0ffh,0ffh,07bh,0ffh,0ffh,0ffh,0ffh,0ffh,07ah,0f2h,0ffh,0ffh	; b3b0  {|~z..{.....z...
	defb 07fh,0ffh,082h,07eh,080h,0ffh,081h,07fh,088h,080h,086h,082h,087h,07fh,083h,084h	; b3c0  ...~............
	defb 081h,082h,0ffh,0ffh,0ffh,0ffh,085h,0ffh,082h,084h,0ffh,0ffh,0ffh,081h,0ffh,0ffh	; b3d0  ................
	defb 0ffh,088h,0ffh,081h,0ffh,0ffh,087h,080h,0ffh,0ffh,0fbh,0ffh,0ffh,08bh,0ffh,0ffh	; b3e0  ................
	defb 038h,0ffh,08ah,0ffh,037h,08dh,0ffh,0ffh,038h,0ffh,08ch,0ffh,0ffh,05ch,05ch,05dh	; b3f0  8...7...8....\\]
	defb 05dh,02ah,01ah,001h,001h,05dh,029h,00eh,009h,006h,016h,046h,030h,033h,00bh,034h	; b400  ]*...])....F03.4
	defb 034h,050h,05bh,076h,07ah,082h,084h,038h,00dh,02dh,02eh,068h,06fh,077h,07bh,005h	; b410  4P[vz..8.-.how{.
	defb 056h,06eh,000h,06dh,0b4h,076h,0b4h,07fh,0b4h,088h,0b4h,09ah,0b4h,0a3h,0b4h,0ach	; b420  Vn.m.v..........
	defb 0b4h,0b5h,0b4h,091h,0b4h,0beh,0b4h,0d0h,0b4h,0d9h,0b4h,0e2h,0b4h,0ebh,0b4h,0f4h	; b430  ................
	defb 0b4h,0fdh,0b4h,006h,0b5h,00fh,0b5h,018h,0b5h,021h,0b5h,02ah,0b5h,033h,0b5h,03ch	; b440  .........!.*.3.<
	defb 0b5h,045h,0b5h,04eh,0b5h,057h,0b5h,0c7h,0b4h,060h,0b5h,069h,0b5h,072h,0b5h,07bh	; b450  .E.N.W...`.i.r.{
	defb 0b5h,084h,0b5h,08dh,0b5h,096h,0b5h,09fh,0b5h,0a8h,0b5h,0b1h,0b5h,005h,008h,008h	; b460  ................
	defb 00bh,003h,000h,0c7h,007h,000h,005h,068h,008h,008h,003h,040h,0c7h,010h,000h,005h	; b470  .......h...@....
	defb 008h,098h,00bh,002h,000h,0c7h,011h,000h,005h,068h,098h,008h,002h,040h,0c7h,012h	; b480  .........h...@..
	defb 000h,008h,008h,008h,014h,003h,080h,0c7h,008h,004h,005h,008h,048h,008h,004h,000h	; b490  ............H...
	defb 0c7h,00bh,001h,005h,028h,058h,005h,00ah,000h,0c7h,013h,002h,005h,008h,058h,003h	; b4a0  ....(X........X.
	defb 00ah,000h,0c7h,009h,003h,005h,020h,098h,007h,002h,040h,0c7h,00ah,003h,005h,008h	; b4b0  ...... ...@.....
	defb 028h,003h,008h,000h,0c7h,00ch,005h,005h,068h,008h,006h,003h,000h,0c7h,016h,015h	; b4c0  (.......h.......
	defb 004h,048h,068h,004h,004h,000h,0c7h,006h,006h,004h,048h,028h,004h,004h,000h,0c7h	; b4d0  .Hh.......H(....
	defb 006h,009h,004h,028h,028h,004h,004h,000h,0c7h,006h,007h,004h,048h,048h,004h,004h	; b4e0  ...((.......HH..
	defb 040h,0c7h,006h,008h,004h,028h,028h,004h,004h,000h,0c7h,006h,00ah,004h,068h,028h	; b4f0  @....((.......h(
	defb 004h,004h,000h,0c7h,006h,00bh,004h,030h,070h,004h,004h,000h,0c7h,006h,00ch,004h	; b500  .......0p.......
	defb 048h,048h,004h,004h,000h,0c7h,006h,00dh,003h,008h,048h,002h,004h,000h,0c7h,005h	; b510  HH........H.....
	defb 00eh,001h,048h,008h,004h,002h,040h,0c7h,000h,00fh,002h,048h,008h,004h,002h,000h	; b520  ..H...@....H....
	defb 0c7h,002h,010h,002h,048h,098h,004h,002h,000h,0c7h,003h,010h,005h,098h,048h,002h	; b530  ....H.........H.
	defb 004h,000h,0c7h,00dh,011h,005h,028h,008h,005h,005h,000h,0c7h,00eh,012h,005h,078h	; b540  ......(........x
	defb 008h,004h,002h,000h,0c7h,00fh,013h,005h,098h,028h,002h,004h,000h,0c7h,00dh,014h	; b550  .........(......
	defb 006h,008h,018h,002h,004h,080h,0c7h,014h,016h,006h,098h,018h,002h,006h,080h,0c7h	; b560  ................
	defb 018h,017h,007h,048h,058h,004h,001h,080h,0c7h,015h,018h,006h,068h,048h,002h,004h	; b570  ...HX.......hH..
	defb 080h,0c7h,014h,019h,007h,068h,070h,004h,001h,080h,0c7h,015h,01ah,006h,068h,048h	; b580  .....hp.......hH
	defb 002h,004h,080h,0c7h,014h,01bh,006h,068h,068h,002h,004h,080h,0c7h,014h,01ch,005h	; b590  .......hh.......
	defb 008h,058h,003h,00ah,000h,0c7h,017h,01dh,009h,088h,018h,004h,004h,000h,0c7h,019h	; b5a0  .X..............
	defb 01eh,00ah,050h,030h,002h,002h,080h,0c7h,01ah,01fh,002h,0b6h,002h,0b6h,01ah,0b6h	; b5b0  ..P0............
	defb 012h,0b6h,00ah,0b6h,00ah,0b6h,022h,0b6h,032h,0b6h,053h,0b6h,0ddh,0b6h,08fh,0b6h	; b5c0  ......".2.S.....
	defb 09dh,0b6h,0fbh,0b6h,013h,0b7h,01bh,0b7h,0bdh,0b6h,0c5h,0b6h,034h,0b7h,04ah,0b7h	; b5d0  ............4.J.
	defb 05ah,0b7h,08ch,0b7h,094h,0b7h,0f0h,0b5h,098h,0b7h,0b6h,0b7h,0c2h,0b7h,0d2h,0b7h	; b5e0  Z...............
	defb 001h,002h,09ch,003h,004h,09eh,001h,002h,09fh,003h,004h,09fh,001h,002h,09fh,003h	; b5f0  ................
	defb 004h,001h,030h,031h,032h,033h,034h,035h,036h,037h,038h,039h,03ah,03bh,03ch,03dh	; b600  ..0123456789:;<=
	defb 03eh,03fh,040h,041h,042h,043h,044h,045h,046h,047h,040h,041h,042h,043h,044h,045h	; b610  >?@ABCDEFG@ABCDE
	defb 046h,047h,050h,051h,052h,053h,054h,055h,056h,057h,058h,059h,05ah,05bh,05ch,05dh	; b620  FGPQRSTUVWXYZ[\]
	defb 05eh,05fh,09ch,09bh,09ah,096h,00bh,007h,097h,003h,0a4h,096h,004h,0a3h,097h,003h	; b630  ^_..............
	defb 0a2h,096h,004h,0a3h,097h,003h,0a2h,096h,004h,0a3h,097h,003h,0a2h,007h,00bh,0a3h	; b640  ................
	defb 0a0h,0a1h,0a4h,09ch,09bh,09ah,096h,00bh,007h,097h,003h,0a4h,096h,004h,0a3h,097h	; b650  ................
	defb 003h,0a2h,096h,004h,0a3h,097h,003h,0a2h,096h,004h,0a3h,097h,003h,0a2h,096h,004h	; b660  ................
	defb 0a3h,097h,003h,0a2h,096h,004h,0a3h,097h,003h,0a2h,096h,004h,0a3h,097h,003h,0a2h	; b670  ................
	defb 096h,004h,0a3h,097h,003h,0a2h,096h,004h,0a3h,097h,00ch,005h,09dh,098h,099h,002h	; b680  ................
	defb 065h,001h,064h,002h,065h,001h,064h,002h,065h,00bh,064h,069h,06fh,00ch,00bh,009h	; b690  e.d.e.d.e.dio...
	defb 00ah,00ch,00ch,00ah,00bh,00bh,00bh,009h,00ch,002h,00ch,00ah,003h,002h,00bh,00ch	; b6a0  ................
	defb 003h,001h,00ch,00bh,004h,002h,00bh,00ch,003h,001h,00ch,00bh,004h,005h,006h,007h	; b6b0  ................
	defb 008h,005h,006h,007h,008h,006h,009h,0a2h,097h,004h,0a3h,096h,003h,0a2h,097h,004h	; b6c0  ................
	defb 0a3h,096h,003h,0a2h,097h,004h,0a3h,096h,003h,0a2h,097h,004h,0a3h,06ah,06bh,06ah	; b6d0  .............jkj
	defb 06bh,06ah,06bh,06ah,06bh,06ah,06eh,008h,007h,008h,007h,008h,007h,008h,007h,00ch	; b6e0  kjkjkjn.........
	defb 065h,070h,071h,070h,071h,070h,071h,070h,071h,001h,064h,00ch,00bh,009h,00ah,00ch	; b6f0  epqpqpqpq.d.....
	defb 00bh,009h,00ah,00bh,00ch,00ch,009h,00bh,00ch,00ch,009h,065h,066h,065h,066h,065h	; b700  ...........efefe
	defb 066h,065h,066h,005h,006h,005h,006h,007h,008h,007h,008h,005h,006h,005h,006h,065h	; b710  fef............e
	defb 007h,008h,007h,008h,065h,005h,006h,005h,006h,065h,007h,008h,007h,008h,065h,005h	; b720  ....e....e....e.
	defb 006h,005h,006h,065h,09ah,09eh,00ch,094h,001h,095h,002h,094h,001h,095h,002h,094h	; b730  ...e............
	defb 001h,095h,002h,094h,001h,095h,009h,007h,0a0h,0a1h,00ah,005h,001h,094h,002h,095h	; b740  ................
	defb 001h,094h,002h,095h,001h,094h,00ah,095h,098h,09fh,005h,006h,005h,006h,005h,006h	; b750  ................
	defb 005h,006h,064h,068h,068h,069h,068h,069h,068h,069h,068h,069h,068h,069h,067h,06bh	; b760  ..dhhihihihihigk
	defb 06ah,06bh,06ah,06bh,06ah,06bh,067h,06ah,06ah,008h,007h,008h,007h,008h,007h,008h	; b770  jkjkjkgjj.......
	defb 06ah,064h,067h,003h,06ch,06dh,06ch,06dh,06ch,06dh,002h,065h,020h,020h,020h,020h	; b780  jdg.lmlmlm.e
	defb 021h,021h,021h,021h,022h,022h,022h,022h,06ch,06bh,06ah,06bh,06ah,06bh,06ah,06bh	; b790  !!!!""""lkjkjkjk
	defb 06ah,06eh,066h,00ah,008h,008h,008h,007h,008h,007h,00ch,064h,067h,003h,074h,070h	; b7a0  jnf........dg.tp
	defb 071h,070h,071h,070h,001h,065h,020h,020h,020h,020h,020h,020h,021h,021h,021h,021h	; b7b0  qpqp.e      !!!!
	defb 021h,021h,001h,002h,003h,004h,004h,003h,002h,001h,001h,002h,003h,004h,004h,003h	; b7c0  !!..............
	defb 002h,001h,010h,011h,012h,013h	; b7d0

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
L_BBC9:
	ld a,(ix+000h)		;bbc9
	ld c,a			;bbcc
	ld a,c			;bbcd
	cp 025h		;bbce
	jr z,L_BC3F		;bbd0
	cp 026h		;bbd2
	jr z,L_BC1C		;bbd4
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
	cp 00ah		;bbf5
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
L_BC1C:
	ld a,026h		;bc1c
	call 040e6h		;bc1e
	ld hl,0c135h		;bc21
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
; DATOS sin identificar  0xbc4f..0xbcc7  (120 bytes)
DATA_BC4F:
	defb 001h,010h,008h,004h,015h,010h,001h,038h,004h,001h,015h,003h,002h,013h,014h,024h	; bc4f  .......8.......$
	defb 002h,003h,005h,006h,010h,022h,004h,010h,018h,028h,005h,006h,007h,010h,032h,023h	; bc5f  ....."...(....2#
	defb 048h,012h,042h,009h,059h,048h,044h,009h,008h,020h,040h,012h,024h,022h,030h,018h	; bc6f  H.B.YHD.. @.$"0.
	defb 022h,020h,008h,024h,030h,025h,025h,029h,045h,012h,009h,028h,025h,025h,025h,000h	; bc7f  " .$0%%)E..(%%%.
	defb 000h,040h,001h,002h,001h,018h,001h,005h,002h,001h,001h,002h,003h,001h,001h,001h	; bc8f  .@..............
	defb 004h,018h,016h,003h,003h,001h,001h,001h,010h,015h,012h,018h,020h,025h,030h,020h	; bc9f  ............ %0
	defb 015h,020h,018h,020h,018h,0b8h,04ch,045h,056h,045h,04ch,000h,060h,03ch,000h,05bh	; bcaf  . . ..LEVEL.`<.[
	defb 060h,03ch,082h,079h,066h,06ah,03eh,0ffh	; bcbf  `<.yfj>.

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
	jp c,L_BBC9		;befa
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
