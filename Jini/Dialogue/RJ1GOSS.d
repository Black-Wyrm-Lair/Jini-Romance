
BEGIN ~RJ1GOSS~

//  Intro

IF ~IsGabber(Player1) 
    NumTimesTalkedTo(0)~ THEN BEGIN goss0
  SAY @0
IF ~!PartyHasItem("POTN08")~ THEN REPLY @1 EXIT
IF ~PartyHasItem("POTN08")~ THEN REPLY @2 GOTO goss0.1
END

IF ~~ THEN BEGIN goss0.1
  SAY @3
IF ~~ THEN REPLY @4 DO ~ActionOverride(Player1,GiveItem("POTN08","RJ1GOSS"))
                        UseItem("POTN08",Myself)~ GOTO goss0.2
END

IF ~~ THEN BEGIN goss0.2
  SAY @5
IF ~~ THEN REPLY @6 GOTO goss0.3
END

IF ~~ THEN BEGIN goss0.3
  SAY @7 = @8 = @9 = @10 = @11
IF ~~ THEN REPLY @12 DO ~EscapeAreaDestroy(5)~ EXIT
END

//  Back

IF ~IsGabber(Player1) 
    !NumTimesTalkedTo(0)~ THEN BEGIN goss1
  SAY @20
IF ~!PartyHasItem("POTN08")~ THEN REPLY @21 EXIT
IF ~PartyHasItem("POTN08")~ THEN REPLY @22 GOTO goss0.1
END
