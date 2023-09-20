
BEGIN RJFAY1

//  Intro

IF ~IsGabber(Player1) 
    NumTimesTalkedTo(0)
    G("RJFaySpawn",1)~ THEN BEGIN fay0
  SAY @0
IF ~~ THEN REPLY @1 GOTO fay0.1
END

IF ~~ THEN BEGIN fay0.1
  SAY @2
IF ~~ THEN REPLY @3 GOTO fay0.2
END

IF ~~ THEN BEGIN fay0.2
  SAY @4 = @5 = @6
IF ~~ THEN REPLY @7 GOTO fay0.3
IF ~~ THEN REPLY @8 GOTO fay0.4
END

IF ~~ THEN BEGIN fay0.3
  SAY @12
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN fay0.4
  SAY @9 = @10
IF ~~ THEN REPLY @11 DO ~ChangeEnemyAlly(Myself,FAMILIAR)
                         AddFamiliar()
                         SetGlobal("RJFayChap","GLOBAL",0)
                         SetGlobal("RJFayRomanceActive","GLOBAL",1)
                         SetGlobal("RJFaySpawn","GLOBAL",2)~ EXIT
END

//  Pickup

IF ~IsGabber(Player1) 
    !NumTimesTalkedTo(0)
    G("RJFaySpawn",1)~ THEN BEGIN fay1
  SAY @13
IF ~~ THEN REPLY @7 GOTO fay0.3
IF ~~ THEN REPLY @14 DO ~ChangeEnemyAlly(Myself,FAMILIAR)
                         AddFamiliar()
                         SetGlobal("RJFayChap","GLOBAL",0)
                         SetGlobal("RJFayRomanceActive","GLOBAL",1)
                         SetGlobal("RJFaySpawn","GLOBAL",2)~ EXIT
END

// Fay's Talks

// Exit Talks

IF ~~ THEN BEGIN fayltex
  SAY @15
IF ~~ THEN DO ~SetGlobal("RJFayTalk","GLOBAL",0)~ EXIT
END

// Talk 1 - Exile

IF ~G("RJFayTalks",2)~ THEN BEGIN faylt1
  SAY @20
IF ~~ THEN REPLY @21 DO ~SetGlobal("RJFayTalk","GLOBAL",2)
                         IncrementGlobal("RJFayTalks","GLOBAL",1)~ GOTO faylt1.1
END

IF ~~ THEN BEGIN faylt1.1
  SAY @22 = @23
IF ~~ THEN REPLY @24 GOTO faylt1.2
END

IF ~~ THEN BEGIN faylt1.2
  SAY @25
IF ~~ THEN REPLY @26 GOTO faylt1.3
END

IF ~~ THEN BEGIN faylt1.3
  SAY @27 = @28 = @29 = @30 = @31 = @32
IF ~~ THEN REPLY @33 GOTO faylt1.9
END

IF ~~ THEN BEGIN faylt1.9
  SAY @34
IF ~~ THEN REPLY @35 GOTO fayltex
END

// Talk 2 - Taco

IF ~G("RJFayTalks",4)~ THEN BEGIN faylt2
  SAY @90
IF ~~ THEN REPLY @91 DO ~SetGlobal("RJFayTalk","GLOBAL",2)
                         IncrementGlobal("RJFayTalks","GLOBAL",1)~ GOTO faylt2.1
END

IF ~~ THEN BEGIN faylt2.1
  SAY @92 = @93
IF ~~ THEN REPLY @94 GOTO faylt2.2
END

IF ~~ THEN BEGIN faylt2.2
  SAY @95 = @96
IF ~!G("RJiniRomanceActive",2)~ THEN REPLY @97 GOTO faylt2.3
IF ~G("RJiniRomanceActive",2)~ THEN REPLY @98 GOTO faylt2.4
END

IF ~~ THEN BEGIN faylt2.3
  SAY @99
IF ~~ THEN REPLY @100 GOTO faylt2.5
END

IF ~~ THEN BEGIN faylt2.4
  SAY @101
IF ~~ THEN REPLY @100 GOTO faylt2.5
END

IF ~~ THEN BEGIN faylt2.5
  SAY @102
IF ~~ THEN REPLY @103 GOTO faylt2.9
END

IF ~~ THEN BEGIN faylt2.9
  SAY @104
IF ~~ THEN REPLY @105 GOTO fayltex
END

// Talk 3 - Iron Crisis

IF ~G("RJFayTalks",6)~ THEN BEGIN faylt3
  SAY @40
IF ~~ THEN REPLY @41 DO ~SetGlobal("RJFayTalk","GLOBAL",2)
                         IncrementGlobal("RJFayTalks","GLOBAL",1)~ GOTO faylt3.1
END

IF ~~ THEN BEGIN faylt3.1
  SAY @42 = @43
IF ~~ THEN REPLY @44 GOTO faylt3.2
END

IF ~~ THEN BEGIN faylt3.2
  SAY @45 = @46 = @47 = @48 = @49 = @50
IF ~~ THEN REPLY @51 GOTO faylt3.9
END

IF ~~ THEN BEGIN faylt3.9
  SAY @52
IF ~~ THEN GOTO fayltex
END

// Talk 4 - Big Regret

IF ~G("RJFayTalks",8)~ THEN BEGIN faylt4
  SAY @60
IF ~~ THEN REPLY @61 DO ~SetGlobal("RJFayTalk","GLOBAL",2)
                         IncrementGlobal("RJFayTalks","GLOBAL",1)~ GOTO faylt4.1
END

IF ~~ THEN BEGIN faylt4.1
  SAY @62 = @63 = @64 = @65
IF ~~ THEN REPLY @66 GOTO faylt4.2
END

IF ~~ THEN BEGIN faylt4.2
  SAY @67
IF ~~ THEN REPLY @68 GOTO faylt4.3
END

IF ~~ THEN BEGIN faylt4.3
  SAY @69
IF ~~ THEN REPLY @70 GOTO faylt4.4
END

IF ~~ THEN BEGIN faylt4.4
  SAY @71 = @72 = @73 = @74 = @75 = @79
IF ~~ THEN REPLY @76 GOTO faylt4.9
END

IF ~~ THEN BEGIN faylt4.9
  SAY @77
IF ~~ THEN REPLY @78 DO ~SetGlobal("RJFayRomanceActive","GLOBAL",2)~ GOTO fayltex
END

// Talk 5 - Iron Throne

IF ~G("RJFayTalks",10)~ THEN BEGIN faylt5
  SAY @110
