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
; DATOS jefe_de_cada_pantalla: un byte por pantalla: los graficos de jefe que
;   sube p00:4B15 (0 = ninguno); los cuatro ultimos son los primeros de
;   p13:66AA; se solapan 2 bloques (0x6620-0x66AE, 0x66AA-0x66D2); lo leen
;   p00:4B1E, p00:5262 (178 bytes)
;   0x6620..0x66d2  (178 bytes)
DATA_jefe_de_cada_pantalla:
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
	defb 000h,000h	; 66d0

; ----------------------------------------------------------------------
; DATOS juegos_de_jefe_1: cuatro punteros a RLE: los cuatro juegos de patrones
;   del jefe 1; lo leen p00:4B29 (8 bytes)
;   0x66d2..0x66da  (8 bytes)
DATA_juegos_de_jefe_1:
	defb 0eah,066h	; 66d2
	defb 0d1h,067h	; 66d4
	defb 0b4h,068h	; 66d6
	defb 08dh,069h	; 66d8

; ----------------------------------------------------------------------
; DATOS juegos_de_jefe_2: cuatro punteros a RLE: los cuatro juegos de patrones
;   del jefe 2; lo leen p00:4B29 (8 bytes)
;   0x66da..0x66e2  (8 bytes)
DATA_juegos_de_jefe_2:
	defb 0e3h,076h	; 66da
	defb 0c7h,077h	; 66dc
	defb 0a8h,078h	; 66de
	defb 07eh,079h	; 66e0

; ----------------------------------------------------------------------
; DATOS juegos_de_jefe_3: cuatro punteros a RLE: los cuatro juegos de patrones
;   del jefe 3; lo leen p00:4B29 (8 bytes)
;   0x66e2..0x66ea  (8 bytes)
DATA_juegos_de_jefe_3:
	defb 036h,07ah	; 66e2
	defb 00fh,07bh	; 66e4
	defb 0d3h,07bh	; 66e6
	defb 098h,07ch	; 66e8

