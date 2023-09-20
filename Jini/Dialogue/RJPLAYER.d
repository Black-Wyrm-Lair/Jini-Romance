
// Player1's Dialog File

BEGIN RJPLAYER

//  Trying to Give Jini the 1st Rub

IF ~G("RJLamp",1) G("Chapter",0)~ THEN BEGIN tryrub
  SAY @402
IF ~G("RJCursed",0)~ THEN REPLY @403 DO ~SetGlobal("RJCursed","GLOBAL",1)
                                         SetGlobal("RJLamp","GLOBAL",0)~ EXIT
IF ~G("RJCursed",1)~ THEN REPLY @404 DO ~SetGlobal("RJLamp","GLOBAL",0)~ EXIT
END

//  Rub but Jini is out

IF ~G("RJLamp",9)~ THEN BEGIN therubmsg
  SAY @48
IF ~~ THEN REPLY @49 DO ~SetGlobal("RJLamp","GLOBAL",0)
                         SetGlobal("RJiniTalk","GLOBAL",0)
                         SetGlobal("RJRUB","GLOBAL",0)~ EXIT
END

// Dream Doors

// After Trias

IF ~G("RJiniRescue",6)
    AreaCheck("RJP13G")~ THEN BEGIN RJDD02
  SAY @1011
IF ~~ THEN DO ~IncrementGlobal("RJiniRescue","GLOBAL",1)
               TriggerActivation("Exit2",FALSE)
               TriggerActivation("Exit2a",TRUE)~ EXIT
END

// After Ravel

IF ~G("RJiniRescue",9)
    AreaCheck("RJP13G")~ THEN BEGIN RJDD03
  SAY @1012
IF ~~ THEN DO ~IncrementGlobal("RJiniRescue","GLOBAL",1)
               TriggerActivation("Exit3",FALSE)
               TriggerActivation("Exit3a",TRUE)~ EXIT
END

// After Maril

IF ~G("RJiniRescue",12)
    AreaCheck("RJP13G")~ THEN BEGIN RJDD04
  SAY @1013
IF ~~ THEN DO ~IncrementGlobal("RJiniRescue","GLOBAL",1)
               TriggerActivation("Exit4",FALSE)
               TriggerActivation("Exit4a",TRUE)~ EXIT
END

// After Ireni

IF ~G("RJINV204",1)
    AreaCheck("RJP204")~ THEN BEGIN RJDD05
  SAY @1018
IF ~~ THEN DO ~SetGlobal("RJINV204","GLOBAL",2)
               ActionOverride("RJ1INV",DestroySelf())
               StartCutSceneMode()
               StartCutScene("RJRESRET")~ EXIT
END

// Before Maril

IF ~G("RJINV705",1)
    AreaCheck("RJP705")~ THEN BEGIN RJDD06
  SAY @1019 = @1020
IF ~~ THEN DO ~SetGlobal("RJINV705","GLOBAL",2)
               DestroyItem("RJSCRLM")
               StartCutSceneMode()
               StartCutScene("RJMA2")~ EXIT
END

// Initial Ireni

CHAIN IF ~G("RJiniRescue",3)
          AreaCheck("RJP13G")~ THEN RJPLAYER RJDD01
@1000 DO ~IncrementGlobal("RJiniRescue","GLOBAL",1)
          TriggerActivation("Exit1",FALSE)
          TriggerActivation("Exit1a",TRUE)~
== RJIRENI @1001 = @1002 = @1003 = @1004 = @1005
== RJINII1 @1014
== RJPLAYER @1015
== RJINII1 @1016
== RJPLAYER @1017 = @1006
== RJIRENI @1007 = @1008 = @1022 = @1009
END
++ @1021 DO ~StartCutSceneMode()
             StartCutScene("RJIR1")~ EXIT

// With Maril

CHAIN IF ~G("RJINV705",2)~ THEN RJPLAYER RJDD07
@1030 DO ~IncrementGlobal("RJiniRescue","GLOBAL",1)
       SetGlobal("RJINV705","GLOBAL",3)
       TriggerActivation("to0700",TRUE)~
