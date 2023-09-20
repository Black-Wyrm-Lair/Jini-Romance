
BEGIN ~RJ1TRIAS~
       
//  Intro

IF ~IsGabber(Player1)
    NumTimesTalkedTo(0)~ THEN BEGIN trias0
  SAY @0 = @1
IF ~~ THEN REPLY @2 GOTO trias0.1
END

IF ~~ THEN BEGIN trias0.1
  SAY @3 = @4 = @5
IF ~!PartyHasItem("RJSWTRI")~ THEN REPLY @6 GOTO trias0.1.1
IF ~PartyHasItem("RJSWTRI")~ THEN REPLY @7 DO ~ActionOverride(Player1,GiveItem("RJSWTRI","RJ1TRIAS"))~ GOTO trias0.2
END

IF ~~ THEN BEGIN trias0.1.1
  SAY @8
IF ~~ THEN REPLY @9 EXIT
END

IF ~~ THEN BEGIN trias0.2
  SAY @12 = @13 = @14 = @15
IF ~~ THEN REPLY @16 DO ~TriggerActivation("to0900",TRUE)
                         IncrementGlobal("RJiniRescue","GLOBAL",1)~ GOTO trias0.3
END

IF ~~ THEN BEGIN trias0.3
  SAY @17 = @18
IF ~~ THEN REPLY @19 DO ~StartCutSceneMode()
                         StartCutScene("RJTR1")~ EXIT
END

//  Back

IF ~IsGabber(Player1)
    !NumTimesTalkedTo(0)~ THEN BEGIN trias1
  SAY @10
IF ~PartyHasItem("RJSWTRI")~ THEN REPLY @7 DO ~ActionOverride(Player1,GiveItem("RJSWTRI","RJ1TRIAS"))~ GOTO trias0.2
IF ~!PartyHasItem("RJSWTRI")~ THEN REPLY @11 EXIT
END
