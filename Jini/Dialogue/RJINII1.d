
BEGIN RJINII1

//  Jini's Romance Talks

IF ~~ THEN BEGIN 0    // Exit retry later
  SAY @502
IF ~~ THEN DO ~RealSetGlobalTimer("RJiniRomance","GLOBAL",RJ_QUICK)
               SetGlobal("RJiniTalk","GLOBAL",0)
               IncrementGlobal("RJiniTalks","GLOBAL",-1)
               DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 1    // Exit end outside talk
  SAY @503
IF ~GLT("Chapter",4)~ THEN DO ~RealSetGlobalTimer("RJiniRomance","GLOBAL",RJ_TALK)
                               SetGlobal("RJiniTalk","GLOBAL",0)
                               IncrementGlobal("RJiniTalks","GLOBAL",1)
                               DestroySelf()~ EXIT
IF ~G("Chapter",4)~ THEN DO ~RealSetGlobalTimer("RJiniRomance","GLOBAL",RJ_FAST)
                             SetGlobal("RJiniTalk","GLOBAL",0)
                             IncrementGlobal("RJiniTalks","GLOBAL",1)
                             DestroySelf()~ EXIT
IF ~G("Chapter",5)~ THEN DO ~RealSetGlobalTimer("RJiniRomance","GLOBAL",RJ_QUICK)
                             SetGlobal("RJiniTalk","GLOBAL",0)
                             IncrementGlobal("RJiniTalks","GLOBAL",1)
                             DestroySelf()~ EXIT
IF ~GLT("RJiniTalks",25)
    GGT("Chapter",5)~ THEN DO ~RealSetGlobalTimer("RJiniRomance","GLOBAL",RJ_FAST)
                               SetGlobal("RJiniTalk","GLOBAL",0)
                               IncrementGlobal("RJiniTalks","GLOBAL",1)
                               DestroySelf()~ EXIT
IF ~!GLT("RJiniTalks",25)
    GGT("Chapter",5)~ THEN DO ~RealSetGlobalTimer("RJiniRomance","GLOBAL",RJ_FLIRT)
                               SetGlobal("RJiniTalk","GLOBAL",0)
                               IncrementGlobal("RJiniTalks","GLOBAL",1)
                               DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 2    // Exit start inside talk
  SAY @504
IF ~G("RJiniSpawn",0)~ THEN DO ~DestroySelf()
                                StartCutSceneMode()
                                StartCutScene("RJCUS604")~ EXIT
IF ~G("RJiniSpawn",1)~ THEN DO ~DestroySelf()
                                StartCutSceneMode()
                                StartCutScene("RJCUT604")~ EXIT
END

IF ~~ THEN BEGIN 3    // Exit end extra talk
  SAY @503
IF ~~ THEN DO ~SetGlobal("RJiniTalk","GLOBAL",0)
               DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 4    // Exit end sleep talk
  SAY @732
IF ~~ THEN DO ~RealSetGlobalTimer("RJSleepTimer","GLOBAL",RJ_FLIRT)
               DestroySelf()
               StartCutSceneMode()
               StartCutScene("RJJINSLP")~ EXIT
END

//  Talk 1 - I'm bored

IF ~G("RJiniTalks",2)~ THEN BEGIN jlti1
  SAY @500
IF ~~ THEN REPLY @501 GOTO 0
IF ~~ THEN REPLY @510 DO ~SetGlobal("RJiniTalk","GLOBAL",2)~ GOTO jlti1.1
END

IF ~~ THEN BEGIN jlti1.1
  SAY @511
IF ~~ THEN REPLY @525 GOTO jlti1.2
IF ~~ THEN REPLY @512 GOTO jlti1.6
END

IF ~~ THEN BEGIN jlti1.2
  SAY @526 = @527
IF ~~ THEN REPLY @528 GOTO jlti1.3
END

IF ~~ THEN BEGIN jlti1.3
  SAY @529 = @530
IF ~~ THEN REPLY @512 GOTO jlti1.6
END

IF ~~ THEN BEGIN jlti1.6
  SAY @513 = @514 = @515
IF ~~ THEN REPLY @516 GOTO jlti1.7
END

IF ~~ THEN BEGIN jlti1.7
  SAY @517 = @518
IF ~~ THEN REPLY @519 GOTO jlti1.8
END

IF ~~ THEN BEGIN jlti1.8
  SAY @520 = @521
IF ~~ THEN REPLY @522 GOTO jlti1.9
END

IF ~~ THEN BEGIN jlti1.9
  SAY @523
IF ~~ THEN REPLY @524 GOTO 1
END

//  Talk 2 - Tiff

IF ~G("RJiniTalks",4)~ THEN BEGIN jlti2
  SAY @540 = @541
IF ~~ THEN REPLY @501 DO ~SetGlobal("RJiniTalk","GLOBAL",2)~ GOTO jlti2.1
IF ~~ THEN REPLY @542 DO ~SetGlobal("RJiniTalk","GLOBAL",2)~ GOTO jlti2.2
END

IF ~~ THEN BEGIN jlti2.1
  SAY @543
IF ~~ THEN REPLY @542 GOTO jlti2.2
END

IF ~~ THEN BEGIN jlti2.2
  SAY @544
IF ~~ THEN REPLY @545 GOTO jlti2.3
IF ~~ THEN REPLY @546 GOTO jlti2.4
END

IF ~~ THEN BEGIN jlti2.3
  SAY @547
IF ~~ THEN REPLY @546 GOTO jlti2.4
END

IF ~~ THEN BEGIN jlti2.4
  SAY @548 = @549
IF ~~ THEN REPLY @550 GOTO jlti2.9
END

IF ~~ THEN BEGIN jlti2.9
  SAY @551
IF ~~ THEN REPLY @552 GOTO 1
END

//  Talk 3 - Apologies

IF ~G("RJiniTalks",6)~ THEN BEGIN jlti3
  SAY @560
IF ~~ THEN REPLY @501 GOTO 0
IF ~~ THEN REPLY @561 DO ~SetGlobal("RJiniTalk","GLOBAL",2)~ GOTO jlti3.1
END

IF ~~ THEN BEGIN jlti3.1
  SAY @562 = @563 = @564
IF ~~ THEN REPLY @565 GOTO jlti3.2
END

IF ~~ THEN BEGIN jlti3.2
  SAY @566
IF ~~ THEN REPLY @567 GOTO jlti3.3
END

IF ~~ THEN BEGIN jlti3.3
  SAY @568 = @569 = @570 = @571
