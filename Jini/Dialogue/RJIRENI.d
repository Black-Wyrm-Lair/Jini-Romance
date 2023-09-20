
BEGIN ~RJIRENI~

//  Intro

IF ~IsGabber(Player1)
    AreaCheck("RJP204")~ THEN BEGIN ireni
  SAY @0
IF ~~ THEN DO ~ActionOverride(Player1,SetDialog("RJPLAYER"))~ GOTO ireni1
END

IF ~~ THEN BEGIN ireni1
  SAY @1
IF ~~ THEN DO ~ActionOverride(Player1,SetDialog("RJPLAYER"))~ GOTO ireni2
END

IF ~~ THEN BEGIN ireni2
  SAY @2
IF ~~ THEN EXTERN RJPLAYER ireni3
END

CHAIN RJPLAYER ireni3
@3
== RJIRENI @4 = @5 = @6 = @7
END
IF ~~ THEN REPLY @19 DO ~SetGlobal("RJiniRescue","GLOBAL",98)
                         StartCutSceneMode()
                         StartCutScene("RJIR3")~ EXIT

CHAIN IF ~G("RJiniRescue",98)~ THEN RJPLAYER ireni4
@8
== RJINII1 @9
== RJPLAYER @10
== RJINII1 @11 = @12
== RJPLAYER @13 = @14
== RJINII1 @15 = @16 = @17
END
IF ~~ THEN REPLY @20 DO ~SetGlobal("RJiniRescue","GLOBAL",99)
                         AddJournalEntry(@6005,USER)
                         StartCutSceneMode()
                         StartCutScene("RJIR4")~ EXIT