IF ~~ THEN REPLY @111 DO ~SetGlobal("RJFayTalk","GLOBAL",2)
                          IncrementGlobal("RJFayTalks","GLOBAL",1)~ GOTO faylt5.1
END

IF ~~ THEN BEGIN faylt5.1
  SAY @112 = @113 = @114
IF ~~ THEN REPLY @115 GOTO faylt5.2
END

IF ~~ THEN BEGIN faylt5.2
  SAY @116 = @117
IF ~~ THEN REPLY @118 GOTO faylt5.3
END

IF ~~ THEN BEGIN faylt5.3
  SAY @119 = @120
IF ~~ THEN REPLY @121 GOTO faylt5.9
END

IF ~~ THEN BEGIN faylt5.9
  SAY @122 = @124
IF ~~ THEN REPLY @123 GOTO fayltex
END

// Talk 6 - Tome Toll

IF ~G("RJFayTalks",12)~ THEN BEGIN faylt6
  SAY @130
IF ~~ THEN REPLY @131 DO ~SetGlobal("RJFayTalk","GLOBAL",2)
                          IncrementGlobal("RJFayTalks","GLOBAL",1)~ GOTO faylt6.1
END

IF ~~ THEN BEGIN faylt6.1
  SAY @132 = @133 = @134
IF ~~ THEN REPLY @135 GOTO faylt6.9
END

IF ~~ THEN BEGIN faylt6.9
  SAY @136
IF ~~ THEN REPLY @137 GOTO fayltex
END

// Talk 7 - Fugitive

IF ~G("RJFayTalks",14)~ THEN BEGIN faylt7
  SAY @150
IF ~~ THEN REPLY @151 DO ~SetGlobal("RJFayTalk","GLOBAL",2)
                          IncrementGlobal("RJFayTalks","GLOBAL",1)~ GOTO faylt7.1
END

IF ~~ THEN BEGIN faylt7.1
  SAY @152 = @153
IF ~~ THEN REPLY @154 GOTO faylt7.2
END

IF ~~ THEN BEGIN faylt7.2
  SAY @155 = @156
IF ~~ THEN REPLY @157 GOTO faylt7.3
END

IF ~~ THEN BEGIN faylt7.3
  SAY @158 = @159 = @160
IF ~~ THEN REPLY @161 GOTO faylt7.4
END

IF ~~ THEN BEGIN faylt7.4
  SAY @162
IF ~~ THEN REPLY @163 GOTO faylt7.5
END

IF ~~ THEN BEGIN faylt7.5
  SAY @164
IF ~~ THEN REPLY @165 GOTO faylt7.9
END

IF ~~ THEN BEGIN faylt7.9
  SAY @166 = @167
IF ~~ THEN REPLY @168 GOTO fayltex
END

// Talk 8 - Army

IF ~G("RJFayTalks",16)~ THEN BEGIN faylt8
  SAY @180
IF ~~ THEN REPLY @181 DO ~SetGlobal("RJFayTalk","GLOBAL",2)
                          IncrementGlobal("RJFayTalks","GLOBAL",1)~ GOTO faylt8.1
END

IF ~~ THEN BEGIN faylt8.1
  SAY @182 = @183 = @184
IF ~~ THEN REPLY @185 GOTO faylt8.2
END

IF ~~ THEN BEGIN faylt8.2
  SAY @186 = @187
IF ~~ THEN REPLY @188 GOTO faylt8.9
END

IF ~~ THEN BEGIN faylt8.9
  SAY @189 = @190
IF ~~ THEN REPLY @191 GOTO fayltex
END

// Talk 9 - Crowd

IF ~G("RJFayTalks",18)~ THEN BEGIN faylt9
  SAY @200
IF ~~ THEN REPLY @201 DO ~SetGlobal("RJFayTalk","GLOBAL",2)
                          IncrementGlobal("RJFayTalks","GLOBAL",1)~ GOTO faylt9.1
END

IF ~~ THEN BEGIN faylt9.1
  SAY @202 = @203
IF ~~ THEN REPLY @204 GOTO faylt9.2
END

IF ~~ THEN BEGIN faylt9.2
  SAY @205 = @206 = @207
IF ~~ THEN REPLY @208 GOTO faylt9.3
END

IF ~~ THEN BEGIN faylt9.3
  SAY @209
IF ~~ THEN REPLY @210 GOTO faylt9.9
END

IF ~~ THEN BEGIN faylt9.9
  SAY @211
IF ~~ THEN REPLY @212 GOTO fayltex
END

// Talk 10 - Trust

IF ~G("RJFayTalks",20)~ THEN BEGIN faylt10
  SAY @220
IF ~~ THEN REPLY @221 DO ~SetGlobal("RJFayTalk","GLOBAL",2)
                          IncrementGlobal("RJFayTalks","GLOBAL",1)~ GOTO faylt10.1
END

IF ~~ THEN BEGIN faylt10.1
  SAY @222 = @223
IF ~~ THEN REPLY @224 GOTO faylt10.2
END

IF ~~ THEN BEGIN faylt10.2
  SAY @225 = @226 = @227
IF ~~ THEN REPLY @228 GOTO faylt10.9
END

IF ~~ THEN BEGIN faylt10.9
  SAY @229 = @230
IF ~~ THEN REPLY @231 GOTO fayltex
END

// Talk 11 - Caelar Argent

IF ~G("RJFayTalks",22)~ THEN BEGIN faylt11
  SAY @240
IF ~~ THEN REPLY @241 DO ~SetGlobal("RJFayTalk","GLOBAL",2)
                          IncrementGlobal("RJFayTalks","GLOBAL",1)~ GOTO faylt11.1
END

IF ~~ THEN BEGIN faylt11.1
  SAY @242
IF ~~ THEN REPLY @243 GOTO faylt11.2
END

IF ~~ THEN BEGIN faylt11.2
  SAY @244
IF ~~ THEN REPLY @245 GOTO faylt11.3
END

IF ~~ THEN BEGIN faylt11.3
  SAY @246
IF ~~ THEN REPLY @247 GOTO faylt11.9
END

IF ~~ THEN BEGIN faylt11.9
  SAY @248
IF ~~ THEN REPLY @249 GOTO fayltex
END

// Talk 12 - Hell

IF ~G("RJFayTalks",24)~ THEN BEGIN faylt12
  SAY @260
IF ~~ THEN REPLY @261 DO ~SetGlobal("RJFayTalk","GLOBAL",2)
                          IncrementGlobal("RJFayTalks","GLOBAL",1)~ GOTO faylt12.1
END

IF ~~ THEN BEGIN faylt12.1
  SAY @262
IF ~~ THEN REPLY @263 GOTO faylt12.2
END

