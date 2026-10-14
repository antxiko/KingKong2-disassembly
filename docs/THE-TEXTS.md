# The texts

King Kong 2: Yomigaeru Densetsu only came out in Japanese. Here are all of its texts, taken from the ROM with `tools/textos.py`, each with its address and what asks for it. Next to them is the English and Spanish translation from the patches by **Imanok, Manuel Pazos and Ramones** ([KING KONG 2 ULTIMATE TRANSLATION](https://msxblue.com/imanok/), 2012-2013; the texts were translated by Chiho and Kyoko), as theNestruo suggested. **The translation is theirs.** The patches are not included: with the two IPS files in `work/imanok/`, `tools/textos.py imanok` extracts their texts again.

The patches reassemble the whole game, so their texts sit at other addresses (given below), and sometimes they split one line of the original in two. The patches' own glyphs that pack several letters into one drawing (BOOMERANG, ARCO ARPA, "LL." for llave) are transcribed as they read. A **·** is a code below 0x30, which has no letter in the font: it shows drawing c + 0x10 of the sheet (`p00:495F`), and we have not looked at it.

## The conversations

56 conversations (`p12:A66E`, `tools/dialogos.py`). `p01:7E57` asks for them by the screen where Mitchel stops (`p12:A5FE`) or by the list of pairs at `p01:7EF5`. Each line starts with its action (`p02:8065`), shown in brackets when it is not 0. In the patches the table is at 0xA14E in bank 12; the line wraps by itself at 20 letters (`p02:810E`, the same in all three versions).

### Conversation 0x01 · screen 0x00

| Line | Japanese | English (Imanok) | Spanish (Imanok) |
|---|---|---|---|
| `p12:A6EC` | GOLNEBOとうに なんのようじゃ。 | WHY DID YOU COME TO GOLNEBO ISLAND? | ¿PARA QUE HAS VENIDO A LA ISLA DE GOLNEBO? |
| `p12:A702` | ふむ ふむ。KONGさまを さがしに きたのじゃな。 | HMMM,I SEE.SO YOU CAME TO FIND LADY KONG? | HMMM...YA VEO.ASI QUE HAS VENIDO A BUSCAR A LADY KONG. |
| `p12:A720` | でんせつによると、KONGさまは このしまの どこかに こもられて おるらしい。 | ACCORDING TO THE LEGEND,SHE IS HIDDEN IN THE ISLAND. | SEGUN LA LEYENDA, ESTA ESCONDIDA EN ESTA ISLA. |
| `p12:A74C` | KONGさまに おあいするには でんせつを ときあかさねば なるまい。 | YOU'LL HAVE TO UNRAVEL THE LEGEND TO FIND HER. | PARA ENCONTRARLA HAY QUE DESCIFRAR DICHA LEYENDA. |
| `p12:A773` | そうげんのじいさんにきけば、なにかわかるかもしれんぞ。 / きをつけて おいきなされ。 | ASK THE JUNGLE ELDERS AND THEY WILL GIVE YOU SOME CLUES. | PREGUNTA A LOS ANCIANOS DE LA ISLA Y TE DARAN PISTAS. |
|  |  | TAKE CARE! | ¡TEN CUIDADO! |

### Conversation 0x02 · screen 0x04

| Line | Japanese | English (Imanok) | Spanish (Imanok) |
|---|---|---|---|
| `p12:A7B2` | おれたちは みつりょうしゃだ。    ぶきを うってやってもいいぞ。 | WE'RE SMUGGLERS.WE CAN SELL YOU SOME WEAPONS. | SOMOS CONTRABANDIS-TAS.PODEMOS VENDERTE ARMAS. |
| `p12:A7D9` [01] | BIGSPIDERをたおす ないふ / 200 GOLD だ。 / ▶ 1 かう  2 かわない | KNIFE TO KILL BIGSPIDER 200G ▶ 1 OK 2 NO | CUCHILLO PARA MATAR A BIGSPIDER POR 200 ▶ 1 SI 2 NO |
| `p12:A808` | ありがとよ。 | THANKS | GRACIAS |
| `p12:A811` | かねが たりねえぞ。 | NOT ENOUGH GOLD. | NO TIENES SUFICIENTE |
| `p12:A81F` [02] | GRIZZLYを たおす おの / 300 GOLDだ。 / ▶ 1 かう  2 かわない | AXE TO KILL GRIZZLY 300G ▶ 1 OK 2 NO | HACHA PARA MATAR A GRIZZLY POR 300 ▶ 1 SI 2 NO |
| `p12:A84B` | すまねえ おのは うりきれちまった。 | I'M SORRY,IT'S SOLD OUT. | LO SIENTO,NO NOS QUEDAN. |
| `p12:A85F` | おのは ちからが ないと つかいこなせないぞ。 | YOU NEED TO BE STRONGER. | NECESITAS SER MAS FUERTE. |

### Conversation 0x03 · screen 0x0A

| Line | Japanese | English (Imanok) | Spanish (Imanok) |
|---|---|---|---|
| `p12:A87E` | きとうしの こもられている ちかしつのかぎは BIGSPIDERが のみこんだそうじゃ。 | BIGSPIDER ATE THE KEY FOR THE CELLAR WHERE THE SORCERER | LA LLAVE DEL SOTANO DONDE SE ESCONDE EL BRUJO·SE LA HA |
|  |  | HIDES. | COMIDO BIGSPIDER. |

### Conversation 0x04 · screen 0x0C

| Line | Japanese | English (Imanok) | Spanish (Imanok) |
|---|---|---|---|
| `p12:A8B4` | KONGさまは びっぐどりあんがだいすきじゃ。 | KONG LOVES DORIAN FRUIT | A KONG LE GUSTA MUCHO LA FRUTA DORIAN. |

### Conversation 0x05 · screen 0x01

| Line | Japanese | English (Imanok) | Spanish (Imanok) |
|---|---|---|---|
| `p12:A8D7` | GRASSOGREは いしのたまに よわいぞ。 | GRASSOGRES ARE VULNERABLE TO ROCKS. | LOS GRASSOGRE SON VULNERABLES A LAS ROCAS. |

### Conversation 0x06 · screen 0x11

| Line | Japanese | English (Imanok) | Spanish (Imanok) |
|---|---|---|---|
| `p12:A8FD` | たんけんたいが おきの しまに いったきり もどってこんのじゃ。 | A GROUP OF SOLDIERS WENT TO THE BEACH AND THEY HAVEN'T | TODAVIA NO HA VUELTO EL GRUPO DE SOLDADOS QUE FUE A LA PLAYA. |
| `p12:A922` | RED F、MANに くわれたんかのう。おまえさんも きいつけなされや。 | RETURNED YET. | QUIZA FUERON DEVORA-DOS POR LOS RED F.MAN.¡TEN CUIDADO! |
| `p12:A948` | あんひとらは なんだか わからん きかいを もっていっとった。 | MAYBE THEY WERE DEVOURED BY RED F. MAN.BE CAREFUL! | ELLOS TENIAN UNA EXTRAÑA MAQUINA. |
|  |  | THEY HAD A STRANGE DEVICE. |  |
| `p12:A96A` [03] | そいつは しゃべるきかい じゃったよ。 | IT WAS A TALKING MACHINE! | ERA UNA MAQUINA QUE HABLABA. |
| `p12:A981` | それじゃ それじゃ。 | GOODBYE. | ADIOS. |

### Conversation 0x07 · no screen asks for it

| Line | Japanese | English (Imanok) | Spanish (Imanok) |
|---|---|---|---|
|  |  | CAN YOU TAKE THIS LETTER TO KEMURA'S ELDER? |  |
| `p12:A993` [04] | これを けむらんにいる おじいさんに とどけてください。 / ▶ 1 うけとる  2 ことわる | ▶ 1 OK 2 NO | ¿PUEDES LLEVAR ESTA CARTA AL ANCIANO DE KEMURA?▶ 1 SI 2 NO |

### Conversation 0x08 · no screen asks for it

| Line | Japanese | English (Imanok) | Spanish (Imanok) |
|---|---|---|---|
| `p12:A9CD` | なにか たべるかい? | WHAT DO YOU WANT TO EAT? | ¿QUE QUIERES COMER? |
| `p12:A9DA` [05] | ▶1 ぼいるどふなむし 50GOLD 2 いのししのにく   100GOLD 3 たべない | ▶1 BOILED BUG 50G 2 WARTHOG MEAT 100G 3 DON'T EAT | ▶1 GUSANO HERVIDO 50 2 JABALI ASADO 100 3 NO COMER |
| `p12:AA0C` | おかねが たりません。 | NOT ENOUGH GOLD. | TE FALTA DINERO. |

### Conversation 0x09 · no screen asks for it

| Line | Japanese | English (Imanok) | Spanish (Imanok) |
|---|---|---|---|
| `p12:AA20` [06] | とまって いくかい? / 150 GOLDだよ。 / ▶ 1 とまる  2 とまらない | DO YOU WANT TO HAVE A REST? IT'S 150G ▶ 1 OK 2 NO | ¿QUIERES ALOJARTE? CUESTA 150 ▶ 1 SI 2 NO |
| `p12:AA0C` | おかねが たりません。 | NOT ENOUGH GOLD. | TE FALTA DINERO. |

### Conversation 0x0A · screen 0x15

| Line | Japanese | English (Imanok) | Spanish (Imanok) |
|---|---|---|---|
| `p12:AA50` | KONGさまのでんせつに よると、KONGさまの つめは RED F、MAN が のみこんだそうじゃ。 | ACCORDING TO THE LEGEND,RED F.MAN ATE KONG'S CLAW. | SEGUN LA LEYENDA,RED F.MAN SE COMIO LA GARRA DE KONG. |
| `p12:AA89` | KONGさまの つめに ついては    そうげんの ちかに いけば     わかるじゃろう。 | YOU'LL GET MORE INFORMATION ABOUT KONG'S CLAW AT THE | CONSEGUIRAS MAS INFORMACION SOBRE LA GARRA DE KONG EN |
|  |  | UNDERGROUND AREA. | LA ZONA SUBTERRANEA DE LA ISLA. |

### Conversation 0x0B · screen 0x18

| Line | Japanese | English (Imanok) | Spanish (Imanok) |
|---|---|---|---|
| `p12:AAC0` [07] | わしは きとうしじゃ。おまえに てむさの じゅもんを さずけよう。 | I'M THE SORCERER. I'LL GIVE YOU THE TEMUSA SPELL. | SOY EL BRUJO.TE ENSEÑARE EL HECHIZO TEMUSA. |

### Conversation 0x0C · no screen asks for it

| Line | Japanese | English (Imanok) | Spanish (Imanok) |
|---|---|---|---|
| `p12:AAEA` | ぬまちに はいるには みずげたが ひつようじゃ。 | YOU'LL NEED WATER SANDALS TO ACCESS TO THE CITY. | PARA ACCEDER A LA CIUDAD,HACEN FALTA SANDALIAS DE AGUA. |

### Conversation 0x0D · screen 0x12

| Line | Japanese | English (Imanok) | Spanish (Imanok) |
|---|---|---|---|
| `p12:AAEA` | ぬまちに はいるには みずげたが ひつようじゃ。 | YOU'LL NEED WATER SANDALS TO ACCESS TO THE CITY. | PARA ACCEDER A LA CIUDAD,HACEN FALTA SANDALIAS DE AGUA. |

### Conversation 0x0E · screens 0x10, 0x10

| Line | Japanese | English (Imanok) | Spanish (Imanok) |
|---|---|---|---|
| `p12:AB0C` | みずげたづくりの めいじんは もりの なかにすんでいる。 | THE ONE WHO MAKES THE WATER SANDALS LIVES IN THE FOREST. | EL QUE FABRICA LAS SANDALIAS DE AGUA VIVE EN EL BOSQUE. |

### Conversation 0x0F · screen 0x20

| Line | Japanese | English (Imanok) | Spanish (Imanok) |
|---|---|---|---|
| `p12:AB33` | てむさの じゅもんで いわを けせ。 | USE THE TEMUSA SPELL TO DESTROY THE ROCKS. | DESTRUYE ROCAS CON EL HECHIZO TEMUSA. |

### Conversation 0x10 · screens 0x1A, 0x1A

| Line | Japanese | English (Imanok) | Spanish (Imanok) |
|---|---|---|---|
| `p12:AB4D` | FIRETOTEMは ぶーめらんで たおせ。 | KILL FIRETOTEM WITH THE BOOMERANG. | CON EL BUMERAN PODRAS MATAR A LOS FIRETOTEM. |

### Conversation 0x11 · screen 0x0B

| Line | Japanese | English (Imanok) | Spanish (Imanok) |
|---|---|---|---|
| `p12:AB6B` | CLUBMANは RODで たおせ。 | KILL CLUBMAN WITH THE ROD. | CON EL PALO PODRAS MATAR A CLUBMAN. |

### Conversation 0x12 · screen 0x0E

| Line | Japanese | English (Imanok) | Spanish (Imanok) |
|---|---|---|---|
| `p12:AB88` [08] |  |  |  |
| `p12:AB8A` | きい きい くう きい | KI KI KU KI | KI KI KU KI |
| `p12:AB97` | おいらの ぼすは びっぐどりあんを もっているよ。 | OUR CHIEF'S GOT THE DORIAN FRUIT. | MI JEFE TIENE LA FRUTA DORIAN. |

### Conversation 0x13 · no screen asks for it

| Line | Japanese | English (Imanok) | Spanish (Imanok) |
|---|---|---|---|
| `p12:ABBE` [1C] |  |  |  |
| `p12:AB8A` | きい きい くう きい | KI KI KU KI | KI KI KU KI |
|  |  | THANKS FOR CURING ME.IN APPRECIATION OF THAT... |  |
| `p12:ABC0` [09] | びょうきを なおしてくれて ありがとう。おれいに びっぐどりあんを あげよう。 | TAKE THE DORIAN FRUIT. | GRACIAS POR CURARME. COMO AGRADECIMIENTO, TOMA LA FRUTA DORIAN |

### Conversation 0x14 · no screen asks for it

| Line | Japanese | English (Imanok) | Spanish (Imanok) |
|---|---|---|---|
| `p12:AC03` [0A] |  |  |  |
| `p12:AB8A` | きい きい くう きい | KI KI KU KI | KI KI KU KI |
| `p12:AC05` | ぼすが びょうきに かかっているのじゃ。 | OUR CHIEF IS SICK. | MI JEFE ESTA ENFERMO |
| `p12:AC1F` | おまえさんの やくそうを 5つくれたら ぼすの びょうきがなおる。 | IF YOU BRING ME 5 MEDICINAL HERBS, MY CHIEF MAY HEAL. | SI CONSIGUES 5 HIER-BAS MEDICINALES,MI JEFE PODRA CURARSE. |
| `p12:AC45` [1D] | ▶ 1 やくそうを 5つ わたす /   2 わたさない | ▶ 1 GIVE 5 HERBS 2 EXIT | ▶1 DAR 5 HIERBAS 2 SALIR |
| `p12:AC61` | ざんねんじゃな。 | IT'S A PITY. | ES UNA LASTIMA. |
| `p12:AC6D` | やくそうが たりません。 | YOU DON'T HAVE ENOUGH MEDICINAL HERBS. | TE FALTAN HIERBAS MEDICINALES |
| `p12:AC7C` | ありがとう。 | THANK YOU VERY MUCH! | ¡MUCHAS GRACIAS! |
| `p12:AC85` | おまえさんも びょうきに かかっているようじゃな。 | I THINK YOU ARE SICK TOO. | CREO QUE TU TAMBIEN ESTAS ENFERMO. |

### Conversation 0x15 · no screen asks for it

| Line | Japanese | English (Imanok) | Spanish (Imanok) |
|---|---|---|---|
| `p12:ACA8` [0B] | ほんを かっていくかい? / 200 GOLDだ。 / ▶ 1 かう    2 かわない | DO YOU WANT TO BUY A BOOK? IT'S 200G ▶ 1 OK 2 NO | ¿QUIERES COMPRAR UN LIBRO? CUESTA 200 ▶ 1 SI 2 NO |
| `p12:AA0C` | おかねが たりません。 | NOT ENOUGH GOLD. | TE FALTA DINERO. |

### Conversation 0x16 · no screen asks for it

| Line | Japanese | English (Imanok) | Spanish (Imanok) |
|---|---|---|---|
| `p12:ACDD` | みずげたを つくってやろうか? / 150 GOLDでいいよ | DO YOU WANT TO BUY A PAIR OF WATER SANDALS? IT'S 150G | ¿QUIERES COMPRAR UNAS SANDALIAS DE AGUA? CUESTAN 150 |
| `p12:ACFE` [0C] | ▶ 1 つくってもらう /   2 つくらない | ▶1 BUY 2 EXIT | ▶1 COMPRAR 2 SALIR |
| `p12:AA0C` | おかねが たりません。 | NOT ENOUGH GOLD. | TE FALTA DINERO. |
| `p12:AD15` | みずげたを つくるには ざいりょう が ひつようだ。 | I NEED PAPYRUS TO MAKE THEM. | NECESITO PAPIRO PARA PODER HACERLAS. |

### Conversation 0x17 · no screen asks for it

| Line | Japanese | English (Imanok) | Spanish (Imanok) |
|---|---|---|---|
| `p12:AD42` [0D] |  |  |  |
| `p12:AB8A` | きい きい くう きい | KI KI KU KI | KI KI KU KI |
| `p12:AD44` | にくを くれたら とおして あげるよ。 | IF YOU GIVE ME MEAT, I'LL LET YOU PASS. | SI ME DAS CARNE,TE DEJARE PASAR. |
| `p12:AD5A` [1E] | ▶1 にくを あげる。 2 あげない | ▶1 GIVE MEAT 2 EXIT | ▶1 DAR CARNE 2 SALIR |
| `p12:AD70` | にくが ありません。 | YOU DON'T HAVE MEAT. | NO TIENES CARNE. |

### Conversation 0x18 · no screen asks for it

| Line | Japanese | English (Imanok) | Spanish (Imanok) |
|---|---|---|---|
| `p12:AD81` | ぼすは びょうきだ。びょうきを なおすには やくそうが たくさん ひつようだ。 | I'M SICK.I NEED A LOT OF MEDICINAL HERBS TO CURE MYSELF | ESTOY ENFERMO.NECE-SITO MUCHAS HIERBAS PARA CURARME. |

### Conversation 0x19 · screen 0x2C

| Line | Japanese | English (Imanok) | Spanish (Imanok) |
|---|---|---|---|
| `p12:ADB4` [0E] | あなたは むしに かまれました。 | YOU'VE BEEN BITTEN BY THE BUGS | ¡TE HAN PICADO UNOS BICHOS! |

### Conversation 0x1A · no screen asks for it

| Line | Japanese | English (Imanok) | Spanish (Imanok) |
|---|---|---|---|
| `p12:ADD2` [0F] |  |  |  |
| `p12:AB8A` | きい きい くう きい | KI KI KU KI | KI KI KU KI |
| `p12:ADD4` | にくを くれたら とめてやるよ。 | IF YOU GIVE ME MEAT, I'LL LET YOU STAY. | SI ME DAS CARNE,TE DEJARE ALOJARTE. |
| `p12:ADE6` [1F] | ▶1 にくを あげる。 2 あげない | ▶1 GIVE MEAT 2 EXIT | ▶1 DAR CARNE 2 SALIR |
| `p12:AD70` | にくが ありません。 | YOU DON'T HAVE MEAT. | NO TIENES CARNE. |

### Conversation 0x1B · no screen asks for it

| Line | Japanese | English (Imanok) | Spanish (Imanok) |
|---|---|---|---|
| `p12:AE08` [10] |  |  |  |
| `p12:AB8A` | きい きい くう きい | KI KI KU KI | KI KI KU KI |
| `p12:AE0A` | にくを くれたら かぎを あげるよ。 | IF YOU GIVE ME MEAT, I'LL GIVE YOU AN IRON KEY. | SI ME DAS CARNE,TE DARE UNA LLAVE DE HIERRO. |
| `p12:AE20` [20] | ▶1 にくを あげる。 2 あげない | ▶1 GIVE MEAT 2 EXIT | ▶1 DAR CARNE 2 SALIR |
| `p12:AD70` | にくが ありません。 | YOU DON'T HAVE MEAT. | NO TIENES CARNE. |

### Conversation 0x1C · no screen asks for it

| Line | Japanese | English (Imanok) | Spanish (Imanok) |
|---|---|---|---|
| `p12:AE3E` | いらっしゃい。ごちゅうもんは? | WHAT DO YOU WANT TO EAT? | ¿QUE QUIERES COMER? |
| `p12:AE50` [11] | ▶1 やまひるの さしみ 50 GOLD 2 ぼいるどやまみみず /             100 GOLD | ▶1 LEECH SASHIMI 50G 2 BOILED MOUNTAIN WORM 100G | ▶1 SANGUIJUELAS 50 2 LOMBRIZ DE MONTA-ÑA HERVIDA 100 |
| `p12:AA0C` | おかねが たりません。 | NOT ENOUGH GOLD. | TE FALTA DINERO. |

### Conversation 0x1D · no screen asks for it

| Line | Japanese | English (Imanok) | Spanish (Imanok) |
|---|---|---|---|
| `p12:AE90` | わしらの しゅうちょうを たすけだしてくだされ。 | PLEASE,RESCUE OUR LEADER! | ¡POR FAVOR,RESCATA A NUESTRO LIDER! |
| `p12:AEAC` | しゅちょうは どろの かめんに つれさられたんじゃ。 | THE KONG'S ROAR HAS BEEN STOLEN. | NOS HAN ROBADO EL RUGIDO DE KONG. |

### Conversation 0x1E · no screen asks for it

| Line | Japanese | English (Imanok) | Spanish (Imanok) |
|---|---|---|---|
| `p12:AECE` | THE NASTYは まかぷらの じゅもんで たおせ。 | YOU NEED THE MAKAPORA SPELL TO KILL THE NASTY. | PARA MATAR A THE NASTY NECESITAS EL HECHIZO MAKAPORA. |

### Conversation 0x1F · no screen asks for it

| Line | Japanese | English (Imanok) | Spanish (Imanok) |
|---|---|---|---|
| `p12:AEF6` | みずげたを くれれば とめてやってもいいよ。 | IF YOU GIVE ME A PAIR OF W.SANDALS, I'LL LET YOU STAY. | SI ME DAS UNAS SAN-DALIAS DE AGUA,TE DEJO ALOJARTE. |
| `p12:AF11` [12] | ▶ 1 みずげたを あげる /   2 あげない | ▶1 GIVE SANDALS 2 EXIT | ▶1 DAR SANDALIAS 2 SALIR |
| `p12:AF2D` | みずげたが ありません。 | YOU DON'T HAVE WATER SANDALS. | NO TIENES SANDALIAS DE AGUA |

### Conversation 0x20 · screen 0x28

| Line | Japanese | English (Imanok) | Spanish (Imanok) |
|---|---|---|---|
| `p12:AF42` [13] | おお、KONGさまの おちからのひとつ KONGさまの きばを さずけよう。 | I'LL GIVE YOU KONG'S FANG AS A TALISMAN. | TE DOY EL COLMILLO DE KONG COMO TALIS-MAN. |

### Conversation 0x21 · no screen asks for it

| Line | Japanese | English (Imanok) | Spanish (Imanok) |
|---|---|---|---|


### Conversation 0x22 · screens 0x25, 0x26

| Line | Japanese | English (Imanok) | Spanish (Imanok) |
|---|---|---|---|
| `p12:AF72` | MUDARMORは らめらの じゅえきで たおせ。 | YOU NEED LAMELLA LIQUID TO KILL MUDARMOR. | PARA MATAR A MUDAR-MOR NECESITAS EL LIQUIDO DE LAMELA. |

### Conversation 0x23 · screen 0x2A

| Line | Japanese | English (Imanok) | Spanish (Imanok) |
|---|---|---|---|
| `p12:AF93` | TWINMIRESは あかいいわの ばんにんなり。 | THE TWINMIRES ARE THE GUARDIANS OF THE RED ROCK. | LOS TWINMIRES SON LOS GUARDIANES DE LA ROCA ROJA. |

### Conversation 0x24 · no screen asks for it

| Line | Japanese | English (Imanok) | Spanish (Imanok) |
|---|---|---|---|
| `p12:AFB5` | このさきに けむらんと よばれる しまがある。 | THERE'S AN ISLAND AHEAD. IT'S CALLED KEMURA. | MAS ADELANTE HAY UNA ISLA LLAMADA KEMURA. |
| `p12:AFD0` | けむらんは KONGさまの でんせつ が いきづいている しまじゃ。 | PEOPLE LIVING THERE KNOW ABOUT KONG'S LEGEND. | EN ESA ISLA CONOCEN LA LEYENDA DE KONG. |

### Conversation 0x25 · no screen asks for it

| Line | Japanese | English (Imanok) | Spanish (Imanok) |
|---|---|---|---|
| `p12:B000` | うみのいえに ようこそ。 / ごちゅうもんは? | WELCOME TO THE SEA HOUSE,WANT TO EAT? | BIENVENIDO A LA CASA DEL MAR.¿QUE DESEAS? |
| `p12:B018` [15] | ▶1 なめくじの しおから10GOLD 2 ふなむしの みそづけ50GOLD 3 たべない | ▶1 SALTY SLUG 10G 2 SEA LOUSE MISO 50G 3 EXIT | ▶1 BABOSA SALADA 10 2 PIOJOS AL MISO 50 3 NO COMER |
| `p12:AA0C` | おかねが たりません。 | NOT ENOUGH GOLD. | TE FALTA DINERO. |

### Conversation 0x26 · screen 0x43

| Line | Japanese | English (Imanok) | Spanish (Imanok) |
|---|---|---|---|
| `p12:B054` [16] |  |  |  |
| `p12:B056` | わしは むすこからの てがみを ずっと まっておるんじゃ。 | I'M WAITING FOR A LETTER FROM MY SON. | ESTOY ESPERANDO UNA CARTA DE MI HIJO. |
| `p12:B078` | わざわざ てがみを とどけてくれて ありがとうございます。 | THANKS FOR BRINGING ME THIS LETTER. | GRACIAS POR TRAERME LA CARTA. |
| `p12:B09E` | おれいに KONGさまの ひとみを さしあげます。 | ACCEPT KONG'S EYE AS A GIFT. | EN AGRADECIMIENTO TE DARE EL OJO DE KONG. |

### Conversation 0x27 · screen 0x46

| Line | Japanese | English (Imanok) | Spanish (Imanok) |
|---|---|---|---|
| `p12:B0BE` | たんけんたいの のこしていった てんとのなかに なんだか わからん きかいが あったそうじゃ。 | ONE OF THE SOLDIERS LEFT AN UNKNOWN MACHINE. | UNO DE LOS SOLDADOS DEJO UNA EXTRAÑA MA-QUINA QUE NO CONOZCO |

### Conversation 0x28 · screen 0x4A

| Line | Japanese | English (Imanok) | Spanish (Imanok) |
|---|---|---|---|
| `p12:B0FA` [17] |  |  |  |
| `p12:B0FC` | むせんきが あります。 | THERE'S A RADIO! | ¡HAY UNA RADIO! |
| `p12:B10A` | むせんきは こわれている ようです。 | I THINK IT'S BROKEN. | CREO QUE ESTA ROTA. |

### Conversation 0x29 · screens 0x3D, 0x3D

| Line | Japanese | English (Imanok) | Spanish (Imanok) |
|---|---|---|---|
| `p12:B123` | KONGの さけびを とるには らくな の たまが ひつようだ。 | YOU NEED LAKUNA'S ORB TO GET KONG'S ROAR. | PARA CONSEGUIR EL RUGIDO DE KONG, NECESITAS LA BOLA |
|  |  |  | DE LAKUNA. |

### Conversation 0x2A · screens 0x4F, 0x50

| Line | Japanese | English (Imanok) | Spanish (Imanok) |
|---|---|---|---|
| `p12:B14C` | きいろい いわは KONGさまの ちからでなければ おすことができない。 | ONLY KONG'S STRENGTH CAN MOVE THE YELLOW ROCK. | SOLO LA FUERZA DE KONG PUEDE MOVER LA ROCA AMARILLA. |

### Conversation 0x2B · screen 0x51

| Line | Japanese | English (Imanok) | Spanish (Imanok) |
|---|---|---|---|
| `p12:B180` | こわれたものなら なんでも しゅうりするぜ。 / ひとつ 350 GOLD でな。 | I REPAIR ANY BROKEN ITEM FOR 350G | ARREGLO CUALQUIER COSA ROTA POR 350. |
| `p12:B1AC` [18] | ▶ 1、SHOTー1 /   2、SHOTー2  3、おわり | ▶1 WEAPON 2 ITEM 3 NOTHING | ▶1 ARMA 2 OBJETO 3 SALIR |
| `p12:B1CA` | ほかには | ANYTHING ELSE? | ¿ALGO MAS? |
| `p12:A811` | かねが たりねえぞ。 | YOUR RADIO IS NOW REPAIRED. | TU RADIO YA ESTA ARREGLADA. |
|  |  | NOT ENOUGH GOLD. | NO TIENES SUFICIENTE |

### Conversation 0x2C · screens 0x60, 0x60

| Line | Japanese | English (Imanok) | Spanish (Imanok) |
|---|---|---|---|
| `p12:B1D4` [19] | KONGさまに さしあげるものを てーぶるの うえに おきなさい。 | PUT YOUR OFFER TO KONG ON THE ALTAR. | PON LAS OFRENDAS A KONG SOBRE EL ALTAR. |

### Conversation 0x2D · screen 0x62

| Line | Japanese | English (Imanok) | Spanish (Imanok) |
|---|---|---|---|
| `p12:B201` | KONGさまの でんせつに よると / どうくつの なかに さいている  / きょだいな はなは、 | ACCORDING TO KONG'S LEGEND, YOU NEED THE YELLOW STONES | SEGUN LA LEYENDA DE KONG,PARA ELIMINAR LA FLOR GIGANTE QUE |
| `p12:B233` | きいろい いしで なければ けすことができないらしい。 | TO KILL THE BIG FLOWER GROWING AT THE CAVE. | CRECE EN LA CUEVA, NECESITAS LAS PIEDRAS DORADAS. |
| `p12:B254` | よく おぼえておくが よい。 | DON'T FORGET IT! | ¡RECUERDALO BIEN! |

### Conversation 0x2E · screen 0x66

| Line | Japanese | English (Imanok) | Spanish (Imanok) |
|---|---|---|---|
| `p12:B26A` | どうくつの なかの じわれを うめるには KONGさまの なみだがひつようじゃ。 | YOU NEED KONG'S TEAR TO FILL UP THE GAP AT THE CAVE. | PARA TAPAR LA GRIETA EN LA CUEVA,HACE FALTA LA LAGRIMA DE |
|  |  |  | KONG. |

### Conversation 0x2F · screen 0x68

| Line | Japanese | English (Imanok) | Spanish (Imanok) |
|---|---|---|---|
| `p12:B29F` | この とびらは しんせいなる いのりの とびら。 | THIS IS THE HOLY DOOR OF PRAY. | ESTA ES LA SAGRADA PUERTA DE LA ORACION |
| `p12:B2BB` | KONGさまの きばが なければ いかなるものも あけることはできない。 | YOU NEED KONG'S FANG TO OPEN THE DOOR. | PARA ABRIR LA PUERTA NECESITAS EL COLMI-LLO DE KONG. |

### Conversation 0x30 · no screen asks for it

| Line | Japanese | English (Imanok) | Spanish (Imanok) |
|---|---|---|---|
| `p12:B2E9` [1A] | どうくつの そとに でたいか? / ▶ 1 はい  2 いいえ | DO YOU WANT TO EXIT THE CAVE? ▶ 1 OK 2 NO | ¿QUIERES SALIR DE LA CUEVA? ▶ 1 SI 2 NO |

### Conversation 0x31 · screen 0x6F

| Line | Japanese | English (Imanok) | Spanish (Imanok) |
|---|---|---|---|
|  |  | I'M THE LEADER. THANKS FOR SAVING ME. | YO SOY EL LIDER. GRACIAS POR SALVARME |
| `p12:B30E` [1B] | わしは しゅうちょうじゃ。 ありがとう、よく たすけてくれた。おれいに まかぷらの じゅもんを さずけよう。 | I'LL GIVE YOU THE MAKAPORA SPELL. | EN AGRADECIMIENTO TE DARE EL HECHIZO DE MAKAPORA. |

### Conversation 0x32 · screen 0x70

| Line | Japanese | English (Imanok) | Spanish (Imanok) |
|---|---|---|---|
| `p12:B34F` | しろいけものは ひかりの けんで たおせ。 | KILL THE WHITE MONSTERS WITH THE LIGHT SWORD | MATA A LOS MONSTRUOS BLANCOS CON LA ESPADA DE LUZ. |

### Conversation 0x33 · screen 0x71

| Line | Japanese | English (Imanok) | Spanish (Imanok) |
|---|---|---|---|
| `p12:B36B` | KONGさまの つめは すべての のろいを うちけす ただ ひとつの ぶきじゃ。 | KONG'S CLAW IS THE ONLY WEAPON WHICH NEUTRALIZES ANY | LA GARRA DE KONG ES LA UNICA ARMA QUE NEUTRALIZA |
|  |  | CURSE. | CUALQUIER MALDICION. |

### Conversation 0x34 · no screen asks for it

| Line | Japanese | English (Imanok) | Spanish (Imanok) |
|---|---|---|---|
| `p12:B39D` | この はこを あけるには あぐのすの かぎが ひつようなり。 | YOU NEED THE AGNOS KEY TO OPEN THIS CHEST. | PARA ABRIR ESTE COFRE NECESITAS LA LLAVE DE AGNOS. |

### Conversation 0x35 · screen 0x22

| Line | Japanese | English (Imanok) | Spanish (Imanok) |
|---|---|---|---|
| `p12:B3C4` | からすは かならず たおせ。 | KILL THE CROWS WITHOUT FAILING. | MATA A LOS CUERVOS SIN FALTA. |

### Conversation 0x36 · screen 0x3A

| Line | Japanese | English (Imanok) | Spanish (Imanok) |
|---|---|---|---|
| `p12:B3D9` | しんでんには KONGの さけびが かくされている。 | KONG'S ROAR IS HIDDEN IN THE TEMPLE. | EN EL TEMPLO SE HAYA ESCONDIDO EL RUGIDO DE KONG. |

### Conversation 0x37 · no screen asks for it

| Line | Japanese | English (Imanok) | Spanish (Imanok) |
|---|---|---|---|
| `p12:B402` | いまから HELICOPTER と つうしん します。 | LET'S CALL THE HELICOPTER,NOW. | AHORA VAMOS A COMU-NICARNOS CON EL HELICOPTERO. |
| `p12:B41F` | こちらARMY こちらARMY  | THIS IS THE ARMY! THIS IS THE ARMY! | ¡AQUI EL EJERCITO, AQUI EL EJERCITO! |
| `p12:B431` | まだ LADY KONGを はっけん できないのか | HAVEN'T YOU FOUND LADY KONG YET? | ¿TODAVIA NO HAS ENCONTRADO A LADY KONG? |
| `p12:B44E` | はやくしないと KING KONGが しんでしまうぞ。 | KING KONG IS GOING TO DIE. | KING KONG ESTA A PUNTO DE MORIR. |

### Conversation 0x38 · no screen asks for it

| Line | Japanese | English (Imanok) | Spanish (Imanok) |
|---|---|---|---|
| `p12:B402` | いまから HELICOPTER と つうしん します。 | LET'S CALL THE HELICOPTER,NOW. | AHORA VAMOS A COMU-NICARNOS CON EL HELICOPTERO. |
| `p12:B47A` | ごくろう MITCHEL。 / よくやったぞ。 | YOU'VE DONE A GOOD JOB,MITCHEL | HAS HECHO UN BUEN TRABAJO,MITCHEL. |
| `p12:B493` | すぐに そちらに むかう。 | WE'RE COMING RIGHT NOW. | VAMOS HACIA ALLA ENSEGUIDA. |
| `p12:B4A3` [21] | これで KING KONGも たすかるだろう。 | KING KONG WILL BE SAVED. | KING KONG SE SALVARA. |
| `p12:B4BE` [22] | HELICOPTERがやってきました。 | THE HELICOPTER IS LANDING. | HA LLEGADO EL HELICOPTERO. |

## The items

36 names (`p15:A069` + 2 × n), written by `p00:4423`; after them, `p00:42F6` adds "を とりました。" (`p15:A062`). In the patches, the table is at `p06:B525` (English) and `p06:B526` (Spanish).

| No. | Japanese | English (Imanok) | Spanish (Imanok) |
|---|---|---|---|
| 0x01 `p15:A0B3` | ないふ | KNIFE | CUCHILLO |
| 0x02 `p15:A0B7` | ROD | ROD | PALO |
| 0x03 `p15:A0BB` | こんぼう | CLUB | GARROTE |
| 0x04 `p15:A0C1` | ひかりのけん | L.SWORD | E.DE LUZ |
| 0x05 `p15:A0C8` | おの | AXE | HACHA |
| 0x06 `p15:A0CB` | けん | SWORD | ESPADA |
| 0x07 `p15:A0CE` | つめ | K.CLAW | GARRA |
| 0x08 `p15:A0D1` | いし | STONES | PIEDRAS |
| 0x09 `p15:A0D4` | ほのおのたま | F.BALL | B.FUEGO |
| 0x0A `p15:A0DB` | ぶーめらん | BOOMERANG | BUMERAN |
| 0x0B `p15:A0E2` | もり | HARPOON | HARPON |
| 0x0C `p15:A0E5` | てむさ | TEMUSA | TEMUSA |
| 0x0D `p15:A0E9` | ねむり | NEMURI | NEMURI |
| 0x0E `p15:A0ED` | まかぷら | MAKAPORA | MAKAPORA |
| 0x0F `p15:A0F3` | らめらのえき | LAMELLA | LAMELA |
| 0x10 `p15:A0FA` | やくそう | HERB | HIERBAS |
| 0x11 `p15:A0FF` | ちからのたま | P.ORB | B.MAGICA |
| 0x12 `p15:A106` | きば | K.FANG | COLMILLO |
| 0x13 `p15:A10A` | ささやき | BOW HARP | ARCO ARPA |
| 0x14 `p15:A10F` | あぐのす | AGNOS K. | LL.AGNOS |
| 0x15 `p15:A115` | にく | MEAT | CARNE |
| 0x16 `p15:A118` | なみだ | K.TEAR | LAGRIMA |
| 0x17 `p15:A11D` | どりあん | D.FRUIT | FRUTA D. |
| 0x18 `p15:A123` | おまもり | AMULET | AMULETO |
| 0x19 `p15:A128` | むせんき | RADIO | RADIO |
| 0x1A `p15:A12D` | ひとみ | K.EYE | OJO |
| 0x1B `p15:A131` | さけび | K.ROAR | RUGIDO |
| 0x1C `p15:A136` | らくなのたま | LAKUNA | LAKUNA |
| 0x1D `p15:A13D` | ぱぴるす | PAPYRUS | PAPIRO |
| 0x1E `p15:A144` | みずげた | W.SANDALS | SANDALIA |
| 0x1F `p15:A14B` | きいろいいし | Y.STONES | P.DORADAS |
| 0x20 `p15:A152` | とどけもの | LETTER | CARTA |
| 0x21 `p15:A159` | ほん | BOOK | LIBRO |
| 0x22 `p15:A15C` | かいてん | WHIRL | REMOLINO |
| 0x23 `p15:A161` | きのかぎ | WOOD KEY | LL.MADERA |
| 0x24 `p15:A167` | てつのかぎ | IRON KEY | LL.HIERRO |
| on pick-up `p15:A062` | を とりました。 | TAKEN | OBTIENES |

## The labels

Position and letters, with 0xFE before each piece. The ones on the status panel, the item window and "みずげた" (the clogs, which `p12:BD73` writes when you have them). In the original they are already in English, except the last one.

| Where | Asked for by | Original | English (Imanok) | Spanish (Imanok) |
|---|---|---|---|---|
| `p01:6302` | `p01:62DE` | MITCHEL / SHOT1 / SHOT2 | MITCHEL / WEAPON / ITEM | MITCHEL / ARMA / OBJETO |
| `p01:631C` | `p01:62C3` | DAYS / MP / GOLD / LIFE / EXP / LEVEL | DAYS / MAGIC / GOLD / LIFE / EXP / LEVEL | DIAS / MAGIA / ORO / VIDA / EXP / NIVEL |
| `p12:BA93` | `p12:BA7B` | SHOT 2 / MITCHEL / SPEED | ITEMS / MITCHEL / SPEED | OBJETOS / MITCHEL / VELOCIDAD |
| `p12:BAAE` | `p12:BA81, p12:BC14` | SHOT 1 | WEAPONS | ARMAS |
| `p12:BD84` | `p12:BD73` | みずげた | W.SANDALS | SANDALIAS |

## The ending

The nine texts loaded by the scenes of the three endings (`p06:A8DF`-`p06:AAAD`) and THE END (`p06:A711`), typed out one letter every 4 frames (`p06:AADD`); 0xFE starts a new line. In the patches, the same loads at the same addresses (the last one at `p06:AAB0`).

| Text | Asked for by | Japanese | English (Imanok) | Spanish (Imanok) |
|---|---|---|---|---|
| `p06:AD44` | `p06:A8DF` | MITCHEL.きみは ゆうかんにたたかい / ついに LADYKONGをさがしだした。 / しかし、ときはすでにおそすぎたようだ。 | MITCHEL,YOU'VE FOUGHT BRA- / VELY.YOU FOUND LADY KONG. / BUT,TOO LATE. | MITCHEL HAS LUCHADO CON / VALOR Y ENCONTRADO A LADY / KONG.PERO DEMASIADO TARDE. |
| `p06:AD8A` | `p06:A8F8` | AMYのどりょくのかいもなく、 / KINGKONGは たったいま いきをひきとった。 | DESPITE AMY'S EFFORT, / KING KONG HAS PERISHED | A PESAR.DE LOS ESFUERZOS DE / AMI,KING KONG HA MUERTO. |
| `p06:ADB6` | `p06:A916` | みてごらん MITCHEL / LADYが あんなにたのしそうにかけまわっているよ | LOOK MITCHEL,LADY IS / RUNNING HAPPILY. | MIRA MITCHEL,LADY KONG / CORRE FELIZMENTE. |
| `p06:ADE1` | `p06:A943` | KINGKONGはすくえなかったけれど / きみのぼうけんは、けっしてむだではなかった。 / ありがとう    MITCHEL | WE COULDN'T SAVE KING KONG | NO HEMOS PODIDO SALVAR A |
| `p06:AE24` | `p06:A97F` | MITCHEL.きみは ゆうかんにたたかい / ついに LADYKONGをさがしだした。 / そして、AMYによって しゅじゅつがおこなわれた。 | MITCHEL HAS FOUGHT HARD TO / FIND LADY KONG.AMY HAS / OPERATED ON KING KONG. | MITCHEL HA CONSEGUIDO / ENCONTRAR A LADY KONG. / AMY HA OPERADO A KONG. |
| `p06:AE6F` | `p06:A9D3` | せいこうだ! KINGKONGは いきかえった! / きみのおかげでKONGは ふっかつしたのだ! | WE FINALLY DID IT! / KING KONG IS ALIVE! | ¡LO HEMOS CONSEGUIDO! / ¡KING KONG ESTA VIVO! |
| `p06:AEA4` | `p06:AA26` | おめでとうMITCHEL!おめでとうAMY! | THANKS TO YOU HE LIVES. | EL VIVE GRACIAS A TI. |
| `p06:AEBD` | `p06:AA49` | GOLNEBOとうにも へいわがもどり、 / KONGは LADYといっしょにたのしくくらしている / ありがとう    MITCHEL | GOLNEBO WILL REGAIN PEACE. / THEY WILL BE HAPPY. / THANK YOU MITCHEL! | GOLNEBO HA RECUPERADO LA / PAZ.AQUI SERAN FELICES. / ¡GRACIAS MITCHEL! |
| `p06:AF03` | `p06:AAAD` | おっと!これはびっくり!あかちゃんKONGだ! / やったねKONG!やったねLADY!おめでとう!! | OH!WHAT A SURPRISE!IT'S / BABY KONG!YOU MADE IT! / CONGRATULATIONS! | ¡OH!¡HAN TENIDO UN HIJO! / ¡LO HAN CONSEGUIDO! / ¡ENHORABUENA! |
| `p06:AF39` | `p06:A711` | THE·END | THE END | FIN |

In both patches the fourth text comes out cut short: after its 0xFF comes the rest, "BUT THE ADVENTURE HAS BEEN / WORTHY.THANKS MITCHEL." in English and "KONG,PERO LA AVENTURA / HA MERECIDO LA PENA." in Spanish, and nothing reads it. The routine that writes (`p06:AADD`) stops at the 0xFF, and the steps of the scene are those of the original, with only the text addresses changed. Seen in openMSX with both patches (`tools/lanza_final.sh`): the text stays on its first line and a few seconds later THE END comes up, with the text pointer never going past the 0xFF. It is one byte, and [the patch](THE-PATCH.md) here fixes it.

## The enemies

68 names (`p15:BA76` + 2 × type), drawn by `p01:61DD`. They are already in English in the original and the patches leave them as they are (`p15:B96C`, all 68 the same).

| Type | Name | Where |
|---|---|---|
| 1 | PIGWORM | `p15:BB00` |
| 2 | SLIPSLIME | `p15:BB08` |
| 3 | WOODWORM | `p15:BB12` |
| 4 | CLUBMAN | `p15:BB1B` |
| 5 | MUDARMOR | `p15:BB23` |
| 6 | GARGOYLE | `p15:BB2C` |
| 7 | POISNFROG | `p15:BB35` |
| 8 | GARGOYLE2 | `p15:BB3F` |
| 9 | ROCKMAN | `p15:BB49` |
| 10 | WILDBOAR | `p15:BB51` |
| 11 | REDSPIDER | `p15:BB5A` |
| 12 | BIGSPIDER | `p15:BB64` |
| 13 |  | `p15:BD39` |
| 14 | MUDMASK | `p15:BB6E` |
| 15 | BOGGEDMAN | `p15:BB76` |
| 16 | BATT | `p15:BB80` |
| 17 | RATT | `p15:BB85` |
| 18 | GRASSWORM | `p15:BB8A` |
| 19 | CENTIPEDE | `p15:BB94` |
| 20 | CENTIPEDE | `p15:BB94` |
| 21 | DUNGROLL | `p15:BB9E` |
| 22 | BLOWPIPER | `p15:BBA7` |
| 23 | POLEMAN | `p15:BBB1` |
| 24 | BOOMERANG | `p15:BBB9` |
| 25 | BLOWMIRE | `p15:BBC3` |
| 26 | TWINMIRES | `p15:BBCC` |
| 27 | SEALOUSE | `p15:BBD6` |
| 28 | BOWLER | `p15:BBDF` |
| 29 | THICKSKIN | `p15:BBE6` |
| 30 | GRIZZLY | `p15:BBF0` |
| 31 | MR.RUINS | `p15:BBF8` |
| 32 | CAVEMAN | `p15:BC01` |
| 33 | CAVERNMAN | `p15:BC09` |
| 34 | PROWLER | `p15:BC13` |
| 35 | CAVERNBIG | `p15:BC1B` |
| 36 | FALCONER | `p15:BC25` |
| 37 | WATCHMAN | `p15:BC2E` |
| 38 | BIGGUARD | `p15:BC37` |
| 39 | SAVAGE | `p15:BC40` |
| 40 | FALCONBAT | `p15:BC47` |
| 41 | FIRETOTEM | `p15:BC51` |
| 42 | THE NASTY | `p15:BC5B` |
| 43 | BADPRIEST | `p15:BC65` |
| 44 | GROUNDER | `p15:BC6F` |
| 45 | S.P.S | `p15:BC78` |
| 46 | MIREWORM | `p15:BC7E` |
| 47 | THE NOT | `p15:BC87` |
| 48 | HUMPEDMAN | `p15:BC8F` |
| 49 | STONEMAN | `p15:BC99` |
| 50 | CROW | `p15:BCA2` |
| 51 | RED F.MAN | `p15:BCA7` |
| 52 | B F.MAN | `p15:BCB1` |
| 53 | D F.MAN | `p15:BCB9` |
| 54 | JUMPMAN | `p15:BCC1` |
| 55 | CLINGMAN | `p15:BCC9` |
| 56 | REVOLVER | `p15:BCD2` |
| 57 | REVOLVER | `p15:BCD2` |
| 58 | WHITEFIRE | `p15:BCDB` |
| 59 | WHITEOGRE | `p15:BCE5` |
| 60 | STONEOGRE | `p15:BCEF` |
| 61 |  | `p15:BD39` |
| 62 | MIREFROG | `p15:BCF9` |
| 63 | RUINSBAT | `p15:BD02` |
| 64 | SHUT ALL | `p15:BD0B` |
| 65 | ROCK ROCK | `p15:BD14` |
| 66 | BIGFLOWER | `p15:BD1E` |
| 67 | GRASSOGRE | `p15:BD28` |
| 68 | BUCKLER | `p15:BD32` |

## The credits

The ones on the title screen (`p06:BAE7`, `p06:BAD5`), in English. The patches have a different title screen and do not carry them.

> ▶KONAMI 1986 / SHOCHIKUーFUJI CO.、LTD. / ▶1986 DE LAURENTIIS / ENTERTAINMENT GROUP INC. / ALL RIGHTS RESERVED.