== RJMARIL @1031 = @1032 = @1033 = @1034
== RJPLAYER @1035
== RJMARIL @1036 = @1037
== RJPLAYER @1038 = @1039 = @1040
== RJMARIL @1041
== RJPLAYER @1042 = @1043
== RJMARIL @1044 = @1045 = @1046 = @1047 = @1048
END
++ @1050 DO ~StartCutSceneMode()
             StartCutScene("RJMA1")~ EXIT

// Meeting Gregore and Rjali.

CHAIN IF ~G("Rjali1Met",1)~ THEN RJPLAYER P1MeetRjali
@0 DO ~SetGlobal("Rjali1Met","GLOBAL",2)~
== RJGREG @1 = @2
== RJALIY @3
== RJGREG @4
== RJALIY @5
== RJALIY IF ~G("RjaliLamp",1)~ THEN @6 DO ~GiveItemCreate("RJ1LAMP",Player1,100,0,0)~
== RJPLAYER IF ~G("RjaliLamp",1)~ THEN @7
== RJALIY IF ~G("RjaliLamp",1)~ THEN @8
== RJPLAYER IF ~G("RjaliLamp",1)~ THEN @9 DO ~FillSlot(SLOT_MISC2) Rest()~
== RJPLAYER @10 = @11
== RJGREG @12
== RJALIY @13
END
+ ~G("RjaliLamp",1)~ + @14 DO ~AddJournalEntry(@6000,USER)
                               ActionOverride("RJGreg",EscapeAreaDestroy(5))
                               ActionOverride("RjaliY",EscapeAreaDestroy(5))~ EXIT

+ ~G("RjaliLamp",0)~ + @18 DO ~
           ActionOverride("RJGreg",EscapeAreaDestroy(5))
           ActionOverride("RjaliY",EscapeAreaDestroy(5))~ EXIT

// Imoen wants to know where the equipment comes from.

CHAIN IF ~G("RJIMTK1",1)~ THEN RJPLAYER P1Imoen1
@20 DO ~SetGlobal("RJIMTK1","GLOBAL",2)~
== IMOEN2%rj_eet_suff% @21 = @22
== RJPLAYER @23
== IMOEN2%rj_eet_suff% @24 = @25
== RJPLAYER @26
== IMOEN2%rj_eet_suff% @27
== RJPLAYER @28
EXIT

// Imoen wants to know how you shift position.

CHAIN IF ~G("RJIMTK2",1)~ THEN RJPLAYER P1Imoen2
@30 DO ~SetGlobal("RJIMTK2","GLOBAL",2)~
== IMOEN2%rj_eet_suff% @31 = @32
== RJPLAYER @33
== IMOEN2%rj_eet_suff% @34 = @35 = @36
== RJPLAYER @37 = @38 = @39
== IMOEN2%rj_eet_suff% @40 = @41
== RJPLAYER @42
EXIT

// Imoen wants to know why you look so smug.

CHAIN IF ~G("RJIMTK3",1)~ THEN RJPLAYER P1Imoen3
@50 DO ~SetGlobal("RJIMTK3","GLOBAL",2)~
== IMOEN2%rj_eet_suff% @51 = @52 = @53
== RJPLAYER @54 = @55 = @56 = @57
== IMOEN2%rj_eet_suff% @58 = @59
== RJPLAYER @60
== IMOEN2%rj_eet_suff% @61
== RJPLAYER @62
== IMOEN2%rj_eet_suff% @63
EXIT

// Imoen meets Fay.

CHAIN IF ~G("RJIMTK4",1)~ THEN RJPLAYER P1Imoen4
@120 DO ~SetGlobal("RJIMTK4","GLOBAL",2)~
== IMOEN2%rj_eet_suff% @121
== RJPLAYER @122
== IMOEN2%rj_eet_suff% @123 = @124
== RJFAY1 @125
== IMOEN2%rj_eet_suff% @126
== RJFAY1 @127 = @128
== IMOEN2%rj_eet_suff% @129
== RJPLAYER @130
== IMOEN2%rj_eet_suff% @131 = @132
== RJFAY1 @133
== RJPLAYER @134 = @135
EXIT

// Revealing Jini to your Party