IF ~~ THEN BEGIN faylt12.2
  SAY @264 = @265 = @266
IF ~~ THEN REPLY @267 GOTO faylt12.3
END

IF ~~ THEN BEGIN faylt12.3
  SAY @268
IF ~~ THEN REPLY @269 GOTO faylt12.9
END

IF ~~ THEN BEGIN faylt12.9
  SAY @270
IF ~~ THEN REPLY @271 GOTO fayltex
END

// Dreaming together with Fay - 1st time

IF ~G("RJFayBig",2)
    G("RJFaySleep",0)~ THEN BEGIN faydream0
  SAY @632
IF ~~ THEN REPLY @620 DO ~SetGlobal("RJFayBig","GLOBAL",1)
                          SetGlobal("RJFaySleep","GLOBAL",1)~ GOTO faydr0.1
END

IF ~~ THEN BEGIN faydr0.1
  SAY @621
IF ~~ THEN REPLY @622 GOTO faydr0.2
END

IF ~~ THEN BEGIN faydr0.2
  SAY @623
IF ~~ THEN REPLY @624 GOTO faydr0.3
END

IF ~~ THEN BEGIN faydr0.3
  SAY @625
IF ~~ THEN REPLY @626 GOTO faydr0.4
END

IF ~~ THEN BEGIN faydr0.4
  SAY @627
IF ~~ THEN REPLY @628 GOTO faydr0.5
END

IF ~~ THEN BEGIN faydr0.5
  SAY @629
IF ~~ THEN REPLY @630 GOTO faydr0.9
END

IF ~~ THEN BEGIN faydr0.9
  SAY @631
IF ~~ THEN DO ~StartCutSceneMode()
               StartCutScene("RJRET606")~ EXIT
END

// Dreaming together with Fay - not 1st time

IF ~G("RJFayBig",2)
    G("RJFaySleep",1)~ THEN BEGIN faydream1
  SAY @640
IF ~RandomNum(3,1)~ THEN REPLY @641 DO ~SetGlobal("RJFayBig","GLOBAL",1)~ GOTO faydr1.1.1
IF ~RandomNum(3,2)~ THEN REPLY @650 DO ~SetGlobal("RJFayBig","GLOBAL",1)~ GOTO faydr1.2.1
IF ~RandomNum(3,3)~ THEN REPLY @660 DO ~SetGlobal("RJFayBig","GLOBAL",1)~ GOTO faydr1.3.1
END

IF ~~ THEN BEGIN faydr1.1.1
  SAY @642
IF ~~ THEN REPLY @643 GOTO faydr1.1.2
END

IF ~~ THEN BEGIN faydr1.1.2
  SAY @644 = @645
IF ~~ THEN REPLY @646 GOTO faydr1.1.3
END

IF ~~ THEN BEGIN faydr1.1.3
  SAY @647 = @648
IF ~~ THEN REPLY @649 GOTO faydr0.9
END

IF ~~ THEN BEGIN faydr1.2.1
  SAY @651 = @652 = @653 = @654
IF ~~ THEN REPLY @655 GOTO faydr1.2.2
END

IF ~~ THEN BEGIN faydr1.2.2
  SAY @656 = @657 = @658
IF ~~ THEN REPLY @659 GOTO faydr0.9
END

IF ~~ THEN BEGIN faydr1.3.1
  SAY @661 = @662
IF ~~ THEN REPLY @663 GOTO faydr1.3.2
END

IF ~~ THEN BEGIN faydr1.3.2
  SAY @664
IF ~~ THEN REPLY @665 GOTO faydr1.3.3
END

IF ~~ THEN BEGIN faydr1.3.3
  SAY @666 = @667 = @668
IF ~~ THEN REPLY @669 GOTO faydr0.9
END

// Fay's Extra Talks

// Extra 1 - 1st return to sleep venue

IF ~G("RJFayExtra1",1)~ THEN BEGIN fayex1
  SAY @520
IF ~~ THEN REPLY @521 DO ~SetGlobal("RJFayExtra1","GLOBAL",2)~ GOTO fayex1.1
END

IF ~~ THEN BEGIN fayex1.1
  SAY @522 = @523 = @524
IF ~~ THEN REPLY @525 GOTO fayex1.2
END

IF ~~ THEN BEGIN fayex1.2
  SAY @526 = @527
IF ~~ THEN REPLY @529 GOTO fayex1.3
END

IF ~~ THEN BEGIN fayex1.3
  SAY @530 = @531 = @532
IF ~~ THEN REPLY @533 GOTO fayex1.9
END

IF ~~ THEN BEGIN fayex1.9
  SAY @534
IF ~~ THEN REPLY @528 EXIT
END

// Extra 2 - Return to Candlekeep

IF ~G("RJFayExtra2",1)~ THEN BEGIN fayex2
  SAY @560
IF ~~ THEN REPLY @561 DO ~SetGlobal("RJFayExtra2","GLOBAL",2)~ GOTO fayex2.1
END

IF ~~ THEN BEGIN fayex2.1
  SAY @562 = @563 = @564
IF ~~ THEN REPLY @565 GOTO fayex2.2
END

IF ~~ THEN BEGIN fayex2.2
  SAY @566
IF ~~ THEN REPLY @567 GOTO fayex2.9
END

IF ~~ THEN BEGIN fayex2.9
  SAY @568 = @569
IF ~~ THEN EXIT
END

// Extra 3 - Pokes