IF ~~ THEN REPLY @572 GOTO jlti3.4
END

IF ~~ THEN BEGIN jlti3.4
  SAY @573 = @574
IF ~~ THEN REPLY @575 GOTO jlti3.9
END

IF ~~ THEN BEGIN jlti3.9
  SAY @576
IF ~~ THEN REPLY @577 DO ~SetGlobal("RJiniRescue","GLOBAL",1)~ GOTO 1
END

//  Talk 4 - Affection

IF ~G("RJiniTalks",8)~ THEN BEGIN jlti4
  SAY @580
IF ~~ THEN REPLY @501 GOTO 0
IF ~~ THEN REPLY @581 DO ~SetGlobal("RJiniTalk","GLOBAL",2)~ GOTO jlti4.1
END

IF ~~ THEN BEGIN jlti4.1
  SAY @582
IF ~~ THEN REPLY @583 GOTO jlti4.2
IF ~~ THEN REPLY @584 GOTO jlti4.3
END

IF ~~ THEN BEGIN jlti4.2
  SAY @585
IF ~~ THEN REPLY @584 GOTO jlti4.3
END

IF ~~ THEN BEGIN jlti4.3
  SAY @587 = @588
IF ~~ THEN REPLY @589 GOTO jlti4.4
END

IF ~~ THEN BEGIN jlti4.4
  SAY @590
IF ~~ THEN REPLY @595 GOTO jlti4.5
END

IF ~~ THEN BEGIN jlti4.5
  SAY @596 = @597 = @598
IF ~~ THEN REPLY @599 DO ~AddJournalEntry(@6006,USER)~ GOTO jlti4.8
END

IF ~~ THEN BEGIN jlti4.8
  SAY @591
IF ~~ THEN REPLY @592 GOTO jlti4.9
END

IF ~~ THEN BEGIN jlti4.9
  SAY @593
IF ~~ THEN REPLY @594 GOTO 1
END

//  Talk 5 - First Kiss

IF ~G("RJiniTalks",10)~ THEN BEGIN jlti5
  SAY @600
IF ~~ THEN REPLY @501 GOTO 0
IF ~~ THEN REPLY @601 DO ~SetGlobal("RJiniTalk","GLOBAL",2)~ GOTO jlti5.1
END

IF ~~ THEN BEGIN jlti5.1
  SAY @602
IF ~~ THEN REPLY @603 GOTO jlti5.2
END

IF ~~ THEN BEGIN jlti5.2
  SAY @604 = @605 = @606 = @607
IF ~~ THEN REPLY @608 GOTO jlti5.3
END

IF ~~ THEN BEGIN jlti5.3
  SAY @609
IF ~~ THEN REPLY @610 GOTO jlti5.9
END

IF ~~ THEN BEGIN jlti5.9
  SAY @611
IF ~~ THEN GOTO 1
END

//  Talk 6 - Invitation

IF ~G("RJiniTalks",12)~ THEN BEGIN jlti6
  SAY @620
IF ~~ THEN REPLY @501 GOTO 0
IF ~~ THEN REPLY @621 DO ~SetGlobal("RJiniTalk","GLOBAL",2)~ GOTO jlti6.1
END

IF ~~ THEN BEGIN jlti6.1
  SAY @622
IF ~~ THEN REPLY @625 GOTO jlti6.2
END

IF ~~ THEN BEGIN jlti6.2
  SAY @626 = @627
IF ~~ THEN REPLY @628 GOTO jlti6.9
END

IF ~~ THEN BEGIN jlti6.9
  SAY @629 = @623
IF ~~ THEN REPLY @624 GOTO 2
END

//  Talk 7 - Beginnings

IF ~G("RJiniTalks",14)~ THEN BEGIN jlti7
  SAY @630
IF ~~ THEN REPLY @631 DO ~SetGlobal("RJiniTalk","GLOBAL",2)
      RealSetGlobalTimer("RJSleepTimer","GLOBAL",RJ_QUICK)~ GOTO jlti7.9
END

IF ~~ THEN BEGIN jlti7.9
  SAY @632
IF ~~ THEN REPLY @633 GOTO 2
END

//  Talk 8 - Freedom

IF ~G("RJiniTalks",16)~ THEN BEGIN jlti8
  SAY @640
IF ~~ THEN REPLY @501 GOTO 0
IF ~~ THEN REPLY @641 DO ~SetGlobal("RJiniTalk","GLOBAL",2)~ GOTO 2
END

//  Talk 10 - Stroll

IF ~G("RJiniTalks",20)~ THEN BEGIN jlti10
  SAY @670
IF ~~ THEN REPLY @501 GOTO 0
IF ~~ THEN REPLY @671 DO ~SetGlobal("RJiniTalk","GLOBAL",2)~ GOTO jlti10.1
END

IF ~~ THEN BEGIN jlti10.1
  SAY @672
IF ~~ THEN REPLY @673 GOTO jlti10.2
END

IF ~~ THEN BEGIN jlti10.2
  SAY @674 = @675 = @676 = @677 = @678
IF ~~ THEN REPLY @679 GOTO jlti10.3
END

IF ~~ THEN BEGIN jlti10.3
  SAY @680 = @681
IF ~~ THEN REPLY @682 GOTO jlti10.9
END

IF ~~ THEN BEGIN jlti10.9
  SAY @683 = @684
IF ~~ THEN REPLY @685 GOTO 1
END

//  Talk 14 - Hero/Fathead

IF ~G("RJiniTalks",28)~ THEN BEGIN jlti14
  SAY @950 = @951
IF ~~ THEN REPLY @501 GOTO 0
IF ~~ THEN REPLY @952 DO ~SetGlobal("RJiniTalk","GLOBAL",2)~ GOTO jlti14.2
IF ~~ THEN REPLY @953 DO ~SetGlobal("RJiniTalk","GLOBAL",2)~ GOTO jlti14.1
IF ~~ THEN REPLY @954 DO ~SetGlobal("RJiniTalk","GLOBAL",2)~ GOTO jlti14.3
END

IF ~~ THEN BEGIN jlti14.1
  SAY @955
IF ~~ THEN REPLY @956 GOTO jlti14.1.1
END

IF ~~ THEN BEGIN jlti14.1.1
  SAY @957
IF ~~ THEN REPLY @958 GOTO jlti14.4
END

IF ~~ THEN BEGIN jlti14.2
  SAY @959 = @960
IF ~~ THEN REPLY @958 GOTO jlti14.4
END

IF ~~ THEN BEGIN jlti14.3
  SAY @961
