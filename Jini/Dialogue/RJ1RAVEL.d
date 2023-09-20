
BEGIN ~RJ1RAVEL~

//  Intro

IF ~IsGabber(Player1)
    Global("RJRVAN","RJP610",0)~ THEN BEGIN ravel0
  SAY @0
IF ~~ THEN DO ~SetGlobal("RJRVAN","RJP610",1)
               ActionOverride(Player1,SetDialog("RJPLAYER"))~ GOTO ravel1
END

IF ~~ THEN BEGIN ravel1
  SAY @1
IF ~~ THEN REPLY @2 DO ~ActionOverride(Player1,SetDialog("RJPLAYER"))~ EXTERN RJPLAYER ravel2
END

IF ~~ THEN BEGIN ravel3
  SAY @16
IF ~~ THEN EXTERN RJPLAYER ravel7
END

IF ~~ THEN BEGIN ravel4
  SAY @15
IF ~~ THEN DO ~SetGlobal("RJRVAN","RJP610",2)
               StartCutSceneMode()
               StartCutScene("RJRV2")~ EXIT
END

IF ~Global("RJRVAN","RJP610",2)~ THEN BEGIN ravel4.1
  SAY @33
IF ~~ THEN REPLY @34 DO ~SetGlobal("RJRVAN","RJP610",3)
                         StartCutSceneMode()
                         StartCutScene("RJRV3")~ EXIT
END

IF ~Global("RJRVAN","RJP610",3)~ THEN BEGIN ravel4.2
  SAY @35 = @36
IF ~~ THEN REPLY @37 DO ~SetGlobal("RJRVAN","RJP610",4)~ GOTO ravel4.3
END

IF ~~ THEN BEGIN ravel4.3
  SAY @38
IF ~~ THEN EXTERN RJPLAYER ravel7
END

IF ~~ THEN BEGIN ravel5
  SAY @14
IF ~~ THEN EXTERN RJPLAYER ravel7
END

IF ~~ THEN BEGIN ravel6
  SAY @12 = @13
IF ~~ THEN REPLY @8 GOTO ravel3
IF ~~ THEN REPLY @9 GOTO ravel4
IF ~~ THEN REPLY @10 GOTO ravel5
END

CHAIN RJPLAYER ravel2
@3 = @4
== RJ1RAVEL @5 = @6 = @7
END
IF ~~ THEN REPLY @8 EXTERN RJ1RAVEL ravel3
IF ~~ THEN REPLY @9 EXTERN RJ1RAVEL ravel4
IF ~~ THEN REPLY @10 EXTERN RJ1RAVEL ravel5
IF ~~ THEN REPLY @11 EXTERN RJ1RAVEL ravel6

CHAIN RJPLAYER ravel7
@17 DO ~IncrementGlobal("RJiniRescue","GLOBAL",1)
        TriggerActivation("SWExit",FALSE)
        TriggerActivation("SWExit1",TRUE)~
== RJ1RAVEL @18 = @19 = @20 = @21 = @22
== RJ1RAVEL @23 DO ~GiveItemCreate("RJSCRLM",Player1,0,0,0)~
== RJPLAYER @24 = @25
== RJ1RAVEL @26 = @27 = @28 = @29
END
++ @31 DO ~StartCutSceneMode()
           StartCutScene("RJRV1")~ EXIT
