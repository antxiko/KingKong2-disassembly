; ==========================================================================
; KING KONG 2: YOMIGAERU DENSETSU - Konami (1986) - MSX - MegaROM RC-745 de 128 KB (Konami4) - banco 04 (se ejecuta en 0x6000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x06000


; ======================================================================
; CODIGO 0x6000..0x60bc  (188 bytes)
; ======================================================================


el_sonido_desde_cero:
	ld a,0bch		;6000   ; EL SONIDO DESDE CERO: el mezclador con todo apagado (0xBC)
	ld (0c081h),a		;6002   ; guarda la copia del registro 7 del PSG (el mezclador)
	xor a			;6005   ; sin fundido y sin canales de musica sonando
	ld (0c08bh),a		;6006
	ld (0c08ch),a		;6009   ; guarda el fundido de la musica (se suma al volumen)
	ld (0c08dh),a		;600c
	ld (0c090h),a		;600f
	ld (0c094h),a		;6012
canales_en_reposo:
	xor a			;6015   ; ningun sonido ni pieza sonando, sin pausa...
	ld (0c080h),a		;6016   ; guarda el sonido que suena (para no pisarlo con uno menor)
	ld (0c08fh),a		;6019
	ld (0c082h),a		;601c
	ld (0c08eh),a		;601f
	ld hl,06299h		;6022   ; ...y los cuatro manejadores al que no hace nada (p04:6299)
	ld (0c010h),hl		;6025   ; guarda el manejador del canal A del sonido
	ld (0c012h),hl		;6028   ; guarda el manejador del canal B
	ld (0c014h),hl		;602b   ; guarda el manejador del canal C
	ld (0c016h),hl		;602e   ; guarda el manejador del canal de los efectos
	ret			;6031
pide_un_sonido:
	or a			;6032   ; PIDE EL SONIDO A: 0 lo para todo
	jp z,L_6106		;6033
	cp 0fdh		;6036   ; 0xFD, 0xFE y 0xFF son ordenes (pausa, sigue, fundido)
	jp nc,L_610B		;6038
	or a			;603b
	jp p,L_60D0		;603c   ; menos de 0x80: un efecto
	ld c,a			;603f   ; UNA PIEZA: la 0x85 suena como la 0x80
	cp 085h		;6040
	jr nz,L_6046		;6042
	ld a,080h		;6044
L_6046:
	ld (0c08fh),a		;6046   ; la pieza que suena (0xC08F)
	cp 082h		;6049   ; la 0x82 y de la 0x87 en adelante se funden despacio (0xC090 = 1)
	jr z,L_6051		;604b
	cp 087h		;604d
	jr c,L_6055		;604f
L_6051:
	ld a,001h		;6051
	jr L_6056		;6053
L_6055:
	xor a			;6055
L_6056:
	ld (0c090h),a		;6056
	ld a,c			;6059
	ld de,0c01ah		;605a   ; los tres canales de la musica (0xC01A, 0xC02E, 0xC042) en reposo
	ld hl,060bch		;605d   ; canal_en_reposo: 20 bytes que p04:605D copia a cada canal al empezar una pieza o un efecto
	ld bc,00014h		;6060
	ldir		;6063
	ld hl,060bch		;6065   ; canal_en_reposo: 20 bytes que p04:605D copia a cada canal al empezar una pieza o un efecto
	ld bc,00014h		;6068
	ldir		;606b
	ld hl,060bch		;606d   ; canal_en_reposo: 20 bytes que p04:605D copia a cada canal al empezar una pieza o un efecto
	ld bc,00014h		;6070
	ldir		;6073
	and 07fh		;6075   ; su entrada de p04:66D8: 6*(pieza & 0x7F)
	rlca			;6077
	ld e,a			;6078
	rlca			;6079
	add a,e			;607a
	ld hl,066d8h		;607b   ; piezas: 14 piezas de musica (0x80-0x8D): las pistas de los canales A, B y C; p04:607B con 0x66D8 + 6*(pieza & 0x7F)
	add a,l			;607e
	ld l,a			;607f
	jr nc,L_6083		;6080
	inc h			;6082
L_6083:
	ld e,(hl)			;6083   ; la pista del canal A...
	inc hl			;6084
	ld d,(hl)			;6085
	inc hl			;6086
	ld (0c01ah),de		;6087
	ld e,(hl)			;608b   ; ...la del B...
	inc hl			;608c
	ld d,(hl)			;608d
	inc hl			;608e
	ld (0c02eh),de		;608f
	ld e,(hl)			;6093   ; ...y la del C
	inc hl			;6094
	ld d,(hl)			;6095
	ld (0c042h),de		;6096
	ld hl,06321h		;609a   ; los manejadores de los tres canales de musica
	ld (0c010h),hl		;609d   ; guarda el manejador del canal A del sonido
	ld hl,06328h		;60a0
	ld (0c012h),hl		;60a3   ; guarda el manejador del canal B
	ld hl,0632fh		;60a6
	ld (0c014h),hl		;60a9   ; guarda el manejador del canal C
L_60AC:
	xor a			;60ac   ; sin fundido, y 0xC08D = 7: los tres canales de musica sonando
	ld (0c08bh),a		;60ad
	ld (0c08ch),a		;60b0   ; guarda el fundido de la musica (se suma al volumen)
	ld (0c08eh),a		;60b3
	ld a,007h		;60b6
	ld (0c08dh),a		;60b8
L_60BB:
	ret			;60bb

; ----------------------------------------------------------------------
; DATOS canal_en_reposo: 20 bytes que p04:605D copia a cada canal al empezar
;   una pieza o un efecto; lo leen p04:6060 (20 bytes)
;   0x60bc..0x60d0  (20 bytes)
DATA_canal_en_reposo:
	defb 000h,000h,001h,000h,000h,000h,000h,000h,000h,001h,000h,000h,000h,000h,001h,001h	; 60bc  ................
	defb 000h,000h,000h,000h	; 60cc

; ======================================================================
; CODIGO 0x60d0..0x6302  (562 bytes)
; ======================================================================


L_60D0:
	ld c,a			;60d0   ; UN EFECTO: con 0xC08E puesto no entra ninguno...
	ld a,(0c08eh)		;60d1
	or a			;60d4
	jr nz,$-26		;60d5
	ld a,(0c080h)		;60d7   ; lee el sonido que suena (para no pisarlo con uno menor)
	cp c			;60da   ; ...y si suena otro de numero mayor, se queda el otro
	jr z,L_60DF		;60db
	jr nc,$-34		;60dd
L_60DF:
	ld a,c			;60df   ; el efecto que suena
	ld (0c080h),a		;60e0   ; guarda el sonido que suena (para no pisarlo con uno menor)
	ld de,0c056h		;60e3   ; el canal de los efectos (0xC056) en reposo...
	ld hl,060bch		;60e6   ; canal_en_reposo: 20 bytes que p04:605D copia a cada canal al empezar una pieza o un efecto
	ld bc,00014h		;60e9
	ldir		;60ec
	rlca			;60ee   ; ...su pista, de p04:6684 + 2*efecto...
	ld hl,06684h		;60ef
	add a,l			;60f2
	ld l,a			;60f3
	jr nc,L_60F7		;60f4
	inc h			;60f6
L_60F7:
	ld e,(hl)			;60f7
	inc hl			;60f8
	ld d,(hl)			;60f9
	ld (0c062h),de		;60fa
	ld hl,06587h		;60fe   ; ...y su manejador
	ld (0c016h),hl		;6101   ; guarda el manejador del canal de los efectos
	jr $-73		;6104
L_6106:
	call canales_en_reposo		;6106   ; 0: todo en reposo
	jr $-78		;6109
L_610B:
	jp z,pausa_el_sonido		;610b   ; 0xFD: la pausa
	cp 0feh		;610e   ; 0xFE: se sigue tras la pausa
	jp z,sigue_tras_la_pausa		;6110   ; sigue_tras_la_pausa: SE SIGUE: vuelve todo lo que guardo la pausa, tambien los registros del PSG
	ld a,(0c090h)		;6113   ; 0xFF: fundido, despacio (un paso cada 0x2A cuadros) o deprisa (0x0A)
	or a			;6116
	jr z,L_611D		;6117
	ld a,02ah		;6119
	jr L_611F		;611b
L_611D:
	ld a,00ah		;611d
L_611F:
	ld (0c08bh),a		;611f
	jp L_60BB		;6122
pausa_el_sonido:
	ld a,001h		;6125   ; LA PAUSA (0xC082 = 1): se guarda el fundido, el mezclador y los canales...
	ld (0c082h),a		;6127
	ld a,(0c08bh)		;612a
	ld (0c083h),a		;612d
	ld a,(0c08ch)		;6130   ; lee el fundido de la musica (se suma al volumen)
	ld (0c084h),a		;6133
	ld a,(0c081h)		;6136   ; lee la copia del registro 7 del PSG (el mezclador)
	ld (0c085h),a		;6139
	ld a,(0c08dh)		;613c
	ld (0c097h),a		;613f
	xor a			;6142   ; ...se callan los canales y el mezclador...
	ld (0c08dh),a		;6143
	ld a,0bfh		;6146   ; la copia del registro 7 del PSG (el mezclador) = 0xBF
	ld (0c081h),a		;6148   ; guarda la copia del registro 7 del PSG (el mezclador)
	xor a			;614b   ; ...y se guardan los registros 0, 1 y 8 a 13 del PSG
	call 00096h		;614c   ; BIOS RDPSG - Reads value from PSG-register
	ld (0c086h),a		;614f
	ld a,001h		;6152
	call 00096h		;6154   ; BIOS RDPSG - Reads value from PSG-register
	ld (0c087h),a		;6157
	ld a,008h		;615a
	call 00096h		;615c   ; BIOS RDPSG - Reads value from PSG-register
	ld (0c088h),a		;615f
	ld a,009h		;6162
	call 00096h		;6164   ; BIOS RDPSG - Reads value from PSG-register
	ld (0c089h),a		;6167
	ld a,00ah		;616a
	call 00096h		;616c   ; BIOS RDPSG - Reads value from PSG-register
	ld (0c08ah),a		;616f
	ld a,00bh		;6172
	call 00096h		;6174   ; BIOS RDPSG - Reads value from PSG-register
	ld (0c091h),a		;6177
	ld a,00ch		;617a
	call 00096h		;617c   ; BIOS RDPSG - Reads value from PSG-register
	ld (0c092h),a		;617f
	ld a,00dh		;6182
	call 00096h		;6184   ; BIOS RDPSG - Reads value from PSG-register
	ld (0c093h),a		;6187
	ld a,008h		;618a   ; volumen 0 en los tres canales del PSG
	ld e,000h		;618c
	call 00093h		;618e   ; BIOS WRTPSG - Writes data to PSG-register
	ld a,009h		;6191
	ld e,000h		;6193
	call 00093h		;6195   ; BIOS WRTPSG - Writes data to PSG-register
	ld a,00ah		;6198
	ld e,000h		;619a
	call 00093h		;619c   ; BIOS WRTPSG - Writes data to PSG-register
	xor a			;619f   ; la musiquilla de la pausa va por el canal A del PSG, como canal 4...
	ld (0c07eh),a		;61a0   ; guarda el canal del PSG que se esta tocando
	ld a,004h		;61a3   ; el numero de canal = 0x04
	ld (0c07fh),a		;61a5   ; guarda el numero de canal
	ld hl,0631ah		;61a8
	ld (0c018h),hl		;61ab   ; guarda el manejador de la musica de la pausa
	ld de,0c06ah		;61ae   ; ...en su canal en reposo (0xC06A)...
	ld hl,060bch		;61b1   ; canal_en_reposo: 20 bytes que p04:605D copia a cada canal al empezar una pieza o un efecto
	ld bc,00014h		;61b4
	ldir		;61b7
	ld hl,06d25h		;61b9   ; ...con la pista de p04:6D25
	ld (0c06ah),hl		;61bc
	jp L_60AC		;61bf
sigue_tras_la_pausa:
	xor a			;61c2   ; SE SIGUE: vuelve todo lo que guardo la pausa, tambien los registros del PSG
	ld (0c082h),a		;61c3
	ld a,(0c083h)		;61c6
	ld (0c08bh),a		;61c9
	ld a,(0c084h)		;61cc
	ld (0c08ch),a		;61cf   ; guarda el fundido de la musica (se suma al volumen)
	ld a,(0c085h)		;61d2
	ld (0c081h),a		;61d5   ; guarda la copia del registro 7 del PSG (el mezclador)
	ld a,(0c097h)		;61d8
	ld (0c08dh),a		;61db
	ld a,(0c086h)		;61de
	ld e,a			;61e1
	xor a			;61e2
	call 00093h		;61e3   ; BIOS WRTPSG - Writes data to PSG-register
	ld a,(0c087h)		;61e6
	ld e,a			;61e9
	ld a,001h		;61ea
	call 00093h		;61ec   ; BIOS WRTPSG - Writes data to PSG-register
	ld a,(0c088h)		;61ef
	ld e,a			;61f2
	ld a,008h		;61f3
	call 00093h		;61f5   ; BIOS WRTPSG - Writes data to PSG-register
	ld a,(0c089h)		;61f8
	ld e,a			;61fb
	ld a,009h		;61fc
	call 00093h		;61fe   ; BIOS WRTPSG - Writes data to PSG-register
	ld a,(0c08ah)		;6201
	ld e,a			;6204
	ld a,00ah		;6205
	call 00093h		;6207   ; BIOS WRTPSG - Writes data to PSG-register
	ld a,(0c091h)		;620a
	ld e,a			;620d
	ld a,00bh		;620e
	call 00093h		;6210   ; BIOS WRTPSG - Writes data to PSG-register
	ld a,(0c092h)		;6213
	ld e,a			;6216
	ld a,00ch		;6217
	call 00093h		;6219   ; BIOS WRTPSG - Writes data to PSG-register
	ld a,(0c093h)		;621c
	ld e,a			;621f
	ld a,00dh		;6220
	call 00093h		;6222   ; BIOS WRTPSG - Writes data to PSG-register
	jp L_60BB		;6225
el_sonido_de_este_cuadro:
	ld a,(0c081h)		;6228   ; CADA CUADRO: el mezclador al PSG
	ld e,a			;622b
	ld a,007h		;622c
	call 00093h		;622e   ; BIOS WRTPSG - Writes data to PSG-register
	ld a,(0c082h)		;6231   ; en pausa solo suena la musiquilla de la pausa
	or a			;6234
	jp nz,L_62BB		;6235
	ld a,(0c08bh)		;6238   ; el fundido: 0xC08B cuenta los cuadros que faltan para el paso siguiente (0 = sin fundido)
	dec a			;623b
	jp m,L_6270		;623c
	jr nz,L_626D		;623f
	ld a,(0c08ch)		;6241   ; un paso mas bajo (0xC08C se suma al volumen)...
	dec a			;6244
	ld (0c08ch),a		;6245   ; guarda el fundido de la musica (se suma al volumen)
	cp 0f0h		;6248   ; ...y a -16 ya no se oye: fuera la musica
	jr nz,L_6261		;624a
	ld hl,L_6299		;624c
	ld (0c010h),hl		;624f   ; guarda el manejador del canal A del sonido
	ld (0c012h),hl		;6252   ; guarda el manejador del canal B
	ld (0c014h),hl		;6255   ; guarda el manejador del canal C
	xor a			;6258
	ld (0c08dh),a		;6259
	ld (0c090h),a		;625c
	jr L_626D		;625f
L_6261:
	ld a,(0c090h)		;6261   ; vuelve a contar: 0x2A cuadros si es despacio, 0x0A si no
	or a			;6264
	jr z,L_626B		;6265
	ld a,02ah		;6267
	jr L_626D		;6269
L_626B:
	ld a,00ah		;626b
L_626D:
	ld (0c08bh),a		;626d
L_6270:
	xor a			;6270   ; los canales A, B y C de la musica en los canales 0, 1 y 2 del PSG...
	ld b,a			;6271
	ld hl,(0c010h)		;6272   ; lee el manejador del canal A del sonido
	call salta_al_canal		;6275   ; salta_al_canal: 0xC07E el canal del PSG, 0xC07F el numero; salta al manejador HL
	ld a,001h		;6278
	ld b,a			;627a
	ld hl,(0c012h)		;627b   ; lee el manejador del canal B
	call salta_al_canal		;627e   ; salta_al_canal: 0xC07E el canal del PSG, 0xC07F el numero; salta al manejador HL
	ld a,002h		;6281
	ld b,a			;6283
	ld hl,(0c014h)		;6284   ; lee el manejador del canal C
	call salta_al_canal		;6287   ; salta_al_canal: 0xC07E el canal del PSG, 0xC07F el numero; salta al manejador HL
	ld a,002h		;628a   ; ...y los efectos (canal 3) en el C del PSG
	ld b,003h		;628c
	ld hl,(0c016h)		;628e   ; lee el manejador del canal de los efectos
salta_al_canal:
	ld (0c07eh),a		;6291   ; 0xC07E el canal del PSG, 0xC07F el numero; salta al manejador HL
	ld a,b			;6294
	ld (0c07fh),a		;6295   ; guarda el numero de canal
	jp (hl)			;6298
L_6299:
	ld a,(0c07fh)		;6299   ; EL CANAL CALLADO: si es el de los efectos, ya no suena ninguno...
	cp 003h		;629c
	jr nz,L_62A7		;629e
	xor a			;62a0
	ld (0c080h),a		;62a1   ; guarda el sonido que suena (para no pisarlo con uno menor)
	ld a,(0c07fh)		;62a4   ; lee el numero de canal
L_62A7:
	rlca			;62a7   ; ...su manejador pasa a uno que solo vuelve (p04:62BA)...
	ld hl,0c010h		;62a8   ; apunta a el manejador del canal A del sonido
	add a,l			;62ab
	ld l,a			;62ac
	jr nc,L_62B0		;62ad
	inc h			;62af
L_62B0:
	ld de,L_62BA		;62b0
	ld (hl),e			;62b3
	inc hl			;62b4
	ld (hl),d			;62b5
	ld e,000h		;62b6   ; ...y el volumen a 0
	jr pon_el_volumen		;62b8
L_62BA:
	ret			;62ba
L_62BB:
	ld hl,(0c018h)		;62bb   ; lee el manejador de la musica de la pausa
	jp (hl)			;62be
pon_el_tono:
	ld a,(0c07eh)		;62bf   ; el periodo DE en los registros de tono del canal
	rlca			;62c2
	call 00093h		;62c3   ; BIOS WRTPSG - Writes data to PSG-register
	inc a			;62c6
	ld e,d			;62c7
	jp 00093h		;62c8   ; BIOS WRTPSG - Writes data to PSG-register
pon_el_volumen:
	ld a,(0c07eh)		;62cb   ; el volumen E en el registro 8+canal
	add a,008h		;62ce
	jp 00093h		;62d0   ; BIOS WRTPSG - Writes data to PSG-register
mezclador_silencio:
	push hl			;62d3
	ld hl,06314h		;62d4
	jr L_62E9		;62d7
mezclador_tono_y_ruido:
	push hl			;62d9
	ld hl,0630eh		;62da
	jr L_62E9		;62dd
mezclador_solo_ruido:
	push hl			;62df
	ld hl,06308h		;62e0
	jr L_62E9		;62e3
mezclador_solo_tono:
	push hl			;62e5
	ld hl,06302h		;62e6   ; mezclador: 4 parejas [y][o] por canal: lo que p04:62E9 hace con el registro 7 del PSG (tono, ruido, los dos o nada)
L_62E9:
	ld a,(0c07eh)		;62e9   ; aplica la pareja [y][o] del canal a la copia del mezclador y la escribe
	rlca			;62ec
	add a,l			;62ed
	ld l,a			;62ee
	jr nc,L_62F2		;62ef
	inc h			;62f1
L_62F2:
	ld a,(0c081h)		;62f2   ; lee la copia del registro 7 del PSG (el mezclador)
	and (hl)			;62f5
	inc hl			;62f6
	or (hl)			;62f7
	ld (0c081h),a		;62f8   ; guarda la copia del registro 7 del PSG (el mezclador)
	pop hl			;62fb
	ld e,a			;62fc
	ld a,007h		;62fd
	jp 00093h		;62ff   ; BIOS WRTPSG - Writes data to PSG-register

; ----------------------------------------------------------------------
; DATOS mezclador: 4 parejas [y][o] por canal: lo que p04:62E9 hace con el
;   registro 7 del PSG (tono, ruido, los dos o nada); lo leen p04:62F5 (24
;   bytes)
;   0x6302..0x631a  (24 bytes)
DATA_mezclador:
	defb 0feh,008h	; 6302
	defb 0fdh,010h	; 6304
	defb 0fbh,020h	; 6306
	defb 0f7h,001h	; 6308
	defb 0efh,002h	; 630a
	defb 0dfh,004h	; 630c
	defb 0f6h,000h	; 630e
	defb 0edh,000h	; 6310
	defb 0dbh,000h	; 6312
	defb 0ffh,009h	; 6314
	defb 0ffh,012h	; 6316
	defb 0ffh,024h	; 6318

; ======================================================================
; CODIGO 0x631a..0x6464  (330 bytes)
; ======================================================================


L_631A:
	ld ix,0c06ah		;631a
	jp toca_el_canal		;631e   ; toca_el_canal: UN CANAL, CADA CUADRO: si es el C de la musica y suena un efecto, el efecto le quita el PSG (bit 5)
L_6321:
	ld ix,0c01ah		;6321
	jp toca_el_canal		;6325   ; toca_el_canal: UN CANAL, CADA CUADRO: si es el C de la musica y suena un efecto, el efecto le quita el PSG (bit 5)
L_6328:
	ld ix,0c02eh		;6328
	jp toca_el_canal		;632c   ; toca_el_canal: UN CANAL, CADA CUADRO: si es el C de la musica y suena un efecto, el efecto le quita el PSG (bit 5)
L_632F:
	ld ix,0c042h		;632f
toca_el_canal:
	ld a,(0c07fh)		;6333   ; UN CANAL, CADA CUADRO: si es el C de la musica y suena un efecto, el efecto le quita el PSG (bit 5)
	cp 002h		;6336
	jr nz,L_6344		;6338
	ld a,(0c080h)		;633a   ; lee el sonido que suena (para no pisarlo con uno menor)
	or a			;633d
	jr z,L_6344		;633e
	set 5,(ix+002h)		;6340   ; pone a uno el bit 5 de las banderas del canal
L_6344:
	dec (ix+009h)		;6344   ; cuando se acaba la nota, lee la siguiente de la pista
	jp z,L_6384		;6347
	bit 0,(ix+002h)		;634a   ; bit 0: volumen de la orden 0xF0-0xFD en vez de envolvente
	jp z,L_636D		;634e
	ld a,(ix+009h)		;6351   ; baja un punto al empezar la caida o al pasar el sostenido
	cp (ix+00bh)		;6354
	jr nc,L_635D		;6357
	cp (ix+006h)		;6359
	ret nc			;635c
L_635D:
	ld e,(ix+00ah)		;635d   ; lee el volumen de ahora
	dec e			;6360
	ret m			;6361
	ld (ix+00ah),e		;6362   ; guarda el volumen de ahora
	bit 5,(ix+002h)		;6365   ; mira el bit 5 de las banderas del canal
	ret nz			;6369
	jp pon_el_volumen		;636a   ; pon_el_volumen: el volumen E en el registro 8+canal
L_636D:
	bit 5,(ix+002h)		;636d   ; con envolvente: un paso de ella, y al acabar volumen 0
	ret nz			;6371
	bit 7,(ix+002h)		;6372   ; mira el bit 7 de las banderas del canal
	ret nz			;6376
	call envolvente_del_cuadro		;6377   ; envolvente_del_cuadro: un paso cada ix+0x0F cuadros; acarreo al acabar
	ret nc			;637a
	set 7,(ix+002h)		;637b   ; pone a uno el bit 7 de las banderas del canal
	ld e,000h		;637f
	jp pon_el_volumen		;6381   ; pon_el_volumen: el volumen E en el registro 8+canal
L_6384:
	ld l,(ix+000h)		;6384   ; lee la pista (baja)
	ld h,(ix+001h)		;6387   ; lee la pista (alta)
L_638A:
	ld a,(hl)			;638a   ; LA PISTA: 0xD0 en adelante son ordenes
	inc hl			;638b
	ld c,a			;638c
	cp 0d0h		;638d
	jp nc,L_6497		;638f
	ld (ix+000h),l		;6392   ; guarda la pista (baja)
	ld (ix+001h),h		;6395   ; guarda la pista (alta)
	cp 0c0h		;6398   ; 0xC0-0xCF: silencio
	jp nc,L_647C		;639a
	and 00fh		;639d   ; NOTA: la duracion es (c & 15) + 1 veces el tempo
	inc a			;639f
	ld b,a			;63a0
	ld e,(ix+003h)		;63a1   ; lee el tempo
	xor a			;63a4
L_63A5:
	add a,e			;63a5
	djnz L_63A5		;63a6
	ld (ix+009h),a		;63a8   ; guarda la cuenta de la nota
	ld a,(0c07fh)		;63ab   ; si ya no suena el efecto, el canal C recupera el PSG
	cp 002h		;63ae
	jr nz,L_63BC		;63b0
	ld a,(0c080h)		;63b2   ; lee el sonido que suena (para no pisarlo con uno menor)
	or a			;63b5
	jr nz,L_63BC		;63b6
	res 5,(ix+002h)		;63b8   ; pone a cero el bit 5 de las banderas del canal
L_63BC:
	bit 0,(ix+002h)		;63bc   ; mira el bit 0 de las banderas del canal
	jp z,L_640A		;63c0
	ld a,(ix+009h)		;63c3   ; cuando empieza la caida
	sub (ix+005h)		;63c6
	ld (ix+00bh),a		;63c9
	bit 5,(ix+002h)		;63cc   ; mira el bit 5 de las banderas del canal
	ret nz			;63d0
	ld a,c			;63d1   ; la nota, c >> 4, en p04:6464...
	and 0f0h		;63d2
	rrca			;63d4
	rrca			;63d5
	rrca			;63d6
	ld hl,06464h		;63d7   ; periodos_de_las_notas: 12 palabras: el periodo del PSG de cada semitono en la octava mas grave; p04:63E5 lo divide por 2 una vez por octava
	add a,l			;63da
	ld l,a			;63db
	jr nc,L_63DF		;63dc
	inc h			;63de
L_63DF:
	ld e,(hl)			;63df
	inc hl			;63e0
	ld d,(hl)			;63e1
	ld b,(ix+007h)		;63e2   ; ...bajada tantas octavas como diga ix+7
L_63E5:
	srl d		;63e5
	rr e		;63e7
	djnz L_63E5		;63e9
	bit 6,(ix+002h)		;63eb   ; bit 6 (orden 0xE7): el periodo 2 puntos mas largo
	jr z,L_63F3		;63ef
	inc de			;63f1
	inc de			;63f2
L_63F3:
	call pon_el_tono		;63f3   ; pon_el_tono: el periodo DE en los registros de tono del canal
	ld a,(0c08ch)		;63f6   ; el volumen con el fundido, sin bajar de 0
	add a,(ix+004h)		;63f9   ; le suma el volumen
	jp p,L_6400		;63fc
	xor a			;63ff
L_6400:
	ld (ix+00ah),a		;6400   ; guarda el volumen de ahora
	ld e,a			;6403
	call pon_el_volumen		;6404   ; pon_el_volumen: el volumen E en el registro 8+canal
	jp mezclador_solo_tono		;6407
L_640A:
	ld a,(ix+008h)		;640a   ; con envolvente: la tabla que diga ix+8 (0-6), una palabra por nota
	cp 000h		;640d
	jr z,L_642A		;640f
	cp 001h		;6411
	jr z,L_644B		;6413
	cp 002h		;6415
	jr z,L_6450		;6417
	cp 003h		;6419
	jr z,L_6455		;641b
	cp 004h		;641d
	jr z,L_645A		;641f
	cp 005h		;6421
	jr z,L_645F		;6423
	ld hl,07b4dh		;6425
	jr L_642D		;6428
L_642A:
	ld hl,07abdh		;642a   ; envolventes: 7 tablas de 12 palabras (una por nota): la envolvente de volumen de cada nota segun 0xE8 n; p04:640A
L_642D:
	ld a,c			;642d
	and 0f0h		;642e
	rrca			;6430
	rrca			;6431
	rrca			;6432
	add a,l			;6433
	ld l,a			;6434
	jr nc,L_6438		;6435
	inc h			;6437
L_6438:
	ld a,(hl)			;6438
	ld (ix+00ch),a		;6439   ; guarda la envolvente que suena (baja)
	inc hl			;643c
	ld a,(hl)			;643d
	ld (ix+00dh),a		;643e   ; guarda la envolvente que suena (alta)
	res 7,(ix+002h)		;6441   ; pone a cero el bit 7 de las banderas del canal
	ld a,001h		;6445
	ld (ix+00eh),a		;6447   ; guarda la cuenta de la envolvente
	ret			;644a
L_644B:
	ld hl,07ad5h		;644b
	jr L_642D		;644e
L_6450:
	ld hl,07aedh		;6450
	jr L_642D		;6453
L_6455:
	ld hl,07b05h		;6455
	jr L_642D		;6458
L_645A:
	ld hl,07b1dh		;645a
	jr L_642D		;645d
L_645F:
	ld hl,07b35h		;645f
	jr L_642D		;6462

; ----------------------------------------------------------------------
; DATOS periodos_de_las_notas: 12 palabras: el periodo del PSG de cada
;   semitono en la octava mas grave; p04:63E5 lo divide por 2 una vez por
;   octava; lo leen p04:63DF (24 bytes)
;   0x6464..0x647c  (24 bytes)
DATA_periodos_de_las_notas:
	defb 0b8h,01ah	; 6464
	defb 038h,019h	; 6466
	defb 0d0h,017h	; 6468
	defb 078h,016h	; 646a
	defb 034h,015h	; 646c
	defb 004h,014h	; 646e
	defb 0e4h,012h	; 6470
	defb 0d4h,011h	; 6472
	defb 0d4h,010h	; 6474
	defb 0e4h,00fh	; 6476
	defb 000h,00fh	; 6478
	defb 028h,00eh	; 647a

; ======================================================================
; CODIGO 0x647c..0x6686  (522 bytes)
; ======================================================================


L_647C:
	and 00fh		;647c   ; SILENCIO de (c & 15) + 1 veces el tempo: volumen 0
	inc a			;647e
	ld b,a			;647f
	ld e,(ix+003h)		;6480   ; lee el tempo
	xor a			;6483
L_6484:
	add a,e			;6484
	djnz L_6484		;6485
	ld (ix+009h),a		;6487   ; guarda la cuenta de la nota
	bit 5,(ix+002h)		;648a   ; mira el bit 5 de las banderas del canal
	ret nz			;648e
	ld e,000h		;648f
	ld (ix+00ah),e		;6491   ; guarda el volumen de ahora
	jp pon_el_volumen		;6494   ; pon_el_volumen: el volumen E en el registro 8+canal
L_6497:
	and 0f0h		;6497   ; LAS ORDENES: 0xD0-0xDF tempo, 0xE0-0xEF las de un byte
	cp 0d0h		;6499
	jp z,L_64F7		;649b
	cp 0e0h		;649e
	jp z,L_6500		;64a0
	ld a,c			;64a3   ; 0xFF acaba el canal
	and 00fh		;64a4
	cp 00fh		;64a6
	jp z,L_6572		;64a8
	cp 00eh		;64ab   ; 0xFE [n][w]: repite n veces desde w
	jp nz,L_64D0		;64ad
	ld a,(ix+010h)		;64b0   ; lee las vueltas que quedan de la repeticion
	dec a			;64b3
	jp z,L_64C7		;64b4
	jp p,L_64BC		;64b7
	ld a,(hl)			;64ba
	dec a			;64bb
L_64BC:
	inc hl			;64bc
	ld (ix+010h),a		;64bd   ; guarda las vueltas que quedan de la repeticion
	ld a,(hl)			;64c0
	inc hl			;64c1
	ld h,(hl)			;64c2
	ld l,a			;64c3
	jp L_638A		;64c4
L_64C7:
	ld (ix+010h),a		;64c7   ; acabadas las vueltas, sigue detras
	inc hl			;64ca
	inc hl			;64cb
	inc hl			;64cc
	jp L_638A		;64cd
L_64D0:
	ld c,a			;64d0   ; 0xF0-0xFD [b]: volumen (c & 15) + 2 (0 con 0xC094, que nadie pone)...
	ld a,(0c094h)		;64d1
	or a			;64d4
	jp z,L_64DC		;64d5
	ld a,000h		;64d8
	jr L_64DF		;64da
L_64DC:
	ld a,c			;64dc
	inc a			;64dd
	inc a			;64de
L_64DF:
	ld (ix+004h),a		;64df   ; guarda el volumen
	ld a,(hl)			;64e2   ; ...la caida (b >> 4) y el sostenido (b & 15) + 1
	rrca			;64e3
	rrca			;64e4
	rrca			;64e5
	rrca			;64e6
	and 00fh		;64e7
	ld (ix+005h),a		;64e9
	ld a,(hl)			;64ec
	inc hl			;64ed
	and 00fh		;64ee
	inc a			;64f0
	ld (ix+006h),a		;64f1
	jp L_638A		;64f4
L_64F7:
	ld a,c			;64f7   ; 0xD0-0xDF: tempo c & 15
	and 00fh		;64f8
	ld (ix+003h),a		;64fa   ; guarda el tempo
	jp L_638A		;64fd
L_6500:
	ld a,c			;6500   ; 0xE0-0xE5: octava 6 - (c & 15)
	and 00fh		;6501
	cp 006h		;6503
	jr c,L_6534		;6505
	jr z,L_653E		;6507
	cp 007h		;6509
	jr z,L_654D		;650b
	cp 00ah		;650d
	jr z,L_6554		;650f
	cp 00bh		;6511
	jr z,L_6546		;6513
	cp 00dh		;6515
	jr z,L_655B		;6517
	cp 00eh		;6519
	jr z,L_6569		;651b
	cp 008h		;651d   ; 0xE8 [n]: la envolvente n
	jr nz,L_652D		;651f
	res 0,(ix+002h)		;6521   ; pone a cero el bit 0 de las banderas del canal
	ld a,(hl)			;6525
	inc hl			;6526
	ld (ix+008h),a		;6527   ; guarda la envolvente
	jp L_638A		;652a
L_652D:
	set 0,(ix+002h)		;652d   ; 0xE9, 0xEC, 0xEF: volumen de la orden 0xF0-0xFD
	jp L_638A		;6531
L_6534:
	neg		;6534   ; las octavas: 6 - c
	add a,006h		;6536
	ld (ix+007h),a		;6538   ; guarda la octava
	jp L_638A		;653b
L_653E:
	ld a,001h		;653e   ; 0xE6: desde aqui no entra ningun efecto (0xC08E = 1)...
	ld (0c08eh),a		;6540
	jp L_638A		;6543
L_6546:
	xor a			;6546   ; ...0xEB: ya entran
	ld (0c08eh),a		;6547
	jp L_638A		;654a
L_654D:
	set 6,(ix+002h)		;654d   ; 0xE7: el periodo 2 puntos mas largo
	jp L_638A		;6551
L_6554:
	ld a,(hl)			;6554   ; 0xEA [w]: salta a w
	inc hl			;6555
	ld h,(hl)			;6556
	ld l,a			;6557
	jp L_638A		;6558
L_655B:
	ld e,(hl)			;655b   ; 0xED [w]: llama a w...
	inc hl			;655c
	ld d,(hl)			;655d
	inc hl			;655e
	ld (ix+012h),l		;655f   ; guarda la vuelta de la subrutina (baja)
	ld (ix+013h),h		;6562   ; guarda la vuelta de la subrutina (alta)
	ex de,hl			;6565
	jp L_638A		;6566
L_6569:
	ld l,(ix+012h)		;6569   ; ...0xEE: vuelve
	ld h,(ix+013h)		;656c   ; lee la vuelta de la subrutina (alta)
	jp L_638A		;656f
L_6572:
	ld a,(0c07fh)		;6572   ; 0xFF: el canal deja de contar en 0xC08D y se calla
	inc a			;6575
	ld b,a			;6576
	ld a,07fh		;6577
L_6579:
	rlca			;6579
	djnz L_6579		;657a
	ld b,a			;657c
	ld a,(0c08dh)		;657d
	and b			;6580
	ld (0c08dh),a		;6581
	jp L_6299		;6584
toca_el_efecto:
	ld ix,0c056h		;6587   ; EL CANAL DE LOS EFECTOS: un paso de su pista; al acabar, se calla
	call envolvente_del_cuadro		;658b   ; envolvente_del_cuadro: un paso cada ix+0x0F cuadros; acarreo al acabar
	ret nc			;658e
	jp L_6299		;658f
envolvente_del_cuadro:
	dec (ix+00eh)		;6592   ; un paso cada ix+0x0F cuadros; acarreo al acabar
	jp nz,L_6682		;6595
	ld a,(ix+00fh)		;6598   ; lee cuanto dura cada paso de la envolvente
	ld (ix+00eh),a		;659b   ; guarda la cuenta de la envolvente
	ld l,(ix+00ch)		;659e   ; lee la envolvente que suena (baja)
	ld h,(ix+00dh)		;65a1   ; lee la envolvente que suena (alta)
L_65A4:
	ld a,(hl)			;65a4   ; 0xFF acaba, 0xFE repite, 0x2X mezclador, 0x1X ruido
	cp 0ffh		;65a5
	jp z,L_6684		;65a7
	inc hl			;65aa
	ld c,a			;65ab
	cp 0feh		;65ac
	jp z,L_6611		;65ae
	and 0f0h		;65b1
	cp 020h		;65b3
	jp z,L_6630		;65b5
	cp 010h		;65b8
	jp nz,L_65CC		;65ba
	ld a,c			;65bd   ; 0x1X: el ruido X*2 en el registro 6, y el byte siguiente como c
	and 00fh		;65be
	rlca			;65c0
	ld e,a			;65c1
	ld a,006h		;65c2
	call 00093h		;65c4   ; BIOS WRTPSG - Writes data to PSG-register
	ld a,(hl)			;65c7
	inc hl			;65c8
	ld c,a			;65c9
	and 0f0h		;65ca
L_65CC:
	rrca			;65cc   ; el volumen c >> 4; con el bit 4 del volumen, la envolvente del PSG (registro 13)
	rrca			;65cd
	rrca			;65ce
	rrca			;65cf
	ld e,a			;65d0
	bit 4,(ix+00ah)		;65d1   ; mira el bit 4 de el volumen de ahora
	jr z,L_65DF		;65d5
	ld a,00dh		;65d7
	call 00093h		;65d9   ; BIOS WRTPSG - Writes data to PSG-register
	jp L_6602		;65dc
L_65DF:
	bit 0,(ix+002h)		;65df   ; mira el bit 0 de las banderas del canal
	jr nz,L_65EF		;65e3
	ld a,(0c094h)		;65e5
	or a			;65e8
	jr z,L_65EF		;65e9
	ld e,000h		;65eb
	jr L_65FF		;65ed
L_65EF:
	ld a,(0c07fh)		;65ef   ; en los canales de musica, con el fundido
	cp 003h		;65f2
	jr nc,L_65FF		;65f4
	ld a,(0c08ch)		;65f6   ; lee el fundido de la musica (se suma al volumen)
	add a,e			;65f9
	jp p,L_65FE		;65fa
	xor a			;65fd
L_65FE:
	ld e,a			;65fe
L_65FF:
	call pon_el_volumen		;65ff   ; pon_el_volumen: el volumen E en el registro 8+canal
L_6602:
	ld a,c			;6602   ; y el tono: c & 15 alto, el byte siguiente bajo
	and 00fh		;6603
	ld d,a			;6605
	ld e,(hl)			;6606
	inc hl			;6607
	ld (ix+00ch),l		;6608   ; guarda la envolvente que suena (baja)
	ld (ix+00dh),h		;660b   ; guarda la envolvente que suena (alta)
	jp pon_el_tono		;660e   ; pon_el_tono: el periodo DE en los registros de tono del canal
L_6611:
	ld a,(ix+011h)		;6611   ; 0xFE [n][w]: repite n veces desde w
	dec a			;6614
	jr z,L_6627		;6615
	jp p,L_661C		;6617
	ld a,(hl)			;661a
	dec a			;661b
L_661C:
	inc hl			;661c
	ld (ix+011h),a		;661d
	ld a,(hl)			;6620
	inc hl			;6621
	ld h,(hl)			;6622
	ld l,a			;6623
	jp L_65A4		;6624
L_6627:
	ld (ix+011h),a		;6627
	inc hl			;662a
	inc hl			;662b
	inc hl			;662c
	jp L_65A4		;662d
L_6630:
	bit 0,c		;6630   ; 0x2X: bit 0 ruido, bit 1 tono; el mezclador del canal
	jr nz,L_6642		;6632
	bit 1,c		;6634
	jr nz,L_663D		;6636
	call mezclador_silencio		;6638
	jr L_664E		;663b
L_663D:
	call mezclador_solo_tono		;663d
	jr L_664E		;6640
L_6642:
	bit 1,c		;6642
	jr nz,L_664B		;6644
	call mezclador_solo_ruido		;6646
	jr L_664E		;6649
L_664B:
	call mezclador_tono_y_ruido		;664b
L_664E:
	ld a,c			;664e   ; bit 3 de c: el volumen lo lleva la envolvente del PSG
	rlca			;664f
	and 010h		;6650
	ld (ix+00ah),a		;6652   ; guarda el volumen de ahora
	ld e,a			;6655
	call pon_el_volumen		;6656   ; pon_el_volumen: el volumen E en el registro 8+canal
	ld a,(hl)			;6659   ; cuantos cuadros dura cada paso
	inc hl			;665a
	ld (ix+00eh),a		;665b   ; guarda la cuenta de la envolvente
	ld (ix+00fh),a		;665e   ; guarda cuanto dura cada paso de la envolvente
	ld a,c			;6661   ; 0x28-0x2F: y el periodo de la envolvente del PSG (registros 12 y 11)
	cp 020h		;6662
	jr z,L_667C		;6664
	cp 028h		;6666
	jp c,L_65A4		;6668
	ld e,(hl)			;666b
	inc hl			;666c
	ld a,00ch		;666d
	call 00093h		;666f   ; BIOS WRTPSG - Writes data to PSG-register
	ld e,(hl)			;6672
	inc hl			;6673
	ld a,00bh		;6674
	call 00093h		;6676   ; BIOS WRTPSG - Writes data to PSG-register
	jp L_65A4		;6679
L_667C:
	ld (ix+00ch),l		;667c   ; 0x20: espera; el paso siguiente sigue aqui
	ld (ix+00dh),h		;667f   ; guarda la envolvente que suena (alta)
L_6682:
	or a			;6682   ; no acabo
	ret			;6683
L_6684:
	scf			;6684   ; acabo
	ret			;6685

; ----------------------------------------------------------------------
; DATOS efectos: 41 palabras: la pista de cada efecto de sonido (1-0x29);
;   p04:60EF con 0x6684 + 2*efecto; lo leen p04:60F7 (82 bytes)
;   0x6686..0x66d8  (82 bytes)
DATA_efectos:
	defb 02fh,067h	; 6686
	defb 097h,067h	; 6688
	defb 00bh,06ah	; 668a
	defb 040h,06ah	; 668c
	defb 094h,06ah	; 668e
	defb 0f7h,06ah	; 6690
	defb 032h,06bh	; 6692
	defb 045h,06bh	; 6694
	defb 058h,06bh	; 6696
	defb 083h,06bh	; 6698
	defb 071h,069h	; 669a
	defb 08eh,069h	; 669c
	defb 0b3h,069h	; 669e
	defb 0dfh,069h	; 66a0
	defb 039h,067h	; 66a2
	defb 098h,067h	; 66a4
	defb 0b6h,067h	; 66a6
	defb 0d4h,067h	; 66a8
	defb 0efh,067h	; 66aa
	defb 00ah,068h	; 66ac
	defb 01fh,068h	; 66ae
	defb 03ch,068h	; 66b0
	defb 03ch,068h	; 66b2
	defb 05ah,068h	; 66b4
	defb 067h,068h	; 66b6
	defb 07ah,068h	; 66b8
	defb 08ch,068h	; 66ba
	defb 0b9h,06ah	; 66bc
	defb 0b0h,06ch	; 66be
	defb 04ah,069h	; 66c0
	defb 064h,069h	; 66c2
	defb 0a0h,068h	; 66c4
	defb 0b7h,068h	; 66c6
	defb 0eah,06bh	; 66c8
	defb 01ah,06ch	; 66ca
	defb 071h,06ch	; 66cc
	defb 044h,067h	; 66ce
	defb 051h,067h	; 66d0
	defb 06ah,067h	; 66d2
	defb 057h,069h	; 66d4
	defb 02eh,067h	; 66d6

; ----------------------------------------------------------------------
; DATOS piezas: 14 piezas de musica (0x80-0x8D): las pistas de los canales A,
;   B y C; p04:607B con 0x66D8 + 6*(pieza & 0x7F); lo leen p04:6083 (84 bytes)
;   0x66d8..0x672c  (84 bytes)
DATA_piezas:
	defb 061h,06dh,079h,06eh,040h,06fh	; 66d8
	defb 052h,071h,097h,071h,0c5h,071h	; 66de
	defb 02bh,072h,01ah,073h,0d8h,073h	; 66e4
	defb 0c3h,074h,06bh,075h,0a1h,075h	; 66ea
	defb 0beh,075h,03dh,076h,06ah,076h	; 66f0
	defb 032h,06dh,033h,06eh,00ch,06fh	; 66f6
	defb 097h,076h,098h,076h,099h,076h	; 66fc
	defb 09ah,076h,042h,077h,0b8h,077h	; 6702
	defb 05dh,078h,0ffh,078h,066h,079h	; 6708
	defb 0e9h,079h,029h,07ah,042h,07ah	; 670e
	defb 074h,07ah,08bh,07ah,0a2h,07ah	; 6714
	defb 004h,06dh,00fh,06dh,01ah,06dh	; 671a
	defb 0efh,06ch,0f6h,06ch,0fdh,06ch	; 6720
	defb 0bch,07ah,0bch,07ah,0bch,07ah	; 6726

; ----------------------------------------------------------------------
; DATOS pieza_8E: una palabra mas, 0x7ABC (la pista vacia de la 0x8D): el
;   principio de una pieza 0x8E que nadie pide; lo leen p04:6083 (2 bytes)
;   0x672c..0x672e  (2 bytes)
DATA_pieza_8E:
	defb 0bch,07ah	; 672c

; ----------------------------------------------------------------------
; DATOS sonido_672E: envolvente o efecto: [volumen|tono alto][tono bajo] por
;   cuadro, 0x1X ruido, 0x2X mezclador, 0xFE repite, 0xFF acaba; lo leen
;   p04:65A4 (1 bytes)
;   0x672e..0x672f  (1 bytes)
DATA_sonido_672E:
	defb 0ffh	; 672e

; ----------------------------------------------------------------------
; DATOS sonido_672F: envolvente o efecto: [volumen|tono alto][tono bajo] por
;   cuadro, 0x1X ruido, 0x2X mezclador, 0xFE repite, 0xFF acaba; lo leen
;   p04:65A4 (10 bytes)
;   0x672f..0x6739  (10 bytes)
DATA_sonido_672F:
	defb 023h,001h,01ah,0e0h,000h,022h,001h,0b0h,043h,0ffh	; 672f  #...."..C.

; ----------------------------------------------------------------------
; DATOS sonido_6739: envolvente o efecto: [volumen|tono alto][tono bajo] por
;   cuadro, 0x1X ruido, 0x2X mezclador, 0xFE repite, 0xFF acaba; lo leen
;   p04:65A4 (11 bytes)
;   0x6739..0x6744  (11 bytes)
DATA_sonido_6739:
	defb 02ah,002h,000h,001h,0e3h,000h,0e1h,000h,0e0h,080h,0ffh	; 6739  *..........

; ----------------------------------------------------------------------
; DATOS sonido_6744: envolvente o efecto: [volumen|tono alto][tono bajo] por
;   cuadro, 0x1X ruido, 0x2X mezclador, 0xFE repite, 0xFF acaba; lo leen
;   p04:65A4 (13 bytes)
;   0x6744..0x6751  (13 bytes)
DATA_sonido_6744:
	defb 02ah,001h,000h,001h,0e0h,010h,02ah,010h,004h,000h,080h,060h,0ffh	; 6744  *.....*....`.

; ----------------------------------------------------------------------
; DATOS sonido_6751: envolvente o efecto: [volumen|tono alto][tono bajo] por
;   cuadro, 0x1X ruido, 0x2X mezclador, 0xFE repite, 0xFF acaba; lo leen
;   p04:65A4 (25 bytes)
;   0x6751..0x676a  (25 bytes)
DATA_sonido_6751:
	defb 022h,003h,0e1h,050h,0e1h,010h,0e0h,0d0h,0d0h,090h,0d1h,010h,0d0h,0d0h,0c0h,090h	; 6751  "..P............
	defb 0d0h,040h,0c0h,050h,080h,050h,040h,050h,0ffh	; 6761  .@.P.P@P.

; ----------------------------------------------------------------------
; DATOS sonido_676A: envolvente o efecto: [volumen|tono alto][tono bajo] por
;   cuadro, 0x1X ruido, 0x2X mezclador, 0xFE repite, 0xFF acaba; lo leen
;   p04:65A4 (45 bytes)
;   0x676a..0x6797  (45 bytes)
DATA_sonido_676A:
	defb 022h,002h,0e0h,080h,0b0h,078h,0e0h,070h,0b0h,068h,0e0h,060h,0b0h,058h,022h,001h	; 676a  "....x.p.h.`.X".
	defb 0e0h,070h,0b0h,078h,0e0h,070h,0b0h,068h,0e0h,060h,0b0h,058h,090h,040h,0e0h,070h	; 677a  .p.x.p.h.`.X.@.p
	defb 0b0h,068h,0e0h,060h,0b0h,058h,090h,040h,050h,040h,030h,040h,0ffh	; 678a  .h.`.X.@P@0@.

; ----------------------------------------------------------------------
; DATOS sonido_6797: envolvente o efecto: [volumen|tono alto][tono bajo] por
;   cuadro, 0x1X ruido, 0x2X mezclador, 0xFE repite, 0xFF acaba; lo leen
;   p04:65A4 (1 bytes)
;   0x6797..0x6798  (1 bytes)
DATA_sonido_6797:
	defb 0ffh	; 6797

; ----------------------------------------------------------------------
; DATOS sonido_6798: envolvente o efecto: [volumen|tono alto][tono bajo] por
;   cuadro, 0x1X ruido, 0x2X mezclador, 0xFE repite, 0xFF acaba; lo leen
;   p04:65A4 (30 bytes)
;   0x6798..0x67b6  (30 bytes)
DATA_sonido_6798:
	defb 022h,001h,0e4h,000h,0f6h,000h,023h,001h,018h,0f0h,000h,017h,0e0h,000h,016h,0d0h	; 6798  ".....#.........
	defb 000h,015h,0c0h,000h,014h,0b0h,000h,013h,0a0h,000h,014h,090h,000h,0ffh	; 67a8  ..............

; ----------------------------------------------------------------------
; DATOS sonido_67B6: envolvente o efecto: [volumen|tono alto][tono bajo] por
;   cuadro, 0x1X ruido, 0x2X mezclador, 0xFE repite, 0xFF acaba; lo leen
;   p04:65A4 (30 bytes)
;   0x67b6..0x67d4  (30 bytes)
DATA_sonido_67B6:
	defb 023h,001h,01ch,0d0h,004h,01ah,0e0h,004h,017h,0f0h,004h,016h,0e0h,004h,015h,0d0h	; 67b6  #...............
	defb 004h,014h,0c0h,004h,013h,0b0h,000h,013h,0a0h,000h,014h,090h,000h,0ffh	; 67c6  ..............

; ----------------------------------------------------------------------
; DATOS sonido_67D4: envolvente o efecto: [volumen|tono alto][tono bajo] por
;   cuadro, 0x1X ruido, 0x2X mezclador, 0xFE repite, 0xFF acaba; lo leen
;   p04:65A4 (27 bytes)
;   0x67d4..0x67ef  (27 bytes)
DATA_sonido_67D4:
	defb 023h,001h,011h,0d2h,000h,012h,0e8h,000h,013h,0f4h,000h,014h,0e3h,000h,015h,0d2h	; 67d4  #...............
	defb 080h,016h,0c2h,040h,017h,0b2h,020h,018h,0a2h,010h,0ffh	; 67e4  ...@.. ....

; ----------------------------------------------------------------------
; DATOS sonido_67EF: envolvente o efecto: [volumen|tono alto][tono bajo] por
;   cuadro, 0x1X ruido, 0x2X mezclador, 0xFE repite, 0xFF acaba; lo leen
;   p04:65A4 (27 bytes)
;   0x67ef..0x680a  (27 bytes)
DATA_sonido_67EF:
	defb 023h,001h,018h,0d1h,000h,018h,0e4h,000h,017h,0f2h,000h,016h,0e1h,080h,015h,0d1h	; 67ef  #...............
	defb 040h,014h,0c1h,020h,013h,0b1h,010h,012h,0a1h,008h,0ffh	; 67ff  @.. .......

; ----------------------------------------------------------------------
; DATOS sonido_680A: envolvente o efecto: [volumen|tono alto][tono bajo] por
;   cuadro, 0x1X ruido, 0x2X mezclador, 0xFE repite, 0xFF acaba; lo leen
;   p04:65A4 (21 bytes)
;   0x680a..0x681f  (21 bytes)
DATA_sonido_680A:
	defb 02ah,004h,002h,000h,0e0h,0c0h,02ah,001h,000h,001h,0e0h,0c0h,0e0h,080h,0e0h,060h	; 680a  *.....*........`
	defb 0e0h,040h,0e0h,020h,0ffh	; 681a

; ----------------------------------------------------------------------
; DATOS sonido_681F: envolvente o efecto: [volumen|tono alto][tono bajo] por
;   cuadro, 0x1X ruido, 0x2X mezclador, 0xFE repite, 0xFF acaba; lo leen
;   p04:65A4 (29 bytes)
;   0x681f..0x683c  (29 bytes)
DATA_sonido_681F:
	defb 021h,002h,01dh,0e0h,000h,01bh,0c0h,000h,01dh,0e0h,000h,023h,001h,014h,0d0h,020h	; 681f  !..........#...
	defb 013h,0b0h,020h,012h,090h,020h,011h,070h,020h,010h,060h,020h,0ffh	; 682f  .. .. .p .` .

; ----------------------------------------------------------------------
; DATOS sonido_683C: envolvente o efecto: [volumen|tono alto][tono bajo] por
;   cuadro, 0x1X ruido, 0x2X mezclador, 0xFE repite, 0xFF acaba; lo leen
;   p04:65A4 (30 bytes)
;   0x683c..0x685a  (30 bytes)
DATA_sonido_683C:
	defb 023h,001h,010h,0d0h,004h,012h,0e0h,008h,013h,0f0h,00ch,014h,0e0h,010h,015h,0d0h	; 683c  #...............
	defb 014h,016h,0c0h,018h,017h,0b0h,01ch,018h,0a0h,020h,019h,090h,024h,0ffh	; 684c  ......... ..$.

; ----------------------------------------------------------------------
; DATOS sonido_685A: envolvente o efecto: [volumen|tono alto][tono bajo] por
;   cuadro, 0x1X ruido, 0x2X mezclador, 0xFE repite, 0xFF acaba; lo leen
;   p04:65A4 (13 bytes)
;   0x685a..0x6867  (13 bytes)
DATA_sonido_685A:
	defb 02ah,001h,000h,001h,080h,0c0h,080h,0d0h,080h,0e0h,080h,0f0h,0ffh	; 685a  *............

; ----------------------------------------------------------------------
; DATOS sonido_6867: envolvente o efecto: [volumen|tono alto][tono bajo] por
;   cuadro, 0x1X ruido, 0x2X mezclador, 0xFE repite, 0xFF acaba; lo leen
;   p04:65A4 (19 bytes)
;   0x6867..0x687a  (19 bytes)
DATA_sonido_6867:
	defb 022h,002h,0d8h,020h,0e4h,020h,0f2h,020h,0e1h,020h,0d0h,0a0h,0c0h,060h,0b0h,000h	; 6867  ".. . . . ...`..
	defb 0a0h,030h,0ffh	; 6877

; ----------------------------------------------------------------------
; DATOS sonido_687A: envolvente o efecto: [volumen|tono alto][tono bajo] por
;   cuadro, 0x1X ruido, 0x2X mezclador, 0xFE repite, 0xFF acaba; lo leen
;   p04:65A4 (17 bytes)
;   0x687a..0x688b  (17 bytes)
DATA_sonido_687A:
	defb 022h,001h,0a2h,000h,0a1h,020h,0a1h,0d0h,0c1h,030h,0b1h,080h,082h,000h,061h,0b0h	; 687a  ".... ...0....a.
	defb 0ffh	; 688a

; ----------------------------------------------------------------------
; DATOS ff_de_mas_688B: otro 0xFF detras del que acaba la pista: no se llega;
;   lo leen p04:65A4 (1 bytes)
;   0x688b..0x688c  (1 bytes)
DATA_ff_de_mas_688B:
	defb 0ffh	; 688b

; ----------------------------------------------------------------------
; DATOS sonido_688C: envolvente o efecto: [volumen|tono alto][tono bajo] por
;   cuadro, 0x1X ruido, 0x2X mezclador, 0xFE repite, 0xFF acaba; lo leen
;   p04:65A4 (20 bytes)
;   0x688c..0x68a0  (20 bytes)
DATA_sonido_688C:
	defb 02bh,001h,000h,001h,010h,084h,000h,083h,000h,082h,000h,081h,000h,080h,080h,080h	; 688c  +...............
	defb 040h,080h,020h,0ffh	; 689c

; ----------------------------------------------------------------------
; DATOS sonido_68A0: envolvente o efecto: [volumen|tono alto][tono bajo] por
;   cuadro, 0x1X ruido, 0x2X mezclador, 0xFE repite, 0xFF acaba; lo leen
;   p04:65A4 (23 bytes)
;   0x68a0..0x68b7  (23 bytes)
DATA_sonido_68A0:
	defb 022h,002h,0d2h,020h,0e1h,020h,0f0h,0a0h,0e0h,060h,0d0h,040h,0c2h,020h,0d1h,020h	; 68a0  ".. . ...`.@. .
	defb 0e0h,0a0h,0d0h,060h,0c0h,040h,0ffh	; 68b0

; ----------------------------------------------------------------------
; DATOS sonido_68B7: envolvente o efecto: [volumen|tono alto][tono bajo] por
;   cuadro, 0x1X ruido, 0x2X mezclador, 0xFE repite, 0xFF acaba; lo leen
;   p04:65A4 (147 bytes)
;   0x68b7..0x694a  (147 bytes)
DATA_sonido_68B7:
	defb 022h,001h,0e0h,0e0h,0e1h,060h,0e1h,0e0h,0e2h,060h,0e2h,0e0h,0e3h,060h,0e3h,0e0h	; 68b7  "....`...`...`..
	defb 0e0h,060h,0d0h,0e0h,0d1h,060h,0d1h,0e0h,0d2h,060h,0d2h,0e0h,0d3h,060h,0d3h,0e0h	; 68c7  .`...`...`...`..
	defb 0d0h,060h,0c0h,0e0h,0c1h,060h,0c1h,0e0h,0c2h,060h,0c2h,0e0h,0c3h,060h,0c3h,0e0h	; 68d7  .`...`...`...`..
	defb 0c0h,060h,0b0h,0e0h,0b1h,060h,0b1h,0e0h,0b2h,060h,0b2h,0e0h,0b3h,060h,0b3h,0e0h	; 68e7  .`...`...`...`..
	defb 0b0h,060h,0a0h,0e0h,0a1h,060h,0a1h,0e0h,0a2h,060h,0a2h,0e0h,0a3h,060h,0a3h,0e0h	; 68f7  .`...`...`...`..
	defb 0a0h,060h,090h,0e0h,091h,060h,091h,0e0h,092h,060h,092h,0e0h,093h,060h,093h,0e0h	; 6907  .`...`...`...`..
	defb 090h,060h,080h,0e0h,081h,060h,081h,0e0h,082h,060h,082h,0e0h,083h,060h,083h,0e0h	; 6917  .`...`...`...`..
	defb 080h,060h,070h,0e0h,071h,060h,071h,0e0h,072h,060h,072h,0e0h,073h,060h,073h,0e0h	; 6927  .`p.q`q.r`r.s`s.
	defb 070h,060h,060h,0e0h,061h,060h,061h,0e0h,062h,060h,062h,0e0h,063h,060h,063h,0e0h	; 6937  p``.a`a.b`b.c`c.
	defb 060h,060h,0ffh	; 6947

; ----------------------------------------------------------------------
; DATOS sonido_694A: envolvente o efecto: [volumen|tono alto][tono bajo] por
;   cuadro, 0x1X ruido, 0x2X mezclador, 0xFE repite, 0xFF acaba; lo leen
;   p04:65A4 (13 bytes)
;   0x694a..0x6957  (13 bytes)
DATA_sonido_694A:
	defb 022h,001h,0e0h,080h,0f4h,000h,0d2h,000h,0b1h,000h,0a0h,080h,0ffh	; 694a  "............

; ----------------------------------------------------------------------
; DATOS sonido_6957: envolvente o efecto: [volumen|tono alto][tono bajo] por
;   cuadro, 0x1X ruido, 0x2X mezclador, 0xFE repite, 0xFF acaba; lo leen
;   p04:65A4 (13 bytes)
;   0x6957..0x6964  (13 bytes)
DATA_sonido_6957:
	defb 02ah,004h,000h,003h,0c0h,008h,040h,006h,0feh,004h,057h,069h,0ffh	; 6957  *.....@...Wi.

; ----------------------------------------------------------------------
; DATOS sonido_6964: envolvente o efecto: [volumen|tono alto][tono bajo] por
;   cuadro, 0x1X ruido, 0x2X mezclador, 0xFE repite, 0xFF acaba; lo leen
;   p04:65A4 (13 bytes)
;   0x6964..0x6971  (13 bytes)
DATA_sonido_6964:
	defb 022h,001h,0e2h,000h,0c2h,000h,02ah,040h,010h,000h,092h,000h,0ffh	; 6964  ".....*@.....

; ----------------------------------------------------------------------
; DATOS sonido_6971: envolvente o efecto: [volumen|tono alto][tono bajo] por
;   cuadro, 0x1X ruido, 0x2X mezclador, 0xFE repite, 0xFF acaba; lo leen
;   p04:65A4 (29 bytes)
;   0x6971..0x698e  (29 bytes)
DATA_sonido_6971:
	defb 022h,001h,090h,0d0h,0b0h,0a0h,0c0h,0b5h,022h,002h,0c0h,0d0h,0b0h,0d2h,0a0h,0d4h	; 6971  ".......".......
	defb 0a0h,0b5h,0c0h,0d0h,0b0h,0d2h,0a0h,0d4h,090h,0d7h,090h,0dch,0ffh	; 6981  .............

; ----------------------------------------------------------------------
; DATOS sonido_698E: envolvente o efecto: [volumen|tono alto][tono bajo] por
;   cuadro, 0x1X ruido, 0x2X mezclador, 0xFE repite, 0xFF acaba; lo leen
;   p04:65A4 (37 bytes)
;   0x698e..0x69b3  (37 bytes)
DATA_sonido_698E:
	defb 022h,001h,0d4h,000h,0d3h,000h,0d2h,000h,0d4h,000h,0d3h,000h,0e4h,000h,0f2h,000h	; 698e  "...............
	defb 0f3h,000h,0f5h,000h,0e2h,000h,0d3h,000h,0c4h,000h,0b5h,000h,0b3h,000h,0a4h,000h	; 699e  ................
	defb 0a3h,000h,084h,000h,0ffh	; 69ae

; ----------------------------------------------------------------------
; DATOS sonido_69B3: envolvente o efecto: [volumen|tono alto][tono bajo] por
;   cuadro, 0x1X ruido, 0x2X mezclador, 0xFE repite, 0xFF acaba; lo leen
;   p04:65A4 (43 bytes)
;   0x69b3..0x69de  (43 bytes)
DATA_sonido_69B3:
	defb 021h,001h,010h,0c0h,000h,013h,0e0h,000h,012h,0d0h,000h,011h,0d0h,000h,010h,0c0h	; 69b3  !...............
	defb 000h,021h,002h,012h,0d0h,000h,0f0h,000h,011h,0e0h,000h,0d0h,000h,010h,0c0h,000h	; 69c3  .!..............
	defb 0b0h,000h,0a0h,000h,090h,000h,080h,000h,070h,000h,0ffh	; 69d3  ........p..

; ----------------------------------------------------------------------
; DATOS ff_de_mas_69DE: otro 0xFF detras del que acaba la pista: no se llega;
;   lo leen p04:65A4 (1 bytes)
;   0x69de..0x69df  (1 bytes)
DATA_ff_de_mas_69DE:
	defb 0ffh	; 69de

; ----------------------------------------------------------------------
; DATOS sonido_69DF: envolvente o efecto: [volumen|tono alto][tono bajo] por
;   cuadro, 0x1X ruido, 0x2X mezclador, 0xFE repite, 0xFF acaba; lo leen
;   p04:65A4 (43 bytes)
;   0x69df..0x6a0a  (43 bytes)
DATA_sonido_69DF:
	defb 022h,001h,0e3h,0fch,0b3h,0fch,093h,0fch,0e3h,0c3h,0b3h,0c3h,093h,0c3h,0e3h,093h	; 69df  "...............
	defb 093h,093h,0e3h,064h,0b3h,064h,093h,064h,0e3h,039h,0b3h,039h,093h,039h,0e3h,012h	; 69ef  ...d.d.d.9.9.9..
	defb 0b3h,012h,093h,012h,0e2h,0f6h,0b2h,0f6h,092h,0f6h,0ffh	; 69ff  ...........

; ----------------------------------------------------------------------
; DATOS ff_de_mas_6A0A: otro 0xFF detras del que acaba la pista: no se llega;
;   lo leen p04:65A4 (1 bytes)
;   0x6a0a..0x6a0b  (1 bytes)
DATA_ff_de_mas_6A0A:
	defb 0ffh	; 6a0a

; ----------------------------------------------------------------------
; DATOS sonido_6A0B: envolvente o efecto: [volumen|tono alto][tono bajo] por
;   cuadro, 0x1X ruido, 0x2X mezclador, 0xFE repite, 0xFF acaba; lo leen
;   p04:65A4 (53 bytes)
;   0x6a0b..0x6a40  (53 bytes)
DATA_sonido_6A0B:
	defb 022h,001h,0e1h,080h,0e1h,0c0h,0e2h,000h,0e2h,040h,0e2h,080h,0e2h,0c0h,0e3h,000h	; 6a0b  "........@......
	defb 0e3h,000h,0d3h,000h,0c3h,000h,0b3h,000h,0a3h,000h,093h,000h,083h,000h,073h,000h	; 6a1b  ..............s.
	defb 063h,000h,053h,000h,043h,000h,053h,000h,043h,000h,053h,000h,043h,000h,053h,000h	; 6a2b  c.S.C.S.C.S.C.S.
	defb 053h,000h,053h,000h,0ffh	; 6a3b

; ----------------------------------------------------------------------
; DATOS sonido_6A40: envolvente o efecto: [volumen|tono alto][tono bajo] por
;   cuadro, 0x1X ruido, 0x2X mezclador, 0xFE repite, 0xFF acaba; lo leen
;   p04:65A4 (84 bytes)
;   0x6a40..0x6a94  (84 bytes)
DATA_sonido_6A40:
	defb 023h,001h,010h,0f0h,030h,0f0h,02eh,0e0h,02ch,0e0h,02ah,0d0h,028h,0d0h,026h,0c0h	; 6a40  #...0...,.*.(.&.
	defb 024h,0c0h,022h,0e0h,024h,0e0h,026h,0d0h,028h,0d0h,02ah,0c0h,02ch,0c0h,02eh,0b0h	; 6a50  $.".$.&.(.*.,...
	defb 030h,0b0h,032h,0d0h,030h,0d0h,02eh,0c0h,02ch,0c0h,02ah,0b0h,028h,0b0h,026h,0a0h	; 6a60  0.2.0...,.*.(.&.
	defb 024h,0a0h,022h,0c0h,024h,0c0h,026h,0b0h,028h,0b0h,02ah,0a0h,02ch,0a0h,02eh,090h	; 6a70  $.".$.&.(.*.,...
	defb 030h,090h,02eh,0b0h,02ch,0b0h,02ah,0a0h,028h,0a0h,026h,090h,024h,090h,022h,080h	; 6a80  0...,.*.(.&.$.".
	defb 020h,080h,01eh,0ffh	; 6a90

; ----------------------------------------------------------------------
; DATOS sonido_6A94: envolvente o efecto: [volumen|tono alto][tono bajo] por
;   cuadro, 0x1X ruido, 0x2X mezclador, 0xFE repite, 0xFF acaba; lo leen
;   p04:65A4 (37 bytes)
;   0x6a94..0x6ab9  (37 bytes)
DATA_sonido_6A94:
	defb 023h,001h,018h,0a3h,000h,01dh,0b2h,000h,01eh,0b3h,000h,01ch,0e1h,080h,01fh,0d3h	; 6a94  #...............
	defb 000h,0d1h,080h,0e2h,000h,0f2h,080h,0c1h,080h,0b2h,000h,023h,005h,01fh,091h,0c0h	; 6aa4  ...........#....
	defb 082h,060h,073h,000h,0ffh	; 6ab4

; ----------------------------------------------------------------------
; DATOS sonido_6AB9: envolvente o efecto: [volumen|tono alto][tono bajo] por
;   cuadro, 0x1X ruido, 0x2X mezclador, 0xFE repite, 0xFF acaba; lo leen
;   p04:65A4 (62 bytes)
;   0x6ab9..0x6af7  (62 bytes)
DATA_sonido_6AB9:
	defb 023h,002h,010h,0f0h,080h,022h,001h,0e0h,080h,0e1h,000h,0e1h,080h,0efh,0f0h,0e0h	; 6ab9  #...."..........
	defb 070h,0e0h,0f0h,0e1h,070h,0efh,0e0h,0d0h,060h,0d0h,0e0h,0d1h,060h,0dfh,0d0h,0d0h	; 6ac9  p...p...`...`...
	defb 050h,0d1h,050h,0dfh,0c0h,0c0h,040h,0c1h,040h,0cfh,0b0h,0c0h,030h,0c1h,030h,0cfh	; 6ad9  P.P...@.@...0.0.
	defb 0a0h,0b0h,020h,0b1h,020h,0bfh,090h,0a0h,010h,091h,010h,08fh,080h,0ffh	; 6ae9  .. . .........

; ----------------------------------------------------------------------
; DATOS sonido_6AF7: envolvente o efecto: [volumen|tono alto][tono bajo] por
;   cuadro, 0x1X ruido, 0x2X mezclador, 0xFE repite, 0xFF acaba; lo leen
;   p04:65A4 (59 bytes)
;   0x6af7..0x6b32  (59 bytes)
DATA_sonido_6AF7:
	defb 022h,001h,070h,080h,070h,090h,070h,080h,070h,08fh,0f0h,080h,0f0h,08fh,0e0h,07eh	; 6af7  ".p.p.p.p......~
	defb 0e0h,08dh,0d0h,07ch,0d0h,08bh,0d0h,07ah,0d0h,089h,0c0h,078h,0c0h,089h,0c0h,07ah	; 6b07  ...|...z...x...z
	defb 0c0h,08bh,0b0h,07ch,0b0h,08dh,0b0h,07eh,0b0h,08fh,0a0h,080h,0a0h,093h,0a0h,084h	; 6b17  ...|...~........
	defb 090h,096h,090h,088h,080h,096h,060h,098h,040h,09bh,0ffh	; 6b27  ......`.@..

; ----------------------------------------------------------------------
; DATOS sonido_6B32: envolvente o efecto: [volumen|tono alto][tono bajo] por
;   cuadro, 0x1X ruido, 0x2X mezclador, 0xFE repite, 0xFF acaba; lo leen
;   p04:65A4 (19 bytes)
;   0x6b32..0x6b45  (19 bytes)
DATA_sonido_6B32:
	defb 022h,002h,0f8h,000h,0f7h,000h,0f6h,000h,0f5h,000h,0f4h,000h,0f3h,000h,0e4h,000h	; 6b32  "...............
	defb 0c5h,000h,0ffh	; 6b42

; ----------------------------------------------------------------------
; DATOS sonido_6B45: envolvente o efecto: [volumen|tono alto][tono bajo] por
;   cuadro, 0x1X ruido, 0x2X mezclador, 0xFE repite, 0xFF acaba; lo leen
;   p04:65A4 (19 bytes)
;   0x6b45..0x6b58  (19 bytes)
DATA_sonido_6B45:
	defb 022h,001h,0e2h,015h,090h,00ch,0c4h,000h,000h,000h,022h,001h,0c3h,0c0h,0a3h,080h	; 6b45  ".........".....
	defb 083h,050h,0ffh	; 6b55

; ----------------------------------------------------------------------
; DATOS sonido_6B58: envolvente o efecto: [volumen|tono alto][tono bajo] por
;   cuadro, 0x1X ruido, 0x2X mezclador, 0xFE repite, 0xFF acaba; lo leen
;   p04:65A4 (43 bytes)
;   0x6b58..0x6b83  (43 bytes)
DATA_sonido_6B58:
	defb 023h,003h,01fh,0c6h,0fah,0c6h,0dah,01bh,0c6h,0cah,0c6h,0aah,017h,0c6h,09ah,0c6h	; 6b58  #...............
	defb 07ah,014h,0c6h,01ah,06ah,0c6h,04ah,012h,0c6h,03ah,0c6h,01ah,023h,006h,011h,0b6h	; 6b68  z...j.J..:..#...
	defb 01ah,0a6h,01ah,010h,096h,01ah,086h,01ah,046h,01ah,0ffh	; 6b78  ........F..

; ----------------------------------------------------------------------
; DATOS sonido_6B83: envolvente o efecto: [volumen|tono alto][tono bajo] por
;   cuadro, 0x1X ruido, 0x2X mezclador, 0xFE repite, 0xFF acaba; lo leen
;   p04:65A4 (103 bytes)
;   0x6b83..0x6bea  (103 bytes)
DATA_sonido_6B83:
	defb 022h,001h,0d0h,0fah,0d0h,07ah,0e0h,0f8h,0e0h,078h,0f0h,0f6h,0f0h,076h,0f0h,0f4h	; 6b83  "....z...x...v..
	defb 0f0h,074h,0e0h,0f2h,0e0h,072h,0d0h,0f0h,0d0h,070h,0c0h,0eeh,0c0h,07eh,0b0h,0ech	; 6b93  .t...r...p...~..
	defb 0b0h,07ch,0a0h,0eah,0a0h,07ah,090h,0e8h,090h,078h,080h,0e6h,080h,076h,090h,0e4h	; 6ba3  .|...z...x...v..
	defb 090h,074h,0a0h,0e2h,0a0h,072h,0b0h,0e0h,0b0h,070h,0c0h,0deh,0c0h,06eh,0d0h,0dch	; 6bb3  .t...r...p...n..
	defb 0d0h,06ch,0e0h,0dah,0e0h,06ah,0f0h,0d8h,0f0h,068h,0e0h,0d6h,0e0h,066h,0d0h,0d4h	; 6bc3  .l...j...h...f..
	defb 0d0h,064h,0c0h,0d2h,0c0h,062h,0b0h,0d0h,0b0h,060h,0a0h,0ceh,0a0h,05eh,090h,0cdh	; 6bd3  .d...b...`...^..
	defb 090h,05dh,080h,0cbh,080h,05bh,0ffh	; 6be3

; ----------------------------------------------------------------------
; DATOS sonido_6BEA: envolvente o efecto: [volumen|tono alto][tono bajo] por
;   cuadro, 0x1X ruido, 0x2X mezclador, 0xFE repite, 0xFF acaba; lo leen
;   p04:65A4 (135 bytes)
;   0x6bea..0x6c71  (135 bytes)
DATA_sonido_6BEA:
	defb 022h,001h,0e1h,093h,0b1h,093h,091h,093h,0e1h,064h,0b1h,064h,091h,064h,0e1h,039h	; 6bea  "........d.d.d.9
	defb 0b1h,039h,091h,039h,0e1h,012h,0b1h,012h,091h,012h,0e0h,0f6h,0b0h,0f6h,090h,0f6h	; 6bfa  .9.9............
	defb 0e0h,0edh,0b0h,0edh,090h,0edh,0e0h,0e0h,0b0h,0e0h,090h,0e0h,0feh,002h,0eah,06bh	; 6c0a  ...............k
	defb 022h,001h,0e1h,039h,0b1h,039h,081h,039h,0e1h,012h,0b1h,012h,091h,012h,0e0h,0f6h	; 6c1a  "..9.9.9........
	defb 0b0h,0f6h,090h,0f6h,0e0h,0edh,0b0h,0edh,090h,0edh,0e0h,0e0h,0b0h,0e0h,090h,0e0h	; 6c2a  ................
	defb 0e0h,0d8h,0b0h,0d8h,090h,0d8h,0e0h,0c8h,0b0h,0c8h,090h,0c8h,0e0h,0f6h,0b0h,0f6h	; 6c3a  ................
	defb 090h,0f6h,0e0h,0edh,0b0h,0edh,090h,0edh,0e0h,0e0h,0b0h,0e0h,090h,0e0h,0e0h,0d8h	; 6c4a  ................
	defb 0b0h,0d8h,090h,0d8h,0e0h,0c8h,0b0h,0c8h,090h,0c8h,0e0h,0c0h,0b0h,0c0h,090h,0c0h	; 6c5a  ................
	defb 0e0h,0b0h,0b0h,0b0h,090h,0b0h,0ffh	; 6c6a

; ----------------------------------------------------------------------
; DATOS sonido_6C71: envolvente o efecto: [volumen|tono alto][tono bajo] por
;   cuadro, 0x1X ruido, 0x2X mezclador, 0xFE repite, 0xFF acaba; lo leen
;   p04:65A4 (63 bytes)
;   0x6c71..0x6cb0  (63 bytes)
DATA_sonido_6C71:
	defb 022h,001h,0d1h,033h,0d1h,003h,0d0h,0d3h,0d0h,0a3h,0d0h,073h,0d1h,007h,0d0h,0d7h	; 6c71  "..3.......s....
	defb 0d0h,0a7h,0d0h,077h,0d0h,047h,0c1h,007h,0c0h,0d7h,0c0h,0a7h,0c0h,077h,0c0h,047h	; 6c81  ...w.G.......w.G
	defb 0b1h,007h,0b0h,0d7h,0b0h,0a7h,0b0h,077h,0b0h,047h,0a1h,007h,0a0h,0d7h,090h,0a7h	; 6c91  .......w.G......
	defb 090h,077h,080h,047h,081h,007h,070h,0d7h,070h,0a7h,060h,077h,060h,047h,0ffh	; 6ca1  .w.G..p.p.`w`G.

; ----------------------------------------------------------------------
; DATOS sonido_6CB0: envolvente o efecto: [volumen|tono alto][tono bajo] por
;   cuadro, 0x1X ruido, 0x2X mezclador, 0xFE repite, 0xFF acaba; lo leen
;   p04:65A4 (63 bytes)
;   0x6cb0..0x6cef  (63 bytes)
DATA_sonido_6CB0:
	defb 023h,001h,010h,0d0h,020h,012h,0d0h,040h,0feh,004h,0b2h,06ch,010h,0e0h,020h,012h	; 6cb0  #... ..@...l.. .
	defb 0e0h,040h,0feh,004h,0bch,06ch,010h,0d0h,020h,012h,0d0h,040h,0feh,004h,0c6h,06ch	; 6cc0  .@...l.. ..@...l
	defb 010h,0b0h,020h,012h,0b0h,040h,0feh,004h,0d0h,06ch,010h,090h,020h,012h,090h,040h	; 6cd0  .. ..@...l.. ..@
	defb 0feh,004h,0dah,06ch,010h,070h,020h,012h,070h,040h,0feh,004h,0e4h,06ch,0ffh	; 6ce0  ...l.p .p@...l.

; ----------------------------------------------------------------------
; DATOS pista_6CEF: pista de musica (notas, silencios, tempo, octava, 0xE8
;   envolvente, 0xEA salta, 0xED llama, 0xFE repite, 0xFF acaba); lo leen
;   p04:638A (7 bytes)
;   0x6cef..0x6cf6  (7 bytes)
DATA_pista_6CEF:
	defb 0d1h,0fch,000h,0e8h,006h,037h,0ffh	; 6cef

; ----------------------------------------------------------------------
; DATOS pista_6CF6: pista de musica (notas, silencios, tempo, octava, 0xE8
;   envolvente, 0xEA salta, 0xED llama, 0xFE repite, 0xFF acaba); lo leen
;   p04:638A (7 bytes)
;   0x6cf6..0x6cfd  (7 bytes)
DATA_pista_6CF6:
	defb 0d1h,0fch,000h,0e8h,006h,047h,0ffh	; 6cf6

; ----------------------------------------------------------------------
; DATOS pista_6CFD: pista de musica (notas, silencios, tempo, octava, 0xE8
;   envolvente, 0xEA salta, 0xED llama, 0xFE repite, 0xFF acaba); lo leen
;   p04:638A (7 bytes)
;   0x6cfd..0x6d04  (7 bytes)
DATA_pista_6CFD:
	defb 0d1h,0fch,000h,0e8h,006h,057h,0ffh	; 6cfd

; ----------------------------------------------------------------------
; DATOS pista_6D04: pista de musica (notas, silencios, tempo, octava, 0xE8
;   envolvente, 0xEA salta, 0xED llama, 0xFE repite, 0xFF acaba); lo leen
;   p04:638A (46 bytes)
;   0x6d04..0x6d32  (46 bytes)
DATA_pista_6D04:
	defb 0dfh,0fch,033h,0e8h,006h,00fh,06fh,0feh,0feh,00ah,06dh,0dfh,0fch,033h,0e8h,006h	; 6d04  ..3...o...m..3..
	defb 01fh,07fh,0feh,0feh,015h,06dh,0dfh,0fch,033h,0e8h,006h,02fh,08fh,0feh,0feh,020h	; 6d14  .....m..3../...
	defb 06dh,0d1h,0fdh,088h,0e1h,004h,074h,044h,074h,0fdh,023h,0e0h,009h,0ffh	; 6d24  m.....tDt.#...

; ----------------------------------------------------------------------
; DATOS pista_6D32: pista de musica (notas, silencios, tempo, octava, 0xE8
;   envolvente, 0xEA salta, 0xED llama, 0xFE repite, 0xFF acaba); lo leen
;   p04:638A (47 bytes)
;   0x6d32..0x6d61  (47 bytes)
DATA_pista_6D32:
	defb 0e9h,0d6h,0edh,014h,070h,0edh,021h,070h,0edh,02ch,070h,0edh,021h,070h,0fbh,022h	; 6d32  ....p.!p.,p.!p."
	defb 0e2h,027h,057h,077h,047h,027h,057h,0fch,023h,071h,0fbh,023h,071h,0fah,023h,071h	; 6d42  .'WwG'W.#q.#q.#q
	defb 0f9h,023h,071h,0fch,044h,091h,0fbh,044h,091h,0fah,044h,091h,0f9h,044h,091h	; 6d52  .#q.D..D..D..D.

; ----------------------------------------------------------------------
; DATOS pista_6D61: pista de musica (notas, silencios, tempo, octava, 0xE8
;   envolvente, 0xEA salta, 0xED llama, 0xFE repite, 0xFF acaba); lo leen
;   p04:638A (210 bytes)
;   0x6d61..0x6e33  (210 bytes)
DATA_pista_6D61:
	defb 0e9h,0d6h,0edh,037h,070h,0fch,044h,021h,0c0h,0fch,033h,0e3h,090h,0fah,010h,093h	; 6d61  ...7p.D!..3.....
	defb 0f7h,000h,093h,0f5h,000h,093h,0edh,037h,070h,0fah,010h,023h,0f7h,000h,023h,0f5h	; 6d71  .......7p..#..#.
	defb 000h,023h,0edh,05ah,070h,0fch,044h,0e2h,051h,0c1h,0fbh,033h,02ah,0c0h,0edh,05ah	; 6d81  .#.Zp.D.Q..3*..Z
	defb 070h,0fbh,044h,0e2h,091h,0c1h,0fbh,033h,027h,0fbh,033h,0e1h,0c1h,020h,040h,050h	; 6d91  p.D....3'.3.. @P
	defb 040h,000h,020h,0fbh,022h,050h,040h,000h,020h,0c1h,053h,041h,000h,022h,0feh,002h	; 6da1  @. ."P@. .SA."..
	defb 0a4h,06dh,050h,040h,000h,020h,0c1h,053h,041h,050h,040h,050h,070h,092h,072h,041h	; 6db1  .mP@. .SAP@Pp.rA
	defb 0f9h,000h,0e2h,092h,072h,041h,0fch,022h,0e1h,020h,0fbh,033h,020h,0fah,033h,020h	; 6dc1  ....rA.". .3 .3
	defb 0fch,022h,090h,0fbh,033h,090h,0fah,033h,090h,0fch,022h,040h,0fbh,033h,040h,0fah	; 6dd1  ."..3..3.."@.3@.
	defb 033h,040h,0f9h,033h,040h,0f8h,033h,040h,0f7h,033h,040h,0fch,022h,020h,0fbh,033h	; 6de1  3@.3@.3@.3@." .3
	defb 040h,0fch,022h,050h,0fbh,033h,050h,0feh,002h,0c7h,06dh,0fbh,023h,022h,042h,051h	; 6df1  @."P.3P...m.#"BQ
	defb 072h,042h,001h,0fah,010h,021h,0f9h,000h,021h,0f7h,000h,021h,0f5h,000h,021h,0fah	; 6e01  rB...!..!..!..!.
	defb 044h,0e0h,020h,0f8h,044h,0e1h,050h,0f8h,044h,0e0h,020h,0f6h,044h,0e1h,050h,0f6h	; 6e11  D. .D.P.D. .D.P.
	defb 044h,0e0h,020h,0f4h,044h,0e1h,050h,0f4h,044h,0e0h,020h,0f2h,044h,0e1h,050h,0eah	; 6e21  D. .D.P.D. .D.P.
	defb 061h,06dh	; 6e31

; ----------------------------------------------------------------------
; DATOS pista_6E33: pista de musica (notas, silencios, tempo, octava, 0xE8
;   envolvente, 0xEA salta, 0xED llama, 0xFE repite, 0xFF acaba); lo leen
;   p04:638A (70 bytes)
;   0x6e33..0x6e79  (70 bytes)
DATA_pista_6E33:
	defb 0e9h,0d6h,0fdh,023h,0e3h,02fh,00fh,0e4h,0afh,0fdh,035h,093h,093h,091h,091h,091h	; 6e33  ...#./....5.....
	defb 091h,0fdh,054h,021h,020h,020h,0feh,003h,044h,06eh,020h,021h,020h,021h,020h,020h	; 6e43  ..T!  ..Dn ! !
	defb 021h,020h,020h,020h,020h,020h,020h,021h,020h,090h,0fch,035h,0e3h,021h,020h,020h	; 6e53  !      ! ..5.!
	defb 021h,020h,020h,020h,021h,020h,020h,020h,020h,020h,021h,020h,020h,021h,020h,020h	; 6e63  !   !     !  !
	defb 020h,020h,021h,021h,020h,020h	; 6e73

; ----------------------------------------------------------------------
; DATOS pista_6E79: pista de musica (notas, silencios, tempo, octava, 0xE8
;   envolvente, 0xEA salta, 0xED llama, 0xFE repite, 0xFF acaba); lo leen
;   p04:638A (147 bytes)
;   0x6e79..0x6f0c  (147 bytes)
DATA_pista_6E79:
	defb 0e9h,0d6h,0edh,0a6h,070h,0e4h,021h,0edh,0a6h,070h,0c0h,020h,0fch,044h,0e4h,021h	; 6e79  ....p.!..p. .D.!
	defb 021h,0e3h,021h,0e4h,021h,0feh,007h,085h,06eh,021h,021h,0e3h,021h,0c0h,020h,0e4h	; 6e89  !.!.!...n!!.!. .
	defb 021h,021h,0e3h,021h,0e4h,021h,0feh,006h,098h,06eh,022h,020h,0e3h,021h,0e4h,021h	; 6e99  !!.!.!...n" .!.!
	defb 0c1h,0e4h,020h,020h,0e3h,020h,0e4h,020h,020h,020h,0fbh,022h,0e4h,020h,0e3h,020h	; 6ea9  ..  . .   .". .
	defb 0feh,008h,0b3h,06eh,0e4h,0a0h,0e3h,0a0h,0feh,008h,0bdh,06eh,0e4h,070h,0e3h,070h	; 6eb9  ...n.......n.p.p
	defb 0feh,008h,0c5h,06eh,0e4h,090h,0e3h,090h,0feh,008h,0cdh,06eh,0e3h,020h,0e2h,020h	; 6ec9  ...n.......n. .
	defb 0feh,008h,0d5h,06eh,0e3h,000h,0e2h,000h,0feh,008h,0ddh,06eh,0e4h,0a1h,0a0h,0a0h	; 6ed9  ...n.......n....
	defb 0e3h,0a0h,0e4h,0a0h,0a0h,0a0h,091h,090h,090h,0e3h,090h,0e4h,090h,090h,090h,020h	; 6ee9  ...............
	defb 020h,020h,020h,0e3h,020h,0e4h,020h,020h,020h,021h,020h,020h,0e3h,021h,0e4h,021h	; 6ef9     . .   !  .!.!
	defb 0eah,079h,06eh	; 6f09

; ----------------------------------------------------------------------
; DATOS pista_6F0C: pista de musica (notas, silencios, tempo, octava, 0xE8
;   envolvente, 0xEA salta, 0xED llama, 0xFE repite, 0xFF acaba); lo leen
;   p04:638A (52 bytes)
;   0x6f0c..0x6f40  (52 bytes)
DATA_pista_6F0C:
	defb 0e9h,0d6h,0e7h,0edh,014h,070h,0edh,021h,070h,0edh,02ch,070h,0edh,021h,070h,0e9h	; 6f0c  .....p.!p.,p.!p.
	defb 0f9h,022h,0e3h,097h,0e2h,007h,027h,0e3h,0b7h,097h,0e2h,007h,0fah,023h,021h,0f9h	; 6f1c  ."....'......#!.
	defb 023h,021h,0f8h,023h,021h,0f7h,023h,021h,0fah,044h,041h,0f9h,044h,041h,0f8h,044h	; 6f2c  #!.#!.#!.DA.DA.D
	defb 041h,0f7h,044h,041h	; 6f3c

; ----------------------------------------------------------------------
; DATOS pista_6F40: pista de musica (notas, silencios, tempo, octava, 0xE8
;   envolvente, 0xEA salta, 0xED llama, 0xFE repite, 0xFF acaba); lo leen
;   p04:638A (212 bytes)
;   0x6f40..0x7014  (212 bytes)
DATA_pista_6F40:
	defb 0e9h,0d6h,0edh,0ddh,070h,0fbh,044h,051h,0c0h,0fbh,033h,050h,0f9h,010h,053h,0f6h	; 6f40  ....p.DQ..3P..S.
	defb 000h,053h,0f4h,000h,053h,0edh,0ddh,070h,0f9h,010h,053h,0f6h,000h,053h,0f4h,000h	; 6f50  .S..S..p..S..S..
	defb 053h,0edh,0ffh,070h,0e9h,0fbh,044h,0e2h,021h,0c1h,0fah,033h,0e3h,09ah,0c0h,0edh	; 6f60  S..p..D.!..3....
	defb 0ffh,070h,0e9h,0fah,033h,0e2h,051h,0c1h,0fah,033h,0e3h,097h,0c1h,0e8h,000h,0b0h	; 6f70  .p..3.Q..3......
	defb 0b0h,020h,0b0h,0b0h,0b0h,0e9h,0fah,022h,0e2h,090h,070h,040h,050h,0c1h,093h,071h	; 6f80  . ....."..p@P..q
	defb 040h,052h,0feh,002h,085h,06fh,090h,070h,040h,050h,0c1h,093h,071h,090h,070h,090h	; 6f90  @R...o.p@P..q.p.
	defb 0b0h,0e1h,012h,012h,011h,0e7h,0f9h,000h,0e2h,092h,072h,041h,0e9h,0fbh,022h,0e2h	; 6fa0  ..........rA..".
	defb 050h,0fah,033h,050h,0f9h,033h,050h,0fbh,022h,0e1h,000h,0fah,033h,000h,0f9h,033h	; 6fb0  P.3P.3P."...3..3
	defb 000h,0fbh,022h,0e2h,070h,0fah,033h,070h,0f9h,033h,070h,0f8h,033h,070h,0f7h,033h	; 6fc0  ..".p.3p.3p.3p.3
	defb 070h,0f6h,033h,070h,0fbh,022h,050h,0fah,033h,070h,0fbh,022h,090h,0fah,033h,090h	; 6fd0  p.3p."P.3p."..3.
	defb 0feh,002h,0adh,06fh,0fah,023h,052h,072h,091h,0a2h,072h,041h,0f9h,010h,051h,0f8h	; 6fe0  ...o.#Rr..rA..Q.
	defb 000h,051h,0f6h,000h,051h,0f4h,000h,051h,0f9h,044h,0e1h,090h,0f7h,044h,020h,0f7h	; 6ff0  .Q..Q..Q.D...D .
	defb 044h,090h,0f5h,044h,020h,0f5h,044h,090h,0f3h,044h,020h,0f3h,044h,090h,0f1h,044h	; 7000  D..D .D..D .D..D
	defb 020h,0eah,040h,06fh	; 7010

; ----------------------------------------------------------------------
; DATOS pista_7014: pista de musica (notas, silencios, tempo, octava, 0xE8
;   envolvente, 0xEA salta, 0xED llama, 0xFE repite, 0xFF acaba); lo leen
;   p04:638A (13 bytes)
;   0x7014..0x7021  (13 bytes)
DATA_pista_7014:
	defb 0fah,000h,0e1h,020h,0e2h,090h,050h,020h,0feh,004h,014h,070h,0eeh	; 7014  ... ..P ...p.

; ----------------------------------------------------------------------
; DATOS pista_7021: pista de musica (notas, silencios, tempo, octava, 0xE8
;   envolvente, 0xEA salta, 0xED llama, 0xFE repite, 0xFF acaba); lo leen
;   p04:638A (11 bytes)
;   0x7021..0x702c  (11 bytes)
DATA_pista_7021:
	defb 0e1h,040h,000h,0e2h,070h,040h,0feh,004h,021h,070h,0eeh	; 7021  .@..p@..!p.

; ----------------------------------------------------------------------
; DATOS pista_702C: pista de musica (notas, silencios, tempo, octava, 0xE8
;   envolvente, 0xEA salta, 0xED llama, 0xFE repite, 0xFF acaba); lo leen
;   p04:638A (11 bytes)
;   0x702c..0x7037  (11 bytes)
DATA_pista_702C:
	defb 0e1h,050h,020h,0e2h,0a0h,050h,0feh,004h,02ch,070h,0eeh	; 702c  .P ..P..,p.

; ----------------------------------------------------------------------
; DATOS pista_7037: pista de musica (notas, silencios, tempo, octava, 0xE8
;   envolvente, 0xEA salta, 0xED llama, 0xFE repite, 0xFF acaba); lo leen
;   p04:638A (35 bytes)
;   0x7037..0x705a  (35 bytes)
DATA_pista_7037:
	defb 0fbh,022h,0e3h,095h,0e2h,021h,051h,093h,0e1h,001h,0fch,044h,0e2h,0b1h,0c0h,0fch	; 7037  ."...!Q....D....
	defb 033h,090h,0fah,010h,073h,0f7h,000h,073h,0f5h,000h,073h,0fbh,022h,025h,051h,041h	; 7047  3...s..s..s."%QA
	defb 023h,001h,0eeh	; 7057

; ----------------------------------------------------------------------
; DATOS pista_705A: pista de musica (notas, silencios, tempo, octava, 0xE8
;   envolvente, 0xEA salta, 0xED llama, 0xFE repite, 0xFF acaba); lo leen
;   p04:638A (76 bytes)
;   0x705a..0x70a6  (76 bytes)
DATA_pista_705A:
	defb 0fch,033h,0e3h,091h,0c0h,0fbh,033h,090h,0fch,044h,0e2h,023h,0fbh,010h,091h,0f8h	; 705a  .3....3..D.#....
	defb 000h,091h,0fah,044h,0e1h,092h,0f7h,044h,090h,0fch,033h,0e3h,091h,0c0h,0fbh,033h	; 706a  ...D...D..3....3
	defb 090h,0fch,044h,0e2h,023h,0fbh,010h,081h,0f8h,000h,081h,0fah,044h,0e1h,082h,0f7h	; 707a  ..D.#.......D...
	defb 044h,080h,0fch,033h,0e3h,091h,0c0h,0fbh,033h,090h,0fch,044h,0e2h,023h,0fbh,010h	; 708a  D..3....3..D.#..
	defb 071h,0f8h,000h,071h,0fah,044h,0e1h,072h,0f7h,044h,070h,0eeh	; 709a  q..q.D.r.Dp.

; ----------------------------------------------------------------------
; DATOS pista_70A6: pista de musica (notas, silencios, tempo, octava, 0xE8
;   envolvente, 0xEA salta, 0xED llama, 0xFE repite, 0xFF acaba); lo leen
;   p04:638A (55 bytes)
;   0x70a6..0x70dd  (55 bytes)
DATA_pista_70A6:
	defb 0fch,044h,0e4h,022h,020h,0e3h,021h,0e4h,021h,021h,020h,020h,0e3h,021h,0e4h,021h	; 70a6  .D." .!.!!  .!.!
	defb 072h,070h,0e3h,071h,0e4h,071h,071h,070h,070h,0e3h,071h,0e4h,071h,0a2h,0a0h,0e3h	; 70b6  rp.q.qqpp.q.q...
	defb 0a1h,0e4h,0a1h,0e3h,002h,000h,0e2h,001h,0e3h,001h,0e4h,022h,020h,0e3h,021h,0e4h	; 70c6  ..........." .!.
	defb 021h,021h,020h,020h,0e3h,021h,0eeh	; 70d6

; ----------------------------------------------------------------------
; DATOS pista_70DD: pista de musica (notas, silencios, tempo, octava, 0xE8
;   envolvente, 0xEA salta, 0xED llama, 0xFE repite, 0xFF acaba); lo leen
;   p04:638A (34 bytes)
;   0x70dd..0x70ff  (34 bytes)
DATA_pista_70DD:
	defb 0fah,022h,0e3h,055h,051h,091h,0e2h,003h,041h,0fbh,044h,021h,0c0h,0fbh,033h,000h	; 70dd  .".UQ...A.D!..3.
	defb 0f9h,010h,0e3h,0b3h,0f6h,000h,0b3h,0f4h,000h,0b3h,0fah,022h,055h,091h,071h,053h	; 70ed  ..........."U.qS
	defb 041h,0eeh	; 70fd

; ----------------------------------------------------------------------
; DATOS pista_70FF: pista de musica (notas, silencios, tempo, octava, 0xE8
;   envolvente, 0xEA salta, 0xED llama, 0xFE repite, 0xFF acaba); lo leen
;   p04:638A (83 bytes)
;   0x70ff..0x7152  (83 bytes)
DATA_pista_70FF:
	defb 0fbh,033h,0e3h,051h,0c0h,0fah,033h,050h,0fbh,044h,093h,0fah,010h,0e2h,051h,0f7h	; 70ff  .3.Q..3P.D....Q.
	defb 000h,051h,0e7h,0fah,044h,0e1h,092h,0f7h,044h,090h,0e9h,0fah,033h,0e3h,051h,0c0h	; 710f  .Q..D...D...3.Q.
	defb 0f9h,033h,050h,0fbh,044h,0e3h,093h,0fah,010h,0e2h,041h,0f7h,000h,041h,0e7h,0fah	; 711f  .3P.D.....A..A..
	defb 044h,0e1h,082h,0f7h,044h,080h,0e9h,0fah,033h,0e3h,051h,0c0h,0f9h,033h,050h,0fbh	; 712f  D...D...3.Q..3P.
	defb 044h,0e3h,093h,0fah,010h,0e2h,041h,0f7h,000h,041h,0e7h,0fah,044h,0e1h,072h,0f7h	; 713f  D.....A..A..D.r.
	defb 044h,070h,0eeh	; 714f

; ----------------------------------------------------------------------
; DATOS pista_7152: pista de musica (notas, silencios, tempo, octava, 0xE8
;   envolvente, 0xEA salta, 0xED llama, 0xFE repite, 0xFF acaba); lo leen
;   p04:638A (69 bytes)
;   0x7152..0x7197  (69 bytes)
DATA_pista_7152:
	defb 0e9h,0d4h,0fch,022h,0e2h,023h,053h,023h,0edh,00ah,072h,0e9h,0e1h,027h,0e2h,053h	; 7152  ...".#S#..r..'.S
	defb 0edh,00ah,072h,0e9h,0fah,000h,0e2h,0a1h,0f7h,000h,0a1h,0fah,000h,0e1h,020h,0f7h	; 7162  ..r........... .
	defb 000h,020h,0fah,000h,052h,0f7h,000h,052h,0fah,000h,041h,0f7h,000h,041h,0fah,000h	; 7172  . ..R..R..A..A..
	defb 070h,0f7h,000h,070h,0fah,000h,0e0h,001h,0f9h,000h,001h,0f8h,000h,001h,0f6h,000h	; 7182  p..p............
	defb 000h,0f5h,000h,000h,0ffh	; 7192

; ----------------------------------------------------------------------
; DATOS pista_7197: pista de musica (notas, silencios, tempo, octava, 0xE8
;   envolvente, 0xEA salta, 0xED llama, 0xFE repite, 0xFF acaba); lo leen
;   p04:638A (46 bytes)
;   0x7197..0x71c5  (46 bytes)
DATA_pista_7197:
	defb 0e9h,0d4h,0fbh,012h,0edh,013h,072h,0edh,01ch,072h,0edh,013h,072h,0edh,01ch,072h	; 7197  ......r..r..r..r
	defb 0e4h,071h,0e3h,021h,071h,0a1h,0e2h,021h,071h,0e3h,051h,0e2h,001h,051h,0f9h,000h	; 71a7  .q.!q..!q.Q..Q..
	defb 091h,0f8h,000h,091h,0f7h,000h,091h,0f5h,000h,090h,0f4h,000h,090h,0ffh	; 71b7  ..............

; ----------------------------------------------------------------------
; DATOS pista_71C5: pista de musica (notas, silencios, tempo, octava, 0xE8
;   envolvente, 0xEA salta, 0xED llama, 0xFE repite, 0xFF acaba); lo leen
;   p04:638A (69 bytes)
;   0x71c5..0x720a  (69 bytes)
DATA_pista_71C5:
	defb 0e9h,0d4h,0fbh,022h,0e3h,0a3h,0e2h,023h,0e3h,0a3h,0edh,025h,072h,0e9h,0e2h,0a7h	; 71c5  ..."...#...%r...
	defb 023h,0edh,025h,072h,0e9h,0f9h,000h,0e2h,051h,0f6h,000h,051h,0fah,000h,0a0h,0f6h	; 71d5  #.%r....Q..Q....
	defb 000h,0a0h,0f9h,000h,0e1h,022h,0f6h,000h,022h,0f9h,000h,001h,0f6h,000h,001h,0f9h	; 71e5  ....."..".......
	defb 000h,040h,0f6h,000h,040h,0f9h,000h,071h,0f8h,000h,071h,0f7h,000h,071h,0f5h,000h	; 71f5  .@..@..q..q..q..
	defb 070h,0f4h,000h,070h,0ffh	; 7205

; ----------------------------------------------------------------------
; DATOS pista_720A: pista de musica (notas, silencios, tempo, octava, 0xE8
;   envolvente, 0xEA salta, 0xED llama, 0xFE repite, 0xFF acaba); lo leen
;   p04:638A (9 bytes)
;   0x720a..0x7213  (9 bytes)
DATA_pista_720A:
	defb 0e8h,002h,045h,073h,0e9h,0e8h,001h,001h,0eeh	; 720a  ..Es.....

; ----------------------------------------------------------------------
; DATOS pista_7213: pista de musica (notas, silencios, tempo, octava, 0xE8
;   envolvente, 0xEA salta, 0xED llama, 0xFE repite, 0xFF acaba); lo leen
;   p04:638A (9 bytes)
;   0x7213..0x721c  (9 bytes)
DATA_pista_7213:
	defb 0e4h,071h,0e3h,071h,0feh,003h,013h,072h,0eeh	; 7213  .q.q...r.

; ----------------------------------------------------------------------
; DATOS pista_721C: pista de musica (notas, silencios, tempo, octava, 0xE8
;   envolvente, 0xEA salta, 0xED llama, 0xFE repite, 0xFF acaba); lo leen
;   p04:638A (9 bytes)
;   0x721c..0x7225  (9 bytes)
DATA_pista_721C:
	defb 0e4h,091h,0e3h,091h,0feh,003h,01ch,072h,0eeh	; 721c  .......r.

; ----------------------------------------------------------------------
; DATOS pista_7225: pista de musica (notas, silencios, tempo, octava, 0xE8
;   envolvente, 0xEA salta, 0xED llama, 0xFE repite, 0xFF acaba); lo leen
;   p04:638A (6 bytes)
;   0x7225..0x722b  (6 bytes)
DATA_pista_7225:
	defb 0e8h,002h,005h,043h,071h,0eeh	; 7225

; ----------------------------------------------------------------------
; DATOS pista_722B: pista de musica (notas, silencios, tempo, octava, 0xE8
;   envolvente, 0xEA salta, 0xED llama, 0xFE repite, 0xFF acaba); lo leen
;   p04:638A (224 bytes)
;   0x722b..0x730b  (224 bytes)
DATA_pista_722B:
	defb 0e9h,0d5h,0fch,035h,0e1h,0c3h,0e9h,0d5h,0edh,00bh,073h,021h,0edh,00bh,073h,0e2h	; 722b  ...5......s!..s.
	defb 0b1h,0fah,000h,0e3h,09ah,0d1h,0fch,033h,0e2h,000h,040h,090h,0e1h,000h,040h,0d5h	; 723b  .......3..@...@.
	defb 09bh,0fch,032h,091h,083h,043h,0e2h,0b3h,089h,0fah,000h,0e3h,07ah,0d1h,0fch,033h	; 724b  ..2..C......z..3
	defb 0a0h,0e2h,020h,070h,0a0h,0e1h,020h,0d5h,07bh,0fch,032h,071h,063h,023h,0e2h,093h	; 725b  .. p.. .{.2qc#..
	defb 069h,0fah,000h,0e3h,05ah,0d1h,0fch,033h,090h,0e2h,000h,050h,090h,0e1h,000h,0d5h	; 726b  i...Z..3...P....
	defb 05bh,0fch,032h,051h,043h,003h,0e2h,073h,049h,0fah,011h,0e3h,0b1h,0a1h,0b1h,0e2h	; 727b  [.2QC..sI.......
	defb 011h,031h,041h,061h,081h,091h,081h,091h,061h,041h,061h,081h,091h,0b1h,0e1h,001h	; 728b  .1Aa....aAa.....
	defb 021h,041h,061h,081h,091h,0b1h,0fbh,012h,0e1h,041h,021h,041h,023h,001h,051h,0c1h	; 729b  !Aa......A!A#.Q.
	defb 041h,0c1h,021h,001h,021h,003h,0e2h,0b1h,0e1h,041h,0c1h,021h,0c1h,001h,0e2h,0b1h	; 72ab  A.!.!....A.!....
	defb 0e1h,001h,0e2h,0b3h,091h,0e1h,021h,0c1h,001h,0c1h,0fah,000h,0e2h,0b9h,0d1h,0e1h	; 72bb  ......!.........
	defb 000h,010h,020h,030h,040h,050h,060h,070h,080h,090h,0d5h,0bbh,0fbh,012h,0e1h,001h	; 72cb  .. 0@P`p........
	defb 001h,001h,023h,041h,051h,021h,071h,0c1h,0e2h,0b1h,0b1h,0b1h,0e1h,003h,021h,041h	; 72db  ..#AQ!q.......!A
	defb 001h,051h,0c1h,0e2h,091h,0b1h,0e1h,007h,0e2h,0b1h,0e1h,001h,027h,0fah,011h,0e2h	; 72eb  .Q..........'...
	defb 041h,061h,081h,091h,0b1h,0e1h,001h,021h,041h,061h,081h,091h,0b1h,0eah,03ch,072h	; 72fb  Aa.....!Aa....<r

; ----------------------------------------------------------------------
; DATOS pista_730B: pista de musica (notas, silencios, tempo, octava, 0xE8
;   envolvente, 0xEA salta, 0xED llama, 0xFE repite, 0xFF acaba); lo leen
;   p04:638A (15 bytes)
;   0x730b..0x731a  (15 bytes)
DATA_pista_730B:
	defb 0fch,033h,0e1h,042h,040h,041h,041h,041h,021h,002h,000h,001h,001h,001h,0eeh	; 730b  .3.B@AAA!......

; ----------------------------------------------------------------------
; DATOS pista_731A: pista de musica (notas, silencios, tempo, octava, 0xE8
;   envolvente, 0xEA salta, 0xED llama, 0xFE repite, 0xFF acaba); lo leen
;   p04:638A (167 bytes)
;   0x731a..0x73c1  (167 bytes)
DATA_pista_731A:
	defb 0e9h,0d5h,0fch,022h,0e3h,0c3h,0e9h,0d5h,0edh,0c1h,073h,071h,0edh,0c1h,073h,041h	; 731a  ..."......sq..sA
	defb 0fch,033h,0e4h,091h,091h,0e3h,041h,0feh,004h,02ah,073h,0e3h,0edh,0d0h,073h,0e4h	; 732a  .3....A..*s...s.
	defb 071h,071h,0e3h,021h,0feh,004h,039h,073h,021h,021h,091h,0feh,004h,042h,073h,0e4h	; 733a  qq.!..9s!!...Bs.
	defb 051h,051h,0e3h,001h,0feh,004h,049h,073h,001h,001h,071h,0feh,004h,052h,073h,0e4h	; 734a  QQ....Is..q..Rs.
	defb 0b1h,0b1h,0e3h,061h,0feh,004h,059h,073h,0e4h,0edh,0d0h,073h,0e4h,091h,0feh,006h	; 735a  ...a..Ys...s....
	defb 066h,073h,051h,051h,051h,051h,071h,0feh,006h,070h,073h,041h,041h,041h,041h,051h	; 736a  fsQQQQq..psAAAAQ
	defb 0feh,006h,079h,073h,021h,021h,021h,021h,041h,040h,040h,0feh,006h,082h,073h,091h	; 737a  ..ys!!!!A@@...s.
	defb 090h,090h,0feh,003h,089h,073h,0e3h,021h,020h,020h,021h,020h,020h,0e4h,071h,070h	; 738a  .....s.!  !  .qp
	defb 070h,0feh,003h,097h,073h,0e3h,001h,000h,000h,001h,000h,000h,0e4h,051h,050h,050h	; 739a  p...s........QPP
	defb 0feh,003h,0a6h,073h,0b1h,0b0h,0b0h,0feh,003h,0aeh,073h,0e4h,041h,0e3h,040h,040h	; 73aa  ...s......s.A.@@
	defb 0feh,006h,0b5h,073h,0eah,02ah,073h	; 73ba

; ----------------------------------------------------------------------
; DATOS pista_73C1: pista de musica (notas, silencios, tempo, octava, 0xE8
;   envolvente, 0xEA salta, 0xED llama, 0xFE repite, 0xFF acaba); lo leen
;   p04:638A (15 bytes)
;   0x73c1..0x73d0  (15 bytes)
DATA_pista_73C1:
	defb 0fch,033h,0e4h,092h,090h,091h,091h,091h,071h,052h,050h,051h,051h,051h,0eeh	; 73c1  .3......qRPQQQ.

; ----------------------------------------------------------------------
; DATOS pista_73D0: pista de musica (notas, silencios, tempo, octava, 0xE8
;   envolvente, 0xEA salta, 0xED llama, 0xFE repite, 0xFF acaba); lo leen
;   p04:638A (8 bytes)
;   0x73d0..0x73d8  (8 bytes)
DATA_pista_73D0:
	defb 041h,041h,0b1h,0feh,004h,0d0h,073h,0eeh	; 73d0  AA....s.

; ----------------------------------------------------------------------
; DATOS pista_73D8: pista de musica (notas, silencios, tempo, octava, 0xE8
;   envolvente, 0xEA salta, 0xED llama, 0xFE repite, 0xFF acaba); lo leen
;   p04:638A (219 bytes)
;   0x73d8..0x74b3  (219 bytes)
DATA_pista_73D8:
	defb 0e9h,0d5h,0fch,025h,0e1h,0c3h,0e9h,0d5h,0edh,0b3h,074h,0b1h,0edh,0b3h,074h,081h	; 73d8  ...%......t...t.
	defb 0f9h,000h,0e5h,09ah,0d1h,0fbh,033h,0e3h,040h,090h,0e2h,000h,040h,090h,0d5h,0e1h	; 73e8  ......3.@...@...
	defb 00bh,0fbh,032h,001h,0e2h,0b3h,083h,043h,049h,0f9h,000h,0e5h,07ah,0d1h,0fbh,033h	; 73f8  ..2....CI...z..3
	defb 0e3h,020h,070h,0a0h,0e2h,020h,070h,0d5h,0abh,0fbh,032h,0a1h,093h,063h,023h,029h	; 7408  . p.. p...2..c#)
	defb 0f9h,000h,0e5h,05ah,0d1h,0fbh,033h,0e3h,000h,050h,090h,0e2h,000h,050h,0d5h,09bh	; 7418  ...Z..3..P...P..
	defb 0fbh,032h,091h,073h,043h,003h,009h,0e3h,031h,011h,031h,041h,061h,081h,091h,0b1h	; 7428  .2.sC...1.1Aa...
	defb 0e2h,001h,0e3h,0b1h,0e2h,001h,0e3h,091h,081h,091h,0b1h,0e2h,001h,021h,041h,061h	; 7438  .............!Aa
	defb 081h,091h,0b1h,0e1h,001h,021h,0fah,012h,0e2h,001h,0e3h,0b1h,0e2h,001h,0e3h,0b3h	; 7448  .....!..........
	defb 091h,0e2h,021h,0c1h,001h,0c1h,0e3h,0b1h,091h,0b1h,093h,071h,0e2h,001h,0c1h,0e3h	; 7458  ..!........q....
	defb 0b1h,0c1h,091h,071h,091h,073h,051h,0b1h,0c1h,091h,0c1h,0f9h,000h,0e2h,049h,0d1h	; 7468  ...q.sQ.......I.
	defb 050h,060h,070h,080h,090h,0a0h,0b0h,0e1h,000h,010h,020h,0d5h,04bh,0fah,012h,0e3h	; 7478  P`p....... .K...
	defb 041h,041h,041h,053h,071h,091h,051h,0b1h,0c1h,021h,021h,021h,043h,051h,071h,041h	; 7488  AAASq.Q..!!!CQqA
	defb 091h,0c1h,001h,021h,047h,021h,041h,057h,0f9h,011h,081h,091h,0b1h,0e2h,001h,021h	; 7498  ...!G!AW.......!
	defb 041h,061h,081h,091h,0b1h,0e1h,001h,021h,0eah,0e8h,073h	; 74a8  Aa.....!..s

; ----------------------------------------------------------------------
; DATOS pista_74B3: pista de musica (notas, silencios, tempo, octava, 0xE8
;   envolvente, 0xEA salta, 0xED llama, 0xFE repite, 0xFF acaba); lo leen
;   p04:638A (16 bytes)
;   0x74b3..0x74c3  (16 bytes)
DATA_pista_74B3:
	defb 0fbh,022h,0e1h,002h,000h,001h,001h,001h,0e2h,0b1h,092h,090h,091h,091h,091h,0eeh	; 74b3  ."..............

; ----------------------------------------------------------------------
; DATOS pista_74C3: pista de musica (notas, silencios, tempo, octava, 0xE8
;   envolvente, 0xEA salta, 0xED llama, 0xFE repite, 0xFF acaba); lo leen
;   p04:638A (27 bytes)
;   0x74c3..0x74de  (27 bytes)
DATA_pista_74C3:
	defb 0e9h,0dbh,0fah,023h,0e1h,0edh,0deh,074h,0e8h,002h,031h,0e9h,0c0h,0feh,002h,0c3h	; 74c3  ...#...t..1.....
	defb 074h,0edh,03ch,075h,0e8h,001h,091h,0e9h,0eah,0c3h,074h	; 74d3  t.<u......t

; ----------------------------------------------------------------------
; DATOS pista_74DE: pista de musica (notas, silencios, tempo, octava, 0xE8
;   envolvente, 0xEA salta, 0xED llama, 0xFE repite, 0xFF acaba); lo leen
;   p04:638A (94 bytes)
;   0x74de..0x753c  (94 bytes)
DATA_pista_74DE:
	defb 0e8h,002h,0b1h,0e9h,0e8h,001h,0b1h,0e9h,0e8h,002h,021h,0e9h,0e8h,001h,021h,0e9h	; 74de  ..........!...!.
	defb 0e8h,002h,0b1h,0e9h,0e8h,001h,000h,0e9h,0e8h,002h,0b1h,091h,072h,0e9h,0e8h,001h	; 74ee  ............r...
	defb 071h,0e9h,0e8h,002h,041h,0e9h,0e8h,001h,041h,0e8h,002h,071h,0e9h,0e8h,001h,071h	; 74fe  q...A...A..q...q
	defb 0e9h,0e8h,002h,070h,092h,0b1h,0e9h,0e8h,001h,0b1h,0e9h,0e8h,002h,021h,0e9h,0e8h	; 750e  ...p.........!..
	defb 001h,021h,041h,020h,0e9h,0e8h,002h,0b1h,091h,072h,0e9h,0e8h,001h,071h,0e9h,0e8h	; 751e  .!A .....r...q..
	defb 002h,041h,0e9h,0e8h,001h,040h,0e9h,0e8h,002h,0a1h,091h,071h,0e9h,0eeh	; 752e  .A...@.....q..

; ----------------------------------------------------------------------
; DATOS pista_753C: pista de musica (notas, silencios, tempo, octava, 0xE8
;   envolvente, 0xEA salta, 0xED llama, 0xFE repite, 0xFF acaba); lo leen
;   p04:638A (47 bytes)
;   0x753c..0x756b  (47 bytes)
DATA_pista_753C:
	defb 0e9h,0e8h,002h,021h,0e9h,0e8h,001h,021h,0e9h,0e8h,002h,021h,0e9h,0e8h,001h,021h	; 753c  ...!...!...!...!
	defb 0e9h,0e8h,002h,061h,0e9h,0e8h,001h,061h,0e9h,0e8h,002h,091h,0e9h,0e8h,001h,091h	; 754c  ...a...a........
	defb 001h,021h,0e9h,0e8h,002h,091h,0e9h,0e8h,001h,001h,021h,061h,071h,0e9h,0eeh	; 755c  .!........!aq..

; ----------------------------------------------------------------------
; DATOS pista_756B: pista de musica (notas, silencios, tempo, octava, 0xE8
;   envolvente, 0xEA salta, 0xED llama, 0xFE repite, 0xFF acaba); lo leen
;   p04:638A (54 bytes)
;   0x756b..0x75a1  (54 bytes)
DATA_pista_756B:
	defb 0e9h,0dbh,0fbh,038h,0e3h,071h,0fah,038h,071h,071h,071h,0fbh,038h,051h,0fah,038h	; 756b  ...8.q.8qqq.8Q.8
	defb 051h,051h,051h,0fbh,038h,041h,0fah,038h,041h,041h,041h,0fbh,038h,031h,0fah,038h	; 757b  QQQ.8A.8AAA.81.8
	defb 031h,031h,031h,0feh,004h,06bh,075h,0fbh,038h,021h,0fah,038h,021h,021h,021h,0feh	; 758b  111..ku.8!.8!!!.
	defb 004h,092h,075h,0eah,06bh,075h	; 759b

; ----------------------------------------------------------------------
; DATOS pista_75A1: pista de musica (notas, silencios, tempo, octava, 0xE8
;   envolvente, 0xEA salta, 0xED llama, 0xFE repite, 0xFF acaba); lo leen
;   p04:638A (29 bytes)
;   0x75a1..0x75be  (29 bytes)
DATA_pista_75A1:
	defb 0e9h,0dbh,0fah,023h,0e1h,0c0h,0edh,0deh,074h,0e8h,002h,031h,0e9h,0feh,002h,0a1h	; 75a1  ...#....t..1....
	defb 075h,0e9h,0c0h,0edh,03ch,075h,0e8h,001h,090h,0e9h,0eah,0a1h,075h	; 75b1  u...<u......u

; ----------------------------------------------------------------------
; DATOS pista_75BE: pista de musica (notas, silencios, tempo, octava, 0xE8
;   envolvente, 0xEA salta, 0xED llama, 0xFE repite, 0xFF acaba); lo leen
;   p04:638A (65 bytes)
;   0x75be..0x75ff  (65 bytes)
DATA_pista_75BE:
	defb 0edh,0ffh,075h,0edh,0ffh,075h,0f6h,000h,000h,0f9h,000h,000h,0f6h,000h,040h,0f9h	; 75be  ..u..u........@.
	defb 000h,040h,0f6h,000h,070h,0f9h,000h,070h,0f6h,000h,090h,0f9h,000h,090h,0feh,004h	; 75ce  .@..p..p........
	defb 0c4h,075h,0f6h,000h,020h,0f9h,000h,020h,0f6h,000h,050h,0f9h,000h,050h,0f6h,000h	; 75de  .u.. .. ..P..P..
	defb 090h,0f9h,000h,090h,0f6h,000h,0a0h,0f9h,000h,0a0h,0feh,004h,0e0h,075h,0eah,0beh	; 75ee  .............u..
	defb 075h	; 75fe

; ----------------------------------------------------------------------
; DATOS pista_75FF: pista de musica (notas, silencios, tempo, octava, 0xE8
;   envolvente, 0xEA salta, 0xED llama, 0xFE repite, 0xFF acaba); lo leen
;   p04:638A (62 bytes)
;   0x75ff..0x763d  (62 bytes)
DATA_pista_75FF:
	defb 0e9h,0d4h,0f6h,000h,0e2h,090h,0f9h,000h,090h,0f6h,000h,0e1h,020h,0f9h,000h,020h	; 75ff  ............ ..
	defb 0f6h,000h,050h,0f9h,000h,050h,0f6h,000h,090h,0f9h,000h,090h,0feh,008h,0ffh,075h	; 760f  ..P..P.........u
	defb 0f6h,000h,0a0h,0f9h,000h,0a0h,0f6h,000h,0e1h,020h,0f9h,000h,020h,0f6h,000h,050h	; 761f  ......... .. ..P
	defb 0f9h,000h,050h,0f6h,000h,090h,0f9h,000h,090h,0feh,008h,01fh,076h,0eeh	; 762f  ..P.........v.

; ----------------------------------------------------------------------
; DATOS pista_763D: pista de musica (notas, silencios, tempo, octava, 0xE8
;   envolvente, 0xEA salta, 0xED llama, 0xFE repite, 0xFF acaba); lo leen
;   p04:638A (21 bytes)
;   0x763d..0x7652  (21 bytes)
DATA_pista_763D:
	defb 0edh,052h,076h,0edh,052h,076h,0e4h,097h,0e3h,047h,027h,007h,0e4h,0a7h,0e3h,057h	; 763d  .Rv.Rv...G'....W
	defb 047h,007h,0eah,03dh,076h	; 764d

; ----------------------------------------------------------------------
; DATOS pista_7652: pista de musica (notas, silencios, tempo, octava, 0xE8
;   envolvente, 0xEA salta, 0xED llama, 0xFE repite, 0xFF acaba); lo leen
;   p04:638A (24 bytes)
;   0x7652..0x766a  (24 bytes)
DATA_pista_7652:
	defb 0e9h,0d4h,0fch,035h,0e3h,027h,057h,047h,007h,0feh,002h,052h,076h,0e4h,0a7h,0e3h	; 7652  ...5.'WG...Rv...
	defb 057h,047h,007h,0feh,002h,05fh,076h,0eeh	; 7662  WG..._v.

; ----------------------------------------------------------------------
; DATOS pista_766A: pista de musica (notas, silencios, tempo, octava, 0xE8
;   envolvente, 0xEA salta, 0xED llama, 0xFE repite, 0xFF acaba); lo leen
;   p04:638A (21 bytes)
;   0x766a..0x767f  (21 bytes)
DATA_pista_766A:
	defb 0edh,07fh,076h,0edh,07fh,076h,0e5h,097h,0e4h,047h,027h,007h,0e5h,0a7h,0e4h,057h	; 766a  ..v..v...G'....W
	defb 047h,007h,0eah,06ah,076h	; 767a

; ----------------------------------------------------------------------
; DATOS pista_767F: pista de musica (notas, silencios, tempo, octava, 0xE8
;   envolvente, 0xEA salta, 0xED llama, 0xFE repite, 0xFF acaba); lo leen
;   p04:638A (24 bytes)
;   0x767f..0x7697  (24 bytes)
DATA_pista_767F:
	defb 0e9h,0d4h,0fch,035h,0e4h,027h,057h,047h,007h,0feh,002h,07fh,076h,0e5h,0a7h,0e4h	; 767f  ...5.'WG....v...
	defb 057h,047h,007h,0feh,002h,08ch,076h,0eeh	; 768f  WG....v.

; ----------------------------------------------------------------------
; DATOS pista_7697: pista de musica (notas, silencios, tempo, octava, 0xE8
;   envolvente, 0xEA salta, 0xED llama, 0xFE repite, 0xFF acaba); lo leen
;   p04:638A (1 bytes)
;   0x7697..0x7698  (1 bytes)
DATA_pista_7697:
	defb 0ffh	; 7697

; ----------------------------------------------------------------------
; DATOS pista_7698: pista de musica (notas, silencios, tempo, octava, 0xE8
;   envolvente, 0xEA salta, 0xED llama, 0xFE repite, 0xFF acaba); lo leen
;   p04:638A (1 bytes)
;   0x7698..0x7699  (1 bytes)
DATA_pista_7698:
	defb 0ffh	; 7698

; ----------------------------------------------------------------------
; DATOS pista_7699: pista de musica (notas, silencios, tempo, octava, 0xE8
;   envolvente, 0xEA salta, 0xED llama, 0xFE repite, 0xFF acaba); lo leen
;   p04:638A (1 bytes)
;   0x7699..0x769a  (1 bytes)
DATA_pista_7699:
	defb 0ffh	; 7699

; ----------------------------------------------------------------------
; DATOS pista_769A: pista de musica (notas, silencios, tempo, octava, 0xE8
;   envolvente, 0xEA salta, 0xED llama, 0xFE repite, 0xFF acaba); lo leen
;   p04:638A (97 bytes)
;   0x769a..0x76fb  (97 bytes)
DATA_pista_769A:
	defb 0e9h,0d6h,0fbh,000h,0e2h,041h,0f9h,001h,041h,0fbh,000h,0b1h,0f9h,001h,0b1h,0edh	; 769a  .....A..A.......
	defb 0fbh,076h,0fbh,000h,0e1h,021h,0f9h,000h,021h,0f7h,001h,021h,0fbh,001h,0e2h,051h	; 76aa  .v...!..!..!...Q
	defb 0fbh,000h,093h,0f9h,000h,093h,0f7h,000h,093h,0f6h,000h,093h,0fbh,001h,0e1h,011h	; 76ba  ................
	defb 0e2h,0b1h,091h,0b1h,0fbh,000h,0b3h,0f9h,000h,0b3h,0f7h,001h,0b1h,0fbh,001h,0e2h	; 76ca  ................
	defb 061h,081h,091h,0fbh,000h,0e1h,011h,0f9h,000h,011h,0fbh,001h,0e2h,0b1h,0b1h,0fbh	; 76da  a...............
	defb 000h,041h,0f9h,001h,041h,0fbh,000h,0b1h,0f9h,001h,0b1h,0edh,0fbh,076h,0eah,0ach	; 76ea  .A..A........v..
	defb 076h	; 76fa

; ----------------------------------------------------------------------
; DATOS pista_76FB: pista de musica (notas, silencios, tempo, octava, 0xE8
;   envolvente, 0xEA salta, 0xED llama, 0xFE repite, 0xFF acaba); lo leen
;   p04:638A (71 bytes)
;   0x76fb..0x7742  (71 bytes)
DATA_pista_76FB:
	defb 0d6h,0fbh,001h,0e1h,011h,0f9h,000h,011h,0f7h,001h,011h,0fbh,001h,0e2h,041h,0fbh	; 76fb  ..............A.
	defb 000h,043h,0f9h,000h,043h,0f7h,000h,043h,0f6h,001h,043h,0fbh,000h,041h,0f9h,001h	; 770b  .C..C..C..C..A..
	defb 041h,0fbh,000h,0b1h,0f9h,001h,0b1h,0fbh,000h,0e1h,011h,0f9h,000h,011h,0f7h,001h	; 771b  A...............
	defb 011h,0fbh,001h,021h,0fbh,000h,013h,0f9h,000h,013h,0f7h,000h,013h,0f6h,000h,013h	; 772b  ...!............
	defb 0fbh,001h,041h,021h,011h,021h,0eeh	; 773b

; ----------------------------------------------------------------------
; DATOS pista_7742: pista de musica (notas, silencios, tempo, octava, 0xE8
;   envolvente, 0xEA salta, 0xED llama, 0xFE repite, 0xFF acaba); lo leen
;   p04:638A (68 bytes)
;   0x7742..0x7786  (68 bytes)
DATA_pista_7742:
	defb 0e9h,0d6h,0fah,010h,0e1h,041h,0f8h,001h,041h,0fah,010h,0b1h,0f8h,010h,0b1h,0edh	; 7742  .....A..A.......
	defb 086h,077h,0d6h,0fdh,035h,0e4h,051h,051h,051h,051h,051h,051h,091h,051h,041h,041h	; 7752  .w..5.QQQQQQ.QAA
	defb 041h,041h,041h,041h,091h,0fch,035h,040h,040h,0fdh,035h,031h,031h,031h,031h,091h	; 7762  AAAA..5@@.51111.
	defb 091h,031h,031h,041h,041h,041h,041h,041h,061h,081h,0fch,035h,040h,040h,0edh,086h	; 7772  .11AAAAAa..5@@..
	defb 077h,0eah,054h,077h	; 7782

; ----------------------------------------------------------------------
; DATOS pista_7786: pista de musica (notas, silencios, tempo, octava, 0xE8
;   envolvente, 0xEA salta, 0xED llama, 0xFE repite, 0xFF acaba); lo leen
;   p04:638A (50 bytes)
;   0x7786..0x77b8  (50 bytes)
DATA_pista_7786:
	defb 0d6h,0fdh,035h,0e4h,091h,091h,091h,091h,091h,091h,0e3h,041h,0e4h,091h,081h,081h	; 7786  ..5........A....
	defb 081h,081h,081h,081h,0e3h,041h,0fch,035h,0e4h,080h,080h,0fdh,035h,071h,071h,071h	; 7796  .....A.5....5qqq
	defb 071h,071h,071h,0e3h,041h,0e4h,071h,061h,061h,061h,061h,061h,061h,0e3h,021h,0e4h	; 77a6  qqq.A.qaaaaaa.!.
	defb 061h,0eeh	; 77b6

; ----------------------------------------------------------------------
; DATOS pista_77B8: pista de musica (notas, silencios, tempo, octava, 0xE8
;   envolvente, 0xEA salta, 0xED llama, 0xFE repite, 0xFF acaba); lo leen
;   p04:638A (96 bytes)
;   0x77b8..0x7818  (96 bytes)
DATA_pista_77B8:
	defb 0e9h,0e7h,0d6h,0fah,000h,0e2h,041h,0f8h,000h,041h,0fah,000h,0b1h,0f8h,001h,0b1h	; 77b8  ......A..A......
	defb 0e9h,0edh,018h,078h,0d6h,0fah,000h,0e2h,051h,0f8h,000h,051h,0f6h,001h,051h,0fah	; 77c8  ...x....Q..Q..Q.
	defb 001h,021h,0fah,000h,053h,0f8h,000h,053h,0f6h,000h,043h,0f5h,000h,043h,0fah,001h	; 77d8  .!..S..S..C..C..
	defb 091h,081h,061h,081h,0fah,000h,063h,0f8h,000h,063h,0f6h,001h,061h,0fah,001h,031h	; 77e8  ..a...c..c..a..1
	defb 041h,061h,0fah,000h,091h,0f8h,000h,091h,0fah,001h,081h,081h,0e7h,0c0h,0fah,000h	; 77f8  Aa..............
	defb 041h,0f8h,001h,041h,0fah,000h,0b1h,0f8h,001h,0b0h,0edh,018h,078h,0eah,0cch,077h	; 7808  A..A........x..w

; ----------------------------------------------------------------------
; DATOS pista_7818: pista de musica (notas, silencios, tempo, octava, 0xE8
;   envolvente, 0xEA salta, 0xED llama, 0xFE repite, 0xFF acaba); lo leen
;   p04:638A (69 bytes)
;   0x7818..0x785d  (69 bytes)
DATA_pista_7818:
	defb 0fah,001h,091h,0f8h,000h,091h,0f6h,001h,091h,0fah,001h,011h,0fah,000h,013h,0f8h	; 7818  ................
	defb 000h,013h,0f6h,000h,013h,0f5h,001h,013h,0fah,000h,011h,0f8h,001h,011h,0fah,000h	; 7828  ................
	defb 081h,0f8h,001h,081h,0fah,000h,071h,0f8h,000h,071h,0f6h,001h,071h,0fah,001h,091h	; 7838  ......q..q..q...
	defb 0fah,000h,073h,0f8h,000h,073h,0f6h,000h,063h,0f5h,000h,063h,0fah,001h,0e1h,011h	; 7848  ..s..s..c..c....
	defb 0e2h,0b1h,091h,0b1h,0eeh	; 7858

; ----------------------------------------------------------------------
; DATOS pista_785D: pista de musica (notas, silencios, tempo, octava, 0xE8
;   envolvente, 0xEA salta, 0xED llama, 0xFE repite, 0xFF acaba); lo leen
;   p04:638A (162 bytes)
;   0x785d..0x78ff  (162 bytes)
DATA_pista_785D:
	defb 0e9h,0d8h,0fdh,034h,0e1h,041h,0fch,023h,041h,0fbh,023h,041h,0f9h,023h,040h,0f8h	; 785d  ...4.A.#A.#A.#@.
	defb 023h,040h,0f7h,023h,040h,0f6h,023h,040h,0f5h,023h,040h,0f4h,023h,040h,0fdh,034h	; 786d  #@.#@.#@.#@.#@.4
	defb 060h,0fah,012h,060h,0fdh,034h,070h,0fah,012h,070h,0fdh,034h,061h,0fbh,023h,061h	; 787d  `..`.4p..p.4a.#a
	defb 0fah,023h,061h,0f9h,023h,060h,0f8h,023h,060h,0f7h,023h,060h,0f6h,023h,060h,0f5h	; 788d  .#a.#`.#`.#`.#`.
	defb 023h,060h,0f4h,023h,060h,0fdh,034h,070h,0fah,012h,070h,0fdh,034h,090h,0fah,012h	; 789d  #`.#`.4p..p.4...
	defb 090h,0fdh,034h,071h,0fbh,023h,071h,0fah,023h,071h,0f9h,023h,070h,0f8h,023h,070h	; 78ad  ..4q.#q.#q.#p.#p
	defb 0f7h,023h,070h,0f6h,023h,070h,0f5h,023h,070h,0f4h,023h,070h,0fdh,034h,090h,0fah	; 78bd  .#p.#p.#p.#p.4..
	defb 012h,090h,0fdh,034h,0b0h,0fah,012h,0b0h,0fdh,034h,091h,0fbh,023h,091h,0f9h,023h	; 78cd  ...4.....4..#..#
	defb 091h,0f8h,023h,090h,0f7h,023h,090h,0f6h,023h,090h,0f5h,023h,090h,0fch,055h,090h	; 78dd  ..#..#..#..#..U.
	defb 0fah,013h,090h,0fch,055h,070h,0fah,013h,070h,0fch,055h,060h,0fah,013h,060h,0eah	; 78ed  ....Up..p.U`..`.
	defb 05dh,078h	; 78fd

; ----------------------------------------------------------------------
; DATOS pista_78FF: pista de musica (notas, silencios, tempo, octava, 0xE8
;   envolvente, 0xEA salta, 0xED llama, 0xFE repite, 0xFF acaba); lo leen
;   p04:638A (103 bytes)
;   0x78ff..0x7966  (103 bytes)
DATA_pista_78FF:
	defb 0e9h,0d8h,0fdh,035h,0e4h,040h,040h,0b0h,0b0h,0e3h,060h,060h,070h,070h,0f9h,035h	; 78ff  ...5.@@...``pp.5
	defb 070h,070h,0f8h,035h,070h,0f7h,035h,070h,0f6h,035h,070h,0f5h,035h,070h,070h,070h	; 790f  pp.5p.5p.5p.5ppp
	defb 0feh,002h,0ffh,078h,0fdh,035h,0e4h,040h,040h,0e3h,000h,000h,060h,060h,070h,070h	; 791f  ...x.5.@@...``pp
	defb 0f9h,035h,070h,0f9h,035h,070h,0f8h,035h,070h,0f7h,035h,070h,0f6h,035h,070h,0f5h	; 792f  .5p.5p.5p.5p.5p.
	defb 035h,070h,070h,070h,0fdh,035h,0e4h,060h,060h,0e3h,010h,010h,070h,070h,090h,090h	; 793f  5ppp.5.``...pp..
	defb 0f9h,035h,090h,0f9h,035h,090h,0f8h,035h,090h,0f7h,035h,090h,0f6h,035h,090h,0f5h	; 794f  .5..5..5..5..5..
	defb 035h,090h,090h,090h,0eah,0ffh,078h	; 795f

; ----------------------------------------------------------------------
; DATOS pista_7966: pista de musica (notas, silencios, tempo, octava, 0xE8
;   envolvente, 0xEA salta, 0xED llama, 0xFE repite, 0xFF acaba); lo leen
;   p04:638A (131 bytes)
;   0x7966..0x79e9  (131 bytes)
DATA_pista_7966:
	defb 0e9h,0d8h,0fch,034h,0e2h,0b1h,0fbh,023h,0b1h,0fah,023h,0b1h,0e8h,000h,000h,000h	; 7966  ...4...#..#.....
	defb 000h,000h,010h,000h,0e9h,0fch,034h,0e1h,020h,0f9h,012h,020h,0fch,034h,020h,0f9h	; 7976  ......4. .. .4 .
	defb 012h,020h,0fch,034h,021h,0fah,023h,021h,0f9h,023h,021h,0e8h,000h,000h,000h,000h	; 7986  . .4!.#!.#!.....
	defb 000h,010h,000h,0e9h,0fch,034h,020h,0f9h,012h,020h,0fch,034h,020h,0f9h,012h,020h	; 7996  .....4 .. .4 ..
	defb 0fch,034h,021h,0fah,023h,021h,0f9h,023h,021h,0e8h,000h,000h,000h,000h,000h,010h	; 79a6  .4!.#!.#!.......
	defb 000h,0e9h,0fch,034h,020h,0f9h,012h,020h,0fch,034h,020h,0f9h,012h,020h,0fch,034h	; 79b6  ...4 .. .4 .. .4
	defb 021h,0fah,023h,021h,0f8h,023h,021h,0e8h,000h,000h,000h,010h,000h,0e9h,0fbh,055h	; 79c6  !.#!.#!........U
	defb 020h,0f9h,013h,020h,0fbh,055h,020h,0f9h,013h,020h,0fbh,055h,020h,0f9h,013h,020h	; 79d6   .. .U .. .U ..
	defb 0eah,066h,079h	; 79e6

; ----------------------------------------------------------------------
; DATOS pista_79E9: pista de musica (notas, silencios, tempo, octava, 0xE8
;   envolvente, 0xEA salta, 0xED llama, 0xFE repite, 0xFF acaba); lo leen
;   p04:638A (64 bytes)
;   0x79e9..0x7a29  (64 bytes)
DATA_pista_79E9:
	defb 0e9h,0d6h,0fah,000h,0e2h,0c3h,091h,0f7h,000h,091h,0fah,000h,0e1h,021h,0f7h,000h	; 79e9  .............!..
	defb 021h,0fah,000h,051h,0f7h,000h,051h,0fah,000h,070h,0f7h,000h,070h,0fah,000h,090h	; 79f9  !..Q..Q..p..p...
	defb 0f7h,000h,090h,0fah,000h,043h,0f7h,000h,043h,0d7h,0fbh,012h,051h,041h,0fah,000h	; 7a09  .....C..C...QA..
	defb 021h,0f7h,000h,021h,0d8h,0fah,000h,001h,0f7h,000h,001h,0f9h,000h,02ah,0c3h,0ffh	; 7a19  !..!.........*..

; ----------------------------------------------------------------------
; DATOS pista_7A29: pista de musica (notas, silencios, tempo, octava, 0xE8
;   envolvente, 0xEA salta, 0xED llama, 0xFE repite, 0xFF acaba); lo leen
;   p04:638A (25 bytes)
;   0x7a29..0x7a42  (25 bytes)
DATA_pista_7A29:
	defb 0e9h,0d6h,0fah,022h,0e3h,0c3h,023h,0e2h,027h,0e3h,003h,0e2h,007h,0d7h,0e4h,0a3h	; 7a29  ..."..#.'.......
	defb 0a3h,0d8h,0e3h,003h,0f8h,000h,02ah,0c3h,0ffh	; 7a39  ......*..

; ----------------------------------------------------------------------
; DATOS pista_7A42: pista de musica (notas, silencios, tempo, octava, 0xE8
;   envolvente, 0xEA salta, 0xED llama, 0xFE repite, 0xFF acaba); lo leen
;   p04:638A (50 bytes)
;   0x7a42..0x7a74  (50 bytes)
DATA_pista_7A42:
	defb 0e9h,0d6h,0f8h,000h,0e2h,0c3h,053h,0f5h,000h,053h,0f3h,000h,053h,0f8h,000h,0e1h	; 7a42  ......S..S..S...
	defb 001h,0f5h,000h,001h,0f8h,000h,0e2h,073h,0f5h,000h,073h,0d7h,0f9h,012h,091h,071h	; 7a52  .......s..s....q
	defb 0f8h,000h,051h,0f7h,000h,051h,0d8h,0f8h,000h,041h,0f7h,000h,041h,0f8h,000h,06ah	; 7a62  ..Q..Q...A..A..j
	defb 0c3h,0ffh	; 7a72

; ----------------------------------------------------------------------
; DATOS pista_7A74: pista de musica (notas, silencios, tempo, octava, 0xE8
;   envolvente, 0xEA salta, 0xED llama, 0xFE repite, 0xFF acaba); lo leen
;   p04:638A (23 bytes)
;   0x7a74..0x7a8b  (23 bytes)
DATA_pista_7A74:
	defb 0e9h,0e6h,0d3h,0fbh,022h,0e2h,0c7h,091h,051h,0a1h,071h,091h,051h,071h,041h,053h	; 7a74  ...."...Q.q.QqAS
	defb 0f7h,000h,053h,0f4h,000h,053h,0ffh	; 7a84

; ----------------------------------------------------------------------
; DATOS pista_7A8B: pista de musica (notas, silencios, tempo, octava, 0xE8
;   envolvente, 0xEA salta, 0xED llama, 0xFE repite, 0xFF acaba); lo leen
;   p04:638A (23 bytes)
;   0x7a8b..0x7aa2  (23 bytes)
DATA_pista_7A8B:
	defb 0e9h,0e6h,0d3h,0fah,022h,0e1h,0c7h,091h,051h,0a1h,071h,091h,051h,071h,041h,053h	; 7a8b  ...."...Q.q.QqAS
	defb 0f6h,000h,053h,0f4h,000h,053h,0ffh	; 7a9b

; ----------------------------------------------------------------------
; DATOS pista_7AA2: pista de musica (notas, silencios, tempo, octava, 0xE8
;   envolvente, 0xEA salta, 0xED llama, 0xFE repite, 0xFF acaba); lo leen
;   p04:638A (26 bytes)
;   0x7aa2..0x7abc  (26 bytes)
DATA_pista_7AA2:
	defb 0e9h,0e6h,0d3h,0fch,035h,0e3h,0c7h,021h,021h,021h,021h,021h,021h,021h,021h,0fah	; 7aa2  ....5..!!!!!!!!.
	defb 010h,023h,0f7h,010h,023h,0f5h,000h,021h,0c1h,0ffh	; 7ab2  .#..#..!..

; ----------------------------------------------------------------------
; DATOS pista_7ABC: pista de musica (notas, silencios, tempo, octava, 0xE8
;   envolvente, 0xEA salta, 0xED llama, 0xFE repite, 0xFF acaba); lo leen
;   p04:638A (1 bytes)
;   0x7abc..0x7abd  (1 bytes)
DATA_pista_7ABC:
	defb 0ffh	; 7abc

; ----------------------------------------------------------------------
; DATOS envolventes: 7 tablas de 12 palabras (una por nota): la envolvente de
;   volumen de cada nota segun 0xE8 n; p04:640A; lo leen p04:6438 (168 bytes)
;   0x7abd..0x7b65  (168 bytes)
DATA_envolventes:
	defb 065h,07bh	; 7abd
	defb 06bh,07bh	; 7abf
	defb 07bh,07bh	; 7ac1
	defb 0cbh,07ch	; 7ac3
	defb 0cbh,07ch	; 7ac5
	defb 0cbh,07ch	; 7ac7
	defb 0cbh,07ch	; 7ac9
	defb 0cbh,07ch	; 7acb
	defb 0cbh,07ch	; 7acd
	defb 0cbh,07ch	; 7acf
	defb 0cbh,07ch	; 7ad1
	defb 08dh,07bh	; 7ad3
	defb 0a3h,07bh	; 7ad5
	defb 0cbh,07ch	; 7ad7
	defb 0b5h,07bh	; 7ad9
	defb 0cbh,07ch	; 7adb
	defb 0c7h,07bh	; 7add
	defb 0cbh,07ch	; 7adf
	defb 0d9h,07bh	; 7ae1
	defb 0ech,07bh	; 7ae3
	defb 0cbh,07ch	; 7ae5
	defb 0feh,07bh	; 7ae7
	defb 0cbh,07ch	; 7ae9
	defb 010h,07ch	; 7aeb
	defb 023h,07ch	; 7aed
	defb 0cbh,07ch	; 7aef
	defb 035h,07ch	; 7af1
	defb 048h,07ch	; 7af3
	defb 05bh,07ch	; 7af5
	defb 0cbh,07ch	; 7af7
	defb 06dh,07ch	; 7af9
	defb 080h,07ch	; 7afb
	defb 0cbh,07ch	; 7afd
	defb 092h,07ch	; 7aff
	defb 0a5h,07ch	; 7b01
	defb 0b8h,07ch	; 7b03
	defb 0cbh,07ch	; 7b05
	defb 0cbh,07ch	; 7b07
	defb 0cbh,07ch	; 7b09
	defb 0cbh,07ch	; 7b0b
	defb 0cbh,07ch	; 7b0d
	defb 0cbh,07ch	; 7b0f
	defb 0cbh,07ch	; 7b11
	defb 0cbh,07ch	; 7b13
	defb 0cbh,07ch	; 7b15
	defb 0cbh,07ch	; 7b17
	defb 0cbh,07ch	; 7b19
	defb 0cbh,07ch	; 7b1b
	defb 0cbh,07ch	; 7b1d
	defb 0cbh,07ch	; 7b1f
	defb 0cbh,07ch	; 7b21
	defb 0cbh,07ch	; 7b23
	defb 0cbh,07ch	; 7b25
	defb 0cbh,07ch	; 7b27
	defb 0cbh,07ch	; 7b29
	defb 0cbh,07ch	; 7b2b
	defb 0cbh,07ch	; 7b2d
	defb 0cbh,07ch	; 7b2f
	defb 0cbh,07ch	; 7b31
	defb 0cbh,07ch	; 7b33
	defb 0cbh,07ch	; 7b35
	defb 0cbh,07ch	; 7b37
	defb 0cbh,07ch	; 7b39
	defb 0cbh,07ch	; 7b3b
	defb 0cbh,07ch	; 7b3d
	defb 0cbh,07ch	; 7b3f
	defb 0cbh,07ch	; 7b41
	defb 0cbh,07ch	; 7b43
	defb 0cbh,07ch	; 7b45
	defb 0cbh,07ch	; 7b47
	defb 0cbh,07ch	; 7b49
	defb 0cbh,07ch	; 7b4b
	defb 0cch,07ch	; 7b4d
	defb 03fh,07dh	; 7b4f
	defb 099h,07dh	; 7b51
	defb 0f3h,07dh	; 7b53
	defb 075h,07eh	; 7b55
	defb 075h,07eh	; 7b57
	defb 028h,07dh	; 7b59
	defb 087h,07dh	; 7b5b
	defb 0e1h,07dh	; 7b5d
	defb 075h,07eh	; 7b5f
	defb 075h,07eh	; 7b61
	defb 075h,07eh	; 7b63

; ----------------------------------------------------------------------
; DATOS sonido_7B65: envolvente o efecto: [volumen|tono alto][tono bajo] por
;   cuadro, 0x1X ruido, 0x2X mezclador, 0xFE repite, 0xFF acaba; lo leen
;   p04:65A4 (6 bytes)
;   0x7b65..0x7b6b  (6 bytes)
DATA_sonido_7B65:
	defb 021h,001h,010h,0c0h,000h,0ffh	; 7b65

; ----------------------------------------------------------------------
; DATOS sonido_7B6B: envolvente o efecto: [volumen|tono alto][tono bajo] por
;   cuadro, 0x1X ruido, 0x2X mezclador, 0xFE repite, 0xFF acaba; lo leen
;   p04:65A4 (16 bytes)
;   0x7b6b..0x7b7b  (16 bytes)
DATA_sonido_7B6B:
	defb 021h,002h,010h,090h,000h,021h,008h,010h,090h,000h,021h,008h,010h,050h,000h,0ffh	; 7b6b  !....!....!..P..

; ----------------------------------------------------------------------
; DATOS sonido_7B7B: envolvente o efecto: [volumen|tono alto][tono bajo] por
;   cuadro, 0x1X ruido, 0x2X mezclador, 0xFE repite, 0xFF acaba; lo leen
;   p04:65A4 (40 bytes)
;   0x7b7b..0x7ba3  (40 bytes)
DATA_sonido_7B7B:
	defb 023h,001h,010h,0bah,000h,021h,004h,010h,0b0h,000h,080h,000h,070h,000h,060h,000h	; 7b7b  #....!......p.`.
	defb 050h,000h,021h,001h,015h,0b0h,006h,022h,001h,0b2h,000h,021h,002h,018h,070h,006h	; 7b8b  P.!...."...!..p.
	defb 060h,006h,021h,001h,013h,060h,006h,0ffh	; 7b9b  `.!..`..

; ----------------------------------------------------------------------
; DATOS sonido_7BA3: envolvente o efecto: [volumen|tono alto][tono bajo] por
;   cuadro, 0x1X ruido, 0x2X mezclador, 0xFE repite, 0xFF acaba; lo leen
;   p04:65A4 (73 bytes)
;   0x7ba3..0x7bec  (73 bytes)
DATA_sonido_7BA3:
	defb 022h,004h,0a0h,036h,090h,036h,080h,036h,070h,036h,060h,036h,050h,036h,040h,036h	; 7ba3  "..6.6.6p6`6P6@6
	defb 040h,036h,022h,004h,0a0h,02fh,090h,02fh,080h,02fh,070h,02fh,060h,02fh,050h,02fh	; 7bb3  @6"../././p/`/P/
	defb 040h,02fh,040h,02fh,022h,004h,0a0h,02ah,090h,02ah,080h,02ah,070h,02ah,060h,02ah	; 7bc3  @/@/"..*.*.*p*`*
	defb 050h,02ah,040h,02ah,040h,02ah,022h,004h,0a0h,026h,090h,026h,080h,026h,070h,026h	; 7bd3  P*@*@*"..&.&.&p&
	defb 060h,026h,050h,026h,040h,026h,040h,026h,0ffh	; 7be3  `&P&@&@&.

; ----------------------------------------------------------------------
; DATOS sonido_7BEC: envolvente o efecto: [volumen|tono alto][tono bajo] por
;   cuadro, 0x1X ruido, 0x2X mezclador, 0xFE repite, 0xFF acaba; lo leen
;   p04:65A4 (55 bytes)
;   0x7bec..0x7c23  (55 bytes)
DATA_sonido_7BEC:
	defb 022h,004h,0a0h,024h,090h,024h,080h,024h,070h,024h,060h,024h,050h,024h,040h,024h	; 7bec  "..$.$.$p$`$P$@$
	defb 040h,024h,022h,004h,0a0h,020h,090h,020h,080h,020h,070h,020h,060h,020h,050h,020h	; 7bfc  @$".. . . p ` P
	defb 040h,020h,040h,020h,022h,004h,0a0h,01ch,090h,01ch,080h,01ch,070h,01ch,060h,01ch	; 7c0c  @ @ ".......p.`.
	defb 050h,01ch,040h,01ch,040h,01ch,0ffh	; 7c1c

; ----------------------------------------------------------------------
; DATOS sonido_7C23: envolvente o efecto: [volumen|tono alto][tono bajo] por
;   cuadro, 0x1X ruido, 0x2X mezclador, 0xFE repite, 0xFF acaba; lo leen
;   p04:65A4 (37 bytes)
;   0x7c23..0x7c48  (37 bytes)
DATA_sonido_7C23:
	defb 022h,004h,0a0h,06bh,090h,06bh,080h,06bh,070h,06bh,060h,06bh,050h,06bh,040h,06bh	; 7c23  "..k.k.kpk`kPk@k
	defb 040h,06bh,022h,004h,0a0h,05fh,090h,05fh,080h,05fh,070h,05fh,060h,05fh,050h,05fh	; 7c33  @k".._._._p_`_P_
	defb 040h,05fh,040h,05fh,0ffh	; 7c43

; ----------------------------------------------------------------------
; DATOS sonido_7C48: envolvente o efecto: [volumen|tono alto][tono bajo] por
;   cuadro, 0x1X ruido, 0x2X mezclador, 0xFE repite, 0xFF acaba; lo leen
;   p04:65A4 (19 bytes)
;   0x7c48..0x7c5b  (19 bytes)
DATA_sonido_7C48:
	defb 022h,004h,0a0h,05ah,090h,05ah,080h,05ah,070h,05ah,060h,05ah,050h,05ah,040h,05ah	; 7c48  "..Z.Z.ZpZ`ZPZ@Z
	defb 040h,05ah,0ffh	; 7c58

; ----------------------------------------------------------------------
; DATOS sonido_7C5B: envolvente o efecto: [volumen|tono alto][tono bajo] por
;   cuadro, 0x1X ruido, 0x2X mezclador, 0xFE repite, 0xFF acaba; lo leen
;   p04:65A4 (37 bytes)
;   0x7c5b..0x7c80  (37 bytes)
DATA_sonido_7C5B:
	defb 022h,004h,0a0h,055h,090h,055h,080h,055h,070h,055h,060h,055h,050h,055h,040h,055h	; 7c5b  "..U.U.UpU`UPU@U
	defb 040h,055h,022h,004h,0a0h,04ch,090h,04ch,080h,04ch,070h,04ch,060h,04ch,050h,04ch	; 7c6b  @U"..L.L.LpL`LPL
	defb 040h,04ch,040h,04ch,0ffh	; 7c7b

; ----------------------------------------------------------------------
; DATOS sonido_7C80: envolvente o efecto: [volumen|tono alto][tono bajo] por
;   cuadro, 0x1X ruido, 0x2X mezclador, 0xFE repite, 0xFF acaba; lo leen
;   p04:65A4 (37 bytes)
;   0x7c80..0x7ca5  (37 bytes)
DATA_sonido_7C80:
	defb 022h,004h,0a0h,047h,090h,047h,080h,047h,070h,047h,060h,047h,050h,047h,040h,047h	; 7c80  "..G.G.GpG`GPG@G
	defb 040h,047h,022h,004h,0a0h,040h,090h,040h,080h,040h,070h,040h,060h,040h,050h,040h	; 7c90  @G"..@.@.@p@`@P@
	defb 040h,040h,040h,040h,0ffh	; 7ca0

; ----------------------------------------------------------------------
; DATOS sonido_7CA5: envolvente o efecto: [volumen|tono alto][tono bajo] por
;   cuadro, 0x1X ruido, 0x2X mezclador, 0xFE repite, 0xFF acaba; lo leen
;   p04:65A4 (19 bytes)
;   0x7ca5..0x7cb8  (19 bytes)
DATA_sonido_7CA5:
	defb 022h,004h,0a0h,03ch,090h,03ch,080h,03ch,070h,03ch,060h,03ch,050h,03ch,040h,03ch	; 7ca5  "..<.<.<p<`<P<@<
	defb 040h,03ch,0ffh	; 7cb5

; ----------------------------------------------------------------------
; DATOS sonido_7CB8: envolvente o efecto: [volumen|tono alto][tono bajo] por
;   cuadro, 0x1X ruido, 0x2X mezclador, 0xFE repite, 0xFF acaba; lo leen
;   p04:65A4 (19 bytes)
;   0x7cb8..0x7ccb  (19 bytes)
DATA_sonido_7CB8:
	defb 022h,004h,0a0h,039h,090h,039h,080h,039h,070h,039h,060h,039h,050h,039h,040h,039h	; 7cb8  "..9.9.9p9`9P9@9
	defb 040h,039h,0ffh	; 7cc8

; ----------------------------------------------------------------------
; DATOS sonido_7CCB: envolvente o efecto: [volumen|tono alto][tono bajo] por
;   cuadro, 0x1X ruido, 0x2X mezclador, 0xFE repite, 0xFF acaba; lo leen
;   p04:65A4 (1 bytes)
;   0x7ccb..0x7ccc  (1 bytes)
DATA_sonido_7CCB:
	defb 0ffh	; 7ccb

; ----------------------------------------------------------------------
; DATOS sonido_7CCC: envolvente o efecto: [volumen|tono alto][tono bajo] por
;   cuadro, 0x1X ruido, 0x2X mezclador, 0xFE repite, 0xFF acaba; lo leen
;   p04:65A4 (426 bytes)
;   0x7ccc..0x7e76  (426 bytes)
DATA_sonido_7CCC:
	defb 021h,001h,01dh,000h,000h,030h,000h,01ah,040h,000h,01dh,060h,000h,01ah,080h,000h	; 7ccc  !....0..@..`....
	defb 01dh,0a0h,000h,0feh,004h,0cch,07ch,021h,001h,01dh,000h,000h,040h,000h,01ah,060h	; 7cdc  ......|!....@..`
	defb 000h,01dh,080h,000h,01ah,0a0h,000h,01dh,0c0h,000h,0feh,004h,0e3h,07ch,021h,001h	; 7cec  .............|!.
	defb 01dh,000h,000h,050h,000h,01ah,070h,000h,01dh,090h,000h,01ah,0b0h,000h,01dh,0d0h	; 7cfc  ...P..p.........
	defb 000h,0feh,004h,0fah,07ch,021h,001h,01dh,000h,000h,060h,000h,01ah,080h,000h,01dh	; 7d0c  ....|!....`.....
	defb 0a0h,000h,01ah,0c0h,000h,01dh,0e0h,000h,0feh,004h,011h,07dh,021h,001h,01dh,000h	; 7d1c  ...........}!...
	defb 000h,070h,000h,01ah,090h,000h,01dh,0b0h,000h,01ah,0d0h,000h,01dh,0f0h,000h,0feh	; 7d2c  .p..............
	defb 0feh,028h,07dh,022h,001h,000h,000h,033h,080h,053h,080h,073h,080h,093h,080h,0b3h	; 7d3c  .(}"...3.S.s....
	defb 080h,0feh,004h,03fh,07dh,022h,001h,000h,000h,043h,080h,063h,080h,083h,080h,0a3h	; 7d4c  ...?}"...C.c....
	defb 080h,0c3h,080h,0feh,004h,051h,07dh,022h,001h,000h,000h,053h,080h,073h,080h,093h	; 7d5c  .....Q}"...S.s..
	defb 080h,0b3h,080h,0d3h,080h,0feh,004h,063h,07dh,022h,001h,000h,000h,063h,080h,083h	; 7d6c  .......c}"...c..
	defb 080h,0a3h,080h,0c3h,080h,0e3h,080h,0feh,004h,075h,07dh,022h,001h,000h,000h,073h	; 7d7c  .........u}"...s
	defb 080h,093h,080h,0b3h,080h,0d3h,080h,0f3h,080h,0feh,0feh,087h,07dh,022h,001h,000h	; 7d8c  ............}"..
	defb 000h,030h,050h,030h,050h,040h,050h,060h,050h,080h,050h,0feh,004h,099h,07dh,022h	; 7d9c  .0P0P@P`P.P...}"
	defb 001h,000h,000h,030h,050h,030h,050h,050h,050h,070h,050h,090h,050h,0feh,004h,0abh	; 7dac  ...0P0PPPpP.P...
	defb 07dh,022h,001h,000h,000h,030h,050h,040h,050h,050h,050h,080h,050h,0a0h,050h,0feh	; 7dbc  }"...0P@PPP.P.P.
	defb 004h,0bdh,07dh,022h,001h,000h,000h,030h,050h,050h,050h,070h,050h,090h,050h,0b0h	; 7dcc  ..}"...0PPPpP.P.
	defb 050h,0feh,004h,0cfh,07dh,022h,001h,000h,000h,030h,050h,060h,050h,080h,050h,0a0h	; 7ddc  P...}"...0P`P.P.
	defb 050h,0c0h,050h,0feh,0feh,0e1h,07dh,022h,001h,061h,000h,0a0h,0a0h,0e0h,080h,0e1h	; 7dec  P.P...}".a......
	defb 000h,0e1h,080h,0e2h,000h,0e2h,080h,0d3h,000h,0dbh,000h,0d3h,000h,0dbh,000h,0d3h	; 7dfc  ................
	defb 000h,0cbh,000h,0c3h,000h,0c3h,080h,0c4h,000h,0c4h,080h,0c5h,000h,0b5h,080h,0b6h	; 7e0c  ................
	defb 000h,0beh,000h,0b6h,000h,0beh,000h,0a6h,000h,0aeh,000h,0a6h,000h,0a6h,080h,0a7h	; 7e1c  ................
	defb 000h,097h,080h,098h,000h,098h,080h,099h,000h,091h,000h,099h,000h,081h,000h,089h	; 7e2c  ................
	defb 000h,081h,000h,089h,000h,089h,080h,07ah,000h,07ah,080h,07bh,000h,07bh,080h,07ch	; 7e3c  .......z.z.{.{.|
	defb 000h,064h,000h,06ch,000h,064h,000h,06ch,000h,064h,000h,06ch,000h,05ch,080h,05dh	; 7e4c  .d.l.d.l.d.l.\.]
	defb 000h,05dh,080h,05eh,000h,05eh,080h,04fh,000h,047h,000h,04fh,000h,047h,000h,04fh	; 7e5c  .].^.^.O.G.O.G.O
	defb 000h,037h,000h,03fh,000h,03fh,080h,030h,000h,0ffh	; 7e6c  .7.?.?.0..