IF ~~ THEN REPLY @962 GOTO jlti14.3.1
END

IF ~~ THEN BEGIN jlti14.3.1
  SAY @963
IF ~~ THEN REPLY @964 GOTO jlti14.3.2
END

IF ~~ THEN BEGIN jlti14.3.2
  SAY @965
IF ~~ THEN REPLY @958 GOTO jlti14.4
END

IF ~~ THEN BEGIN jlti14.4
  SAY @966 = @967 = @968
IF ~~ THEN REPLY @969 GOTO jlti14.9
END

IF ~~ THEN BEGIN jlti14.9
  SAY @970
IF ~~ THEN REPLY @971 GOTO 1
END

//  Talk 16 - Blood War/Sigil

IF ~G("RJiniTalks",32)~ THEN BEGIN jlti16
  SAY @1000 = @1001 = @1002
IF ~~ THEN REPLY @1003 DO ~SetGlobal("RJiniTalk","GLOBAL",2)~ GOTO jlti16.1
END

IF ~~ THEN BEGIN jlti16.1
  SAY @1004 = @1005 = @1006 = @1007
IF ~~ THEN REPLY @1008 GOTO jlti16.2
END

IF ~~ THEN BEGIN jlti16.2
  SAY @1009 = @1010
IF ~~ THEN REPLY @1011 GOTO jlti16.3
END

IF ~~ THEN BEGIN jlti16.3
  SAY @1012 = @1013
IF ~~ THEN REPLY @1014 GOTO jlti16.4
END

IF ~~ THEN BEGIN jlti16.4
  SAY @1015
IF ~~ THEN REPLY @1016 GOTO jlti16.9
END

IF ~~ THEN BEGIN jlti16.9
  SAY @1017
IF ~~ THEN REPLY @1018 GOTO 1
END

//  Jini Comes out to Sleep (sort of)

IF ~G("RJiniSleep",1)~ THEN BEGIN slpi
  SAY @730
IF ~~ THEN DO ~SetGlobal("RJiniTalk","GLOBAL",2)
               SetGlobal("RJiniSleep","GLOBAL",2)~ GOTO slpi1
END

IF ~~ THEN BEGIN slpi1
  SAY @733
IF ~RandomNum(4,1)~ THEN REPLY @731 GOTO 4
IF ~RandomNum(4,2)~ THEN REPLY @734 GOTO 4
IF ~RandomNum(4,3)~ THEN REPLY @735 GOTO 4
IF ~RandomNum(4,4)~ THEN REPLY @736 GOTO 4
END

//  Jini rescues you from a gender change

IF ~G("RJGender",1)~ THEN BEGIN gndi1
  SAY @750
IF ~HasItemEquiped("BELT05",Player1)~ THEN REPLY @751 DO ~
              SetGlobal("RJiniTalk","GLOBAL",2)~ GOTO gndi1.0
IF ~!HasItemEquiped("BELT05",Player1)~ THEN REPLY @751 DO ~
              SetGlobal("RJiniTalk","GLOBAL",2)~ GOTO gndi1.1
END

IF ~~ THEN BEGIN gndi1.0
  SAY @753
IF ~~ THEN DO ~TakePartyItem("BELT05")
               DestroyItem("BELT05")~ GOTO gndi1.2
END

IF ~~ THEN BEGIN gndi1.1
  SAY @753
IF ~~ THEN DO ~ChangeGender(Player1,MALE)~ GOTO gndi1.2
END

IF ~~ THEN BEGIN gndi1.2
  SAY @754 = @755
IF ~~ THEN REPLY @756 GOTO gndi1.9
END

IF ~~ THEN BEGIN gndi1.9
  SAY @757
IF ~~ THEN REPLY @758 DO ~SetGlobal("RJGender","GLOBAL",0)~ GOTO 3
END

//  Extra Talks

//  1 - Jini Investigates

IF ~G("RJiniExtra1",1)~ THEN BEGIN exti1
  SAY @665
IF ~~ THEN REPLY @666 DO ~SetGlobal("RJiniTalk","GLOBAL",2)
                          SetGlobal("RJiniExtra1","GLOBAL",2)~ GOTO exti1.0
END

IF ~~ THEN BEGIN exti1.0
  SAY @650 = @651 = @652 = @653 = @654
IF ~~ THEN REPLY @655 GOTO exti1.1   
END

IF ~~ THEN BEGIN exti1.1
  SAY @656
IF ~~ THEN REPLY @657 GOTO exti1.2
END

IF ~~ THEN BEGIN exti1.2
  SAY @658 = @659 = @660 = @661
IF ~~ THEN REPLY @662 GOTO exti1.9
END

IF ~~ THEN BEGIN exti1.9
  SAY @663
IF ~~ THEN REPLY @664 DO ~AddJournalEntry(@6003,USER)~ GOTO 3
END

//  2 - After the Cloakwood Mine

IF ~G("RJiniExtra2",1)~ THEN BEGIN exti2
  SAY @645
IF ~~ THEN REPLY @690 DO ~SetGlobal("RJiniTalk","GLOBAL",2)
                          SetGlobal("RJiniExtra2","GLOBAL",2)~ GOTO exti2.1
END

IF ~~ THEN BEGIN exti2.1
  SAY @691
IF ~~ THEN REPLY @692 GOTO exti2.2
END

IF ~~ THEN BEGIN exti2.2
  SAY @693 = @694 = @695
IF ~~ THEN REPLY @696 GOTO exti2.9
END

IF ~~ THEN BEGIN exti2.9
  SAY @697 = @698
IF ~~ THEN REPLY @699 GOTO 3
END

// 3 - My Mysterious Shadow

IF ~G("RJiniExtra3",1)~ THEN BEGIN exti3
  SAY @645
IF ~~ THEN REPLY @710 DO ~SetGlobal("RJiniTalk","GLOBAL",2)
                          SetGlobal("RJiniExtra3","GLOBAL",2)~ GOTO exti3.1
END

IF ~~ THEN BEGIN exti3.1
  SAY @711
IF ~~ THEN REPLY @712 GOTO exti3.2
END

IF ~~ THEN BEGIN exti3.2
  SAY @713 = @714
IF ~~ THEN REPLY @715 GOTO exti3.3
END

IF ~~ THEN BEGIN exti3.3
  SAY @716 = @717
IF ~~ THEN REPLY @718 GOTO exti3.9
END

IF ~~ THEN BEGIN exti3.9
  SAY @719