CHAIN IF ~!G("RJFayExtra3",0)~ THEN RJFAY1 faypoke
@739
== RJFAY1 IF ~G("RJRomTyp",1)~ THEN @756
== RJFAY1 IF ~G("RJRomTyp",3)~ THEN @755
== RJFAY1 IF ~G("RJPokeBR",1)~ THEN @721 DO ~SG("RJPokeBR",0)~
== RJFAY1 IF ~G("RJPokeBR",2)~ THEN @722 DO ~SG("RJPokeBR",0)~
== RJFAY1 IF ~G("RJPokeBR",3)~ THEN @723 DO ~SG("RJPokeBR",0)~
== RJFAY1 IF ~G("RJPokeDY",1)~ THEN @724 DO ~SG("RJPokeDY",0)~
== RJFAY1 IF ~G("RJPokeDY",2)~ THEN @725 DO ~SG("RJPokeDY",0)~
== RJFAY1 IF ~G("RJPokeDY",3)~ THEN @726 DO ~SG("RJPokeDY",0)~
== RJFAY1 IF ~G("RJPokeSH",1)~ THEN @727 DO ~SG("RJPokeSH",0)~
== RJFAY1 IF ~G("RJPokeSH",2)~ THEN @728 DO ~SG("RJPokeSH",0)~
== RJFAY1 IF ~G("RJPokeSH",3)~ THEN @729 DO ~SG("RJPokeSH",0)~
== RJFAY1 IF ~G("RJPokeSH",-1)~ THEN @729 DO ~SG("RJPokeSH",0)~
== RJFAY1 IF ~G("RJPokeSI1",1)~ THEN @761 DO ~SG("RJPokeSI1",0)~
== RJFAY1 IF ~G("RJPokeSI1",2)~ THEN @762 DO ~SG("RJPokeSI1",0)~
== RJFAY1 IF ~G("RJPokeSI1",3)~ THEN @763 DO ~SG("RJPokeSI1",0)~
== RJFAY1 IF ~G("RJPokeSI",1)~ THEN @730 DO ~SG("RJPokeSI",0)~
== RJFAY1 IF ~G("RJPokeSI",2)~ THEN @731 DO ~SG("RJPokeSI",0)~
== RJFAY1 IF ~G("RJPokeSI",3)~ THEN @732 DO ~SG("RJPokeSI",0)~
== RJFAY1 IF ~G("RJPokeCO",1)~ THEN @733 DO ~SG("RJPokeCO",0)~
== RJFAY1 IF ~G("RJPokeCO",2)~ THEN @734 DO ~SG("RJPokeCO",0)~
== RJFAY1 IF ~G("RJPokeCO",3)~ THEN @735 DO ~SG("RJPokeCO",0)~
== RJFAY1 IF ~G("RJPokeNE1",-1)~ THEN @743 DO ~SG("RJPokeNE1",0)~
== RJFAY1 IF ~G("RJPokeNE1",1)~ THEN @757 DO ~SG("RJPokeNE1",0)~
== RJFAY1 IF ~G("RJPokeNE1",2)~ THEN @758 DO ~SG("RJPokeNE1",0)~
== RJFAY1 IF ~G("RJPokeNE1",3)~ THEN @759 DO ~SG("RJPokeNE1",0)~
== RJFAY1 IF ~G("RJPokeNE",1)~ THEN @741 DO ~SG("RJPokeNE",0)~
== RJFAY1 IF ~G("RJPokeNE",2)~ THEN @742 DO ~SG("RJPokeNE",0)~
== RJFAY1 IF ~G("RJPokeNE",3)~ THEN @743 DO ~SG("RJPokeNE",0)~
== RJFAY1 IF ~G("RJPokeSA",1)~ THEN @744 DO ~SG("RJPokeSA",0)~
== RJFAY1 IF ~G("RJPokeSA",2)~ THEN @745 DO ~SG("RJPokeSA",0)~
== RJFAY1 IF ~G("RJPokeSA",3)~ THEN @746 DO ~SG("RJPokeSA",0)~
== RJFAY1 IF ~G("RJPokeVI",1)~ THEN @747 DO ~SG("RJPokeVI",0)~
== RJFAY1 IF ~G("RJPokeVI",2)~ THEN @748 DO ~SG("RJPokeVI",0)~
== RJFAY1 IF ~G("RJPokeVI",3)~ THEN @749 DO ~SG("RJPokeVI",0)~
== RJFAY1 IF ~G("RJPokeIS",1)~ THEN @766 DO ~SG("RJPokeIS",0)~
== RJFAY1 IF ~G("RJPokeIS",2)~ THEN @767 DO ~SG("RJPokeIS",0)~
== RJFAY1 IF ~G("RJRomTyp",2) GGT("RJRomCnt",3)~ THEN @754 DO ~IncrementGlobal("RJRomCnt","GLOBAL",1)~
== RJFAY1 IF ~G("RJRomTyp",2) G("RJRomCnt",3)~ THEN @753 DO ~IncrementGlobal("RJRomCnt","GLOBAL",1)~
== RJFAY1 IF ~G("RJRomTyp",2) G("RJRomCnt",2)~ THEN @752 DO ~IncrementGlobal("RJRomCnt","GLOBAL",1)~
== RJFAY1 IF ~G("RJRomTyp",2) G("RJRomCnt",1)~ THEN @751 DO ~IncrementGlobal("RJRomCnt","GLOBAL",1)~
== RJFAY1 IF ~G("RJRomTyp",2) G("RJRomCnt",0)~ THEN @750 DO ~IncrementGlobal("RJRomCnt","GLOBAL",1)~
== RJFAY1 IF ~G("RJRomPrv",2)~ THEN @760 DO ~IncrementGlobal("RJRomCnt","GLOBAL",-1)~
== RJFAY1 @720
END
++ @740 DO ~SetGlobal("RJRomTyp","GLOBAL",0)
            SetGlobal("RJRomPrv","GLOBAL",0)
            SetGlobal("RJFayExtra3","GLOBAL",0)~ EXIT


APPEND RJFAY1

// Fay's Flirts - Must be at the bottom of the file

// Fay-initiated flirts - RomanceActive = 1

IF ~G("RJFayFlirt",1) G("RJFayRomanceActive",1)~ fayfl1
SAY @300
IF ~RandomNum(10,1)~ + fayfl1.1
IF ~RandomNum(10,2)~ + fayfl1.2
IF ~RandomNum(10,3)~ + fayfl1.3
IF ~RandomNum(10,4)~ + fayfl1.4
IF ~RandomNum(10,5)~ + fayfl1.5
IF ~RandomNum(10,6)~ + fayfl1.6
IF ~RandomNum(10,7)~ + fayfl1.7
IF ~RandomNum(10,8)~ + fayfl1.8
IF ~RandomNum(10,9)~ + fayfl1.9
IF ~RandomNum(10,10)~ + fayfl1.10
END

IF ~~ fayfl1.1
SAY @301
IF ~~ EXIT
END

IF ~~ fayfl1.2
SAY @302
IF ~~ EXIT
END

IF ~~ fayfl1.3
SAY @303
IF ~~ EXIT
END

IF ~~ fayfl1.4
SAY @304
IF ~~ EXIT
END

IF ~~ fayfl1.5
SAY @305
IF ~~ EXIT
END

IF ~~ fayfl1.6
SAY @306
IF ~~ THEN REPLY @311 EXIT
END

IF ~~ fayfl1.7
SAY @307
IF ~~ EXIT
END

IF ~~ fayfl1.8
SAY @308
IF ~~ EXIT
END

IF ~~ fayfl1.9
SAY @309
IF ~~ EXIT
END

IF ~~ fayfl1.10
SAY @310
IF ~~ EXIT
END

// Fay-initiated flirts - RomanceActive = 2

