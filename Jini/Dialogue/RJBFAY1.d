
//  Party Banters with Fay - TotSC

//  Imoen #1 - Will-O-The_Wisp

CHAIN IF WEIGHT #-10 ~G("RJFayBanter",1)
          Global("RJFAIMB1","LOCALS",0)
          InParty("%rj_imoen%")
          See("%rj_imoen%")
          !StateCheck("%rj_imoen%",CD_STATE_NOTVALID)~ THEN RJFAY1 RJFAIMB1
@21 DO ~SetGlobal("RJFayBanter","GLOBAL",0) SetGlobal("RJFAIMB1","LOCALS",1)~
== IMOEN2%rj_eet_suff% @0
== RJFAY1 @1
== IMOEN2%rj_eet_suff% @2
== RJFAY1 @3
== IMOEN2%rj_eet_suff% @4 = @5 = @6
== RJFAY1 @7 = @8 = @9 = @10 = @11 = @12
== IMOEN2%rj_eet_suff% @13 = @14
== RJFAY1 @15 = @16
== IMOEN2%rj_eet_suff% @17
== RJFAY1 @18
== IMOEN2%rj_eet_suff% @19
== RJFAY1 @20
END
IF ~~ THEN EXIT

//  Imoen #2 - Hanky Panky

CHAIN IF WEIGHT #-10 ~G("RJFayBanter",1)
          Global("RJFAIMB2","LOCALS",0)
          !G("RJFayBig",0)
          InParty("%rj_imoen%")
          See("%rj_imoen%")
          !StateCheck("%rj_imoen%",CD_STATE_NOTVALID)~ THEN RJFAY1 RJFAIMB2
@50 DO ~SetGlobal("RJFayBanter","GLOBAL",0) SetGlobal("RJFAIMB2","LOCALS",1)~
== IMOEN2%rj_eet_suff% @30 = @31
== RJFAY1 @32
== IMOEN2%rj_eet_suff% @33 = @34 = @35
== RJFAY1 @36 = @37 = @38
== IMOEN2%rj_eet_suff% @39 = @40 = @41 = @42
== RJFAY1 @43 = @44 = @45
== IMOEN2%rj_eet_suff% @46 = @47
== RJFAY1 @48
== IMOEN2%rj_eet_suff% @49
END
IF ~~ THEN EXIT

//  Sirene #1 - To Fight or not to Fight

CHAIN IF WEIGHT #-10 ~G("RJFayBanter",1)
          Global("RJFASIB1","LOCALS",0)
          InParty("C0Sirene")
          See("C0Sirene")
          !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN RJFAY1 RJFASIB1
@350 DO ~SetGlobal("RJFayBanter","GLOBAL",0) SetGlobal("RJFASIB1","LOCALS",1)~
== RJFAY1 @351
== C0SIRENJ @352
== RJFAY1 @353 = @354 = @355
== C0SIRENJ @356
== RJFAY1 @357
== C0SIRENJ @358
== RJFAY1 @359
== C0SIRENJ @360
== RJFAY1 @361 = @362
== C0SIRENJ @363
== RJFAY1 @364 = @365
END
IF ~~ THEN EXIT

//  Isra #1 - To Sack or not to Sack

CHAIN IF WEIGHT #-10 ~G("RJFayBanter",1)
          Global("RJFAISB1","LOCALS",0)
          InParty("rh#isra")
          See("rh#isra")
          !StateCheck("rh#isra",CD_STATE_NOTVALID)~ THEN RJFAY1 RJFAISB1
@400 DO ~SetGlobal("RJFayBanter","GLOBAL",0) SetGlobal("RJFAISB1","LOCALS",1)~
== RJFAY1 @401 = @402
== RH#ISRAJ @403
== RJFAY1 @404
== RH#ISRAJ @405
== RJFAY1 @406
== RH#ISRAJ @407 = @408
== RJFAY1 @409 = @410
== RH#ISRAJ @411 = @412
== RJFAY1 @413
== RH#ISRAJ @414
== RJFAY1 @415
END
IF ~~ THEN EXIT

//  Neera #1 - Magic

CHAIN IF WEIGHT #-10 ~G("RJFayBanter",1)
          Global("RJFANEB1","LOCALS",0)
          InParty("Neera")
          See("Neera")
          !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN RJFAY1 RJFANEB1
@77 DO ~SetGlobal("RJFayBanter","GLOBAL",0) SetGlobal("RJFANEB1","LOCALS",1)~
== RJFAY1 @60
== NEERAJ%rj_eet_suff% @61
== RJFAY1 @62
== NEERAJ%rj_eet_suff% @63
== RJFAY1 @64 = @65 = @66
== NEERAJ%rj_eet_suff% @67 = @68 = @69 = @70
== RJFAY1 @71 = @72 = @73
== RJFAY1 IF ~InParty("%rj_imoen%")~ THEN @74 = @75
== NEERAJ%rj_eet_suff% IF ~InParty("%rj_imoen%")~ THEN @76
END
IF ~~ THEN EXIT