IF ~~ THEN DO ~AddJournalEntry(@6004,USER)~ GOTO 3
END

// 4 - Jini has checked things out in Candlekeep

IF ~G("RJiniExtra4",1)~ THEN BEGIN exti4
  SAY @770
IF ~~ THEN REPLY @771 DO ~SetGlobal("RJiniTalk","GLOBAL",2)
                          SetGlobal("RJiniExtra4","GLOBAL",2)~ GOTO exti4.1
END

IF ~~ THEN BEGIN exti4.1
  SAY @772 = @773 = @774
IF ~~ THEN REPLY @775 GOTO exti4.2
END

IF ~~ THEN BEGIN exti4.2
  SAY @776 = @777 = @778 = @779 = @780
IF ~~ THEN REPLY @781 GOTO exti4.3
END

IF ~~ THEN BEGIN exti4.3
  SAY @782
IF ~~ THEN REPLY @783 GOTO exti4.4
END

IF ~~ THEN BEGIN exti4.4
  SAY @784 = @785 = @786 = @787
IF ~~ THEN REPLY @788 GOTO exti4.5
END

IF ~~ THEN BEGIN exti4.5
  SAY @789
IF ~~ THEN REPLY @790 GOTO exti4.9
END

IF ~~ THEN BEGIN exti4.9
  SAY @791
IF ~~ THEN REPLY @792 DO ~AddJournalEntry(@6002,USER)~ GOTO 3
END

//  Chain talks

// 5 - Jini urges you to take care on the final run

CHAIN IF ~G("RJiniExtra5",1)~ THEN RJINII1 exti5
@830 DO ~SetGlobal("RJiniTalk","GLOBAL",2)
         SetGlobal("RJiniExtra5","GLOBAL",2)~
== IMOEN2%rj_eet_suff% IF ~InParty("%rj_imoen%")~ THEN @831
== KIVANJ IF ~InParty("KIVAN")~ THEN @832
== ALORAJ IF ~InParty("ALORA")~ THEN @833
== MINSCJ%rj_eet_suff% IF ~InParty("MINSC")~ THEN @834
== DYNAHJ IF ~InParty("DYNAHEIR")~ THEN @835
== YESLIJ IF ~InParty("YESLICK")~ THEN @836
== CORANJ IF ~InParty("CORAN")~ THEN @837
== AJANTJ IF ~InParty("AJANTIS")~ THEN @838
== KHALIJ IF ~InParty("KHALID")~ THEN @839
== JAHEIJ IF ~InParty("JAHEIRA")~ THEN @840
== GARRIJ IF ~InParty("GARRICK")~ THEN @841
== SAFANJ IF ~InParty("SAFANA")~ THEN @842
== FALDOJ IF ~InParty("FALDORN")~ THEN @843
== BRANWJ IF ~InParty("BRANWEN")~ THEN @844
== QUAYLJ IF ~InParty("QUAYLE")~ THEN @845
== XANJ IF ~InParty("XAN")~ THEN @846
== SKIEJ IF ~InParty("SKIE")~ THEN @847
== ELDOTJ IF ~InParty("ELDOTH")~ THEN @848
== XZARJ IF ~InParty("XZAR")~ THEN @849
== MONTAJ IF ~InParty("MONTARON")~ THEN @850
== TIAXJ IF ~InParty("TIAX")~ THEN @851
== KAGAIJ IF ~InParty("KAGAIN")~ THEN @852
== SHARTJ IF ~InParty("SHARTEEL")~ THEN @853
== EDWINJ%rj_eet_suff% IF ~InParty("EDWIN")~ THEN @854
== VICONJ IF ~InParty("VICONIA")~ THEN @855
== NEERAJ%rj_eet_suff% IF ~InParty("NEERA")~ THEN @856
== DORNJ%rj_eet_suff% IF ~InParty("DORN")~ THEN @857
== RASAADJ%rj_eet_suff% IF ~InParty("RASAAD")~ THEN @858
== C0SIRENJ IF ~InParty("C0Sirene")~ THEN @861
== RJINII1 @860
END
IF ~~ THEN EXTERN RJINII1 exti5.1

APPEND RJINII1

IF ~~ THEN BEGIN exti5.1
  SAY @930 = @931 = @932 = @933 = @934 = @935
IF ~~ THEN REPLY @936 GOTO exti5.9
END

IF ~~ THEN BEGIN exti5.9
  SAY @937
IF ~~ THEN REPLY @938 GOTO 3
END

//  Dream Doors

IF ~IsGabber(Player1)
    OR(2)
      AreaCheck("RJP13G")
      AreaCheck("RJP204")~ THEN BEGIN jidd1
  SAY @900
IF ~~ THEN REPLY @901 EXIT
END

//  Giving Jini the 1st Rub

IF ~G("RJLamp",1) G("RJiniRomanceActive",0) !G("Chapter",0)~ THEN BEGIN firstrub
  SAY @29 = @0 = @1
IF ~~ THEN REPLY @2 GOTO firstrub1
END

IF ~~ THEN BEGIN firstrub1
  SAY @26 = @3 = @4 = @5 = @6
IF ~~ THEN REPLY @7 GOTO firstrub2
END

IF ~~ THEN BEGIN firstrub2
  SAY @8 = @9 = @10 = @11
IF ~~ THEN REPLY @12 DO ~SetGlobal("RJEquip","GLOBAL",1)
                         IncrementGlobal("RJBGCnt","GLOBAL",1)
                         ReallyForceSpellRES("RJ1ITALL",Player1)
                         ReallyForceSpellRES("RJ1ITBG",Player1)
                         ActionOverride(Player1,AddSpecialAbility("RJPR607"))
                         GiveItemCreate("SCRLPET",Player1,6,0,0)~ GOTO firstrub3
IF ~~ THEN REPLY @13 GOTO firstrub4
END

IF ~~ THEN BEGIN firstrub3
  SAY @18
IF ~~ THEN REPLY @17 GOTO firstrub4
END

IF ~~ THEN BEGIN firstrub4
  SAY @14 = @15
IF ~~ THEN REPLY @23 DO ~SetGlobal("RJCheat","GLOBAL",1)~ GOTO firstrub5
IF ~~ THEN REPLY @24 GOTO firstrub5
END

IF ~~ THEN BEGIN firstrub5
  SAY @16
IF ~~ THEN REPLY @19 DO ~SetGlobal("RJiniRomanceActive","GLOBAL",1)~ GOTO firstrub6
END

IF ~~ THEN BEGIN firstrub6
  SAY @20 = @27 = @28 = @21