CHAIN IF ~G("RJJIRVL",1)~ THEN RJPLAYER P2JiniReveal
@200 = @201 DO ~SetGlobal("RJJIRVL","GLOBAL",2)~
== IMOEN2%rj_eet_suff% IF ~InParty("%rj_imoen%")~ THEN @202 = @203
== RH#ISRAJ IF ~InParty("rh#isra")~ THEN @259
== KIVANJ IF ~InParty("KIVAN")~ THEN @204
== ALORAJ IF ~InParty("ALORA")~ THEN @205
== MINSCJ%rj_eet_suff% IF ~InParty("MINSC")~ THEN @206
== DYNAHJ IF ~InParty("DYNAHEIR")~ THEN @207
== YESLIJ IF ~InParty("YESLICK")~ THEN @208
== CORANJ IF ~InParty("CORAN")~ THEN @209
== AJANTJ IF ~InParty("AJANTIS")~ THEN @210
== KHALIJ IF ~InParty("KHALID")~ THEN @211
== JAHEIJ IF ~InParty("JAHEIRA")~ THEN @212
== GARRIJ IF ~InParty("GARRICK")~ THEN @213
== SAFANJ IF ~InParty("SAFANA")~ THEN @214
== RH#ISRAJ IF ~InParty("rh#isra")~ THEN @259
== FALDOJ IF ~InParty("FALDORN")~ THEN @215
== BRANWJ IF ~InParty("BRANWEN")~ THEN @216
== QUAYLJ IF ~InParty("QUAYLE")~ THEN @217
== XANJ IF ~InParty("XAN")~ THEN @218
== SKIEJ IF ~InParty("SKIE")~ THEN @219
== ELDOTJ IF ~InParty("ELDOTH")~ THEN @220
== XZARJ IF ~InParty("XZAR")~ THEN @221
== MONTAJ IF ~InParty("MONTARON")~ THEN @222
== TIAXJ IF ~InParty("TIAX")~ THEN @223
== KAGAIJ IF ~InParty("KAGAIN")~ THEN @224
== SHARTJ IF ~InParty("SHARTEEL")~ THEN @225
== EDWINJ%rj_eet_suff% IF ~InParty("EDWIN")~ THEN @226
== VICONJ IF ~InParty("VICONIA")~ THEN @227
== NEERAJ%rj_eet_suff% IF ~InParty("NEERA")~ THEN @228
== DORNJ%rj_eet_suff% IF ~InParty("DORN")~ THEN @229
== RASAADJ%rj_eet_suff% IF ~InParty("RASAAD")~ THEN @230
== C0SIRENJ IF ~InParty("C0Sirene")~ THEN @231
== RJPLAYER @232
== IMOEN2%rj_eet_suff% IF ~InParty("%rj_imoen%")~ THEN @234
== RJPLAYER IF ~InParty("%rj_imoen%")~ THEN @235
== RJPLAYER @233
== IMOEN2%rj_eet_suff% IF ~InParty("%rj_imoen%")~ THEN @236
== RJPLAYER @237
== RJPLAYER IF ~G("RJEquip",1)~ THEN @238
== RJPLAYER @239
== IMOEN2%rj_eet_suff% IF ~InParty("%rj_imoen%")~ THEN @240
== RH#ISRAJ IF ~InParty("rh#isra") InParty("%rj_imoen%")~ THEN @260
== JAHEIJ IF ~InParty("JAHEIRA")~ THEN @241
== DYNAHJ IF ~InParty("DYNAHEIR")~ THEN @242
== SAFANJ IF ~InParty("SAFANA")~ THEN @243
== BRANWJ IF ~InParty("BRANWEN")~ THEN @244
== BRANWJ IF ~InParty("BRANWEN") G("RJEquip",1)~ THEN @245
== SKIEJ IF ~InParty("SKIE")~ THEN @246
== SHARTJ IF ~InParty("SHARTEEL")~ THEN @247
== VICONJ IF ~InParty("VICONIA")~ THEN @248
== NEERAJ%rj_eet_suff% IF ~InParty("NEERA")~ THEN @249
== ALORAJ IF ~InParty("ALORA")~ THEN @250
== C0SIRENJ IF ~InParty("C0Sirene")~ THEN @253
== FALDOJ IF ~InParty("FALDORN")~ THEN @251
== RJPLAYER @254 = @252
== IMOEN2%rj_eet_suff% IF ~InParty("%rj_imoen%")~ THEN @256
== RJPLAYER @255 = @257 = @258
END
IF ~~ THEN DO ~StartCutSceneMode()
               SetGlobal("RJiniTalk","GLOBAL",11)
               StartCutScene("RJCUT605")~ EXIT