//  Branwen #1 - Running Away

CHAIN IF WEIGHT #-10 ~G("RJFayBanter",1)
          Global("RJFABRB1","LOCALS",0)
          InParty("Branwen")
          See("Branwen")
          !StateCheck("Branwen",CD_STATE_NOTVALID)~ THEN RJFAY1 RJFABRB1
@100 DO ~SetGlobal("RJFayBanter","GLOBAL",0) SetGlobal("RJFABRB1","LOCALS",1)~
== BRANWJ @101 = @102 = @103
== RJFAY1 @104 = @105 = @106
== BRANWJ @107 = @108
== RJFAY1 @109 = @110
== BRANWJ @111 = @112 = @113
== RJFAY1 @114 = @115 = @116 = @117
== BRANWJ @118
== RJFAY1 @119
END
IF ~~ THEN EXIT

//  Viconia #1 - Exiles

CHAIN IF WEIGHT #-10 ~G("RJFayBanter",1)
          Global("RJFAVIB1","LOCALS",0)
          InParty("Viconia")
          See("Viconia")
          !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN RJFAY1 RJFAVIB1
@130 DO ~SetGlobal("RJFayBanter","GLOBAL",0) SetGlobal("RJFAVIB1","LOCALS",1)~
== VICONJ @131 = @132 = @133
== RJFAY1 @134 = @135
== VICONJ @136 = @137
== RJFAY1 @138 = @139
== VICONJ @140
== RJFAY1 @141 = @142
== VICONJ @143
END
IF ~~ THEN EXIT

//  Safana #1 - Pocket Picking

CHAIN IF WEIGHT #-10 ~G("RJFayBanter",1)
          Global("RJFASAB1","LOCALS",0)
          InParty("Safana")
          See("Safana")
          !StateCheck("Safana",CD_STATE_NOTVALID)~ THEN RJFAY1 RJFASAB1
@150 DO ~SetGlobal("RJFayBanter","GLOBAL",0) SetGlobal("RJFASAB1","LOCALS",1)~
== RJFAY1 @151
== SAFANJ @152
== RJFAY1 @153 = @154 = @155 = @156 = @157
== SAFANJ @158 = @159
== RJFAY1 @160 = @161
END
IF ~~ THEN EXIT

//  Skie #1 - Fashion

CHAIN IF WEIGHT #-10 ~G("RJFayBanter",1)
          Global("RJFASKB1","LOCALS",0)
          InParty("Skie")
          See("Skie")
          !StateCheck("Skie",CD_STATE_NOTVALID)~ THEN RJFAY1 RJFASKB1
@170 DO ~SetGlobal("RJFayBanter","GLOBAL",0) SetGlobal("RJFASKB1","LOCALS",1)~
== SKIEJ @171
== RJFAY1 @172 = @173
== SKIEJ @174
== RJFAY1 @175 = @176
== SKIEJ @177
== RJFAY1 @178 = @179
== SKIEJ @180
== RJFAY1 @181 = @182
== SKIEJ @183
== RJFAY1 @184
END
IF ~~ THEN EXIT

//  Alora #1 - Size

CHAIN IF WEIGHT #-10 ~G("RJFayBanter",1)
          Global("RJFAALB1","LOCALS",0)
          InParty("Alora")
          See("Alora")
          !StateCheck("Alora",CD_STATE_NOTVALID)~ THEN RJFAY1 RJFAALB1
@190 DO ~SetGlobal("RJFayBanter","GLOBAL",0) SetGlobal("RJFAALB1","LOCALS",1)~
== ALORAJ @191
== RJFAY1 @192
== ALORAJ @193
== RJFAY1 @194
== ALORAJ @195
== RJFAY1 @196
== ALORAJ @197 = @198
== RJFAY1 @199
END
IF ~~ THEN EXIT

//  Dynaheir #1 - Snobbery

CHAIN IF WEIGHT #-10 ~G("RJFayBanter",1)
          Global("RJFADYB1","LOCALS",0)
          InParty("Dynaheir")
          See("Dynaheir")
          !StateCheck("Dynaheir",CD_STATE_NOTVALID)~ THEN RJFAY1 RJFADYB1
@210 DO ~SetGlobal("RJFayBanter","GLOBAL",0) SetGlobal("RJFADYB1","LOCALS",1)~
== DYNAHJ @211
== RJFAY1 @212 = @213 = @214 = @215
== DYNAHJ @216 = @217
END
IF ~~ THEN EXIT

//  Minsc #1 - Boo

CHAIN IF WEIGHT #-10 ~G("RJFayBanter",1)
          Global("RJFAMIB1","LOCALS",0)
          InParty("Minsc")
          See("Minsc")
          !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN RJFAY1 RJFAMIB1
@230 DO ~SetGlobal("RJFayBanter","GLOBAL",0) SetGlobal("RJFAMIB1","LOCALS",1)~
== RJFAY1 @231
== MINSCJ%rj_eet_suff% @232
== MINSCJ%rj_eet_suff% IF ~InParty("%rj_imoen%")~ THEN @233 = @234
END
IF ~~ THEN EXIT