IF ~~ THEN REPLY @22 DO ~AddJournalEntry(@6001,USER)~ GOTO rubout
END

//  Giving Jini a Rub

IF ~G("RJLamp",1) !G("RJiniRomanceActive",0)~ THEN BEGIN therub
  SAY @30
IF ~~ THEN REPLY @64 GOTO therub1
END

IF ~~ THEN BEGIN therub1
  SAY @31
IF ~~ THEN REPLY @32 GOTO rubout
// IF ~~ THEN REPLY @79 DO ~CreateCreature("RJ1TRIAS",[-1.-1],0)~ GOTO rubout
IF ~G("RJiniPermit",1)~ THEN REPLY @47 DO ~SetGlobal("RJiniTalk","GLOBAL",98)~ GOTO 2
IF ~G("RJiniRomanceActive",1)~ THEN REPLY @33 GOTO chat1
IF ~G("RJiniRomanceActive",2)~ THEN REPLY @48 GOTO chat2
IF ~G("RJiniRomanceActive",1)~ THEN REPLY @42 GOTO flirt1
IF ~G("RJiniRomanceActive",2)~ THEN REPLY @42 GOTO flirt2
IF ~G("RJCheat",1)~ THEN REPLY @34 GOTO service
IF ~G("RJEquip",1)~ THEN REPLY @40 GOTO service2
IF ~G("RJCheat",1)~ THEN REPLY @44 GOTO service1
END

//  Jini's services

IF ~~ THEN BEGIN service
  SAY @36
IF ~~ THEN REPLY @35 GOTO rubout
IF ~~ THEN REPLY @37 GOTO service3
IF ~~ THEN REPLY @38 GOTO service4
END

//  Jini gives NPCs XP

IF ~~ THEN BEGIN service1
  SAY @41
  IF ~~ THEN REPLY @35 GOTO rubout
  IF ~InParty(Player2)~ THEN REPLY @142 DO ~ReallyForceSpellRES("RJSPXP",Player2)~ GOTO service1
  IF ~InParty(Player2)~ THEN REPLY @152 DO ~ReallyForceSpellRES("RJSPXPL",Player2)~ GOTO service1
  IF ~InParty(Player3)~ THEN REPLY @143 DO ~ReallyForceSpellRES("RJSPXP",Player3)~ GOTO service1
  IF ~InParty(Player3)~ THEN REPLY @153 DO ~ReallyForceSpellRES("RJSPXPL",Player3)~ GOTO service1
  IF ~InParty(Player4)~ THEN REPLY @144 DO ~ReallyForceSpellRES("RJSPXP",Player4)~ GOTO service1
  IF ~InParty(Player4)~ THEN REPLY @154 DO ~ReallyForceSpellRES("RJSPXPL",Player4)~ GOTO service1
  IF ~InParty(Player5)~ THEN REPLY @145 DO ~ReallyForceSpellRES("RJSPXPL",Player5)~ GOTO service1
  IF ~InParty(Player5)~ THEN REPLY @155 DO ~ReallyForceSpellRES("RJSPXPL",Player5)~ GOTO service1
  IF ~InParty(Player6)~ THEN REPLY @146 DO ~ReallyForceSpellRES("RJSPXP",Player6)~ GOTO service1
  IF ~InParty(Player6)~ THEN REPLY @156 DO ~ReallyForceSpellRES("RJSPXPL",Player6)~ GOTO service1
END

//  Jini equips NPCs

IF ~~ THEN BEGIN service2
  SAY @41
  IF ~~ THEN REPLY @35 GOTO rubout
  IF ~InParty(Player2)
      !HasItem("RJ1SW1H",Player2)
      GGT("RJBGCnt",5)~ THEN REPLY @142 DO ~
        IncrementGlobal("RJBGCnt","GLOBAL",1)
        ReallyForceSpellRES("RJ1ITALL",Player2)
        ActionOverride(Player2,AddSpecialAbility("RJPR607"))~ GOTO rubout
  IF ~InParty(Player2)
      !HasItem("RJ1SW1H",Player2)
      GLT("RJBGCnt",6)~ THEN REPLY @142 DO ~
        IncrementGlobal("RJBGCnt","GLOBAL",1)
        ReallyForceSpellRES("RJ1ITALL",Player2)
        ReallyForceSpellRES("RJ1ITBG",Player2)
        ActionOverride(Player2,AddSpecialAbility("RJPR607"))~ GOTO rubout
  IF ~InParty(Player3)
      !HasItem("RJ1SW1H",Player3)
      GGT("RJBGCnt",5)~ THEN REPLY @143 DO ~
        IncrementGlobal("RJBGCnt","GLOBAL",1)
        ReallyForceSpellRES("RJ1ITALL",Player3)
        ActionOverride(Player3,AddSpecialAbility("RJPR607"))~ GOTO rubout
  IF ~InParty(Player3)
      !HasItem("RJ1SW1H",Player3)
      GLT("RJBGCnt",6)~ THEN REPLY @143 DO ~
        IncrementGlobal("RJBGCnt","GLOBAL",1)
        ReallyForceSpellRES("RJ1ITALL",Player3)
        ReallyForceSpellRES("RJ1ITBG",Player3)
        ActionOverride(Player3,AddSpecialAbility("RJPR607"))~ GOTO rubout
  IF ~InParty(Player4)
      !HasItem("RJ1SW1H",Player4)
      GGT("RJBGCnt",5)~ THEN REPLY @144 DO ~
        IncrementGlobal("RJBGCnt","GLOBAL",1)
        ReallyForceSpellRES("RJ1ITALL",Player4)
        ActionOverride(Player4,AddSpecialAbility("RJPR607"))~ GOTO rubout
  IF ~InParty(Player4)
      !HasItem("RJ1SW1H",Player4)
      GLT("RJBGCnt",6)~ THEN REPLY @144 DO ~
        IncrementGlobal("RJBGCnt","GLOBAL",1)
        ReallyForceSpellRES("RJ1ITALL",Player4)
        ReallyForceSpellRES("RJ1ITBG",Player4)
        ActionOverride(Player4,AddSpecialAbility("RJPR607"))~ GOTO rubout
  IF ~InParty(Player5)
      !HasItem("RJ1SW1H",Player5)
      GGT("RJBGCnt",5)~ THEN REPLY @145 DO ~
        IncrementGlobal("RJBGCnt","GLOBAL",1)
        ReallyForceSpellRES("RJ1ITALL",Player5)
        ActionOverride(Player5,AddSpecialAbility("RJPR607"))~ GOTO rubout
  IF ~InParty(Player5)
      !HasItem("RJ1SW1H",Player5)
      GLT("RJBGCnt",6)~ THEN REPLY @145 DO ~
        IncrementGlobal("RJBGCnt","GLOBAL",1)
        ReallyForceSpellRES("RJ1ITALL",Player5)
        ReallyForceSpellRES("RJ1ITBG",Player5)
        ActionOverride(Player5,AddSpecialAbility("RJPR607"))~ GOTO rubout
  IF ~InParty(Player6)
      !HasItem("RJ1SW1H",Player6)
      GGT("RJBGCnt",5)~ THEN REPLY @146 DO ~
        IncrementGlobal("RJBGCnt","GLOBAL",1)
        ReallyForceSpellRES("RJ1ITALL",Player6)
        ActionOverride(Player6,AddSpecialAbility("RJPR607"))~ GOTO rubout
  IF ~InParty(Player6)
      !HasItem("RJ1SW1H",Player6)
      GLT("RJBGCnt",6)~ THEN REPLY @146 DO ~
        IncrementGlobal("RJBGCnt","GLOBAL",1)
        ReallyForceSpellRES("RJ1ITALL",Player6)
        ReallyForceSpellRES("RJ1ITBG",Player6)
        ActionOverride(Player6,AddSpecialAbility("RJPR607"))~ GOTO rubout