; ----------------------------------------------------------------------
; DATOS planos_alternos: 14 planos de 25 bloques: la parte que se ve de las
;   pantallas partidas (0xC131 = 1-14, que pone p06:BEC5); p00:4F0B los lee
;   desde 0x7E76 + 25*(0xC131-1); lo leen p00:4F1B (350 bytes)
;   0x7e76..0x7fd4  (350 bytes)
DATA_planos_alternos:
	defb 041h,042h,045h,035h,00ah,043h,044h,00eh,00eh,00eh,037h,025h,025h,025h,025h,01fh,01fh,01fh,01fh,01fh,01fh,01fh,01fh,01fh,01fh	; 7e76  ABE5.CD...7%%%%..........
	defb 01fh,01fh,023h,03fh,003h,01fh,01fh,021h,04ah,00eh,01fh,01fh,021h,04ah,00eh,01fh,01fh,021h,04ah,00eh,01fh,01fh,021h,04ah,008h	; 7e8f  ..#?...!J...!J...!J...!J.
	defb 01fh,01fh,021h,04ah,000h,01fh,01fh,021h,04ah,000h,01fh,01fh,021h,04ah,02ah,01fh,01fh,021h,04ah,01bh,01fh,01fh,027h,040h,002h	; 7ea8  ..!J...!J...!J*..!J...'@.
	defb 01dh,01dh,01ch,000h,00ch,01dh,01dh,01ch,000h,000h,01dh,01dh,01ch,000h,000h,01dh,01dh,01ch,000h,000h,01dh,01dh,01ch,000h,00ah	; 7ec1  .........................
	defb 002h,00bh,012h,03eh,03eh,002h,015h,013h,03eh,03eh,002h,016h,013h,03eh,03eh,002h,000h,013h,03eh,03eh,002h,000h,013h,03eh,03eh	; 7eda  ...>>...>>...>>...>>...>>
	defb 002h,000h,013h,03eh,03eh,002h,000h,013h,03eh,03eh,002h,014h,013h,03eh,03eh,002h,016h,013h,03eh,03eh,002h,000h,013h,03eh,03eh	; 7ef3  ...>>...>>...>>...>>...>>
	defb 03eh,03eh,03eh,03eh,03eh,03eh,03eh,03eh,03eh,03eh,03eh,03eh,022h,021h,004h,03eh,03eh,023h,01ch,020h,03eh,03eh,023h,01ch,001h	; 7f0c  >>>>>>>>>>>>"!.>>#. >>#..
	defb 03eh,03eh,03eh,03eh,03eh,03eh,03eh,03eh,03eh,03eh,026h,027h,027h,027h,027h,02ah,02bh,02ch,02ch,02ch,028h,029h,003h,003h,003h	; 7f25  >>>>>>>>>>&''''*+,,,()...
	defb 03eh,03eh,03eh,03eh,03eh,03eh,03eh,03eh,03eh,03eh,027h,027h,027h,027h,027h,02ch,02ch,02ch,02ch,02ch,003h,003h,003h,003h,003h	; 7f3e  >>>>>>>>>>''''',,,,,.....
	defb 07dh,07dh,051h,012h,012h,07dh,07dh,052h,012h,012h,07dh,07dh,053h,012h,056h,07dh,07dh,051h,012h,02fh,07dh,07dh,052h,039h,04bh	; 7f57  }}Q..}}R..}}S.V}}Q./}}R9K
	defb 07dh,07dh,050h,014h,02bh,07dh,07dh,051h,030h,02fh,07dh,07dh,052h,02ch,02eh,07dh,07dh,053h,054h,04fh,07dh,07dh,051h,055h,012h	; 7f70  }}P.+}}Q0/}}R,.}}STO}}QU.
	defb 005h,005h,005h,005h,005h,000h,000h,000h,000h,000h,033h,033h,033h,033h,033h,03eh,03eh,03eh,03eh,03eh,03eh,03eh,03eh,03eh,03eh	; 7f89  ..........33333>>>>>>>>>>
	defb 03eh,03eh,03eh,03eh,03eh,03eh,03eh,03eh,03eh,03eh,03eh,03eh,035h,032h,032h,03eh,03eh,034h,011h,011h,03eh,03eh,006h,004h,004h	; 7fa2  >>>>>>>>>>>>522>>4..>>...
	defb 03eh,03eh,039h,023h,009h,03eh,03eh,037h,021h,002h,03eh,03eh,037h,021h,002h,03eh,03eh,037h,021h,002h,03eh,03eh,037h,021h,002h	; 7fbb  >>9#.>>7!.>>7!.>>7!.>>7!.

; ----------------------------------------------------------------------
; DATOS sprites_7FD4: RLE de patrones de sprite (n con el bit 7 = n bytes tal
;   cual; sin el, repetir el siguiente; 0 acaba); lista 3; lo leen p00:45EF
;   (44 bytes)
;   0x7fd4..0x8000  (44 bytes)
DATA_sprites_7FD4:
	defb 0a0h,00fh,01fh,03fh,03fh,01fh,03fh,05fh,0bfh,0f8h,0ffh,0bfh,0ffh,07bh,03eh,022h	; 7fd4  ...??.?_.....{>"
	defb 03ch,0e0h,0f0h,0f8h,0f8h,0f0h,0f8h,0fch,0fah,01dh,0f9h,0fdh,0feh,0fch,054h,07ch	; 7fe4  <.............T|
	defb 044h,006h,000h,089h,020h,060h,047h,040h,040h,000h,004h,000h	; 7ff4  D... `G@@...
