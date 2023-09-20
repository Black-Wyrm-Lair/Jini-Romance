
// Jinii's SoD only Dialog File

APPEND RJINII1

//  Talk 17 - Multiple Lovers

IF ~G("RJiniTalks",34)~ THEN BEGIN jlti17
  SAY @1070
IF ~~ THEN DO ~SetGlobal("RJiniTalk","GLOBAL",2)
               ActionOverride(Player1,SetDialog("BDPLAYER"))~ GOTO jlti17.1
END

IF ~~ THEN BEGIN jlti17.1
  SAY @1071
IF ~~ THEN DO ~ActionOverride(Player1,SetDialog("BDPLAYER"))~ GOTO jlti17.2
END

IF ~~ THEN BEGIN jlti17.2
  SAY @1072
IF ~~ THEN EXTERN BDPLAYER jlti17.9
END

END

CHAIN IF ~~ THEN BDPLAYER jlti17.9
@1073
== RJFAY1 @1074
== BDPLAYER @1075
== RJFAY1 @1076
== RJINII1 @1077
== BDPLAYER @1078
== RJFAY1 @1079
== RJINII1 @1080 = @1081 = @1082
== RJFAY1 @1083
== RJINII1 @1084
== RJFAY1 @1085
== BDPLAYER @1086
== RJFAY1 @1087
== RJINII1 @1088
== BDPLAYER @1089 = @1090
== RJFAY1 @1091
== RJINII1 @1092
== BDPLAYER @1093
== RJFAY1 @1094
== BDPLAYER @1095
== RJINII1 @1096
== RJFAY1 @1097
== BDPLAYER @1098
== RJINII1 @1099
END
IF ~~ THEN EXTERN RJINII1 1

// Jini pops out to say Hey! to Nazramu

CHAIN IF ~G("RJBDNaz",1)~ THEN RJINII1 RJiniNaz
@800 DO ~SetGlobal("RJBDNaz","GLOBAL",2)~
== BDNAZRAM @801 = @802
== RJINII1 @803 = @804
== BDNAZRAM @805 = @806
== RJINII1 @807 = @808
== BDNAZRAM @809
== RJINII1 @810
== BDNAZRAM @811
== RJINII1 @812
== BDNAZRAM @813
END
IF ~~ THEN EXTERN RJINII1 3

// Jini pops out to forshadow the end

CHAIN IF ~G("RJBDExt9",1)~ THEN RJINII1 exti9
@1050 = @1051 = @1052 = @1053 = @1054 = @1055
END
++ @1056 DO ~SetGlobal("RJiniTalk","GLOBAL",2)
             SetGlobal("RJBDExt9","GLOBAL",2)~ EXTERN RJINII1 exti9.1

CHAIN IF ~~ THEN RJINII1 exti9.1
@1057
== RJINII1 IF ~GGT("RJFaySpawn",1)~ THEN @1059
== RJFAY1 IF ~GGT("RJFaySpawn",1)~ THEN @1060
== RJINII1 IF ~GGT("RJFaySpawn",1)~ THEN @1061 DO ~
               SetGlobal("RJFaySpawn","GLOBAL",1)
               ActionOverride("RJFAY1",RemoveFamiliar())
               ActionOverride("RJFAY1",ChangeEnemyAlly(Myself,NEUTRAL))
               ActionOverride("RJFAY1",MoveBetweenAreas("RJB606",[349.260],4))~
END
++ @1058 DO ~SetGlobal("RJiniTalk","GLOBAL",0)
             DestroySelf()
             StartCutSceneMode()
             StartCutScene("RJCUTESC")~ EXIT