IF ~G("RJFayFlirt",1) G("RJFayRomanceActive",2)~ fayfl2
SAY @320
IF ~RandomNum(10,1)~ + fayfl2.1
IF ~RandomNum(10,2)~ + fayfl2.2
IF ~RandomNum(10,3)~ + fayfl2.3
IF ~RandomNum(10,4)~ + fayfl2.4
IF ~RandomNum(10,5)~ + fayfl2.5
IF ~RandomNum(10,6)~ + fayfl2.6
IF ~RandomNum(10,7)~ + fayfl2.7
IF ~RandomNum(10,8)~ + fayfl2.8
IF ~RandomNum(10,9)~ + fayfl2.9
IF ~RandomNum(10,10)~ + fayfl2.10
END

IF ~~ fayfl2.1
SAY @321
IF ~~ THEN REPLY @331 EXIT
END

IF ~~ fayfl2.2
SAY @322
IF ~~ EXIT
END

IF ~~ fayfl2.3
SAY @323
IF ~~ EXIT
END

IF ~~ fayfl2.4
SAY @324
IF ~~ THEN REPLY @332 EXIT
END

IF ~~ fayfl2.5
SAY @325
IF ~~ EXIT
END

IF ~~ fayfl2.6
SAY @326
IF ~~ THEN REPLY @333 EXIT
END

IF ~~ fayfl2.7
SAY @327
IF ~~ EXIT
END

IF ~~ fayfl2.8
SAY @328
IF ~~ EXIT
END

IF ~~ fayfl2.9
SAY @329
IF ~~ THEN REPLY @334 GOTO fayfl2.9.1
END

IF ~~ fayfl2.9.1
SAY @335
IF ~~ THEN REPLY @336 EXIT
END

IF ~~ fayfl2.10
SAY @330
IF ~~ EXIT
END

// Player-initiated dialogue (last thing in file)

IF ~IsGabber(Player1)
    GGT("RJFaySpawn",1)~ FAYPid
SAY @340
+ ~!G("RJFayRomanceActive",2)~ + @341 EXIT
+ ~G("RJFollowFY",0)~ + @343 DO ~SetGlobal("RJFollowFY","GLOBAL",1)~ EXIT
+ ~G("RJFollowFY",1)~ + @344 DO ~SetGlobal("RJFollowFY","GLOBAL",0)~ EXIT
+ ~G("RJFayRomanceActive",2)~ + @342 EXIT
+ ~G("RJFayRomanceActive",2)
   G("RJiniTalk",0)
   G("RJFayBig",0)~ + @500 DO ~SetGlobal("RJiniTalk","GLOBAL",1)~ + fayflt3
+ ~G("RJiniTalk",0)
   G("RJFayBig",1)~ + @501 DO ~SetGlobal("RJiniTalk","GLOBAL",1)~ + fayflt4
+ ~G("RJFayReport",0)~ + @700 DO
            ~SetGlobal("RJFayReport","GLOBAL",1)
             ActionOverride(Player1,CreateCreature("RJINVJI",[-1.-1],0))~ + fayflt9
+ ~G("RJFayReport",1)~ + @701 DO
            ~ActionOverride(Player1,CreateCreature("RJINVJI",[-1.-1],0))~ + fayflt9.1
+ ~G("RJFayRunAway",1)
   G("RJFayCautious",0)~ + @510 DO ~SetGlobal("RJFayCautious","GLOBAL",1)~ + fayflt5
+ ~G("RJFayRomanceActive",1)~ + @345 + fayflt1
+ ~G("RJFayRomanceActive",2)~ + @345 + fayflt2
END

// Flirts - RomanceActive=1

IF ~~ fayflt1
SAY @347

++ @341 EXIT

+ ~RandomNum(2,1)~ + @353 + fayflt1.1.1                // flower
+ ~RandomNum(2,2)~ + @353 + fayflt1.1.2

+ ~RandomNum(2,1)~ + @354 + fayflt1.2.1                // cheek
+ ~RandomNum(2,2)~ + @354 + fayflt1.2.2

+ ~RandomNum(2,1)~ + @355 + fayflt1.3.1                // kiss
+ ~RandomNum(2,2)~ + @355 + fayflt1.3.2

+ ~RandomNum(2,1)~ + @357 + fayflt1.5.1                // hands
+ ~RandomNum(2,2)~ + @357 + fayflt1.5.2

+ ~RandomNum(2,1)~ + @360 + fayflt1.8.1                // beautiful
+ ~RandomNum(2,2)~ + @360 + fayflt1.8.2

+ ~RandomNum(2,1)~ + @362 + fayflt1.10.1               // smile
+ ~RandomNum(2,2)~ + @362 + fayflt1.10.2

+ ~RandomNum(2,1)~ + @365 + fayflt1.13.1               // ogle
+ ~RandomNum(2,2)~ + @365 + fayflt1.13.2

END

// flirts

IF ~~ fayflt1.1.1                   // flower
SAY @370
IF ~~ EXIT
END
IF ~~ fayflt1.1.2
SAY @371
IF ~~ EXIT
END

IF ~~ fayflt1.2.1                   // cheek
SAY @372
IF ~~ EXIT
END
IF ~~ fayflt1.2.2
SAY @373
IF ~~ EXIT
END

IF ~~ fayflt1.3.1                   // kiss
SAY @374
IF ~~ EXIT
END
IF ~~ fayflt1.3.2
SAY @375
IF ~~ EXIT
END

IF ~~ fayflt1.5.1                   // hands
SAY @376
IF ~~ EXIT
END
IF ~~ fayflt1.5.2
SAY @377
IF ~~ EXIT
END

IF ~~ fayflt1.8.1                   // beautiful
SAY @378
++ @379 EXIT
END
IF ~~ fayflt1.8.2
SAY @380
IF ~~ EXIT
END

IF ~~ fayflt1.10.1                  // smile
SAY @385
IF ~~ EXIT
END
IF ~~ fayflt1.10.2
SAY @386
IF ~~ EXIT
END

IF ~~ fayflt1.13.1                  // ogle
SAY @387
IF ~~ EXIT
END
IF ~~ fayflt1.13.2
SAY @388
IF ~~ EXIT
END

// Flirts - RomanceActive=2

IF ~~ fayflt2
SAY @348

++ @342 EXIT

+ ~RandomNum(4,1)~ + @353 + fayflt2.1.1                // flower
+ ~RandomNum(4,2)~ + @353 + fayflt2.1.2
+ ~RandomNum(4,3)~ + @353 + fayflt2.1.3
+ ~RandomNum(4,4)~ + @353 + fayflt2.1.4