END

//  Jini gives PC stats upgrades

IF ~~ THEN BEGIN service3
  SAY @80
  IF ~~ THEN REPLY @39 GOTO rubout
  IF ~~ THEN REPLY @87 DO ~ReallyForceSpellRES("RJSPXP",Player1)~ GOTO rubout
  IF ~~ THEN REPLY @88 DO ~ReallyForceSpellRES("RJSPXPL",Player1)~ GOTO rubout
  IF ~~ THEN REPLY @92 DO ~ReallyForceSpellRES("RJSPHP",Player1)~ GOTO rubout
  IF ~~ THEN REPLY @81 DO ~ReallyForceSpellRES("RJSPSTR",Player1)~ GOTO rubout
  IF ~~ THEN REPLY @82 DO ~ReallyForceSpellRES("RJSPDEX",Player1)~ GOTO rubout
  IF ~~ THEN REPLY @83 DO ~ReallyForceSpellRES("RJSPCON",Player1)~ GOTO rubout
  IF ~~ THEN REPLY @84 DO ~ReallyForceSpellRES("RJSPINT",Player1)~ GOTO rubout
  IF ~~ THEN REPLY @85 DO ~ReallyForceSpellRES("RJSPWIS",Player1)~ GOTO rubout
  IF ~~ THEN REPLY @86 DO ~ReallyForceSpellRES("RJSPCHA",Player1)~ GOTO rubout
  IF ~~ THEN REPLY @90 DO ~GiveGoldForce(1000)~ GOTO rubout
  IF ~~ THEN REPLY @91 DO ~GiveGoldForce(10000)~ GOTO rubout
  IF ~~ THEN REPLY @93 DO ~ReputationInc(1)~ GOTO rubout
END

//  Jini gives PC individual items

IF ~~ THEN BEGIN service4
  SAY @50
  IF ~~ THEN REPLY @39 GOTO rubout
  IF ~~ THEN REPLY @51 DO ~GiveItemCreate("RJ1SW1H",Player1,0,0,0)~ GOTO service4
  IF ~~ THEN REPLY @52 DO ~GiveItemCreate("RJ1AXE",Player1,0,0,0)~ GOTO service4
  IF ~~ THEN REPLY @53 DO ~GiveItemCreate("RJ1RING",Player1,0,0,0)~ GOTO service4
  IF ~~ THEN REPLY @54 DO ~GiveItemCreate("RJ1BOOT",Player1,0,0,0)~ GOTO service4
  IF ~~ THEN REPLY @55 DO ~GiveItemCreate("RJ1CLCK",Player1,0,0,0)~ GOTO service4
  IF ~~ THEN REPLY @56 DO ~GiveItemCreate("RJ1SHLD",Player1,0,0,0)~ GOTO service4
  IF ~~ THEN REPLY @57 DO ~GiveItemCreate("RJ1BRAC",Player1,0,0,0)~ GOTO service4
  IF ~~ THEN REPLY @58 DO ~GiveItemCreate("RJ1AMUL",Player1,0,0,0)~ GOTO service4
  IF ~~ THEN REPLY @59 DO ~GiveItemCreate("RJ1CHAN",Player1,0,0,0)~ GOTO service4
  IF ~~ THEN REPLY @60 DO ~GiveItemCreate("RJ1MASK",Player1,0,0,0)~ GOTO service4
  IF ~~ THEN REPLY @61 DO ~GiveItemCreate("RJ1BOOK",Player1,0,0,0)~ GOTO service4
  IF ~OR(2)
        GLT("RJBGCnt",6)
        G("RJSoD",1)~ THEN REPLY @62 DO ~
                           IncrementGlobal("RJBGCnt","GLOBAL",1)
                           GiveItemCreate("RJ1BAG1",Player1,0,0,0)
                           GiveItemCreate("RJ1BAG2",Player1,0,0,0)~ GOTO service4
  IF ~~ THEN REPLY @66 DO ~GiveItemCreate("SCRLPET",Player1,6,0,0)~ GOTO service4
END

// Pre-Romanced Flirts

IF ~~ flirt1
SAY @400

++ @203 + flower
++ @204 + cheek
++ @207 + hands
++ @210 + beautiful
++ @211 + hug
++ @212 + smile
++ @215 + ogle

++ @401 + rubout

END

IF ~~ flower
SAY @402
IF ~~ GOTO rubout
END

IF ~~ cheek
SAY @403
IF ~~ GOTO rubout
END

IF ~~ hands
SAY @404
IF ~~ GOTO rubout
END

IF ~~ beautiful
SAY @405
IF ~~ GOTO rubout
END

IF ~~ hug
SAY @406
IF ~~ GOTO rubout
END

IF ~~ smile
SAY @407
IF ~~ GOTO rubout
END

IF ~~ ogle
SAY @408
IF ~~ GOTO rubout
END

// Romanced Flirts

IF ~~ flirt2
SAY @200

+ ~RandomNum(4,1)~ + @203 + flower1
+ ~RandomNum(4,2)~ + @203 + flower2
+ ~RandomNum(4,3)~ + @203 + flower3
+ ~RandomNum(4,4)~ + @203 + flower4

