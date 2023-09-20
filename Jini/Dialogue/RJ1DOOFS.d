
BEGIN RJ1DOOFS

//  The Keeper of the Door

IF ~IsGabber(Player1)
    G("RJ1Doofs1",0)~ THEN BEGIN doofus0
  SAY @19
IF ~~ THEN REPLY @8 DO ~SetGlobal("RJ1Doofs1","GLOBAL",1)~ GOTO dfs0
END

IF ~IsGabber(Player1)
    G("RJ1Doofs1",1)~ THEN BEGIN doofus
  SAY @1
IF ~~ THEN REPLY @17 GOTO dfs1
IF ~~ THEN REPLY @100 GOTO dfchat
IF ~G("RJ1Doofs2",0)
    G("RJPort",2)~ THEN REPLY @20 DO ~SetGlobal("RJ1Doofs2","GLOBAL",1)~ GOTO dfs4
IF ~G("RJ1Doofs3",0)
    GGT("RJFaySpawn",1)~ THEN REPLY @30 EXTERN RJ1DOOFS dfs5
IF ~G("RJPort",1)
    !G("RJiniTalk",99)~ THEN REPLY @3 GOTO dfs2
IF ~G("RJPort",2)
    !G("RJiniTalk",99)~ THEN REPLY @9 GOTO dfs2
IF ~G("RJPort",1)
    G("RJiniTalk",99)~ THEN REPLY @3 GOTO dfs3
IF ~G("RJPort",2)
    G("RJiniTalk",99)~ THEN REPLY @9 GOTO dfs3
END

IF ~~ THEN BEGIN dfs1
  SAY @18
IF ~~ THEN EXIT
END

//  Intro

IF ~~ THEN BEGIN dfs0
  SAY @0
IF ~~ THEN REPLY @2 GOTO dfs0.1
END

IF ~~ THEN BEGIN dfs0.1
  SAY @10 = @11 = @12 = @13 = @14 = @15
IF ~~ THEN REPLY @16 GOTO doofus
END

//  Talk to Jini first

IF ~~ THEN BEGIN dfs2
  SAY @4 = @5
IF ~~ THEN REPLY @6 EXIT
END

//  Return

IF ~~ THEN BEGIN dfs3
  SAY @7
IF ~G("RJini1st",0)~ THEN DO ~StartCutSceneMode()
                              SetGlobal("RJini1st","GLOBAL",1)
                              StartCutScene("RJCUTRET")~ EXIT
IF ~G("RJini1st",1) G("RJiniSleep",0)~ THEN DO ~StartCutSceneMode()
                              StartCutScene("RJCUTRET")~ EXIT
IF ~G("RJini1st",1) !G("RJiniSleep",0)~ THEN DO ~StartCutSceneMode()
                              StartCutScene("RJRETSLP")~ EXIT
END

//  Party Intro

IF ~~ THEN BEGIN dfs4
  SAY @21
IF ~!InParty(Player3)~ THEN REPLY @22 GOTO dfs4.9
IF ~InParty(Player3)~ THEN REPLY @22 GOTO dfs4.1
END

IF ~~ THEN BEGIN dfs4.1
  SAY @27
IF ~!InParty(Player4)~ THEN REPLY @23 GOTO dfs4.9
IF ~InParty(Player4)~ THEN REPLY @23 GOTO dfs4.2
END

IF ~~ THEN BEGIN dfs4.2
  SAY @27
IF ~!InParty(Player5)~ THEN REPLY @24 GOTO dfs4.9
IF ~InParty(Player5)~ THEN REPLY @24 GOTO dfs4.3
END

IF ~~ THEN BEGIN dfs4.3
  SAY @27
IF ~!InParty(Player6)~ THEN REPLY @25 GOTO dfs4.9
IF ~InParty(Player6)~ THEN REPLY @25 GOTO dfs4.4
END

IF ~~ THEN BEGIN dfs4.4
  SAY @27
IF ~~ THEN REPLY @26 GOTO dfs4.9
END

IF ~~ THEN BEGIN dfs4.9
  SAY @28
IF ~~ THEN REPLY @29 GOTO doofus
END

//  Chats

IF ~~ THEN BEGIN dfchat
  SAY @101
IF ~~ THEN REPLY @102 GOTO doofus

+ ~RandomNum(3,1)~ + @103 + dfuncle1
+ ~RandomNum(3,2)~ + @103 + dfuncle2
+ ~RandomNum(3,3)~ + @103 + dfuncle3

