; ==========================================================================
; KING KONG 2: YOMIGAERU DENSETSU - Konami (1986) - MSX - MegaROM RC-745 de 128 KB (Konami4) - banco 13 (se ejecuta en 0x6000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x06000


; ----------------------------------------------------------------------
; DATOS enemigos_de_cada_pantalla: 0x8A punteros, uno por pantalla
;   (0x00-0x89), a su lista de enemigos; lo leen p00:59A5 (276 bytes)
;   0x6000..0x6114  (276 bytes)
DATA_enemigos_de_cada_pantalla:
	defb 014h,061h	; 6000
	defb 015h,061h	; 6002
	defb 028h,061h	; 6004
	defb 038h,061h	; 6006
	defb 045h,061h	; 6008
	defb 05bh,061h	; 600a
	defb 065h,061h	; 600c
	defb 069h,061h	; 600e
	defb 079h,061h	; 6010
	defb 083h,061h	; 6012
	defb 09fh,061h	; 6014
	defb 0b2h,061h	; 6016
	defb 0b6h,061h	; 6018
	defb 0bah,061h	; 601a
	defb 0c7h,061h	; 601c
	defb 0d1h,061h	; 601e
	defb 0e4h,061h	; 6020
	defb 0e8h,061h	; 6022
	defb 0ech,061h	; 6024
	defb 0f0h,061h	; 6026
	defb 014h,061h	; 6028
	defb 014h,061h	; 602a
	defb 0fah,061h	; 602c
	defb 004h,062h	; 602e
	defb 014h,061h	; 6030
	defb 011h,062h	; 6032
	defb 021h,062h	; 6034
	defb 02eh,062h	; 6036
	defb 038h,062h	; 6038
	defb 045h,062h	; 603a
	defb 049h,062h	; 603c
	defb 059h,062h	; 603e
	defb 05dh,062h	; 6040
	defb 06ah,062h	; 6042
	defb 077h,062h	; 6044
	defb 014h,061h	; 6046
	defb 087h,062h	; 6048
	defb 097h,062h	; 604a
	defb 0a7h,062h	; 604c
	defb 014h,061h	; 604e
	defb 014h,061h	; 6050
	defb 0abh,062h	; 6052
	defb 0afh,062h	; 6054
	defb 0b3h,062h	; 6056
	defb 014h,061h	; 6058
	defb 014h,061h	; 605a
	defb 014h,061h	; 605c
	defb 0c3h,062h	; 605e
	defb 0d0h,062h	; 6060
	defb 0e9h,062h	; 6062
	defb 0f3h,062h	; 6064
	defb 0fah,062h	; 6066
	defb 001h,063h	; 6068
	defb 00bh,063h	; 606a
	defb 01bh,063h	; 606c
	defb 02eh,063h	; 606e
	defb 032h,063h	; 6070
	defb 045h,063h	; 6072
	defb 052h,063h	; 6074
	defb 05fh,063h	; 6076
	defb 06ch,063h	; 6078
	defb 079h,063h	; 607a
	defb 080h,063h	; 607c
	defb 084h,063h	; 607e
	defb 084h,063h	; 6080
	defb 084h,063h	; 6082
	defb 084h,063h	; 6084
	defb 088h,063h	; 6086
	defb 08ch,063h	; 6088
	defb 08ch,063h	; 608a
	defb 090h,063h	; 608c
	defb 094h,063h	; 608e
	defb 094h,063h	; 6090
	defb 094h,063h	; 6092
	defb 098h,063h	; 6094
	defb 09ch,063h	; 6096
	defb 0a0h,063h	; 6098
	defb 0aah,063h	; 609a
	defb 0c0h,063h	; 609c
	defb 0d6h,063h	; 609e
	defb 0e9h,063h	; 60a0
	defb 014h,061h	; 60a2
	defb 0fch,063h	; 60a4
	defb 01bh,064h	; 60a6
	defb 01fh,064h	; 60a8
	defb 032h,064h	; 60aa
	defb 045h,064h	; 60ac
	defb 055h,064h	; 60ae
	defb 06bh,064h	; 60b0
	defb 072h,064h	; 60b2
	defb 014h,061h	; 60b4
	defb 091h,064h	; 60b6
	defb 0b0h,064h	; 60b8
	defb 0b4h,064h	; 60ba
	defb 0b8h,064h	; 60bc
	defb 014h,061h	; 60be
	defb 014h,061h	; 60c0
	defb 014h,061h	; 60c2
	defb 014h,061h	; 60c4
	defb 0cbh,064h	; 60c6
	defb 0dbh,064h	; 60c8
	defb 0e8h,064h	; 60ca
	defb 0f8h,064h	; 60cc
	defb 008h,065h	; 60ce
	defb 014h,061h	; 60d0
	defb 014h,061h	; 60d2
	defb 01bh,065h	; 60d4
	defb 014h,061h	; 60d6
	defb 02eh,065h	; 60d8
	defb 041h,065h	; 60da
	defb 054h,065h	; 60dc
	defb 067h,065h	; 60de
	defb 014h,061h	; 60e0
	defb 014h,061h	; 60e2
	defb 06bh,065h	; 60e4
	defb 07bh,065h	; 60e6
	defb 085h,065h	; 60e8
	defb 08ch,065h	; 60ea
	defb 093h,065h	; 60ec
	defb 09dh,065h	; 60ee
	defb 0a4h,065h	; 60f0
	defb 0b1h,065h	; 60f2
	defb 0beh,065h	; 60f4
	defb 0cbh,065h	; 60f6
	defb 0d8h,065h	; 60f8
	defb 014h,061h	; 60fa
	defb 0dfh,065h	; 60fc
	defb 0ech,065h	; 60fe
	defb 014h,061h	; 6100
	defb 014h,061h	; 6102
	defb 0f9h,065h	; 6104
	defb 006h,066h	; 6106
	defb 013h,066h	; 6108
	defb 014h,061h	; 610a
	defb 014h,061h	; 610c
	defb 014h,061h	; 610e
	defb 014h,061h	; 6110
	defb 014h,061h	; 6112

; ----------------------------------------------------------------------
; DATOS enemigos_6114: 0 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (1 bytes)
;   0x6114..0x6115  (1 bytes)
DATA_enemigos_6114:
	defb 000h	; 6114

; ----------------------------------------------------------------------
; DATOS enemigos_6115: 6 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (19 bytes)
;   0x6115..0x6128  (19 bytes)
DATA_enemigos_6115:
	defb 006h,001h,080h	; 6115
	defb 030h,001h,070h	; 6118
	defb 040h,001h,070h	; 611b
	defb 070h,001h,080h	; 611e
	defb 090h,001h,090h	; 6121
	defb 060h,084h,030h	; 6124
	defb 078h	; 6127

; ----------------------------------------------------------------------
; DATOS enemigos_6128: 5 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (16 bytes)
;   0x6128..0x6138  (16 bytes)
DATA_enemigos_6128:
	defb 005h,00ah,030h	; 6128
	defb 030h,00ah,080h	; 612b
	defb 030h,00ah,060h	; 612e
	defb 050h,00ah,030h	; 6131
	defb 080h,00ah,080h	; 6134
	defb 080h	; 6137

; ----------------------------------------------------------------------
; DATOS enemigos_6138: 4 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (13 bytes)
;   0x6138..0x6145  (13 bytes)
DATA_enemigos_6138:
	defb 004h,00ah,050h	; 6138
	defb 060h,00ah,070h	; 613b
	defb 030h,00ah,070h	; 613e
	defb 080h,007h,0efh	; 6141
	defb 000h	; 6144

; ----------------------------------------------------------------------
; DATOS enemigos_6145: 7 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (22 bytes)
;   0x6145..0x615b  (22 bytes)
DATA_enemigos_6145:
	defb 007h,001h,060h	; 6145
	defb 020h,001h,070h	; 6148
	defb 040h,001h,090h	; 614b
	defb 030h,089h,030h	; 614e
	defb 090h,089h,040h	; 6151
	defb 070h,089h,070h	; 6154
	defb 090h,089h,080h	; 6157
	defb 070h	; 615a

; ----------------------------------------------------------------------
; DATOS enemigos_615B: 3 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (10 bytes)
;   0x615b..0x6165  (10 bytes)
DATA_enemigos_615B:
	defb 003h,00ah,030h	; 615b
	defb 020h,00ah,050h	; 615e
	defb 040h,08bh,048h	; 6161
	defb 080h	; 6164

; ----------------------------------------------------------------------
; DATOS enemigos_6165: 1 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (4 bytes)
;   0x6165..0x6169  (4 bytes)
DATA_enemigos_6165:
	defb 001h,0beh,0efh	; 6165
	defb 000h	; 6168

; ----------------------------------------------------------------------
; DATOS enemigos_6169: 5 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (16 bytes)
;   0x6169..0x6179  (16 bytes)
DATA_enemigos_6169:
	defb 005h,044h,030h	; 6169
	defb 030h,044h,030h	; 616c
	defb 080h,044h,050h	; 616f
	defb 050h,044h,080h	; 6172
	defb 030h,044h,080h	; 6175
	defb 080h	; 6178

; ----------------------------------------------------------------------
; DATOS enemigos_6179: 3 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (10 bytes)
;   0x6179..0x6183  (10 bytes)
DATA_enemigos_6179:
	defb 003h,043h,050h	; 6179
	defb 030h,043h,070h	; 617c
	defb 070h,043h,090h	; 617f
	defb 050h	; 6182

; ----------------------------------------------------------------------
; DATOS enemigos_6183: 9 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (28 bytes)
;   0x6183..0x619f  (28 bytes)
DATA_enemigos_6183:
	defb 009h,011h,020h	; 6183
	defb 020h,011h,020h	; 6186
	defb 050h,011h,020h	; 6189
	defb 080h,001h,040h	; 618c
	defb 010h,001h,040h	; 618f
	defb 070h,001h,060h	; 6192
	defb 090h,001h,080h	; 6195
	defb 030h,001h,070h	; 6198
	defb 060h,001h,090h	; 619b
	defb 090h	; 619e

; ----------------------------------------------------------------------
; DATOS enemigos_619F: 6 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (19 bytes)
;   0x619f..0x61b2  (19 bytes)
DATA_enemigos_619F:
	defb 006h,043h,070h	; 619f
	defb 070h,043h,030h	; 61a2
	defb 070h,043h,050h	; 61a5
	defb 050h,043h,080h	; 61a8
	defb 030h,043h,090h	; 61ab
	defb 050h,043h,090h	; 61ae
	defb 080h	; 61b1

; ----------------------------------------------------------------------
; DATOS enemigos_61B2: 1 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (4 bytes)
;   0x61b2..0x61b6  (4 bytes)
DATA_enemigos_61B2:
	defb 001h,012h,050h	; 61b2
	defb 040h	; 61b5

; ----------------------------------------------------------------------
; DATOS enemigos_61B6: 1 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (4 bytes)
;   0x61b6..0x61ba  (4 bytes)
DATA_enemigos_61B6:
	defb 001h,00ch,055h	; 61b6
	defb 055h	; 61b9

; ----------------------------------------------------------------------
; DATOS enemigos_61BA: 4 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (13 bytes)
;   0x61ba..0x61c7  (13 bytes)
DATA_enemigos_61BA:
	defb 004h,043h,020h	; 61ba
	defb 090h,043h,050h	; 61bd
	defb 080h,043h,070h	; 61c0
	defb 090h,043h,090h	; 61c3
	defb 080h	; 61c6

; ----------------------------------------------------------------------
; DATOS enemigos_61C7: 3 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (10 bytes)
;   0x61c7..0x61d1  (10 bytes)
DATA_enemigos_61C7:
	defb 003h,044h,030h	; 61c7
	defb 070h,044h,060h	; 61ca
	defb 098h,044h,090h	; 61cd
	defb 090h	; 61d0

; ----------------------------------------------------------------------
; DATOS enemigos_61D1: 6 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (19 bytes)
;   0x61d1..0x61e4  (19 bytes)
DATA_enemigos_61D1:
	defb 006h,017h,020h	; 61d1
	defb 070h,017h,030h	; 61d4
	defb 030h,017h,040h	; 61d7
	defb 090h,017h,050h	; 61da
	defb 060h,017h,070h	; 61dd
	defb 040h,017h,080h	; 61e0
	defb 080h	; 61e3

; ----------------------------------------------------------------------
; DATOS enemigos_61E4: 1 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (4 bytes)
;   0x61e4..0x61e8  (4 bytes)
DATA_enemigos_61E4:
	defb 001h,013h,050h	; 61e4
	defb 060h	; 61e7

; ----------------------------------------------------------------------
; DATOS enemigos_61E8: 1 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (4 bytes)
;   0x61e8..0x61ec  (4 bytes)
DATA_enemigos_61E8:
	defb 001h,01bh,0efh	; 61e8
	defb 000h	; 61eb

; ----------------------------------------------------------------------
; DATOS enemigos_61EC: 1 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (4 bytes)
;   0x61ec..0x61f0  (4 bytes)
DATA_enemigos_61EC:
	defb 001h,014h,040h	; 61ec
	defb 040h	; 61ef

; ----------------------------------------------------------------------
; DATOS enemigos_61F0: 3 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (10 bytes)
;   0x61f0..0x61fa  (10 bytes)
DATA_enemigos_61F0:
	defb 003h,009h,040h	; 61f0
	defb 030h,009h,080h	; 61f3
	defb 040h,009h,060h	; 61f6
	defb 060h	; 61f9

; ----------------------------------------------------------------------
; DATOS enemigos_61FA: 3 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (10 bytes)
;   0x61fa..0x6204  (10 bytes)
DATA_enemigos_61FA:
	defb 003h,01ch,040h	; 61fa
	defb 040h,01ch,070h	; 61fd
	defb 070h,01ch,090h	; 6200
	defb 030h	; 6203

; ----------------------------------------------------------------------
; DATOS enemigos_6204: 4 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (13 bytes)
;   0x6204..0x6211  (13 bytes)
DATA_enemigos_6204:
	defb 004h,01ch,030h	; 6204
	defb 040h,01ch,060h	; 6207
	defb 080h,01ch,090h	; 620a
	defb 060h,01ch,070h	; 620d
	defb 020h	; 6210

; ----------------------------------------------------------------------
; DATOS enemigos_6211: 5 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (16 bytes)
;   0x6211..0x6221  (16 bytes)
DATA_enemigos_6211:
	defb 005h,01dh,030h	; 6211
	defb 040h,01dh,050h	; 6214
	defb 060h,01dh,050h	; 6217
	defb 080h,01dh,070h	; 621a
	defb 040h,01dh,080h	; 621d
	defb 070h	; 6220

; ----------------------------------------------------------------------
; DATOS enemigos_6221: 4 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (13 bytes)
;   0x6221..0x622e  (13 bytes)
DATA_enemigos_6221:
	defb 004h,01eh,088h	; 6221
	defb 078h,003h,050h	; 6224
	defb 040h,003h,030h	; 6227
	defb 020h,003h,080h	; 622a
	defb 020h	; 622d

; ----------------------------------------------------------------------
; DATOS enemigos_622E: 3 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (10 bytes)
;   0x622e..0x6238  (10 bytes)
DATA_enemigos_622E:
	defb 003h,024h,030h	; 622e
	defb 040h,024h,070h	; 6231
	defb 070h,028h,0efh	; 6234
	defb 000h	; 6237

; ----------------------------------------------------------------------
; DATOS enemigos_6238: 4 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (13 bytes)
;   0x6238..0x6245  (13 bytes)
DATA_enemigos_6238:
	defb 004h,024h,030h	; 6238
	defb 040h,024h,050h	; 623b
	defb 080h,024h,080h	; 623e
	defb 050h,028h,0efh	; 6241
	defb 000h	; 6244

; ----------------------------------------------------------------------
; DATOS enemigos_6245: 1 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (4 bytes)
;   0x6245..0x6249  (4 bytes)
DATA_enemigos_6245:
	defb 001h,02ch,060h	; 6245
	defb 010h	; 6248

; ----------------------------------------------------------------------
; DATOS enemigos_6249: 5 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (16 bytes)
;   0x6249..0x6259  (16 bytes)
DATA_enemigos_6249:
	defb 005h,018h,030h	; 6249
	defb 040h,018h,030h	; 624c
	defb 070h,018h,050h	; 624f
	defb 060h,018h,080h	; 6252
	defb 040h,018h,080h	; 6255
	defb 070h	; 6258

; ----------------------------------------------------------------------
; DATOS enemigos_6259: 1 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (4 bytes)
;   0x6259..0x625d  (4 bytes)
DATA_enemigos_6259:
	defb 001h,01eh,078h	; 6259
	defb 028h	; 625c

; ----------------------------------------------------------------------
; DATOS enemigos_625D: 4 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (13 bytes)
;   0x625d..0x626a  (13 bytes)
DATA_enemigos_625D:
	defb 004h,029h,020h	; 625d
	defb 030h,029h,040h	; 6260
	defb 090h,0a9h,070h	; 6263
	defb 050h,0a9h,090h	; 6266
	defb 090h	; 6269

; ----------------------------------------------------------------------
; DATOS enemigos_626A: 4 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (13 bytes)
;   0x626a..0x6277  (13 bytes)
DATA_enemigos_626A:
	defb 004h,029h,020h	; 626a
	defb 020h,029h,040h	; 626d
	defb 090h,098h,070h	; 6270
	defb 030h,098h,090h	; 6273
	defb 090h	; 6276

; ----------------------------------------------------------------------
; DATOS enemigos_6277: 5 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (16 bytes)
;   0x6277..0x6287  (16 bytes)
DATA_enemigos_6277:
	defb 005h,01ch,030h	; 6277
	defb 030h,01ch,030h	; 627a
	defb 080h,01ch,050h	; 627d
	defb 060h,01ch,080h	; 6280
	defb 040h,01ch,080h	; 6283
	defb 080h	; 6286

; ----------------------------------------------------------------------
; DATOS enemigos_6287: 5 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (16 bytes)
;   0x6287..0x6297  (16 bytes)
DATA_enemigos_6287:
	defb 005h,002h,020h	; 6287
	defb 050h,002h,050h	; 628a
	defb 050h,002h,060h	; 628d
	defb 080h,002h,070h	; 6290
	defb 030h,03eh,0efh	; 6293
	defb 000h	; 6296

; ----------------------------------------------------------------------
; DATOS enemigos_6297: 5 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (16 bytes)
;   0x6297..0x62a7  (16 bytes)
DATA_enemigos_6297:
	defb 005h,002h,020h	; 6297
	defb 050h,002h,050h	; 629a
	defb 050h,002h,060h	; 629d
	defb 080h,002h,070h	; 62a0
	defb 030h,03eh,0efh	; 62a3
	defb 000h	; 62a6

; ----------------------------------------------------------------------
; DATOS enemigos_62A7: 1 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (4 bytes)
;   0x62a7..0x62ab  (4 bytes)
DATA_enemigos_62A7:
	defb 001h,02eh,050h	; 62a7
	defb 040h	; 62aa

; ----------------------------------------------------------------------
; DATOS enemigos_62AB: 1 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (4 bytes)
;   0x62ab..0x62af  (4 bytes)
DATA_enemigos_62AB:
	defb 001h,02ah,030h	; 62ab
	defb 058h	; 62ae

; ----------------------------------------------------------------------
; DATOS enemigos_62AF: 1 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (4 bytes)
;   0x62af..0x62b3  (4 bytes)
DATA_enemigos_62AF:
	defb 001h,005h,048h	; 62af
	defb 078h	; 62b2

; ----------------------------------------------------------------------
; DATOS enemigos_62B3: 5 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (16 bytes)
;   0x62b3..0x62c3  (16 bytes)
DATA_enemigos_62B3:
	defb 005h,015h,010h	; 62b3
	defb 020h,015h,010h	; 62b6
	defb 070h,015h,020h	; 62b9
	defb 040h,015h,020h	; 62bc
	defb 090h,015h,030h	; 62bf
	defb 060h	; 62c2

; ----------------------------------------------------------------------
; DATOS enemigos_62C3: 4 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (13 bytes)
;   0x62c3..0x62d0  (13 bytes)
DATA_enemigos_62C3:
	defb 004h,019h,030h	; 62c3
	defb 040h,019h,050h	; 62c6
	defb 060h,019h,080h	; 62c9
	defb 030h,019h,080h	; 62cc
	defb 080h	; 62cf

; ----------------------------------------------------------------------
; DATOS enemigos_62D0: 8 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (25 bytes)
;   0x62d0..0x62e9  (25 bytes)
DATA_enemigos_62D0:
	defb 008h,002h,020h	; 62d0
	defb 060h,002h,050h	; 62d3
	defb 060h,002h,080h	; 62d6
	defb 020h,019h,030h	; 62d9
	defb 040h,019h,030h	; 62dc
	defb 080h,019h,060h	; 62df
	defb 030h,019h,070h	; 62e2
	defb 080h,019h,090h	; 62e5
	defb 050h	; 62e8

; ----------------------------------------------------------------------
; DATOS enemigos_62E9: 3 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (10 bytes)
;   0x62e9..0x62f3  (10 bytes)
DATA_enemigos_62E9:
	defb 003h,01ah,028h	; 62e9
	defb 058h,002h,060h	; 62ec
	defb 020h,002h,070h	; 62ef
	defb 090h	; 62f2

; ----------------------------------------------------------------------
; DATOS enemigos_62F3: 2 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (7 bytes)
;   0x62f3..0x62fa  (7 bytes)
DATA_enemigos_62F3:
	defb 002h,002h,020h	; 62f3
	defb 010h,002h,090h	; 62f6
	defb 040h	; 62f9

; ----------------------------------------------------------------------
; DATOS enemigos_62FA: 2 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (7 bytes)
;   0x62fa..0x6301  (7 bytes)
DATA_enemigos_62FA:
	defb 002h,002h,020h	; 62fa
	defb 040h,002h,090h	; 62fd
	defb 020h	; 6300

; ----------------------------------------------------------------------
; DATOS enemigos_6301: 3 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (10 bytes)
;   0x6301..0x630b  (10 bytes)
DATA_enemigos_6301:
	defb 003h,002h,060h	; 6301
	defb 020h,002h,050h	; 6304
	defb 090h,01ah,058h	; 6307
	defb 058h	; 630a

; ----------------------------------------------------------------------
; DATOS enemigos_630B: 5 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (16 bytes)
;   0x630b..0x631b  (16 bytes)
DATA_enemigos_630B:
	defb 005h,02fh,020h	; 630b
	defb 050h,02fh,060h	; 630e
	defb 040h,02fh,080h	; 6311
	defb 050h,031h,040h	; 6314
	defb 080h,031h,060h	; 6317
	defb 090h	; 631a

; ----------------------------------------------------------------------
; DATOS enemigos_631B: 6 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (19 bytes)
;   0x631b..0x632e  (19 bytes)
DATA_enemigos_631B:
	defb 006h,02fh,020h	; 631b
	defb 050h,02fh,030h	; 631e
	defb 080h,02fh,050h	; 6321
	defb 040h,02fh,070h	; 6324
	defb 050h,031h,080h	; 6327
	defb 090h,031h,090h	; 632a
	defb 078h	; 632d

; ----------------------------------------------------------------------
; DATOS enemigos_632E: 1 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (4 bytes)
;   0x632e..0x6332  (4 bytes)
DATA_enemigos_632E:
	defb 001h,01fh,028h	; 632e
	defb 088h	; 6331

; ----------------------------------------------------------------------
; DATOS enemigos_6332: 6 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (19 bytes)
;   0x6332..0x6345  (19 bytes)
DATA_enemigos_6332:
	defb 006h,02fh,050h	; 6332
	defb 070h,02fh,060h	; 6335
	defb 090h,02fh,080h	; 6338
	defb 080h,02fh,090h	; 633b
	defb 040h,031h,040h	; 633e
	defb 020h,031h,040h	; 6341
	defb 050h	; 6344

; ----------------------------------------------------------------------
; DATOS enemigos_6345: 4 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (13 bytes)
;   0x6345..0x6352  (13 bytes)
DATA_enemigos_6345:
	defb 004h,01fh,028h	; 6345
	defb 038h,02fh,030h	; 6348
	defb 070h,02fh,050h	; 634b
	defb 050h,02fh,040h	; 634e
	defb 090h	; 6351

; ----------------------------------------------------------------------
; DATOS enemigos_6352: 4 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (13 bytes)
;   0x6352..0x635f  (13 bytes)
DATA_enemigos_6352:
	defb 004h,01fh,048h	; 6352
	defb 058h,030h,060h	; 6355
	defb 060h,030h,070h	; 6358
	defb 040h,030h,080h	; 635b
	defb 060h	; 635e

; ----------------------------------------------------------------------
; DATOS enemigos_635F: 4 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (13 bytes)
;   0x635f..0x636c  (13 bytes)
DATA_enemigos_635F:
	defb 004h,030h,050h	; 635f
	defb 090h,030h,080h	; 6362
	defb 050h,030h,090h	; 6365
	defb 030h,030h,090h	; 6368
	defb 080h	; 636b

; ----------------------------------------------------------------------
; DATOS enemigos_636C: 4 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (13 bytes)
;   0x636c..0x6379  (13 bytes)
DATA_enemigos_636C:
	defb 004h,01fh,028h	; 636c
	defb 068h,02fh,030h	; 636f
	defb 040h,02fh,040h	; 6372
	defb 080h,02fh,080h	; 6375
	defb 080h	; 6378

; ----------------------------------------------------------------------
; DATOS enemigos_6379: 2 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (7 bytes)
;   0x6379..0x6380  (7 bytes)
DATA_enemigos_6379:
	defb 002h,032h,030h	; 6379
	defb 060h,032h,050h	; 637c
	defb 080h	; 637f

; ----------------------------------------------------------------------
; DATOS enemigos_6380: 1 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (4 bytes)
;   0x6380..0x6384  (4 bytes)
DATA_enemigos_6380:
	defb 001h,01bh,0efh	; 6380
	defb 000h	; 6383

; ----------------------------------------------------------------------
; DATOS enemigos_6384: 1 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (4 bytes)
;   0x6384..0x6388  (4 bytes)
DATA_enemigos_6384:
	defb 001h,034h,058h	; 6384
	defb 058h	; 6387

; ----------------------------------------------------------------------
; DATOS enemigos_6388: 1 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (4 bytes)
;   0x6388..0x638c  (4 bytes)
DATA_enemigos_6388:
	defb 001h,01bh,0efh	; 6388
	defb 000h	; 638b

; ----------------------------------------------------------------------
; DATOS enemigos_638C: 1 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (4 bytes)
;   0x638c..0x6390  (4 bytes)
DATA_enemigos_638C:
	defb 001h,034h,058h	; 638c
	defb 058h	; 638f

; ----------------------------------------------------------------------
; DATOS enemigos_6390: 1 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (4 bytes)
;   0x6390..0x6394  (4 bytes)
DATA_enemigos_6390:
	defb 001h,01bh,0efh	; 6390
	defb 000h	; 6393

; ----------------------------------------------------------------------
; DATOS enemigos_6394: 1 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (4 bytes)
;   0x6394..0x6398  (4 bytes)
DATA_enemigos_6394:
	defb 001h,035h,058h	; 6394
	defb 058h	; 6397

; ----------------------------------------------------------------------
; DATOS enemigos_6398: 1 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (4 bytes)
;   0x6398..0x639c  (4 bytes)
DATA_enemigos_6398:
	defb 001h,01bh,0efh	; 6398
	defb 000h	; 639b

; ----------------------------------------------------------------------
; DATOS enemigos_639C: 1 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (4 bytes)
;   0x639c..0x63a0  (4 bytes)
DATA_enemigos_639C:
	defb 001h,033h,058h	; 639c
	defb 058h	; 639f

; ----------------------------------------------------------------------
; DATOS enemigos_63A0: 3 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (10 bytes)
;   0x63a0..0x63aa  (10 bytes)
DATA_enemigos_63A0:
	defb 003h,037h,040h	; 63a0
	defb 030h,037h,050h	; 63a3
	defb 070h,037h,070h	; 63a6
	defb 050h	; 63a9

; ----------------------------------------------------------------------
; DATOS enemigos_63AA: 7 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (22 bytes)
;   0x63aa..0x63c0  (22 bytes)
DATA_enemigos_63AA:
	defb 007h,036h,020h	; 63aa
	defb 060h,036h,030h	; 63ad
	defb 030h,036h,040h	; 63b0
	defb 070h,036h,060h	; 63b3
	defb 050h,036h,070h	; 63b6
	defb 020h,036h,080h	; 63b9
	defb 080h,036h,090h	; 63bc
	defb 050h	; 63bf

; ----------------------------------------------------------------------
; DATOS enemigos_63C0: 7 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (22 bytes)
;   0x63c0..0x63d6  (22 bytes)
DATA_enemigos_63C0:
	defb 007h,036h,020h	; 63c0
	defb 070h,036h,040h	; 63c3
	defb 030h,036h,050h	; 63c6
	defb 080h,036h,060h	; 63c9
	defb 050h,036h,070h	; 63cc
	defb 060h,036h,090h	; 63cf
	defb 030h,036h,090h	; 63d2
	defb 080h	; 63d5

; ----------------------------------------------------------------------
; DATOS enemigos_63D6: 6 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (19 bytes)
;   0x63d6..0x63e9  (19 bytes)
DATA_enemigos_63D6:
	defb 006h,037h,040h	; 63d6
	defb 040h,037h,040h	; 63d9
	defb 090h,037h,060h	; 63dc
	defb 070h,037h,080h	; 63df
	defb 050h,037h,080h	; 63e2
	defb 090h,037h,090h	; 63e5
	defb 020h	; 63e8

; ----------------------------------------------------------------------
; DATOS enemigos_63E9: 6 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (19 bytes)
;   0x63e9..0x63fc  (19 bytes)
DATA_enemigos_63E9:
	defb 006h,036h,030h	; 63e9
	defb 020h,036h,020h	; 63ec
	defb 050h,036h,050h	; 63ef
	defb 040h,036h,050h	; 63f2
	defb 070h,036h,070h	; 63f5
	defb 060h,036h,080h	; 63f8
	defb 030h	; 63fb

; ----------------------------------------------------------------------
; DATOS enemigos_63FC: 10 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (31 bytes)
;   0x63fc..0x641b  (31 bytes)
DATA_enemigos_63FC:
	defb 00ah,020h,020h	; 63fc
	defb 060h,020h,030h	; 63ff
	defb 030h,020h,030h	; 6402
	defb 080h,020h,060h	; 6405
	defb 030h,020h,060h	; 6408
	defb 050h,020h,050h	; 640b
	defb 090h,020h,070h	; 640e
	defb 090h,020h,080h	; 6411
	defb 020h,020h,090h	; 6414
	defb 050h,020h,090h	; 6417
	defb 080h	; 641a

; ----------------------------------------------------------------------
; DATOS enemigos_641B: 1 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (4 bytes)
;   0x641b..0x641f  (4 bytes)
DATA_enemigos_641B:
	defb 001h,038h,068h	; 641b
	defb 048h	; 641e

; ----------------------------------------------------------------------
; DATOS enemigos_641F: 6 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (19 bytes)
;   0x641f..0x6432  (19 bytes)
DATA_enemigos_641F:
	defb 006h,010h,030h	; 641f
	defb 020h,010h,030h	; 6422
	defb 090h,010h,050h	; 6425
	defb 020h,010h,050h	; 6428
	defb 090h,010h,070h	; 642b
	defb 020h,010h,070h	; 642e
	defb 090h	; 6431

; ----------------------------------------------------------------------
; DATOS enemigos_6432: 6 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (19 bytes)
;   0x6432..0x6445  (19 bytes)
DATA_enemigos_6432:
	defb 006h,021h,078h	; 6432
	defb 058h,022h,080h	; 6435
	defb 030h,022h,080h	; 6438
	defb 080h,0a1h,038h	; 643b
	defb 058h,0a2h,030h	; 643e
	defb 030h,0a2h,030h	; 6441
	defb 080h	; 6444

; ----------------------------------------------------------------------
; DATOS enemigos_6445: 5 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (16 bytes)
;   0x6445..0x6455  (16 bytes)
DATA_enemigos_6445:
	defb 005h,022h,020h	; 6445
	defb 030h,022h,030h	; 6448
	defb 070h,022h,050h	; 644b
	defb 030h,022h,080h	; 644e
	defb 030h,0a1h,088h	; 6451
	defb 088h	; 6454

; ----------------------------------------------------------------------
; DATOS enemigos_6455: 7 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (22 bytes)
;   0x6455..0x646b  (22 bytes)
DATA_enemigos_6455:
	defb 007h,042h,030h	; 6455
	defb 078h,022h,020h	; 6458
	defb 020h,022h,050h	; 645b
	defb 030h,022h,060h	; 645e
	defb 090h,022h,070h	; 6461
	defb 080h,022h,090h	; 6464
	defb 020h,022h,090h	; 6467
	defb 060h	; 646a

; ----------------------------------------------------------------------
; DATOS enemigos_646B: 2 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (7 bytes)
;   0x646b..0x6472  (7 bytes)
DATA_enemigos_646B:
	defb 002h,021h,048h	; 646b
	defb 038h,0a3h,058h	; 646e
	defb 088h	; 6471

; ----------------------------------------------------------------------
; DATOS enemigos_6472: 10 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (31 bytes)
;   0x6472..0x6491  (31 bytes)
DATA_enemigos_6472:
	defb 00ah,022h,040h	; 6472
	defb 020h,022h,080h	; 6475
	defb 030h,022h,020h	; 6478
	defb 040h,022h,060h	; 647b
	defb 040h,022h,090h	; 647e
	defb 050h,022h,030h	; 6481
	defb 070h,022h,080h	; 6484
	defb 070h,022h,060h	; 6487
	defb 080h,022h,040h	; 648a
	defb 090h,022h,090h	; 648d
	defb 090h	; 6490

; ----------------------------------------------------------------------
; DATOS enemigos_6491: 10 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (31 bytes)
;   0x6491..0x64b0  (31 bytes)
DATA_enemigos_6491:
	defb 00ah,022h,020h	; 6491
	defb 080h,022h,030h	; 6494
	defb 050h,022h,050h	; 6497
	defb 030h,022h,050h	; 649a
	defb 090h,022h,060h	; 649d
	defb 050h,022h,060h	; 64a0
	defb 070h,022h,070h	; 64a3
	defb 020h,022h,080h	; 64a6
	defb 030h,022h,080h	; 64a9
	defb 070h,022h,090h	; 64ac
	defb 040h	; 64af

; ----------------------------------------------------------------------
; DATOS enemigos_64B0: 1 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (4 bytes)
;   0x64b0..0x64b4  (4 bytes)
DATA_enemigos_64B0:
	defb 001h,02bh,038h	; 64b0
	defb 058h	; 64b3

; ----------------------------------------------------------------------
; DATOS enemigos_64B4: 1 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (4 bytes)
;   0x64b4..0x64b8  (4 bytes)
DATA_enemigos_64B4:
	defb 001h,039h,068h	; 64b4
	defb 058h	; 64b7

; ----------------------------------------------------------------------
; DATOS enemigos_64B8: 6 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (19 bytes)
;   0x64b8..0x64cb  (19 bytes)
DATA_enemigos_64B8:
	defb 006h,010h,010h	; 64b8
	defb 020h,010h,010h	; 64bb
	defb 050h,010h,010h	; 64be
	defb 080h,010h,0a0h	; 64c1
	defb 030h,010h,0a0h	; 64c4
	defb 070h,010h,0a0h	; 64c7
	defb 090h	; 64ca

; ----------------------------------------------------------------------
; DATOS enemigos_64CB: 5 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (16 bytes)
;   0x64cb..0x64db  (16 bytes)
DATA_enemigos_64CB:
	defb 005h,03bh,020h	; 64cb
	defb 060h,03bh,050h	; 64ce
	defb 090h,03bh,050h	; 64d1
	defb 030h,03bh,070h	; 64d4
	defb 050h,03bh,080h	; 64d7
	defb 070h	; 64da

; ----------------------------------------------------------------------
; DATOS enemigos_64DB: 4 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (13 bytes)
;   0x64db..0x64e8  (13 bytes)
DATA_enemigos_64DB:
	defb 004h,03bh,030h	; 64db
	defb 090h,03bh,050h	; 64de
	defb 040h,03bh,080h	; 64e1
	defb 020h,03bh,090h	; 64e4
	defb 080h	; 64e7

; ----------------------------------------------------------------------
; DATOS enemigos_64E8: 5 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (16 bytes)
;   0x64e8..0x64f8  (16 bytes)
DATA_enemigos_64E8:
	defb 005h,03bh,030h	; 64e8
	defb 030h,03bh,040h	; 64eb
	defb 090h,03bh,060h	; 64ee
	defb 060h,03bh,080h	; 64f1
	defb 040h,03bh,090h	; 64f4
	defb 090h	; 64f7

; ----------------------------------------------------------------------
; DATOS enemigos_64F8: 5 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (16 bytes)
;   0x64f8..0x6508  (16 bytes)
DATA_enemigos_64F8:
	defb 005h,03bh,020h	; 64f8
	defb 040h,03bh,030h	; 64fb
	defb 090h,03bh,060h	; 64fe
	defb 060h,03bh,060h	; 6501
	defb 020h,03bh,090h	; 6504
	defb 050h	; 6507

; ----------------------------------------------------------------------
; DATOS enemigos_6508: 6 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (19 bytes)
;   0x6508..0x651b  (19 bytes)
DATA_enemigos_6508:
	defb 006h,03ah,020h	; 6508
	defb 020h,03ah,020h	; 650b
	defb 090h,03ah,050h	; 650e
	defb 090h,03ah,060h	; 6511
	defb 020h,03ah,090h	; 6514
	defb 020h,03ah,090h	; 6517
	defb 090h	; 651a

; ----------------------------------------------------------------------
; DATOS enemigos_651B: 6 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (19 bytes)
;   0x651b..0x652e  (19 bytes)
DATA_enemigos_651B:
	defb 006h,03ah,020h	; 651b
	defb 020h,03ah,020h	; 651e
	defb 090h,03ah,040h	; 6521
	defb 040h,03ah,070h	; 6524
	defb 070h,03ah,090h	; 6527
	defb 020h,03ah,090h	; 652a
	defb 090h	; 652d

; ----------------------------------------------------------------------
; DATOS enemigos_652E: 6 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (19 bytes)
;   0x652e..0x6541  (19 bytes)
DATA_enemigos_652E:
	defb 006h,025h,020h	; 652e
	defb 030h,025h,030h	; 6531
	defb 050h,025h,040h	; 6534
	defb 078h,025h,060h	; 6537
	defb 040h,025h,070h	; 653a
	defb 070h,025h,080h	; 653d
	defb 030h	; 6540

; ----------------------------------------------------------------------
; DATOS enemigos_6541: 6 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (19 bytes)
;   0x6541..0x6554  (19 bytes)
DATA_enemigos_6541:
	defb 006h,025h,030h	; 6541
	defb 030h,025h,040h	; 6544
	defb 060h,025h,060h	; 6547
	defb 080h,025h,080h	; 654a
	defb 040h,025h,080h	; 654d
	defb 090h,025h,090h	; 6550
	defb 060h	; 6553

; ----------------------------------------------------------------------
; DATOS enemigos_6554: 6 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (19 bytes)
;   0x6554..0x6567  (19 bytes)
DATA_enemigos_6554:
	defb 006h,025h,060h	; 6554
	defb 020h,025h,040h	; 6557
	defb 030h,025h,080h	; 655a
	defb 040h,025h,030h	; 655d
	defb 060h,025h,050h	; 6560
	defb 070h,025h,070h	; 6563
	defb 060h	; 6566

; ----------------------------------------------------------------------
; DATOS enemigos_6567: 1 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (4 bytes)
;   0x6567..0x656b  (4 bytes)
DATA_enemigos_6567:
	defb 001h,026h,038h	; 6567
	defb 058h	; 656a

; ----------------------------------------------------------------------
; DATOS enemigos_656B: 5 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (16 bytes)
;   0x656b..0x657b  (16 bytes)
DATA_enemigos_656B:
	defb 005h,030h,040h	; 656b
	defb 030h,030h,040h	; 656e
	defb 080h,030h,070h	; 6571
	defb 060h,030h,090h	; 6574
	defb 030h,030h,090h	; 6577
	defb 090h	; 657a

; ----------------------------------------------------------------------
; DATOS enemigos_657B: 3 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (10 bytes)
;   0x657b..0x6585  (10 bytes)
DATA_enemigos_657B:
	defb 003h,041h,068h	; 657b
	defb 028h,041h,088h	; 657e
	defb 088h,040h,0efh	; 6581
	defb 000h	; 6584

; ----------------------------------------------------------------------
; DATOS enemigos_6585: 2 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (7 bytes)
;   0x6585..0x658c  (7 bytes)
DATA_enemigos_6585:
	defb 002h,03fh,058h	; 6585
	defb 058h,040h,0efh	; 6588
	defb 000h	; 658b

; ----------------------------------------------------------------------
; DATOS enemigos_658C: 2 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (7 bytes)
;   0x658c..0x6593  (7 bytes)
DATA_enemigos_658C:
	defb 002h,03fh,058h	; 658c
	defb 058h,040h,0efh	; 658f
	defb 000h	; 6592

; ----------------------------------------------------------------------
; DATOS enemigos_6593: 3 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (10 bytes)
;   0x6593..0x659d  (10 bytes)
DATA_enemigos_6593:
	defb 003h,041h,040h	; 6593
	defb 088h,041h,080h	; 6596
	defb 028h,040h,0efh	; 6599
	defb 000h	; 659c

; ----------------------------------------------------------------------
; DATOS enemigos_659D: 2 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (7 bytes)
;   0x659d..0x65a4  (7 bytes)
DATA_enemigos_659D:
	defb 002h,027h,058h	; 659d
	defb 058h,03fh,058h	; 65a0
	defb 058h	; 65a3

; ----------------------------------------------------------------------
; DATOS enemigos_65A4: 4 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (13 bytes)
;   0x65a4..0x65b1  (13 bytes)
DATA_enemigos_65A4:
	defb 004h,03ch,040h	; 65a4
	defb 030h,03ch,040h	; 65a7
	defb 080h,03ch,080h	; 65aa
	defb 030h,03ch,080h	; 65ad
	defb 080h	; 65b0

; ----------------------------------------------------------------------
; DATOS enemigos_65B1: 4 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (13 bytes)
;   0x65b1..0x65be  (13 bytes)
DATA_enemigos_65B1:
	defb 004h,03ch,050h	; 65b1
	defb 030h,03ch,070h	; 65b4
	defb 030h,03ch,050h	; 65b7
	defb 070h,03ch,070h	; 65ba
	defb 070h	; 65bd

; ----------------------------------------------------------------------
; DATOS enemigos_65BE: 4 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (13 bytes)
;   0x65be..0x65cb  (13 bytes)
DATA_enemigos_65BE:
	defb 004h,03ch,090h	; 65be
	defb 050h,03ch,040h	; 65c1
	defb 030h,03ch,040h	; 65c4
	defb 080h,03ch,050h	; 65c7
	defb 050h	; 65ca

; ----------------------------------------------------------------------
; DATOS enemigos_65CB: 4 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (13 bytes)
;   0x65cb..0x65d8  (13 bytes)
DATA_enemigos_65CB:
	defb 004h,03ch,030h	; 65cb
	defb 030h,03ch,060h	; 65ce
	defb 020h,03ch,060h	; 65d1
	defb 050h,03ch,090h	; 65d4
	defb 040h	; 65d7

; ----------------------------------------------------------------------
; DATOS enemigos_65D8: 2 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (7 bytes)
;   0x65d8..0x65df  (7 bytes)
DATA_enemigos_65D8:
	defb 002h,027h,048h	; 65d8
	defb 058h,03fh,058h	; 65db
	defb 058h	; 65de

; ----------------------------------------------------------------------
; DATOS enemigos_65DF: 4 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (13 bytes)
;   0x65df..0x65ec  (13 bytes)
DATA_enemigos_65DF:
	defb 004h,03fh,058h	; 65df
	defb 058h,03dh,048h	; 65e2
	defb 068h,03dh,068h	; 65e5
	defb 028h,03dh,068h	; 65e8
	defb 068h	; 65eb

; ----------------------------------------------------------------------
; DATOS enemigos_65EC: 4 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (13 bytes)
;   0x65ec..0x65f9  (13 bytes)
DATA_enemigos_65EC:
	defb 004h,03fh,058h	; 65ec
	defb 058h,03dh,030h	; 65ef
	defb 058h,03dh,038h	; 65f2
	defb 030h,03dh,050h	; 65f5
	defb 078h	; 65f8

; ----------------------------------------------------------------------
; DATOS enemigos_65F9: 4 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (13 bytes)
;   0x65f9..0x6606  (13 bytes)
DATA_enemigos_65F9:
	defb 004h,03fh,058h	; 65f9
	defb 058h,03dh,038h	; 65fc
	defb 048h,03dh,058h	; 65ff
	defb 058h,03dh,068h	; 6602
	defb 028h	; 6605

; ----------------------------------------------------------------------
; DATOS enemigos_6606: 4 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (13 bytes)
;   0x6606..0x6613  (13 bytes)
DATA_enemigos_6606:
	defb 004h,03fh,058h	; 6606
	defb 058h,03dh,078h	; 6609
	defb 028h,03dh,038h	; 660c
	defb 058h,03dh,088h	; 660f
	defb 088h	; 6612

; ----------------------------------------------------------------------
; DATOS enemigos_6613: 4 enemigos: [tipo][x][y] (bit 7 del tipo: solo en el
;   plano alterno); lo leen p00:59A9 (13 bytes)
;   0x6613..0x6620  (13 bytes)
DATA_enemigos_6613:
	defb 004h,03fh,058h	; 6613
	defb 058h,03dh,048h	; 6616
	defb 088h,03dh,028h	; 6619
	defb 050h,03dh,088h	; 661c
	defb 038h	; 661f

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6620..0x7d9b  (6011 bytes)
DATA_6620:
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 6620  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,003h,000h,000h,000h,000h,003h	; 6630  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 6640  ................
	defb 000h,000h,000h,000h,000h,000h,000h,002h,000h,002h,002h,000h,002h,000h,000h,000h	; 6650  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 6660  ................
	defb 000h,000h,000h,000h,000h,002h,002h,000h,002h,000h,000h,000h,000h,000h,000h,000h	; 6670  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,001h,001h,001h,001h	; 6680  ................
	defb 000h,000h,000h,000h,000h,000h,000h,001h,000h,000h,000h,000h,001h,000h,000h,000h	; 6690  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,001h,000h,001h,000h,001h,001h	; 66a0  ................
	defb 000h,000h,001h,001h,001h,001h,001h,001h,001h,001h,001h,001h,001h,001h,001h,001h	; 66b0  ................
	defb 001h,001h,001h,000h,001h,000h,001h,001h,000h,000h,001h,000h,001h,000h,001h,001h	; 66c0  ................
	defb 000h,000h,0eah,066h,0d1h,067h,0b4h,068h,08dh,069h,0e3h,076h,0c7h,077h,0a8h,078h	; 66d0  ...f.g.h.i.v.w.x
	defb 07eh,079h,036h,07ah,00fh,07bh,0d3h,07bh,098h,07ch,007h,000h,002h,001h,097h,000h	; 66e0  ~y6z.{.{.|......
	defb 001h,00fh,015h,02fh,03eh,028h,003h,00eh,01eh,033h,04fh,05fh,09eh,07eh,0fdh,0b7h	; 66f0  .../>(...3O_.~..
	defb 00fh,08eh,0dch,0deh,0ffh,073h,00ch,000h,0a4h,00eh,01eh,01fh,01fh,000h,001h,00dh	; 6700  .....s..........
	defb 01dh,031h,021h,061h,0e1h,072h,07fh,0fch,079h,0bbh,0f9h,02ch,0cfh,0c0h,070h,078h	; 6710  .1!a.r..y..,..px
	defb 0cch,0f2h,0f8h,079h,07eh,0bfh,0edh,0f0h,071h,03bh,07bh,0ffh,0ceh,007h,000h,002h	; 6720  ...y~...q;{.....
	defb 080h,097h,000h,0e0h,090h,0a8h,0f4h,024h,002h,000h,080h,0b0h,0b8h,08ch,086h,086h	; 6730  .......$........
	defb 087h,04eh,0feh,03fh,09eh,0ddh,09fh,034h,0f3h,00bh,000h,0a6h,060h,070h,078h,0f8h	; 6740  .N.?...4....`px.
	defb 0fch,050h,05bh,07bh,07fh,05bh,047h,023h,02eh,01dh,01eh,010h,01bh,00fh,008h,00fh	; 6750  .P[{.[G#........
	defb 000h,0ffh,07ch,03fh,09eh,041h,0beh,0e4h,0ffh,07fh,01fh,08fh,030h,010h,0a0h,0c0h	; 6760  ..|?.A......0...
	defb 000h,02fh,004h,03ch,0c8h,038h,01eh,01fh,00eh,001h,00fh,007h,000h,007h,000h,000h	; 6770  ./.<.8..........
	defb 0f0h,0ffh,0ffh,07fh,0beh,041h,01fh,000h,080h,0e0h,0f0h,0c0h,0e0h,0c0h,000h,000h	; 6780  .....A..........
	defb 0ffh,09eh,0fch,0f9h,0c2h,0bdh,097h,0ffh,0feh,0f8h,0e4h,003h,002h,001h,001h,000h	; 6790  ................
	defb 02ah,0ddh,0ddh,0edh,0aah,064h,068h,0f0h,028h,078h,0b4h,042h,002h,01dh,07fh,0feh	; 67a0  *....dh.(x.B....
	defb 00fh,07fh,0ffh,07eh,03dh,042h,078h,000h,001h,007h,003h,000h,001h,003h,000h,090h	; 67b0  ...~=Bx.........
	defb 0dch,03eh,03eh,01eh,07ch,0f8h,0f0h,000h,0f0h,0f0h,078h,0bch,0fch,0feh,0feh,000h	; 67c0  .>>.|.....x.....
	defb 000h,007h,000h,002h,001h,097h,000h,007h,009h,014h,02eh,024h,040h,003h,00fh,01fh	; 67d0  ...........$@...
	defb 033h,060h,040h,0c3h,0cch,09fh,0ffh,0ffh,09ch,07fh,0feh,0ffh,07fh,00bh,000h,091h	; 67e0  3`@.............
	defb 006h,00fh,01fh,01fh,03fh,000h,001h,00fh,01fh,03fh,03fh,07fh,0ffh,060h,000h,000h	; 67f0  ....?....??..`..
	defb 07fh,004h,0ffh,090h,0c0h,0f0h,0f8h,0cch,006h,002h,0c3h,033h,0f9h,0ffh,0ffh,039h	; 6800  ...........3...9
	defb 07eh,0ffh,0feh,0feh,007h,000h,002h,080h,093h,000h,080h,0f0h,028h,074h,07ch,014h	; 6810  ~...........(t|.
	defb 000h,080h,0f0h,0f8h,0fch,0fch,0feh,0ffh,006h,000h,000h,0feh,004h,0ffh,00ch,000h	; 6820  ................
	defb 081h,0f0h,003h,0f8h,0a8h,054h,0bah,0bbh,0b7h,051h,023h,014h,00bh,016h,014h,018h	; 6830  .....T...Q#.....
	defb 019h,011h,008h,013h,01ch,0ffh,07eh,03fh,01eh,080h,0f8h,0ffh,0ffh,03fh,01fh,0cfh	; 6840  ......~?.....?..
	defb 0f0h,010h,0d0h,020h,040h,03bh,07dh,07ch,078h,03eh,01ch,00bh,007h,003h,00fh,085h	; 6850  ... @;}|x>......
	defb 00eh,00fh,007h,00ch,003h,004h,0ffh,0ach,07fh,007h,000h,000h,0c0h,0e0h,030h,0c0h	; 6860  ..............0.
	defb 0e0h,020h,0c0h,080h,0ffh,0feh,0fch,078h,001h,00fh,0ffh,0ffh,0fch,0f8h,0e4h,003h	; 6870  . .....x........
	defb 002h,001h,000h,000h,00ah,05ah,05eh,0feh,0dah,0c2h,0e4h,074h,03ch,008h,024h,066h	; 6880  .....Z^....t<.$f
	defb 011h,001h,0feh,000h,004h,0ffh,089h,0feh,0f0h,000h,000h,003h,007h,003h,000h,001h	; 6890  ................
	defb 003h,000h,083h,0f4h,0bch,0bch,003h,03ch,08ah,058h,0c8h,0e0h,0f0h,0f8h,0f8h,0feh	; 68a0  .......<.X......
	defb 0feh,000h,000h,000h,006h,000h,003h,001h,002h,003h,095h,001h,000h,000h,001h,001h	; 68b0  ................
	defb 003h,00fh,01ch,032h,05dh,0fdh,0fch,0f9h,03eh,09ch,0cah,0e6h,0efh,0efh,06eh,0deh	; 68c0  ...2]...>.....n.
	defb 009h,000h,081h,001h,007h,000h,09fh,003h,00fh,01fh,023h,042h,083h,007h,0cfh,0ffh	; 68d0  ..........#B....
	defb 07dh,03bh,036h,03ch,0d5h,021h,0c0h,0f0h,018h,00ch,086h,0ceh,0d1h,0cfh,09ch,023h	; 68e0  };6<.!.........#
	defb 04eh,0feh,08fh,037h,07bh,031h,007h,000h,002h,080h,004h,000h,093h,080h,0c0h,060h	; 68f0  N..7{1.........`
	defb 000h,0c0h,0f0h,0f8h,07ch,0bch,0beh,0bfh,07fh,0feh,0bch,000h,070h,0fbh,0fdh,0feh	; 6900  ....|.......p...
	defb 00eh,000h,082h,080h,0c0h,006h,000h,09ah,001h,003h,006h,00fh,00ah,004h,003h,004h	; 6910  ................
	defb 00fh,00fh,078h,0b3h,09fh,07bh,05bh,068h,0b4h,09fh,0cfh,043h,007h,018h,098h,048h	; 6920  ..x..{[h...C...H
	defb 090h,0e0h,007h,000h,0aeh,001h,003h,007h,007h,003h,000h,003h,007h,000h,03fh,07ch	; 6930  ..............?|
	defb 073h,007h,037h,017h,04bh,0e0h,0f0h,0fch,0f8h,0e0h,070h,0f0h,0e0h,000h,0c4h,09eh	; 6940  s.7.K.....p.....
	defb 0beh,09dh,07ah,03ch,0c3h,0ffh,0ffh,0fch,0f8h,004h,002h,001h,001h,000h,0d0h,090h	; 6950  ..z<............
	defb 090h,020h,020h,003h,0c0h,095h,060h,0f0h,038h,014h,006h,08ah,0f4h,0f8h,03fh,07fh	; 6960  .  ...`.8.....?.
	defb 07fh,0feh,0fdh,0c3h,03ch,000h,000h,003h,007h,003h,001h,003h,000h,003h,060h,002h	; 6970  ....<.........`.
	defb 0c0h,003h,000h,088h,0c0h,0e0h,0f0h,0f8h,0fch,07ch,0f8h,000h,000h,006h,000h,003h	; 6980  .........|......
	defb 001h,002h,003h,095h,001h,000h,000h,001h,001h,003h,00fh,01ch,032h,05dh,0fdh,0fch	; 6990  ............2]..
	defb 0f9h,03eh,09ch,0cah,0e6h,0efh,0efh,06eh,0deh,009h,000h,081h,001h,007h,000h,09fh	; 69a0  .>.....n........
	defb 003h,00fh,01fh,023h,042h,083h,007h,0cfh,0ffh,07dh,03bh,036h,03ch,0d5h,021h,0c0h	; 69b0  ...#B....};6<.!.
	defb 0f0h,018h,00ch,086h,0ceh,0d1h,0cfh,09ch,023h,04eh,0feh,08fh,037h,07bh,031h,007h	; 69c0  ........#N..7{1.
	defb 000h,002h,080h,004h,000h,093h,080h,0c0h,060h,000h,0c0h,0f0h,0f8h,07ch,0bch,0beh	; 69d0  ........`....|..
	defb 0bfh,07fh,0feh,0bch,000h,070h,0fbh,0fdh,0feh,00eh,000h,085h,080h,0c0h,000h,001h	; 69e0  .....p..........
	defb 001h,00dh,000h,090h,0f1h,067h,03fh,0f7h,0b6h,050h,029h,03fh,039h,078h,078h,031h	; 69f0  .....g?..P)?9xx1
	defb 01ch,02dh,059h,062h,010h,000h,0a5h,07eh,0f8h,0e6h,00fh,06fh,02fh,016h,000h,01eh	; 6a00  .-Yb...~...o/...
	defb 03fh,03fh,01fh,00fh,01eh,03eh,03ch,089h,03dh,07dh,03ah,0f4h,079h,087h,0ffh,0ffh	; 6a10  ??...><.=}:.y...
	defb 07ah,07eh,0c9h,0c7h,069h,056h,048h,0a0h,020h,020h,040h,040h,003h,080h,008h,000h	; 6a20  z~..iVH.  @@....
	defb 090h,07eh,0feh,0feh,0fdh,0fbh,086h,078h,000h,000h,084h,08ch,03eh,03eh,01eh,038h	; 6a30  .~.....x....>>.8
	defb 030h,003h,0c0h,002h,080h,00bh,000h,000h,009h,000h,097h,001h,002h,006h,006h,004h	; 6a40  0...............
	defb 002h,002h,000h,000h,001h,006h,005h,00fh,017h,06eh,08fh,05dh,0d6h,0f7h,073h,07bh	; 6a50  .........n.]..s{
	defb 03fh,00dh,00ah,000h,081h,001h,003h,003h,002h,001h,003h,000h,09dh,001h,003h,002h	; 6a60  ?...............
	defb 009h,013h,073h,0e3h,02bh,089h,0cch,0c4h,0e0h,0f6h,000h,000h,0c0h,060h,090h,0e8h	; 6a70  ..s.+........`..
	defb 0f6h,0f5h,0bah,06ch,065h,067h,0e7h,0efh,0feh,0d8h,008h,000h,088h,080h,040h,0a0h	; 6a80  ...leg........@.
	defb 0b0h,010h,010h,020h,020h,003h,000h,08dh,0c0h,0e0h,030h,088h,0ceh,0c7h,0d3h,0dah	; 6a90  ...  .....0.....
	defb 098h,019h,011h,003h,037h,009h,000h,082h,080h,040h,003h,0e0h,002h,0c0h,002h,001h	; 6aa0  ....7....@......
	defb 004h,000h,002h,001h,098h,002h,006h,007h,00ah,01ch,03eh,040h,07fh,016h,02eh,0dfh	; 6ab0  ..........>@....
	defb 0beh,0f9h,0ffh,07fh,0bdh,0bbh,0ffh,03dh,012h,0a1h,040h,040h,080h,008h,000h,08bh	; 6ac0  .......=..@@....
	defb 001h,003h,000h,007h,00fh,01fh,03fh,000h,0efh,0dfh,03fh,003h,07fh,002h,0ffh,09ah	; 6ad0  ......?...?.....
	defb 0dfh,00bh,0c3h,0e1h,040h,080h,080h,000h,034h,03ah,07dh,0beh,0cfh,0ffh,0feh,0ffh	; 6ae0  ....@...4:}.....
	defb 0ffh,06fh,0bch,078h,0c5h,082h,002h,001h,040h,040h,003h,080h,08eh,040h,0a0h,0e0h	; 6af0  .o.x....@@...@..
	defb 0d0h,038h,0b0h,050h,038h,07ch,002h,0feh,0fbh,0fdh,0feh,005h,0ffh,08ah,0feh,0fch	; 6b00  .8.P8|..........
	defb 0f3h,0c7h,082h,001h,001h,000h,080h,080h,003h,000h,08bh,080h,0c0h,040h,020h,0d0h	; 6b10  .............@ .
	defb 0c0h,0e0h,0f0h,0f8h,0fch,000h,000h,010h,000h,090h,003h,005h,007h,005h,006h,003h	; 6b20  ................
	defb 002h,003h,007h,00fh,01fh,015h,030h,030h,05ah,0cdh,011h,000h,003h,003h,003h,001h	; 6b30  ......00Z.......
	defb 002h,000h,097h,002h,006h,00eh,00fh,00fh,025h,032h,0c0h,060h,0e0h,020h,0a0h,0c0h	; 6b40  ........%2.`. ..
	defb 040h,0c0h,0f0h,0f8h,0fch,0d4h,006h,006h,02dh,0dah,00fh,000h,083h,080h,000h,080h	; 6b50  @.......-.......
	defb 003h,0c0h,002h,080h,002h,000h,087h,020h,030h,038h,0f8h,0f8h,0d2h,025h,010h,000h	; 6b60  ....... 08...%..
	defb 002h,001h,003h,002h,003h,001h,09ah,002h,007h,007h,008h,01eh,03fh,05fh,07fh,030h	; 6b70  ............?_.0
	defb 022h,04dh,08bh,0dfh,0ffh,06fh,0afh,0afh,0f6h,0bfh,013h,0a1h,040h,040h,080h,000h	; 6b80  "M...o......@@..
	defb 000h,003h,001h,003h,000h,08bh,001h,002h,000h,007h,00fh,011h,020h,000h,0cfh,0dfh	; 6b90  ............ ...
	defb 0bfh,003h,07fh,0adh,0ffh,0f7h,053h,00bh,0c0h,0e0h,040h,080h,080h,000h,004h,0e2h	; 6ba0  ......S...@.....
	defb 0fdh,0fah,0fdh,07fh,0feh,0dfh,0f3h,0e7h,0ech,078h,0c5h,082h,002h,001h,040h,040h	; 6bb0  .........x....@@
	defb 0a0h,0a0h,0e0h,0c0h,040h,0e0h,0d0h,038h,0b0h,010h,078h,0fch,0fah,0feh,0fbh,0fdh	; 6bc0  ....@..8..x.....
	defb 0feh,005h,0ffh,098h,0feh,0d8h,093h,087h,002h,001h,001h,000h,080h,080h,040h,040h	; 6bd0  ..............@@
	defb 000h,080h,080h,040h,020h,0d0h,0c0h,0e0h,0f0h,088h,004h,000h,000h,087h,038h,07eh	; 6be0  ...@ .........8~
	defb 0cfh,07ah,035h,00eh,001h,00bh,000h,094h,080h,0f8h,024h,06bh,0dfh,061h,03ah,07ah	; 6bf0  .z5.......$k.a:z
	defb 06dh,06bh,07bh,031h,072h,0b0h,000h,038h,07eh,03fh,00fh,001h,00dh,000h,08dh,080h	; 6c00  mk{1r..8~?......
	defb 0d8h,0bch,03ch,01eh,007h,007h,013h,017h,007h,00fh,00fh,06fh,005h,000h,002h,0f0h	; 6c10  ..<........o....
	defb 089h,060h,0b0h,0c8h,074h,0dch,0cch,078h,07ch,0cch,017h,000h,089h,080h,060h,030h	; 6c20  .`..t..x|.....`0
	defb 088h,0a0h,0b8h,080h,098h,030h,011h,000h,004h,001h,09bh,002h,005h,007h,00bh,01ch	; 6c30  .....0..........
	defb 00dh,00ah,01ch,03eh,040h,07fh,0f9h,06fh,0f7h,07ch,03eh,0ffh,027h,0c7h,0e8h,0f5h	; 6c40  ...>@..o.|>.'...
	defb 03bh,01dh,0a3h,040h,040h,080h,005h,000h,08eh,001h,003h,002h,004h,00bh,003h,007h	; 6c50  ;..@@...........
	defb 00fh,01fh,03fh,000h,066h,0f0h,0f8h,005h,0ffh,098h,05fh,00fh,0c6h,0e2h,040h,080h	; 6c60  ..?.f....._...@.
	defb 080h,000h,0fch,0feh,07eh,0dfh,0a3h,0ffh,0ffh,0f3h,045h,0ffh,0bch,008h,005h,002h	; 6c70  ....~.....E.....
	defb 002h,001h,006h,000h,002h,080h,097h,040h,060h,0e0h,050h,038h,07ch,002h,0feh,000h	; 6c80  .......@`.P8|...
	defb 048h,0fch,0fch,0feh,0feh,0ffh,0ffh,0fbh,010h,003h,007h,002h,001h,001h,009h,000h	; 6c90  H...............
	defb 088h,080h,0c0h,000h,0e0h,0f0h,0f8h,0fch,000h,000h,007h,000h,002h,001h,004h,003h	; 6ca0  ................
	defb 083h,001h,003h,005h,005h,000h,08bh,03fh,0ffh,0f7h,0d3h,080h,011h,078h,0fch,0e7h	; 6cb0  .......?.....x..
	defb 0e1h,09ah,00fh,000h,081h,003h,007h,000h,089h,00ch,03fh,07fh,0eeh,0a7h,003h,018h	; 6cc0  ..........?.....
	defb 03eh,07fh,005h,000h,002h,080h,089h,000h,080h,040h,0a0h,0e0h,060h,0c0h,0e0h,0e0h	; 6cd0  >........@..`...
	defb 009h,000h,087h,006h,00fh,01ch,02bh,057h,03eh,0e8h,009h,000h,086h,080h,040h,000h	; 6ce0  ......+W>.....@.
	defb 0c0h,000h,040h,00bh,000h,0a7h,006h,00fh,01eh,03ch,078h,070h,007h,00bh,00fh,00bh	; 6cf0  ..@......<xp....
	defb 009h,017h,029h,03eh,05fh,0e7h,069h,0c1h,08fh,0c7h,071h,01fh,0c9h,063h,0b1h,0efh	; 6d00  ..)>_.i...q..c..
	defb 0f1h,0f8h,03ch,03fh,042h,0afh,0ddh,0e8h,098h,080h,0c0h,0c0h,003h,004h,007h,090h	; 6d10  ..<?B...........
	defb 00fh,01fh,017h,022h,058h,01eh,03fh,07eh,03fh,00fh,000h,03fh,09fh,0cfh,0f0h,0feh	; 6d20  ..."X.?~?..?....
	defb 004h,0ffh,09ch,078h,030h,010h,000h,000h,080h,000h,0d7h,0cfh,093h,009h,0f9h,077h	; 6d30  ...x0..........w
	defb 0fch,09ch,02ah,0fbh,0e7h,042h,029h,013h,010h,00fh,050h,020h,0c0h,080h,080h,006h	; 6d40  ..*..B)...P ....
	defb 000h,08ah,080h,0c0h,0e0h,010h,0f0h,0a0h,0f6h,0ffh,0f7h,006h,003h,0f8h,08ah,0dch	; 6d50  ................
	defb 086h,018h,03fh,017h,00fh,00fh,000h,0e0h,0c0h,00ah,000h,084h,080h,0c0h,0e0h,000h	; 6d60  ..?.............
	defb 000h,008h,000h,098h,001h,003h,003h,007h,007h,005h,004h,002h,003h,007h,006h,005h	; 6d70  ................
	defb 007h,019h,065h,097h,08fh,01dh,016h,093h,030h,03bh,03fh,09ch,009h,000h,002h,001h	; 6d80  ..e.....0;?.....
	defb 004h,003h,0a1h,001h,000h,001h,003h,003h,001h,006h,01ah,078h,0f2h,0e6h,0e9h,0ech	; 6d90  ...........x....
	defb 0cfh,0c4h,0c1h,0e3h,0c0h,060h,0e0h,0a0h,070h,0cch,0d3h,0f4h,0f8h,0dch,034h,0e4h	; 6da0  .....`..p.....4.
	defb 086h,0eeh,0feh,01ch,007h,000h,099h,080h,0c0h,060h,060h,0f0h,070h,050h,010h,0a0h	; 6db0  .........``.pP..
	defb 000h,080h,0c0h,0c0h,080h,030h,02ch,00fh,027h,033h,0cbh,09bh,0f9h,011h,0c1h,0e3h	; 6dc0  .....0,.'3......
	defb 008h,000h,083h,080h,0c0h,0c0h,004h,0e0h,083h,0c0h,002h,001h,004h,000h,002h,001h	; 6dd0  ................
	defb 099h,002h,006h,007h,00ah,01ch,03eh,040h,07fh,02fh,073h,0bch,0aeh,0f1h,0ffh,05fh	; 6de0  ......>@./s...._
	defb 08dh,0a3h,0ffh,03dh,010h,0a0h,040h,040h,080h,001h,007h,000h,08ah,001h,003h,000h	; 6df0  ...=..@@........
	defb 007h,00fh,01fh,03fh,000h,0d0h,0bch,004h,07fh,002h,0ffh,09ah,0dfh,008h,0c0h,0e0h	; 6e00  ...?............
	defb 040h,080h,080h,000h,0fah,0e7h,01fh,03bh,0c7h,0ffh,0feh,0f7h,0f7h,0efh,0dch,0b8h	; 6e10  @......;........
	defb 0c5h,002h,002h,001h,020h,040h,003h,080h,08dh,040h,0a0h,0e0h,0d0h,038h,0b0h,050h	; 6e20  .... @...@...8.P
	defb 038h,07ch,002h,0feh,005h,01eh,006h,0ffh,08ah,0fah,0f0h,063h,047h,002h,001h,001h	; 6e30  8|.........cG...
	defb 000h,0c0h,080h,003h,000h,08bh,080h,0c0h,040h,020h,0d0h,0c0h,0e0h,0f0h,0f8h,0fch	; 6e40  ........@ ......
	defb 000h,000h,00ah,000h,003h,001h,003h,002h,002h,001h,08eh,007h,00fh,01dh,016h,013h	; 6e50  ................
	defb 030h,07bh,0bfh,05ch,08fh,08bh,014h,0b6h,019h,00dh,000h,003h,001h,003h,000h,09dh	; 6e60  0{.\............
	defb 002h,006h,009h,00ch,00fh,004h,041h,0e3h,0f0h,0f4h,0efh,0cfh,0e7h,0c0h,0c0h,0f0h	; 6e70  ......A.........
	defb 0f8h,0dch,034h,0e4h,086h,0efh,0feh,01dh,0f8h,0e8h,014h,036h,0cch,009h,000h,087h	; 6e80  ..4........6....
	defb 080h,040h,0c0h,0c0h,020h,0a0h,020h,003h,000h,08dh,020h,030h,0c8h,098h,0f8h,010h	; 6e90  .@.. . ... 0....
	defb 0c1h,0e3h,007h,017h,0fbh,0f9h,0f7h,00ah,000h,003h,080h,003h,0c0h,003h,001h,088h	; 6ea0  ................
	defb 002h,006h,007h,00ah,01ch,03eh,040h,07fh,005h,000h,08fh,0cbh,025h,093h,0c7h,0fdh	; 6eb0  .....>@.....%...
	defb 03fh,015h,0a3h,041h,041h,081h,001h,002h,003h,001h,004h,000h,087h,001h,003h,000h	; 6ec0  ?..AA...........
	defb 007h,00fh,01fh,03fh,006h,000h,0abh,0f7h,0fbh,07ch,03eh,00fh,0c6h,0e2h,040h,080h	; 6ed0  ...?.....|>...@.
	defb 080h,000h,000h,001h,001h,000h,000h,0f1h,0d2h,024h,0e3h,0f7h,0fch,0b8h,0e5h,0e2h	; 6ee0  .........$......
	defb 0e2h,061h,070h,0f0h,030h,070h,0e0h,0c0h,040h,0e0h,0d0h,038h,0b0h,050h,038h,07ch	; 6ef0  .ap.0p..@..8.P8|
	defb 002h,0feh,005h,000h,002h,0efh,098h,0dfh,01ch,0b8h,013h,0c7h,082h,0c1h,041h,0c0h	; 6f00  ..............A.
	defb 0c0h,0e0h,0e0h,0c0h,000h,080h,080h,040h,020h,0d0h,0c0h,0e0h,0f0h,0f8h,0fch,006h	; 6f10  .......@ .......
	defb 000h,000h,015h,000h,002h,00fh,089h,006h,00dh,013h,02eh,03bh,033h,01eh,03eh,033h	; 6f20  ...........;3.>3
	defb 017h,000h,0a0h,001h,006h,00ch,011h,005h,01dh,001h,019h,00ch,000h,000h,001h,01fh	; 6f30  ................
	defb 024h,0d6h,0fbh,086h,05ch,05eh,0b6h,0d6h,0deh,08ch,04eh,00dh,01ch,07eh,0f3h,05eh	; 6f40  $...\^....N..~.^
	defb 0ach,070h,080h,00ch,000h,093h,001h,01bh,03dh,03ch,078h,0e0h,0e0h,0c8h,0e8h,0e0h	; 6f50  .p......=<x.....
	defb 0f0h,0f0h,0f6h,000h,01ch,07eh,0fch,0f0h,080h,010h,000h,002h,001h,098h,002h,006h	; 6f60  .....~..........
	defb 007h,00ah,01ch,03eh,040h,07fh,03fh,07fh,07eh,0fbh,0c5h,0ffh,0ffh,0cfh,0a2h,0ffh	; 6f70  ...>@.?.~.......
	defb 03dh,010h,0a0h,040h,040h,080h,008h,000h,0a9h,001h,003h,000h,007h,00fh,01fh,03fh	; 6f80  =..@@..........?
	defb 000h,000h,012h,03fh,03fh,07fh,07fh,0ffh,0ffh,0dfh,008h,0c0h,0e0h,040h,080h,080h	; 6f90  ...??........@..
	defb 000h,09fh,0f6h,0efh,03eh,07ch,0ffh,0e4h,0e3h,017h,0afh,0dch,0b8h,0c5h,002h,002h	; 6fa0  ....>|..........
	defb 001h,000h,004h,080h,08eh,040h,0a0h,0e0h,0d0h,038h,0b0h,050h,038h,07ch,002h,0feh	; 6fb0  .....@...8.P8|..
	defb 066h,00fh,01fh,005h,0ffh,087h,0fah,0f0h,063h,047h,002h,001h,001h,006h,000h,08bh	; 6fc0  f.......cG......
	defb 080h,0c0h,040h,020h,0d0h,0c0h,0e0h,0f0h,0f8h,0fch,000h,000h,009h,000h,087h,060h	; 6fd0  ..@ ...........`
	defb 0f0h,038h,0d4h,0eah,07ch,017h,005h,000h,002h,001h,089h,000h,001h,002h,005h,007h	; 6fe0  .8..|...........
	defb 006h,003h,007h,007h,00ah,000h,086h,060h,0f0h,078h,03ch,01eh,00eh,009h,000h,086h	; 6ff0  .......`.x<.....
	defb 001h,002h,000h,003h,000h,002h,006h,000h,08bh,0fch,0ffh,0efh,0cbh,001h,088h,01eh	; 7000  ................
	defb 03fh,0e7h,087h,059h,007h,000h,002h,080h,004h,0c0h,083h,080h,0c0h,0a0h,007h,000h	; 7010  ?..Y............
	defb 089h,030h,0fch,0feh,077h,0e5h,0c0h,018h,07ch,0feh,00fh,000h,086h,0c0h,00ah,004h	; 7020  .0..w...|.......
	defb 003h,001h,001h,006h,000h,097h,001h,003h,007h,008h,00fh,0ebh,0f3h,0c9h,090h,09fh	; 7030  ................
	defb 0eeh,03fh,039h,054h,0dfh,0e7h,042h,094h,0c8h,008h,0f0h,007h,003h,00ah,000h,089h	; 7040  .?9T..B.........
	defb 001h,003h,007h,000h,005h,06fh,0ffh,0efh,060h,003h,01fh,0adh,03bh,061h,018h,0fch	; 7050  .....o..`...;a..
	defb 0e8h,0f0h,0f0h,000h,093h,0c6h,08dh,0f7h,08fh,01fh,03ch,0fch,042h,0f5h,0bbh,017h	; 7060  ..........<.B...
	defb 019h,001h,003h,003h,0e0h,0d0h,0f0h,0d0h,090h,0e8h,094h,07ch,0fah,0e7h,096h,083h	; 7070  ...........|....
	defb 0f1h,0e3h,08eh,0f8h,0fch,0f9h,0f3h,00fh,07fh,004h,0ffh,088h,01eh,00ch,008h,000h	; 7080  ................
	defb 000h,001h,000h,0c0h,004h,0e0h,08bh,0f0h,0f8h,0e8h,044h,01ah,078h,0fch,07eh,0fch	; 7090  ..........D.x.~.
	defb 0f0h,000h,000h,009h,000h,097h,001h,002h,006h,006h,004h,002h,002h,000h,000h,001h	; 70a0  ................
	defb 006h,005h,02fh,077h,07eh,0dfh,065h,0feh,0efh,07bh,07ch,03fh,008h,00ah,000h,081h	; 70b0  ../w~.e..{|?....
	defb 001h,003h,003h,002h,001h,003h,000h,09dh,001h,003h,002h,009h,023h,033h,0dbh,00bh	; 70c0  ............#3..
	defb 099h,0dch,0cfh,0e0h,0f7h,000h,000h,0c0h,060h,090h,0eah,0f7h,0f7h,0adh,072h,07fh	; 70d0  ........`.....r.
	defb 07fh,0ffh,037h,0feh,0d8h,008h,000h,088h,080h,040h,0a0h,0b0h,010h,010h,020h,020h	; 70e0  ..7......@....
	defb 003h,000h,08dh,0c0h,0e0h,030h,088h,0cah,0d6h,0ddh,0d8h,09ch,03dh,0f9h,003h,037h	; 70f0  .....0......=..7
	defb 009h,000h,082h,080h,040h,003h,0e0h,002h,0c0h,002h,001h,004h,000h,085h,001h,005h	; 7100  ....@...........
	defb 002h,006h,017h,005h,000h,08fh,013h,004h,080h,080h,047h,0fch,06bh,0bfh,0bbh,0ffh	; 7110  ..........G.k...
	defb 03dh,082h,00dh,000h,003h,007h,000h,087h,006h,004h,035h,003h,010h,000h,002h,003h	; 7120  =.........5.....
	defb 000h,0abh,0efh,0ffh,07fh,07fh,038h,007h,0bfh,0ffh,0dfh,00bh,023h,081h,06ch,001h	; 7130  ......8.....#.l.
	defb 003h,002h,064h,098h,080h,000h,0e1h,0dfh,0beh,0dfh,0dfh,06eh,0bch,078h,0d0h,082h	; 7140  ..d........n.x..
	defb 000h,000h,040h,040h,080h,080h,000h,080h,0c0h,0e0h,0d0h,0b8h,094h,005h,000h,081h	; 7150  ..@@............
	defb 0fbh,003h,0ffh,08eh,01eh,0e0h,0dfh,0ffh,0feh,0dch,0f1h,083h,094h,00bh,000h,090h	; 7160  ................
	defb 080h,080h,004h,000h,087h,0a0h,040h,026h,090h,0c4h,000h,0d0h,003h,000h,000h,010h	; 7170  ......@&........
	defb 000h,090h,003h,005h,006h,005h,007h,002h,043h,063h,07eh,05bh,067h,03dh,02bh,03eh	; 7180  ........Cc~[g=+>
	defb 07bh,0ddh,011h,000h,002h,003h,09dh,002h,000h,001h,000h,000h,021h,03fh,01fh,00fh	; 7190  {...........!?..
	defb 01fh,01fh,00ch,023h,0c0h,060h,0a0h,0a0h,020h,0c0h,041h,0d3h,0bfh,0edh,0f3h,0feh	; 71a0  ...#.`.. .A.....
	defb 0fah,03eh,0afh,05ch,00fh,000h,091h,080h,000h,080h,0c0h,040h,0c0h,000h,080h,000h	; 71b0  .>.\.......@....
	defb 0c2h,0feh,0fch,0f8h,0fch,0fch,058h,0e3h,010h,000h,002h,001h,003h,002h,003h,001h	; 71c0  ......X.........
	defb 085h,002h,007h,007h,008h,002h,003h,000h,08fh,022h,000h,040h,087h,0ffh,0dfh,0dch	; 71d0  .........".@....
	defb 0adh,0afh,0f6h,01fh,003h,041h,006h,010h,003h,000h,003h,001h,088h,000h,004h,000h	; 71e0  .....A..........
	defb 009h,002h,000h,03ch,002h,003h,000h,0ach,0dfh,0ffh,0bfh,078h,042h,03fh,07fh,0f7h	; 71f0  ...<.......xB?..
	defb 053h,00bh,060h,010h,0e8h,006h,0b1h,002h,0a0h,002h,081h,0f8h,07fh,05fh,0feh,0dfh	; 7200  S.`.........._..
	defb 0f3h,0e7h,0ech,078h,0c2h,094h,020h,000h,040h,040h,0a0h,0a0h,0e0h,0c0h,040h,0e0h	; 7210  ...x.. .@@....@.
	defb 0d0h,038h,010h,0c0h,004h,000h,0a0h,0ffh,0fdh,07eh,007h,0e8h,0b7h,0dfh,0ffh,0feh	; 7220  .8.......~......
	defb 0d8h,091h,080h,032h,014h,063h,030h,080h,080h,040h,040h,000h,000h,090h,050h,026h	; 7230  ...2.c0..@@...P&
	defb 010h,024h,0c0h,030h,080h,000h,000h,000h,087h,038h,07eh,0cfh,07ah,035h,00eh,001h	; 7240  .$.0.....8~.z5..
	defb 00bh,000h,094h,080h,0f8h,024h,06bh,0dfh,061h,03ah,01ah,02dh,03bh,07bh,071h,072h	; 7250  .....$k.a:.-;{qr
	defb 0d0h,000h,038h,07eh,03fh,00fh,001h,00dh,000h,08dh,080h,0d8h,0bch,03dh,01eh,007h	; 7260  ..8~?........=..
	defb 007h,013h,017h,027h,02fh,00fh,02fh,005h,000h,088h,080h,040h,0a0h,0d0h,0e8h,074h	; 7270  ...'/./....@...t
	defb 0fch,0feh,003h,07eh,016h,000h,08ah,080h,0c0h,060h,070h,0b8h,0a8h,084h,094h,084h	; 7280  ...~.....`p.....
	defb 0a0h,011h,000h,004h,001h,087h,002h,005h,007h,00bh,03fh,000h,002h,004h,000h,08eh	; 7290  ..........?.....
	defb 090h,000h,049h,080h,0eeh,0ffh,07fh,0ffh,0eeh,077h,09fh,007h,002h,010h,007h,000h	; 72a0  ..I......w......
	defb 087h,001h,003h,00ah,004h,02bh,004h,002h,004h,000h,09dh,06fh,0ffh,0f6h,07fh,09fh	; 72b0  .....+.....o....
	defb 0e0h,0eeh,0fdh,05fh,00fh,0c6h,032h,000h,011h,000h,000h,0dch,0f8h,06ch,03ah,043h	; 72c0  ..._..2......l:C
	defb 0c1h,07fh,0f7h,047h,0ffh,0bch,001h,060h,009h,000h,002h,080h,084h,040h,064h,0d0h	; 72d0  ...G...`.....@d.
	defb 080h,004h,000h,08dh,028h,000h,0d0h,0fch,0feh,03eh,0c0h,0fdh,0fbh,010h,044h,0ebh	; 72e0  ....(....>....D.
	defb 060h,00bh,000h,084h,0b0h,0c4h,010h,080h,004h,000h,000h,00ah,000h,002h,001h,002h	; 72f0  `...............
	defb 002h,082h,003h,006h,004h,000h,08ch,020h,07ch,072h,07dh,07eh,0d8h,063h,0f7h,0bbh	; 7300  ....... |r}~.c..
	defb 03fh,0efh,042h,00ch,000h,002h,001h,082h,000h,001h,006h,000h,08ah,02ch,02eh,037h	; 7310  ?.B..........,.7
	defb 03fh,09fh,0cdh,0fch,0e0h,01ch,0bfh,008h,000h,084h,080h,0c0h,020h,0e0h,004h,0f0h	; 7320  ?........... ...
	defb 009h,000h,087h,006h,00fh,01ch,02bh,057h,03eh,0e8h,00ah,000h,085h,0c0h,040h,020h	; 7330  ......+W>.....@
	defb 0a0h,020h,00bh,000h,092h,006h,00fh,01eh,03ch,078h,070h,004h,008h,00ah,00ch,00fh	; 7340  . ......<xp.....
	defb 017h,02bh,03fh,02fh,0fdh,002h,008h,004h,000h,09ch,081h,003h,031h,00fh,073h,0feh	; 7350  .+?/........1.s.
	defb 0fbh,0ffh,0b9h,0dfh,07eh,01ch,009h,040h,000h,000h,003h,007h,007h,003h,004h,00fh	; 7360  ....~..@........
	defb 01fh,017h,011h,0ach,013h,008h,004h,000h,09dh,07fh,0ffh,0cfh,0f0h,0feh,001h,076h	; 7370  ...............v
	defb 0efh,07fh,03ch,019h,0cbh,001h,044h,000h,000h,0d7h,0cfh,093h,009h,0f9h,01fh,0fch	; 7380  ..<...D.........
	defb 0bch,01dh,0fdh,0f3h,006h,080h,003h,000h,08bh,050h,020h,0c0h,080h,080h,000h,000h	; 7390  .........P .....
	defb 040h,002h,090h,044h,005h,000h,08dh,0a0h,0f6h,0ffh,0f7h,006h,0e0h,000h,0e8h,0eeh	; 73a0  @..D............
	defb 043h,010h,0aeh,080h,003h,000h,082h,0e0h,0c0h,005h,000h,084h,040h,0c2h,010h,044h	; 73b0  C...........@..D
	defb 005h,000h,000h,008h,000h,094h,001h,003h,003h,007h,007h,005h,004h,002h,003h,007h	; 73c0  ................
	defb 006h,005h,007h,05bh,0e3h,0f6h,0bch,05ah,045h,0e7h,003h,03fh,081h,0bdh,009h,000h	; 73d0  ...[...ZE..?....
	defb 002h,001h,004h,003h,09dh,001h,000h,001h,003h,003h,001h,004h,01ch,049h,063h,0b7h	; 73e0  .............Ic.
	defb 0beh,09bh,0d0h,0d2h,0d8h,0ceh,0c0h,060h,0e0h,0a0h,070h,0cdh,063h,0b7h,05eh,0edh	; 73f0  .......`..p.c.^.
	defb 071h,0fbh,003h,0feh,081h,0deh,006h,000h,002h,080h,098h,0c0h,060h,060h,0f0h,070h	; 7400  q...........``.p
	defb 050h,010h,0a0h,000h,080h,0c0h,0c0h,080h,030h,09ch,0c9h,0e3h,076h,0beh,0ech,085h	; 7410  P.......0...v...
	defb 0a5h,08dh,039h,009h,000h,002h,0c0h,004h,0e0h,083h,0c0h,002h,001h,004h,000h,002h	; 7420  ..9.............
	defb 001h,084h,00ah,006h,001h,003h,004h,000h,091h,01dh,05fh,0cch,087h,0c8h,0f8h,077h	; 7430  .........._....w
	defb 0edh,0a3h,0ffh,019h,004h,002h,005h,000h,000h,001h,005h,000h,086h,00ah,000h,00dh	; 7440  ................
	defb 021h,008h,003h,004h,000h,0a2h,0e2h,0b0h,03bh,07fh,03fh,047h,0f8h,0ffh,0dfh,008h	; 7450  !.......;.?G....
	defb 066h,00bh,061h,007h,000h,000h,0dch,0fdh,099h,070h,009h,08fh,0feh,0f7h,0f7h,0efh	; 7460  f.a......p......
	defb 0d0h,0a2h,040h,020h,000h,000h,020h,040h,003h,080h,086h,040h,0a0h,0e4h,0d0h,078h	; 7470  ..@ .. @...@...x
	defb 010h,005h,000h,092h,0a3h,006h,06eh,0ffh,0feh,071h,00fh,0bfh,0fah,0f0h,064h,05ah	; 7480  ......n..q....dZ
	defb 00ch,038h,000h,000h,0c0h,080h,003h,000h,087h,080h,0c0h,054h,020h,050h,000h,0c0h	; 7490  .8.........T P..
	defb 004h,000h,000h,00ah,000h,003h,001h,003h,002h,090h,041h,0e3h,0f6h,0bch,0dah,045h	; 74a0  ..........A....E
	defb 067h,03fh,07fh,0bfh,07dh,09dh,08fh,014h,0b7h,018h,00dh,000h,003h,001h,002h,000h	; 74b0  g?..}...........
	defb 09fh,041h,063h,037h,03eh,01bh,010h,012h,058h,0ceh,0e2h,0f0h,0ebh,0cfh,0e7h,0c1h	; 74c0  .Ac7>...X.......
	defb 063h,0b7h,05eh,0edh,071h,0fbh,0feh,0ffh,0feh,0dfh,0dch,0f8h,094h,076h,00ch,000h	; 74d0  c.^.q........v..
	defb 003h,080h,005h,000h,097h,080h,040h,0c0h,0c0h,020h,0a0h,020h,000h,080h,0c1h,0e3h	; 74e0  ......@.. . ....
	defb 076h,0beh,0ech,084h,0a4h,08dh,039h,0a3h,007h,06bh,0f9h,0f7h,00ah,000h,003h,080h	; 74f0  v.....9..k......
	defb 003h,0c0h,002h,001h,083h,049h,006h,026h,00bh,000h,097h,0cch,027h,093h,0c7h,0fdh	; 7500  .....I.&....'...
	defb 07fh,045h,007h,001h,001h,005h,001h,002h,003h,001h,000h,006h,020h,048h,005h,023h	; 7510  .E.......... H.#
	defb 000h,003h,009h,000h,0a7h,0f3h,0f8h,07ch,03eh,00fh,066h,032h,008h,000h,024h,004h	; 7520  .......|>.f2..$.
	defb 000h,001h,001h,000h,000h,091h,0f2h,0e4h,0e3h,0f6h,0fch,0bah,0e8h,0e0h,0f4h,060h	; 7530  ...............`
	defb 070h,0f0h,030h,070h,0e0h,0d0h,042h,0e0h,0d2h,078h,000h,040h,009h,000h,097h,06fh	; 7540  p.0p..B..x.@...o
	defb 00fh,0dfh,01ch,0b8h,010h,0c2h,098h,0c0h,058h,0c0h,0c0h,0e0h,0e0h,0c0h,000h,094h	; 7550  ........X.......
	defb 09ah,040h,022h,050h,080h,040h,009h,000h,000h,015h,000h,088h,001h,002h,005h,00bh	; 7560  .@"P.@..........
	defb 017h,02eh,03fh,07fh,003h,07eh,016h,000h,0a1h,001h,003h,006h,00eh,01dh,015h,021h	; 7570  ..?..~.........!
	defb 029h,021h,005h,000h,000h,001h,01fh,024h,0d6h,0fbh,086h,05ch,058h,0b4h,0dch,0deh	; 7580  )!.....$...\X...
	defb 08eh,04eh,00bh,01ch,07eh,0f3h,05eh,0ach,070h,080h,00ch,000h,093h,001h,01bh,03dh	; 7590  .N..~.^.p......=
	defb 0bch,078h,0e0h,0e0h,0c8h,0e8h,0e4h,0f4h,0f0h,0f4h,000h,01ch,07eh,0fch,0f0h,080h	; 75a0  .x..........~...
	defb 010h,000h,002h,001h,084h,002h,026h,00bh,001h,004h,000h,08dh,03bh,01fh,036h,05ch	; 75b0  ......&.....;.6\
	defb 0c2h,083h,0feh,0efh,0e2h,0ffh,03dh,080h,006h,00bh,000h,084h,00dh,023h,008h,001h	; 75c0  ......=......#..
	defb 004h,000h,08dh,014h,000h,00bh,03fh,07fh,07ch,003h,0bfh,0dfh,008h,022h,0d7h,006h	; 75d0  ......?.|...."..
	defb 003h,000h,08eh,009h,000h,092h,001h,077h,0ffh,0feh,0ffh,077h,0eeh,0f9h,0e0h,040h	; 75e0  .......w...w...@
	defb 008h,003h,000h,004h,080h,087h,040h,0a0h,0e0h,0d0h,0fch,000h,040h,004h,000h,08eh	; 75f0  ......@.....@...
	defb 0f6h,0ffh,06fh,0feh,0f9h,007h,077h,0bfh,0fah,0f0h,063h,04ch,000h,088h,007h,000h	; 7600  ..o...w...cL....
	defb 087h,080h,0c0h,050h,020h,0d4h,020h,040h,004h,000h,000h,009h,000h,087h,060h,0f0h	; 7610  ...P . @......`.
	defb 038h,0d4h,0eah,07ch,017h,008h,000h,084h,001h,003h,004h,007h,004h,00fh,00ah,000h	; 7620  8..|............
	defb 086h,060h,0f0h,078h,03ch,01eh,00eh,00ah,000h,085h,003h,002h,004h,005h,004h,005h	; 7630  .`.x<...........
	defb 000h,08ch,004h,03eh,04eh,0beh,07eh,01bh,0c6h,0efh,0ddh,0fch,0f7h,042h,00ah,000h	; 7640  ...>N.~......B..
	defb 002h,080h,002h,040h,082h,0c0h,060h,006h,000h,08ah,034h,074h,0ech,0fch,0f9h,0b3h	; 7650  ...@..`...4t....
	defb 03fh,007h,038h,0fdh,00ch,000h,002h,080h,08dh,000h,080h,00ah,004h,003h,001h,001h	; 7660  ?.8.............
	defb 000h,000h,002h,040h,009h,022h,005h,000h,08dh,0ebh,0f3h,0c9h,090h,09fh,0f8h,03fh	; 7670  ...@.".........?
	defb 03dh,0b8h,0bfh,0cfh,060h,001h,003h,000h,082h,007h,003h,005h,000h,084h,002h,043h	; 7680  =...`..........C
	defb 008h,022h,005h,000h,08dh,005h,06fh,0ffh,0efh,060h,007h,000h,017h,077h,0c2h,008h	; 7690  ."....o..`...w..
	defb 075h,001h,003h,000h,09ch,081h,0c0h,08ch,0f0h,0ceh,07fh,0dfh,0ffh,09dh,0fbh,07eh	; 76a0  u..............~
	defb 038h,090h,002h,000h,000h,020h,010h,050h,030h,0f0h,0e8h,0d4h,0fch,0f4h,0bfh,040h	; 76b0  8.... .P0......@
	defb 010h,004h,000h,09ch,0feh,0ffh,0f3h,00fh,07fh,080h,06eh,0f7h,0feh,03ch,098h,0d3h	; 76c0  ..........n..<..
	defb 080h,022h,000h,000h,0c0h,0e0h,0e0h,0c0h,020h,0f0h,0f8h,0e8h,088h,035h,0c8h,010h	; 76d0  ."...... ....5..
	defb 004h,000h,000h,007h,000h,004h,001h,095h,00fh,015h,02eh,03eh,028h,003h,00dh,01bh	; 76e0  ...........>(...
	defb 031h,063h,0f1h,0c2h,056h,0bdh,06dh,07fh,0bdh,09bh,0cfh,02fh,055h,00ch,000h,081h	; 76f0  1c..V.m..../U...
	defb 00eh,003h,01fh,0a0h,000h,003h,00fh,01fh,03fh,07fh,07fh,0bfh,0ffh,0dfh,0c0h,063h	; 7700  ........?......c
	defb 07fh,030h,0d0h,0ebh,0c0h,0b0h,0c8h,08ch,0c6h,08fh,043h,06ah,0bdh,0b6h,0feh,0bdh	; 7710  .0........Cj....
	defb 0d9h,0f3h,0f4h,0aah,007h,000h,003h,080h,096h,0e0h,090h,028h,074h,024h,002h,000h	; 7720  ...........(t$..
	defb 0c0h,0f0h,0f8h,0fch,0feh,0feh,0fdh,0ffh,0fbh,003h,0c6h,0feh,00ch,00bh,0d7h,00bh	; 7730  ................
	defb 000h,0a6h,060h,0f0h,0f8h,0f8h,0fch,050h,05bh,07bh,07fh,05bh,047h,023h,02eh,01dh	; 7740  ..`....P[{.[G#..
	defb 01eh,010h,01bh,00fh,008h,00fh,000h,0ffh,07ch,03fh,09eh,041h,0beh,0e4h,0ffh,07fh	; 7750  ........|?.A....
	defb 01fh,08fh,030h,010h,0a0h,0c0h,000h,02fh,004h,03ch,0c8h,038h,01eh,01fh,00eh,001h	; 7760  ..0..../.<.8....
	defb 00fh,007h,000h,007h,000h,000h,0f0h,0ffh,0ffh,07fh,0beh,041h,01fh,000h,080h,0e0h	; 7770  ...........A....
	defb 0f0h,0c0h,0e0h,0c0h,000h,000h,0ffh,09eh,0fch,0f9h,0c2h,0bdh,097h,0ffh,0feh,0f8h	; 7780  ................
	defb 0e4h,003h,002h,001h,001h,000h,02ah,0ddh,0ddh,0edh,0aah,064h,068h,0f0h,028h,078h	; 7790  ......*....dh.(x
	defb 0b4h,042h,002h,01dh,07fh,0feh,00fh,07fh,0ffh,07eh,03dh,042h,078h,000h,001h,007h	; 77a0  .B.......~=Bx...
	defb 003h,000h,001h,003h,000h,090h,0dch,03eh,03eh,01eh,07ch,0f8h,0f0h,000h,0f0h,0f0h	; 77b0  .......>>.|.....
	defb 078h,0bch,0fch,0feh,0feh,000h,000h,007h,000h,002h,001h,097h,000h,007h,009h,014h	; 77c0  x...............
	defb 02eh,024h,040h,000h,00fh,011h,027h,04fh,09fh,09fh,00bh,08dh,0f0h,0c0h,01ch,07fh	; 77d0  .$@...'O........
	defb 0feh,0ffh,07fh,00bh,000h,090h,006h,00fh,01fh,01fh,03fh,000h,000h,00fh,01fh,03fh	; 77e0  ..........?....?
	defb 07fh,07fh,0ffh,077h,00fh,03fh,005h,0ffh,090h,000h,0f0h,0c8h,0f4h,0fah,0fdh,0fdh	; 77f0  ...w.?..........
	defb 0e8h,0d9h,007h,001h,038h,07eh,0ffh,0feh,0feh,007h,000h,002h,080h,092h,000h,080h	; 7800  ....8~..........
	defb 0f0h,028h,074h,07ch,014h,000h,000h,0f0h,0f8h,0fch,0feh,0feh,0ffh,0f6h,0f8h,0feh	; 7810  .(t|............
	defb 005h,0ffh,00ch,000h,081h,0f0h,003h,0f8h,0a8h,054h,0bah,0bbh,0b7h,051h,023h,014h	; 7820  .........T...Q#.
	defb 00bh,016h,014h,018h,019h,011h,008h,013h,01ch,0ffh,07eh,03fh,01eh,080h,0f8h,0ffh	; 7830  ..........~?....
	defb 0ffh,03fh,01fh,0cfh,0f0h,010h,0d0h,020h,040h,03bh,07dh,07ch,078h,03eh,01ch,00bh	; 7840  .?..... @;}|x>..
	defb 007h,003h,00fh,085h,00eh,00fh,007h,00ch,003h,004h,0ffh,0ach,07fh,007h,000h,000h	; 7850  ................
	defb 0c0h,0e0h,030h,0c0h,0e0h,020h,0c0h,080h,0ffh,0feh,0fch,078h,001h,00fh,0ffh,0ffh	; 7860  ..0.. .....x....
	defb 0fch,0f8h,0e4h,003h,002h,001h,000h,000h,00ah,05ah,05eh,0feh,0dah,0c2h,0e4h,074h	; 7870  .........Z^....t
	defb 03ch,008h,024h,066h,011h,001h,0feh,000h,004h,0ffh,089h,0feh,0f0h,000h,000h,003h	; 7880  <.$f............
	defb 007h,003h,000h,001h,003h,000h,083h,0f4h,0bch,0bch,003h,03ch,08ah,058h,0c8h,0e0h	; 7890  ...........<.X..
	defb 0f0h,0f8h,0f8h,0feh,0feh,000h,000h,000h,006h,000h,002h,001h,083h,002h,003h,003h	; 78a0  ................
	defb 003h,001h,002h,000h,090h,003h,00fh,01eh,03fh,07ch,0f0h,0c6h,0d9h,077h,0deh,0feh	; 78b0  ........?|...w..
	defb 0fch,0e9h,037h,0feh,07ah,008h,000h,002h,001h,007h,000h,09fh,003h,00fh,01fh,03fh	; 78c0  ..7.z..........?
	defb 07fh,0ffh,0ffh,0f9h,063h,007h,0bfh,01eh,0c8h,001h,005h,0c0h,0b0h,018h,00ch,046h	; 78d0  ....c..........F
	defb 086h,00ah,003h,065h,0dah,05ah,0fbh,08dh,037h,07bh,031h,00dh,000h,087h,080h,0c0h	; 78e0  ...e.Z..7{1.....
	defb 060h,000h,0c0h,0f0h,0f8h,003h,0fch,089h,0feh,09eh,06ch,0e4h,006h,076h,0fbh,0fdh	; 78f0  `.........l..v..
	defb 0feh,00eh,000h,082h,080h,0c0h,006h,000h,09ah,001h,003h,006h,00fh,00ah,004h,003h	; 7900  ................
	defb 004h,00fh,00fh,078h,0b3h,09fh,07bh,05bh,068h,0b4h,09fh,0cfh,043h,007h,018h,098h	; 7910  ...x..{[h...C...
	defb 048h,090h,0e0h,007h,000h,0aeh,001h,003h,007h,007h,003h,000h,003h,007h,000h,03fh	; 7920  H..............?
	defb 07ch,073h,007h,037h,017h,04bh,0e0h,0f0h,0fch,0f8h,0e0h,070h,0f0h,0e0h,000h,0c4h	; 7930  |s.7.K.....p....
	defb 09eh,0beh,09dh,07ah,03ch,0c3h,0ffh,0ffh,0fch,0f8h,004h,002h,001h,001h,000h,0d0h	; 7940  ...z<...........
	defb 090h,090h,020h,020h,003h,0c0h,095h,060h,0f0h,038h,014h,006h,08ah,0f4h,0f8h,03fh	; 7950  ..  ...`.8.....?
	defb 07fh,07fh,0feh,0fdh,0c3h,03ch,000h,000h,003h,007h,003h,001h,003h,000h,003h,060h	; 7960  .....<.........`
	defb 002h,0c0h,003h,000h,088h,0c0h,0e0h,0f0h,0f8h,0fch,07ch,0f8h,000h,000h,006h,000h	; 7970  ..........|.....
	defb 002h,001h,083h,002h,003h,003h,003h,001h,002h,000h,090h,003h,00fh,01eh,03fh,07ch	; 7980  ..............?|
	defb 0f0h,0c6h,0d9h,077h,0deh,0feh,0fch,0e9h,037h,0feh,07ah,008h,000h,002h,001h,007h	; 7990  ...w....7.z.....
	defb 000h,09fh,003h,00fh,01fh,03fh,07fh,0ffh,0ffh,0f9h,063h,007h,0bfh,01eh,0c8h,001h	; 79a0  .....?....c.....
	defb 005h,0c0h,0b0h,018h,00ch,046h,086h,00ah,003h,065h,0dah,05ah,0fbh,08dh,037h,07bh	; 79b0  .....F...e.Z..7{
	defb 031h,00dh,000h,087h,080h,0c0h,060h,000h,0c0h,0f0h,0f8h,003h,0fch,089h,0feh,09eh	; 79c0  1.....`.........
	defb 06ch,0e4h,006h,076h,0fbh,0fdh,0feh,00eh,000h,085h,080h,0c0h,000h,001h,001h,00dh	; 79d0  l..v............
	defb 000h,090h,0f1h,067h,03fh,0f7h,0b6h,050h,029h,03fh,039h,078h,078h,031h,01ch,02dh	; 79e0  ...g?..P)?9xx1.-
	defb 059h,062h,010h,000h,0a5h,07eh,0f8h,0e6h,00fh,06fh,02fh,016h,000h,01eh,03fh,03fh	; 79f0  Yb...~...o/...??
	defb 01fh,00fh,01eh,03eh,03ch,089h,03dh,07dh,03ah,0f4h,079h,087h,0ffh,0ffh,07ah,07eh	; 7a00  ...><.=}:.y...z~
	defb 0c9h,0c7h,069h,056h,048h,0a0h,020h,020h,040h,040h,003h,080h,008h,000h,090h,07eh	; 7a10  ..iVH.  @@.....~
	defb 0feh,0feh,0fdh,0fbh,086h,078h,000h,000h,084h,08ch,03eh,03eh,01eh,038h,030h,003h	; 7a20  .....x....>>.80.
	defb 0c0h,002h,080h,00bh,000h,000h,009h,000h,08fh,001h,003h,007h,007h,00fh,00dh,01bh	; 7a30  ................
	defb 067h,0d8h,0b5h,07fh,075h,03fh,03fh,07fh,005h,0ffh,083h,0efh,0cfh,0ach,00eh,000h	; 7a40  g...u??.........
	defb 08ah,002h,004h,000h,027h,04fh,013h,00ah,000h,004h,003h,005h,000h,08ch,010h,03ah	; 7a50  ....'O.........:
	defb 057h,0cch,036h,05ah,0fch,05ch,0feh,0feh,0fbh,0fdh,004h,0ffh,083h,0bfh,0ffh,0bfh	; 7a60  W.6Z.\..........
	defb 008h,000h,091h,080h,0e0h,070h,0f8h,0f8h,0fch,0bch,05ch,000h,0c8h,0e4h,090h,0a0h	; 7a70  .....p....\.....
	defb 000h,040h,084h,002h,004h,000h,083h,040h,000h,0c0h,00ah,000h,081h,080h,003h,000h	; 7a80  .@.....@........
	defb 095h,040h,0a0h,01bh,03fh,037h,03fh,01fh,00fh,00fh,007h,007h,00eh,00fh,00fh,007h	; 7a90  .@..?7?.........
	defb 009h,00fh,000h,0f3h,0eeh,0fdh,004h,0ffh,093h,07fh,0ffh,0fdh,0ffh,0f7h,0f1h,0e0h	; 7aa0  ................
	defb 0c0h,000h,004h,000h,008h,000h,000h,006h,002h,000h,000h,001h,003h,000h,086h,006h	; 7ab0  ................
	defb 000h,000h,00dh,011h,002h,004h,000h,083h,080h,000h,002h,006h,000h,0b7h,077h,0bfh	; 7ac0  ..............w.
	defb 07dh,0fch,0dfh,0ffh,07eh,0ffh,0feh,0efh,05fh,0ffh,0f7h,064h,006h,003h,0bch,0f8h	; 7ad0  }...~..._..d....
	defb 078h,070h,0e0h,070h,0b0h,0d8h,098h,018h,0b8h,0f8h,0dch,0ech,0ech,0d8h,088h,041h	; 7ae0  xp.p...........A
	defb 083h,003h,020h,000h,083h,001h,001h,010h,0a0h,000h,000h,003h,001h,000h,040h,000h	; 7af0  .. ...........@.
	defb 080h,080h,000h,080h,0c0h,003h,0e0h,086h,040h,000h,020h,018h,0f0h,060h,000h,009h	; 7b00  ........@. ..`..
	defb 000h,097h,001h,003h,007h,007h,00fh,00dh,01bh,067h,0dch,0bbh,07fh,077h,03fh,03fh	; 7b10  .........g...w??
	defb 07fh,0feh,0f5h,0cbh,0ffh,0ffh,0efh,0ffh,0ffh,00eh,000h,087h,002h,004h,000h,023h	; 7b20  ...............#
	defb 044h,000h,008h,003h,000h,098h,001h,00ah,034h,000h,000h,010h,000h,000h,0cch,036h	; 7b30  D.......4......6
	defb 0dah,0fch,0dch,0feh,0deh,07bh,0bdh,0f7h,04dh,0afh,00fh,02fh,0afh,0efh,008h,000h	; 7b40  .....{..M../....
	defb 098h,080h,0e0h,070h,0f8h,0f8h,0fch,0bch,05ch,000h,0c8h,064h,000h,020h,000h,020h	; 7b50  ...p....\..d. .
	defb 084h,042h,008h,0b2h,050h,0f0h,0d0h,050h,010h,00ah,000h,081h,080h,003h,000h,094h	; 7b60  .B..P..P........
	defb 040h,0a0h,01bh,03fh,037h,03fh,01fh,00dh,00dh,007h,00fh,00eh,00fh,007h,00fh,00fh	; 7b70  @..?7?..........
	defb 007h,000h,0ffh,0feh,005h,0ffh,093h,07fh,0ffh,0fdh,0ffh,0ffh,0fbh,0f0h,0e0h,000h	; 7b80  ................
	defb 004h,000h,008h,000h,000h,006h,002h,000h,000h,001h,007h,000h,081h,001h,005h,000h	; 7b90  ................
	defb 083h,080h,000h,002h,006h,000h,081h,0f7h,008h,0ffh,08bh,0efh,05fh,0ffh,0f7h,067h	; 7ba0  ............_..g
	defb 007h,003h,0fch,0f8h,0f8h,0f0h,003h,0e0h,002h,0f0h,088h,0d0h,0b8h,0f8h,0dch,0ech	; 7bb0  ................
	defb 0ech,0d8h,008h,008h,000h,082h,010h,0a0h,00eh,000h,087h,020h,040h,000h,020h,018h	; 7bc0  ........... @. .
	defb 010h,060h,000h,089h,001h,003h,005h,00fh,00eh,007h,007h,00eh,007h,003h,000h,09ch	; 7bd0  .`..............
	defb 001h,003h,007h,00fh,0beh,0bbh,0ffh,09ah,0efh,0dfh,0b7h,0ffh,0ddh,0bdh,0dbh,0f7h	; 7be0  ................
	defb 0cch,07fh,0f5h,0fdh,000h,000h,003h,006h,001h,000h,001h,007h,003h,000h,081h,001h	; 7bf0  ................
	defb 004h,000h,090h,040h,0cch,064h,065h,010h,060h,0c8h,000h,022h,042h,024h,008h,073h	; 7c00  ...@.de.`.."B$.s
	defb 080h,00eh,00fh,003h,000h,08dh,080h,0c0h,070h,0d8h,0c8h,0e4h,0cch,0bch,00ch,03ch	; 7c10  ........p......<
	defb 01ch,0beh,0feh,015h,000h,08ah,080h,020h,030h,018h,030h,040h,0f0h,0c0h,0f0h,040h	; 7c20  ....... 0.0@...@
	defb 011h,000h,089h,017h,01bh,017h,01bh,003h,007h,006h,006h,005h,003h,00fh,085h,00bh	; 7c30  ................
	defb 01dh,01eh,01fh,0fbh,004h,0ffh,08eh,07fh,0f3h,0fdh,0f7h,0ffh,0f8h,0e0h,0f0h,0f0h	; 7c40  ................
	defb 060h,0e0h,008h,00ch,008h,003h,000h,002h,001h,081h,002h,003h,000h,085h,004h,006h	; 7c50  `...............
	defb 00fh,004h,00ch,004h,000h,08bh,080h,00ch,002h,008h,000h,000h,010h,000h,000h,080h	; 7c60  ................
	defb 000h,007h,0ffh,089h,07fh,0dfh,0ffh,077h,03fh,013h,027h,03fh,01fh,003h,000h,005h	; 7c70  .......w?.'?....
	defb 080h,083h,0c0h,0e0h,0e0h,003h,0f0h,082h,0e0h,080h,007h,000h,088h,080h,020h,000h	; 7c80  .............. .
	defb 008h,000h,00ch,01ah,018h,011h,000h,000h,0a8h,001h,003h,005h,00fh,00eh,007h,007h	; 7c90  ................
	defb 00eh,007h,000h,003h,00fh,01fh,03fh,03dh,03fh,0beh,0bbh,0ffh,09ah,0efh,0dfh,0b7h	; 7ca0  ......?=?.......
	defb 0ffh,0ddh,0bdh,0dbh,0f7h,0cfh,07eh,0fdh,0f5h,000h,000h,003h,006h,001h,000h,001h	; 7cb0  ......~.........
	defb 007h,006h,000h,092h,012h,010h,040h,0cch,064h,065h,010h,060h,0c8h,000h,022h,042h	; 7cc0  ......@.de.`.."B
	defb 024h,008h,070h,081h,002h,00eh,003h,000h,08dh,080h,0c0h,070h,0d8h,0c8h,0e4h,0cch	; 7cd0  $.p........p....
	defb 0bch,08eh,03eh,09fh,03fh,0bfh,00fh,000h,081h,080h,005h,000h,08bh,080h,020h,030h	; 7ce0  ..>.?......... 0
	defb 018h,030h,040h,070h,0c0h,070h,0c0h,040h,010h,000h,085h,03dh,019h,000h,001h,001h	; 7cf0  .0@p.p.@...=....
	defb 003h,003h,003h,001h,002h,000h,084h,001h,003h,003h,0fdh,003h,0ffh,08ch,0dfh,05fh	; 7d00  ..............._
	defb 0ebh,0ffh,0f7h,0ffh,0fdh,0efh,0feh,0deh,0ddh,0f9h,010h,000h,090h,00fh,008h,000h	; 7d10  ................
	defb 000h,020h,0a0h,014h,000h,008h,000h,000h,010h,000h,060h,0e0h,000h,005h,0ffh,08bh	; 7d20  . ........`.....
	defb 0feh,0fch,07eh,0deh,07eh,077h,07fh,0cfh,08fh,0beh,0f8h,004h,080h,013h,000h,088h	; 7d30  ..~.~w..........
	defb 080h,020h,080h,088h,080h,030h,070h,040h,011h,000h,000h,0eah,066h,040h,0e8h,0d1h	; 7d40  . ...0p@....f@..
	defb 067h,040h,0e9h,0b4h,068h,08dh,069h,040h,0eah,040h,0ebh,048h,06ah,027h,06bh,0edh	; 7d50  g@..h.i@.@.Hj'k.
	defb 06bh,0aah,06ch,071h,06dh,052h,06eh,022h,06fh,0dch,06fh,0a3h,070h,07fh,071h,048h	; 7d60  k.lqmRn"o.o.p.qH
	defb 072h,0fbh,072h,0c3h,073h,0a3h,074h,069h,075h,01bh,076h,0e3h,076h,040h,0e8h,0c7h	; 7d70  r.r.s.tiu.v.v@..
	defb 077h,040h,0e9h,0a8h,078h,07eh,079h,040h,0eah,040h,0ebh,036h,07ah,040h,0e8h,00fh	; 7d80  w@..x~y@.@.6z@..
	defb 07bh,040h,0e9h,0d3h,07bh,098h,07ch,040h,0eah,040h,0ebh	; 7d90  {@..{.|@.@.

; ----------------------------------------------------------------------
; DATOS poses_7D9B: 17 punteros, uno por pose de Mitchel (0xC310), cuando
;   0xC160 = 0; lo leen p00:5008 (34 bytes)
;   0x7d9b..0x7dbd  (34 bytes)
DATA_poses_7D9B:
	defb 0dfh,07dh	; 7d9b
	defb 019h,07eh	; 7d9d
	defb 058h,07eh	; 7d9f
	defb 093h,07eh	; 7da1
	defb 0cfh,07eh	; 7da3
	defb 00fh,07fh	; 7da5
	defb 04dh,07fh	; 7da7
	defb 08bh,07fh	; 7da9
	defb 0cah,07fh	; 7dab
	defb 007h,080h	; 7dad
	defb 046h,080h	; 7daf
	defb 086h,080h	; 7db1
	defb 0c4h,080h	; 7db3
	defb 003h,081h	; 7db5
	defb 044h,081h	; 7db7
	defb 085h,081h	; 7db9
	defb 0c7h,081h	; 7dbb

; ----------------------------------------------------------------------
; DATOS poses_7DBD: 17 punteros, uno por pose de Mitchel (0xC310), cuando
;   0xC160 distinto de 0; lo leen p00:5008 (34 bytes)
;   0x7dbd..0x7ddf  (34 bytes)
DATA_poses_7DBD:
	defb 0efh,088h	; 7dbd
	defb 02dh,089h	; 7dbf
	defb 06eh,089h	; 7dc1
	defb 0abh,089h	; 7dc3
	defb 0ebh,089h	; 7dc5
	defb 02ch,08ah	; 7dc7
	defb 06bh,08ah	; 7dc9
	defb 0aah,08ah	; 7dcb
	defb 0eah,08ah	; 7dcd
	defb 028h,08bh	; 7dcf
	defb 067h,08bh	; 7dd1
	defb 0a5h,08bh	; 7dd3
	defb 0e3h,08bh	; 7dd5
	defb 023h,08ch	; 7dd7
	defb 065h,08ch	; 7dd9
	defb 0a7h,08ch	; 7ddb
	defb 0e8h,08ch	; 7ddd

; ----------------------------------------------------------------------
; DATOS pose_7DDF: la pose 0 de Mitchel (0xC160 = 0): RLE de los dos patrones
;   de 16x16 (n con el bit 7 = n bytes tal cual; sin el, repetir el siguiente;
;   0 acaba); lo leen p00:5010 (58 bytes)
;   0x7ddf..0x7e19  (58 bytes)
DATA_pose_7DDF:
	defb 08dh,007h,00fh,00fh,01fh,01fh,00dh,014h,02ch,07dh,07fh,075h,02ch,019h,003h,01eh	; 7ddf  ........,}.u,...
	defb 08eh,0e0h,0f0h,0f0h,0e8h,0f8h,090h,018h,008h,048h,0f0h,048h,088h,078h,030h,006h	; 7def  .........H.H.x0.
	defb 000h,089h,008h,002h,00fh,01bh,002h,035h,02ah,007h,00eh,006h,000h,002h,010h,087h	; 7dff  .......5*.......
	defb 060h,0f0h,0f0h,0b0h,040h,0b0h,070h,004h,000h,000h	; 7e0f  `...@.p...

; ----------------------------------------------------------------------
; DATOS pose_7E19: la pose 1 de Mitchel (0xC160 = 0): RLE de los dos patrones
;   de 16x16 (n con el bit 7 = n bytes tal cual; sin el, repetir el siguiente;
;   0 acaba); lo leen p00:5010 (63 bytes)
;   0x7e19..0x7e58  (63 bytes)
DATA_pose_7E19:
	defb 0a0h,007h,00fh,00fh,01fh,01fh,00bh,00bh,018h,028h,032h,037h,03ah,018h,009h,01fh	; 7e19  .........(27:...
	defb 01eh,0e0h,0f0h,0f0h,0e8h,0f8h,0d0h,0d8h,00ch,014h,0aeh,0feh,03ch,088h,048h,064h	; 7e29  ............<.Hd
	defb 03ch,004h,000h,08ah,008h,004h,005h,00fh,017h,01dh,00ah,015h,007h,006h,005h,000h	; 7e39  <...............
	defb 002h,010h,08bh,020h,070h,0f8h,0e8h,054h,0ach,0c8h,070h,030h,018h,000h,000h	; 7e49  ... p..T..p0...

; ----------------------------------------------------------------------
; DATOS pose_7E58: la pose 2 de Mitchel (0xC160 = 0): RLE de los dos patrones
;   de 16x16 (n con el bit 7 = n bytes tal cual; sin el, repetir el siguiente;
;   0 acaba); lo leen p00:5010 (59 bytes)
;   0x7e58..0x7e93  (59 bytes)
DATA_pose_7E58:
	defb 09dh,007h,00fh,00fh,017h,01fh,009h,018h,010h,012h,00fh,012h,011h,01eh,00ch,000h	; 7e58  ................
	defb 000h,0e0h,0f0h,0f0h,0f8h,0f8h,0b0h,028h,034h,0beh,0feh,0aeh,034h,098h,003h,078h	; 7e68  .......(4...4..x
	defb 003h,000h,002h,008h,087h,006h,00fh,00fh,00dh,002h,00dh,00eh,008h,000h,089h,010h	; 7e78  ................
	defb 040h,0f0h,0d8h,040h,0ach,054h,0e0h,070h,003h,000h,000h	; 7e88  @..@.T.p...

; ----------------------------------------------------------------------
; DATOS pose_7E93: la pose 3 de Mitchel (0xC160 = 0): RLE de los dos patrones
;   de 16x16 (n con el bit 7 = n bytes tal cual; sin el, repetir el siguiente;
;   0 acaba); lo leen p00:5010 (60 bytes)
;   0x7e93..0x7ecf  (60 bytes)
DATA_pose_7E93:
	defb 09eh,007h,00fh,00fh,01eh,01fh,00fh,01fh,03bh,03eh,05fh,02ah,019h,015h,016h,01eh	; 7e93  ........;>_*....
	defb 03eh,0e0h,0f0h,0f0h,0f8h,0f8h,0d8h,0a4h,0c4h,0aeh,0fch,0b8h,048h,078h,030h,005h	; 7ea3  >...........Hx0.
	defb 000h,08bh,001h,00dh,007h,00bh,004h,019h,03ah,015h,006h,00eh,00ch,005h,000h,089h	; 7eb3  ........:.......
	defb 050h,070h,0e0h,0d8h,038h,054h,0a8h,040h,030h,004h,000h,000h	; 7ec3  Pp..8T.@0...

; ----------------------------------------------------------------------
; DATOS pose_7ECF: la pose 4 de Mitchel (0xC160 = 0): RLE de los dos patrones
;   de 16x16 (n con el bit 7 = n bytes tal cual; sin el, repetir el siguiente;
;   0 acaba); lo leen p00:5010 (64 bytes)
;   0x7ecf..0x7f0f  (64 bytes)
DATA_pose_7ECF:
	defb 0a0h,007h,00fh,00fh,01ah,01fh,00fh,00fh,01bh,030h,026h,077h,07ah,038h,019h,01fh	; 7ecf  .........0&wz8..
	defb 01eh,0e0h,0f0h,0f0h,0f8h,0f8h,0d0h,0b8h,0cch,004h,0aeh,0feh,0bch,088h,048h,064h	; 7edf  ..............Hd
	defb 03ch,003h,000h,08bh,005h,00dh,007h,003h,00ch,01fh,019h,02ah,035h,017h,006h,005h	; 7eef  <..........*5...
	defb 000h,08dh,050h,070h,0e0h,0d0h,038h,0f8h,054h,0ach,048h,070h,030h,018h,000h,000h	; 7eff  ..Pp..8.T.Hp0...

; ----------------------------------------------------------------------
; DATOS pose_7F0F: la pose 5 de Mitchel (0xC160 = 0): RLE de los dos patrones
;   de 16x16 (n con el bit 7 = n bytes tal cual; sin el, repetir el siguiente;
;   0 acaba); lo leen p00:5010 (62 bytes)
;   0x7f0f..0x7f4d  (62 bytes)
DATA_pose_7F0F:
	defb 0a0h,007h,00fh,00fh,01eh,01fh,01fh,027h,023h,075h,03fh,01dh,012h,01eh,00ch,000h	; 7f0f  .......'#u?.....
	defb 000h,0e0h,0f0h,0f0h,0f8h,0f8h,0d0h,0b8h,0dch,07ch,0fah,054h,098h,0a8h,068h,078h	; 7f1f  .........|.T..hx
	defb 07ch,003h,000h,089h,001h,00dh,007h,01bh,01ch,02ah,015h,002h,00ch,007h,000h,08dh	; 7f2f  |........*......
	defb 050h,070h,0e0h,0d0h,020h,098h,05ch,0a8h,060h,070h,030h,000h,000h,000h	; 7f3f  Pp.. .\.`p0...

; ----------------------------------------------------------------------
; DATOS pose_7F4D: la pose 6 de Mitchel (0xC160 = 0): RLE de los dos patrones
;   de 16x16 (n con el bit 7 = n bytes tal cual; sin el, repetir el siguiente;
;   0 acaba); lo leen p00:5010 (62 bytes)
;   0x7f4d..0x7f8b  (62 bytes)
DATA_pose_7F4D:
	defb 092h,01fh,03fh,0ffh,0dfh,07fh,0fdh,07ah,03ch,010h,020h,075h,04fh,035h,022h,034h	; 7f4d  ..?....z<. uO5"4
	defb 07ch,000h,080h,003h,0c0h,09ah,0e0h,0a0h,050h,090h,0f0h,0d0h,0f8h,0cch,08ch,05ch	; 7f5d  |.......P......\
	defb 038h,000h,000h,004h,02dh,02fh,07eh,03dh,003h,00fh,01fh,02ah,034h,00ah,01ch,008h	; 7f6d  8...-/~=...*4...
	defb 007h,000h,08ah,0c0h,0e0h,060h,000h,0e0h,0d0h,038h,070h,020h,000h,000h	; 7f7d  .....`...8p ..

; ----------------------------------------------------------------------
; DATOS pose_7F8B: la pose 7 de Mitchel (0xC160 = 0): RLE de los dos patrones
;   de 16x16 (n con el bit 7 = n bytes tal cual; sin el, repetir el siguiente;
;   0 acaba); lo leen p00:5010 (63 bytes)
;   0x7f8b..0x7fca  (63 bytes)
DATA_pose_7F8B:
	defb 091h,03fh,0ffh,0dfh,07fh,0fdh,07ah,03ch,008h,015h,013h,015h,00fh,00eh,008h,006h	; 7f8b  .?....z<........
	defb 00fh,080h,003h,0c0h,09bh,0e0h,0c0h,0a0h,020h,0d0h,0d0h,0f0h,050h,0a0h,040h,0c0h	; 7f9b  ........ ...P.@.
	defb 0c0h,000h,004h,02dh,02fh,07eh,03dh,003h,007h,00ah,00dh,00bh,004h,003h,007h,003h	; 7fab  ...-/~=.........
	defb 006h,000h,08bh,080h,0c0h,0c0h,020h,0a0h,0c0h,0a0h,040h,080h,000h,000h,000h	; 7fbb  ...... ...@....

; ----------------------------------------------------------------------
; DATOS pose_7FCA: la pose 8 de Mitchel (0xC160 = 0): RLE de los dos patrones
;   de 16x16 (n con el bit 7 = n bytes tal cual; sin el, repetir el siguiente;
;   0 acaba); lo leen p00:5010 (54 bytes)
;   0x7fca..0x8000  (54 bytes)
DATA_pose_7FCA:
	defb 092h,01fh,07fh,0ffh,05fh,07fh,0fdh,07ah,03ch,008h,032h,075h,07fh,03eh,00dh,01fh	; 7fca  ...._..z<.2u.>..
	defb 03eh,000h,080h,003h,0c0h,099h,0e0h,020h,090h,050h,0f0h,0f0h,0e0h,0d0h,030h,0f0h	; 7fda  >...... .P....0.
	defb 060h,000h,000h,004h,02dh,02fh,07eh,03dh,003h,007h,00dh,02ah,034h,003h,006h,008h	; 7fea  `...-/~=...*4...
	defb 000h,08ah,0c0h,0e0h,0e0h,000h	; 7ffa
