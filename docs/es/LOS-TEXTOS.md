# Los textos

King Kong 2: Yomigaeru Densetsu salió solo en japonés. Aquí están todos sus textos, sacados de la ROM con `tools/textos.py`, cada uno con su dirección y quién lo pide. Al lado va la traducción al inglés y al castellano de los parches de **Imanok, Manuel Pazos y Ramones** ([KING KONG 2 ULTIMATE TRANSLATION](https://msxblue.com/imanok/), 2012-2013; los textos los tradujeron Chiho y Kyoko), como sugirió theNestruo. **La traducción es suya.** Los parches no se incluyen: con los dos IPS en `work/imanok/`, `tools/textos.py imanok` vuelve a sacar sus textos.

Los parches reensamblan el juego entero, así que sus textos están en otras direcciones (se dan abajo), y a veces parten en dos una línea del original. Las letras propias de cada parche, que juntan varias en un dibujo (BOOMERANG, ARCO ARPA, «LL.» de llave), se transcriben como se leen. Un **·** es un código por debajo de 0x30, que no tiene letra en la fuente: sale el dibujo c + 0x10 de la hoja (`p00:495F`), y no lo hemos mirado.

## Las conversaciones

56 conversaciones (`p12:A66E`, `tools/dialogos.py`). Las pide `p01:7E57` según la pantalla donde se para Mitchel (`p12:A5FE`) o la lista de parejas de `p01:7EF5`. Cada línea lleva delante su acción (`p02:8065`), que la tabla da entre corchetes cuando no es 0. En los parches la tabla está en 0xA14E del banco 12; el renglón salta solo a las 20 letras (`p02:810E`, el mismo en las tres versiones).

### Conversación 0x01 · pantalla 0x00

| Línea | Japonés | Inglés (Imanok) | Castellano (Imanok) |
|---|---|---|---|
| `p12:A6EC` | GOLNEBOとうに なんのようじゃ。 | WHY DID YOU COME TO GOLNEBO ISLAND? | ¿PARA QUE HAS VENIDO A LA ISLA DE GOLNEBO? |
| `p12:A702` | ふむ ふむ。KONGさまを さがしに きたのじゃな。 | HMMM,I SEE.SO YOU CAME TO FIND LADY KONG? | HMMM...YA VEO.ASI QUE HAS VENIDO A BUSCAR A LADY KONG. |
| `p12:A720` | でんせつによると、KONGさまは このしまの どこかに こもられて おるらしい。 | ACCORDING TO THE LEGEND,SHE IS HIDDEN IN THE ISLAND. | SEGUN LA LEYENDA, ESTA ESCONDIDA EN ESTA ISLA. |
| `p12:A74C` | KONGさまに おあいするには でんせつを ときあかさねば なるまい。 | YOU'LL HAVE TO UNRAVEL THE LEGEND TO FIND HER. | PARA ENCONTRARLA HAY QUE DESCIFRAR DICHA LEYENDA. |
| `p12:A773` | そうげんのじいさんにきけば、なにかわかるかもしれんぞ。 / きをつけて おいきなされ。 | ASK THE JUNGLE ELDERS AND THEY WILL GIVE YOU SOME CLUES. | PREGUNTA A LOS ANCIANOS DE LA ISLA Y TE DARAN PISTAS. |
|  |  | TAKE CARE! | ¡TEN CUIDADO! |

### Conversación 0x02 · pantalla 0x04

| Línea | Japonés | Inglés (Imanok) | Castellano (Imanok) |
|---|---|---|---|
| `p12:A7B2` | おれたちは みつりょうしゃだ。    ぶきを うってやってもいいぞ。 | WE'RE SMUGGLERS.WE CAN SELL YOU SOME WEAPONS. | SOMOS CONTRABANDIS-TAS.PODEMOS VENDERTE ARMAS. |
| `p12:A7D9` [01] | BIGSPIDERをたおす ないふ / 200 GOLD だ。 / ▶ 1 かう  2 かわない | KNIFE TO KILL BIGSPIDER 200G ▶ 1 OK 2 NO | CUCHILLO PARA MATAR A BIGSPIDER POR 200 ▶ 1 SI 2 NO |
| `p12:A808` | ありがとよ。 | THANKS | GRACIAS |
| `p12:A811` | かねが たりねえぞ。 | NOT ENOUGH GOLD. | NO TIENES SUFICIENTE |
| `p12:A81F` [02] | GRIZZLYを たおす おの / 300 GOLDだ。 / ▶ 1 かう  2 かわない | AXE TO KILL GRIZZLY 300G ▶ 1 OK 2 NO | HACHA PARA MATAR A GRIZZLY POR 300 ▶ 1 SI 2 NO |
| `p12:A84B` | すまねえ おのは うりきれちまった。 | I'M SORRY,IT'S SOLD OUT. | LO SIENTO,NO NOS QUEDAN. |
| `p12:A85F` | おのは ちからが ないと つかいこなせないぞ。 | YOU NEED TO BE STRONGER. | NECESITAS SER MAS FUERTE. |

### Conversación 0x03 · pantalla 0x0A

| Línea | Japonés | Inglés (Imanok) | Castellano (Imanok) |
|---|---|---|---|
| `p12:A87E` | きとうしの こもられている ちかしつのかぎは BIGSPIDERが のみこんだそうじゃ。 | BIGSPIDER ATE THE KEY FOR THE CELLAR WHERE THE SORCERER | LA LLAVE DEL SOTANO DONDE SE ESCONDE EL BRUJO·SE LA HA |
|  |  | HIDES. | COMIDO BIGSPIDER. |

### Conversación 0x04 · pantalla 0x0C

| Línea | Japonés | Inglés (Imanok) | Castellano (Imanok) |
|---|---|---|---|
| `p12:A8B4` | KONGさまは びっぐどりあんがだいすきじゃ。 | KONG LOVES DORIAN FRUIT | A KONG LE GUSTA MUCHO LA FRUTA DORIAN. |

### Conversación 0x05 · pantalla 0x01

| Línea | Japonés | Inglés (Imanok) | Castellano (Imanok) |
|---|---|---|---|
| `p12:A8D7` | GRASSOGREは いしのたまに よわいぞ。 | GRASSOGRES ARE VULNERABLE TO ROCKS. | LOS GRASSOGRE SON VULNERABLES A LAS ROCAS. |

### Conversación 0x06 · pantalla 0x11

| Línea | Japonés | Inglés (Imanok) | Castellano (Imanok) |
|---|---|---|---|
| `p12:A8FD` | たんけんたいが おきの しまに いったきり もどってこんのじゃ。 | A GROUP OF SOLDIERS WENT TO THE BEACH AND THEY HAVEN'T | TODAVIA NO HA VUELTO EL GRUPO DE SOLDADOS QUE FUE A LA PLAYA. |
| `p12:A922` | RED F、MANに くわれたんかのう。おまえさんも きいつけなされや。 | RETURNED YET. | QUIZA FUERON DEVORA-DOS POR LOS RED F.MAN.¡TEN CUIDADO! |
| `p12:A948` | あんひとらは なんだか わからん きかいを もっていっとった。 | MAYBE THEY WERE DEVOURED BY RED F. MAN.BE CAREFUL! | ELLOS TENIAN UNA EXTRAÑA MAQUINA. |
|  |  | THEY HAD A STRANGE DEVICE. |  |
| `p12:A96A` [03] | そいつは しゃべるきかい じゃったよ。 | IT WAS A TALKING MACHINE! | ERA UNA MAQUINA QUE HABLABA. |
| `p12:A981` | それじゃ それじゃ。 | GOODBYE. | ADIOS. |

### Conversación 0x07 · ninguna pantalla la pide

| Línea | Japonés | Inglés (Imanok) | Castellano (Imanok) |
|---|---|---|---|
|  |  | CAN YOU TAKE THIS LETTER TO KEMURA'S ELDER? |  |
| `p12:A993` [04] | これを けむらんにいる おじいさんに とどけてください。 / ▶ 1 うけとる  2 ことわる | ▶ 1 OK 2 NO | ¿PUEDES LLEVAR ESTA CARTA AL ANCIANO DE KEMURA?▶ 1 SI 2 NO |

### Conversación 0x08 · ninguna pantalla la pide

| Línea | Japonés | Inglés (Imanok) | Castellano (Imanok) |
|---|---|---|---|
| `p12:A9CD` | なにか たべるかい? | WHAT DO YOU WANT TO EAT? | ¿QUE QUIERES COMER? |
| `p12:A9DA` [05] | ▶1 ぼいるどふなむし 50GOLD 2 いのししのにく   100GOLD 3 たべない | ▶1 BOILED BUG 50G 2 WARTHOG MEAT 100G 3 DON'T EAT | ▶1 GUSANO HERVIDO 50 2 JABALI ASADO 100 3 NO COMER |
| `p12:AA0C` | おかねが たりません。 | NOT ENOUGH GOLD. | TE FALTA DINERO. |

### Conversación 0x09 · ninguna pantalla la pide

| Línea | Japonés | Inglés (Imanok) | Castellano (Imanok) |
|---|---|---|---|
| `p12:AA20` [06] | とまって いくかい? / 150 GOLDだよ。 / ▶ 1 とまる  2 とまらない | DO YOU WANT TO HAVE A REST? IT'S 150G ▶ 1 OK 2 NO | ¿QUIERES ALOJARTE? CUESTA 150 ▶ 1 SI 2 NO |
| `p12:AA0C` | おかねが たりません。 | NOT ENOUGH GOLD. | TE FALTA DINERO. |

### Conversación 0x0A · pantalla 0x15

| Línea | Japonés | Inglés (Imanok) | Castellano (Imanok) |
|---|---|---|---|
| `p12:AA50` | KONGさまのでんせつに よると、KONGさまの つめは RED F、MAN が のみこんだそうじゃ。 | ACCORDING TO THE LEGEND,RED F.MAN ATE KONG'S CLAW. | SEGUN LA LEYENDA,RED F.MAN SE COMIO LA GARRA DE KONG. |
| `p12:AA89` | KONGさまの つめに ついては    そうげんの ちかに いけば     わかるじゃろう。 | YOU'LL GET MORE INFORMATION ABOUT KONG'S CLAW AT THE | CONSEGUIRAS MAS INFORMACION SOBRE LA GARRA DE KONG EN |
|  |  | UNDERGROUND AREA. | LA ZONA SUBTERRANEA DE LA ISLA. |

### Conversación 0x0B · pantalla 0x18

| Línea | Japonés | Inglés (Imanok) | Castellano (Imanok) |
|---|---|---|---|
| `p12:AAC0` [07] | わしは きとうしじゃ。おまえに てむさの じゅもんを さずけよう。 | I'M THE SORCERER. I'LL GIVE YOU THE TEMUSA SPELL. | SOY EL BRUJO.TE ENSEÑARE EL HECHIZO TEMUSA. |

### Conversación 0x0C · ninguna pantalla la pide

| Línea | Japonés | Inglés (Imanok) | Castellano (Imanok) |
|---|---|---|---|
| `p12:AAEA` | ぬまちに はいるには みずげたが ひつようじゃ。 | YOU'LL NEED WATER SANDALS TO ACCESS TO THE CITY. | PARA ACCEDER A LA CIUDAD,HACEN FALTA SANDALIAS DE AGUA. |

### Conversación 0x0D · pantalla 0x12

| Línea | Japonés | Inglés (Imanok) | Castellano (Imanok) |
|---|---|---|---|
| `p12:AAEA` | ぬまちに はいるには みずげたが ひつようじゃ。 | YOU'LL NEED WATER SANDALS TO ACCESS TO THE CITY. | PARA ACCEDER A LA CIUDAD,HACEN FALTA SANDALIAS DE AGUA. |

### Conversación 0x0E · pantallas 0x10, 0x10

| Línea | Japonés | Inglés (Imanok) | Castellano (Imanok) |
|---|---|---|---|
| `p12:AB0C` | みずげたづくりの めいじんは もりの なかにすんでいる。 | THE ONE WHO MAKES THE WATER SANDALS LIVES IN THE FOREST. | EL QUE FABRICA LAS SANDALIAS DE AGUA VIVE EN EL BOSQUE. |

### Conversación 0x0F · pantalla 0x20

| Línea | Japonés | Inglés (Imanok) | Castellano (Imanok) |
|---|---|---|---|
| `p12:AB33` | てむさの じゅもんで いわを けせ。 | USE THE TEMUSA SPELL TO DESTROY THE ROCKS. | DESTRUYE ROCAS CON EL HECHIZO TEMUSA. |

### Conversación 0x10 · pantallas 0x1A, 0x1A

| Línea | Japonés | Inglés (Imanok) | Castellano (Imanok) |
|---|---|---|---|
| `p12:AB4D` | FIRETOTEMは ぶーめらんで たおせ。 | KILL FIRETOTEM WITH THE BOOMERANG. | CON EL BUMERAN PODRAS MATAR A LOS FIRETOTEM. |

### Conversación 0x11 · pantalla 0x0B

| Línea | Japonés | Inglés (Imanok) | Castellano (Imanok) |
|---|---|---|---|
| `p12:AB6B` | CLUBMANは RODで たおせ。 | KILL CLUBMAN WITH THE ROD. | CON EL PALO PODRAS MATAR A CLUBMAN. |

### Conversación 0x12 · pantalla 0x0E

| Línea | Japonés | Inglés (Imanok) | Castellano (Imanok) |
|---|---|---|---|
| `p12:AB88` [08] |  |  |  |
| `p12:AB8A` | きい きい くう きい | KI KI KU KI | KI KI KU KI |
| `p12:AB97` | おいらの ぼすは びっぐどりあんを もっているよ。 | OUR CHIEF'S GOT THE DORIAN FRUIT. | MI JEFE TIENE LA FRUTA DORIAN. |

### Conversación 0x13 · ninguna pantalla la pide

| Línea | Japonés | Inglés (Imanok) | Castellano (Imanok) |
|---|---|---|---|
| `p12:ABBE` [1C] |  |  |  |
| `p12:AB8A` | きい きい くう きい | KI KI KU KI | KI KI KU KI |
|  |  | THANKS FOR CURING ME.IN APPRECIATION OF THAT... |  |
| `p12:ABC0` [09] | びょうきを なおしてくれて ありがとう。おれいに びっぐどりあんを あげよう。 | TAKE THE DORIAN FRUIT. | GRACIAS POR CURARME. COMO AGRADECIMIENTO, TOMA LA FRUTA DORIAN |

### Conversación 0x14 · ninguna pantalla la pide

| Línea | Japonés | Inglés (Imanok) | Castellano (Imanok) |
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

### Conversación 0x15 · ninguna pantalla la pide

| Línea | Japonés | Inglés (Imanok) | Castellano (Imanok) |
|---|---|---|---|
| `p12:ACA8` [0B] | ほんを かっていくかい? / 200 GOLDだ。 / ▶ 1 かう    2 かわない | DO YOU WANT TO BUY A BOOK? IT'S 200G ▶ 1 OK 2 NO | ¿QUIERES COMPRAR UN LIBRO? CUESTA 200 ▶ 1 SI 2 NO |
| `p12:AA0C` | おかねが たりません。 | NOT ENOUGH GOLD. | TE FALTA DINERO. |

### Conversación 0x16 · ninguna pantalla la pide

| Línea | Japonés | Inglés (Imanok) | Castellano (Imanok) |
|---|---|---|---|
| `p12:ACDD` | みずげたを つくってやろうか? / 150 GOLDでいいよ | DO YOU WANT TO BUY A PAIR OF WATER SANDALS? IT'S 150G | ¿QUIERES COMPRAR UNAS SANDALIAS DE AGUA? CUESTAN 150 |
| `p12:ACFE` [0C] | ▶ 1 つくってもらう /   2 つくらない | ▶1 BUY 2 EXIT | ▶1 COMPRAR 2 SALIR |
| `p12:AA0C` | おかねが たりません。 | NOT ENOUGH GOLD. | TE FALTA DINERO. |
| `p12:AD15` | みずげたを つくるには ざいりょう が ひつようだ。 | I NEED PAPYRUS TO MAKE THEM. | NECESITO PAPIRO PARA PODER HACERLAS. |

### Conversación 0x17 · ninguna pantalla la pide

| Línea | Japonés | Inglés (Imanok) | Castellano (Imanok) |
|---|---|---|---|
| `p12:AD42` [0D] |  |  |  |
| `p12:AB8A` | きい きい くう きい | KI KI KU KI | KI KI KU KI |
| `p12:AD44` | にくを くれたら とおして あげるよ。 | IF YOU GIVE ME MEAT, I'LL LET YOU PASS. | SI ME DAS CARNE,TE DEJARE PASAR. |
| `p12:AD5A` [1E] | ▶1 にくを あげる。 2 あげない | ▶1 GIVE MEAT 2 EXIT | ▶1 DAR CARNE 2 SALIR |
| `p12:AD70` | にくが ありません。 | YOU DON'T HAVE MEAT. | NO TIENES CARNE. |

### Conversación 0x18 · ninguna pantalla la pide

| Línea | Japonés | Inglés (Imanok) | Castellano (Imanok) |
|---|---|---|---|
| `p12:AD81` | ぼすは びょうきだ。びょうきを なおすには やくそうが たくさん ひつようだ。 | I'M SICK.I NEED A LOT OF MEDICINAL HERBS TO CURE MYSELF | ESTOY ENFERMO.NECE-SITO MUCHAS HIERBAS PARA CURARME. |

### Conversación 0x19 · pantalla 0x2C

| Línea | Japonés | Inglés (Imanok) | Castellano (Imanok) |
|---|---|---|---|
| `p12:ADB4` [0E] | あなたは むしに かまれました。 | YOU'VE BEEN BITTEN BY THE BUGS | ¡TE HAN PICADO UNOS BICHOS! |

### Conversación 0x1A · ninguna pantalla la pide

| Línea | Japonés | Inglés (Imanok) | Castellano (Imanok) |
|---|---|---|---|
| `p12:ADD2` [0F] |  |  |  |
| `p12:AB8A` | きい きい くう きい | KI KI KU KI | KI KI KU KI |
| `p12:ADD4` | にくを くれたら とめてやるよ。 | IF YOU GIVE ME MEAT, I'LL LET YOU STAY. | SI ME DAS CARNE,TE DEJARE ALOJARTE. |
| `p12:ADE6` [1F] | ▶1 にくを あげる。 2 あげない | ▶1 GIVE MEAT 2 EXIT | ▶1 DAR CARNE 2 SALIR |
| `p12:AD70` | にくが ありません。 | YOU DON'T HAVE MEAT. | NO TIENES CARNE. |

### Conversación 0x1B · ninguna pantalla la pide

| Línea | Japonés | Inglés (Imanok) | Castellano (Imanok) |
|---|---|---|---|
| `p12:AE08` [10] |  |  |  |
| `p12:AB8A` | きい きい くう きい | KI KI KU KI | KI KI KU KI |
| `p12:AE0A` | にくを くれたら かぎを あげるよ。 | IF YOU GIVE ME MEAT, I'LL GIVE YOU AN IRON KEY. | SI ME DAS CARNE,TE DARE UNA LLAVE DE HIERRO. |
| `p12:AE20` [20] | ▶1 にくを あげる。 2 あげない | ▶1 GIVE MEAT 2 EXIT | ▶1 DAR CARNE 2 SALIR |
| `p12:AD70` | にくが ありません。 | YOU DON'T HAVE MEAT. | NO TIENES CARNE. |

### Conversación 0x1C · ninguna pantalla la pide

| Línea | Japonés | Inglés (Imanok) | Castellano (Imanok) |
|---|---|---|---|
| `p12:AE3E` | いらっしゃい。ごちゅうもんは? | WHAT DO YOU WANT TO EAT? | ¿QUE QUIERES COMER? |
| `p12:AE50` [11] | ▶1 やまひるの さしみ 50 GOLD 2 ぼいるどやまみみず /             100 GOLD | ▶1 LEECH SASHIMI 50G 2 BOILED MOUNTAIN WORM 100G | ▶1 SANGUIJUELAS 50 2 LOMBRIZ DE MONTA-ÑA HERVIDA 100 |
| `p12:AA0C` | おかねが たりません。 | NOT ENOUGH GOLD. | TE FALTA DINERO. |

### Conversación 0x1D · ninguna pantalla la pide

| Línea | Japonés | Inglés (Imanok) | Castellano (Imanok) |
|---|---|---|---|
| `p12:AE90` | わしらの しゅうちょうを たすけだしてくだされ。 | PLEASE,RESCUE OUR LEADER! | ¡POR FAVOR,RESCATA A NUESTRO LIDER! |
| `p12:AEAC` | しゅちょうは どろの かめんに つれさられたんじゃ。 | THE KONG'S ROAR HAS BEEN STOLEN. | NOS HAN ROBADO EL RUGIDO DE KONG. |

### Conversación 0x1E · ninguna pantalla la pide

| Línea | Japonés | Inglés (Imanok) | Castellano (Imanok) |
|---|---|---|---|
| `p12:AECE` | THE NASTYは まかぷらの じゅもんで たおせ。 | YOU NEED THE MAKAPORA SPELL TO KILL THE NASTY. | PARA MATAR A THE NASTY NECESITAS EL HECHIZO MAKAPORA. |

### Conversación 0x1F · ninguna pantalla la pide

| Línea | Japonés | Inglés (Imanok) | Castellano (Imanok) |
|---|---|---|---|
| `p12:AEF6` | みずげたを くれれば とめてやってもいいよ。 | IF YOU GIVE ME A PAIR OF W.SANDALS, I'LL LET YOU STAY. | SI ME DAS UNAS SAN-DALIAS DE AGUA,TE DEJO ALOJARTE. |
| `p12:AF11` [12] | ▶ 1 みずげたを あげる /   2 あげない | ▶1 GIVE SANDALS 2 EXIT | ▶1 DAR SANDALIAS 2 SALIR |
| `p12:AF2D` | みずげたが ありません。 | YOU DON'T HAVE WATER SANDALS. | NO TIENES SANDALIAS DE AGUA |

### Conversación 0x20 · pantalla 0x28

| Línea | Japonés | Inglés (Imanok) | Castellano (Imanok) |
|---|---|---|---|
| `p12:AF42` [13] | おお、KONGさまの おちからのひとつ KONGさまの きばを さずけよう。 | I'LL GIVE YOU KONG'S FANG AS A TALISMAN. | TE DOY EL COLMILLO DE KONG COMO TALIS-MAN. |

### Conversación 0x21 · ninguna pantalla la pide

| Línea | Japonés | Inglés (Imanok) | Castellano (Imanok) |
|---|---|---|---|


### Conversación 0x22 · pantallas 0x25, 0x26

| Línea | Japonés | Inglés (Imanok) | Castellano (Imanok) |
|---|---|---|---|
| `p12:AF72` | MUDARMORは らめらの じゅえきで たおせ。 | YOU NEED LAMELLA LIQUID TO KILL MUDARMOR. | PARA MATAR A MUDAR-MOR NECESITAS EL LIQUIDO DE LAMELA. |

### Conversación 0x23 · pantalla 0x2A

| Línea | Japonés | Inglés (Imanok) | Castellano (Imanok) |
|---|---|---|---|
| `p12:AF93` | TWINMIRESは あかいいわの ばんにんなり。 | THE TWINMIRES ARE THE GUARDIANS OF THE RED ROCK. | LOS TWINMIRES SON LOS GUARDIANES DE LA ROCA ROJA. |

### Conversación 0x24 · ninguna pantalla la pide

| Línea | Japonés | Inglés (Imanok) | Castellano (Imanok) |
|---|---|---|---|
| `p12:AFB5` | このさきに けむらんと よばれる しまがある。 | THERE'S AN ISLAND AHEAD. IT'S CALLED KEMURA. | MAS ADELANTE HAY UNA ISLA LLAMADA KEMURA. |
| `p12:AFD0` | けむらんは KONGさまの でんせつ が いきづいている しまじゃ。 | PEOPLE LIVING THERE KNOW ABOUT KONG'S LEGEND. | EN ESA ISLA CONOCEN LA LEYENDA DE KONG. |

### Conversación 0x25 · ninguna pantalla la pide

| Línea | Japonés | Inglés (Imanok) | Castellano (Imanok) |
|---|---|---|---|
| `p12:B000` | うみのいえに ようこそ。 / ごちゅうもんは? | WELCOME TO THE SEA HOUSE,WANT TO EAT? | BIENVENIDO A LA CASA DEL MAR.¿QUE DESEAS? |
| `p12:B018` [15] | ▶1 なめくじの しおから10GOLD 2 ふなむしの みそづけ50GOLD 3 たべない | ▶1 SALTY SLUG 10G 2 SEA LOUSE MISO 50G 3 EXIT | ▶1 BABOSA SALADA 10 2 PIOJOS AL MISO 50 3 NO COMER |
| `p12:AA0C` | おかねが たりません。 | NOT ENOUGH GOLD. | TE FALTA DINERO. |

### Conversación 0x26 · pantalla 0x43

| Línea | Japonés | Inglés (Imanok) | Castellano (Imanok) |
|---|---|---|---|
| `p12:B054` [16] |  |  |  |
| `p12:B056` | わしは むすこからの てがみを ずっと まっておるんじゃ。 | I'M WAITING FOR A LETTER FROM MY SON. | ESTOY ESPERANDO UNA CARTA DE MI HIJO. |
| `p12:B078` | わざわざ てがみを とどけてくれて ありがとうございます。 | THANKS FOR BRINGING ME THIS LETTER. | GRACIAS POR TRAERME LA CARTA. |
| `p12:B09E` | おれいに KONGさまの ひとみを さしあげます。 | ACCEPT KONG'S EYE AS A GIFT. | EN AGRADECIMIENTO TE DARE EL OJO DE KONG. |

### Conversación 0x27 · pantalla 0x46

| Línea | Japonés | Inglés (Imanok) | Castellano (Imanok) |
|---|---|---|---|
| `p12:B0BE` | たんけんたいの のこしていった てんとのなかに なんだか わからん きかいが あったそうじゃ。 | ONE OF THE SOLDIERS LEFT AN UNKNOWN MACHINE. | UNO DE LOS SOLDADOS DEJO UNA EXTRAÑA MA-QUINA QUE NO CONOZCO |

### Conversación 0x28 · pantalla 0x4A

| Línea | Japonés | Inglés (Imanok) | Castellano (Imanok) |
|---|---|---|---|
| `p12:B0FA` [17] |  |  |  |
| `p12:B0FC` | むせんきが あります。 | THERE'S A RADIO! | ¡HAY UNA RADIO! |
| `p12:B10A` | むせんきは こわれている ようです。 | I THINK IT'S BROKEN. | CREO QUE ESTA ROTA. |

### Conversación 0x29 · pantallas 0x3D, 0x3D

| Línea | Japonés | Inglés (Imanok) | Castellano (Imanok) |
|---|---|---|---|
| `p12:B123` | KONGの さけびを とるには らくな の たまが ひつようだ。 | YOU NEED LAKUNA'S ORB TO GET KONG'S ROAR. | PARA CONSEGUIR EL RUGIDO DE KONG, NECESITAS LA BOLA |
|  |  |  | DE LAKUNA. |

### Conversación 0x2A · pantallas 0x4F, 0x50

| Línea | Japonés | Inglés (Imanok) | Castellano (Imanok) |
|---|---|---|---|
| `p12:B14C` | きいろい いわは KONGさまの ちからでなければ おすことができない。 | ONLY KONG'S STRENGTH CAN MOVE THE YELLOW ROCK. | SOLO LA FUERZA DE KONG PUEDE MOVER LA ROCA AMARILLA. |

### Conversación 0x2B · pantalla 0x51

| Línea | Japonés | Inglés (Imanok) | Castellano (Imanok) |
|---|---|---|---|
| `p12:B180` | こわれたものなら なんでも しゅうりするぜ。 / ひとつ 350 GOLD でな。 | I REPAIR ANY BROKEN ITEM FOR 350G | ARREGLO CUALQUIER COSA ROTA POR 350. |
| `p12:B1AC` [18] | ▶ 1、SHOTー1 /   2、SHOTー2  3、おわり | ▶1 WEAPON 2 ITEM 3 NOTHING | ▶1 ARMA 2 OBJETO 3 SALIR |
| `p12:B1CA` | ほかには | ANYTHING ELSE? | ¿ALGO MAS? |
| `p12:A811` | かねが たりねえぞ。 | YOUR RADIO IS NOW REPAIRED. | TU RADIO YA ESTA ARREGLADA. |
|  |  | NOT ENOUGH GOLD. | NO TIENES SUFICIENTE |

### Conversación 0x2C · pantallas 0x60, 0x60

| Línea | Japonés | Inglés (Imanok) | Castellano (Imanok) |
|---|---|---|---|
| `p12:B1D4` [19] | KONGさまに さしあげるものを てーぶるの うえに おきなさい。 | PUT YOUR OFFER TO KONG ON THE ALTAR. | PON LAS OFRENDAS A KONG SOBRE EL ALTAR. |

### Conversación 0x2D · pantalla 0x62

| Línea | Japonés | Inglés (Imanok) | Castellano (Imanok) |
|---|---|---|---|
| `p12:B201` | KONGさまの でんせつに よると / どうくつの なかに さいている  / きょだいな はなは、 | ACCORDING TO KONG'S LEGEND, YOU NEED THE YELLOW STONES | SEGUN LA LEYENDA DE KONG,PARA ELIMINAR LA FLOR GIGANTE QUE |
| `p12:B233` | きいろい いしで なければ けすことができないらしい。 | TO KILL THE BIG FLOWER GROWING AT THE CAVE. | CRECE EN LA CUEVA, NECESITAS LAS PIEDRAS DORADAS. |
| `p12:B254` | よく おぼえておくが よい。 | DON'T FORGET IT! | ¡RECUERDALO BIEN! |

### Conversación 0x2E · pantalla 0x66

| Línea | Japonés | Inglés (Imanok) | Castellano (Imanok) |
|---|---|---|---|
| `p12:B26A` | どうくつの なかの じわれを うめるには KONGさまの なみだがひつようじゃ。 | YOU NEED KONG'S TEAR TO FILL UP THE GAP AT THE CAVE. | PARA TAPAR LA GRIETA EN LA CUEVA,HACE FALTA LA LAGRIMA DE |
|  |  |  | KONG. |

### Conversación 0x2F · pantalla 0x68

| Línea | Japonés | Inglés (Imanok) | Castellano (Imanok) |
|---|---|---|---|
| `p12:B29F` | この とびらは しんせいなる いのりの とびら。 | THIS IS THE HOLY DOOR OF PRAY. | ESTA ES LA SAGRADA PUERTA DE LA ORACION |
| `p12:B2BB` | KONGさまの きばが なければ いかなるものも あけることはできない。 | YOU NEED KONG'S FANG TO OPEN THE DOOR. | PARA ABRIR LA PUERTA NECESITAS EL COLMI-LLO DE KONG. |

### Conversación 0x30 · ninguna pantalla la pide

| Línea | Japonés | Inglés (Imanok) | Castellano (Imanok) |
|---|---|---|---|
| `p12:B2E9` [1A] | どうくつの そとに でたいか? / ▶ 1 はい  2 いいえ | DO YOU WANT TO EXIT THE CAVE? ▶ 1 OK 2 NO | ¿QUIERES SALIR DE LA CUEVA? ▶ 1 SI 2 NO |

### Conversación 0x31 · pantalla 0x6F

| Línea | Japonés | Inglés (Imanok) | Castellano (Imanok) |
|---|---|---|---|
|  |  | I'M THE LEADER. THANKS FOR SAVING ME. | YO SOY EL LIDER. GRACIAS POR SALVARME |
| `p12:B30E` [1B] | わしは しゅうちょうじゃ。 ありがとう、よく たすけてくれた。おれいに まかぷらの じゅもんを さずけよう。 | I'LL GIVE YOU THE MAKAPORA SPELL. | EN AGRADECIMIENTO TE DARE EL HECHIZO DE MAKAPORA. |

### Conversación 0x32 · pantalla 0x70

| Línea | Japonés | Inglés (Imanok) | Castellano (Imanok) |
|---|---|---|---|
| `p12:B34F` | しろいけものは ひかりの けんで たおせ。 | KILL THE WHITE MONSTERS WITH THE LIGHT SWORD | MATA A LOS MONSTRUOS BLANCOS CON LA ESPADA DE LUZ. |

### Conversación 0x33 · pantalla 0x71

| Línea | Japonés | Inglés (Imanok) | Castellano (Imanok) |
|---|---|---|---|
| `p12:B36B` | KONGさまの つめは すべての のろいを うちけす ただ ひとつの ぶきじゃ。 | KONG'S CLAW IS THE ONLY WEAPON WHICH NEUTRALIZES ANY | LA GARRA DE KONG ES LA UNICA ARMA QUE NEUTRALIZA |
|  |  | CURSE. | CUALQUIER MALDICION. |

### Conversación 0x34 · ninguna pantalla la pide

| Línea | Japonés | Inglés (Imanok) | Castellano (Imanok) |
|---|---|---|---|
| `p12:B39D` | この はこを あけるには あぐのすの かぎが ひつようなり。 | YOU NEED THE AGNOS KEY TO OPEN THIS CHEST. | PARA ABRIR ESTE COFRE NECESITAS LA LLAVE DE AGNOS. |

### Conversación 0x35 · pantalla 0x22

| Línea | Japonés | Inglés (Imanok) | Castellano (Imanok) |
|---|---|---|---|
| `p12:B3C4` | からすは かならず たおせ。 | KILL THE CROWS WITHOUT FAILING. | MATA A LOS CUERVOS SIN FALTA. |

### Conversación 0x36 · pantalla 0x3A

| Línea | Japonés | Inglés (Imanok) | Castellano (Imanok) |
|---|---|---|---|
| `p12:B3D9` | しんでんには KONGの さけびが かくされている。 | KONG'S ROAR IS HIDDEN IN THE TEMPLE. | EN EL TEMPLO SE HAYA ESCONDIDO EL RUGIDO DE KONG. |

### Conversación 0x37 · ninguna pantalla la pide

| Línea | Japonés | Inglés (Imanok) | Castellano (Imanok) |
|---|---|---|---|
| `p12:B402` | いまから HELICOPTER と つうしん します。 | LET'S CALL THE HELICOPTER,NOW. | AHORA VAMOS A COMU-NICARNOS CON EL HELICOPTERO. |
| `p12:B41F` | こちらARMY こちらARMY  | THIS IS THE ARMY! THIS IS THE ARMY! | ¡AQUI EL EJERCITO, AQUI EL EJERCITO! |
| `p12:B431` | まだ LADY KONGを はっけん できないのか | HAVEN'T YOU FOUND LADY KONG YET? | ¿TODAVIA NO HAS ENCONTRADO A LADY KONG? |
| `p12:B44E` | はやくしないと KING KONGが しんでしまうぞ。 | KING KONG IS GOING TO DIE. | KING KONG ESTA A PUNTO DE MORIR. |

### Conversación 0x38 · ninguna pantalla la pide

| Línea | Japonés | Inglés (Imanok) | Castellano (Imanok) |
|---|---|---|---|
| `p12:B402` | いまから HELICOPTER と つうしん します。 | LET'S CALL THE HELICOPTER,NOW. | AHORA VAMOS A COMU-NICARNOS CON EL HELICOPTERO. |
| `p12:B47A` | ごくろう MITCHEL。 / よくやったぞ。 | YOU'VE DONE A GOOD JOB,MITCHEL | HAS HECHO UN BUEN TRABAJO,MITCHEL. |
| `p12:B493` | すぐに そちらに むかう。 | WE'RE COMING RIGHT NOW. | VAMOS HACIA ALLA ENSEGUIDA. |
| `p12:B4A3` [21] | これで KING KONGも たすかるだろう。 | KING KONG WILL BE SAVED. | KING KONG SE SALVARA. |
| `p12:B4BE` [22] | HELICOPTERがやってきました。 | THE HELICOPTER IS LANDING. | HA LLEGADO EL HELICOPTERO. |

## Los objetos

36 nombres (`p15:A069` + 2 × n), que escribe `p00:4423`; detrás, `p00:42F6` pone «を とりました。» (`p15:A062`). En los parches, la tabla está en `p06:B525` (inglés) y `p06:B526` (castellano).

| N.º | Japonés | Inglés (Imanok) | Castellano (Imanok) |
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
| al coger `p15:A062` | を とりました。 | TAKEN | OBTIENES |

## Los rótulos

Posición y letras, con 0xFE delante de cada trozo. Los del marcador, la ventana de los objetos y «みずげた» (los zuecos, que `p12:BD73` escribe si se tienen). En el original ya están en inglés, salvo el último.

| Dónde | Lo pide | Original | Inglés (Imanok) | Castellano (Imanok) |
|---|---|---|---|---|
| `p01:6302` | `p01:62DE` | MITCHEL / SHOT1 / SHOT2 | MITCHEL / WEAPON / ITEM | MITCHEL / ARMA / OBJETO |
| `p01:631C` | `p01:62C3` | DAYS / MP / GOLD / LIFE / EXP / LEVEL | DAYS / MAGIC / GOLD / LIFE / EXP / LEVEL | DIAS / MAGIA / ORO / VIDA / EXP / NIVEL |
| `p12:BA93` | `p12:BA7B` | SHOT 2 / MITCHEL / SPEED | ITEMS / MITCHEL / SPEED | OBJETOS / MITCHEL / VELOCIDAD |
| `p12:BAAE` | `p12:BA81, p12:BC14` | SHOT 1 | WEAPONS | ARMAS |
| `p12:BD84` | `p12:BD73` | みずげた | W.SANDALS | SANDALIAS |

## El final

Los nueve textos que cargan las escenas de los tres finales (`p06:A8DF`-`p06:AAAD`) y THE END (`p06:A711`), letra a letra cada 4 cuadros (`p06:AADD`); 0xFE salta de renglón. En los parches, las mismas cargas en las mismas direcciones (la última en `p06:AAB0`).

| Texto | Lo pide | Japonés | Inglés (Imanok) | Castellano (Imanok) |
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

En los dos parches el cuarto texto sale cortado: detrás de su 0xFF viene el resto, «BUT THE ADVENTURE HAS BEEN / WORTHY.THANKS MITCHEL.» en inglés y «KONG,PERO LA AVENTURA / HA MERECIDO LA PENA.» en castellano, y no lo lee nadie. La rutina que escribe (`p06:AADD`) se para en el 0xFF y los pasos de la escena son los del original, que solo cambian las direcciones de los textos. Visto en openMSX con los dos parches (`tools/lanza_final.sh`): el texto se queda en su primer renglón y a los pocos segundos sale el final, con el puntero del texto sin pasar del 0xFF. Es un byte, y lo arregla [el parche](EL-PARCHE.md) de aquí.

## Los enemigos

68 nombres (`p15:BA76` + 2 × tipo), que pinta `p01:61DD`. Ya están en inglés en el original y los parches los dejan igual (`p15:B96C`, los 68 iguales).

| Tipo | Nombre | Dónde |
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

## Los créditos

Los del título (`p06:BAE7`, `p06:BAD5`), en inglés. Los parches traen otro título y no los llevan.

> ▶KONAMI 1986 / SHOCHIKUーFUJI CO.、LTD. / ▶1986 DE LAURENTIIS / ENTERTAINMENT GROUP INC. / ALL RIGHTS RESERVED.