+ ~RandomNum(4,1)~ + @354 + fayflt2.2.1                // cheek
+ ~RandomNum(4,2)~ + @354 + fayflt2.2.2
+ ~RandomNum(4,3)~ + @354 + fayflt2.2.3
+ ~RandomNum(4,4)~ + @354 + fayflt2.2.4

+ ~RandomNum(4,1)~ + @355 + fayflt2.3.1                // kiss
+ ~RandomNum(4,2)~ + @355 + fayflt2.3.2
+ ~RandomNum(4,3)~ + @355 + fayflt2.3.3
+ ~RandomNum(4,4)~ + @355 + fayflt2.3.4

+ ~RandomNum(4,1)~ + @357 + fayflt2.5.1                // hands
+ ~RandomNum(4,2)~ + @357 + fayflt2.5.2
+ ~RandomNum(4,3)~ + @357 + fayflt2.5.3
+ ~RandomNum(4,4)~ + @357 + fayflt2.5.4

+ ~RandomNum(4,1)~ + @358 + fayflt2.6.1                // arms
+ ~RandomNum(4,2)~ + @358 + fayflt2.6.2
+ ~RandomNum(4,3)~ + @358 + fayflt2.6.3
+ ~RandomNum(4,4)~ + @358 + fayflt2.6.4

+ ~RandomNum(4,1)~ + @359 + fayflt2.7.1                // want
+ ~RandomNum(4,2)~ + @359 + fayflt2.7.2
+ ~RandomNum(4,3)~ + @359 + fayflt2.7.3
+ ~RandomNum(4,4)~ + @359 + fayflt2.7.4

+ ~RandomNum(4,1)~ + @360 + fayflt2.8.1                // beautiful
+ ~RandomNum(4,2)~ + @360 + fayflt2.8.2
+ ~RandomNum(4,3)~ + @360 + fayflt2.8.3
+ ~RandomNum(4,4)~ + @360 + fayflt2.8.4

+ ~RandomNum(4,1)~ + @361 + fayflt2.9.1                // hug
+ ~RandomNum(4,2)~ + @361 + fayflt2.9.2
+ ~RandomNum(4,3)~ + @361 + fayflt2.9.3
+ ~RandomNum(4,4)~ + @361 + fayflt2.9.4

+ ~RandomNum(4,1)~ + @362 + fayflt2.10.1               // smile
+ ~RandomNum(4,2)~ + @362 + fayflt2.10.2
+ ~RandomNum(4,3)~ + @362 + fayflt2.10.3
+ ~RandomNum(4,4)~ + @362 + fayflt2.10.4

+ ~RandomNum(4,1)~ + @363 + fayflt2.11.1               // love
+ ~RandomNum(4,2)~ + @363 + fayflt2.11.2
+ ~RandomNum(4,3)~ + @363 + fayflt2.11.3
+ ~RandomNum(4,4)~ + @363 + fayflt2.11.4

+ ~RandomNum(3,1)~ + @365 + fayflt2.13.1               // ogle
+ ~RandomNum(3,2)~ + @365 + fayflt2.13.2
+ ~RandomNum(3,3)~ + @365 + fayflt2.13.3

END

// flirts

IF ~~ fayflt2.1.1                   // flower
SAY @390
IF ~~ EXIT
END
IF ~~ fayflt2.1.2
SAY @391
IF ~~ EXIT
END
IF ~~ fayflt2.1.3
SAY @392
IF ~~ EXIT
END
IF ~~ fayflt2.1.4
SAY @393
IF ~~ EXIT
END

IF ~~ fayflt2.2.1                   // cheek
SAY @394
IF ~~ EXIT
END
IF ~~ fayflt2.2.2
SAY @395
IF ~~ EXIT
END
IF ~~ fayflt2.2.3
SAY @396
IF ~~ EXIT
END
IF ~~ fayflt2.2.4
SAY @397
IF ~~ EXIT
END

IF ~~ fayflt2.3.1                   // kiss
SAY @398
IF ~~ EXIT
END
IF ~~ fayflt2.3.2
SAY @399
IF ~~ EXIT
END
IF ~~ fayflt2.3.3
SAY @400 = @401
IF ~~ EXIT
END
IF ~~ fayflt2.3.4
SAY @402
IF ~~ EXIT
END

IF ~~ fayflt2.5.1                   // hands
SAY @411
IF ~~ EXIT
END
IF ~~ fayflt2.5.2
SAY @412 = @413
IF ~~ EXIT
END
IF ~~ fayflt2.5.3
SAY @414
IF ~~ EXIT
END
IF ~~ fayflt2.5.4
SAY @415
IF ~~ EXIT
END

IF ~~ fayflt2.6.1                   // arms
SAY @416
IF ~~ EXIT
END
IF ~~ fayflt2.6.2
SAY @417
IF ~~ EXIT
END
IF ~~ fayflt2.6.3
SAY @418
IF ~~ EXIT
END
IF ~~ fayflt2.6.4
SAY @419
IF ~~ EXIT
END

IF ~~ fayflt2.7.1                   // want
SAY @420
IF ~~ EXIT
END
IF ~~ fayflt2.7.2
SAY @421
IF ~~ EXIT
END
IF ~~ fayflt2.7.3
SAY @422
IF ~~ EXIT
END
IF ~~ fayflt2.7.4
SAY @423
IF ~~ EXIT
END

IF ~~ fayflt2.8.1                   // beautiful
SAY @426
++ @427 EXIT
END
IF ~~ fayflt2.8.2
SAY @428
IF ~~ EXIT
END
IF ~~ fayflt2.8.3
SAY @429
++ @430 EXIT
END
IF ~~ fayflt2.8.4
SAY @431
IF ~~ EXIT
END

IF ~~ fayflt2.9.1                   // hug
SAY @432
IF ~~ EXIT
END
IF ~~ fayflt2.9.2
SAY @433 = @434
++ @435 EXIT
END
IF ~~ fayflt2.9.3
SAY @436
IF ~~ EXIT
END
IF ~~ fayflt2.9.4
SAY @437 = @438
IF ~~ EXIT
END

IF ~~ fayflt2.10.1                  // smile
SAY @439
IF ~~ EXIT
END
IF ~~ fayflt2.10.2
SAY @440
IF ~~ EXIT
END
IF ~~ fayflt2.10.3
SAY @441
IF ~~ EXIT
END
IF ~~ fayflt2.10.4
SAY @442
IF ~~ EXIT
END

