
// Player1's SoD Dialog File

APPEND BDPLAYER

//  Rub but Jini is out

IF ~G("RJLamp",9)~ THEN BEGIN therubmsg
  SAY @48
IF ~~ THEN REPLY @49 DO ~SetGlobal("RJLamp","GLOBAL",0)
                         SetGlobal("RJiniTalk","GLOBAL",0)
                         SetGlobal("RJRUB","GLOBAL",0)~ EXIT
END

END

// Rjali shadows you in SoD

CHAIN IF ~G("RJShadow",1)~ THEN BDPLAYER P1Rjali6
@115 DO ~SetGlobal("RJShadow","GLOBAL",0)~
EXIT

//  Menage a Trois

CHAIN IF WEIGHT #-11 ~G("RJiniTalks",36)~ THEN BDPLAYER menage3
@420 = @421
== RJINI1 @422
== RJFAY1 @423
== RJINI1 @424
== RJFAY1 @425 = @426
== RJINI1 @427
== BDPLAYER @428
== RJFAY1 @429 = @430
== BDPLAYER @431
== RJINI1 @432
== RJFAY1 @433
== RJINI1 @434
== RJFAY1 @435
== BDPLAYER @436 = @437
== RJFAY1 @438
== RJINI1 @439
== BDPLAYER @440
== RJINI1 @442
== BDPLAYER @441
END
IF ~~ THEN DO ~StartCutSceneMode()
               FadeToColor([30.0],0)
               Wait(1)
               ActionOverride("RJFAY1",Polymorph(WILL_O_WISP_SMALL))
               FadeFromColor([20.0],0)
               Wait(1)
               RealSetGlobalTimer("RJiniRomance","GLOBAL",RJ_FLIRT)
               SetGlobal("RJiniTalk","GLOBAL",99)
               IncrementGlobal("RJiniTalks","GLOBAL",1)
               EndCutSceneMode()~ EXIT

// Rjali shows up at the end

CHAIN IF WEIGHT #-10 ~AreaCheck("bd6100")
          GlobalLT("bd_plot","global",675)~ THEN BDIMOEN RJBD6100
@500 DO ~ActionOverride(Player1,CreateCreature("Rjali1",[-1.-1],0))
         Wait(3)~
END
++ @501 EXTERN BDIMOEN RJBD6101

CHAIN IF ~~ THEN BDIMOEN RJBD6101
@502
== RJALI1 @503
END
+ ~!HasItem("RJ1LAMP",Player1)~ + @504 EXTERN BDIMOEN RJBD6102
+ ~HasItem("RJ1LAMP",Player1)~ + @504 
  DO ~ActionOverride(Player1,DestroyItem("RJ1LAMP"))
      ActionOverride("Rjali1",TakePartyGold(2000000000))~ EXTERN BDIMOEN RJBD6102

CHAIN IF ~~ THEN BDIMOEN RJBD6102
@505
== RJALI1 @506
END
+ ~!PartyHasItem("RJ1SW1H")~ + @507 EXTERN BDIMOEN 129
+ ~PartyHasItem("RJ1SW1H")~ + @507 
  DO ~ActionOverride(Player1,DestroyAllEquipment())
      ActionOverride(Player2,DestroyAllEquipment())
      ActionOverride(Player3,DestroyAllEquipment())
      ActionOverride(Player4,DestroyAllEquipment())
      ActionOverride(Player5,DestroyAllEquipment())
      ActionOverride(Player6,DestroyAllEquipment())~ EXTERN BDIMOEN 129

// Remove non-obvious Safana romance termination

ALTER_TRANS BDSAFANJ
BEGIN 168 END
BEGIN 1 2 END
BEGIN 
  "ACTION" ~~
END

ALTER_TRANS BDSAFANJ
BEGIN 169 END
BEGIN 0 END
BEGIN 
  "ACTION" ~~
END
