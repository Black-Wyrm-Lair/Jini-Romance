	        Jini NPNPC MOD for Baldur's Gate (BGEE and EET)
				   Version 3.2
			       A Ron Joyal Project


Contents

1. Introduction
2. Installation
3. General Information
4. Frequently Asked Questions
5. Credits
6. Legal Information

Appendix A: WeiDU Install Log

----------------
1. Introduction
----------------

Jini NPNPC MOD is a romance add-on for Baldur's Gate Extended Edition with the Siege of Dragonspear expansion. Thanx to @tipun, as of v3.0, this mod is now EET compatible.

Jini is a Djinni trapped in a lamp which, if you are a non-evil male, will be given to you by a girl you meet at the outset of your adventure. Jini provides you with the usual services of a Djinn of the Lamp and, if you are nice to her, romance may develop. She will never join your party, but she and her lamp accompany you on your way. She craves freedom, and you have the ability to grant it to her.

This is the prequel to the Rjali Romance mod. It sets the scene for what follows in BG2EE.

Jini is capable of equiping your party members, but will do so only if you ask her nicely. If you enjoy struggle in your game, DO NOT TAKE ADVANTAGE OF THIS SERVICE.

This mod has language support for:
  English
  Russian

----------------
2. Installation
----------------

To install the mod, unpack the archive into your BG directory and run
Setup-Jini.exe.

Once you see the Readme, the installation is complete.

To reinstall or uninstall the mod, run Setup-Jini.exe in your game directory.

For MAC OS X:

There is a weidu-mac executable provided. You have two options. Pick whichever you prefer.

    Copying Option.
        Copy weidu-mac over Setup-Jini.exe.
        Run Setup-Jini.exe (you may have to type ./Setup-Jini.exe to do so)
    Hand-Installation Option.
        Run weidu-mac Setup-Jini.tp2 --tlkout dialog.tlk
        
This mod should be installed after the BG1 NPC Project mod which provides romances for Branwen, Dynaheir, and Sharteel; and after the Sirene NPC mod. This is to allow the Jini mod to prevent romance conflicts from occuring.         


-----------------------
3. General Information
-----------------------

This mod adds Jini as a viable, fully developed NPNPC.

Jini comes with the lamp gifted to you in Candlekeep before you set out on your journeys. And, yes, that little snip is the young Rjali whom you might notice shadowing you around the Sword Coast. Rjali plays no significant role in what happens here. That's for later in BG2EE.

Jini, on the other hand, *is* significant in many ways, if not the usual combat mode. Her services are extensive and develop as you go along. She has a full romance with a non-evil male protagonist. Her romance is a little different. But, you will see...

Also, you will encounter Fay who is a Will-O-The-Wisp hiding from people bent on capturing her and who is in need of a protector. She will tag around with you if you will have her, although not an actual member of your party. She yearns to be big.

Nota: If your protagonist is female and/or evil, this mod is going to do very little for you. In fact, you might just as well not install it.

Nota: If you enjoy struggle (especially in combat) in your game, DO NOT LET JINI EQUIP YOU. And avoid asking her for items and services.

Nota: (for developers) RestParty() plays the appropriate movie, rests the party, and advances the time 8 hours. It also triggers a search through the sleep scripts, even if the party member has been unselected, which can cause the loss of actions that are coded after the RestParty. I solved this by setting my variables BEFORE issuing the RestParty. I insert this only because IESDP mentions none of this.

Nota: Finally wrote the Dream Doors segment. It didn't fit into BG2EE Rjali mod.

Nota: The Advanced AI Scripts can break a dialogue, especially in a rogue. It is recommended that you change each NPC's AI script on joining the party and your Protagonist's on game creation. I use AGEN.

Spoiler: When you turn off Party AI to void killing unnecessarily, it can be a problem keeping Fay with the party, especially if you need to go through a door that requires the whole party. With a dialogue option, you can ask Fay to follow you instead of running away from attackers. She's tough and can survive a fair amount of damage. When the relevant sequence has passed, you can switch her back to her normal cautious mode. Of course, if you find other uses of this facility, feel free to use it. This happens for me when I return to Baldur's Gate after escaping from Candlekeep and need to rescue the Baron. Killing Flaming Fist soldiers loses you a LOT of reputation!

