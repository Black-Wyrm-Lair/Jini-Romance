
BEGIN RJINVJI

BEGIN RJINI1

//  Jini's Romance Talks

IF ~~ THEN BEGIN 0    // End romance talk
  SAY @0
IF ~GLT("Chapter",4)~ THEN DO ~RealSetGlobalTimer("RJiniRomance","GLOBAL",RJ_TALK)
                               SetGlobal("RJiniTalk","GLOBAL",99)
                               IncrementGlobal("RJiniTalks","GLOBAL",1)~ EXIT
IF ~G("Chapter",4)~ THEN DO ~RealSetGlobalTimer("RJiniRomance","GLOBAL",RJ_FAST)
                             SetGlobal("RJiniTalk","GLOBAL",99)
                             IncrementGlobal("RJiniTalks","GLOBAL",1)~ EXIT
IF ~G("Chapter",5)~ THEN DO ~RealSetGlobalTimer("RJiniRomance","GLOBAL",RJ_QUICK)
                             SetGlobal("RJiniTalk","GLOBAL",99)
                             IncrementGlobal("RJiniTalks","GLOBAL",1)~ EXIT
IF ~GLT("RJiniTalks",25)
    GGT("Chapter",5)~ THEN DO ~RealSetGlobalTimer("RJiniRomance","GLOBAL",RJ_FAST)
                               SetGlobal("RJiniTalk","GLOBAL",99)
                               IncrementGlobal("RJiniTalks","GLOBAL",1)~ EXIT