CHAIN IF ~G("RJPort",2) G("RJJIRVL",2)~ THEN RJPLAYER P2JiniReveal1
@270 DO ~SetGlobal("RJJIRVL","GLOBAL",99)
         RealSetGlobalTimer("RJiniRomance","GLOBAL",RJ_TALK)
         RealSetGlobalTimer("RJSleepTimer","GLOBAL",RJ_FLIRT)~
== RJINI1 @271
== RJPLAYER @272
== RJPLAYER IF ~InParty(Player2)~ @273
== RJPLAYER IF ~InParty(Player3)~ @274
== RJPLAYER IF ~InParty(Player4)~ @275
== RJPLAYER IF ~InParty(Player5)~ @276
== RJPLAYER IF ~InParty(Player6)~ @277
== IMOEN2%rj_eet_suff% IF ~InParty("%rj_imoen%")~ THEN @279
== RJINI1 IF ~InParty("%rj_imoen%")~ THEN @280
== IMOEN2%rj_eet_suff% IF ~InParty("%rj_imoen%")~ THEN @281
== RJINI1 IF ~InParty("%rj_imoen%")~ THEN @282
== RH#ISRAJ IF ~InParty("rh#isra")~ THEN @347
== RJINI1 IF ~InParty("rh#isra")~ THEN @348
== KIVANJ IF ~InParty("KIVAN")~ THEN @283
== RJINI1 IF ~InParty("KIVAN")~ THEN @284
== ALORAJ IF ~InParty("ALORA")~ THEN @285
== RJINI1 IF ~InParty("ALORA")~ THEN @286
== MINSCJ%rj_eet_suff% IF ~InParty("MINSC")~ THEN @287
== RJINI1 IF ~InParty("MINSC")~ THEN @288
== DYNAHJ IF ~InParty("DYNAHEIR")~ THEN @289
== RJINI1 IF ~InParty("DYNAHEIR")~ THEN @290
== YESLIJ IF ~InParty("YESLICK")~ THEN @291
== RJINI1 IF ~InParty("YESLICK")~ THEN @292
== CORANJ IF ~InParty("CORAN")~ THEN @293
== RJINI1 IF ~InParty("CORAN")~ THEN @294
== AJANTJ IF ~InParty("AJANTIS")~ THEN @295
== RJINI1 IF ~InParty("AJANTIS")~ THEN @296
== KHALIJ IF ~InParty("KHALID")~ THEN @297
== RJINI1 IF ~InParty("KHALID")~ THEN @298
== JAHEIJ IF ~InParty("JAHEIRA")~ THEN @299
== RJINI1 IF ~InParty("JAHEIRA")~ THEN @300
== GARRIJ IF ~InParty("GARRICK")~ THEN @301
== RJINI1 IF ~InParty("GARRICK")~ THEN @302
== SAFANJ IF ~InParty("SAFANA")~ THEN @303
== RJINI1 IF ~InParty("SAFANA")~ THEN @304
== FALDOJ IF ~InParty("FALDORN")~ THEN @305
== RJINI1 IF ~InParty("FALDORN")~ THEN @306
== BRANWJ IF ~InParty("BRANWEN")~ THEN @307
== RJINI1 IF ~InParty("BRANWEN")~ THEN @308
== QUAYLJ IF ~InParty("QUAYLE")~ THEN @309
== RJINI1 IF ~InParty("QUAYLE")~ THEN @310
== XANJ IF ~InParty("XAN")~ THEN @311
== RJINI1 IF ~InParty("XAN")~ THEN @312
== SKIEJ IF ~InParty("SKIE")~ THEN @313
== RJINI1 IF ~InParty("SKIE")~ THEN @314
== ELDOTJ IF ~InParty("ELDOTH")~ THEN @315
== RJINI1 IF ~InParty("ELDOTH")~ THEN @316
== XZARJ IF ~InParty("XZAR")~ THEN @317
== RJINI1 IF ~InParty("XZAR")~ THEN @318
== MONTAJ IF ~InParty("MONTARON")~ THEN @319
== RJINI1 IF ~InParty("MONTARON")~ THEN @320
== TIAXJ IF ~InParty("TIAX")~ THEN @321
== RJINI1 IF ~InParty("TIAX")~ THEN @322
== KAGAIJ IF ~InParty("KAGAIN")~ THEN @323
== RJINI1 IF ~InParty("KAGAIN")~ THEN @324
== SHARTJ IF ~InParty("SHARTEEL")~ THEN @325
== RJINI1 IF ~InParty("SHARTEEL")~ THEN @326
== EDWINJ%rj_eet_suff% IF ~InParty("EDWIN")~ THEN @327
== RJINI1 IF ~InParty("EDWIN")~ THEN @328
== VICONJ IF ~InParty("VICONIA")~ THEN @329
== RJINI1 IF ~InParty("VICONIA")~ THEN @330
== NEERAJ%rj_eet_suff% IF ~InParty("NEERA")~ THEN @331
== RJINI1 IF ~InParty("NEERA")~ THEN @332
== DORNJ%rj_eet_suff% IF ~InParty("DORN")~ THEN @333
== RJINI1 IF ~InParty("DORN")~ THEN @334
== RASAADJ%rj_eet_suff% IF ~InParty("RASAAD")~ THEN @335
== RJINI1 IF ~InParty("RASAAD")~ THEN @336
== C0SIRENJ IF ~InParty("C0Sirene")~ THEN @337
== RJINI1 IF ~InParty("C0Sirene")~ THEN @338
== RJINI1 @339
== RJPLAYER @340
== RJINI1 @341 = @342 = @343 = @344 = @345
== RJPLAYER @346
END
IF ~!InParty("%rj_imoen%")~ THEN DO ~SetGlobal("RJiniTalk","GLOBAL",99)~ EXIT
IF ~InParty("%rj_imoen%")~ THEN DO ~ActionOverride("Imoen",MoveToObjectOffset("RJini",[0.4])~ EXTERN RJPLAYER P2JiniReveal2

CHAIN IF ~~ THEN RJPLAYER P2JiniReveal2
@360
== IMOEN2%rj_eet_suff% @361
== RJINI1 @362
== RJPLAYER @363
== IMOEN2%rj_eet_suff% @364 = @365
== RJINI1 @366
== IMOEN2%rj_eet_suff% @367
== RJINI1 @368
== IMOEN2%rj_eet_suff% @369
== RJINI1 @370 = @371
== IMOEN2%rj_eet_suff% @372
== RJINI1 @373 = @374 = @375
END
IF ~~ THEN DO ~SetGlobal("RJiniTalk","GLOBAL",99)~ EXIT

// Your party visits Jini before sleep.

CHAIN IF ~G("RJPort",2) G("RJGRSLP",1)~ THEN RJPLAYER P2JiniSleep
@600 DO ~SetGlobal("RJGRSLP","GLOBAL",2)~
== RJINI1 @601 = @602
== RJPLAYER @603
== IMOEN2%rj_eet_suff% IF ~InParty("%rj_imoen%")~ THEN @604 = @605
== RJPLAYER @606

BRANCH ~InParty("%rj_imoen%")~ BEGIN
== RJINI1 @607
== IMOEN2%rj_eet_suff% @608
== RJINI1 @609 = @610
== IMOEN2%rj_eet_suff% @611 = @612
== RJINI1 @613
== IMOEN2%rj_eet_suff% @614
== RJINI1 @615
END

BRANCH ~InParty("C0Sirene")~ BEGIN
== C0SIRENJ @726 = @727
== RJINI1 @728 = @729
== C0SIRENJ @730
END

BRANCH ~InParty("rh#isra")~ BEGIN
== RH#ISRAJ @731 = @732
== RJINI1 @733 = @734
== RH#ISRAJ @735
END

BRANCH ~InParty("KIVAN")~ BEGIN
== KIVANJ @616 = @617
== RJINI1 @618
END

BRANCH ~InParty("ALORA")~ BEGIN
== ALORAJ @619 = @620
== RJINI1 @621 = @622
== ALORAJ @623
END

BRANCH ~InParty("MINSC")~ BEGIN
== MINSCJ%rj_eet_suff% @624 = @625
== RJINI1 @626
== MINSCJ%rj_eet_suff% @627
== RJINI1 @628
END

BRANCH ~InParty("DYNAHEIR")~ BEGIN
== DYNAHJ @629
== RJINI1 @630
== RJINI1 IF ~InParty("MINSC")~ THEN @631
== DYNAHJ IF ~InParty("MINSC")~ THEN @632
== MINSCJ IF ~InParty("MINSC")~ THEN @633
== DYNAHJ IF ~InParty("MINSC")~ THEN @634
== MINSCJ IF ~InParty("MINSC")~ THEN @635
END

BRANCH ~InParty("YESLICK")~ BEGIN
== YESLIJ @636
== RJINI1 @637
END

BRANCH ~InParty("CORAN")~ BEGIN
== CORANJ @638
== RJINI1 @639
END

BRANCH ~InParty("AJANTIS")~ BEGIN
== AJANTJ @640
== RJINI1 @641
== RJPLAYER @642
END

BRANCH ~InParty("KHALID")~ BEGIN
== KHALIJ @643
== RJINI1 @644
END

BRANCH ~InParty("JAHEIRA")~ BEGIN
== JAHEIJ @645
== RJINI1 @646
== JAHEIJ IF ~InParty("KHALID")~ THEN @647
== RJINI1 IF ~InParty("KHALID")~ THEN @648
END

BRANCH ~InParty("GARRICK")~ BEGIN
== GARRIJ @649
== RJINI1 @650
END

BRANCH ~InParty("SAFANA")~ BEGIN
== SAFANJ @651 = @652
== RJINI1 @653
== SAFANJ @654
END

BRANCH ~InParty("FALDORN")~ BEGIN
== FALDOJ @655
== RJINI1 @656
== FALDOJ @657
END

BRANCH ~InParty("BRANWEN")~ BEGIN
== BRANWJ @659
== RJINI1 @660
== RJPLAYER @661
END

BRANCH ~InParty("QUAYLE")~ BEGIN
== QUAYLJ @662
== RJINI1 @663
END

BRANCH ~InParty("XAN")~ BEGIN
== XANJ @664
== RJINI1 @665
== XANJ @666
END

BRANCH ~InParty("SKIE")~ BEGIN
== SKIEJ @667
== RJINI1 @668
== SKIEJ @669
== RJINI1 @670
== SKIEJ @671
END

BRANCH ~InParty("ELDOTH")~ BEGIN
== ELDOTJ @672
== RJINI1 @673
END

BRANCH ~InParty("XZAR")~ BEGIN
== XZARJ @674
== XZARJ IF ~InParty("MONTARON")~ THEN @675
== MONTAJ IF ~InParty("MONTARON")~ THEN @676
== RJINI1 @677 = @678
== XZARJ @679
END

BRANCH ~InParty("TIAX")~ BEGIN
== TIAXJ @680
== RJINI1 @681
== RJPLAYER @682
== RJINI1 @683
END

BRANCH ~InParty("KAGAIN")~ BEGIN
== KAGAIJ @684
== RJINI1 @685 = @686
== KAGAIJ @687
== RJINI1 @688
END

BRANCH ~InParty("SHARTEEL")~ BEGIN
== SHARTJ @689
== RJINI1 @690 = @691 = @692
END

BRANCH ~InParty("EDWIN")~ BEGIN
== EDWINJ%rj_eet_suff% @693= @694
== RJINI1 @695
END

BRANCH ~InParty("VICONIA")~ BEGIN
== VICONJ @696
== RJINI1 @697 = @698 = @699
== VICONJ @700 = @701
== RJPLAYER @702
== IMOEN2%rj_eet_suff% IF ~InParty("%rj_imoen%")~ THEN @703
== RJINI1 @704
END

BRANCH ~InParty("NEERA")~ BEGIN
== NEERAJ%rj_eet_suff% @705 = @706 = @707
== RJINI1 @708 = @709
== NEERAJ%rj_eet_suff% IF ~G("ADOY_MET_PARTY",1)~ THEN @710
== NEERAJ%rj_eet_suff% @711 = @712
== RJINI1 @713
== NEERAJ%rj_eet_suff% @714
END

BRANCH ~InParty("DORN")~ BEGIN
== DORNJ%rj_eet_suff% @715
== RJINI1 @716
END

BRANCH ~InParty("RASAAD")~ BEGIN
== RASAADJ%rj_eet_suff% @717
== RJINI1 @718 = @719 = @720
END

== RJPLAYER @721 = @722
== RJINI1 @723 = @724
== RJPLAYER @725
END
IF ~~ THEN DO ~SetGlobal("RJiniTalk","GLOBAL",99)~ EXTERN RJINI1 2

// Rjali is shadowing you.

CHAIN IF ~G("RJShadow",1) G("RJShadowCnt",1)~ THEN RJPLAYER P1Rjali1
@70 DO ~SetGlobal("RJShadow","GLOBAL",0)~
== IMOEN2%rj_eet_suff% IF ~InParty("%rj_imoen%")~ THEN @71
== RJPLAYER @72
== IMOEN2%rj_eet_suff% IF ~InParty("%rj_imoen%")~ THEN @73
== RJPLAYER @74
== IMOEN2%rj_eet_suff% IF ~InParty("%rj_imoen%")~ THEN @75
EXIT

CHAIN IF ~G("RJShadow",1) G("RJShadowCnt",2)~ THEN RJPLAYER P1Rjali2
@80 DO ~SetGlobal("RJShadow","GLOBAL",0)~
== IMOEN2%rj_eet_suff% IF ~InParty("%rj_imoen%")~ THEN @81
== RJPLAYER IF ~InParty("%rj_imoen%")~ THEN @82 = @84
== IMOEN2%rj_eet_suff% IF ~InParty("%rj_imoen%")~ THEN @83
EXIT

CHAIN IF ~G("RJShadow",1) G("RJShadowCnt",3)~ THEN RJPLAYER P1Rjali3
@90 DO ~SetGlobal("RJShadow","GLOBAL",0)~
== IMOEN2%rj_eet_suff% IF ~InParty("%rj_imoen%")~ THEN @91
== RJPLAYER IF ~InParty("%rj_imoen%")~ THEN @92
== IMOEN2%rj_eet_suff% IF ~InParty("%rj_imoen%")~ THEN @93
== RJPLAYER @94
== IMOEN2%rj_eet_suff% IF ~InParty("%rj_imoen%")~ THEN @95
EXIT

CHAIN IF ~G("RJShadow",1) G("RJShadowCnt",4)~ THEN RJPLAYER P1Rjali4
@100 DO ~SetGlobal("RJShadow","GLOBAL",0)~
== IMOEN2%rj_eet_suff% IF ~InParty("%rj_imoen%")~ THEN @101
== RJPLAYER @102
== IMOEN2%rj_eet_suff% IF ~InParty("%rj_imoen%")~ THEN @103
== RJPLAYER @104
== IMOEN2%rj_eet_suff% IF ~InParty("%rj_imoen%")~ THEN @105
EXIT

CHAIN IF ~G("RJShadow",1) GGT("RJShadowCnt",4)~ THEN RJPLAYER P1Rjali5
@110 DO ~SetGlobal("RJShadow","GLOBAL",0)~
== IMOEN2%rj_eet_suff% IF ~InParty("%rj_imoen%")~ THEN @111
== RJPLAYER IF ~G("RJShadowCnt",6)~ THEN @112
== IMOEN2%rj_eet_suff% IF ~G("RJShadowCnt",6) InParty("%rj_imoen%")~ THEN @113
== RJPLAYER IF ~G("RJShadowCnt",6) InParty("%rj_imoen%")~ THEN @114
EXIT

// Ensure that helping Drizzt is recognized.

ALTER_TRANS DRIZZT 
BEGIN 0 END
BEGIN 0 END
BEGIN 
  "ACTION" ~SetGlobal("HelpDrizzt","GLOBAL",1)~
END