IF ~~ fayflt2.11.1                  // love
SAY @443
IF ~~ EXIT
END
IF ~~ fayflt2.11.2
SAY @444
IF ~~ EXIT
END
IF ~~ fayflt2.11.3
SAY @445
IF ~~ EXIT
END
IF ~~ fayflt2.11.4
SAY @446
++ @447 EXIT
END

IF ~~ fayflt2.13.1                  // ogle
SAY @454
IF ~~ EXIT
END
IF ~~ fayflt2.13.2
SAY @455
IF ~~ EXIT
END
IF ~~ fayflt2.13.3
SAY @456
IF ~~ EXIT
END

// Dream Sequence

IF ~~ fayflt3
SAY @503 = @504 = @505 = @506 = @507
IF ~~ THEN REPLY @508 GOTO fayflt3.9
END

IF ~~ fayflt3.9
SAY @502
IF ~~ DO ~StartCutSceneMode()
          StartCutScene("RJCUT606")~ EXIT
END

IF ~~ fayflt4
SAY @509
IF ~~ THEN GOTO fayflt3.9
END

// Fay is cautious

IF ~~ fayflt5
SAY @540 = @541 = @542
IF ~~ THEN REPLY @543 GOTO fayflt5.1
END

IF ~~ fayflt5.1
SAY @544
IF ~~ THEN REPLY @545 EXIT
END

// Fay gives you a report on your romantic standings

IF ~~ fayflt9
SAY @702
IF ~G("RJSoD",0)~ THEN EXTERN RJFAY1 fayflt9.2
IF ~G("RJSoD",1)~ THEN EXTERN RJFAY1 fayflt9.3
END

IF ~~ fayflt9.1
SAY @704
IF ~G("RJSoD",0)~ THEN EXTERN RJFAY1 fayflt9.2
IF ~G("RJSoD",1)~ THEN EXTERN RJFAY1 fayflt9.3
END

END

CHAIN IF ~~ THEN RJFAY1 fayflt9.2
@703
== RJFAY1 IF ~G("RJFayRomanceActive",1)~ THEN @715
== RJFAY1 IF ~G("RJFayRomanceActive",2)~ THEN @705
== RJINVJI IF ~G("RJiniRomanceActive",1)~ THEN @706
== RJINVJI IF ~G("RJiniRomanceActive",2)~ THEN @707
== C0SIRENJ IF ~InParty("C0Sirene") G("RJSIROMBG1",0)~ THEN @714
== C0SIRENJ IF ~InParty("C0Sirene") G("RJSIROMBG1",1)~ THEN @716
== C0SIRENJ IF ~InParty("C0Sirene") G("RJSIROMBG1",2)~ THEN @717
== C0SIRENJ IF ~InParty("C0Sirene") G("RJSIROMBG1",3)~ THEN @719
== NEERAJ%rj_eet_suff% IF ~InParty("Neera") G("NEERA_ROMANCE",0)~ THEN @714
== NEERAJ%rj_eet_suff% IF ~InParty("Neera") G("NEERA_ROMANCE",1)~ THEN @716
== NEERAJ%rj_eet_suff% IF ~InParty("Neera") G("NEERA_ROMANCE",2)~ THEN @717
== NEERAJ%rj_eet_suff% IF ~InParty("Neera") G("NEERA_ROMANCE",3)~ THEN @718
== BRANWJ IF ~InParty("Branwen") G("P#BranwenRomanceActive",0)~ THEN @714
== BRANWJ IF ~InParty("Branwen") G("P#BranwenRomanceActive",1)~ THEN @706
== BRANWJ IF ~InParty("Branwen") G("P#BranwenRomanceActive",2)~ THEN @707
== BRANWJ IF ~InParty("Branwen") G("P#BranwenRomanceActive",3)~ THEN @719
== DYNAHJ IF ~InParty("Dynaheir") G("X#DynaheirRomanceActive",0)~ THEN @714
== DYNAHJ IF ~InParty("Dynaheir") G("X#DynaheirRomanceActive",1)~ THEN @706
== DYNAHJ IF ~InParty("Dynaheir") G("X#DynaheirRomanceActive",2)~ THEN @707
== DYNAHJ IF ~InParty("Dynaheir") G("X#DynaheirRomanceActive",3)~ THEN @719
== SHARTJ IF ~InParty("Sharteel") G("X#SharInterest",0)~ THEN @714
== SHARTJ IF ~InParty("Sharteel") G("X#SharInterest",1)~ THEN @706
== SHARTJ IF ~InParty("Sharteel") G("X#SharInterest",2)~ THEN @707
== SHARTJ IF ~InParty("Sharteel") G("X#SharInterest",3)~ THEN @719
== SHARTJ IF ~InParty("Sharteel") G("X#SharInterest",-1)~ THEN @719
== RH#ISRAJ IF ~InParty("rh#isra") G("rh#IsraRomanceCheck",0)~ THEN @714
== RH#ISRAJ IF ~InParty("rh#isra") G("rh#IsraRomanceCheck",1)~ THEN @706
== RH#ISRAJ IF ~InParty("rh#isra") G("rh#IsraRomanceCheck",2)~ THEN @719
== RJFAY1 IF ~G("RJRomCnt",1)~ THEN @709
== RJFAY1 IF ~G("RJRomCnt",2)~ THEN @710
== RJFAY1 IF ~GGT("RJRomCnt",2)~ THEN @711
END
++ @708 DO ~ActionOverride("RJINVJI",DestroySelf())~ EXIT

CHAIN IF ~~ THEN RJFAY1 fayflt9.3
@703
== RJFAY1 IF ~G("RJFayRomanceActive",1)~ THEN @715
== RJFAY1 IF ~G("RJFayRomanceActive",2)~ THEN @705
== RJINVJI IF ~G("RJiniRomanceActive",1)~ THEN @706
== RJINVJI IF ~G("RJiniRomanceActive",2)~ THEN @707

BRANCH ~InParty("Branwen")~ BEGIN
== RJFAY1 @765
== BDBRANWJ IF ~G("P#BranwenRomanceActive",0)~ THEN @714
== BDBRANWJ IF ~G("P#BranwenRomanceActive",1)~ THEN @706
== BDBRANWJ IF ~G("P#BranwenRomanceActive",2)~ THEN @707
== BDBRANWJ IF ~G("P#BranwenRomanceActive",3)~ THEN @719
END

BRANCH ~InParty("Dynaheir")~ BEGIN
== RJFAY1 @765
== BDDYNAHJ IF ~G("X#DynaheirRomanceActive",0)~ THEN @714
== BDDYNAHJ IF ~G("X#DynaheirRomanceActive",1)~ THEN @706
== BDDYNAHJ IF ~G("X#DynaheirRomanceActive",2)~ THEN @707
== BDDYNAHJ IF ~G("X#DynaheirRomanceActive",3)~ THEN @719
END