; ----------------------------------------------------------------------
; DATOS jefe_66EA: RLE de 256 bytes: juego 0 del jefe 1 (p00:4BB4); lo leen
;   p00:4BB4, p00:528B (231 bytes)
;   0x66ea..0x67d1  (231 bytes)
DATA_jefe_66EA:
	defb 007h,000h,002h,001h,097h,000h,001h,00fh,015h,02fh,03eh,028h,003h,00eh,01eh,033h	; 66ea  ........./>(...3
	defb 04fh,05fh,09eh,07eh,0fdh,0b7h,00fh,08eh,0dch,0deh,0ffh,073h,00ch,000h,0a4h,00eh	; 66fa  O_.~.......s....
	defb 01eh,01fh,01fh,000h,001h,00dh,01dh,031h,021h,061h,0e1h,072h,07fh,0fch,079h,0bbh	; 670a  .......1!a.r..y.
	defb 0f9h,02ch,0cfh,0c0h,070h,078h,0cch,0f2h,0f8h,079h,07eh,0bfh,0edh,0f0h,071h,03bh	; 671a  .,..px...y~...q;
	defb 07bh,0ffh,0ceh,007h,000h,002h,080h,097h,000h,0e0h,090h,0a8h,0f4h,024h,002h,000h	; 672a  {............$..
	defb 080h,0b0h,0b8h,08ch,086h,086h,087h,04eh,0feh,03fh,09eh,0ddh,09fh,034h,0f3h,00bh	; 673a  .......N.?...4..
	defb 000h,0a6h,060h,070h,078h,0f8h,0fch,050h,05bh,07bh,07fh,05bh,047h,023h,02eh,01dh	; 674a  ..`px..P[{.[G#..
	defb 01eh,010h,01bh,00fh,008h,00fh,000h,0ffh,07ch,03fh,09eh,041h,0beh,0e4h,0ffh,07fh	; 675a  ........|?.A....
	defb 01fh,08fh,030h,010h,0a0h,0c0h,000h,02fh,004h,03ch,0c8h,038h,01eh,01fh,00eh,001h	; 676a  ..0..../.<.8....
	defb 00fh,007h,000h,007h,000h,000h,0f0h,0ffh,0ffh,07fh,0beh,041h,01fh,000h,080h,0e0h	; 677a  ...........A....
	defb 0f0h,0c0h,0e0h,0c0h,000h,000h,0ffh,09eh,0fch,0f9h,0c2h,0bdh,097h,0ffh,0feh,0f8h	; 678a  ................
	defb 0e4h,003h,002h,001h,001h,000h,02ah,0ddh,0ddh,0edh,0aah,064h,068h,0f0h,028h,078h	; 679a  ......*....dh.(x
	defb 0b4h,042h,002h,01dh,07fh,0feh,00fh,07fh,0ffh,07eh,03dh,042h,078h,000h,001h,007h	; 67aa  .B.......~=Bx...
	defb 003h,000h,001h,003h,000h,090h,0dch,03eh,03eh,01eh,07ch,0f8h,0f0h,000h,0f0h,0f0h	; 67ba  .......>>.|.....
	defb 078h,0bch,0fch,0feh,0feh,000h,000h	; 67ca

; ----------------------------------------------------------------------
; DATOS jefe_67D1: RLE de 256 bytes: juego 1 del jefe 1 (p00:4BB4); lo leen
;   p00:4BB4, p00:528B (227 bytes)
;   0x67d1..0x68b4  (227 bytes)
DATA_jefe_67D1:
	defb 007h,000h,002h,001h,097h,000h,007h,009h,014h,02eh,024h,040h,003h,00fh,01fh,033h	; 67d1  ..........$@...3
	defb 060h,040h,0c3h,0cch,09fh,0ffh,0ffh,09ch,07fh,0feh,0ffh,07fh,00bh,000h,091h,006h	; 67e1  `@..............
	defb 00fh,01fh,01fh,03fh,000h,001h,00fh,01fh,03fh,03fh,07fh,0ffh,060h,000h,000h,07fh	; 67f1  ...?....??..`...
	defb 004h,0ffh,090h,0c0h,0f0h,0f8h,0cch,006h,002h,0c3h,033h,0f9h,0ffh,0ffh,039h,07eh	; 6801  ..........3...9~
	defb 0ffh,0feh,0feh,007h,000h,002h,080h,093h,000h,080h,0f0h,028h,074h,07ch,014h,000h	; 6811  ...........(t|..
	defb 080h,0f0h,0f8h,0fch,0fch,0feh,0ffh,006h,000h,000h,0feh,004h,0ffh,00ch,000h,081h	; 6821  ................
	defb 0f0h,003h,0f8h,0a8h,054h,0bah,0bbh,0b7h,051h,023h,014h,00bh,016h,014h,018h,019h	; 6831  ....T...Q#......
	defb 011h,008h,013h,01ch,0ffh,07eh,03fh,01eh,080h,0f8h,0ffh,0ffh,03fh,01fh,0cfh,0f0h	; 6841  .....~?.....?...
	defb 010h,0d0h,020h,040h,03bh,07dh,07ch,078h,03eh,01ch,00bh,007h,003h,00fh,085h,00eh	; 6851  .. @;}|x>.......
	defb 00fh,007h,00ch,003h,004h,0ffh,0ach,07fh,007h,000h,000h,0c0h,0e0h,030h,0c0h,0e0h	; 6861  .............0..
	defb 020h,0c0h,080h,0ffh,0feh,0fch,078h,001h,00fh,0ffh,0ffh,0fch,0f8h,0e4h,003h,002h	; 6871   .....x.........
	defb 001h,000h,000h,00ah,05ah,05eh,0feh,0dah,0c2h,0e4h,074h,03ch,008h,024h,066h,011h	; 6881  ....Z^....t<.$f.
	defb 001h,0feh,000h,004h,0ffh,089h,0feh,0f0h,000h,000h,003h,007h,003h,000h,001h,003h	; 6891  ................
	defb 000h,083h,0f4h,0bch,0bch,003h,03ch,08ah,058h,0c8h,0e0h,0f0h,0f8h,0f8h,0feh,0feh	; 68a1  ......<.X.......
	defb 000h,000h,000h	; 68b1

; ----------------------------------------------------------------------
; DATOS jefe_68B4: RLE de 256 bytes: juego 2 del jefe 1 (p00:4BB4); lo leen
;   p00:4BB4, p00:528B (217 bytes)
;   0x68b4..0x698d  (217 bytes)
DATA_jefe_68B4:
	defb 006h,000h,003h,001h,002h,003h,095h,001h,000h,000h,001h,001h,003h,00fh,01ch,032h	; 68b4  ...............2
	defb 05dh,0fdh,0fch,0f9h,03eh,09ch,0cah,0e6h,0efh,0efh,06eh,0deh,009h,000h,081h,001h	; 68c4  ]...>.....n.....
	defb 007h,000h,09fh,003h,00fh,01fh,023h,042h,083h,007h,0cfh,0ffh,07dh,03bh,036h,03ch	; 68d4  ......#B....};6<
	defb 0d5h,021h,0c0h,0f0h,018h,00ch,086h,0ceh,0d1h,0cfh,09ch,023h,04eh,0feh,08fh,037h	; 68e4  .!.........#N..7
	defb 07bh,031h,007h,000h,002h,080h,004h,000h,093h,080h,0c0h,060h,000h,0c0h,0f0h,0f8h	; 68f4  {1.........`....
	defb 07ch,0bch,0beh,0bfh,07fh,0feh,0bch,000h,070h,0fbh,0fdh,0feh,00eh,000h,082h,080h	; 6904  |.......p.......
	defb 0c0h,006h,000h,09ah,001h,003h,006h,00fh,00ah,004h,003h,004h,00fh,00fh,078h,0b3h	; 6914  ..............x.
	defb 09fh,07bh,05bh,068h,0b4h,09fh,0cfh,043h,007h,018h,098h,048h,090h,0e0h,007h,000h	; 6924  .{[h...C...H....
	defb 0aeh,001h,003h,007h,007h,003h,000h,003h,007h,000h,03fh,07ch,073h,007h,037h,017h	; 6934  ..........?|s.7.
	defb 04bh,0e0h,0f0h,0fch,0f8h,0e0h,070h,0f0h,0e0h,000h,0c4h,09eh,0beh,09dh,07ah,03ch	; 6944  K.....p.......z<
	defb 0c3h,0ffh,0ffh,0fch,0f8h,004h,002h,001h,001h,000h,0d0h,090h,090h,020h,020h,003h	; 6954  .............  .
	defb 0c0h,095h,060h,0f0h,038h,014h,006h,08ah,0f4h,0f8h,03fh,07fh,07fh,0feh,0fdh,0c3h	; 6964  ..`.8.....?.....
	defb 03ch,000h,000h,003h,007h,003h,001h,003h,000h,003h,060h,002h,0c0h,003h,000h,088h	; 6974  <.........`.....
	defb 0c0h,0e0h,0f0h,0f8h,0fch,07ch,0f8h,000h,000h	; 6984  .....|...

; ----------------------------------------------------------------------
; DATOS jefe_698D: RLE de 256 bytes: juego 3 del jefe 1 (p00:4BB4); lo leen
;   p00:4BB4, p00:528B (187 bytes)
;   0x698d..0x6a48  (187 bytes)
DATA_jefe_698D:
	defb 006h,000h,003h,001h,002h,003h,095h,001h,000h,000h,001h,001h,003h,00fh,01ch,032h	; 698d  ...............2
	defb 05dh,0fdh,0fch,0f9h,03eh,09ch,0cah,0e6h,0efh,0efh,06eh,0deh,009h,000h,081h,001h	; 699d  ]...>.....n.....
	defb 007h,000h,09fh,003h,00fh,01fh,023h,042h,083h,007h,0cfh,0ffh,07dh,03bh,036h,03ch	; 69ad  ......#B....};6<
	defb 0d5h,021h,0c0h,0f0h,018h,00ch,086h,0ceh,0d1h,0cfh,09ch,023h,04eh,0feh,08fh,037h	; 69bd  .!.........#N..7
	defb 07bh,031h,007h,000h,002h,080h,004h,000h,093h,080h,0c0h,060h,000h,0c0h,0f0h,0f8h	; 69cd  {1.........`....
	defb 07ch,0bch,0beh,0bfh,07fh,0feh,0bch,000h,070h,0fbh,0fdh,0feh,00eh,000h,085h,080h	; 69dd  |.......p.......
	defb 0c0h,000h,001h,001h,00dh,000h,090h,0f1h,067h,03fh,0f7h,0b6h,050h,029h,03fh,039h	; 69ed  ........g?..P)?9
	defb 078h,078h,031h,01ch,02dh,059h,062h,010h,000h,0a5h,07eh,0f8h,0e6h,00fh,06fh,02fh	; 69fd  xx1.-Yb...~...o/
	defb 016h,000h,01eh,03fh,03fh,01fh,00fh,01eh,03eh,03ch,089h,03dh,07dh,03ah,0f4h,079h	; 6a0d  ...??...><.=}:.y
	defb 087h,0ffh,0ffh,07ah,07eh,0c9h,0c7h,069h,056h,048h,0a0h,020h,020h,040h,040h,003h	; 6a1d  ...z~..iVH.  @@.
	defb 080h,008h,000h,090h,07eh,0feh,0feh,0fdh,0fbh,086h,078h,000h,000h,084h,08ch,03eh	; 6a2d  ....~.....x....>
	defb 03eh,01eh,038h,030h,003h,0c0h,002h,080h,00bh,000h,000h	; 6a3d  >.80.......

; ----------------------------------------------------------------------
; DATOS grafico_6A48: RLE de los patrones 224-255 del grafico de jefe 9; lo
;   leen p00:528B (223 bytes)
;   0x6a48..0x6b27  (223 bytes)
DATA_grafico_6A48:
	defb 009h,000h,097h,001h,002h,006h,006h,004h,002h,002h,000h,000h,001h,006h,005h,00fh	; 6a48  ................
	defb 017h,06eh,08fh,05dh,0d6h,0f7h,073h,07bh,03fh,00dh,00ah,000h,081h,001h,003h,003h	; 6a58  .n.]..s{?.......
	defb 002h,001h,003h,000h,09dh,001h,003h,002h,009h,013h,073h,0e3h,02bh,089h,0cch,0c4h	; 6a68  ..........s.+...
	defb 0e0h,0f6h,000h,000h,0c0h,060h,090h,0e8h,0f6h,0f5h,0bah,06ch,065h,067h,0e7h,0efh	; 6a78  .....`.....leg..
	defb 0feh,0d8h,008h,000h,088h,080h,040h,0a0h,0b0h,010h,010h,020h,020h,003h,000h,08dh	; 6a88  ......@....  ...
	defb 0c0h,0e0h,030h,088h,0ceh,0c7h,0d3h,0dah,098h,019h,011h,003h,037h,009h,000h,082h	; 6a98  ..0.........7...
	defb 080h,040h,003h,0e0h,002h,0c0h,002h,001h,004h,000h,002h,001h,098h,002h,006h,007h	; 6aa8  .@..............
	defb 00ah,01ch,03eh,040h,07fh,016h,02eh,0dfh,0beh,0f9h,0ffh,07fh,0bdh,0bbh,0ffh,03dh	; 6ab8  ..>@...........=
	defb 012h,0a1h,040h,040h,080h,008h,000h,08bh,001h,003h,000h,007h,00fh,01fh,03fh,000h	; 6ac8  ..@@..........?.
	defb 0efh,0dfh,03fh,003h,07fh,002h,0ffh,09ah,0dfh,00bh,0c3h,0e1h,040h,080h,080h,000h	; 6ad8  ..?.........@...
	defb 034h,03ah,07dh,0beh,0cfh,0ffh,0feh,0ffh,0ffh,06fh,0bch,078h,0c5h,082h,002h,001h	; 6ae8  4:}......o.x....
	defb 040h,040h,003h,080h,08eh,040h,0a0h,0e0h,0d0h,038h,0b0h,050h,038h,07ch,002h,0feh	; 6af8  @@...@...8.P8|..
	defb 0fbh,0fdh,0feh,005h,0ffh,08ah,0feh,0fch,0f3h,0c7h,082h,001h,001h,000h,080h,080h	; 6b08  ................
	defb 003h,000h,08bh,080h,0c0h,040h,020h,0d0h,0c0h,0e0h,0f0h,0f8h,0fch,000h,000h	; 6b18  .....@ ........

; ----------------------------------------------------------------------
; DATOS grafico_6B27: RLE de los patrones 224-255 del grafico de jefe 10; lo
;   leen p00:528B (198 bytes)
;   0x6b27..0x6bed  (198 bytes)
DATA_grafico_6B27:
	defb 010h,000h,090h,003h,005h,007h,005h,006h,003h,002h,003h,007h,00fh,01fh,015h,030h	; 6b27  ...............0
	defb 030h,05ah,0cdh,011h,000h,003h,003h,003h,001h,002h,000h,097h,002h,006h,00eh,00fh	; 6b37  0Z..............
	defb 00fh,025h,032h,0c0h,060h,0e0h,020h,0a0h,0c0h,040h,0c0h,0f0h,0f8h,0fch,0d4h,006h	; 6b47  .%2.`. ..@......
	defb 006h,02dh,0dah,00fh,000h,083h,080h,000h,080h,003h,0c0h,002h,080h,002h,000h,087h	; 6b57  .-..............
	defb 020h,030h,038h,0f8h,0f8h,0d2h,025h,010h,000h,002h,001h,003h,002h,003h,001h,09ah	; 6b67   08...%.........
	defb 002h,007h,007h,008h,01eh,03fh,05fh,07fh,030h,022h,04dh,08bh,0dfh,0ffh,06fh,0afh	; 6b77  .....?_.0"M...o.
	defb 0afh,0f6h,0bfh,013h,0a1h,040h,040h,080h,000h,000h,003h,001h,003h,000h,08bh,001h	; 6b87  .....@@.........
	defb 002h,000h,007h,00fh,011h,020h,000h,0cfh,0dfh,0bfh,003h,07fh,0adh,0ffh,0f7h,053h	; 6b97  ..... .........S
	defb 00bh,0c0h,0e0h,040h,080h,080h,000h,004h,0e2h,0fdh,0fah,0fdh,07fh,0feh,0dfh,0f3h	; 6ba7  ...@............
	defb 0e7h,0ech,078h,0c5h,082h,002h,001h,040h,040h,0a0h,0a0h,0e0h,0c0h,040h,0e0h,0d0h	; 6bb7  ..x....@@....@..
	defb 038h,0b0h,010h,078h,0fch,0fah,0feh,0fbh,0fdh,0feh,005h,0ffh,098h,0feh,0d8h,093h	; 6bc7  8..x............
	defb 087h,002h,001h,001h,000h,080h,080h,040h,040h,000h,080h,080h,040h,020h,0d0h,0c0h	; 6bd7  .......@@...@ ..
	defb 0e0h,0f0h,088h,004h,000h,000h	; 6be7

; ----------------------------------------------------------------------
; DATOS grafico_6BED: RLE de los patrones 224-255 del grafico de jefe 11; lo
;   leen p00:528B (189 bytes)
;   0x6bed..0x6caa  (189 bytes)
DATA_grafico_6BED:
	defb 087h,038h,07eh,0cfh,07ah,035h,00eh,001h,00bh,000h,094h,080h,0f8h,024h,06bh,0dfh	; 6bed  .8~.z5.......$k.
	defb 061h,03ah,07ah,06dh,06bh,07bh,031h,072h,0b0h,000h,038h,07eh,03fh,00fh,001h,00dh	; 6bfd  a:zmk{1r..8~?...
	defb 000h,08dh,080h,0d8h,0bch,03ch,01eh,007h,007h,013h,017h,007h,00fh,00fh,06fh,005h	; 6c0d  .....<........o.
	defb 000h,002h,0f0h,089h,060h,0b0h,0c8h,074h,0dch,0cch,078h,07ch,0cch,017h,000h,089h	; 6c1d  ....`..t..x|....
	defb 080h,060h,030h,088h,0a0h,0b8h,080h,098h,030h,011h,000h,004h,001h,09bh,002h,005h	; 6c2d  .`0.....0.......
	defb 007h,00bh,01ch,00dh,00ah,01ch,03eh,040h,07fh,0f9h,06fh,0f7h,07ch,03eh,0ffh,027h	; 6c3d  ......>@..o.|>.'
	defb 0c7h,0e8h,0f5h,03bh,01dh,0a3h,040h,040h,080h,005h,000h,08eh,001h,003h,002h,004h	; 6c4d  ...;..@@........
	defb 00bh,003h,007h,00fh,01fh,03fh,000h,066h,0f0h,0f8h,005h,0ffh,098h,05fh,00fh,0c6h	; 6c5d  .....?.f....._..
	defb 0e2h,040h,080h,080h,000h,0fch,0feh,07eh,0dfh,0a3h,0ffh,0ffh,0f3h,045h,0ffh,0bch	; 6c6d  .@.....~.....E..
	defb 008h,005h,002h,002h,001h,006h,000h,002h,080h,097h,040h,060h,0e0h,050h,038h,07ch	; 6c7d  ..........@`.P8|
	defb 002h,0feh,000h,048h,0fch,0fch,0feh,0feh,0ffh,0ffh,0fbh,010h,003h,007h,002h,001h	; 6c8d  ...H............
	defb 001h,009h,000h,088h,080h,0c0h,000h,0e0h,0f0h,0f8h,0fch,000h,000h	; 6c9d  .............

; ----------------------------------------------------------------------
; DATOS grafico_6CAA: RLE de los patrones 224-255 del grafico de jefe 12; lo
;   leen p00:528B (199 bytes)
;   0x6caa..0x6d71  (199 bytes)
DATA_grafico_6CAA:
	defb 007h,000h,002h,001h,004h,003h,083h,001h,003h,005h,005h,000h,08bh,03fh,0ffh,0f7h	; 6caa  .............?..
	defb 0d3h,080h,011h,078h,0fch,0e7h,0e1h,09ah,00fh,000h,081h,003h,007h,000h,089h,00ch	; 6cba  ...x............
	defb 03fh,07fh,0eeh,0a7h,003h,018h,03eh,07fh,005h,000h,002h,080h,089h,000h,080h,040h	; 6cca  ?.....>........@
	defb 0a0h,0e0h,060h,0c0h,0e0h,0e0h,009h,000h,087h,006h,00fh,01ch,02bh,057h,03eh,0e8h	; 6cda  ..`.........+W>.
	defb 009h,000h,086h,080h,040h,000h,0c0h,000h,040h,00bh,000h,0a7h,006h,00fh,01eh,03ch	; 6cea  ....@...@......<
	defb 078h,070h,007h,00bh,00fh,00bh,009h,017h,029h,03eh,05fh,0e7h,069h,0c1h,08fh,0c7h	; 6cfa  xp......)>_.i...
	defb 071h,01fh,0c9h,063h,0b1h,0efh,0f1h,0f8h,03ch,03fh,042h,0afh,0ddh,0e8h,098h,080h	; 6d0a  q..c....<?B.....
	defb 0c0h,0c0h,003h,004h,007h,090h,00fh,01fh,017h,022h,058h,01eh,03fh,07eh,03fh,00fh	; 6d1a  ........."X.?~?.
	defb 000h,03fh,09fh,0cfh,0f0h,0feh,004h,0ffh,09ch,078h,030h,010h,000h,000h,080h,000h	; 6d2a  .?.......x0.....
	defb 0d7h,0cfh,093h,009h,0f9h,077h,0fch,09ch,02ah,0fbh,0e7h,042h,029h,013h,010h,00fh	; 6d3a  .....w..*..B)...
	defb 050h,020h,0c0h,080h,080h,006h,000h,08ah,080h,0c0h,0e0h,010h,0f0h,0a0h,0f6h,0ffh	; 6d4a  P ..............
	defb 0f7h,006h,003h,0f8h,08ah,0dch,086h,018h,03fh,017h,00fh,00fh,000h,0e0h,0c0h,00ah	; 6d5a  ........?.......
	defb 000h,084h,080h,0c0h,0e0h,000h,000h	; 6d6a

; ----------------------------------------------------------------------
; DATOS grafico_6D71: RLE de los patrones 224-255 del grafico de jefe 13; lo
;   leen p00:528B (225 bytes)
;   0x6d71..0x6e52  (225 bytes)
DATA_grafico_6D71:
	defb 008h,000h,098h,001h,003h,003h,007h,007h,005h,004h,002h,003h,007h,006h,005h,007h	; 6d71  ................
	defb 019h,065h,097h,08fh,01dh,016h,093h,030h,03bh,03fh,09ch,009h,000h,002h,001h,004h	; 6d81  .e.....0;?......
	defb 003h,0a1h,001h,000h,001h,003h,003h,001h,006h,01ah,078h,0f2h,0e6h,0e9h,0ech,0cfh	; 6d91  ..........x.....
	defb 0c4h,0c1h,0e3h,0c0h,060h,0e0h,0a0h,070h,0cch,0d3h,0f4h,0f8h,0dch,034h,0e4h,086h	; 6da1  ....`..p.....4..
	defb 0eeh,0feh,01ch,007h,000h,099h,080h,0c0h,060h,060h,0f0h,070h,050h,010h,0a0h,000h	; 6db1  ........``.pP...
	defb 080h,0c0h,0c0h,080h,030h,02ch,00fh,027h,033h,0cbh,09bh,0f9h,011h,0c1h,0e3h,008h	; 6dc1  ....0,.'3.......
	defb 000h,083h,080h,0c0h,0c0h,004h,0e0h,083h,0c0h,002h,001h,004h,000h,002h,001h,099h	; 6dd1  ................
	defb 002h,006h,007h,00ah,01ch,03eh,040h,07fh,02fh,073h,0bch,0aeh,0f1h,0ffh,05fh,08dh	; 6de1  .....>@./s...._.
	defb 0a3h,0ffh,03dh,010h,0a0h,040h,040h,080h,001h,007h,000h,08ah,001h,003h,000h,007h	; 6df1  ..=..@@.........
	defb 00fh,01fh,03fh,000h,0d0h,0bch,004h,07fh,002h,0ffh,09ah,0dfh,008h,0c0h,0e0h,040h	; 6e01  ..?............@
	defb 080h,080h,000h,0fah,0e7h,01fh,03bh,0c7h,0ffh,0feh,0f7h,0f7h,0efh,0dch,0b8h,0c5h	; 6e11  ......;.........
	defb 002h,002h,001h,020h,040h,003h,080h,08dh,040h,0a0h,0e0h,0d0h,038h,0b0h,050h,038h	; 6e21  ... @...@...8.P8
	defb 07ch,002h,0feh,005h,01eh,006h,0ffh,08ah,0fah,0f0h,063h,047h,002h,001h,001h,000h	; 6e31  |.........cG....
	defb 0c0h,080h,003h,000h,08bh,080h,0c0h,040h,020h,0d0h,0c0h,0e0h,0f0h,0f8h,0fch,000h	; 6e41  .......@ .......
	defb 000h	; 6e51

; ----------------------------------------------------------------------
; DATOS grafico_6E52: RLE de los patrones 224-255 del grafico de jefe 14; lo
;   leen p00:528B (208 bytes)
;   0x6e52..0x6f22  (208 bytes)
DATA_grafico_6E52:
	defb 00ah,000h,003h,001h,003h,002h,002h,001h,08eh,007h,00fh,01dh,016h,013h,030h,07bh	; 6e52  ..............0{
	defb 0bfh,05ch,08fh,08bh,014h,0b6h,019h,00dh,000h,003h,001h,003h,000h,09dh,002h,006h	; 6e62  .\..............
	defb 009h,00ch,00fh,004h,041h,0e3h,0f0h,0f4h,0efh,0cfh,0e7h,0c0h,0c0h,0f0h,0f8h,0dch	; 6e72  ....A...........
	defb 034h,0e4h,086h,0efh,0feh,01dh,0f8h,0e8h,014h,036h,0cch,009h,000h,087h,080h,040h	; 6e82  4........6.....@
	defb 0c0h,0c0h,020h,0a0h,020h,003h,000h,08dh,020h,030h,0c8h,098h,0f8h,010h,0c1h,0e3h	; 6e92  .. . ... 0......
	defb 007h,017h,0fbh,0f9h,0f7h,00ah,000h,003h,080h,003h,0c0h,003h,001h,088h,002h,006h	; 6ea2  ................
	defb 007h,00ah,01ch,03eh,040h,07fh,005h,000h,08fh,0cbh,025h,093h,0c7h,0fdh,03fh,015h	; 6eb2  ...>@.....%...?.
	defb 0a3h,041h,041h,081h,001h,002h,003h,001h,004h,000h,087h,001h,003h,000h,007h,00fh	; 6ec2  .AA.............
	defb 01fh,03fh,006h,000h,0abh,0f7h,0fbh,07ch,03eh,00fh,0c6h,0e2h,040h,080h,080h,000h	; 6ed2  .?.....|>...@...
	defb 000h,001h,001h,000h,000h,0f1h,0d2h,024h,0e3h,0f7h,0fch,0b8h,0e5h,0e2h,0e2h,061h	; 6ee2  .......$.......a
	defb 070h,0f0h,030h,070h,0e0h,0c0h,040h,0e0h,0d0h,038h,0b0h,050h,038h,07ch,002h,0feh	; 6ef2  p.0p..@..8.P8|..
	defb 005h,000h,002h,0efh,098h,0dfh,01ch,0b8h,013h,0c7h,082h,0c1h,041h,0c0h,0c0h,0e0h	; 6f02  ............A...
	defb 0e0h,0c0h,000h,080h,080h,040h,020h,0d0h,0c0h,0e0h,0f0h,0f8h,0fch,006h,000h,000h	; 6f12  .....@ .........

; ----------------------------------------------------------------------
; DATOS grafico_6F22: RLE de los patrones 224-255 del grafico de jefe 15; lo
;   leen p00:528B (186 bytes)
;   0x6f22..0x6fdc  (186 bytes)
DATA_grafico_6F22:
	defb 015h,000h,002h,00fh,089h,006h,00dh,013h,02eh,03bh,033h,01eh,03eh,033h,017h,000h	; 6f22  .........;3.>3..
	defb 0a0h,001h,006h,00ch,011h,005h,01dh,001h,019h,00ch,000h,000h,001h,01fh,024h,0d6h	; 6f32  ..............$.
	defb 0fbh,086h,05ch,05eh,0b6h,0d6h,0deh,08ch,04eh,00dh,01ch,07eh,0f3h,05eh,0ach,070h	; 6f42  ..\^....N..~.^.p
	defb 080h,00ch,000h,093h,001h,01bh,03dh,03ch,078h,0e0h,0e0h,0c8h,0e8h,0e0h,0f0h,0f0h	; 6f52  ......=<x.......
	defb 0f6h,000h,01ch,07eh,0fch,0f0h,080h,010h,000h,002h,001h,098h,002h,006h,007h,00ah	; 6f62  ...~............
	defb 01ch,03eh,040h,07fh,03fh,07fh,07eh,0fbh,0c5h,0ffh,0ffh,0cfh,0a2h,0ffh,03dh,010h	; 6f72  .>@.?.~.......=.
	defb 0a0h,040h,040h,080h,008h,000h,0a9h,001h,003h,000h,007h,00fh,01fh,03fh,000h,000h	; 6f82  .@@..........?..
	defb 012h,03fh,03fh,07fh,07fh,0ffh,0ffh,0dfh,008h,0c0h,0e0h,040h,080h,080h,000h,09fh	; 6f92  .??........@....
	defb 0f6h,0efh,03eh,07ch,0ffh,0e4h,0e3h,017h,0afh,0dch,0b8h,0c5h,002h,002h,001h,000h	; 6fa2  ..>|............
	defb 004h,080h,08eh,040h,0a0h,0e0h,0d0h,038h,0b0h,050h,038h,07ch,002h,0feh,066h,00fh	; 6fb2  ...@...8.P8|..f.
	defb 01fh,005h,0ffh,087h,0fah,0f0h,063h,047h,002h,001h,001h,006h,000h,08bh,080h,0c0h	; 6fc2  ......cG........
	defb 040h,020h,0d0h,0c0h,0e0h,0f0h,0f8h,0fch,000h,000h	; 6fd2  @ ........

; ----------------------------------------------------------------------
; DATOS grafico_6FDC: RLE de los patrones 224-255 del grafico de jefe 16; lo
;   leen p00:528B (199 bytes)
;   0x6fdc..0x70a3  (199 bytes)
DATA_grafico_6FDC:
	defb 009h,000h,087h,060h,0f0h,038h,0d4h,0eah,07ch,017h,005h,000h,002h,001h,089h,000h	; 6fdc  ...`.8..|.......
	defb 001h,002h,005h,007h,006h,003h,007h,007h,00ah,000h,086h,060h,0f0h,078h,03ch,01eh	; 6fec  ...........`.x<.
	defb 00eh,009h,000h,086h,001h,002h,000h,003h,000h,002h,006h,000h,08bh,0fch,0ffh,0efh	; 6ffc  ................
	defb 0cbh,001h,088h,01eh,03fh,0e7h,087h,059h,007h,000h,002h,080h,004h,0c0h,083h,080h	; 700c  ....?..Y........
	defb 0c0h,0a0h,007h,000h,089h,030h,0fch,0feh,077h,0e5h,0c0h,018h,07ch,0feh,00fh,000h	; 701c  .....0..w...|...
	defb 086h,0c0h,00ah,004h,003h,001h,001h,006h,000h,097h,001h,003h,007h,008h,00fh,0ebh	; 702c  ................
	defb 0f3h,0c9h,090h,09fh,0eeh,03fh,039h,054h,0dfh,0e7h,042h,094h,0c8h,008h,0f0h,007h	; 703c  .....?9T..B.....
	defb 003h,00ah,000h,089h,001h,003h,007h,000h,005h,06fh,0ffh,0efh,060h,003h,01fh,0adh	; 704c  .........o..`...
	defb 03bh,061h,018h,0fch,0e8h,0f0h,0f0h,000h,093h,0c6h,08dh,0f7h,08fh,01fh,03ch,0fch	; 705c  ;a............<.
	defb 042h,0f5h,0bbh,017h,019h,001h,003h,003h,0e0h,0d0h,0f0h,0d0h,090h,0e8h,094h,07ch	; 706c  B..............|
	defb 0fah,0e7h,096h,083h,0f1h,0e3h,08eh,0f8h,0fch,0f9h,0f3h,00fh,07fh,004h,0ffh,088h	; 707c  ................
	defb 01eh,00ch,008h,000h,000h,001h,000h,0c0h,004h,0e0h,08bh,0f0h,0f8h,0e8h,044h,01ah	; 708c  ..............D.
	defb 078h,0fch,07eh,0fch,0f0h,000h,000h	; 709c

; ----------------------------------------------------------------------
; DATOS grafico_70A3: RLE de los patrones 224-255 del grafico de jefe 17; lo
;   leen p00:528B (220 bytes)
;   0x70a3..0x717f  (220 bytes)
DATA_grafico_70A3:
	defb 009h,000h,097h,001h,002h,006h,006h,004h,002h,002h,000h,000h,001h,006h,005h,02fh	; 70a3  .............../
	defb 077h,07eh,0dfh,065h,0feh,0efh,07bh,07ch,03fh,008h,00ah,000h,081h,001h,003h,003h	; 70b3  w~.e..{|?.......
	defb 002h,001h,003h,000h,09dh,001h,003h,002h,009h,023h,033h,0dbh,00bh,099h,0dch,0cfh	; 70c3  .........#3.....
	defb 0e0h,0f7h,000h,000h,0c0h,060h,090h,0eah,0f7h,0f7h,0adh,072h,07fh,07fh,0ffh,037h	; 70d3  .....`.....r...7
	defb 0feh,0d8h,008h,000h,088h,080h,040h,0a0h,0b0h,010h,010h,020h,020h,003h,000h,08dh	; 70e3  ......@....  ...
	defb 0c0h,0e0h,030h,088h,0cah,0d6h,0ddh,0d8h,09ch,03dh,0f9h,003h,037h,009h,000h,082h	; 70f3  ..0......=..7...
	defb 080h,040h,003h,0e0h,002h,0c0h,002h,001h,004h,000h,085h,001h,005h,002h,006h,017h	; 7103  .@..............
	defb 005h,000h,08fh,013h,004h,080h,080h,047h,0fch,06bh,0bfh,0bbh,0ffh,03dh,082h,00dh	; 7113  .......G.k...=..
	defb 000h,003h,007h,000h,087h,006h,004h,035h,003h,010h,000h,002h,003h,000h,0abh,0efh	; 7123  .......5........
	defb 0ffh,07fh,07fh,038h,007h,0bfh,0ffh,0dfh,00bh,023h,081h,06ch,001h,003h,002h,064h	; 7133  ...8.....#.l...d
	defb 098h,080h,000h,0e1h,0dfh,0beh,0dfh,0dfh,06eh,0bch,078h,0d0h,082h,000h,000h,040h	; 7143  ........n.x....@
	defb 040h,080h,080h,000h,080h,0c0h,0e0h,0d0h,0b8h,094h,005h,000h,081h,0fbh,003h,0ffh	; 7153  @...............
	defb 08eh,01eh,0e0h,0dfh,0ffh,0feh,0dch,0f1h,083h,094h,00bh,000h,090h,080h,080h,004h	; 7163  ................
	defb 000h,087h,0a0h,040h,026h,090h,0c4h,000h,0d0h,003h,000h,000h	; 7173  ...@&.......

; ----------------------------------------------------------------------
; DATOS grafico_717F: RLE de los patrones 224-255 del grafico de jefe 18; lo
;   leen p00:528B (201 bytes)
;   0x717f..0x7248  (201 bytes)
DATA_grafico_717F:
	defb 010h,000h,090h,003h,005h,006h,005h,007h,002h,043h,063h,07eh,05bh,067h,03dh,02bh	; 717f  .........Cc~[g=+
	defb 03eh,07bh,0ddh,011h,000h,002h,003h,09dh,002h,000h,001h,000h,000h,021h,03fh,01fh	; 718f  >{...........!?.
	defb 00fh,01fh,01fh,00ch,023h,0c0h,060h,0a0h,0a0h,020h,0c0h,041h,0d3h,0bfh,0edh,0f3h	; 719f  ....#.`.. .A....
	defb 0feh,0fah,03eh,0afh,05ch,00fh,000h,091h,080h,000h,080h,0c0h,040h,0c0h,000h,080h	; 71af  ..>.\.......@...
	defb 000h,0c2h,0feh,0fch,0f8h,0fch,0fch,058h,0e3h,010h,000h,002h,001h,003h,002h,003h	; 71bf  .......X........
	defb 001h,085h,002h,007h,007h,008h,002h,003h,000h,08fh,022h,000h,040h,087h,0ffh,0dfh	; 71cf  ..........".@...
	defb 0dch,0adh,0afh,0f6h,01fh,003h,041h,006h,010h,003h,000h,003h,001h,088h,000h,004h	; 71df  ......A.........
	defb 000h,009h,002h,000h,03ch,002h,003h,000h,0ach,0dfh,0ffh,0bfh,078h,042h,03fh,07fh	; 71ef  ....<.......xB?.
	defb 0f7h,053h,00bh,060h,010h,0e8h,006h,0b1h,002h,0a0h,002h,081h,0f8h,07fh,05fh,0feh	; 71ff  .S.`.........._.
	defb 0dfh,0f3h,0e7h,0ech,078h,0c2h,094h,020h,000h,040h,040h,0a0h,0a0h,0e0h,0c0h,040h	; 720f  ....x.. .@@....@
	defb 0e0h,0d0h,038h,010h,0c0h,004h,000h,0a0h,0ffh,0fdh,07eh,007h,0e8h,0b7h,0dfh,0ffh	; 721f  ..8.......~.....
	defb 0feh,0d8h,091h,080h,032h,014h,063h,030h,080h,080h,040h,040h,000h,000h,090h,050h	; 722f  ....2.c0..@@...P
	defb 026h,010h,024h,0c0h,030h,080h,000h,000h,000h	; 723f  &.$.0....

; ----------------------------------------------------------------------
; DATOS grafico_7248: RLE de los patrones 224-255 del grafico de jefe 19; lo
;   leen p00:528B (179 bytes)
;   0x7248..0x72fb  (179 bytes)
DATA_grafico_7248:
	defb 087h,038h,07eh,0cfh,07ah,035h,00eh,001h,00bh,000h,094h,080h,0f8h,024h,06bh,0dfh	; 7248  .8~.z5.......$k.
	defb 061h,03ah,01ah,02dh,03bh,07bh,071h,072h,0d0h,000h,038h,07eh,03fh,00fh,001h,00dh	; 7258  a:.-;{qr..8~?...
	defb 000h,08dh,080h,0d8h,0bch,03dh,01eh,007h,007h,013h,017h,027h,02fh,00fh,02fh,005h	; 7268  .....=.....'/./.
	defb 000h,088h,080h,040h,0a0h,0d0h,0e8h,074h,0fch,0feh,003h,07eh,016h,000h,08ah,080h	; 7278  ...@...t...~....
	defb 0c0h,060h,070h,0b8h,0a8h,084h,094h,084h,0a0h,011h,000h,004h,001h,087h,002h,005h	; 7288  .`p.............
	defb 007h,00bh,03fh,000h,002h,004h,000h,08eh,090h,000h,049h,080h,0eeh,0ffh,07fh,0ffh	; 7298  ..?.......I.....
	defb 0eeh,077h,09fh,007h,002h,010h,007h,000h,087h,001h,003h,00ah,004h,02bh,004h,002h	; 72a8  .w...........+..
	defb 004h,000h,09dh,06fh,0ffh,0f6h,07fh,09fh,0e0h,0eeh,0fdh,05fh,00fh,0c6h,032h,000h	; 72b8  ...o......._..2.
	defb 011h,000h,000h,0dch,0f8h,06ch,03ah,043h,0c1h,07fh,0f7h,047h,0ffh,0bch,001h,060h	; 72c8  .....l:C...G...`
	defb 009h,000h,002h,080h,084h,040h,064h,0d0h,080h,004h,000h,08dh,028h,000h,0d0h,0fch	; 72d8  .....@d.....(...
	defb 0feh,03eh,0c0h,0fdh,0fbh,010h,044h,0ebh,060h,00bh,000h,084h,0b0h,0c4h,010h,080h	; 72e8  .>....D.`.......
	defb 004h,000h,000h	; 72f8

; ----------------------------------------------------------------------
; DATOS grafico_72FB: RLE de los patrones 224-255 del grafico de jefe 20; lo
;   leen p00:528B (200 bytes)
;   0x72fb..0x73c3  (200 bytes)
DATA_grafico_72FB:
	defb 00ah,000h,002h,001h,002h,002h,082h,003h,006h,004h,000h,08ch,020h,07ch,072h,07dh	; 72fb  ............ |r}
	defb 07eh,0d8h,063h,0f7h,0bbh,03fh,0efh,042h,00ch,000h,002h,001h,082h,000h,001h,006h	; 730b  ~.c..?.B........
	defb 000h,08ah,02ch,02eh,037h,03fh,09fh,0cdh,0fch,0e0h,01ch,0bfh,008h,000h,084h,080h	; 731b  ..,.7?..........
	defb 0c0h,020h,0e0h,004h,0f0h,009h,000h,087h,006h,00fh,01ch,02bh,057h,03eh,0e8h,00ah	; 732b  . .........+W>..
	defb 000h,085h,0c0h,040h,020h,0a0h,020h,00bh,000h,092h,006h,00fh,01eh,03ch,078h,070h	; 733b  ...@ . ......<xp
	defb 004h,008h,00ah,00ch,00fh,017h,02bh,03fh,02fh,0fdh,002h,008h,004h,000h,09ch,081h	; 734b  ......+?/.......
	defb 003h,031h,00fh,073h,0feh,0fbh,0ffh,0b9h,0dfh,07eh,01ch,009h,040h,000h,000h,003h	; 735b  .1.s.....~..@...
	defb 007h,007h,003h,004h,00fh,01fh,017h,011h,0ach,013h,008h,004h,000h,09dh,07fh,0ffh	; 736b  ................
	defb 0cfh,0f0h,0feh,001h,076h,0efh,07fh,03ch,019h,0cbh,001h,044h,000h,000h,0d7h,0cfh	; 737b  ....v..<...D....
	defb 093h,009h,0f9h,01fh,0fch,0bch,01dh,0fdh,0f3h,006h,080h,003h,000h,08bh,050h,020h	; 738b  ..............P
	defb 0c0h,080h,080h,000h,000h,040h,002h,090h,044h,005h,000h,08dh,0a0h,0f6h,0ffh,0f7h	; 739b  .....@..D.......
	defb 006h,0e0h,000h,0e8h,0eeh,043h,010h,0aeh,080h,003h,000h,082h,0e0h,0c0h,005h,000h	; 73ab  .....C..........
	defb 084h,040h,0c2h,010h,044h,005h,000h,000h	; 73bb  .@..D...

; ----------------------------------------------------------------------
; DATOS grafico_73C3: RLE de los patrones 224-255 del grafico de jefe 21; lo
;   leen p00:528B (224 bytes)
;   0x73c3..0x74a3  (224 bytes)
DATA_grafico_73C3:
	defb 008h,000h,094h,001h,003h,003h,007h,007h,005h,004h,002h,003h,007h,006h,005h,007h	; 73c3  ................
	defb 05bh,0e3h,0f6h,0bch,05ah,045h,0e7h,003h,03fh,081h,0bdh,009h,000h,002h,001h,004h	; 73d3  [...ZE..?.......
	defb 003h,09dh,001h,000h,001h,003h,003h,001h,004h,01ch,049h,063h,0b7h,0beh,09bh,0d0h	; 73e3  ..........Ic....
	defb 0d2h,0d8h,0ceh,0c0h,060h,0e0h,0a0h,070h,0cdh,063h,0b7h,05eh,0edh,071h,0fbh,003h	; 73f3  ....`..p.c.^.q..
	defb 0feh,081h,0deh,006h,000h,002h,080h,098h,0c0h,060h,060h,0f0h,070h,050h,010h,0a0h	; 7403  .........``.pP..
	defb 000h,080h,0c0h,0c0h,080h,030h,09ch,0c9h,0e3h,076h,0beh,0ech,085h,0a5h,08dh,039h	; 7413  .....0...v.....9
	defb 009h,000h,002h,0c0h,004h,0e0h,083h,0c0h,002h,001h,004h,000h,002h,001h,084h,00ah	; 7423  ................
	defb 006h,001h,003h,004h,000h,091h,01dh,05fh,0cch,087h,0c8h,0f8h,077h,0edh,0a3h,0ffh	; 7433  ......._....w...
	defb 019h,004h,002h,005h,000h,000h,001h,005h,000h,086h,00ah,000h,00dh,021h,008h,003h	; 7443  .............!..
	defb 004h,000h,0a2h,0e2h,0b0h,03bh,07fh,03fh,047h,0f8h,0ffh,0dfh,008h,066h,00bh,061h	; 7453  .....;.?G....f.a
	defb 007h,000h,000h,0dch,0fdh,099h,070h,009h,08fh,0feh,0f7h,0f7h,0efh,0d0h,0a2h,040h	; 7463  ......p........@
	defb 020h,000h,000h,020h,040h,003h,080h,086h,040h,0a0h,0e4h,0d0h,078h,010h,005h,000h	; 7473   .. @...@...x...
	defb 092h,0a3h,006h,06eh,0ffh,0feh,071h,00fh,0bfh,0fah,0f0h,064h,05ah,00ch,038h,000h	; 7483  ...n..q....dZ.8.
	defb 000h,0c0h,080h,003h,000h,087h,080h,0c0h,054h,020h,050h,000h,0c0h,004h,000h,000h	; 7493  ........T P.....

; ----------------------------------------------------------------------
; DATOS grafico_74A3: RLE de los patrones 224-255 del grafico de jefe 22; lo
;   leen p00:528B (198 bytes)
;   0x74a3..0x7569  (198 bytes)
DATA_grafico_74A3:
	defb 00ah,000h,003h,001h,003h,002h,090h,041h,0e3h,0f6h,0bch,0dah,045h,067h,03fh,07fh	; 74a3  .......A....Eg?.
	defb 0bfh,07dh,09dh,08fh,014h,0b7h,018h,00dh,000h,003h,001h,002h,000h,09fh,041h,063h	; 74b3  .}............Ac
	defb 037h,03eh,01bh,010h,012h,058h,0ceh,0e2h,0f0h,0ebh,0cfh,0e7h,0c1h,063h,0b7h,05eh	; 74c3  7>...X.......c.^
	defb 0edh,071h,0fbh,0feh,0ffh,0feh,0dfh,0dch,0f8h,094h,076h,00ch,000h,003h,080h,005h	; 74d3  .q........v.....
	defb 000h,097h,080h,040h,0c0h,0c0h,020h,0a0h,020h,000h,080h,0c1h,0e3h,076h,0beh,0ech	; 74e3  ...@.. . ....v..
	defb 084h,0a4h,08dh,039h,0a3h,007h,06bh,0f9h,0f7h,00ah,000h,003h,080h,003h,0c0h,002h	; 74f3  ...9..k.........
	defb 001h,083h,049h,006h,026h,00bh,000h,097h,0cch,027h,093h,0c7h,0fdh,07fh,045h,007h	; 7503  ..I.&....'....E.
	defb 001h,001h,005h,001h,002h,003h,001h,000h,006h,020h,048h,005h,023h,000h,003h,009h	; 7513  ......... H.#...
	defb 000h,0a7h,0f3h,0f8h,07ch,03eh,00fh,066h,032h,008h,000h,024h,004h,000h,001h,001h	; 7523  ....|>.f2..$....
	defb 000h,000h,091h,0f2h,0e4h,0e3h,0f6h,0fch,0bah,0e8h,0e0h,0f4h,060h,070h,0f0h,030h	; 7533  ............`p.0
	defb 070h,0e0h,0d0h,042h,0e0h,0d2h,078h,000h,040h,009h,000h,097h,06fh,00fh,0dfh,01ch	; 7543  p..B..x.@...o...
	defb 0b8h,010h,0c2h,098h,0c0h,058h,0c0h,0c0h,0e0h,0e0h,0c0h,000h,094h,09ah,040h,022h	; 7553  .....X........@"
	defb 050h,080h,040h,009h,000h,000h	; 7563

; ----------------------------------------------------------------------
; DATOS grafico_7569: RLE de los patrones 224-255 del grafico de jefe 23; lo
;   leen p00:528B (178 bytes)
;   0x7569..0x761b  (178 bytes)
DATA_grafico_7569:
	defb 015h,000h,088h,001h,002h,005h,00bh,017h,02eh,03fh,07fh,003h,07eh,016h,000h,0a1h	; 7569  .........?..~...
	defb 001h,003h,006h,00eh,01dh,015h,021h,029h,021h,005h,000h,000h,001h,01fh,024h,0d6h	; 7579  ......!)!.....$.
	defb 0fbh,086h,05ch,058h,0b4h,0dch,0deh,08eh,04eh,00bh,01ch,07eh,0f3h,05eh,0ach,070h	; 7589  ..\X....N..~.^.p
	defb 080h,00ch,000h,093h,001h,01bh,03dh,0bch,078h,0e0h,0e0h,0c8h,0e8h,0e4h,0f4h,0f0h	; 7599  ......=.x.......
	defb 0f4h,000h,01ch,07eh,0fch,0f0h,080h,010h,000h,002h,001h,084h,002h,026h,00bh,001h	; 75a9  ...~.........&..
	defb 004h,000h,08dh,03bh,01fh,036h,05ch,0c2h,083h,0feh,0efh,0e2h,0ffh,03dh,080h,006h	; 75b9  ...;.6\......=..
	defb 00bh,000h,084h,00dh,023h,008h,001h,004h,000h,08dh,014h,000h,00bh,03fh,07fh,07ch	; 75c9  ....#........?.|
	defb 003h,0bfh,0dfh,008h,022h,0d7h,006h,003h,000h,08eh,009h,000h,092h,001h,077h,0ffh	; 75d9  ....".........w.
	defb 0feh,0ffh,077h,0eeh,0f9h,0e0h,040h,008h,003h,000h,004h,080h,087h,040h,0a0h,0e0h	; 75e9  ..w...@......@..
	defb 0d0h,0fch,000h,040h,004h,000h,08eh,0f6h,0ffh,06fh,0feh,0f9h,007h,077h,0bfh,0fah	; 75f9  ...@.....o...w..
	defb 0f0h,063h,04ch,000h,088h,007h,000h,087h,080h,0c0h,050h,020h,0d4h,020h,040h,004h	; 7609  .cL.......P . @.
	defb 000h,000h	; 7619

; ----------------------------------------------------------------------
; DATOS grafico_761B: RLE de los patrones 224-255 del grafico de jefe 24; lo
;   leen p00:528B (200 bytes)
;   0x761b..0x76e3  (200 bytes)
DATA_grafico_761B:
	defb 009h,000h,087h,060h,0f0h,038h,0d4h,0eah,07ch,017h,008h,000h,084h,001h,003h,004h	; 761b  ...`.8..|.......
	defb 007h,004h,00fh,00ah,000h,086h,060h,0f0h,078h,03ch,01eh,00eh,00ah,000h,085h,003h	; 762b  ......`.x<......
	defb 002h,004h,005h,004h,005h,000h,08ch,004h,03eh,04eh,0beh,07eh,01bh,0c6h,0efh,0ddh	; 763b  ........>N.~....
	defb 0fch,0f7h,042h,00ah,000h,002h,080h,002h,040h,082h,0c0h,060h,006h,000h,08ah,034h	; 764b  ..B.....@..`...4
	defb 074h,0ech,0fch,0f9h,0b3h,03fh,007h,038h,0fdh,00ch,000h,002h,080h,08dh,000h,080h	; 765b  t....?.8........
	defb 00ah,004h,003h,001h,001h,000h,000h,002h,040h,009h,022h,005h,000h,08dh,0ebh,0f3h	; 766b  ........@.".....
	defb 0c9h,090h,09fh,0f8h,03fh,03dh,0b8h,0bfh,0cfh,060h,001h,003h,000h,082h,007h,003h	; 767b  ....?=...`......
	defb 005h,000h,084h,002h,043h,008h,022h,005h,000h,08dh,005h,06fh,0ffh,0efh,060h,007h	; 768b  ....C."....o..`.
	defb 000h,017h,077h,0c2h,008h,075h,001h,003h,000h,09ch,081h,0c0h,08ch,0f0h,0ceh,07fh	; 769b  ..w..u..........
	defb 0dfh,0ffh,09dh,0fbh,07eh,038h,090h,002h,000h,000h,020h,010h,050h,030h,0f0h,0e8h	; 76ab  ....~8.... .P0..
	defb 0d4h,0fch,0f4h,0bfh,040h,010h,004h,000h,09ch,0feh,0ffh,0f3h,00fh,07fh,080h,06eh	; 76bb  ....@..........n
	defb 0f7h,0feh,03ch,098h,0d3h,080h,022h,000h,000h,0c0h,0e0h,0e0h,0c0h,020h,0f0h,0f8h	; 76cb  ..<..."...... ..
	defb 0e8h,088h,035h,0c8h,010h,004h,000h,000h	; 76db  ..5.....

; ----------------------------------------------------------------------
; DATOS jefe_76E3: RLE de 256 bytes: juego 0 del jefe 2 (p00:4BB4); lo leen
;   p00:4BB4, p00:528B (228 bytes)
;   0x76e3..0x77c7  (228 bytes)
DATA_jefe_76E3:
	defb 007h,000h,004h,001h,095h,00fh,015h,02eh,03eh,028h,003h,00dh,01bh,031h,063h,0f1h	; 76e3  ........>(...1c.
	defb 0c2h,056h,0bdh,06dh,07fh,0bdh,09bh,0cfh,02fh,055h,00ch,000h,081h,00eh,003h,01fh	; 76f3  .V.m..../U......
	defb 0a0h,000h,003h,00fh,01fh,03fh,07fh,07fh,0bfh,0ffh,0dfh,0c0h,063h,07fh,030h,0d0h	; 7703  .....?......c.0.
	defb 0ebh,0c0h,0b0h,0c8h,08ch,0c6h,08fh,043h,06ah,0bdh,0b6h,0feh,0bdh,0d9h,0f3h,0f4h	; 7713  .......Cj.......
	defb 0aah,007h,000h,003h,080h,096h,0e0h,090h,028h,074h,024h,002h,000h,0c0h,0f0h,0f8h	; 7723  ........(t$.....
	defb 0fch,0feh,0feh,0fdh,0ffh,0fbh,003h,0c6h,0feh,00ch,00bh,0d7h,00bh,000h,0a6h,060h	; 7733  ...............`
	defb 0f0h,0f8h,0f8h,0fch,050h,05bh,07bh,07fh,05bh,047h,023h,02eh,01dh,01eh,010h,01bh	; 7743  ....P[{.[G#.....
	defb 00fh,008h,00fh,000h,0ffh,07ch,03fh,09eh,041h,0beh,0e4h,0ffh,07fh,01fh,08fh,030h	; 7753  .....|?.A......0
	defb 010h,0a0h,0c0h,000h,02fh,004h,03ch,0c8h,038h,01eh,01fh,00eh,001h,00fh,007h,000h	; 7763  ..../.<.8.......
	defb 007h,000h,000h,0f0h,0ffh,0ffh,07fh,0beh,041h,01fh,000h,080h,0e0h,0f0h,0c0h,0e0h	; 7773  ........A.......
	defb 0c0h,000h,000h,0ffh,09eh,0fch,0f9h,0c2h,0bdh,097h,0ffh,0feh,0f8h,0e4h,003h,002h	; 7783  ................
	defb 001h,001h,000h,02ah,0ddh,0ddh,0edh,0aah,064h,068h,0f0h,028h,078h,0b4h,042h,002h	; 7793  ...*....dh.(x.B.
	defb 01dh,07fh,0feh,00fh,07fh,0ffh,07eh,03dh,042h,078h,000h,001h,007h,003h,000h,001h	; 77a3  ......~=Bx......
	defb 003h,000h,090h,0dch,03eh,03eh,01eh,07ch,0f8h,0f0h,000h,0f0h,0f0h,078h,0bch,0fch	; 77b3  ....>>.|.....x..
	defb 0feh,0feh,000h,000h	; 77c3

; ----------------------------------------------------------------------
; DATOS jefe_77C7: RLE de 256 bytes: juego 1 del jefe 2 (p00:4BB4); lo leen
;   p00:4BB4, p00:528B (225 bytes)
;   0x77c7..0x78a8  (225 bytes)
DATA_jefe_77C7:
	defb 007h,000h,002h,001h,097h,000h,007h,009h,014h,02eh,024h,040h,000h,00fh,011h,027h	; 77c7  ..........$@...'
	defb 04fh,09fh,09fh,00bh,08dh,0f0h,0c0h,01ch,07fh,0feh,0ffh,07fh,00bh,000h,090h,006h	; 77d7  O...............
	defb 00fh,01fh,01fh,03fh,000h,000h,00fh,01fh,03fh,07fh,07fh,0ffh,077h,00fh,03fh,005h	; 77e7  ...?....?...w.?.
	defb 0ffh,090h,000h,0f0h,0c8h,0f4h,0fah,0fdh,0fdh,0e8h,0d9h,007h,001h,038h,07eh,0ffh	; 77f7  .............8~.
	defb 0feh,0feh,007h,000h,002h,080h,092h,000h,080h,0f0h,028h,074h,07ch,014h,000h,000h	; 7807  ..........(t|...
	defb 0f0h,0f8h,0fch,0feh,0feh,0ffh,0f6h,0f8h,0feh,005h,0ffh,00ch,000h,081h,0f0h,003h	; 7817  ................
	defb 0f8h,0a8h,054h,0bah,0bbh,0b7h,051h,023h,014h,00bh,016h,014h,018h,019h,011h,008h	; 7827  ..T...Q#........
	defb 013h,01ch,0ffh,07eh,03fh,01eh,080h,0f8h,0ffh,0ffh,03fh,01fh,0cfh,0f0h,010h,0d0h	; 7837  ...~?.....?.....
	defb 020h,040h,03bh,07dh,07ch,078h,03eh,01ch,00bh,007h,003h,00fh,085h,00eh,00fh,007h	; 7847   @;}|x>.........
	defb 00ch,003h,004h,0ffh,0ach,07fh,007h,000h,000h,0c0h,0e0h,030h,0c0h,0e0h,020h,0c0h	; 7857  ...........0.. .
	defb 080h,0ffh,0feh,0fch,078h,001h,00fh,0ffh,0ffh,0fch,0f8h,0e4h,003h,002h,001h,000h	; 7867  ....x...........
	defb 000h,00ah,05ah,05eh,0feh,0dah,0c2h,0e4h,074h,03ch,008h,024h,066h,011h,001h,0feh	; 7877  ..Z^....t<.$f...
	defb 000h,004h,0ffh,089h,0feh,0f0h,000h,000h,003h,007h,003h,000h,001h,003h,000h,083h	; 7887  ................
	defb 0f4h,0bch,0bch,003h,03ch,08ah,058h,0c8h,0e0h,0f0h,0f8h,0f8h,0feh,0feh,000h,000h	; 7897  ....<.X.........
	defb 000h	; 78a7

; ----------------------------------------------------------------------
; DATOS jefe_78A8: RLE de 256 bytes: juego 2 del jefe 2 (p00:4BB4); lo leen
;   p00:4BB4, p00:528B (214 bytes)
;   0x78a8..0x797e  (214 bytes)
DATA_jefe_78A8:
	defb 006h,000h,002h,001h,083h,002h,003h,003h,003h,001h,002h,000h,090h,003h,00fh,01eh	; 78a8  ................
	defb 03fh,07ch,0f0h,0c6h,0d9h,077h,0deh,0feh,0fch,0e9h,037h,0feh,07ah,008h,000h,002h	; 78b8  ?|...w....7.z...
	defb 001h,007h,000h,09fh,003h,00fh,01fh,03fh,07fh,0ffh,0ffh,0f9h,063h,007h,0bfh,01eh	; 78c8  .......?....c...
	defb 0c8h,001h,005h,0c0h,0b0h,018h,00ch,046h,086h,00ah,003h,065h,0dah,05ah,0fbh,08dh	; 78d8  .......F...e.Z..
	defb 037h,07bh,031h,00dh,000h,087h,080h,0c0h,060h,000h,0c0h,0f0h,0f8h,003h,0fch,089h	; 78e8  7{1.....`.......
	defb 0feh,09eh,06ch,0e4h,006h,076h,0fbh,0fdh,0feh,00eh,000h,082h,080h,0c0h,006h,000h	; 78f8  ..l..v..........
	defb 09ah,001h,003h,006h,00fh,00ah,004h,003h,004h,00fh,00fh,078h,0b3h,09fh,07bh,05bh	; 7908  ...........x..{[
	defb 068h,0b4h,09fh,0cfh,043h,007h,018h,098h,048h,090h,0e0h,007h,000h,0aeh,001h,003h	; 7918  h...C...H.......
	defb 007h,007h,003h,000h,003h,007h,000h,03fh,07ch,073h,007h,037h,017h,04bh,0e0h,0f0h	; 7928  .......?|s.7.K..
	defb 0fch,0f8h,0e0h,070h,0f0h,0e0h,000h,0c4h,09eh,0beh,09dh,07ah,03ch,0c3h,0ffh,0ffh	; 7938  ...p.......z<...
	defb 0fch,0f8h,004h,002h,001h,001h,000h,0d0h,090h,090h,020h,020h,003h,0c0h,095h,060h	; 7948  ..........  ...`
	defb 0f0h,038h,014h,006h,08ah,0f4h,0f8h,03fh,07fh,07fh,0feh,0fdh,0c3h,03ch,000h,000h	; 7958  .8.....?.....<..
	defb 003h,007h,003h,001h,003h,000h,003h,060h,002h,0c0h,003h,000h,088h,0c0h,0e0h,0f0h	; 7968  .......`........
	defb 0f8h,0fch,07ch,0f8h,000h,000h	; 7978

; ----------------------------------------------------------------------
; DATOS jefe_797E: RLE de 256 bytes: juego 3 del jefe 2 (p00:4BB4); lo leen
;   p00:4BB4, p00:528B (184 bytes)
;   0x797e..0x7a36  (184 bytes)
DATA_jefe_797E:
	defb 006h,000h,002h,001h,083h,002h,003h,003h,003h,001h,002h,000h,090h,003h,00fh,01eh	; 797e  ................
	defb 03fh,07ch,0f0h,0c6h,0d9h,077h,0deh,0feh,0fch,0e9h,037h,0feh,07ah,008h,000h,002h	; 798e  ?|...w....7.z...
	defb 001h,007h,000h,09fh,003h,00fh,01fh,03fh,07fh,0ffh,0ffh,0f9h,063h,007h,0bfh,01eh	; 799e  .......?....c...
	defb 0c8h,001h,005h,0c0h,0b0h,018h,00ch,046h,086h,00ah,003h,065h,0dah,05ah,0fbh,08dh	; 79ae  .......F...e.Z..
	defb 037h,07bh,031h,00dh,000h,087h,080h,0c0h,060h,000h,0c0h,0f0h,0f8h,003h,0fch,089h	; 79be  7{1.....`.......
	defb 0feh,09eh,06ch,0e4h,006h,076h,0fbh,0fdh,0feh,00eh,000h,085h,080h,0c0h,000h,001h	; 79ce  ..l..v..........
	defb 001h,00dh,000h,090h,0f1h,067h,03fh,0f7h,0b6h,050h,029h,03fh,039h,078h,078h,031h	; 79de  .....g?..P)?9xx1
	defb 01ch,02dh,059h,062h,010h,000h,0a5h,07eh,0f8h,0e6h,00fh,06fh,02fh,016h,000h,01eh	; 79ee  .-Yb...~...o/...
	defb 03fh,03fh,01fh,00fh,01eh,03eh,03ch,089h,03dh,07dh,03ah,0f4h,079h,087h,0ffh,0ffh	; 79fe  ??...><.=}:.y...
	defb 07ah,07eh,0c9h,0c7h,069h,056h,048h,0a0h,020h,020h,040h,040h,003h,080h,008h,000h	; 7a0e  z~..iVH.  @@....
	defb 090h,07eh,0feh,0feh,0fdh,0fbh,086h,078h,000h,000h,084h,08ch,03eh,03eh,01eh,038h	; 7a1e  .~.....x....>>.8
	defb 030h,003h,0c0h,002h,080h,00bh,000h,000h	; 7a2e  0.......

; ----------------------------------------------------------------------
; DATOS jefe_7A36: RLE de 256 bytes: juego 0 del jefe 3 (p00:4BB4); lo leen
;   p00:4BB4, p00:528B (217 bytes)
;   0x7a36..0x7b0f  (217 bytes)
DATA_jefe_7A36:
	defb 009h,000h,08fh,001h,003h,007h,007h,00fh,00dh,01bh,067h,0d8h,0b5h,07fh,075h,03fh	; 7a36  ..........g...u?
	defb 03fh,07fh,005h,0ffh,083h,0efh,0cfh,0ach,00eh,000h,08ah,002h,004h,000h,027h,04fh	; 7a46  ?.............'O
	defb 013h,00ah,000h,004h,003h,005h,000h,08ch,010h,03ah,057h,0cch,036h,05ah,0fch,05ch	; 7a56  .........:W.6Z.\
	defb 0feh,0feh,0fbh,0fdh,004h,0ffh,083h,0bfh,0ffh,0bfh,008h,000h,091h,080h,0e0h,070h	; 7a66  ...............p
	defb 0f8h,0f8h,0fch,0bch,05ch,000h,0c8h,0e4h,090h,0a0h,000h,040h,084h,002h,004h,000h	; 7a76  ....\......@....
	defb 083h,040h,000h,0c0h,00ah,000h,081h,080h,003h,000h,095h,040h,0a0h,01bh,03fh,037h	; 7a86  .@.........@..?7
	defb 03fh,01fh,00fh,00fh,007h,007h,00eh,00fh,00fh,007h,009h,00fh,000h,0f3h,0eeh,0fdh	; 7a96  ?...............
	defb 004h,0ffh,093h,07fh,0ffh,0fdh,0ffh,0f7h,0f1h,0e0h,0c0h,000h,004h,000h,008h,000h	; 7aa6  ................
	defb 000h,006h,002h,000h,000h,001h,003h,000h,086h,006h,000h,000h,00dh,011h,002h,004h	; 7ab6  ................
	defb 000h,083h,080h,000h,002h,006h,000h,0b7h,077h,0bfh,07dh,0fch,0dfh,0ffh,07eh,0ffh	; 7ac6  ........w.}...~.
	defb 0feh,0efh,05fh,0ffh,0f7h,064h,006h,003h,0bch,0f8h,078h,070h,0e0h,070h,0b0h,0d8h	; 7ad6  .._..d....xp.p..
	defb 098h,018h,0b8h,0f8h,0dch,0ech,0ech,0d8h,088h,041h,083h,003h,020h,000h,083h,001h	; 7ae6  .........A.. ...
	defb 001h,010h,0a0h,000h,000h,003h,001h,000h,040h,000h,080h,080h,000h,080h,0c0h,003h	; 7af6  ........@.......
	defb 0e0h,086h,040h,000h,020h,018h,0f0h,060h,000h	; 7b06  ..@. ..`.

; ----------------------------------------------------------------------
; DATOS jefe_7B0F: RLE de 256 bytes: juego 1 del jefe 3 (p00:4BB4); lo leen
;   p00:4BB4, p00:528B (196 bytes)
;   0x7b0f..0x7bd3  (196 bytes)
DATA_jefe_7B0F:
	defb 009h,000h,097h,001h,003h,007h,007h,00fh,00dh,01bh,067h,0dch,0bbh,07fh,077h,03fh	; 7b0f  ..........g...w?
	defb 03fh,07fh,0feh,0f5h,0cbh,0ffh,0ffh,0efh,0ffh,0ffh,00eh,000h,087h,002h,004h,000h	; 7b1f  ?...............
	defb 023h,044h,000h,008h,003h,000h,098h,001h,00ah,034h,000h,000h,010h,000h,000h,0cch	; 7b2f  #D.......4......
	defb 036h,0dah,0fch,0dch,0feh,0deh,07bh,0bdh,0f7h,04dh,0afh,00fh,02fh,0afh,0efh,008h	; 7b3f  6.....{..M../...
	defb 000h,098h,080h,0e0h,070h,0f8h,0f8h,0fch,0bch,05ch,000h,0c8h,064h,000h,020h,000h	; 7b4f  ....p....\..d. .
	defb 020h,084h,042h,008h,0b2h,050h,0f0h,0d0h,050h,010h,00ah,000h,081h,080h,003h,000h	; 7b5f   .B..P..P.......
	defb 094h,040h,0a0h,01bh,03fh,037h,03fh,01fh,00dh,00dh,007h,00fh,00eh,00fh,007h,00fh	; 7b6f  .@..?7?.........
	defb 00fh,007h,000h,0ffh,0feh,005h,0ffh,093h,07fh,0ffh,0fdh,0ffh,0ffh,0fbh,0f0h,0e0h	; 7b7f  ................
	defb 000h,004h,000h,008h,000h,000h,006h,002h,000h,000h,001h,007h,000h,081h,001h,005h	; 7b8f  ................
	defb 000h,083h,080h,000h,002h,006h,000h,081h,0f7h,008h,0ffh,08bh,0efh,05fh,0ffh,0f7h	; 7b9f  ............._..
	defb 067h,007h,003h,0fch,0f8h,0f8h,0f0h,003h,0e0h,002h,0f0h,088h,0d0h,0b8h,0f8h,0dch	; 7baf  g...............
	defb 0ech,0ech,0d8h,008h,008h,000h,082h,010h,0a0h,00eh,000h,087h,020h,040h,000h,020h	; 7bbf  ............ @.
	defb 018h,010h,060h,000h	; 7bcf

; ----------------------------------------------------------------------
; DATOS jefe_7BD3: RLE de 256 bytes: juego 2 del jefe 3 (p00:4BB4); lo leen
;   p00:4BB4, p00:528B (197 bytes)
;   0x7bd3..0x7c98  (197 bytes)
DATA_jefe_7BD3:
	defb 089h,001h,003h,005h,00fh,00eh,007h,007h,00eh,007h,003h,000h,09ch,001h,003h,007h	; 7bd3  ................
	defb 00fh,0beh,0bbh,0ffh,09ah,0efh,0dfh,0b7h,0ffh,0ddh,0bdh,0dbh,0f7h,0cch,07fh,0f5h	; 7be3  ................
	defb 0fdh,000h,000h,003h,006h,001h,000h,001h,007h,003h,000h,081h,001h,004h,000h,090h	; 7bf3  ................
	defb 040h,0cch,064h,065h,010h,060h,0c8h,000h,022h,042h,024h,008h,073h,080h,00eh,00fh	; 7c03  @.de.`.."B$.s...
	defb 003h,000h,08dh,080h,0c0h,070h,0d8h,0c8h,0e4h,0cch,0bch,00ch,03ch,01ch,0beh,0feh	; 7c13  .....p......<...
	defb 015h,000h,08ah,080h,020h,030h,018h,030h,040h,0f0h,0c0h,0f0h,040h,011h,000h,089h	; 7c23  .... 0.0@...@...
	defb 017h,01bh,017h,01bh,003h,007h,006h,006h,005h,003h,00fh,085h,00bh,01dh,01eh,01fh	; 7c33  ................
	defb 0fbh,004h,0ffh,08eh,07fh,0f3h,0fdh,0f7h,0ffh,0f8h,0e0h,0f0h,0f0h,060h,0e0h,008h	; 7c43  .............`..
	defb 00ch,008h,003h,000h,002h,001h,081h,002h,003h,000h,085h,004h,006h,00fh,004h,00ch	; 7c53  ................
	defb 004h,000h,08bh,080h,00ch,002h,008h,000h,000h,010h,000h,000h,080h,000h,007h,0ffh	; 7c63  ................
	defb 089h,07fh,0dfh,0ffh,077h,03fh,013h,027h,03fh,01fh,003h,000h,005h,080h,083h,0c0h	; 7c73  ....w?.'?.......
	defb 0e0h,0e0h,003h,0f0h,082h,0e0h,080h,007h,000h,088h,080h,020h,000h,008h,000h,00ch	; 7c83  ........... ....
	defb 01ah,018h,011h,000h,000h	; 7c93

; ----------------------------------------------------------------------
; DATOS jefe_7C98: RLE de 256 bytes: juego 3 del jefe 3 (p00:4BB4); lo leen
;   p00:4BB4, p00:528B (179 bytes)
;   0x7c98..0x7d4b  (179 bytes)
DATA_jefe_7C98:
	defb 0a8h,001h,003h,005h,00fh,00eh,007h,007h,00eh,007h,000h,003h,00fh,01fh,03fh,03dh	; 7c98  ..............?=
	defb 03fh,0beh,0bbh,0ffh,09ah,0efh,0dfh,0b7h,0ffh,0ddh,0bdh,0dbh,0f7h,0cfh,07eh,0fdh	; 7ca8  ?.............~.
	defb 0f5h,000h,000h,003h,006h,001h,000h,001h,007h,006h,000h,092h,012h,010h,040h,0cch	; 7cb8  ..............@.
	defb 064h,065h,010h,060h,0c8h,000h,022h,042h,024h,008h,070h,081h,002h,00eh,003h,000h	; 7cc8  de.`.."B$.p.....
	defb 08dh,080h,0c0h,070h,0d8h,0c8h,0e4h,0cch,0bch,08eh,03eh,09fh,03fh,0bfh,00fh,000h	; 7cd8  ...p......>.?...
	defb 081h,080h,005h,000h,08bh,080h,020h,030h,018h,030h,040h,070h,0c0h,070h,0c0h,040h	; 7ce8  ...... 0.0@p.p.@
	defb 010h,000h,085h,03dh,019h,000h,001h,001h,003h,003h,003h,001h,002h,000h,084h,001h	; 7cf8  ...=............
	defb 003h,003h,0fdh,003h,0ffh,08ch,0dfh,05fh,0ebh,0ffh,0f7h,0ffh,0fdh,0efh,0feh,0deh	; 7d08  ......._........
	defb 0ddh,0f9h,010h,000h,090h,00fh,008h,000h,000h,020h,0a0h,014h,000h,008h,000h,000h	; 7d18  ......... ......
	defb 010h,000h,060h,0e0h,000h,005h,0ffh,08bh,0feh,0fch,07eh,0deh,07eh,077h,07fh,0cfh	; 7d28  ..`.......~.~w..
	defb 08fh,0beh,0f8h,004h,080h,013h,000h,088h,080h,020h,080h,088h,080h,030h,070h,040h	; 7d38  ......... ...0p@
	defb 011h,000h,000h	; 7d48

; ----------------------------------------------------------------------
; DATOS graficos_de_jefe: 40 palabras: de donde sale cada grafico de jefe
;   (0xDF94 = 1..40); lo leen p00:5272 (80 bytes)
;   0x7d4b..0x7d9b  (80 bytes)
DATA_graficos_de_jefe:
	defb 0eah,066h	; 7d4b
	defb 040h,0e8h	; 7d4d
	defb 0d1h,067h	; 7d4f
	defb 040h,0e9h	; 7d51
	defb 0b4h,068h	; 7d53
	defb 08dh,069h	; 7d55
	defb 040h,0eah	; 7d57
	defb 040h,0ebh	; 7d59
	defb 048h,06ah	; 7d5b
	defb 027h,06bh	; 7d5d
	defb 0edh,06bh	; 7d5f
	defb 0aah,06ch	; 7d61
	defb 071h,06dh	; 7d63
	defb 052h,06eh	; 7d65
	defb 022h,06fh	; 7d67
	defb 0dch,06fh	; 7d69
	defb 0a3h,070h	; 7d6b
	defb 07fh,071h	; 7d6d
	defb 048h,072h	; 7d6f
	defb 0fbh,072h	; 7d71
	defb 0c3h,073h	; 7d73
	defb 0a3h,074h	; 7d75
	defb 069h,075h	; 7d77
	defb 01bh,076h	; 7d79
	defb 0e3h,076h	; 7d7b
	defb 040h,0e8h	; 7d7d
	defb 0c7h,077h	; 7d7f
	defb 040h,0e9h	; 7d81
	defb 0a8h,078h	; 7d83
	defb 07eh,079h	; 7d85
	defb 040h,0eah	; 7d87
	defb 040h,0ebh	; 7d89
	defb 036h,07ah	; 7d8b
	defb 040h,0e8h	; 7d8d
	defb 00fh,07bh	; 7d8f
	defb 040h,0e9h	; 7d91
	defb 0d3h,07bh	; 7d93
	defb 098h,07ch	; 7d95
	defb 040h,0eah	; 7d97
	defb 040h,0ebh	; 7d99

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