+ ~RandomNum(4,1)~ + @204 + cheek1
+ ~RandomNum(4,2)~ + @204 + cheek2
+ ~RandomNum(4,3)~ + @204 + cheek3
+ ~RandomNum(4,4)~ + @204 + cheek4

+ ~RandomNum(4,1)~ + @205 + kiss1
+ ~RandomNum(4,2)~ + @205 + kiss2
+ ~RandomNum(4,3)~ + @205 + kiss3
+ ~RandomNum(4,4)~ + @205 + kiss4

+ ~RandomNum(4,1)~ + @206 + grab1
+ ~RandomNum(4,2)~ + @206 + grab2
+ ~RandomNum(4,3)~ + @206 + grab3
+ ~RandomNum(4,4)~ + @206 + grab4

+ ~RandomNum(4,1)~ + @207 + hands1
+ ~RandomNum(4,2)~ + @207 + hands2
+ ~RandomNum(4,3)~ + @207 + hands3
+ ~RandomNum(4,4)~ + @207 + hands4

+ ~RandomNum(4,1)~ + @208 + arms1
+ ~RandomNum(4,2)~ + @208 + arms2
+ ~RandomNum(4,3)~ + @208 + arms3
+ ~RandomNum(4,4)~ + @208 + arms4

+ ~RandomNum(4,1)~ + @209 + want1
+ ~RandomNum(4,2)~ + @209 + want2
+ ~RandomNum(4,3)~ + @209 + want3
+ ~RandomNum(4,4)~ + @209 + want4

+ ~RandomNum(4,1)~ + @210 + beautiful1
+ ~RandomNum(4,2)~ + @210 + beautiful2
+ ~RandomNum(4,3)~ + @210 + beautiful3
+ ~RandomNum(4,4)~ + @210 + beautiful4

+ ~RandomNum(4,1)~ + @211 + hug1
+ ~RandomNum(4,2)~ + @211 + hug2
+ ~RandomNum(4,3)~ + @211 + hug3
+ ~RandomNum(4,4)~ + @211 + hug4

+ ~RandomNum(4,1)~ + @212 + smile1
+ ~RandomNum(4,2)~ + @212 + smile2
+ ~RandomNum(4,3)~ + @212 + smile3
+ ~RandomNum(4,4)~ + @212 + smile4

+ ~RandomNum(4,1)~ + @213 + love1
+ ~RandomNum(4,2)~ + @213 + love2
+ ~RandomNum(4,3)~ + @213 + love3
+ ~RandomNum(4,4)~ + @213 + love4

+ ~RandomNum(3,1)~ + @214 + caress1
+ ~RandomNum(3,2)~ + @214 + caress2
+ ~RandomNum(3,3)~ + @214 + caress3

+ ~RandomNum(3,1)~ + @215 + ogle1
+ ~RandomNum(3,2)~ + @215 + ogle2
+ ~RandomNum(3,3)~ + @215 + ogle3

+ ~RandomNum(3,1)~ + @225 + bath1
+ ~RandomNum(3,2)~ + @225 + bath2
+ ~RandomNum(3,3)~ + @225 + bath3

++ @227 + rubout

END

// flirts

IF ~~ flower1
SAY @240
IF ~~ GOTO rubout
END

IF ~~ flower2
SAY @241 = @239
IF ~~ GOTO rubout
END

IF ~~ flower3
SAY @242
IF ~~ GOTO rubout
END

IF ~~ flower4
SAY @243
IF ~~ GOTO rubout
END

IF ~~ kiss1
SAY @244
IF ~~ GOTO rubout
END

IF ~~ kiss2
SAY @245 = @246
IF ~~ GOTO rubout
END

IF ~~ kiss3
SAY @247
IF ~~ GOTO rubout
END

IF ~~ kiss4
SAY @248
IF ~~ GOTO rubout
END

IF ~~ cheek1
SAY @252
IF ~~ GOTO rubout
END

IF ~~ cheek2
SAY @253
IF ~~ GOTO rubout
END

IF ~~ cheek3
SAY @254
IF ~~ GOTO rubout
END

IF ~~ cheek4
SAY @255
IF ~~ GOTO rubout
END

IF ~~ grab1
SAY @256
IF ~~ GOTO rubout
END

IF ~~ grab2
SAY @257 = @258
++ @259 + rubout
END

IF ~~ grab3
SAY @260 = @261
IF ~~ GOTO rubout
END

IF ~~ grab4
SAY @262
IF ~~ GOTO rubout
END

IF ~~ hands1
SAY @263
IF ~~ GOTO rubout
END

IF ~~ hands2
SAY @264
IF ~~ GOTO rubout
END

IF ~~ hands3
SAY @265
IF ~~ GOTO rubout
END

IF ~~ hands4
SAY @266
IF ~~ GOTO rubout
END

IF ~~ want1
SAY @267
IF ~~ GOTO rubout
END

IF ~~ want2
SAY @268
IF ~~ GOTO rubout
END

IF ~~ want3
SAY @269
IF ~~ GOTO rubout
END

IF ~~ want4
SAY @270
IF ~~ GOTO rubout
END

IF ~~ beautiful1
SAY @271
IF ~~ GOTO rubout
END

IF ~~ beautiful2
SAY @272
IF ~~ GOTO rubout
END

IF ~~ beautiful3
SAY @273
IF ~~ GOTO rubout
END

IF ~~ beautiful4
SAY @274
IF ~~ GOTO rubout
END

IF ~~ arms1
SAY @275
IF ~~ GOTO rubout
END

IF ~~ arms2
SAY @276
IF ~~ GOTO rubout
END

IF ~~ arms3
SAY @277
IF ~~ GOTO rubout
END

IF ~~ arms4
SAY @278
IF ~~ GOTO rubout
END

IF ~~ hug1
SAY @279
IF ~~ GOTO rubout
END

IF ~~ hug2
SAY @280
IF ~~ GOTO rubout
END

IF ~~ hug3
SAY @281
IF ~~ GOTO rubout
END

IF ~~ hug4
SAY @282
IF ~~ GOTO rubout
END

IF ~~ smile1
SAY @283
IF ~~ GOTO rubout
END

IF ~~ smile2
SAY @284
IF ~~ GOTO rubout
END

IF ~~ smile3
SAY @285
IF ~~ GOTO rubout
END

IF ~~ smile4
SAY @286
IF ~~ GOTO rubout
END

IF ~~ love1
SAY @287
IF ~~ GOTO rubout
END