BRANCH ~InParty("Safana")~ BEGIN
== RJFAY1 @765
== BDSAFANJ IF ~G("bd_safana_romanceactive",0)~ THEN @714
== BDSAFANJ IF ~G("bd_safana_romanceactive",1)~ THEN @706
== BDSAFANJ IF ~G("bd_safana_romanceactive",2)~ THEN @707
== BDSAFANJ IF ~G("bd_safana_romanceactive",3)~ THEN @719
END

BRANCH ~InParty("Safana") !G("bd_safana_romanceactive",3)~ BEGIN
== BDSAFANJ IF ~G("bd_SafanaRomance1",0)~ THEN @770
== BDSAFANJ IF ~G("bd_SafanaRomance2",0)
                !G("bd_SafanaRomance1",0)~ THEN @771
== BDSAFANJ IF ~G("bd_SafanaRomance3",0)
                !G("bd_SafanaRomance2",0)~ THEN @775
== BDSAFANJ IF ~G("bd_SafanaRomance4",0)
                !G("bd_SafanaRomance3",0)~ THEN @773
== BDSAFANJ IF ~G("bd_SafanaRomance5",0)
                !G("bd_SafanaRomance4",0)~ THEN @773
== BDSAFANJ IF ~G("bd_SafanaRomance6",0)
                !G("bd_SafanaRomance5",0)~ THEN @779
END

BRANCH ~InParty("Viconia")~ BEGIN
== RJFAY1 @765
== BDVICONJ IF ~G("bd_viconia_romanceactive",0)~ THEN @714
== BDVICONJ IF ~G("bd_viconia_romanceactive",1)~ THEN @706
== BDVICONJ IF ~G("bd_viconia_romanceactive",2)~ THEN @707
== BDVICONJ IF ~G("bd_viconia_romanceactive",3)~ THEN @719
END

BRANCH ~InParty("Viconia") !G("bd_viconia_romanceactive",3)~ BEGIN
== BDVICONJ IF ~G("bd_ViconiaRomance1",0)~ THEN @771
== BDVICONJ IF ~G("bd_ViconiaRomance2",0)
                !G("bd_ViconiaRomance1",0)~ THEN @775
== BDVICONJ IF ~G("bd_ViconiaRomance3",0)
                !G("bd_ViconiaRomance2",0)~ THEN @778
== BDVICONJ IF ~G("bd_ViconiaRomance4",0)
                !G("bd_ViconiaRomance3",0)~ THEN @773
== BDVICONJ IF ~G("bd_ViconiaRomance5",0)
                !G("bd_ViconiaRomance4",0)~ THEN @773
== BDVICONJ IF ~G("bd_ViconiaRomance6",0)
                !G("bd_ViconiaRomance5",0)~ THEN @779
END

BRANCH ~InParty("Neera")~ BEGIN
== RJFAY1 @765
== BDNEERAJ IF ~G("bd_neera_romanceactive",0)~ THEN @714
== BDNEERAJ IF ~G("bd_neera_romanceactive",1)~ THEN @706
== BDNEERAJ IF ~G("bd_neera_romanceactive",2)~ THEN @707
== BDNEERAJ IF ~G("bd_neera_romanceactive",3)~ THEN @719
END

BRANCH ~InParty("Neera") !G("bd_neera_romanceactive",3)~ BEGIN
== BDNEERAJ IF ~G("bd_NeeraRomance1",0)~ THEN @776
== BDNEERAJ IF ~G("bd_NeeraRomance2",0)
                !G("bd_NeeraRomance1",0)~ THEN @778
== BDNEERAJ IF ~G("bd_NeeraRomance3",0)
                !G("bd_NeeraRomance2",0)~ THEN @773
== BDNEERAJ IF ~G("bd_NeeraRomance4",0)
                !G("bd_NeeraRomance3",0)~ THEN @778
== BDNEERAJ IF ~G("bd_NeeraRomance5",0)
                !G("bd_NeeraRomance4",0)~ THEN @779
== BDNEERAJ IF ~G("bd_NeeraRomance6",0)
                !G("bd_NeeraRomance5",0)~ THEN @774
END

BRANCH ~InParty("Corwin")~ BEGIN
== RJFAY1 @765
== BDCORWIJ IF ~G("bd_corwin_romanceactive",0)~ THEN @714
== BDCORWIJ IF ~G("bd_corwin_romanceactive",1)~ THEN @706
== BDCORWIJ IF ~G("bd_corwin_romanceactive",2)~ THEN @707
== BDCORWIJ IF ~G("bd_corwin_romanceactive",3)~ THEN @719
END

BRANCH ~InParty("Corwin") !G("bd_corwin_romanceactive",3)~ BEGIN
== BDCORWIJ IF ~G("bd_CorwinRomance1",0)~ THEN @770
== BDCORWIJ IF ~G("bd_CorwinRomance2",0)
                !G("bd_CorwinRomance1",0)~ THEN @771
== BDCORWIJ IF ~G("bd_CorwinRomance3",0)
                !G("bd_CorwinRomance2",0)~ THEN @772
== BDCORWIJ IF ~G("bd_CorwinRomance4",0)
                !G("bd_CorwinRomance3",0)~ THEN @777
== BDCORWIJ IF ~G("bd_CorwinRomance5",0)
                !G("bd_CorwinRomance4",0)~ THEN @773
== BDCORWIJ IF ~G("bd_CorwinRomance6",0)
                !G("bd_CorwinRomance5",0)~ THEN @774
END

BRANCH ~InParty("C0Sirene")~ BEGIN
== RJFAY1 @765
== C02SIREJ IF ~G("C02SireneRomanceActive",0)~ THEN @714
== C02SIREJ IF ~G("C02SireneRomanceActive",1)~ THEN @706
== C02SIREJ IF ~G("C02SireneRomanceActive",2)~ THEN @707
== C02SIREJ IF ~G("C02SireneRomanceActive",3)~ THEN @719
END

== RJFAY1 IF ~GLT("RJRomCnt",1)~ THEN @764
== RJFAY1 IF ~G("RJRomCnt",1)~ THEN @709
== RJFAY1 IF ~G("RJRomCnt",2)~ THEN @710
== RJFAY1 IF ~G("RJRomCnt",3)~ THEN @711
== RJFAY1 IF ~G("RJRomCnt",4)~ THEN @712
== RJFAY1 IF ~GGT("RJRomCnt",4)~ THEN @713
END
++ @708 DO ~ActionOverride("RJINVJI",DestroySelf())~ EXIT