IF ~!GLT("RJiniTalks",25)
    GGT("Chapter",5)~ THEN DO ~RealSetGlobalTimer("RJiniRomance","GLOBAL",RJ_FLIRT)
                               SetGlobal("RJiniTalk","GLOBAL",99)
                               IncrementGlobal("RJiniTalks","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 1    // End other talk
  SAY @0
IF ~!G("RJFaySpawn",0)~ THEN DO ~SetGlobal("RJiniTalk","GLOBAL",99)~ EXIT
IF ~G("RJFaySpawn",0)~ THEN DO ~SetGlobal("RJiniTalk","GLOBAL",99)~ GOTO ltk0.1
END

IF ~~ THEN BEGIN 2    // End sleep talk
  SAY @0
IF ~~ THEN DO ~SetGlobal("RJiniTalk","GLOBAL",99)
               SetGlobal("RJiniSleep","GLOBAL",2)
               RealSetGlobalTimer("RJSleepTimer","GLOBAL",RJ_FLIRT)~ EXIT
END

//  Jini's CHAIN Talks

//  Jini notices Fay with the PC

CHAIN IF ~G("RJIFA",1)~ THEN RJINI1 RJIFA1
@570 DO ~SetGlobal("RJIFA","GLOBAL",2)~
== RJFAY1 @571
END
IF ~G("RJFayBig",0)~ THEN EXIT
IF ~!G("RJFayBig",0) G("RJIFASW",0)~ THEN EXTERN RJINI1 RJIFA1.1
IF ~G("RJIFASW",1)~ THEN EXTERN RJINI1 RJIFA1.2
IF ~G("RJIFASW",2)~ THEN EXTERN RJINI1 RJIFA1.3

CHAIN IF ~~ THEN RJINI1 RJIFA1.1
@572 DO ~SetGlobal("RJIFASW","GLOBAL",1)~
== RJFAY1 @573 = @574
== RJINI1 @575 = @576
== RJFAY1 @577
== RJINI1 @578
END
++ @579 EXIT

CHAIN IF ~~ THEN RJINI1 RJIFA1.2
@580 DO ~SetGlobal("RJIFASW","GLOBAL",2)~
== RJFAY1 @581
== RJINI1 @582
== RJFAY1 @583
END
++ @584 EXIT

CHAIN IF ~~ THEN RJINI1 RJIFA1.3
@585
== RJFAY1 @586
END
++ @587 EXIT

APPEND RJINI1

//  Talk 6 - Invitation

IF ~IsGabber(Player1) G("RJiniTalks",12)~ THEN BEGIN jlt6
  SAY @10 = @11
IF ~~ THEN REPLY @12 GOTO jlt6.1
END

IF ~~ THEN BEGIN jlt6.1
  SAY @13
IF ~~ THEN REPLY @14 GOTO jlt6.2
END

IF ~~ THEN BEGIN jlt6.2
  SAY @15
IF ~~ THEN REPLY @16 GOTO jlt6.3
END

IF ~~ THEN BEGIN jlt6.3
  SAY @17
IF ~~ THEN REPLY @18 GOTO jlt6.4
END

IF ~~ THEN BEGIN jlt6.4
  SAY @19 = @20
IF ~~ THEN REPLY @21 GOTO jlt6.5
END

IF ~~ THEN BEGIN jlt6.5
  SAY @22 = @23 = @24
IF ~~ THEN REPLY @27 GOTO jlt6.9
END

IF ~~ THEN BEGIN jlt6.9
  SAY @28 = @29 = @25
IF ~~ THEN REPLY @26 DO ~RealSetGlobalTimer("RJiniRomance","GLOBAL",RJ_TALK)
                         SetGlobal("RJiniTalk","GLOBAL",99)
                         IncrementGlobal("RJiniTalks","GLOBAL",1)
                         EscapeAreaObjectMove("RJB605","TRAN0605",574,699,9)~ EXIT
END

//  Talk 7 - Beginnings

IF ~IsGabber(Player1) G("RJiniTalks",14) G("RJiniUngeas",0)~ THEN BEGIN jlt7
  SAY @30
IF ~~ THEN REPLY @31 GOTO jlt7.1
END

IF ~~ THEN BEGIN jlt7.1
  SAY @33
IF ~~ THEN REPLY @34 GOTO jlt7.2
END

IF ~~ THEN BEGIN jlt7.2
  SAY @35
IF ~~ THEN REPLY @36 DO ~SetGlobal("RJiniUngeas","GLOBAL",1)
                         StartCutSceneMode()
                         CreateVisualEffectObject("SPHEALIN",Myself)
                         Wait(3)
                         StartDialogueNoSet(Player1)
                         EndCutSceneMode()~ EXIT
END

IF ~G("RJiniUngeas",1)~ THEN BEGIN jlt7.3
  SAY @37 = @38 = @39 = @40 = @41
IF ~~ THEN REPLY @42 DO ~SetGlobal("RJiniUngeas","GLOBAL",2)~ GOTO jlt7.4
END

IF ~~ THEN BEGIN jlt7.4
  SAY @43
IF ~~ THEN REPLY @44 GOTO jlt7.5
END

IF ~~ THEN BEGIN jlt7.5
  SAY @45 = @46 = @47
IF ~~ THEN REPLY @48 GOTO jlt7.6
END

IF ~~ THEN BEGIN jlt7.6
  SAY @49 = @50 = @51
IF ~~ THEN REPLY @52 DO ~SetGlobal("RJiniRomanceActive","GLOBAL",2)~ GOTO jlt7.7
END

IF ~~ THEN BEGIN jlt7.7
  SAY @53 = @54
IF ~~ THEN REPLY @55 GOTO jlt7.8
END

IF ~~ THEN BEGIN jlt7.8
  SAY @56 = @57
IF ~~ THEN REPLY @58 GOTO jlt7.9
END

IF ~~ THEN BEGIN jlt7.9
  SAY @59 = @60
IF ~!G("RJFaySpawn",0)~ THEN REPLY @61 GOTO 0
IF ~G("RJFaySpawn",0)~ THEN REPLY @61 GOTO jlt7.10
END

IF ~~ jlt7.10
  SAY @190
IF ~~ THEN REPLY @191 DO ~RealSetGlobalTimer("RJIMTIME1","GLOBAL",RJ_TALK)
                          TriggerActivation("TRAN0606",TRUE)~ GOTO 0
END

//  Talk 8 - Freedom

IF ~IsGabber(Player1) G("RJiniTalks",16)~ THEN BEGIN jlt8
  SAY @80 = @81 = @82
IF ~~ THEN REPLY @83 GOTO jlt8.1
END

IF ~~ THEN BEGIN jlt8.1
  SAY @84 = @85 = @86
IF ~~ THEN REPLY @87 GOTO jlt8.2
END

IF ~~ THEN BEGIN jlt8.2
  SAY @89 = @90
IF ~~ THEN REPLY @91 GOTO jlt8.3
END

IF ~~ THEN BEGIN jlt8.3
  SAY @92 = @93
IF ~~ THEN REPLY @94 GOTO jlt8.4
END

IF ~~ THEN BEGIN jlt8.4
  SAY @95 = @96 = @97
IF ~~ THEN REPLY @98 GOTO jlt8.5
END

IF ~~ THEN BEGIN jlt8.5
  SAY @99 = @100
IF ~~ THEN REPLY @101 GOTO jlt8.9
END

IF ~~ THEN BEGIN jlt8.9
  SAY @102 = @103
IF ~~ THEN DO ~SetGlobal("RJiniPermit","GLOBAL",1)
               RealSetGlobalTimer("RJiniExtraT1","GLOBAL",RJ_BANTER)~ GOTO 0
END

//  Talk 9 - 1st Drop In

IF ~IsGabber(Player1) G("RJiniTalks",18)~ THEN BEGIN jlt9
  SAY @500 = @501 = @502
IF ~~ THEN REPLY @503 GOTO jlt9.1
END

IF ~~ THEN BEGIN jlt9.1
  SAY @504
IF ~~ THEN REPLY @505 GOTO jlt9.2
END

IF ~~ THEN BEGIN jlt9.2
  SAY @506
IF ~~ THEN REPLY @507 GOTO jlt9.3
END

IF ~~ THEN BEGIN jlt9.3
  SAY @508
IF ~~ THEN REPLY @509 GOTO jlt9.4
END

IF ~~ THEN BEGIN jlt9.4
  SAY @510
IF ~~ THEN REPLY @511 GOTO jlt9.5
END

IF ~~ THEN BEGIN jlt9.5
  SAY @512 = @513
IF ~~ THEN REPLY @514 GOTO jlt9.6
END

IF ~~ THEN BEGIN jlt9.6
  SAY @515 = @516
IF ~~ THEN REPLY @517 GOTO jlt9.7
END

IF ~~ THEN BEGIN jlt9.7
  SAY @518
IF ~~ THEN REPLY @519 GOTO jlt9.9
END

IF ~~ THEN BEGIN jlt9.9
  SAY @520 = @521
IF ~~ THEN REPLY @522 GOTO 0
END

//  Talk 11 - Restive Party

IF ~IsGabber(Player1) G("RJiniTalks",22)~ THEN BEGIN jlt11
  SAY @110
IF ~NumInPartyAliveGT(1) !InParty("%rj_imoen%")~ THEN REPLY @111 GOTO jlt11.1
IF ~NumInPartyAliveGT(1) InParty("%rj_imoen%")~ THEN REPLY @112 GOTO jlt11.1
IF ~NumInPartyAlive(1)~ THEN REPLY @126 GOTO jlt11.1
END

IF ~~ THEN BEGIN jlt11.1
  SAY @113 = @114
IF ~NumInPartyGT(1)~ THEN REPLY @115 GOTO jlt11.2
IF ~NumInParty(1)~ THEN REPLY @127 GOTO jlt11.2
END

IF ~~ THEN BEGIN jlt11.2
  SAY @116 = @117 = @118 = @119
IF ~~ THEN REPLY @120 GOTO jlt11.3
END

IF ~~ THEN BEGIN jlt11.3
  SAY @121
IF ~~ THEN REPLY @122 GOTO jlt11.9
END

IF ~~ THEN BEGIN jlt11.9
  SAY @123 = @124
IF ~~ THEN REPLY @125 GOTO 0
END

//  Talk 12 - Post party intro to Jini

IF ~IsGabber(Player1) G("RJiniTalks",24)~ THEN BEGIN jlt12
  SAY @416
IF ~NumInPartyGT(1)~ THEN GOTO jlt12.0
IF ~NumInParty(1)~ THEN GOTO jlt12.2
END

IF ~IsGabber(Player1) G("RJiniTalks",24)~ THEN BEGIN jlt12.0
  SAY @400
IF ~!InParty("%rj_imoen%")~ THEN REPLY @401 GOTO jlt12.2
IF ~InParty("%rj_imoen%")~ THEN REPLY @402 GOTO jlt12.1
END

IF ~~ THEN BEGIN jlt12.1
  SAY @403 = @404
IF ~~ THEN REPLY @401 GOTO jlt12.2
END

IF ~~ THEN BEGIN jlt12.2
  SAY @405
IF ~~ THEN REPLY @406 GOTO jlt12.3
END

IF ~~ THEN BEGIN jlt12.3
  SAY @407
IF ~~ THEN REPLY @408 GOTO jlt12.4
END

IF ~~ THEN BEGIN jlt12.4
  SAY @409 = @410 = @411 = @412
IF ~~ THEN REPLY @413 GOTO jlt12.9
END

IF ~~ THEN BEGIN jlt12.9
  SAY @414
IF ~~ THEN REPLY @415 GOTO 0
END

//  Talk 13 - Jini's Uncle

IF ~IsGabber(Player1) G("RJiniTalks",26)~ THEN BEGIN jlt13
  SAY @440 = @441
IF ~~ THEN REPLY @442 GOTO jlt13.1
END

IF ~~ THEN BEGIN jlt13.1
  SAY @443 = @444
IF ~~ THEN REPLY @445 GOTO jlt13.2
END

IF ~~ THEN BEGIN jlt13.2
  SAY @446
IF ~~ THEN REPLY @447 GOTO jlt13.3
END

IF ~~ THEN BEGIN jlt13.3
  SAY @448 = @449 = @450 = @451 = @452
IF ~~ THEN REPLY @453 GOTO jlt13.4
END

IF ~~ THEN BEGIN jlt13.4
  SAY @454
IF ~~ THEN REPLY @455 GOTO jlt13.9
END

IF ~~ THEN BEGIN jlt13.9
  SAY @456 = @457 = @458 = @459 = @460
IF ~~ THEN REPLY @461 GOTO 0
END

//  Talk 15 - Children

IF ~IsGabber(Player1) G("RJiniTalks",30)~ THEN BEGIN jlt15
  SAY @550
IF ~~ THEN REPLY @551 GOTO jlt15.1
END

IF ~~ THEN BEGIN jlt15.1
  SAY @552
IF ~~ THEN REPLY @553 GOTO jlt15.2
END

IF ~~ THEN BEGIN jlt15.2
  SAY @554 = @555 = @556
IF ~~ THEN REPLY @557 GOTO jlt15.3
END

IF ~~ THEN BEGIN jlt15.3
  SAY @558 = @559 = @560 = @561 = @562
IF ~~ THEN REPLY @563 GOTO jlt15.4
END

IF ~~ THEN BEGIN jlt15.4
  SAY @564
IF ~~ THEN REPLY @565 GOTO jlt15.9
END

IF ~~ THEN BEGIN jlt15.9
  SAY @566
IF ~~ THEN GOTO 0
END

//  Sleep Lamp Talks

IF ~IsGabber(Player1) G("RJiniSleep",1)~ THEN BEGIN slp
  SAY @130
+ ~RandomNum(6,1)~ + @131 + slp.1
+ ~RandomNum(6,2)~ + @140 + slp.2
+ ~RandomNum(6,3)~ + @150 + slp.3
+ ~RandomNum(6,4)~ + @160 + slp.4
+ ~RandomNum(6,5)~ + @170 + slp.5
+ ~RandomNum(6,6)~ + @180 + slp.6
END

IF ~~ slp.1
SAY @132 = @133
IF ~~ THEN REPLY @134 GOTO 2
END

IF ~~ slp.2
SAY @141 = @142
IF ~~ THEN REPLY @143 GOTO 2
END

IF ~~ slp.3
SAY @151 = @152
IF ~~ THEN REPLY @153 GOTO 2
END

IF ~~ slp.4
SAY @161 = @162
IF ~~ THEN REPLY @163 GOTO 2
END

IF ~~ slp.5
SAY @171
IF ~~ THEN REPLY @172 GOTO 2
END

IF ~~ slp.6
SAY @181 = @182
IF ~~ THEN REPLY @183 GOTO 2
END

//  Lamp Flirts - Not yet

IF ~IsGabber(Player1) GGT("RJiniTalk",89) G("RJiniPermit",0)~ THEN BEGIN ltk0
  SAY @201
+ ~!G("RJFaySpawn",2)~ + @200 + 1
+ ~G("RJFaySpawn",2)~ + @192 + ltk0.2
END

IF ~~ ltk0.1
  SAY @190
IF ~~ THEN REPLY @191 DO ~TriggerActivation("TRAN0606",TRUE)~ EXIT
END

IF ~~ ltk0.2
  SAY @193
IF ~~ THEN REPLY @194 DO ~SetGlobal("RJFaySpawn","GLOBAL",3)~ GOTO 1
END

//  Lamp Flirts

IF ~IsGabber(Player1) GGT("RJiniTalk",89) G("RJiniPermit",1)~ THEN BEGIN ltk1
  SAY @201

+ ~!G("RJFaySpawn",2)~ + @200 + 1
+ ~G("RJFaySpawn",2)~ + @192 + ltk0.2

+ ~RandomNum(4,1)~ + @203 + flower.1
+ ~RandomNum(4,2)~ + @203 + flower.2
+ ~RandomNum(4,3)~ + @203 + flower.3
+ ~RandomNum(4,4)~ + @203 + flower.4

+ ~RandomNum(4,1)~ + @204 + cheek.1
+ ~RandomNum(4,2)~ + @204 + cheek.2
+ ~RandomNum(4,3)~ + @204 + cheek.3
+ ~RandomNum(4,4)~ + @204 + cheek.4

+ ~RandomNum(4,1)~ + @205 + kiss.1
+ ~RandomNum(4,2)~ + @205 + kiss.2
+ ~RandomNum(4,3)~ + @205 + kiss.3
+ ~RandomNum(4,4)~ + @205 + kiss.4

+ ~RandomNum(4,1)~ + @206 + grab.1
+ ~RandomNum(4,2)~ + @206 + grab.2
+ ~RandomNum(4,3)~ + @206 + grab.3
+ ~RandomNum(4,4)~ + @206 + grab.4

+ ~RandomNum(4,1)~ + @207 + hands.1
+ ~RandomNum(4,2)~ + @207 + hands.2
+ ~RandomNum(4,3)~ + @207 + hands.3
+ ~RandomNum(4,4)~ + @207 + hands.4

+ ~RandomNum(4,1)~ + @208 + arms.1
+ ~RandomNum(4,2)~ + @208 + arms.2
+ ~RandomNum(4,3)~ + @208 + arms.3
+ ~RandomNum(4,4)~ + @208 + arms.4

+ ~RandomNum(4,1)~ + @209 + want.1
+ ~RandomNum(4,2)~ + @209 + want.2
+ ~RandomNum(4,3)~ + @209 + want.3
+ ~RandomNum(4,4)~ + @209 + want.4

+ ~RandomNum(4,1)~ + @210 + beautiful.1
+ ~RandomNum(4,2)~ + @210 + beautiful.2
+ ~RandomNum(4,3)~ + @210 + beautiful.3
+ ~RandomNum(4,4)~ + @210 + beautiful.4

+ ~RandomNum(4,1)~ + @211 + hug.1
+ ~RandomNum(4,2)~ + @211 + hug.2
+ ~RandomNum(4,3)~ + @211 + hug.3
+ ~RandomNum(4,4)~ + @211 + hug.4

+ ~RandomNum(4,1)~ + @212 + smile.1
+ ~RandomNum(4,2)~ + @212 + smile.2
+ ~RandomNum(4,3)~ + @212 + smile.3
+ ~RandomNum(4,4)~ + @212 + smile.4

+ ~RandomNum(4,1)~ + @213 + love.1
+ ~RandomNum(4,2)~ + @213 + love.2
+ ~RandomNum(4,3)~ + @213 + love.3
+ ~RandomNum(4,4)~ + @213 + love.4

+ ~RandomNum(3,1)~ + @214 + caress.1
+ ~RandomNum(3,2)~ + @214 + caress.2
+ ~RandomNum(3,3)~ + @214 + caress.3

+ ~RandomNum(3,1)~ + @215 + ogle.1
+ ~RandomNum(3,2)~ + @215 + ogle.2
+ ~RandomNum(3,3)~ + @215 + ogle.3

+ ~RandomNum(3,1)~ + @225 + bath.1
+ ~RandomNum(3,2)~ + @225 + bath.2
+ ~RandomNum(3,3)~ + @225 + bath.3

++ @227 + 1

END

IF ~~ flower.1
SAY @240
IF ~~ THEN GOTO 1
END

IF ~~ flower.2
SAY @241 = @239
IF ~~ THEN GOTO 1
END

IF ~~ flower.3
SAY @242
IF ~~ THEN GOTO 1
END

IF ~~ flower.4
SAY @243
IF ~~ THEN GOTO 1
END

IF ~~ kiss.1
SAY @244
IF ~~ THEN GOTO 1
END

IF ~~ kiss.2
SAY @245 = @246
IF ~~ THEN GOTO 1
END

IF ~~ kiss.3
SAY @247 = @249
IF ~~ THEN GOTO 1
END

IF ~~ kiss.4
SAY @248
IF ~~ THEN GOTO 1
END

IF ~~ cheek.1
SAY @252
IF ~~ THEN GOTO 1
END

IF ~~ cheek.2
SAY @253
IF ~~ THEN GOTO 1
END

IF ~~ cheek.3
SAY @254
IF ~~ THEN GOTO 1
END

IF ~~ cheek.4
SAY @255
IF ~~ THEN GOTO 1
END

IF ~~ grab.1
SAY @256
IF ~~ THEN GOTO 1
END

IF ~~ grab.2
SAY @257 = @258
++ @259 + 1
END

IF ~~ grab.3
SAY @260 = @261
IF ~~ THEN GOTO 1
END

IF ~~ grab.4
SAY @262
IF ~~ THEN GOTO 1
END

IF ~~ hands.1
SAY @263
IF ~~ THEN GOTO 1
END

IF ~~ hands.2
SAY @264
IF ~~ THEN GOTO 1
END

IF ~~ hands.3
SAY @265
IF ~~ THEN GOTO 1
END

IF ~~ hands.4
SAY @266
IF ~~ THEN GOTO 1
END

IF ~~ want.1
SAY @267
IF ~~ THEN GOTO 1
END

IF ~~ want.2
SAY @268
IF ~~ THEN GOTO 1
END

IF ~~ want.3
SAY @269
IF ~~ THEN GOTO 1
END

IF ~~ want.4
SAY @270
IF ~~ THEN GOTO 1
END

IF ~~ beautiful.1
SAY @271
IF ~~ THEN GOTO 1
END

IF ~~ beautiful.2
SAY @272
IF ~~ THEN GOTO 1
END

IF ~~ beautiful.3
SAY @273
IF ~~ THEN GOTO 1
END

IF ~~ beautiful.4
SAY @274
IF ~~ THEN GOTO 1
END

IF ~~ arms.1
SAY @275
IF ~~ THEN GOTO 1
END

IF ~~ arms.2
SAY @276
IF ~~ THEN GOTO 1
END

IF ~~ arms.3
SAY @277
IF ~~ THEN GOTO 1
END

IF ~~ arms.4
SAY @278
IF ~~ THEN GOTO 1
END

IF ~~ hug.1
SAY @279
IF ~~ THEN GOTO 1
END

IF ~~ hug.2
SAY @280
IF ~~ THEN GOTO 1
END

IF ~~ hug.3
SAY @281
IF ~~ THEN GOTO 1
END

IF ~~ hug.4
SAY @282
IF ~~ THEN GOTO 1
END

IF ~~ smile.1
SAY @283
IF ~~ THEN GOTO 1
END

IF ~~ smile.2
SAY @284
IF ~~ THEN GOTO 1
END

IF ~~ smile.3
SAY @285
IF ~~ THEN GOTO 1
END

IF ~~ smile.4
SAY @286
IF ~~ THEN GOTO 1
END

IF ~~ love.1
SAY @287
IF ~~ THEN GOTO 1
END

IF ~~ love.2
SAY @288
IF ~~ THEN GOTO 1
END

IF ~~ love.3
SAY @289
IF ~~ THEN GOTO 1
END

IF ~~ love.4
SAY @290
IF ~~ THEN GOTO 1
END

IF ~~ caress.1
SAY @291 = @292
IF ~~ THEN GOTO 1
END

IF ~~ caress.2
SAY @293 = @294
IF ~~ THEN GOTO 1
END

IF ~~ caress.3
SAY @295 = @296 = @297
IF ~~ THEN GOTO 1
END

IF ~~ ogle.1
SAY @298 = @299
IF ~~ THEN GOTO 1
END

IF ~~ ogle.2
SAY @300 = @301
++ @302 + 1
END

IF ~~ ogle.3
SAY @303 = @304
++ @305 + 1
END

IF ~~ bath.1
SAY @351 = @352 = @353 = @354 = @355
IF ~~ THEN GOTO 1
END

IF ~~ bath.2
SAY @360 = @361 = @362 = @363 = @364 = @365
IF ~~ THEN GOTO 1
END

IF ~~ bath.3
SAY @370 = @371 = @372 = @373 = @374 = @375
++ @376 + 1
END

END