IF ~~ love2
SAY @288
IF ~~ GOTO rubout
END

IF ~~ love3
SAY @289
IF ~~ GOTO rubout
END

IF ~~ love4
SAY @290
IF ~~ GOTO rubout
END

IF ~~ caress1
SAY @291 = @292
IF ~~ GOTO rubout
END

IF ~~ caress2
SAY @293 = @294
IF ~~ GOTO rubout
END

IF ~~ caress3
SAY @295 = @296 = @297
IF ~~ GOTO rubout
END

IF ~~ ogle1
SAY @298 = @299
IF ~~ GOTO rubout
END

IF ~~ ogle2
SAY @300 = @301
++ @302 + rubout
END

IF ~~ ogle3
SAY @303 = @304
++ @305 + rubout
END

IF ~~ bath1
SAY @350 = @351 = @352 = @353 = @354 = @355
IF ~~ GOTO rubout
END

IF ~~ bath2
SAY @360 = @361 = @362 = @363 = @364
++ @365 + rubout
END

IF ~~ bath3
SAY @370 = @371 = @372 = @373 = @374 = @375
++ @376 + rubout
END

// Pre-Romanced Chats

IF ~~ chat1
SAY @400
++ @401 + rubout
++ @410 + c1geas
++ @420 + c1gorion
++ @430 + c1imoen
++ @440 + c1candlekeep
END

// Romanced Chats

IF ~~ chat2
SAY @201
++ @401 + rubout
++ @450 + c2whyme
++ @460 + c2rjali
+ ~G("RJB605",1)~ + @470 + c2decor
+ ~G("RJB604",1)~ + @480 + c2fountain
+ ~G("RJB606",1)~ + @490 + c2backroom
++ @410 + c2geas
++ @420 + c2gorion
++ @430 + c2imoen
++ @440 + c2candlekeep
END

IF ~~ c1geas
SAY @411 = @412 = @413 = @414 = @415
++ @416 + c1geas1
END

IF ~~ c1geas1
SAY @417 = @418
++ @419 + chat1
END

IF ~~ c1gorion
SAY @421 = @422 = @423
++ @424 + c1gorion1
END

IF ~~ c1gorion1
SAY @425 = @426
++ @427 + chat1
END

IF ~~ c1imoen
SAY @431
++ @432 + c1imoen1
END

IF ~~ c1imoen1
SAY @433 = @434 = @435
++ @436 + c1imoen2
END

IF ~~ c1imoen2
SAY @437 = @438
++ @439 + chat1
END

IF ~~ c1candlekeep
SAY @441
++ @442 + c1candlekeep1
END

IF ~~ c1candlekeep1
SAY @443 = @444 = @445
++ @446 + c1candlekeep2
END

IF ~~ c1candlekeep2
SAY @447
++ @448 + chat1
END

IF ~~ c2geas
SAY @411 = @412 = @413 = @414 = @415
++ @416 + c2geas1
END

IF ~~ c2geas1
SAY @417 = @418
++ @419 + chat2
END

IF ~~ c2gorion
SAY @421 = @422 = @423
++ @424 + c2gorion1
END

IF ~~ c2gorion1
SAY @425 = @426
++ @427 + chat2
END

IF ~~ c2imoen
SAY @431
++ @432 + c2imoen1
END

IF ~~ c2imoen1
SAY @433 = @434 = @435
++ @436 + c2imoen2
END

IF ~~ c2imoen2
SAY @437 = @438
++ @439 + chat2
END

IF ~~ c2candlekeep
SAY @441
++ @442 + c2candlekeep1
END

IF ~~ c2candlekeep1
SAY @443 = @444 = @445
++ @446 + c2candlekeep2
END

IF ~~ c2candlekeep2
SAY @447
++ @448 + chat2
END

IF ~~ c2whyme
SAY @451
++ @452 + c2whyme1
END

IF ~~ c2whyme1
SAY @453 = @454 = @455 = @456 = @457
++ @458 + chat2
END

IF ~~ c2rjali
SAY @461 = @462 = @463
++ @465 + c2rjali1
++ @464 + chat2
END

IF ~~ c2rjali1
SAY @466 = @467
++ @468 + chat2
END

IF ~~ c2decor
SAY @471 = @472
++ @473 + chat2
END

IF ~~ c2fountain
SAY @481 = @482 = @483
++ @484 + c2fountain1
END

IF ~~ c2fountain1
SAY @485 = @486
++ @487 + chat2
END

IF ~~ c2backroom
SAY @491 = @492 = @493
++ @494 + chat2
END

// Rub Exit

IF ~~ THEN BEGIN rubout
SAY @43
IF ~~ THEN DO ~SetGlobal("RJLamp","GLOBAL",0)
               SetGlobal("RJiniTalk","GLOBAL",0)
               DestroySelf()~ EXIT
END

// Jini-initiated flirts.

IF ~G("RJiniFlirt",1) 
    G("RJiniTalk",1)~ jiflirt
SAY @320
IF ~~ + jif0
IF ~RandomNum(10,1)~  + jif1
IF ~RandomNum(10,2)~  + jif2
IF ~RandomNum(10,3)~  + jif3
IF ~RandomNum(10,4)~  + jif4
IF ~RandomNum(10,5)~  + jif5
IF ~RandomNum(10,6)~  + jif6
IF ~RandomNum(10,7)~  + jif7
IF ~RandomNum(10,8)~  + jif8
IF ~RandomNum(10,9)~  + jif9
IF ~RandomNum(10,10)~ + jif10
END

IF ~~ jif0
SAY @321
IF ~~ THEN DO ~SetGlobal("RJiniFlirt","GLOBAL",0)
               SetGlobal("RJiniTalk","GLOBAL",0)
               DestroySelf()~ EXIT
END

IF ~~ jif1
SAY @322 = @323
++ @324 + jif0
END

IF ~~ jif2
SAY @325
IF ~~ + jif0
END

IF ~~ jif3
SAY @326
IF ~~ + jif0
END

IF ~~ jif4
SAY @327
IF ~~ + jif0
END

IF ~~ jif5
SAY @328
++ @329 + jif0
END

IF ~~ jif6
SAY @330 = @331
IF ~~ + jif0
END

IF ~~ jif7
SAY @332 = @333
++ @334 + jif0
END

IF ~~ jif8
SAY @335 = @336
++ @337 + jif0
END

IF ~~ jif9
SAY @338 = @339
IF ~~ + jif0
END

IF ~~ jif10
SAY @340 = @341
IF ~~ + jif0
END

END