+ ~RandomNum(3,1)~ + @104 + dfcousin1
+ ~RandomNum(3,2)~ + @104 + dfcousin2
+ ~RandomNum(3,3)~ + @104 + dfcousin3

+ ~RandomNum(3,1)~ + @105 + dfjini1
+ ~RandomNum(3,2)~ + @105 + dfjini2
+ ~RandomNum(3,3)~ + @105 + dfjini3

+ ~RandomNum(3,1)~ + @106 + dfhell1
+ ~RandomNum(3,2)~ + @106 + dfhell2
+ ~RandomNum(3,3)~ + @106 + dfhell3

+ ~RandomNum(3,1)~ + @107 + dfwork1
+ ~RandomNum(3,2)~ + @107 + dfwork2
+ ~RandomNum(3,3)~ + @107 + dfwork3

+ ~GGT("RJFayTalks",4) RandomNum(3,1)~ + @108 + dftaco1
+ ~GGT("RJFayTalks",4) RandomNum(3,2)~ + @108 + dftaco2
+ ~GGT("RJFayTalks",4) RandomNum(3,3)~ + @108 + dftaco3

END

IF ~~ THEN BEGIN dfuncle1
  SAY @120 = @121 = @122
IF ~~ THEN REPLY @123 GOTO dfchat
END

IF ~~ THEN BEGIN dfuncle2
  SAY @124 = @125
IF ~~ THEN REPLY @126 GOTO dfuncle2.1
END

IF ~~ THEN BEGIN dfuncle2.1
  SAY @127
IF ~~ THEN GOTO dfchat
END

IF ~~ THEN BEGIN dfuncle3
  SAY @128 = @129 = @130
IF ~~ THEN REPLY @131 GOTO dfchat
END

IF ~~ THEN BEGIN dfcousin1
  SAY @140 = @141 = @142 = @143
IF ~~ THEN REPLY @144 GOTO dfchat
END

IF ~~ THEN BEGIN dfcousin2
  SAY @145 = @146 = @147 = @148
IF ~~ THEN REPLY @149 GOTO dfchat
END

IF ~~ THEN BEGIN dfcousin3
  SAY @150 = @151 = @152
IF ~~ THEN REPLY @153 GOTO dfchat
END

IF ~~ THEN BEGIN dfjini1
  SAY @160 = @161
IF ~~ THEN REPLY @162 GOTO dfchat
END

IF ~~ THEN BEGIN dfjini2
  SAY @163 = @164 = @165
IF ~~ THEN REPLY @166 GOTO dfchat
END

IF ~~ THEN BEGIN dfjini3
  SAY @167
IF ~~ THEN GOTO dfchat
END

IF ~~ THEN BEGIN dfhell1
  SAY @180 = @181 = @182
IF ~~ THEN REPLY @183 GOTO dfchat
END

IF ~~ THEN BEGIN dfhell2
  SAY @184 = @185 = @186
IF ~~ THEN REPLY @187 GOTO dfchat
END

IF ~~ THEN BEGIN dfhell3
  SAY @188
IF ~~ THEN GOTO dfchat
END

IF ~~ THEN BEGIN dfwork1
  SAY @200 = @201 = @202
IF ~~ THEN REPLY @203 GOTO dfchat
END

IF ~~ THEN BEGIN dfwork2
  SAY @204 = @205 = @206
IF ~~ THEN REPLY @207 GOTO dfchat
END

IF ~~ THEN BEGIN dfwork3
  SAY @208 = @209
IF ~~ THEN REPLY @210 GOTO dfchat
END

IF ~~ THEN BEGIN dftaco1
  SAY @220 = @221 = @222
IF ~~ THEN REPLY @223 GOTO dfchat
END

IF ~~ THEN BEGIN dftaco2
  SAY @224 = @225
IF ~~ THEN REPLY @226 GOTO dfchat
END

IF ~~ THEN BEGIN dftaco3
  SAY @227 = @228
IF ~~ THEN REPLY @229 GOTO dfchat
END

//  Chains

//  Goofus talks with Fay

CHAIN IF ~~ THEN RJ1DOOFS dfs5
@31 DO ~SetGlobal("RJ1Doofs3","GLOBAL",1)~
== RJFAY1 @32 = @33
== RJ1DOOFS @34
END
++ @35 EXTERN RJ1DOOFS doofus