Nota: To use Marek's antidote, go to the inventory screen and move Marek's antidote to a usable item slot. Return to the main screen, select the PC, and click the antidote. Drinking it from the inventory screen does not work!

-------------------------
4. Frequently Asked Questions
------------------------------

Q: Is there a romance between Jini and a male PC?
A: That's the whole point of the mod, isn't it. However, you must be a non-evil male for it to take place.

Q: Is Jini compatible with mod X?
A: Jini should work fine with other mods.

Q: What about multiple romance in BGEE?
A: As of v2.0, multiple romance is supported at the firewall level. That is to say, nobody knows what is going on. (Well, Fay knows, but she isn't bruiting it about.) In TotSC, Branwen, Dynaheir, Sharteel are supported (as provided by the BG1 NPC Project mod). Also, Neera (BGEE), Isra (NPC MOD), and Sirene (NPC mod). In SoD, Corwin, Viconia, Neera, Safana (BGEE), and Sirene (NPC mod) are supported. Of course, Jini and Fay have romances that are totaly unaffected by all those others - except that Fay heckles you about them.

Q: I am confused about romance triggering in SoD. Any advice?
A: Yep. vanatos has posted an excellent explanation on https://forums.beamdog.com/discussion/63769/romance-talk-triggers-guide which you should have a look at. (<- dangling preposition. So, sue me...)

Q: Is Fay going to show up in the BG2EE Rjali mod?
A: Yep. Rjali v8.0 will come out some time after the release of Jini v1.0.

-----------
5. Credits
-----------

Ron Joyal				Designer/Programmer

Jericho2				Russian Translation

tipun    				EET Compatibility

Flirting technology originally developed for Kelsey NPC by Jason Compton and
Jesse Meyers. http://www.pocketplane.net/kelsey

Jini is not developed, supported, or endorsed by BioWare, Black Isle Studios, Interplay Entertainment Corp., or the Wizards of the Coast. All other trademarks and copyrights are property of their respective owners.

Jini was created using the following software:

NearInfinity   		        	https://github.com/Argent77/NearInfinity/releases
EEKeeper         			http://sourceforge.net/projects/eekeeper/
Total Commander        			http://www.ghisler.com/
WeiDU					http://www.weidu.org
ConTEXT					http://www.contexteditor.org
Switch Plus                             http://www.nch.com.au/switch/index.html
ACDSee Pro 9                            http://www.acdsee.com/en/products/acdsee-pro-9
PS gui                                  http://www.shsforums.net/files/file/876-ps-gui/

-------------------
6. Version History
-------------------

Version 3.2
- Minor dialogue and script fixes.
- Allow Jini to give bags in SoD.
- Austin fixed area display glitches.

Version 3.1
- Minor dialogue and script fixes.
- Add reputation upgrade to Jini's services.
- Russian translation supplied by Jericho2.

Version 3.0
- Minor dialogue and script fixes.
- EET compatibility. (Thanx to tipun)
- Recognize Isra.tp2 in recent Isra versions.

Version 2.8 (Mostly thanx to Austin87)
- Minor dialogue and script fixes.
- Fix Isra dialogue when not installed.
- Fix Fay/Isra banter loop.

Version 2.7
- Minor dialogue and script fixes.
- Fix Isra install bug.

Version 2.6
- Minor dialogue and script fixes.
- Add Isra mod to the mix.
- Fix Isra transition to SoD by getting rid of her immediately.
- Fix Jini dialogue jam-up when game clashes with Jini trigger. Symptom is "One at a time, please" on rub. This will now reset the dialogue.

Version 2.5
- Minor dialogue and script fixes.
- Fix install problem. Clean out backup folder.
- Added my WeiDU install log to the readme as an Appendix. This is how I play the game, Folks.

Version 2.4
- Minor dialogue and script fixes.
- Fix Fay poke timing glitch.
- Fix Drizzt help recognition.

Version 2.3
- Minor dialogue and script fixes.
- Find free animation slots instead of using fixed slots.
- Add Doofus to Jini/Fay escape cutscene.
- Fix Ravel large portrait name.
- Upgrade Jini portrait.
- Change lamp use from 50 to 100 before needing sleep.

Version 2.2
- Minor dialogue and script fixes.
- Fix install bug. Some code was predicated on external mods having been installed, without gating them. My bad!

Version 2.1
- Minor dialogue and script fixes.
- Fix Safana jail visit dialog.

Version 2.0
- Minor dialogue and script fixes.
- Allow multiple romances. (Firewall approach)
- Multiple jail visitors at end of SoD.
- Fay will poke you about romance status changes.
- Fay gives romance status updates. She will also tell you where Corwin, Safana, Viconia, and Neera will talk to you next. (PID)
- Ensure that helping Drizzt is recognized.
- Hide Fay in SoD cutscenes where the PC is hidden.
- Reduce lamp weight from 10 to 1.

Version 1.8
- Minor dialogue and script fixes.
- Fix cheats bug.
- Fix journal problem.
- Re-instate the Heal spell. Let clerics and such use the Heal Party spell as well, if cheats are enabled.

Version 1.7
- Minor dialogue and script fixes.
- Accomodate Sirene mod.
- Provide dialogue option to refuse Jini cheats, for those who want to put temptation out of their reach.
- Upgrade Fay's "follow" script.

Version 1.6
- Make mod MAC OS X capable. (With thanks to Michael H for testing.)
- Added weidu-mac executable with instructions for use.

Version 1.5
- Minor dialogue and script fixes.
- Fixed startup problem when beginning a new game while creating a new character. Thank @rashkae for the fix; he found it.

Version 1.4
- Minor dialogue and script fixes.

Version 1.3
- Minor dialogue and script fixes.
- Fix container refill problem in new areas. Cannot rest in new areas as this might interfere with the return mechanism.
- Autoequip Jini's Lamp.
- Create weapons in inventory only, requiring manual equipping.
- Provide a dialogue option to switch Fay from run-away to follow, and back again. See spoiler above for rationale. She still won't fight, relying as she does on your ability to protect her.

Version 1.2
- Minor dialogue and script fixes.
- Change color of RJBAG1 to differentiate it from RJBAG2.
- Prevent Fay from fighting.
- Change cleric spell Heal to Heal Party.
- Provide Fay selection sounds.
- Provide a few more journal entries.

Version 1.1
- Minor dialogue and script fixes.
- Use proper animation for Trias.
- Add escape scene for Jini and Fay.
- Fix Fay's speed.
- Loop Jini chats.

Version 1.0
- Initial release BGEE compatible only.

---------------------
7. Legal Information
---------------------

=================================================================================
BALDUR'S GATE II: SHADOWS OF AMN Developed and © 2000 BioWare Corp. All Rights
Reserved. BALDUR'S GATE II: THRONE OF BHAAL Developed and © 2001 BioWare
Corp. All Rights Reserved. Baldur's Gate, Shadows of Amn, Tales of the Sword
Coast, Forgotten Realms, the Forgotten Realms logo, Advanced Dungeons & Dragons,
the AD&D logo, TSR and the TSR logo, and the Wizards of the Coast logo, are
trademarks of the Wizards of the Coast, Inc., a subsidiary of Hasbro, Inc., and
are used by Interplay Entertainment Corp. under license. All Rights Reserved.
BioWare, the BioWare Infinity Engine and the BioWare logo are the trademarks of
BioWare Corp. All Rights Reserved. Black Isle Studios and the Black Isle Studios
logo are trademarks of Interplay Entertainment Corp. All Rights Reserved.
Exclusively licensed and distributed by Interplay Entertainment Corp. All other
trademarks and copyrights are property of their respective owners.
=================================================================================

=================================================================================
REDISTRIBUTION NOTE: Jini was created to be freely enjoyed by all Baldur's
Gate players and picked apart by all Baldur's Gate modders. Please, don't
mirror Jini anywhere, but feel free to use her code as a base for your mod.
=================================================================================

Appendix A: WeiDU Install Log

// Log of Currently Installed WeiDU Mods
// The top of the file is the 'oldest' mod
// ~TP2_File~ #language_number #component_number // [Subcomponent Name -> ] Component Name [ : Version]
~CDTWEAKS/SETUP-CDTWEAKS.TP2~ #0 #130 // Force All Dialogue to Pause Game: v7
~CDTWEAKS/SETUP-CDTWEAKS.TP2~ #0 #182 // Unique Containers -> Unique icons and names: v7
~CDTWEAKS/SETUP-CDTWEAKS.TP2~ #0 #200 // Remove Blur Effect from Items, e.g. Cloack of Displacement: v7
~CDTWEAKS/SETUP-CDTWEAKS.TP2~ #0 #1010 // More Interjections: v7
~CDTWEAKS/SETUP-CDTWEAKS.TP2~ #0 #1080 // Add Bags of Holding: v7
~CDTWEAKS/SETUP-CDTWEAKS.TP2~ #0 #1090 // Exotic Item Pack: v7
~CDTWEAKS/SETUP-CDTWEAKS.TP2~ #0 #1256 // Move NPCs to Convenient Locations: Move Viconia to South Beregost Road: v7
~CDTWEAKS/SETUP-CDTWEAKS.TP2~ #0 #2060 // Weapon Styles for All: v7
~CDTWEAKS/SETUP-CDTWEAKS.TP2~ #0 #2090 // Change Experience Point Cap -> Remove Experience Cap: v7
~CDTWEAKS/SETUP-CDTWEAKS.TP2~ #0 #2100 // Allow Thieving and Stealth in Heavy Armor: v7
~CDTWEAKS/SETUP-CDTWEAKS.TP2~ #0 #2120 // Allow Arcane Spellcasting in Heavy Armor: v7
~CDTWEAKS/SETUP-CDTWEAKS.TP2~ #0 #2151 // Wear Multiple Protection Items -> No Restrictions: v7
~CDTWEAKS/SETUP-CDTWEAKS.TP2~ #0 #2200 // Multi-Class Grandmastery (Weimer): v7
~CDTWEAKS/SETUP-CDTWEAKS.TP2~ #0 #2210 // Change Grandmastery Bonuses -> True Grandmastery (Baldurdash): v7
~CDTWEAKS/SETUP-CDTWEAKS.TP2~ #0 #2357 // Alter Multiclass Restrictions -> Install options one and two (everyone can multiclass anything): v7
~CDTWEAKS/SETUP-CDTWEAKS.TP2~ #0 #2360 // Remove Racial Restrictions for Single Classes: v7
~CDTWEAKS/SETUP-CDTWEAKS.TP2~ #0 #2380 // Remove Racial Restrictions for Kits: v7
~CDTWEAKS/SETUP-CDTWEAKS.TP2~ #0 #2420 // Loosen Equipment Restrictions for Cleric Multi-Classes: v7
~CDTWEAKS/SETUP-CDTWEAKS.TP2~ #0 #2430 // Change Equipment Restrictions for Druid Multi-Classes -> Loosen Equipment Restrictions for Druid Multi-Classes: v7
~CDTWEAKS/SETUP-CDTWEAKS.TP2~ #0 #2440 // Everyone Gets Bonus APR from Specialization: v7
~CDTWEAKS/SETUP-CDTWEAKS.TP2~ #0 #2520 // Allow Mages to Use Bucklers and Thieves to Use Small Shields (Angel): v7
~CDTWEAKS/SETUP-CDTWEAKS.TP2~ #0 #2530 // Lightning Bolts Don't Bounce (Angel): v7
~CDTWEAKS/SETUP-CDTWEAKS.TP2~ #0 #2999 // Max HP at Level One: v7
~CDTWEAKS/SETUP-CDTWEAKS.TP2~ #0 #3000 // Higher HP on Level Up -> Maximum: v7
~CDTWEAKS/SETUP-CDTWEAKS.TP2~ #0 #3008 // Allow HP Rolls Through Level 20 (Angel): v7
~CDTWEAKS/SETUP-CDTWEAKS.TP2~ #0 #3012 // Maximum HP for NPCs (the bigg) -> For Party-Joinable NPCs Only: v7
~CDTWEAKS/SETUP-CDTWEAKS.TP2~ #0 #3020 // Identify All Items: v7
~CDTWEAKS/SETUP-CDTWEAKS.TP2~ #0 #3031 // Easy Spell Learning -> 100% Learn Spells and No Maximum Cap: v7
~CDTWEAKS/SETUP-CDTWEAKS.TP2~ #0 #3040 // Make Bags of Holding Bottomless: v7
~CDTWEAKS/SETUP-CDTWEAKS.TP2~ #0 #3050 // Remove fatigue from restoration spells: v7
~CDTWEAKS/SETUP-CDTWEAKS.TP2~ #0 #3080 // Increase Ammo Stack Size -> Unlimited Ammo Stacking: v7
~CDTWEAKS/SETUP-CDTWEAKS.TP2~ #0 #3090 // Increase Gem and Jewelry Stacking -> Unlimited Gem and Jewelry Stacking: v7
~CDTWEAKS/SETUP-CDTWEAKS.TP2~ #0 #3100 // Increase Potion Stacking -> Unlimited Potion Stacking: v7
~CDTWEAKS/SETUP-CDTWEAKS.TP2~ #0 #3110 // Increase Scroll Stacking -> Unlimited Scroll Stacking: v7
~CDTWEAKS/SETUP-CDTWEAKS.TP2~ #0 #3115 // Stackable ankheg shells, winterwolf pelts and wyvern heads: v7
~CDTWEAKS/SETUP-CDTWEAKS.TP2~ #0 #3120 // Happy Patch (Party NPCs do not complain about reputation) -> NPCs Are Never Angry About Reputation: v7
~CDTWEAKS/SETUP-CDTWEAKS.TP2~ #0 #3123 // NPCs Don't Fight: v7
~CDTWEAKS/SETUP-CDTWEAKS.TP2~ #0 #3200 // Sellable Items (Icelus): v7
~CDTWEAKS/SETUP-CDTWEAKS.TP2~ #0 #3205 // Stores Purchase All Item Types: v7
~CDTWEAKS/SETUP-CDTWEAKS.TP2~ #0 #3280 // Give Every Class/Kit Four Weapon Slots: v7
~CDTWEAKS/SETUP-CDTWEAKS.TP2~ #0 #3320 // No Depreciation in Stores: v7
~CDTWEAKS/SETUP-CDTWEAKS.TP2~ #0 #3330 // Make party members less likely to die irreversibly: v7
~CDTWEAKS/SETUP-CDTWEAKS.TP2~ #0 #4150 // Move Boo into Minsc's pack: v7
~CDTWEAKS/SETUP-CDTWEAKS.TP2~ #0 #4160 // Allow Yeslick to use axes: v7
~CDTWEAKS/SETUP-CDTWEAKS.TP2~ #0 #4170 // Ensure Shar-Teel doesn't die in the original challenge: v7
~CDTWEAKS/SETUP-CDTWEAKS.TP2~ #0 #4140 // Don't Auto-Assign Advanced AI Scripting to Party: v7
~NEERA/NEERA.TP2~ #0 #0 // Neera Expansion: v1.2.0
~NEERA/NEERA.TP2~ #0 #2 // How much time would you like between talks (approximately)? -> 30 minutes: v1.2.0
~SIRENE/SETUP-SIRENE.TP2~ #0 #0 // Sirene NPC for Baldur's Gate: Enhanced Edition
~SIRENE/SETUP-SIRENE.TP2~ #0 #1 // Choose an alternate class for Sirene? -> True Paladin
~ISRA/ISRA.TP2~ #0 #0 // Isra NPC Mod for BG:EE, EET, BGT and TuTu: v3.4
~BG1NPC/BG1NPC.TP2~ #0 #0 // The BG1 NPC Project: Required Modifications: v22.8
~BG1NPC/BG1NPC.TP2~ #0 #1 // The BG1 NPC Project: Banters, Quests, and Interjections: v22.8
~BG1NPC/BG1NPC.TP2~ #0 #10 // The BG1 NPC Project: Branwen's Romance Core (teen content): v22.8
~BG1NPC/BG1NPC.TP2~ #0 #16 // The BG1 NPC Project: NPCs can be sent to wait in an inn: v22.8
~BG1NPC/BG1NPC.TP2~ #0 #18 // The BG1 NPC Project: Alora's Starting Location -> Alora Starts in Gullykin: v22.8
~BG1NPC/BG1NPC.TP2~ #0 #19 // The BG1 NPC Project: Eldoth's Starting Location -> Eldoth Starts in the Cloakwood Forest: v22.8
~BG1NPC/BG1NPC.TP2~ #0 #31 // The BG1 NPC Project: Sarevok's Diary Adjustments -> SixofSpades Extended Sarevok's Diary: v22.8
~BG1NPC/BG1NPC.TP2~ #0 #200 // The BG1 NPC Project: Player-Initiated Dialogues: v22.8
~JINI/SETUP-JINI.TP2~ #0 #0 // Jini Romance Mod (BGEE NPNPC) created by nullset: v3.0
~JINI/SETUP-JINI.TP2~ #0 #1 // New Mage/Thief Multiclass Imoen: v3.0