//  Xan #1 - Doomed

CHAIN IF WEIGHT #-10 ~G("RJFayBanter",1)
          Global("RJFAXAB1","LOCALS",0)
          InParty("Xan")
          See("Xan")
          !StateCheck("Xan",CD_STATE_NOTVALID)~ THEN RJFAY1 RJFAXAB1
@250 DO ~SetGlobal("RJFayBanter","GLOBAL",0) SetGlobal("RJFAXAB1","LOCALS",1)~
== XANJ @251
== RJFAY1 @252
== XANJ @253 = @254
== RJFAY1 @255
== XANJ @256
== RJFAY1 @257
END
IF ~~ THEN EXIT

//  Jaheira #1 - Balance

CHAIN IF WEIGHT #-10 ~G("RJFayBanter",1)
          Global("RJFAJAB1","LOCALS",0)
          InParty("Jaheira")
          See("Jaheira")
          !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN RJFAY1 RJFAJAB1
@270 DO ~SetGlobal("RJFayBanter","GLOBAL",0) SetGlobal("RJFAJAB1","LOCALS",1)~
== JAHEIJ @271 = @272
== RJFAY1 @273 = @274 = @275
== JAHEIJ @276
== RJFAY1 @277 = @278 = @279
== JAHEIJ @280
== RJFAY1 @281
END
IF ~~ THEN EXIT

//  Party Banters with Fay - SoD

//  Neera #1 - SoD - Sitting on a Shoulder

CHAIN IF WEIGHT #-5 ~G("RJFayBanter",2)
          Global("RJFANEB5","LOCALS",0)
          InParty("Neera")
          See("Neera")
          !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN RJFAY1 RJFANEB5
@80 DO ~SetGlobal("RJFayBanter","GLOBAL",0) SetGlobal("RJFANEB5","LOCALS",1)~
== BDNEERAJ @81 = @82 = @83
== RJFAY1 @84
== BDNEERAJ @85
== RJFAY1 @86 = @87 = @88 = @89
== BDNEERAJ @90
== RJFAY1 @91
== BDNEERAJ @92
END
IF ~~ THEN EXIT

//  Corwin #1 - SoD - Child

CHAIN IF WEIGHT #-5 ~G("RJFayBanter",2)
          Global("RJFACOB5","LOCALS",0)
          InParty("Corwin")
          See("Corwin")
          !StateCheck("Corwin",CD_STATE_NOTVALID)~ THEN RJFAY1 RJFACOB5
@290 DO ~SetGlobal("RJFayBanter","GLOBAL",0) SetGlobal("RJFACOB5","LOCALS",1)~
== BDCORWIJ @291 = @292 = @293 = @294
== RJFAY1 @295 = @296 = @297
== BDCORWIJ @298
== RJFAY1 @299
== BDCORWIJ @300
END
IF ~~ THEN EXIT

//  Viconia #1 - SoD - The Sack vs Dignity

CHAIN IF WEIGHT #-5 ~G("RJFayBanter",2)
          Global("RJFAVIB5","LOCALS",0)
          InParty("Viconia")
          See("Viconia")
          !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN RJFAY1 RJFAVIB5
@310 DO ~SetGlobal("RJFayBanter","GLOBAL",0) SetGlobal("RJFAVIB5","LOCALS",1)~
== BDVICONJ @311 = @312
== RJFAY1 @313 = @314
== BDVICONJ @315 = @316
== RJFAY1 @317 = @318
END
IF ~~ THEN EXIT

//  Safana #1 - SoD - Loot

CHAIN IF WEIGHT #-5 ~G("RJFayBanter",2)
          Global("RJFASAB5","LOCALS",0)
          InParty("Safana")
          See("Safana")
          !StateCheck("Safana",CD_STATE_NOTVALID)~ THEN RJFAY1 RJFASAB5
@330 DO ~SetGlobal("RJFayBanter","GLOBAL",0) SetGlobal("RJFASAB5","LOCALS",1)~
== BDSAFANJ @331
== RJFAY1 @332
== BDSAFANJ @333
== RJFAY1 @334 = @335
== BDSAFANJ @336
== RJFAY1 @337 = @338
END
IF ~~ THEN EXIT

//  Sirene #1 - SoD - The Apology

CHAIN IF WEIGHT #-5 ~G("RJFayBanter",2)
          Global("RJFASIB5","LOCALS",0)
          InParty("C0Sirene")
          See("C0Sirene")
          !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN RJFAY1 RJFASIB5
@370 DO ~SetGlobal("RJFayBanter","GLOBAL",0) SetGlobal("RJFASIB5","LOCALS",1)~
== RJFAY1 @371
== C02SIREJ @372 = @373 = @374
== RJFAY1 @375 = @376
== C02SIREJ @377
END
IF ~~ THEN EXIT
