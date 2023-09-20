
// Jini's SoD only Dialog File

APPEND RJINI1

//  Talk 18 - Menage a Trois

IF ~IsGabber(Player1) G("RJiniTalks",36)~ THEN BEGIN jlt18
  SAY @600
IF ~~ THEN REPLY @601 GOTO jlt18.1
END

IF ~~ THEN BEGIN jlt18.1
  SAY @602 = @603
IF ~~ THEN REPLY @604 DO ~StartCutSceneMode()
                          FadeToColor([30.0],0)
                          Wait(1)
                          ActionOverride("RJFAY1",Polymorph(SIRINE))
                          ActionOverride("RJFAY1",FaceObject(Player1))
                          FadeFromColor([20.0],0)
                          Wait(1)
                          EndCutSceneMode()
                          ActionOverride(Player1,StartDialogue("BDPLAYER",Player1))~ EXIT
END

END 
