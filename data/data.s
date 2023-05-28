	.INCLUDE "macro.inc"

	.data

	@ What is this first part? Seems unreferenced.

	.INCBIN "baserom.gba", 0x76360, 0x76368-0x76360

	.GLOBAL gUnknown_08076368
gUnknown_08076368:
	.INCBIN "baserom.gba", 0x76368, 0x76387-0x76368

	.GLOBAL gUnknown_08076387
gUnknown_08076387:
	.INCBIN "baserom.gba", 0x76387, 0x7638C-0x76387

	.GLOBAL gUnknown_0807638C
gUnknown_0807638C:
	.INCBIN "baserom.gba", 0x7638C, 0x763AC-0x7638C

	.GLOBAL gUnknown_080763AC
gUnknown_080763AC:
	.INCBIN "baserom.gba", 0x763AC, 0x763CC-0x763AC

	.GLOBAL gUnknown_080763CC
gUnknown_080763CC:
	.INCBIN "baserom.gba", 0x763CC, 0x763D2-0x763CC

	.GLOBAL gUnknown_080763D2
gUnknown_080763D2:
	.INCBIN "baserom.gba", 0x763D2, 0x763D6-0x763D2

	.GLOBAL gUnknown_080763D6
gUnknown_080763D6:
	.INCBIN "baserom.gba", 0x763D6, 0x763DC-0x763D6

	.GLOBAL gUnknown_080763DC
gUnknown_080763DC:
	.INCBIN "baserom.gba", 0x763DC, 0x763E2-0x763DC

	.GLOBAL gUnknown_080763E2
gUnknown_080763E2:
	.INCBIN "baserom.gba", 0x763E2, 0x763E8-0x763E2

	.GLOBAL gUnknown_080763E8
gUnknown_080763E8:
	.INCBIN "baserom.gba", 0x763E8, 0x763ED-0x763E8

	.GLOBAL gUnknown_080763ED
gUnknown_080763ED:
	.INCBIN "baserom.gba", 0x763ED, 0x763F4-0x763ED

	.GLOBAL gUnknown_080763F4
gUnknown_080763F4:
	.INCBIN "baserom.gba", 0x763F4, 0x763FC-0x763F4

	.GLOBAL gUnknown_080763FC
gUnknown_080763FC:
	.INCBIN "baserom.gba", 0x763FC, 0x76404-0x763FC

	.GLOBAL gUnknown_08076404
gUnknown_08076404:
	.ASCII "No\0\0"	
	.ASCII "Yes\0"
	.ASCII "Theme Card already loaded!\n\nOverwrite existing theme?\0\0\0"
	.ASCII "Theme Card\nDEACTIVATED!\0"
	.ASCII "Press A to continue\0"
	.ASCII "Theme Card\nACTIVATED!\0\0\0"
	.ASCII "Erase old world\0"
	.ASCII "Level does not belong\nto current world!\0"
	.ASCII "Overwrite\0\0\0"
	.ASCII "Level already exists!\0\0\0"
	.ASCII "Connection lost!\0\0\0\0"
	.ASCII "Time out!\0\0\0"
	.ASCII "Cancel\0\0"	
	.ASCII "Retry\0\0\0"
	.ASCII "CRC check failed!\0\0\0\0\0\0\0"
	.ASCII "Saving Level as\0"
	.ASCII "Erasing levels\0\0"
	.ASCII "Adding level\0\0\0\0"
	.ASCII "ERROR\0\0\0"
	.ASCII "Mario vs. Donkey Kong-e card\nRECEIVED!\n\nBut Level Already Exists as\0"
	.ASCII "Mario vs. Donkey Kong-e card\nRECEIVED!\n\nNew level received:\0"
	.ASCII "RECEIVING\nMario vs. Donkey Kong-e card...\0\0\0"
	.ASCII "Mario vs. Donkey Kong-e card\nDETECTED!!\n\n\0\0\0"
	.ASCII "WAITING FOR\nMario vs. Donkey Kong-e card...\0"
	.ASCII "Please connect to GBA with\nan e-Reader and scan a\nMario vs. Donkey Kong-e card\ninto it.\n\0\0\0\0"
	.ASCII "Press A Button to Retry\nPress B Button to Cancel\0\0\0\0"
	.ASCII "Press A Button to continue\0\0"
	.ASCII "Please DO NOT TURN OFF\nGame Boy Advance Systems\nor DISCONNECT Game Boy Advance\nGame Link cable\0\0"
	.ASCII "Press A Button to Receive Level\nPress B Button to Cancel\0\0\0\0"
	.ASCII "Press B Button to Cancel\0\0\0\0"
	.ASCII "Press A Button when Ready\nPress B Button to Cancel\0\0"

	.GLOBAL gUnknown_08076800
gUnknown_08076800:
	.ASCII "ERASE\nLEVEL e-\0\0"
	.ASCII "Press A Button to ERASE LEVEL\0\0\0"
	.ASCII "Press A Button to ADD LEVEL\0"
	
	.GLOBAL gUnknown_0807684C
gUnknown_0807684C:
	.ASCII "No Space for new\nMario vs. Donkey\nKong-e levels.\nPlease Erase a\nLevel first!\0\0\0\0"
	
	.GLOBAL gUnknown_0807689C
gUnknown_0807689C:
	.ASCII "OK\0\0"
	
	.GLOBAL gTextCardEThirteen
gTextCardEThirteen:
	.ASCII "Card-E Level 13\0"
	
	.GLOBAL gTextCardETwelve
gTextCardETwelve:
	.ASCII "Card-E Level 12\0"
	
	.GLOBAL gTextCardEEleven
gTextCardEEleven:
	.ASCII "Card-E Level 11\0"
	
	.GLOBAL gTextCardETen
gTextCardETen:
	.ASCII "Card-E Level 10\0"
	
	.GLOBAL gTextCardENine
gTextCardENine:
	.ASCII "Card-E Level 9\0\0"
	
	.GLOBAL gTextCardEEight
gTextCardEEight:
	.ASCII "Card-E Level 8\0\0"
	
	.GLOBAL gTextCardESeven
gTextCardESeven:
	.ASCII "Card-E Level 7\0\0"
	
	.GLOBAL gTextCardESix
gTextCardESix:
	.ASCII "Card-E Level 6\0\0"
	
	.GLOBAL gTextCardEFive
gTextCardEFive:
	.ASCII "Card-E Level 5\0\0"
	
	.GLOBAL gTextCardEFour
gTextCardEFour:
	.ASCII "Card-E Level 4\0\0"
	
	.GLOBAL gTextCardEThree
gTextCardEThree:	
	.ASCII "Card-E Level 3\0\0"
	
	.GLOBAL gTextCardETwo
gTextCardETwo:
	.ASCII "Card-E Level 2\0\0"
	
	.GLOBAL gTextCardEOne
gTextCardEOne:
	.ASCII "Card-E Level 1\0\0"
	
	.GLOBAL gUnknown_08076970
gUnknown_08076970:
	.ASCII "Scan Card-e\0"
	
	.GLOBAL gUnknown_0807697C
gUnknown_0807697C:
	.ASCII "Scan Preloaded Card-e\0\0\0"

	.GLOBAL gUnknown_08076994
gUnknown_08076994:
	.4byte gUnknown_08076970
	.4byte gUnknown_0807697C
	
	.GLOBAL gUnknown_0807699C
gUnknown_0807699C:
	.ASCII "Press B to return\0\0\0"

	.GLOBAL gUnknown_080769B0
gUnknown_080769B0:
	.INCBIN "baserom.gba", 0x769B0, 0x769B8-0x769B0

	.GLOBAL gUnknown_080769B8
gUnknown_080769B8:
	.ASCII "\0\0\0\0"
	.ASCII "Erase\0\0\0"
	.ASCII "Cancel\0\0"
	.ASCII "Retry\0\0\0"
	.ASCII "Data in memory\nis corrupted!\0\0\0\0"

	.GLOBAL gUnknown_080769F4
gUnknown_080769F4:
	.ASCII "Erasing...\0\0"
	.ASCII "ERROR\nSaved Mario vs. Donkey Kong-e\nlevels have been erased due to\ncorruption of data.\0\0"
	.ASCII "ERROR\nAll saved data has been erased\ndue to corruption of data\0\0"
	.ASCII "ERROR\nFlash hardware could not\nbe detected.\nSaving is disabled.\0"

	.GLOBAL gUnknown_08076AD8
gUnknown_08076AD8:
	.INCBIN "baserom.gba", 0x76AD8, 0x76D58-0x76AD8

	.GLOBAL gUnknown_08076D58
gUnknown_08076D58:
	.INCBIN "baserom.gba", 0x76D58, 0x76D70-0x76D58

	.GLOBAL gUnknown_08076D70
gUnknown_08076D70:
	.INCBIN "baserom.gba", 0x76D70, 0x76D94-0x76D70

	.GLOBAL gUnknown_08076D94
gUnknown_08076D94:
	.ASCII "Heap overflow.\nWe are out of RAM!\0"

	.ALIGN 2
	.ASCII "MultiSio010918\0"

	.ALIGN 2
	.ASCII "SENDING COMPLETED\n\n"
	.ASCII "Press A Button to Resend\n"
	.ASCII "Press B Button to Cancel.\0"

	.ALIGN 2
	.ASCII "SENDING...\n\n"
	.ASCII "Please DO NOT TURN OFF\n"
	.ASCII "Game Boy Advance Systems\n"
	.ASCII "or Disconnect the\n"
	.ASCII "Game Boy Advance\n"
	.ASCII "Game Link cable.\0"

	.ALIGN 2
	.ASCII "READY TO SEND\n\n"
	.ASCII "Press A Button on GBA with\n"
	.ASCII "Mario vs. Donkey Kong to\n"
	.ASCII "begin sending new level to.\0"

	.ALIGN 2
	.ASCII "READY TO SEND\n\n"
	.ASCII "Link e-Reader to\n"
	.ASCII "Mario vs. Donkey Kong and\n"
	.ASCII "select the e-Reader card\n"
	.ASCII "Menu and ADD LEVEL to begin.\n"
	.ASCII "Press B Button to Cancel\0"

	.ALIGN 2
	.GLOBAL gUnknown_08076F6C
gUnknown_08076F6C:
	.ASCII "LOST ALL\0"

	.ALIGN 2
	.GLOBAL gUnknown_08076F78
gUnknown_08076F78:
	.ASCII "MINI MARIOS\0"

	.ALIGN 2
	.GLOBAL gUnknown_08076F84
gUnknown_08076F84:
	.ASCII "GET TOY CARDS!\0"

	.ALIGN 2
	.GLOBAL gUnknown_08076F94
gUnknown_08076F94:
	.INCBIN "baserom.gba", 0x76F94, 0x76F98-0x76F94

	.GLOBAL gUnknown_08076F98
gUnknown_08076F98:
	.INCBIN "baserom.gba", 0x76F98, 0x76FA0-0x76F98

	.GLOBAL gUnknown_08076FA0
gUnknown_08076FA0:
	.INCBIN "baserom.gba", 0x76FA0, 0x76FB8-0x76FA0

	.GLOBAL gUnknown_08076FB8
gUnknown_08076FB8:
	.INCBIN "baserom.gba", 0x76FB8, 0x76FBC-0x76FB8

	.GLOBAL gUnknown_08076FBC
gUnknown_08076FBC:
	.INCBIN "baserom.gba", 0x76FBC, 0x76FC4-0x76FBC

	.GLOBAL gUnknown_08076FC4
gUnknown_08076FC4:
	.INCBIN "baserom.gba", 0x76FC4, 0x76FC8-0x76FC4

	.GLOBAL gUnknown_08076FC8
gUnknown_08076FC8:
	.INCBIN "baserom.gba", 0x76FC8, 0x76FD0-0x76FC8

	.GLOBAL gUnknown_08076FD0
gUnknown_08076FD0:
	.INCBIN "baserom.gba", 0x76FD0, 0x76FD4-0x76FD0

	.GLOBAL gUnknown_08076FD4
gUnknown_08076FD4:
	.INCBIN "baserom.gba", 0x76FD4, 0x77534-0x76FD4

	.GLOBAL gUnknown_08077534
gUnknown_08077534:
	.ASCII "DK_FALL\0"
	.ASCII "WON_TEXT\0\0\0\0"
	.ASCII "RIBBON\0\0"
	.ASCII "DK_GRUNT\0\0\0\0"
	.ASCII "MM_WALK\0"
	.ASCII "ROCK_BOUNCE\0"
	.ASCII "BARREL_BOUNCE\0\0\0"
	.ASCII "BOSS_DIE3\0\0\0"
	.ASCII "SPIKE_APPEAR\0\0\0\0"
	.ASCII "SPIKE_VANISH\0\0\0\0"
	.ASCII "MM_MAMAMIAS\0"
	.ASCII "MM_FREE\0"
	.ASCII "MM_WAKEUP\0\0\0"
	.ASCII "WORLD_START\0"
	.ASCII "SCUFF2\0\0"
	.ASCII "DK_WALK\0"
	.ASCII "STAR\0\0\0\0"
	.ASCII "YOU_WON3\0\0\0\0"
	.ASCII "YOU_WON2\0\0\0\0"
	.ASCII "YOU_WON1\0\0\0\0"
	.ASCII "TITLE\0\0\0"
	.ASCII "MOVIE_08\0\0\0\0"
	.ASCII "MOVIE2_10\0\0\0"
	.ASCII "MOVIE2_9\0\0\0\0"
	.ASCII "MOVIE6_10\0\0\0"
	.ASCII "MOVIE6_09\0\0\0"
	.ASCII "MOVIE6_08\0\0\0"
	.ASCII "MOVIE6_07\0\0\0"
	.ASCII "MOVIE6_06\0\0\0"
	.ASCII "MOVIE6_05\0\0\0"
	.ASCII "MOVIE6_04\0\0\0"
	.ASCII "MOVIE6_03\0\0\0"
	.ASCII "MOVIE6_02\0\0\0"
	.ASCII "MOVIE6_01\0\0\0"
	.ASCII "MOVIE5_07\0\0\0"
	.ASCII "MOVIE5_05\0\0\0"
	.ASCII "MOVIE5_01\0\0\0"
	.ASCII "MOVIE4_10\0\0\0"
	.ASCII "MOVIE4_09\0\0\0"
	.ASCII "MOVIE4_08\0\0\0"
	.ASCII "MOVIE4_07\0\0\0"
	.ASCII "MOVIE4_06\0\0\0"
	.ASCII "MOVIE4_04\0\0\0"
	.ASCII "MOVIE4_03\0\0\0"
	.ASCII "MOVIE4_02\0\0\0"
	.ASCII "MOVIE4_01\0\0\0"
	.ASCII "MOVIE3_14\0\0\0"
	.ASCII "MOVIE3_13\0\0\0"
	.ASCII "MOVIE3_12\0\0\0"
	.ASCII "MOVIE3_11\0\0\0"
	.ASCII "MOVIE3_10\0\0\0"
	.ASCII "MOVIE3_09\0\0\0"
	.ASCII "MOVIE3_08\0\0\0"
	.ASCII "MOVIE3_07\0\0\0"
	.ASCII "MOVIE3_06\0\0\0"
	.ASCII "MOVIE3_05\0\0\0"
	.ASCII "MOVIE3_04\0\0\0"
	.ASCII "MOVIE3_03\0\0\0"
	.ASCII "MOVIE3_02\0\0\0"
	.ASCII "MOVIE3_01\0\0\0"
	.ASCII "TOADS_GRAB\0\0"
	.ASCII "TOADS_JUMP\0\0"
	.ASCII "BIGBARREL_FALL\0\0"
	.ASCII "BIGBARREL_HIT\0\0\0"
	.ASCII "SPIKE_HIT\0\0\0"
	.ASCII "BARREL\0\0"
	.ASCII "PLUS_MAIN\0\0\0"
	.ASCII "BOSS_INTRO3\0"
	.ASCII "BOSS_INTRO1\0"
	.ASCII "BOSS_DIE2\0\0\0"
	.ASCII "BOSS_DIE1\0\0\0"
	.ASCII "CURSOR_UP_DN\0\0\0\0"
	.ASCII "CURSOR_WORLD\0\0\0\0"
	.ASCII "BOSS_SWITCH\0"
	.ASCII "BOSS_ARM5\0\0\0"
	.ASCII "BOSS_ARM4\0\0\0"
	.ASCII "BOSS_ARM3\0\0\0"
	.ASCII "BOSS_ARM2\0\0\0"
	.ASCII "BOSS_ARM\0\0\0\0"
	.ASCII "MOVIE2_8\0\0\0\0"
	.ASCII "MOVIE2_7\0\0\0\0"
	.ASCII "MOVIE2_6\0\0\0\0"
	.ASCII "MOVIE2_5\0\0\0\0"
	.ASCII "MOVIE2_4\0\0\0\0"
	.ASCII "MOVIE2_3\0\0\0\0"
	.ASCII "MOVIE2_2\0\0\0\0"
	.ASCII "MOVIE2_1\0\0\0\0"
	.ASCII "MINI_KEY\0\0\0\0"
	.ASCII "MOVIE_01\0\0\0\0"
	.ASCII "MOVIE_07\0\0\0\0"
	.ASCII "SHUFFLE\0"
	.ASCII "JUMP_D\0\0"
	.ASCII "JUMP_C\0\0"
	.ASCII "JUMP_B\0\0"
	.ASCII "JUMP_A\0\0"
	.ASCII "TOAD_SET\0\0\0\0"
	.ASCII "TOAD_CARRY\0\0"
	.ASCII "SHATTER\0"
	.ASCII "KEY_TOAD\0\0\0\0"
	.ASCII "TRASHCAN\0\0\0\0"
	.ASCII "JUMP_8\0\0"
	.ASCII "DK_JUMP\0"
	.ASCII "LASER\0\0\0"
	.ASCII "MM_BOINGUP\0\0"
	.ASCII "BONE\0\0\0\0"
	.ASCII "SPIKE\0\0\0"
	.ASCII "YANK\0\0\0\0"
	.ASCII "DK_BLUB\0"
	.ASCII "SPARKY_LOOP\0"
	.ASCII "BOX_FALL\0\0\0\0"
	.ASCII "TOAD_TOSS\0\0\0"
	.ASCII "TOAD_WALK\0\0\0"
	.ASCII "GOTCHA\0\0"
	.ASCII "DK_HEAD\0"
	.ASCII "REACH\0\0\0"
	.ASCII "SCATTER\0"
	.ASCII "CROUCH\0\0"
	.ASCII "CANNON\0\0"
	.ASCII "BAT\0"
	.ASCII "VAPORIZE\0\0\0\0"
	.ASCII "BOMB_BLOW\0\0\0"
	.ASCII "BOMB_FLASH\0\0"
	.ASCII "BOMB_JUMP\0\0\0"
	.ASCII "BOMB_PEEP\0\0\0"
	.ASCII "SHY_RUN\0"
	.ASCII "SHY_WAKE\0\0\0\0"
	.ASCII "GHOST\0\0\0"
	.ASCII "GROWL2\0\0"
	.ASCII "GROWL\0\0\0"
	.ASCII "POP\0"
	.ASCII "SPIT\0\0\0\0"
	.ASCII "BRICKMAN\0\0\0\0"
	.ASCII "KICK\0\0\0\0"
	.ASCII "SHWING\0\0"
	.ASCII "METALROLL\0\0\0"
	.ASCII "RESTART\0"
	.ASCII "OUCH\0\0\0\0"
	.ASCII "FOUNTAIN\0\0\0\0"
	.ASCII "BUBBLE\0\0"
	.ASCII "LAVA\0\0\0\0"
	.ASCII "CRUMBLE\0"
	.ASCII "NINJI\0\0\0"
	.ASCII "SPITFIRE\0\0\0\0"
	.ASCII "CRUSH\0\0\0"
	.ASCII "GRAB_LADDER\0"
	.ASCII "GRAB_ROPE\0\0\0"
	.ASCII "GRAB_WIRE\0\0\0"
	.ASCII "KEY3\0\0\0\0"
	.ASCII "KEY2\0\0\0\0"
	.ASCII "MOVIE_06\0\0\0\0"
	.ASCII "MOVIE_05\0\0\0\0"
	.ASCII "MOVIE_04\0\0\0\0"
	.ASCII "MOVIE_03\0\0\0\0"
	.ASCII "MOVIE_02\0\0\0\0"
	.ASCII "DK_BLUBBER\0\0"
	.ASCII "DK_EXIT1\0\0\0\0"
	.ASCII "EGG_FALL\0\0\0\0"
	.ASCII "ELEV_STOP\0\0\0"
	.ASCII "ELEV_GO\0"
	.ASCII "LEVEL_START\0"
	.ASCII "JUMP_7\0\0"
	.ASCII "MM_OH_NO\0\0\0\0"
	.ASCII "LIFT\0\0\0\0"
	.ASCII "GLASS\0\0\0"
	.ASCII "SQUEEZE\0"
	.ASCII "WARP_IN\0"
	.ASCII "WARP_OUT\0\0\0\0"
	.ASCII "TOYLAST\0"
	.ASCII "TOY1\0\0\0\0"
	.ASCII "EMPTY\0\0\0"
	.ASCII "CHOOSE\0\0"
	.ASCII "POINTER\0"
	.ASCII "FRUIT_FALL\0\0"
	.ASCII "SLAM2\0\0\0"
	.ASCII "DK_BELLOW\0\0\0"
	.ASCII "DK_HURT\0"
	.ASCII "OOF\0"
	.ASCII "CHEST_CLOSE\0"
	.ASCII "CHEST_OPEN\0\0"
	.ASCII "MM_PROTECT\0\0"
	.ASCII "MM_BOING\0\0\0\0"
	.ASCII "MM_DIE\0\0"
	.ASCII "LOOK_UP\0"
	.ASCII "BLANK\0\0\0"
	.ASCII "RETURN\0\0"
	.ASCII "SCROLL\0\0"
	.ASCII "DOOR\0\0\0\0"
	.ASCII "ROPE_DOWN\0\0\0"
	.ASCII "ROPE_UP\0"
	.ASCII "JUMP_6\0\0"
	.ASCII "BOING\0\0\0"
	.ASCII "SWITCH3\0"
	.ASCII "SWITCH2\0"
	.ASCII "SWITCH1\0"
	.ASCII "SKIDSHORT\0\0\0"
	.ASCII "SILENCE\0"
	.ASCII "HELP\0\0\0\0"
	.ASCII "ONE_UP\0\0"
	.ASCII "SPIN_1\0\0"
	.ASCII "WIREJUMP\0\0\0\0"
	.ASCII "UNLOCK\0\0"
	.ASCII "SQUEAK\0\0"
	.ASCII "SPLAT\0\0\0"
	.ASCII "SPIN\0\0\0\0"
	.ASCII "KEY_DOOR\0\0\0\0"
	.ASCII "SHOCK\0\0\0"
	.ASCII "SCUFF\0\0\0"
	.ASCII "POUND2\0\0"
	.ASCII "ITEMLAST\0\0\0\0"
	.ASCII "HURT\0\0\0\0"
	.ASCII "EXIT\0\0\0\0"
	.ASCII "BLOCK\0\0\0"
	.ASCII "BURN2\0\0\0"
	.ASCII "BEAM\0\0\0\0"
	.ASCII "START\0\0\0"
	.ASCII "STAMP\0\0\0"
	.ASCII "SELECT_S\0\0\0\0"
	.ASCII "SELECT_M\0\0\0\0"
	.ASCII "ITEM\0\0\0\0"
	.ASCII "GRID\0\0\0\0"
	.ASCII "FIELD\0\0\0"
	.ASCII "EXIT_ED\0"
	.ASCII "ERROR\0\0\0"
	.ASCII "ERASE\0\0\0"
	.ASCII "CURSOR_S\0\0\0\0"
	.ASCII "CURSOR_M\0\0\0\0"
	.ASCII "CURSOR_E\0\0\0\0"
	.ASCII "BACK\0\0\0\0"
	.ASCII "LETS_GO\0"
	.ASCII "HERE_WEGO\0\0\0"
	.ASCII "PICKUP_CRYSTAL\0\0"
	.ASCII "WALK\0\0\0\0"
	.ASCII "THROW\0\0\0"
	.ASCII "CRASH\0\0\0"
	.ASCII "KEY1\0\0\0\0"
	.ASCII "STEPS2\0\0"
	.ASCII "ITEM1\0\0\0"
	.ASCII "COUNTER\0"
	.ASCII "JUMP_5\0\0"
	.ASCII "PICKUP\0\0"
	.ASCII "JUMP_3\0\0"
	.ASCII "JUMP_4\0\0"
	.ASCII "GRUNT2\0\0"
	.ASCII "JUMP_1\0\0"
	.ASCII "BURN1\0\0\0"
	.ASCII "STUN\0\0\0\0"
	.ASCII "TUMBLE1\0"
	.ASCII "POUND\0\0\0"
	.ASCII "SKID\0\0\0\0"
	.ASCII "CLIMB\0\0\0"

	.GLOBAL gUnknown_08077F2C
gUnknown_08077F2C:
	.INCBIN "baserom.gba", 0x77F2C, 0x77FAC-0x77F2C
	
	.GLOBAL sSetupInfos
sSetupInfos:
	.INCBIN "baserom.gba", 0x77FAC, 0x7820C-0x77FAC

	.GLOBAL gUnknown_0807820C
gUnknown_0807820C:
	.4byte 0x02000000

	.GLOBAL gUnknown_08078210
gUnknown_08078210:
	.INCBIN "baserom.gba", 0x78210, 0x78214-0x78210

	.GLOBAL gUnknown_08078214
gUnknown_08078214:
	.INCBIN "baserom.gba", 0x78214, 0x78216-0x78214

	.GLOBAL gUnknown_08078216
gUnknown_08078216:
	.INCBIN "baserom.gba", 0x78216, 0x7822C-0x78216

	.GLOBAL gUnknown_0807822C
gUnknown_0807822C:
	.INCBIN "baserom.gba", 0x7822C, 0x78234-0x7822C

	.GLOBAL gUnknown_08078234
gUnknown_08078234:
	.INCBIN "baserom.gba", 0x78234, 0x7823C-0x78234

	.GLOBAL gMainStateInitCallbacks
gMainStateInitCallbacks:
	.4byte intro_init_callback @ sub_0801B9DC 		  (Mode 0x0)
	.4byte goto_credits_init_callback @ sub_080347DC      	  (Mode 0x1)
	.4byte level_demo_init_callback @ sub_08008B8C 		  (Mode 0x2)
	.4byte main_menu_init_callback @ sub_080114D4 		  (Mode 0x3)
	.4byte options_init_callback @ sub_0802895C		  (Mode 0x4)
	.4byte level_demo_init_callback @ sub_08008B8C 		  (Mode 0x5)
	.4byte level_demo_reset_init_callback @ sub_0800748C      (Mode 0x6)
	.4byte title_init_callback @ sub_0801B55C		  (Mode 0x7)
	.4byte level_select_init_callback @ sub_08015280 	  (Mode 0x8)
	.4byte expert_levels_init_callback @ sub_08035388 	  (Mode 0x9)
	.4byte unknown_0A_init_callback @ sub_08008C34 	          (Mode 0xA)
	.4byte level_editor_init_callback @ sub_08008C9C 	  (Mode 0xB)
	.4byte after_tutorial_init_callback @ sub_08008A9C 	  (Mode 0xC)
	.4byte level_play_init_callback @ sub_08008B14 	          (Mode 0xD)
	.4byte level_retry_init_callback @ sub_0802AAE8 	  (Mode 0xE)
	.4byte 0 @  						  (Mode 0xF)
	.4byte pause_menu_init_callback @ sub_0801BE34 		  (Mode 0x10)
	.4byte help_init_callback @ sub_0802A4B4 	          (Mode 0x11)
	.4byte level_retry_init_callback @ sub_0802AAE8 	  (Mode 0x12)
	.4byte 0 @						  (Mode 0x13)
	.4byte boss_clear_init_callback @ sub_0801BF14 		  (Mode 0x14)
	.4byte level_results_init_callback @ sub_0802935C         (Mode 0x15)
	.4byte bonus_stoparrow_init_callback @ sub_080215B4       (Mode 0x16)
	.4byte bonus_swapboxes_init_callback @ sub_08027068       (Mode 0x17)
	.4byte e_world_init_callback @ sub_0802EC34               (Mode 0x18)
	.4byte e_world_return_init_callback @ sub_0802DE08        (Mode 0x19)
	.4byte e_card_scan_init_callback @ sub_0802DD4C           (Mode 0x1A)
	.4byte e_card_scan_init_callback @ sub_0802DD4C           (Mode 0x1B)
	.4byte e_world_debug_init_callback @ sub_0802F590         (Mode 0x1C)
	.4byte e_world_from_menu_init_callback @ sub_0803218C 	  (Mode 0x1D)
	.4byte movie_player_init_callback @ sub_0802D510 	  (Mode 0x1E)
	.4byte fade_transition_init_callback @ sub_08029D48       (Mode 0x1F)
	.4byte world_start_init_callback @ sub_08037050           (Mode 0x20)
	.4byte level_view_init_callback @ sub_08032370            (Mode 0x21)
	.4byte game_init_callback @ sub_08032408                  (Mode 0x22)

	.GLOBAL gMainStateMainCallbacks
gMainStateMainCallbacks:
	.4byte intro_main @ sub_0801ba88			  (Mode 0x0)
	.4byte goto_credits_main @ sub_08034820			  (Mode 0x1)
	.4byte level_demo_main @ sub_080080F8			  (Mode 0x2)
	.4byte main_menu_main @ sub_080123B8			  (Mode 0x3)
	.4byte options_main @ sub_08028C08			  (Mode 0x4)
	.4byte level_demo_main @ sub_080080F8			  (Mode 0x5)
	.4byte level_demo_main @ sub_080080F8			  (Mode 0x6)
	.4byte title_main @ sub_0801B64C			  (Mode 0x7)
	.4byte level_select_main @ sub_08016BEC			  (Mode 0x8)
	.4byte expert_levels_main @ sub_08035908		  (Mode 0x9)
	.4byte level_edit_main @ sub_08008CF0			  (Mode 0xA)
	.4byte level_edit_main @ sub_08008CF0			  (Mode 0xB)
	.4byte 0 @ 					  	  (Mode 0xC)
	.4byte level_play_main @ sub_08007B58			  (Mode 0xD)
	.4byte level_retry_main @ sub_0802ACAC			  (Mode 0xE)
	.4byte level_play_main @ sub_08007B58			  (Mode 0xF)
	.4byte pause_menu_main @ sub_0801BE7C			  (Mode 0x10)
	.4byte help_main @ sub_0802AA28				  (Mode 0x11)
	.4byte level_retry_main @ sub_0802ACAC			  (Mode 0x12)
	.4byte 0 @ 					  	  (Mode 0x13)
	.4byte boss_clear_main @ sub_0801C278			  (Mode 0x14)
	.4byte level_results_main @ sub_080296A4		  (Mode 0x15)
	.4byte bonus_stoparrow_main @ sub_08021924		  (Mode 0x16)
	.4byte bonus_swapboxes_main @ sub_08027900		  (Mode 0x17)
	.4byte e_world_main @ sub_0802DF50			  (Mode 0x18)
	.4byte e_world_main @ sub_0802DF50			  (Mode 0x19)
	.4byte e_card_scan_main @ sub_0802D6DC			  (Mode 0x1A)
	.4byte e_card_scan_main @ sub_0802D6DC			  (Mode 0x1B)
	.4byte e_world_debug_main @ sub_0802F1EC		  (Mode 0x1C)
	.4byte e_world_from_menu_main @ sub_08031EE8		  (Mode 0x1D)
	.4byte movie_player_main @ sub_0802D208			  (Mode 0x1E)
	.4byte fade_transition_main @ sub_08029F24		  (Mode 0x1F)
	.4byte world_start_main @ sub_080374E0			  (Mode 0x20)
	.4byte level_view_main @ sub_08032210			  (Mode 0x21)
	.4byte game_init_main @ sub_080324DC			  (Mode 0x22)

	.GLOBAL gMainStateLoopCallbacks
gMainStateLoopCallbacks:
	.4byte intro_loop
	.4byte goto_credits_loop
	.4byte level_play_loop
	.4byte main_menu_loop
	.4byte options_loop
	.4byte level_play_loop
	.4byte level_play_loop
	.4byte title_loop
	.4byte level_select_loop
	.4byte expert_levels_loop
	.4byte 0
	.4byte level_play_loop
	.4byte level_play_loop
	.4byte level_play_loop
	.4byte level_retry_loop
	.4byte level_play_loop
	.4byte pause_menu_loop
	.4byte help_loop
	.4byte level_retry_loop
	.4byte 0
	.4byte boss_clear_loop
	.4byte level_results_loop
	.4byte bonus_stoparrow_loop
	.4byte bonus_swapboxes_loop
	.4byte e_world_loop
	.4byte e_world_loop
	.4byte e_card_scan_loop
	.4byte e_card_scan_loop
	.4byte e_world_debug_loop
	.4byte e_world_from_menu_loop
	.4byte movie_player_loop
	.4byte 0
	.4byte world_start_loop
	.4byte level_view_loop
	.4byte game_init_loop

	.GLOBAL gMainStateEndCallbacks
gMainStateEndCallbacks:
	.4byte intro_end
	.4byte goto_credits_end
	.4byte level_play_end
	.4byte main_menu_end
	.4byte options_end
	.4byte level_play_end
	.4byte level_play_end
	.4byte title_end
	.4byte level_select_end
	.4byte expert_levels_end
	.4byte level_editor_end
	.4byte level_editor_end
	.4byte 0
	.4byte level_play_end
	.4byte level_retry_end
	.4byte level_play_end
	.4byte pause_menu_end
	.4byte help_end
	.4byte level_retry_end
	.4byte 0
	.4byte boss_clear_end
	.4byte level_results_end
	.4byte bonus_stoparrow_end
	.4byte bonus_swapbxoes_end
	.4byte e_world_end
	.4byte e_world_end
	.4byte e_card_scan_end
	.4byte e_card_scan_end
	.4byte e_world_debug_end
	.4byte e_world_from_menu_end
	.4byte movie_player_end
	.4byte fade_transition_end
	.4byte world_start_end
	.4byte level_view_end
	.4byte game_init_end

	.GLOBAL gUnknown_0807846C
gUnknown_0807846C:
	.4byte sub_08015044
	.4byte sub_08015044
	.4byte sub_08015044
	.4byte sub_08015044
	.4byte sub_08015044
	.4byte sub_08015044
	.4byte sub_08015044
	.4byte sub_08015044
	.4byte sub_08015044
	.4byte sub_08015044
	.4byte sub_08015044
	.4byte sub_08015044
	.4byte sub_08015044
	.4byte sub_08015044
	.4byte sub_08015044
	.4byte sub_08015044
	.4byte sub_08015044
	.4byte sub_08015044
	.4byte sub_08015044
	.4byte sub_08015044
	.4byte sub_08015044
	.4byte sub_08015044
	.4byte sub_08015044
	.4byte sub_08015044
	.4byte sub_08015044
	.4byte sub_08015044
	.4byte sub_08015044
	.4byte sub_08015044
	.4byte sub_08015044
	.4byte sub_08015044
	.4byte sub_08015044
	.4byte sub_08015044
	.4byte sub_08015044
	.4byte sub_08015044
	.4byte sub_08015044

	.GLOBAL gUnknown_080784F8
gUnknown_080784F8:
	.INCBIN "baserom.gba", 0x784F8, 0x78558-0x784F8

	.GLOBAL gUnknown_08078558
gUnknown_08078558:
	.INCBIN "baserom.gba", 0x78558, 0x785B0-0x78558

	.GLOBAL gUnknown_080785B0
gUnknown_080785B0:
	.INCBIN "baserom.gba", 0x785B0, 0x785E0-0x785B0

	.GLOBAL gUnknown_080785E0
gUnknown_080785E0:
	.INCBIN "baserom.gba", 0x785E0, 0x78610-0x785E0

	.GLOBAL gUnknown_08078610
gUnknown_08078610:
	.INCBIN "baserom.gba", 0x78610, 0x78628-0x78610

	.GLOBAL gUnknown_08078628
gUnknown_08078628:
	.INCBIN "baserom.gba", 0x78628, 0x78640-0x78628

	.GLOBAL gUnknown_08078640
gUnknown_08078640:
	.INCBIN "baserom.gba", 0x78640, 0x78680-0x78640

	.GLOBAL gUnknown_08078680
gUnknown_08078680:
	.INCBIN "baserom.gba", 0x78680, 0x786C0-0x78680

	.GLOBAL gUnknown_080786C0
gUnknown_080786C0:
	.INCBIN "baserom.gba", 0x786C0, 0x78700-0x786C0

	.GLOBAL gUnknown_08078700
gUnknown_08078700:
	.INCBIN "baserom.gba", 0x78700, 0x78760-0x78700

	.GLOBAL gUnknown_08078760
gUnknown_08078760:
	.INCBIN "baserom.gba", 0x78760, 0x78778-0x78760

	.GLOBAL gUnknown_08078778
gUnknown_08078778:
	.INCBIN "baserom.gba", 0x78778, 0x78790-0x78778

	.GLOBAL gUnknown_08078790
gUnknown_08078790:
	.INCBIN "baserom.gba", 0x78790, 0x787A8-0x78790

	.GLOBAL gUnknown_080787A8
gUnknown_080787A8:
	.INCBIN "baserom.gba", 0x787A8, 0x787C0-0x787A8

	.GLOBAL gUnknown_080787C0
gUnknown_080787C0:
	.INCBIN "baserom.gba", 0x787C0, 0x787D8-0x787C0

	.GLOBAL gUnknown_080787D8
gUnknown_080787D8:
	.INCBIN "baserom.gba", 0x787D8, 0x787F0-0x787D8

	.GLOBAL gUnknown_080787F0
gUnknown_080787F0:
	.INCBIN "baserom.gba", 0x787F0, 0x78808-0x787F0

	.GLOBAL gUnknown_08078808
gUnknown_08078808:
	.INCBIN "baserom.gba", 0x78808, 0x78820-0x78808

	.GLOBAL gUnknown_08078820
gUnknown_08078820:
	.INCBIN "baserom.gba", 0x78820, 0x78850-0x78820

	.GLOBAL gUnknown_08078850
gUnknown_08078850:
	.INCBIN "baserom.gba", 0x78850, 0x78868-0x78850

	.GLOBAL gUnknown_08078868
gUnknown_08078868:
	.INCBIN "baserom.gba", 0x78868, 0x788B0-0x78868

	.GLOBAL gUnknown_080788B0
gUnknown_080788B0:
	.INCBIN "baserom.gba", 0x788B0, 0x788C8-0x788B0

	.GLOBAL gUnknown_080788C8
gUnknown_080788C8:
	.INCBIN "baserom.gba", 0x788C8, 0x788E0-0x788C8

	.GLOBAL gUnknown_080788E0
gUnknown_080788E0:
	.INCBIN "baserom.gba", 0x788E0, 0x788F4-0x788E0

	.GLOBAL gUnknown_080788F4
gUnknown_080788F4:
	.INCBIN "baserom.gba", 0x788F4, 0x788F8-0x788F4

	.GLOBAL gUnknown_080788F8
gUnknown_080788F8:
	.INCBIN "baserom.gba", 0x788F8, 0x788FC-0x788F8

	.GLOBAL gUnknown_080788FC
gUnknown_080788FC:
	.INCBIN "baserom.gba", 0x788FC, 0x78900-0x788FC

	.GLOBAL gUnknown_08078900
gUnknown_08078900:
	.INCBIN "baserom.gba", 0x78900, 0x78904-0x78900

	.GLOBAL gUnknown_08078904
gUnknown_08078904:
	.INCBIN "baserom.gba", 0x78904, 0x78944-0x78904

	.GLOBAL gUnknown_08078944
gUnknown_08078944:
	.INCBIN "baserom.gba", 0x78944, 0x7897C-0x78944

	.GLOBAL gUnknown_0807897C
gUnknown_0807897C:
	.INCBIN "baserom.gba", 0x7897C, 0x789BC-0x7897C

	.GLOBAL gUnknown_080789BC
gUnknown_080789BC:
	.INCBIN "baserom.gba", 0x789BC, 0x789F4-0x789BC

	.GLOBAL gUnknown_080789F4
gUnknown_080789F4:
	.INCBIN "baserom.gba", 0x789F4, 0x78AB4-0x789F4

	.GLOBAL gUnknown_08078AB4
gUnknown_08078AB4:
	.INCBIN "baserom.gba", 0x78AB4, 0x78B74-0x78AB4

	.GLOBAL gUnknown_08078B74
gUnknown_08078B74:
	.INCBIN "baserom.gba", 0x78B74, 0x78C1C-0x78B74

	.GLOBAL gUnknown_08078C1C
gUnknown_08078C1C:
	.INCBIN "baserom.gba", 0x78C1C, 0x78CC4-0x78C1C

	.GLOBAL gUnknown_08078CC4
gUnknown_08078CC4:
	.INCBIN "baserom.gba", 0x78CC4, 0x78CF4-0x78CC4

	.GLOBAL gUnknown_08078CF4
gUnknown_08078CF4:
	.INCBIN "baserom.gba", 0x78CF4, 0x78D24-0x78CF4

	.GLOBAL gUnknown_08078D24
gUnknown_08078D24:
	.INCBIN "baserom.gba", 0x78D24, 0x78DE4-0x78D24

	.GLOBAL gUnknown_08078DE4
gUnknown_08078DE4:
	.INCBIN "baserom.gba", 0x78DE4, 0x78E8C-0x78DE4

	.GLOBAL gUnknown_08078E8C
gUnknown_08078E8C:
	.INCBIN "baserom.gba", 0x78E8C, 0x78F4C-0x78E8C

	.GLOBAL gUnknown_08078F4C
gUnknown_08078F4C:
	.INCBIN "baserom.gba", 0x78F4C, 0x78FF4-0x78F4C

	.GLOBAL gUnknown_08078FF4
gUnknown_08078FF4:
	.INCBIN "baserom.gba", 0x78FF4, 0x790B4-0x78FF4

	.GLOBAL gUnknown_080790B4
gUnknown_080790B4:
	.INCBIN "baserom.gba", 0x790B4, 0x7915C-0x790B4

	.GLOBAL gUnknown_0807915C
gUnknown_0807915C:
	.INCBIN "baserom.gba", 0x7915C, 0x7921C-0x7915C

	.GLOBAL gUnknown_0807921C
gUnknown_0807921C:
	.INCBIN "baserom.gba", 0x7921C, 0x792C4-0x7921C

	.GLOBAL gUnknown_080792C4
gUnknown_080792C4:
	.INCBIN "baserom.gba", 0x792C4, 0x792DC-0x792C4

	.GLOBAL gUnknown_080792DC
gUnknown_080792DC:
	.INCBIN "baserom.gba", 0x792DC, 0x792F4-0x792DC

	.GLOBAL gUnknown_080792F4
gUnknown_080792F4:
	.INCBIN "baserom.gba", 0x792F4, 0x7930C-0x792F4

	.GLOBAL gUnknown_0807930C
gUnknown_0807930C:
	.INCBIN "baserom.gba", 0x7930C, 0x79324-0x7930C

	.GLOBAL gUnknown_08079324
gUnknown_08079324:
	.INCBIN "baserom.gba", 0x79324, 0x7933C-0x79324

	.GLOBAL gUnknown_0807933C
gUnknown_0807933C:
	.INCBIN "baserom.gba", 0x7933C, 0x79354-0x7933C

	.GLOBAL gUnknown_08079354
gUnknown_08079354:
	.INCBIN "baserom.gba", 0x79354, 0x7936C-0x79354

	.GLOBAL gUnknown_0807936C
gUnknown_0807936C:
	.INCBIN "baserom.gba", 0x7936C, 0x79384-0x7936C

	.GLOBAL gUnknown_08079384
gUnknown_08079384:
	.INCBIN "baserom.gba", 0x79384, 0x7939C-0x79384

	.GLOBAL gUnknown_0807939C
gUnknown_0807939C:
	.INCBIN "baserom.gba", 0x7939C, 0x793B4-0x7939C

	.GLOBAL gUnknown_080793B4
gUnknown_080793B4:
	.INCBIN "baserom.gba", 0x793B4, 0x793CC-0x793B4

	.GLOBAL gUnknown_080793CC
gUnknown_080793CC:
	.INCBIN "baserom.gba", 0x793CC, 0x793E4-0x793CC

	.GLOBAL gUnknown_080793E4
gUnknown_080793E4:
	.INCBIN "baserom.gba", 0x793E4, 0x793FC-0x793E4

	.GLOBAL gUnknown_080793FC
gUnknown_080793FC:
	.INCBIN "baserom.gba", 0x793FC, 0x79414-0x793FC

	.GLOBAL gUnknown_08079414
gUnknown_08079414:
	.INCBIN "baserom.gba", 0x79414, 0x7942C-0x79414

	.GLOBAL gUnknown_0807942C
gUnknown_0807942C:
	.INCBIN "baserom.gba", 0x7942C, 0x79444-0x7942C

	.GLOBAL gUnknown_08079444
gUnknown_08079444:
	.INCBIN "baserom.gba", 0x79444, 0x7945C-0x79444

	.GLOBAL gUnknown_0807945C
gUnknown_0807945C:
	.INCBIN "baserom.gba", 0x7945C, 0x79474-0x7945C

	.GLOBAL gUnknown_08079474
gUnknown_08079474:
	.INCBIN "baserom.gba", 0x79474, 0x7948C-0x79474

	.GLOBAL gUnknown_0807948C
gUnknown_0807948C:
	.INCBIN "baserom.gba", 0x7948C, 0x794A4-0x7948C

	.GLOBAL gUnknown_080794A4
gUnknown_080794A4:
	.INCBIN "baserom.gba", 0x794A4, 0x794BC-0x794A4

	.GLOBAL gUnknown_080794BC
gUnknown_080794BC:
	.INCBIN "baserom.gba", 0x794BC, 0x794D4-0x794BC

	.GLOBAL gUnknown_080794D4
gUnknown_080794D4:
	.INCBIN "baserom.gba", 0x794D4, 0x794EC-0x794D4

	.GLOBAL gUnknown_080794EC
gUnknown_080794EC:
	.INCBIN "baserom.gba", 0x794EC, 0x79504-0x794EC

	.GLOBAL gUnknown_08079504
gUnknown_08079504:
	.INCBIN "baserom.gba", 0x79504, 0x7951C-0x79504

	.GLOBAL gUnknown_0807951C
gUnknown_0807951C:
	.INCBIN "baserom.gba", 0x7951C, 0x79534-0x7951C

	.GLOBAL gUnknown_08079534
gUnknown_08079534:
	.INCBIN "baserom.gba", 0x79534, 0x7954C-0x79534

	.GLOBAL gUnknown_0807954C
gUnknown_0807954C:
	.INCBIN "baserom.gba", 0x7954C, 0x7956C-0x7954C

	.GLOBAL gUnknown_0807956C
gUnknown_0807956C:
	.INCBIN "baserom.gba", 0x7956C, 0x79698-0x7956C

	.GLOBAL gUnknown_08079698
gUnknown_08079698:
	.INCBIN "baserom.gba", 0x79698, 0x7976C-0x79698

	.GLOBAL gUnknown_0807976C
gUnknown_0807976C:
	.INCBIN "baserom.gba", 0x7976C, 0x79778-0x7976C

	.GLOBAL gUnknown_08079778
gUnknown_08079778:
	.INCBIN "baserom.gba", 0x79778, 0x79790-0x79778

	.GLOBAL gUnknown_08079790
gUnknown_08079790:
	.INCBIN "baserom.gba", 0x79790, 0x797A8-0x79790

	.GLOBAL gUnknown_080797A8
gUnknown_080797A8:
	.INCBIN "baserom.gba", 0x797A8, 0x797B0-0x797A8

	.GLOBAL gUnknown_080797B0
gUnknown_080797B0:
	.INCBIN "baserom.gba", 0x797B0, 0x797B8-0x797B0

	.GLOBAL gUnknown_080797B8
gUnknown_080797B8:
	.INCBIN "baserom.gba", 0x797B8, 0x797C8-0x797B8

	.GLOBAL gUnknown_080797C8
gUnknown_080797C8:
	.INCBIN "baserom.gba", 0x797C8, 0x797E0-0x797C8

	.GLOBAL gUnknown_080797E0
gUnknown_080797E0:
	.INCBIN "baserom.gba", 0x797E0, 0x79868-0x797E0

	.GLOBAL gUnknown_08079868
gUnknown_08079868:
	.INCBIN "baserom.gba", 0x79868, 0x79878-0x79868

	.GLOBAL gUnknown_08079878
gUnknown_08079878:
	.INCBIN "baserom.gba", 0x79878, 0x798B0-0x79878

	.GLOBAL gUnknown_080798B0
gUnknown_080798B0:
	.INCBIN "baserom.gba", 0x798B0, 0x798E8-0x798B0

	.GLOBAL gUnknown_080798E8
gUnknown_080798E8:
	.INCBIN "baserom.gba", 0x798E8, 0x79938-0x798E8

	.GLOBAL gUnknown_08079938
gUnknown_08079938:
	.INCBIN "baserom.gba", 0x79938, 0x79988-0x79938

	.GLOBAL gUnknown_08079988
gUnknown_08079988:
	.INCBIN "baserom.gba", 0x79988, 0x79990-0x79988

	.GLOBAL gUnknown_08079990
gUnknown_08079990:
	.INCBIN "baserom.gba", 0x79990, 0x79998-0x79990

	.GLOBAL gUnknown_08079998
gUnknown_08079998:
	.INCBIN "baserom.gba", 0x79998, 0x799D0-0x79998

	.GLOBAL gUnknown_080799D0
gUnknown_080799D0:
	.INCBIN "baserom.gba", 0x799D0, 0x799F0-0x799D0

	.GLOBAL gUnknown_080799F0
gUnknown_080799F0:
	.INCBIN "baserom.gba", 0x799F0, 0x79D20-0x799F0

	.GLOBAL gUnknown_08079D20
gUnknown_08079D20:
	.INCBIN "baserom.gba", 0x79D20, 0x79D28-0x79D20

	.GLOBAL gUnknown_08079D28
gUnknown_08079D28:
	.INCBIN "baserom.gba", 0x79D28, 0x79DA0-0x79D28

	.GLOBAL gUnknown_08079DA0
gUnknown_08079DA0:
	.INCBIN "baserom.gba", 0x79DA0, 0x79ED0-0x79DA0

	.GLOBAL gUnknown_08079ED0
gUnknown_08079ED0:
	.INCBIN "baserom.gba", 0x79ED0, 0x79F00-0x79ED0

	.GLOBAL gUnknown_08079F00
gUnknown_08079F00:
	.INCBIN "baserom.gba", 0x79F00, 0x7A92C-0x79F00

	.GLOBAL gUnknown_0807A92C
gUnknown_0807A92C:
	.INCBIN "baserom.gba", 0x7A92C, 0x7A974-0x7A92C

	.GLOBAL gUnknown_0807A974
gUnknown_0807A974:
	.INCBIN "baserom.gba", 0x7A974, 0x7AA1C-0x7A974

	.GLOBAL gUnknown_0807AA1C
gUnknown_0807AA1C:
	.INCBIN "baserom.gba", 0x7AA1C, 0x7AA58-0x7AA1C

	.GLOBAL gUnknown_0807AA58
gUnknown_0807AA58:
	.INCBIN "baserom.gba", 0x7AA58, 0x7BA58-0x7AA58

	.GLOBAL gUnknown_0807BA58
gUnknown_0807BA58:
	.INCBIN "baserom.gba", 0x7BA58, 0x7BA68-0x7BA58

	.GLOBAL gUnknown_0807BA68
gUnknown_0807BA68:
	.INCBIN "baserom.gba", 0x7BA68, 0x7BB30-0x7BA68

	.GLOBAL gUnknown_0807BB30
gUnknown_0807BB30:
	.INCBIN "baserom.gba", 0x7BB30, 0x7C028-0x7BB30

	.GLOBAL gUnknown_0807C028
gUnknown_0807C028:
	.INCBIN "baserom.gba", 0x7C028, 0x7C098-0x7C028

	.GLOBAL gUnknown_0807C098
gUnknown_0807C098:
	.INCBIN "baserom.gba", 0x7C098, 0x7C0D0-0x7C098

	.GLOBAL gUnknown_0807C0D0
gUnknown_0807C0D0:
	.INCBIN "baserom.gba", 0x7C0D0, 0x7C0D8-0x7C0D0

	.GLOBAL gUnknown_0807C0D8
gUnknown_0807C0D8:
	.INCBIN "baserom.gba", 0x7C0D8, 0x7C0E0-0x7C0D8

	.GLOBAL gUnknown_0807C0E0
gUnknown_0807C0E0:
	.INCBIN "baserom.gba", 0x7C0E0, 0x7C118-0x7C0E0

	.GLOBAL gUnknown_0807C118
gUnknown_0807C118:
	.INCBIN "baserom.gba", 0x7C118, 0x7C7A8-0x7C118

	.GLOBAL gUnknown_0807C7A8
gUnknown_0807C7A8:
	.INCBIN "baserom.gba", 0x7C7A8, 0x7C7C4-0x7C7A8

	.GLOBAL gUnknown_0807C7C4
gUnknown_0807C7C4:
	.INCBIN "baserom.gba", 0x7C7C4, 0x7C7CC-0x7C7C4

	.GLOBAL gUnknown_0807C7CC
gUnknown_0807C7CC:
	.INCBIN "baserom.gba", 0x7C7CC, 0x7C804-0x7C7CC

	.GLOBAL gUnknown_0807C804
gUnknown_0807C804:
	.INCBIN "baserom.gba", 0x7C804, 0x7C814-0x7C804

	.GLOBAL gUnknown_0807C814
gUnknown_0807C814:
	.INCBIN "baserom.gba", 0x7C814, 0x7C82C-0x7C814

	.GLOBAL gUnknown_0807C82C
gUnknown_0807C82C:
	.INCBIN "baserom.gba", 0x7C82C, 0x7C834-0x7C82C

	.GLOBAL gUnknown_0807C834
gUnknown_0807C834:
	.INCBIN "baserom.gba", 0x7C834, 0x7C838-0x7C834

	.GLOBAL gUnknown_0807C838
gUnknown_0807C838:
	.INCBIN "baserom.gba", 0x7C838, 0x7C83A-0x7C838

	.GLOBAL gUnknown_0807C83A
gUnknown_0807C83A:
	.INCBIN "baserom.gba", 0x7C83A, 0x7C850-0x7C83A

	.GLOBAL gUnknown_0807C850
gUnknown_0807C850:
	.INCBIN "baserom.gba", 0x7C850, 0x7C990-0x7C850

	.GLOBAL gUnknown_0807C990
gUnknown_0807C990:
	.INCBIN "baserom.gba", 0x7C990, 0x7C9CC-0x7C990

	.GLOBAL gUnknown_0807C9CC
gUnknown_0807C9CC:
	.INCBIN "baserom.gba", 0x7C9CC, 0x7CA08-0x7C9CC

	.GLOBAL gUnknown_0807CA08
gUnknown_0807CA08:
	.INCBIN "baserom.gba", 0x7CA08, 0x7CA2C-0x7CA08

	.GLOBAL gUnknown_0807CA2C
gUnknown_0807CA2C:
	.INCBIN "baserom.gba", 0x7CA2C, 0x7CA40-0x7CA2C

	.GLOBAL gUnknown_0807CA40
gUnknown_0807CA40:
	.INCBIN "baserom.gba", 0x7CA40, 0x7CA88-0x7CA40

	.GLOBAL gUnknown_0807CA88
gUnknown_0807CA88:
	.INCBIN "baserom.gba", 0x7CA88, 0x7CA90-0x7CA88

	.GLOBAL gUnknown_0807CA90
gUnknown_0807CA90:
	.INCBIN "baserom.gba", 0x7CA90, 0x7CA94-0x7CA90

	.GLOBAL gUnknown_0807CA94
gUnknown_0807CA94:
	.INCBIN "baserom.gba", 0x7CA94, 0x7CA98-0x7CA94

	.GLOBAL gUnknown_0807CA98
gUnknown_0807CA98:
	.INCBIN "baserom.gba", 0x7CA98, 0x7CA9C-0x7CA98

	.GLOBAL gPreloadedCardETable
gPreloadedCardETable:
	.4byte gTextCardEOne
	.4byte gCardEDataRevenge
	.4byte gTextCardETwo
	.4byte gCardEDataTheLongWay
	.4byte gTextCardEThree
	.4byte gCardEDataOneShotBlue
	.4byte gTextCardEFour
	.4byte gCardEDataEggAttack
	.4byte gTextCardEFive
	.4byte gCardEDataLaterGator
	.4byte gTextCardESix
	.4byte gCardEDataHotFeet
	.4byte gTextCardESeven
	.4byte gCardEDataBooInABox
	.4byte gTextCardEEight
	.4byte gCardEDataTheThwamplet
	.4byte gTextCardENine
	.4byte gCardEDataATrickyCandle
	.4byte gTextCardETen
	.4byte gCardEDataKeyToTheKey
	.4byte gTextCardEEleven
	.4byte gCardEDataDangerFlowers
	.4byte gTextCardETwelve
	.4byte gCardEDataClimbAndFall
	.4byte gTextCardEThirteen
	.4byte gCardEDataDummy2
	.4byte 0x00000000
	.4byte 0x00000000

	.GLOBAL gUnknown_0807CB0C
gUnknown_0807CB0C:
	.INCBIN "baserom.gba", 0x7CB0C, 0x7CB68-0x7CB0C
	
	.GLOBAL gUnknown_0807CB68
gUnknown_0807CB68:
	.INCBIN "baserom.gba", 0x7CB68, 0x7D1F0-0x7CB68

	.GLOBAL gUnknown_0807D1F0
gUnknown_0807D1F0:
	.INCBIN "baserom.gba", 0x7D1F0, 0x7D270-0x7D1F0

	.GLOBAL gUnknown_0807D270
gUnknown_0807D270:
	.INCBIN "baserom.gba", 0x7D270, 0x7D298-0x7D270

	.GLOBAL gUnknown_0807D298
gUnknown_0807D298:
	.INCBIN "baserom.gba", 0x7D298, 0x7DC70-0x7D298

	.GLOBAL gUnknown_0807DC70
gUnknown_0807DC70:
	.INCBIN "baserom.gba", 0x7DC70, 0x7DC88-0x7DC70

	.GLOBAL gUnknown_0807DC88
gUnknown_0807DC88:
	.INCBIN "baserom.gba", 0x7DC88, 0x7DC8C-0x7DC88

	.GLOBAL gUnknown_0807DC8C
gUnknown_0807DC8C:
	.INCBIN "baserom.gba", 0x7DC8C, 0x7DC90-0x7DC8C

	.GLOBAL gUnknown_0807DC90
gUnknown_0807DC90:
	.INCBIN "baserom.gba", 0x7DC90, 0x7DC9C-0x7DC90

	.GLOBAL gUnknown_0807DC9C
gUnknown_0807DC9C:
	.INCBIN "baserom.gba", 0x7DC9C, 0x7DD14-0x7DC9C

	.GLOBAL gUnknown_0807DD14
gUnknown_0807DD14:
	.INCBIN "baserom.gba", 0x7DD14, 0x7DD1C-0x7DD14

	.GLOBAL gUnknown_0807DD1C
gUnknown_0807DD1C:
	.INCBIN "baserom.gba", 0x7DD1C, 0x7DD34-0x7DD1C

	.GLOBAL gUnknown_0807DD34
gUnknown_0807DD34:
	.INCBIN "baserom.gba", 0x7DD34, 0x7DD4C-0x7DD34

	.GLOBAL gUnknown_0807DD4C
gUnknown_0807DD4C:
	.INCBIN "baserom.gba", 0x7DD4C, 0x7DD64-0x7DD4C

	.GLOBAL gUnknown_0807DD64
gUnknown_0807DD64:
	.INCBIN "baserom.gba", 0x7DD64, 0x7DD7C-0x7DD64

	.GLOBAL gUnknown_0807DD7C
gUnknown_0807DD7C:
	.INCBIN "baserom.gba", 0x7DD7C, 0x7DD94-0x7DD7C

	.GLOBAL gUnknown_0807DD94
gUnknown_0807DD94:
	.INCBIN "baserom.gba", 0x7DD94, 0x81D98-0x7DD94

	.GLOBAL gMainPaletteTable
gMainPaletteTable:
	.INCBIN "baserom.gba", 0x81D98, 0xA7D98-0x81D98

	.GLOBAL gUnknown_080A7D98
gUnknown_080A7D98:
	.INCBIN "baserom.gba", 0xA7D98, 0xA7DF8-0xA7D98

	.GLOBAL gUnknown_080A7DF8
gUnknown_080A7DF8:
	.INCBIN "baserom.gba", 0xA7DF8, 0xA7EB8-0xA7DF8

	.GLOBAL gUnknown_080A7EB8
gUnknown_080A7EB8:
	.INCBIN "baserom.gba", 0xA7EB8, 0xA7ED0-0xA7EB8

	.GLOBAL gUnknown_080A7ED0
gUnknown_080A7ED0:
	.INCBIN "baserom.gba", 0xA7ED0, 0xA7EE8-0xA7ED0

	.GLOBAL gUnknown_080A7EE8
gUnknown_080A7EE8:
	.INCBIN "baserom.gba", 0xA7EE8, 0xA8008-0xA7EE8

	.GLOBAL gUnknown_080A8008
gUnknown_080A8008:
	.INCBIN "baserom.gba", 0xA8008, 0xA8128-0xA8008

	.GLOBAL gUnknown_080A8128
gUnknown_080A8128:
	.INCBIN "baserom.gba", 0xA8128, 0xA8248-0xA8128

	.GLOBAL gUnknown_080A8248
gUnknown_080A8248:
	.INCBIN "baserom.gba", 0xA8248, 0xA8260-0xA8248

	.GLOBAL gUnknown_080A8260
gUnknown_080A8260:
	.INCBIN "baserom.gba", 0xA8260, 0xA8278-0xA8260

	.GLOBAL gUnknown_080A8278
gUnknown_080A8278:
	.INCBIN "baserom.gba", 0xA8278, 0xA8290-0xA8278

	.GLOBAL gUnknown_080A8290
gUnknown_080A8290:
	.INCBIN "baserom.gba", 0xA8290, 0xA82A8-0xA8290

	.GLOBAL gUnknown_080A82A8
gUnknown_080A82A8:
	.INCBIN "baserom.gba", 0xA82A8, 0xA82C0-0xA82A8

	.GLOBAL gUnknown_080A82C0
gUnknown_080A82C0:
	.INCBIN "baserom.gba", 0xA82C0, 0xA8308-0xA82C0

	.GLOBAL gUnknown_080A8308
gUnknown_080A8308:
	.INCBIN "baserom.gba", 0xA8308, 0xA8428-0xA8308

	.GLOBAL gUnknown_080A8428
gUnknown_080A8428:
	.INCBIN "baserom.gba", 0xA8428, 0xA8548-0xA8428

	.GLOBAL gUnknown_080A8548
gUnknown_080A8548:
	.INCBIN "baserom.gba", 0xA8548, 0xA8668-0xA8548

	.GLOBAL gUnknown_080A8668
gUnknown_080A8668:
	.INCBIN "baserom.gba", 0xA8668, 0xA8674-0xA8668

	.GLOBAL gUnknown_080A8674
gUnknown_080A8674:
	.INCBIN "baserom.gba", 0xA8674, 0xA868C-0xA8674

	.GLOBAL gUnknown_080A868C
gUnknown_080A868C:
	.INCBIN "baserom.gba", 0xA868C, 0xA86A4-0xA868C

	.GLOBAL gUnknown_080A86A4
gUnknown_080A86A4:
	.INCBIN "baserom.gba", 0xA86A4, 0xA86BC-0xA86A4

	.GLOBAL gUnknown_080A86BC
gUnknown_080A86BC:
	.INCBIN "baserom.gba", 0xA86BC, 0xA86D4-0xA86BC

	.GLOBAL gUnknown_080A86D4
gUnknown_080A86D4:
	.INCBIN "baserom.gba", 0xA86D4, 0xA86EC-0xA86D4

	.GLOBAL gUnknown_080A86EC
gUnknown_080A86EC:
	.INCBIN "baserom.gba", 0xA86EC, 0xA86F4-0xA86EC

	.GLOBAL gUnknown_080A86F4
gUnknown_080A86F4:
	.INCBIN "baserom.gba", 0xA86F4, 0xA86FA-0xA86F4

	.GLOBAL gUnknown_080A86FA
gUnknown_080A86FA:
	.INCBIN "baserom.gba", 0xA86FA, 0xB512C-0xA86FA

	.GLOBAL gUnknown_080B512C
gUnknown_080B512C:
	.INCBIN "baserom.gba", 0xB512C, 0xB5174-0xB512C

	.GLOBAL gUnknown_080B5174
gUnknown_080B5174:
	.INCBIN "baserom.gba", 0xB5174, 0xB5180-0xB5174

	.GLOBAL gUnknown_080B5180
gUnknown_080B5180:
	.INCBIN "baserom.gba", 0xB5180, 0xB51BC-0xB5180

	.GLOBAL gUnknown_080B51BC
gUnknown_080B51BC:
	.INCBIN "baserom.gba", 0xB51BC, 0xB51C0-0xB51BC

	.GLOBAL gUnknown_080B51C0
gUnknown_080B51C0:
	.INCBIN "baserom.gba", 0xB51C0, 0xB51D8-0xB51C0

	.GLOBAL gUnknown_080B51D8
gUnknown_080B51D8:
	.INCBIN "baserom.gba", 0xB51D8, 0xB51F8-0xB51D8

	.GLOBAL gUnknown_080B51F8
gUnknown_080B51F8:
	.INCBIN "baserom.gba", 0xB51F8, 0xB521C-0xB51F8

	.GLOBAL gUnknown_080B521C
gUnknown_080B521C:
	.INCBIN "baserom.gba", 0xB521C, 0xB5300-0xB521C

	.GLOBAL gUnknown_080B5300
gUnknown_080B5300:
	.INCBIN "baserom.gba", 0xB5300, 0xB5328-0xB5300

	.GLOBAL gUnknown_080B5328
gUnknown_080B5328:
	.INCBIN "baserom.gba", 0xB5328, 0xB53F4-0xB5328

	.GLOBAL gUnknown_080B53F4
gUnknown_080B53F4:
	.INCBIN "baserom.gba", 0xB53F4, 0xB5424-0xB53F4

	.GLOBAL gUnknown_080B5424
gUnknown_080B5424:
	.INCBIN "baserom.gba", 0xB5424, 0xB5F80-0xB5424

	.GLOBAL gUnknown_080B5F80
gUnknown_080B5F80:
	.INCBIN "baserom.gba", 0xB5F80, 0xB6C30-0xB5F80

	.GLOBAL gUnknown_080B6C30
gUnknown_080B6C30:
	.INCBIN "baserom.gba", 0xB6C30, 0xB77F4-0xB6C30

	.GLOBAL gUnknown_080B77F4
gUnknown_080B77F4:
	.INCBIN "baserom.gba", 0xB77F4, 0xBACD4-0xB77F4

	.GLOBAL gUnknown_080BACD4
gUnknown_080BACD4:
	.INCBIN "baserom.gba", 0xBACD4, 0xBADF4-0xBACD4

	.GLOBAL gUnknown_080BADF4
gUnknown_080BADF4:
	.INCBIN "baserom.gba", 0xBADF4, 0xBADFC-0xBADF4

	.GLOBAL gUnknown_080BADFC
gUnknown_080BADFC:
	.INCBIN "baserom.gba", 0xBADFC, 0xC833C-0xBADFC

	.GLOBAL gUnknown_080C833C
gUnknown_080C833C:
	.INCBIN "baserom.gba", 0xC833C, 0xC83A8-0xC833C

	.GLOBAL gUnknown_080C83A8
gUnknown_080C83A8:
	.INCBIN "baserom.gba", 0xC83A8, 0xC83B0-0xC83A8

	.GLOBAL gUnknown_080C83B0
gUnknown_080C83B0:
	.INCBIN "baserom.gba", 0xC83B0, 0xC87B0-0xC83B0

	.GLOBAL gUnknown_080C87B0
gUnknown_080C87B0:
	.INCBIN "baserom.gba", 0xC87B0, 0xC8E28-0xC87B0

	.GLOBAL gUnknown_080C8E28
gUnknown_080C8E28:
	.INCBIN "baserom.gba", 0xC8E28, 0xC8E30-0xC8E28

	.GLOBAL gUnknown_080C8E30
gUnknown_080C8E30:
	.INCBIN "baserom.gba", 0xC8E30, 0xC9B30-0xC8E30

	.GLOBAL gUnknown_080C9B30
gUnknown_080C9B30:
	.INCBIN "baserom.gba", 0xC9B30, 0xCA130-0xC9B30

	.GLOBAL gUnknown_080CA130
gUnknown_080CA130:
	.INCBIN "baserom.gba", 0xCA130, 0xCABA8-0xCA130

	.GLOBAL gUnknown_080CABA8
gUnknown_080CABA8:
	.INCBIN "baserom.gba", 0xCABA8, 0xCABB0-0xCABA8

	.GLOBAL gUnknown_080CABB0
gUnknown_080CABB0:
	.INCBIN "baserom.gba", 0xCABB0, 0xCB7E8-0xCABB0

	.GLOBAL gUnknown_080CB7E8
gUnknown_080CB7E8:
	.INCBIN "baserom.gba", 0xCB7E8, 0xCB7F0-0xCB7E8

	.GLOBAL gUnknown_080CB7F0
gUnknown_080CB7F0:
	.INCBIN "baserom.gba", 0xCB7F0, 0x11BC04-0xCB7F0

	.GLOBAL gUnknown_0811BC04
gUnknown_0811BC04:
	.INCBIN "baserom.gba", 0x11BC04, 0x11BC0C-0x11BC04

	.GLOBAL gUnknown_0811BC0C
gUnknown_0811BC0C:
	.INCBIN "baserom.gba", 0x11BC0C, 0x11BCB0-0x11BC0C

	.GLOBAL gUnknown_0811BCB0
gUnknown_0811BCB0:
	.INCBIN "baserom.gba", 0x11BCB0, 0x11BCB8-0x11BCB0

	.GLOBAL gUnknown_0811BCB8
gUnknown_0811BCB8:
	.INCBIN "baserom.gba", 0x11BCB8, 0x11BD5C-0x11BCB8

	.GLOBAL gUnknown_0811BD5C
gUnknown_0811BD5C:
	.INCBIN "baserom.gba", 0x11BD5C, 0x11BD64-0x11BD5C

	.GLOBAL gUnknown_0811BD64
gUnknown_0811BD64:
	.INCBIN "baserom.gba", 0x11BD64, 0x11C010-0x11BD64

	.GLOBAL gUnknown_0811C010
gUnknown_0811C010:
	.INCBIN "baserom.gba", 0x11C010, 0x11C1C0-0x11C010

	.GLOBAL gUnknown_0811C1C0
gUnknown_0811C1C0:
	.INCBIN "baserom.gba", 0x11C1C0, 0x11C1C8-0x11C1C0

	.GLOBAL gUnknown_0811C1C8
gUnknown_0811C1C8:
	.INCBIN "baserom.gba", 0x11C1C8, 0x11F5F4-0x11C1C8

	.GLOBAL gUnknown_0811F5F4
gUnknown_0811F5F4:
	.INCBIN "baserom.gba", 0x11F5F4, 0x11F7A4-0x11F5F4

	.GLOBAL gUnknown_0811F7A4
gUnknown_0811F7A4:
	.INCBIN "baserom.gba", 0x11F7A4, 0x11F7AC-0x11F7A4

	.GLOBAL gUnknown_0811F7AC
gUnknown_0811F7AC:
	.INCBIN "baserom.gba", 0x11F7AC, 0x1257D0-0x11F7AC

	.GLOBAL gUnknown_081257D0
gUnknown_081257D0:
	.INCBIN "baserom.gba", 0x1257D0, 0x1257D8-0x1257D0

	.GLOBAL gUnknown_081257D8
gUnknown_081257D8:
	.INCBIN "baserom.gba", 0x1257D8, 0x125928-0x1257D8

	.GLOBAL gUnknown_08125928
gUnknown_08125928:
	.INCBIN "baserom.gba", 0x125928, 0x125930-0x125928

	.GLOBAL gUnknown_08125930
gUnknown_08125930:
	.INCBIN "baserom.gba", 0x125930, 0x129518-0x125930

	.GLOBAL gUnknown_08129518
gUnknown_08129518:
	.INCBIN "baserom.gba", 0x129518, 0x12953C-0x129518

	.GLOBAL gUnknown_0812953C
gUnknown_0812953C:
	.INCBIN "baserom.gba", 0x12953C, 0x129544-0x12953C

	.GLOBAL gUnknown_08129544
gUnknown_08129544:
	.INCBIN "baserom.gba", 0x129544, 0x12CA94-0x129544

	.GLOBAL gUnknown_0812CA94
gUnknown_0812CA94:
	.INCBIN "baserom.gba", 0x12CA94, 0x12CA9C-0x12CA94

	.GLOBAL gUnknown_0812CA9C
gUnknown_0812CA9C:
	.INCBIN "baserom.gba", 0x12CA9C, 0x12CB40-0x12CA9C

	.GLOBAL gUnknown_0812CB40
gUnknown_0812CB40:
	.INCBIN "baserom.gba", 0x12CB40, 0x12CB48-0x12CB40

	.GLOBAL gUnknown_0812CB48
gUnknown_0812CB48:
	.INCBIN "baserom.gba", 0x12CB48, 0x12CBEC-0x12CB48

	.GLOBAL gUnknown_0812CBEC
gUnknown_0812CBEC:
	.INCBIN "baserom.gba", 0x12CBEC, 0x12CBF4-0x12CBEC

	.GLOBAL gUnknown_0812CBF4
gUnknown_0812CBF4:
	.INCBIN "baserom.gba", 0x12CBF4, 0x12CC98-0x12CBF4

	.GLOBAL gUnknown_0812CC98
gUnknown_0812CC98:
	.INCBIN "baserom.gba", 0x12CC98, 0x12CCA0-0x12CC98

	.GLOBAL gUnknown_0812CCA0
gUnknown_0812CCA0:
	.INCBIN "baserom.gba", 0x12CCA0, 0x12CD04-0x12CCA0

	.GLOBAL gUnknown_0812CD04
gUnknown_0812CD04:
	.INCBIN "baserom.gba", 0x12CD04, 0x12CD0C-0x12CD04

	.GLOBAL gUnknown_0812CD0C
gUnknown_0812CD0C:
	.INCBIN "baserom.gba", 0x12CD0C, 0x12CD50-0x12CD0C

	.GLOBAL gUnknown_0812CD50
gUnknown_0812CD50:
	.INCBIN "baserom.gba", 0x12CD50, 0x12CD58-0x12CD50

	.GLOBAL gUnknown_0812CD58
gUnknown_0812CD58:
	.INCBIN "baserom.gba", 0x12CD58, 0x12CDFC-0x12CD58

	.GLOBAL gUnknown_0812CDFC
gUnknown_0812CDFC:
	.INCBIN "baserom.gba", 0x12CDFC, 0x12CE04-0x12CDFC

	.GLOBAL gUnknown_0812CE04
gUnknown_0812CE04:
	.INCBIN "baserom.gba", 0x12CE04, 0x12D028-0x12CE04

	.GLOBAL gUnknown_0812D028
gUnknown_0812D028:
	.INCBIN "baserom.gba", 0x12D028, 0x12D030-0x12D028

	.GLOBAL gUnknown_0812D030
gUnknown_0812D030:
	.INCBIN "baserom.gba", 0x12D030, 0x12D200-0x12D030

	.GLOBAL gUnknown_0812D200
gUnknown_0812D200:
	.INCBIN "baserom.gba", 0x12D200, 0x12D208-0x12D200

	.GLOBAL gUnknown_0812D208
gUnknown_0812D208:
	.INCBIN "baserom.gba", 0x12D208, 0x12D2AC-0x12D208

	.GLOBAL gUnknown_0812D2AC
gUnknown_0812D2AC:
	.INCBIN "baserom.gba", 0x12D2AC, 0x12D2B4-0x12D2AC

	.GLOBAL gUnknown_0812D2B4
gUnknown_0812D2B4:
	.INCBIN "baserom.gba", 0x12D2B4, 0x12D358-0x12D2B4

	.GLOBAL gUnknown_0812D358
gUnknown_0812D358:
	.INCBIN "baserom.gba", 0x12D358, 0x12D360-0x12D358

	.GLOBAL gUnknown_0812D360
gUnknown_0812D360:
	.INCBIN "baserom.gba", 0x12D360, 0x12D404-0x12D360

	.GLOBAL gUnknown_0812D404
gUnknown_0812D404:
	.INCBIN "baserom.gba", 0x12D404, 0x12D40C-0x12D404

	.GLOBAL gUnknown_0812D40C
gUnknown_0812D40C:
	.INCBIN "baserom.gba", 0x12D40C, 0x12D4B0-0x12D40C

	.GLOBAL gUnknown_0812D4B0
gUnknown_0812D4B0:
	.INCBIN "baserom.gba", 0x12D4B0, 0x12D4B8-0x12D4B0

	.GLOBAL gUnknown_0812D4B8
gUnknown_0812D4B8:
	.INCBIN "baserom.gba", 0x12D4B8, 0x12D55C-0x12D4B8

	.GLOBAL gUnknown_0812D55C
gUnknown_0812D55C:
	.INCBIN "baserom.gba", 0x12D55C, 0x12D564-0x12D55C

	.GLOBAL gUnknown_0812D564
gUnknown_0812D564:
	.INCBIN "baserom.gba", 0x12D564, 0x12D608-0x12D564

	.GLOBAL gUnknown_0812D608
gUnknown_0812D608:
	.INCBIN "baserom.gba", 0x12D608, 0x12D610-0x12D608

	.GLOBAL gUnknown_0812D610
gUnknown_0812D610:
	.INCBIN "baserom.gba", 0x12D610, 0x12D6B4-0x12D610

	.GLOBAL gUnknown_0812D6B4
gUnknown_0812D6B4:
	.INCBIN "baserom.gba", 0x12D6B4, 0x12D6BC-0x12D6B4

	.GLOBAL gUnknown_0812D6BC
gUnknown_0812D6BC:
	.INCBIN "baserom.gba", 0x12D6BC, 0x12D760-0x12D6BC

	.GLOBAL gUnknown_0812D760
gUnknown_0812D760:
	.INCBIN "baserom.gba", 0x12D760, 0x12D768-0x12D760

	.GLOBAL gUnknown_0812D768
gUnknown_0812D768:
	.INCBIN "baserom.gba", 0x12D768, 0x12D80C-0x12D768

	.GLOBAL gUnknown_0812D80C
gUnknown_0812D80C:
	.INCBIN "baserom.gba", 0x12D80C, 0x12D814-0x12D80C

	.GLOBAL gUnknown_0812D814
gUnknown_0812D814:
	.INCBIN "baserom.gba", 0x12D814, 0x12D8B8-0x12D814

	.GLOBAL gUnknown_0812D8B8
gUnknown_0812D8B8:
	.INCBIN "baserom.gba", 0x12D8B8, 0x12D8C0-0x12D8B8

	.GLOBAL gUnknown_0812D8C0
gUnknown_0812D8C0:
	.INCBIN "baserom.gba", 0x12D8C0, 0x12DA10-0x12D8C0

	.GLOBAL gUnknown_0812DA10
gUnknown_0812DA10:
	.INCBIN "baserom.gba", 0x12DA10, 0x12DA18-0x12DA10

	.GLOBAL gUnknown_0812DA18
gUnknown_0812DA18:
	.INCBIN "baserom.gba", 0x12DA18, 0x12DABC-0x12DA18

	.GLOBAL gUnknown_0812DABC
gUnknown_0812DABC:
	.INCBIN "baserom.gba", 0x12DABC, 0x12DAC4-0x12DABC

	.GLOBAL gUnknown_0812DAC4
gUnknown_0812DAC4:
	.INCBIN "baserom.gba", 0x12DAC4, 0x12DB68-0x12DAC4

	.GLOBAL gUnknown_0812DB68
gUnknown_0812DB68:
	.INCBIN "baserom.gba", 0x12DB68, 0x12DB70-0x12DB68

	.GLOBAL gUnknown_0812DB70
gUnknown_0812DB70:
	.INCBIN "baserom.gba", 0x12DB70, 0x12DC14-0x12DB70

	.GLOBAL gUnknown_0812DC14
gUnknown_0812DC14:
	.INCBIN "baserom.gba", 0x12DC14, 0x12DC1C-0x12DC14

	.GLOBAL gUnknown_0812DC1C
gUnknown_0812DC1C:
	.INCBIN "baserom.gba", 0x12DC1C, 0x12E128-0x12DC1C

	.GLOBAL gUnknown_0812E128
gUnknown_0812E128:
	.INCBIN "baserom.gba", 0x12E128, 0x12E170-0x12E128

	.GLOBAL gUnknown_0812E170
gUnknown_0812E170:
	.INCBIN "baserom.gba", 0x12E170, 0x12E178-0x12E170

	.GLOBAL gUnknown_0812E178
gUnknown_0812E178:
	.INCBIN "baserom.gba", 0x12E178, 0x145E74-0x12E178

	.GLOBAL gUnknown_08145E74
gUnknown_08145E74:
	.INCBIN "baserom.gba", 0x145E74, 0x145F28-0x145E74

	.GLOBAL gUnknown_08145F28
gUnknown_08145F28:
	.INCBIN "baserom.gba", 0x145F28, 0x145F30-0x145F28

	.GLOBAL gUnknown_08145F30
gUnknown_08145F30:
	.INCBIN "baserom.gba", 0x145F30, 0x1460B0-0x145F30

	.GLOBAL gUnknown_081460B0
gUnknown_081460B0:
	.INCBIN "baserom.gba", 0x1460B0, 0x1461D0-0x1460B0

	.GLOBAL gUnknown_081461D0
gUnknown_081461D0:
	.INCBIN "baserom.gba", 0x1461D0, 0x1461D8-0x1461D0

	.GLOBAL gUnknown_081461D8
gUnknown_081461D8:
	.INCBIN "baserom.gba", 0x1461D8, 0x14E1D8-0x1461D8

	.GLOBAL gUnknown_0814E1D8
gUnknown_0814E1D8:
	.INCBIN "baserom.gba", 0x14E1D8, 0x14E340-0x14E1D8

	.GLOBAL gUnknown_0814E340
gUnknown_0814E340:
	.INCBIN "baserom.gba", 0x14E340, 0x14E348-0x14E340

	.GLOBAL gUnknown_0814E348
gUnknown_0814E348:
	.INCBIN "baserom.gba", 0x14E348, 0x1B6180-0x14E348

	.GLOBAL gUnknown_081B6180
gUnknown_081B6180:
	.INCBIN "baserom.gba", 0x1B6180, 0x1B6378-0x1B6180

	.GLOBAL gUnknown_081B6378
gUnknown_081B6378:
	.INCBIN "baserom.gba", 0x1B6378, 0x1B6380-0x1B6378

	.GLOBAL gUnknown_081B6380
gUnknown_081B6380:
	.INCBIN "baserom.gba", 0x1B6380, 0x1C1A18-0x1B6380

	.GLOBAL gUnknown_081C1A18
gUnknown_081C1A18:
	.INCBIN "baserom.gba", 0x1C1A18, 0x1C1A20-0x1C1A18

	.GLOBAL gUnknown_081C1A20
gUnknown_081C1A20:
	.INCBIN "baserom.gba", 0x1C1A20, 0x1C1C20-0x1C1A20

	.GLOBAL gUnknown_081C1C20
gUnknown_081C1C20:
	.INCBIN "baserom.gba", 0x1C1C20, 0x1C1C68-0x1C1C20

	.GLOBAL gUnknown_081C1C68
gUnknown_081C1C68:
	.INCBIN "baserom.gba", 0x1C1C68, 0x1C1C70-0x1C1C68

	.GLOBAL gUnknown_081C1C70
gUnknown_081C1C70:
	.INCBIN "baserom.gba", 0x1C1C70, 0x1C2094-0x1C1C70

	.GLOBAL gUnknown_081C2094
gUnknown_081C2094:
	.INCBIN "baserom.gba", 0x1C2094, 0x1C209C-0x1C2094

	.GLOBAL gUnknown_081C209C
gUnknown_081C209C:
	.INCBIN "baserom.gba", 0x1C209C, 0x1C2164-0x1C209C

	.GLOBAL gUnknown_081C2164
gUnknown_081C2164:
	.INCBIN "baserom.gba", 0x1C2164, 0x1C216C-0x1C2164

	.GLOBAL gUnknown_081C216C
gUnknown_081C216C:
	.INCBIN "baserom.gba", 0x1C216C, 0x1E019C-0x1C216C

	.GLOBAL gUnknown_081E019C
gUnknown_081E019C:
	.INCBIN "baserom.gba", 0x1E019C, 0x1E0274-0x1E019C

	.GLOBAL gUnknown_081E0274
gUnknown_081E0274:
	.INCBIN "baserom.gba", 0x1E0274, 0x1E027C-0x1E0274

	.GLOBAL gUnknown_081E027C
gUnknown_081E027C:
	.INCBIN "baserom.gba", 0x1E027C, 0x1E327C-0x1E027C

	.GLOBAL gUnknown_081E327C
gUnknown_081E327C:
	.INCBIN "baserom.gba", 0x1E327C, 0x1E3378-0x1E327C

	.GLOBAL gUnknown_081E3378
gUnknown_081E3378:
	.INCBIN "baserom.gba", 0x1E3378, 0x1E3380-0x1E3378

	.GLOBAL gUnknown_081E3380
gUnknown_081E3380:
	.INCBIN "baserom.gba", 0x1E3380, 0x2031EC-0x1E3380

	.GLOBAL gUnknown_082031EC
gUnknown_082031EC:
	.INCBIN "baserom.gba", 0x2031EC, 0x2034E0-0x2031EC

	.GLOBAL gUnknown_082034E0
gUnknown_082034E0:
	.INCBIN "baserom.gba", 0x2034E0, 0x2034E8-0x2034E0

	.GLOBAL gUnknown_082034E8
gUnknown_082034E8:
	.INCBIN "baserom.gba", 0x2034E8, 0x20850C-0x2034E8

	.GLOBAL gUnknown_0820850C
gUnknown_0820850C:
	.INCBIN "baserom.gba", 0x20850C, 0x208514-0x20850C

	.GLOBAL gUnknown_08208514
gUnknown_08208514:
	.INCBIN "baserom.gba", 0x208514, 0x251EC0-0x208514

	.GLOBAL gUnknown_08251EC0
gUnknown_08251EC0:
	.INCBIN "baserom.gba", 0x251EC0, 0x251FE0-0x251EC0

	.GLOBAL gUnknown_08251FE0
gUnknown_08251FE0:
	.INCBIN "baserom.gba", 0x251FE0, 0x251FE8-0x251FE0

	.GLOBAL gUnknown_08251FE8
gUnknown_08251FE8:
	.INCBIN "baserom.gba", 0x251FE8, 0x259FE8-0x251FE8

	.GLOBAL gUnknown_08259FE8
gUnknown_08259FE8:
	.INCBIN "baserom.gba", 0x259FE8, 0x25A00C-0x259FE8

	.GLOBAL gUnknown_0825A00C
gUnknown_0825A00C:
	.INCBIN "baserom.gba", 0x25A00C, 0x25A014-0x25A00C

	.GLOBAL gUnknown_0825A014
gUnknown_0825A014:
	.INCBIN "baserom.gba", 0x25A014, 0x2957B8-0x25A014

	.GLOBAL gUnknown_082957B8
gUnknown_082957B8:
	.INCBIN "baserom.gba", 0x2957B8, 0x295FE4-0x2957B8

	.GLOBAL gUnknown_08295FE4
gUnknown_08295FE4:
	.INCBIN "baserom.gba", 0x295FE4, 0x296810-0x295FE4

	.GLOBAL gUnknown_08296810
gUnknown_08296810:
	.INCBIN "baserom.gba", 0x296810, 0x2AEF74-0x296810

	.GLOBAL gUnknown_082AEF74
gUnknown_082AEF74:
	.INCBIN "baserom.gba", 0x2AEF74, 0x2AEF7C-0x2AEF74

	.GLOBAL gUnknown_082AEF7C
gUnknown_082AEF7C:
	.INCBIN "baserom.gba", 0x2AEF7C, 0x2AF7A0-0x2AEF7C

	.GLOBAL gUnknown_082AF7A0
gUnknown_082AF7A0:
	.INCBIN "baserom.gba", 0x2AF7A0, 0x2AF7A8-0x2AF7A0

	.GLOBAL gUnknown_082AF7A8
gUnknown_082AF7A8:
	.INCBIN "baserom.gba", 0x2AF7A8, 0x2AFFA8-0x2AF7A8

	.GLOBAL gUnknown_082AFFA8
gUnknown_082AFFA8:
	.INCBIN "baserom.gba", 0x2AFFA8, 0x2B0080-0x2AFFA8

	.GLOBAL gUnknown_082B0080
gUnknown_082B0080:
	.INCBIN "baserom.gba", 0x2B0080, 0x2B0088-0x2B0080

	.GLOBAL gUnknown_082B0088
gUnknown_082B0088:
	.INCBIN "baserom.gba", 0x2B0088, 0x2B30AC-0x2B0088

	.GLOBAL gUnknown_082B30AC
gUnknown_082B30AC:
	.INCBIN "baserom.gba", 0x2B30AC, 0x2B30B4-0x2B30AC

	.GLOBAL gUnknown_082B30B4
gUnknown_082B30B4:
	.INCBIN "baserom.gba", 0x2B30B4, 0x2B34B4-0x2B30B4

	.GLOBAL gUnknown_082B34B4
gUnknown_082B34B4:
	.INCBIN "baserom.gba", 0x2B34B4, 0x2B3544-0x2B34B4

	.GLOBAL gUnknown_082B3544
gUnknown_082B3544:
	.INCBIN "baserom.gba", 0x2B3544, 0x2B354C-0x2B3544

	.GLOBAL gUnknown_082B354C
gUnknown_082B354C:
	.INCBIN "baserom.gba", 0x2B354C, 0x2B55E4-0x2B354C

	.GLOBAL gUnknown_082B55E4
gUnknown_082B55E4:
	.INCBIN "baserom.gba", 0x2B55E4, 0x2B5674-0x2B55E4

	.GLOBAL gUnknown_082B5674
gUnknown_082B5674:
	.INCBIN "baserom.gba", 0x2B5674, 0x2B567C-0x2B5674

	.GLOBAL gUnknown_082B567C
gUnknown_082B567C:
	.INCBIN "baserom.gba", 0x2B567C, 0x2E29EC-0x2B567C

	.GLOBAL gUnknown_082E29EC
gUnknown_082E29EC:
	.INCBIN "baserom.gba", 0x2E29EC, 0x2E29F4-0x2E29EC

	.GLOBAL gUnknown_082E29F4
gUnknown_082E29F4:
	.INCBIN "baserom.gba", 0x2E29F4, 0x2E4C44-0x2E29F4

	.GLOBAL gUnknown_082E4C44
gUnknown_082E4C44:
	.INCBIN "baserom.gba", 0x2E4C44, 0x2E4C4C-0x2E4C44

	.GLOBAL gUnknown_082E4C4C
gUnknown_082E4C4C:
	.INCBIN "baserom.gba", 0x2E4C4C, 0x2E6760-0x2E4C4C

	.GLOBAL gUnknown_082E6760
gUnknown_082E6760:
	.INCBIN "baserom.gba", 0x2E6760, 0x2E6768-0x2E6760

	.GLOBAL gUnknown_082E6768
gUnknown_082E6768:
	.INCBIN "baserom.gba", 0x2E6768, 0x2E6868-0x2E6768

	.GLOBAL gUnknown_082E6868
gUnknown_082E6868:
	.INCBIN "baserom.gba", 0x2E6868, 0x2E6940-0x2E6868

	.GLOBAL gUnknown_082E6940
gUnknown_082E6940:
	.INCBIN "baserom.gba", 0x2E6940, 0x2E6948-0x2E6940

	.GLOBAL gUnknown_082E6948
gUnknown_082E6948:
	.INCBIN "baserom.gba", 0x2E6948, 0x2E8190-0x2E6948

	.GLOBAL gUnknown_082E8190
gUnknown_082E8190:
	.INCBIN "baserom.gba", 0x2E8190, 0x2E8198-0x2E8190

	.GLOBAL gUnknown_082E8198
gUnknown_082E8198:
	.INCBIN "baserom.gba", 0x2E8198, 0x2E8304-0x2E8198

	.GLOBAL gUnknown_082E8304
gUnknown_082E8304:
	.INCBIN "baserom.gba", 0x2E8304, 0x2E830C-0x2E8304

	.GLOBAL gUnknown_082E830C
gUnknown_082E830C:
	.INCBIN "baserom.gba", 0x2E830C, 0x2E84D4-0x2E830C

	.GLOBAL gUnknown_082E84D4
gUnknown_082E84D4:
	.INCBIN "baserom.gba", 0x2E84D4, 0x2E84DC-0x2E84D4

	.GLOBAL gUnknown_082E84DC
gUnknown_082E84DC:
	.INCBIN "baserom.gba", 0x2E84DC, 0x2E8900-0x2E84DC

	.GLOBAL gUnknown_082E8900
gUnknown_082E8900:
	.INCBIN "baserom.gba", 0x2E8900, 0x2E8908-0x2E8900

	.GLOBAL gUnknown_082E8908
gUnknown_082E8908:
	.INCBIN "baserom.gba", 0x2E8908, 0x2E8A50-0x2E8908

	.GLOBAL gUnknown_082E8A50
gUnknown_082E8A50:
	.INCBIN "baserom.gba", 0x2E8A50, 0x2E8A58-0x2E8A50

	.GLOBAL gUnknown_082E8A58
gUnknown_082E8A58:
	.INCBIN "baserom.gba", 0x2E8A58, 0x2E8EA0-0x2E8A58

	.GLOBAL gUnknown_082E8EA0
gUnknown_082E8EA0:
	.INCBIN "baserom.gba", 0x2E8EA0, 0x2E8EA8-0x2E8EA0

	.GLOBAL gUnknown_082E8EA8
gUnknown_082E8EA8:
	.INCBIN "baserom.gba", 0x2E8EA8, 0x2E92C0-0x2E8EA8

	.GLOBAL gUnknown_082E92C0
gUnknown_082E92C0:
	.INCBIN "baserom.gba", 0x2E92C0, 0x2E92C8-0x2E92C0

	.GLOBAL gUnknown_082E92C8
gUnknown_082E92C8:
	.INCBIN "baserom.gba", 0x2E92C8, 0x2E94EC-0x2E92C8

	.GLOBAL gUnknown_082E94EC
gUnknown_082E94EC:
	.INCBIN "baserom.gba", 0x2E94EC, 0x2E94F4-0x2E94EC

	.GLOBAL gUnknown_082E94F4
gUnknown_082E94F4:
	.INCBIN "baserom.gba", 0x2E94F4, 0x2E9574-0x2E94F4

	.GLOBAL gUnknown_082E9574
gUnknown_082E9574:
	.INCBIN "baserom.gba", 0x2E9574, 0x2E964C-0x2E9574

	.GLOBAL gUnknown_082E964C
gUnknown_082E964C:
	.INCBIN "baserom.gba", 0x2E964C, 0x2E9654-0x2E964C

	.GLOBAL gUnknown_082E9654
gUnknown_082E9654:
	.INCBIN "baserom.gba", 0x2E9654, 0x2EAE78-0x2E9654

	.GLOBAL gUnknown_082EAE78
gUnknown_082EAE78:
	.INCBIN "baserom.gba", 0x2EAE78, 0x2EAE80-0x2EAE78

	.GLOBAL gUnknown_082EAE80
gUnknown_082EAE80:
	.INCBIN "baserom.gba", 0x2EAE80, 0x2EAF00-0x2EAE80

	.GLOBAL gUnknown_082EAF00
gUnknown_082EAF00:
	.INCBIN "baserom.gba", 0x2EAF00, 0x2EAF90-0x2EAF00

	.GLOBAL gUnknown_082EAF90
gUnknown_082EAF90:
	.INCBIN "baserom.gba", 0x2EAF90, 0x2EAF98-0x2EAF90

	.GLOBAL gUnknown_082EAF98
gUnknown_082EAF98:
	.INCBIN "baserom.gba", 0x2EAF98, 0x2EB118-0x2EAF98

	.GLOBAL gUnknown_082EB118
gUnknown_082EB118:
	.INCBIN "baserom.gba", 0x2EB118, 0x2EB1BC-0x2EB118

	.GLOBAL gUnknown_082EB1BC
gUnknown_082EB1BC:
	.INCBIN "baserom.gba", 0x2EB1BC, 0x2EB1C4-0x2EB1BC

	.GLOBAL gUnknown_082EB1C4
gUnknown_082EB1C4:
	.INCBIN "baserom.gba", 0x2EB1C4, 0x2EB244-0x2EB1C4

	.GLOBAL gUnknown_082EB244
gUnknown_082EB244:
	.INCBIN "baserom.gba", 0x2EB244, 0x2EB2B0-0x2EB244

	.GLOBAL gUnknown_082EB2B0
gUnknown_082EB2B0:
	.INCBIN "baserom.gba", 0x2EB2B0, 0x2EB2B8-0x2EB2B0

	.GLOBAL gUnknown_082EB2B8
gUnknown_082EB2B8:
	.INCBIN "baserom.gba", 0x2EB2B8, 0x2EBC2C-0x2EB2B8

	.GLOBAL gUnknown_082EBC2C
gUnknown_082EBC2C:
	.INCBIN "baserom.gba", 0x2EBC2C, 0x2EBC34-0x2EBC2C

	.GLOBAL gUnknown_082EBC34
gUnknown_082EBC34:
	.INCBIN "baserom.gba", 0x2EBC34, 0x2EBE58-0x2EBC34

	.GLOBAL gUnknown_082EBE58
gUnknown_082EBE58:
	.INCBIN "baserom.gba", 0x2EBE58, 0x2EBE60-0x2EBE58

	.GLOBAL gUnknown_082EBE60
gUnknown_082EBE60:
	.INCBIN "baserom.gba", 0x2EBE60, 0x2EC2D8-0x2EBE60

	.GLOBAL gUnknown_082EC2D8
gUnknown_082EC2D8:
	.INCBIN "baserom.gba", 0x2EC2D8, 0x2EC2E0-0x2EC2D8

	.GLOBAL gUnknown_082EC2E0
gUnknown_082EC2E0:
	.INCBIN "baserom.gba", 0x2EC2E0, 0x2EC748-0x2EC2E0

	.GLOBAL gUnknown_082EC748
gUnknown_082EC748:
	.INCBIN "baserom.gba", 0x2EC748, 0x2EC750-0x2EC748

	.GLOBAL gUnknown_082EC750
gUnknown_082EC750:
	.INCBIN "baserom.gba", 0x2EC750, 0x2ECB38-0x2EC750

	.GLOBAL gUnknown_082ECB38
gUnknown_082ECB38:
	.INCBIN "baserom.gba", 0x2ECB38, 0x2ECB40-0x2ECB38

	.GLOBAL gUnknown_082ECB40
gUnknown_082ECB40:
	.INCBIN "baserom.gba", 0x2ECB40, 0x2ECF94-0x2ECB40

	.GLOBAL gUnknown_082ECF94
gUnknown_082ECF94:
	.INCBIN "baserom.gba", 0x2ECF94, 0x2ECF9C-0x2ECF94

	.GLOBAL gUnknown_082ECF9C
gUnknown_082ECF9C:
	.INCBIN "baserom.gba", 0x2ECF9C, 0x2ED5BC-0x2ECF9C

	.GLOBAL gUnknown_082ED5BC
gUnknown_082ED5BC:
	.INCBIN "baserom.gba", 0x2ED5BC, 0x2ED5C4-0x2ED5BC

	.GLOBAL gUnknown_082ED5C4
gUnknown_082ED5C4:
	.INCBIN "baserom.gba", 0x2ED5C4, 0x2ED668-0x2ED5C4

	.GLOBAL gUnknown_082ED668
gUnknown_082ED668:
	.INCBIN "baserom.gba", 0x2ED668, 0x2ED670-0x2ED668

	.GLOBAL gUnknown_082ED670
gUnknown_082ED670:
	.INCBIN "baserom.gba", 0x2ED670, 0x2ED794-0x2ED670

	.GLOBAL gUnknown_082ED794
gUnknown_082ED794:
	.INCBIN "baserom.gba", 0x2ED794, 0x2ED79C-0x2ED794

	.GLOBAL gUnknown_082ED79C
gUnknown_082ED79C:
	.INCBIN "baserom.gba", 0x2ED79C, 0x2ED9EC-0x2ED79C

	.GLOBAL gUnknown_082ED9EC
gUnknown_082ED9EC:
	.INCBIN "baserom.gba", 0x2ED9EC, 0x2ED9F4-0x2ED9EC

	.GLOBAL gUnknown_082ED9F4
gUnknown_082ED9F4:
	.INCBIN "baserom.gba", 0x2ED9F4, 0x2EDB18-0x2ED9F4

	.GLOBAL gUnknown_082EDB18
gUnknown_082EDB18:
	.INCBIN "baserom.gba", 0x2EDB18, 0x2EDB20-0x2EDB18

	.GLOBAL gUnknown_082EDB20
gUnknown_082EDB20:
	.INCBIN "baserom.gba", 0x2EDB20, 0x2EDC44-0x2EDB20

	.GLOBAL gUnknown_082EDC44
gUnknown_082EDC44:
	.INCBIN "baserom.gba", 0x2EDC44, 0x2EDC4C-0x2EDC44

	.GLOBAL gUnknown_082EDC4C
gUnknown_082EDC4C:
	.INCBIN "baserom.gba", 0x2EDC4C, 0x2EE074-0x2EDC4C

	.GLOBAL gUnknown_082EE074
gUnknown_082EE074:
	.INCBIN "baserom.gba", 0x2EE074, 0x2EE07C-0x2EE074

	.GLOBAL gUnknown_082EE07C
gUnknown_082EE07C:
	.INCBIN "baserom.gba", 0x2EE07C, 0x2EE120-0x2EE07C

	.GLOBAL gUnknown_082EE120
gUnknown_082EE120:
	.INCBIN "baserom.gba", 0x2EE120, 0x2EE128-0x2EE120

	.GLOBAL gUnknown_082EE128
gUnknown_082EE128:
	.INCBIN "baserom.gba", 0x2EE128, 0x2EE18C-0x2EE128

	.GLOBAL gUnknown_082EE18C
gUnknown_082EE18C:
	.INCBIN "baserom.gba", 0x2EE18C, 0x2EE194-0x2EE18C

	.GLOBAL gUnknown_082EE194
gUnknown_082EE194:
	.INCBIN "baserom.gba", 0x2EE194, 0x2EE214-0x2EE194

	.GLOBAL gUnknown_082EE214
gUnknown_082EE214:
	.INCBIN "baserom.gba", 0x2EE214, 0x2EE25C-0x2EE214

	.GLOBAL gUnknown_082EE25C
gUnknown_082EE25C:
	.INCBIN "baserom.gba", 0x2EE25C, 0x2EE264-0x2EE25C

	.GLOBAL gUnknown_082EE264
gUnknown_082EE264:
	.INCBIN "baserom.gba", 0x2EE264, 0x2EE4AC-0x2EE264

	.GLOBAL gUnknown_082EE4AC
gUnknown_082EE4AC:
	.INCBIN "baserom.gba", 0x2EE4AC, 0x2EE4B4-0x2EE4AC

	.GLOBAL gUnknown_082EE4B4
gUnknown_082EE4B4:
	.INCBIN "baserom.gba", 0x2EE4B4, 0x2EE94C-0x2EE4B4

	.GLOBAL gUnknown_082EE94C
gUnknown_082EE94C:
	.INCBIN "baserom.gba", 0x2EE94C, 0x2EE954-0x2EE94C

	.GLOBAL gUnknown_082EE954
gUnknown_082EE954:
	.INCBIN "baserom.gba", 0x2EE954, 0x2EEB9C-0x2EE954

	.GLOBAL gUnknown_082EEB9C
gUnknown_082EEB9C:
	.INCBIN "baserom.gba", 0x2EEB9C, 0x2EEBA4-0x2EEB9C

	.GLOBAL gUnknown_082EEBA4
gUnknown_082EEBA4:
	.INCBIN "baserom.gba", 0x2EEBA4, 0x2EEDEC-0x2EEBA4

	.GLOBAL gUnknown_082EEDEC
gUnknown_082EEDEC:
	.INCBIN "baserom.gba", 0x2EEDEC, 0x2EEDF4-0x2EEDEC

	.GLOBAL gUnknown_082EEDF4
gUnknown_082EEDF4:
	.INCBIN "baserom.gba", 0x2EEDF4, 0x2EEEF4-0x2EEDF4

	.GLOBAL gUnknown_082EEEF4
gUnknown_082EEEF4:
	.INCBIN "baserom.gba", 0x2EEEF4, 0x2EF144-0x2EEEF4

	.GLOBAL gUnknown_082EF144
gUnknown_082EF144:
	.INCBIN "baserom.gba", 0x2EF144, 0x2EF62C-0x2EF144

	.GLOBAL gUnknown_082EF62C
gUnknown_082EF62C:
	.INCBIN "baserom.gba", 0x2EF62C, 0x2EF634-0x2EF62C

	.GLOBAL gUnknown_082EF634
gUnknown_082EF634:
	.INCBIN "baserom.gba", 0x2EF634, 0x2EF77C-0x2EF634

	.GLOBAL gUnknown_082EF77C
gUnknown_082EF77C:
	.INCBIN "baserom.gba", 0x2EF77C, 0x2EF784-0x2EF77C

	.GLOBAL gUnknown_082EF784
gUnknown_082EF784:
	.INCBIN "baserom.gba", 0x2EF784, 0x2EF924-0x2EF784

	.GLOBAL gUnknown_082EF924
gUnknown_082EF924:
	.INCBIN "baserom.gba", 0x2EF924, 0x2EF92C-0x2EF924

	.GLOBAL gUnknown_082EF92C
gUnknown_082EF92C:
	.INCBIN "baserom.gba", 0x2EF92C, 0x2EFB50-0x2EF92C

	.GLOBAL gUnknown_082EFB50
gUnknown_082EFB50:
	.INCBIN "baserom.gba", 0x2EFB50, 0x2EFB58-0x2EFB50

	.GLOBAL gUnknown_082EFB58
gUnknown_082EFB58:
	.INCBIN "baserom.gba", 0x2EFB58, 0x2EFBFC-0x2EFB58

	.GLOBAL gUnknown_082EFBFC
gUnknown_082EFBFC:
	.INCBIN "baserom.gba", 0x2EFBFC, 0x2EFC04-0x2EFBFC

	.GLOBAL gUnknown_082EFC04
gUnknown_082EFC04:
	.INCBIN "baserom.gba", 0x2EFC04, 0x2EFC68-0x2EFC04

	.GLOBAL gUnknown_082EFC68
gUnknown_082EFC68:
	.INCBIN "baserom.gba", 0x2EFC68, 0x2EFC70-0x2EFC68

	.GLOBAL gUnknown_082EFC70
gUnknown_082EFC70:
	.INCBIN "baserom.gba", 0x2EFC70, 0x2EFCB4-0x2EFC70

	.GLOBAL gUnknown_082EFCB4
gUnknown_082EFCB4:
	.INCBIN "baserom.gba", 0x2EFCB4, 0x2EFCBC-0x2EFCB4

	.GLOBAL gUnknown_082EFCBC
gUnknown_082EFCBC:
	.INCBIN "baserom.gba", 0x2EFCBC, 0x2EFDAC-0x2EFCBC

	.GLOBAL gUnknown_082EFDAC
gUnknown_082EFDAC:
	.INCBIN "baserom.gba", 0x2EFDAC, 0x2EFDB4-0x2EFDAC

	.GLOBAL gUnknown_082EFDB4
gUnknown_082EFDB4:
	.INCBIN "baserom.gba", 0x2EFDB4, 0x2EFDF8-0x2EFDB4

	.GLOBAL gUnknown_082EFDF8
gUnknown_082EFDF8:
	.INCBIN "baserom.gba", 0x2EFDF8, 0x2EFE00-0x2EFDF8

	.GLOBAL gUnknown_082EFE00
gUnknown_082EFE00:
	.INCBIN "baserom.gba", 0x2EFE00, 0x2EFE44-0x2EFE00

	.GLOBAL gUnknown_082EFE44
gUnknown_082EFE44:
	.INCBIN "baserom.gba", 0x2EFE44, 0x2EFE4C-0x2EFE44

	.GLOBAL gUnknown_082EFE4C
gUnknown_082EFE4C:
	.INCBIN "baserom.gba", 0x2EFE4C, 0x2EFE90-0x2EFE4C

	.GLOBAL gUnknown_082EFE90
gUnknown_082EFE90:
	.INCBIN "baserom.gba", 0x2EFE90, 0x2EFE98-0x2EFE90

	.GLOBAL gUnknown_082EFE98
gUnknown_082EFE98:
	.INCBIN "baserom.gba", 0x2EFE98, 0x2EFF24-0x2EFE98

	.GLOBAL gUnknown_082EFF24
gUnknown_082EFF24:
	.INCBIN "baserom.gba", 0x2EFF24, 0x2EFF2C-0x2EFF24

	.GLOBAL gUnknown_082EFF2C
gUnknown_082EFF2C:
	.INCBIN "baserom.gba", 0x2EFF2C, 0x2EFF4C-0x2EFF2C

	.GLOBAL gUnknown_082EFF4C
gUnknown_082EFF4C:
	.INCBIN "baserom.gba", 0x2EFF4C, 0x2EFF6C-0x2EFF4C

	.GLOBAL gUnknown_082EFF6C
gUnknown_082EFF6C:
	.INCBIN "baserom.gba", 0x2EFF6C, 0x2F01B0-0x2EFF6C

	.GLOBAL gUnknown_082F01B0
gUnknown_082F01B0:
	.INCBIN "baserom.gba", 0x2F01B0, 0x2F01B8-0x2F01B0

	.GLOBAL gUnknown_082F01B8
gUnknown_082F01B8:
	.INCBIN "baserom.gba", 0x2F01B8, 0x2F033C-0x2F01B8

	.GLOBAL gUnknown_082F033C
gUnknown_082F033C:
	.INCBIN "baserom.gba", 0x2F033C, 0x2F0344-0x2F033C

	.GLOBAL gUnknown_082F0344
gUnknown_082F0344:
	.INCBIN "baserom.gba", 0x2F0344, 0x2F0364-0x2F0344

	.GLOBAL gUnknown_082F0364
gUnknown_082F0364:
	.INCBIN "baserom.gba", 0x2F0364, 0x2F043C-0x2F0364

	.GLOBAL gUnknown_082F043C
gUnknown_082F043C:
	.INCBIN "baserom.gba", 0x2F043C, 0x2F0444-0x2F043C

	.GLOBAL gUnknown_082F0444
gUnknown_082F0444:
	.INCBIN "baserom.gba", 0x2F0444, 0x2F0768-0x2F0444

	.GLOBAL gUnknown_082F0768
gUnknown_082F0768:
	.INCBIN "baserom.gba", 0x2F0768, 0x2F0770-0x2F0768

	.GLOBAL gUnknown_082F0770
gUnknown_082F0770:
	.INCBIN "baserom.gba", 0x2F0770, 0x2F07B4-0x2F0770

	.GLOBAL gUnknown_082F07B4
gUnknown_082F07B4:
	.INCBIN "baserom.gba", 0x2F07B4, 0x2F07BC-0x2F07B4

	.GLOBAL gUnknown_082F07BC
gUnknown_082F07BC:
	.INCBIN "baserom.gba", 0x2F07BC, 0x2F0800-0x2F07BC

	.GLOBAL gUnknown_082F0800
gUnknown_082F0800:
	.INCBIN "baserom.gba", 0x2F0800, 0x2F0808-0x2F0800

	.GLOBAL gUnknown_082F0808
gUnknown_082F0808:
	.INCBIN "baserom.gba", 0x2F0808, 0x2F084C-0x2F0808

	.GLOBAL gUnknown_082F084C
gUnknown_082F084C:
	.INCBIN "baserom.gba", 0x2F084C, 0x2F0854-0x2F084C

	.GLOBAL gUnknown_082F0854
gUnknown_082F0854:
	.INCBIN "baserom.gba", 0x2F0854, 0x2F0944-0x2F0854

	.GLOBAL gUnknown_082F0944
gUnknown_082F0944:
	.INCBIN "baserom.gba", 0x2F0944, 0x2F094C-0x2F0944

	.GLOBAL gUnknown_082F094C
gUnknown_082F094C:
	.INCBIN "baserom.gba", 0x2F094C, 0x2F0A60-0x2F094C

	.GLOBAL gUnknown_082F0A60
gUnknown_082F0A60:
	.INCBIN "baserom.gba", 0x2F0A60, 0x2F0A68-0x2F0A60

	.GLOBAL gUnknown_082F0A68
gUnknown_082F0A68:
	.INCBIN "baserom.gba", 0x2F0A68, 0x2F0B30-0x2F0A68

	.GLOBAL gUnknown_082F0B30
gUnknown_082F0B30:
	.INCBIN "baserom.gba", 0x2F0B30, 0x2F0B38-0x2F0B30

	.GLOBAL gUnknown_082F0B38
gUnknown_082F0B38:
	.INCBIN "baserom.gba", 0x2F0B38, 0x2F0BDC-0x2F0B38

	.GLOBAL gUnknown_082F0BDC
gUnknown_082F0BDC:
	.INCBIN "baserom.gba", 0x2F0BDC, 0x2F0BE4-0x2F0BDC

	.GLOBAL gUnknown_082F0BE4
gUnknown_082F0BE4:
	.INCBIN "baserom.gba", 0x2F0BE4, 0x2F0C88-0x2F0BE4

	.GLOBAL gUnknown_082F0C88
gUnknown_082F0C88:
	.INCBIN "baserom.gba", 0x2F0C88, 0x2F0C90-0x2F0C88

	.GLOBAL gUnknown_082F0C90
gUnknown_082F0C90:
	.INCBIN "baserom.gba", 0x2F0C90, 0x2F0CF4-0x2F0C90

	.GLOBAL gUnknown_082F0CF4
gUnknown_082F0CF4:
	.INCBIN "baserom.gba", 0x2F0CF4, 0x2F0CFC-0x2F0CF4

	.GLOBAL gUnknown_082F0CFC
gUnknown_082F0CFC:
	.INCBIN "baserom.gba", 0x2F0CFC, 0x2F0DA0-0x2F0CFC

	.GLOBAL gUnknown_082F0DA0
gUnknown_082F0DA0:
	.INCBIN "baserom.gba", 0x2F0DA0, 0x2F0DA8-0x2F0DA0

	.GLOBAL gUnknown_082F0DA8
gUnknown_082F0DA8:
	.INCBIN "baserom.gba", 0x2F0DA8, 0x2F11CC-0x2F0DA8

	.GLOBAL gUnknown_082F11CC
gUnknown_082F11CC:
	.INCBIN "baserom.gba", 0x2F11CC, 0x2F11D4-0x2F11CC

	.GLOBAL gUnknown_082F11D4
gUnknown_082F11D4:
	.INCBIN "baserom.gba", 0x2F11D4, 0x2F15F8-0x2F11D4

	.GLOBAL gUnknown_082F15F8
gUnknown_082F15F8:
	.INCBIN "baserom.gba", 0x2F15F8, 0x2F1600-0x2F15F8

	.GLOBAL gUnknown_082F1600
gUnknown_082F1600:
	.INCBIN "baserom.gba", 0x2F1600, 0x2F1680-0x2F1600

	.GLOBAL gUnknown_082F1680
gUnknown_082F1680:
	.INCBIN "baserom.gba", 0x2F1680, 0x2F1718-0x2F1680

	.GLOBAL gUnknown_082F1718
gUnknown_082F1718:
	.INCBIN "baserom.gba", 0x2F1718, 0x2F1898-0x2F1718

	.GLOBAL gUnknown_082F1898
gUnknown_082F1898:
	.INCBIN "baserom.gba", 0x2F1898, 0x2F1930-0x2F1898

	.GLOBAL gUnknown_082F1930
gUnknown_082F1930:
	.INCBIN "baserom.gba", 0x2F1930, 0x2F1AB0-0x2F1930

	.GLOBAL gUnknown_082F1AB0
gUnknown_082F1AB0:
	.INCBIN "baserom.gba", 0x2F1AB0, 0x2F1B48-0x2F1AB0

	.GLOBAL gUnknown_082F1B48
gUnknown_082F1B48:
	.INCBIN "baserom.gba", 0x2F1B48, 0x2F200C-0x2F1B48

	.GLOBAL gUnknown_082F200C
gUnknown_082F200C:
	.INCBIN "baserom.gba", 0x2F200C, 0x2F2014-0x2F200C

	.GLOBAL gUnknown_082F2014
gUnknown_082F2014:
	.INCBIN "baserom.gba", 0x2F2014, 0x2F20B8-0x2F2014

	.GLOBAL gUnknown_082F20B8
gUnknown_082F20B8:
	.INCBIN "baserom.gba", 0x2F20B8, 0x2F20C0-0x2F20B8

	.GLOBAL gUnknown_082F20C0
gUnknown_082F20C0:
	.INCBIN "baserom.gba", 0x2F20C0, 0x2F2164-0x2F20C0

	.GLOBAL gUnknown_082F2164
gUnknown_082F2164:
	.INCBIN "baserom.gba", 0x2F2164, 0x2F216C-0x2F2164

	.GLOBAL gUnknown_082F216C
gUnknown_082F216C:
	.INCBIN "baserom.gba", 0x2F216C, 0x2F2210-0x2F216C

	.GLOBAL gUnknown_082F2210
gUnknown_082F2210:
	.INCBIN "baserom.gba", 0x2F2210, 0x2F2218-0x2F2210

	.GLOBAL gUnknown_082F2218
gUnknown_082F2218:
	.INCBIN "baserom.gba", 0x2F2218, 0x2F22BC-0x2F2218

	.GLOBAL gUnknown_082F22BC
gUnknown_082F22BC:
	.INCBIN "baserom.gba", 0x2F22BC, 0x2F22C4-0x2F22BC

	.GLOBAL gUnknown_082F22C4
gUnknown_082F22C4:
	.INCBIN "baserom.gba", 0x2F22C4, 0x2F2368-0x2F22C4

	.GLOBAL gUnknown_082F2368
gUnknown_082F2368:
	.INCBIN "baserom.gba", 0x2F2368, 0x2F2370-0x2F2368

	.GLOBAL gUnknown_082F2370
gUnknown_082F2370:
	.INCBIN "baserom.gba", 0x2F2370, 0x2F2414-0x2F2370

	.GLOBAL gUnknown_082F2414
gUnknown_082F2414:
	.INCBIN "baserom.gba", 0x2F2414, 0x2F241C-0x2F2414

	.GLOBAL gUnknown_082F241C
gUnknown_082F241C:
	.INCBIN "baserom.gba", 0x2F241C, 0x2F2640-0x2F241C

	.GLOBAL gUnknown_082F2640
gUnknown_082F2640:
	.INCBIN "baserom.gba", 0x2F2640, 0x2F2648-0x2F2640

	.GLOBAL gUnknown_082F2648
gUnknown_082F2648:
	.INCBIN "baserom.gba", 0x2F2648, 0x2F286C-0x2F2648

	.GLOBAL gUnknown_082F286C
gUnknown_082F286C:
	.INCBIN "baserom.gba", 0x2F286C, 0x2F2874-0x2F286C

	.GLOBAL gUnknown_082F2874
gUnknown_082F2874:
	.INCBIN "baserom.gba", 0x2F2874, 0x2F2A98-0x2F2874

	.GLOBAL gUnknown_082F2A98
gUnknown_082F2A98:
	.INCBIN "baserom.gba", 0x2F2A98, 0x2F2AA0-0x2F2A98

	.GLOBAL gUnknown_082F2AA0
gUnknown_082F2AA0:
	.INCBIN "baserom.gba", 0x2F2AA0, 0x2F2CC4-0x2F2AA0

	.GLOBAL gUnknown_082F2CC4
gUnknown_082F2CC4:
	.INCBIN "baserom.gba", 0x2F2CC4, 0x2F2CCC-0x2F2CC4

	.GLOBAL gUnknown_082F2CCC
gUnknown_082F2CCC:
	.INCBIN "baserom.gba", 0x2F2CCC, 0x2F2EF0-0x2F2CCC

	.GLOBAL gUnknown_082F2EF0
gUnknown_082F2EF0:
	.INCBIN "baserom.gba", 0x2F2EF0, 0x2F2EF8-0x2F2EF0

	.GLOBAL gUnknown_082F2EF8
gUnknown_082F2EF8:
	.INCBIN "baserom.gba", 0x2F2EF8, 0x2F311C-0x2F2EF8

	.GLOBAL gUnknown_082F311C
gUnknown_082F311C:
	.INCBIN "baserom.gba", 0x2F311C, 0x2F3124-0x2F311C

	.GLOBAL gUnknown_082F3124
gUnknown_082F3124:
	.INCBIN "baserom.gba", 0x2F3124, 0x2F3348-0x2F3124

	.GLOBAL gUnknown_082F3348
gUnknown_082F3348:
	.INCBIN "baserom.gba", 0x2F3348, 0x2F3350-0x2F3348

	.GLOBAL gUnknown_082F3350
gUnknown_082F3350:
	.INCBIN "baserom.gba", 0x2F3350, 0x2F3574-0x2F3350

	.GLOBAL gUnknown_082F3574
gUnknown_082F3574:
	.INCBIN "baserom.gba", 0x2F3574, 0x2F357C-0x2F3574

	.GLOBAL gUnknown_082F357C
gUnknown_082F357C:
	.INCBIN "baserom.gba", 0x2F357C, 0x2F37A8-0x2F357C

	.GLOBAL gUnknown_082F37A8
gUnknown_082F37A8:
	.INCBIN "baserom.gba", 0x2F37A8, 0x2F38F4-0x2F37A8

	.GLOBAL gUnknown_082F38F4
gUnknown_082F38F4:
	.INCBIN "baserom.gba", 0x2F38F4, 0x2F39F0-0x2F38F4

	.GLOBAL gUnknown_082F39F0
gUnknown_082F39F0:
	.INCBIN "baserom.gba", 0x2F39F0, 0x2F39F8-0x2F39F0

	.GLOBAL gUnknown_082F39F8
gUnknown_082F39F8:
	.INCBIN "baserom.gba", 0x2F39F8, 0x2F513C-0x2F39F8

	.GLOBAL gUnknown_082F513C
gUnknown_082F513C:
	.INCBIN "baserom.gba", 0x2F513C, 0x2F52A4-0x2F513C

	.GLOBAL gUnknown_082F52A4
gUnknown_082F52A4:
	.INCBIN "baserom.gba", 0x2F52A4, 0x2F52AC-0x2F52A4

	.GLOBAL gUnknown_082F52AC
gUnknown_082F52AC:
	.INCBIN "baserom.gba", 0x2F52AC, 0x2F8F04-0x2F52AC

	.GLOBAL gUnknown_082F8F04
gUnknown_082F8F04:
	.INCBIN "baserom.gba", 0x2F8F04, 0x2F8F0C-0x2F8F04

	.GLOBAL gUnknown_082F8F0C
gUnknown_082F8F0C:
	.INCBIN "baserom.gba", 0x2F8F0C, 0x342EAC-0x2F8F0C

	.GLOBAL gUnknown_08342EAC
gUnknown_08342EAC:
	.INCBIN "baserom.gba", 0x342EAC, 0x342EB4-0x342EAC

	.GLOBAL gUnknown_08342EB4
gUnknown_08342EB4:
	.INCBIN "baserom.gba", 0x342EB4, 0x43980C-0x342EB4

	.GLOBAL gUnknown_0843980C
gUnknown_0843980C:
	.INCBIN "baserom.gba", 0x43980C, 0x439A4C-0x43980C

	.GLOBAL gUnknown_08439A4C
gUnknown_08439A4C:
	.INCBIN "baserom.gba", 0x439A4C, 0x439A54-0x439A4C

	.GLOBAL gUnknown_08439A54
gUnknown_08439A54:
	.INCBIN "baserom.gba", 0x439A54, 0x51400C-0x439A54

	.GLOBAL gUnknown_0851400C
gUnknown_0851400C:
	.INCBIN "baserom.gba", 0x51400C, 0x514014-0x51400C

	.GLOBAL gUnknown_08514014
gUnknown_08514014:
	.INCBIN "baserom.gba", 0x514014, 0x51F440-0x514014

	.GLOBAL gUnknown_0851F440
gUnknown_0851F440:
	.INCBIN "baserom.gba", 0x51F440, 0x51F560-0x51F440

	.GLOBAL gUnknown_0851F560
gUnknown_0851F560:
	.INCBIN "baserom.gba", 0x51F560, 0x51F568-0x51F560

	.GLOBAL gUnknown_0851F568
gUnknown_0851F568:
	.INCBIN "baserom.gba", 0x51F568, 0x54301C-0x51F568

	.GLOBAL gUnknown_0854301C
gUnknown_0854301C:
	.INCBIN "baserom.gba", 0x54301C, 0x54337C-0x54301C

	.GLOBAL gUnknown_0854337C
gUnknown_0854337C:
	.INCBIN "baserom.gba", 0x54337C, 0x543384-0x54337C

	.GLOBAL gUnknown_08543384
gUnknown_08543384:
	.INCBIN "baserom.gba", 0x543384, 0x587E38-0x543384

	.GLOBAL gUnknown_08587E38
gUnknown_08587E38:
	.INCBIN "baserom.gba", 0x587E38, 0x5882B8-0x587E38

	.GLOBAL gUnknown_085882B8
gUnknown_085882B8:
	.INCBIN "baserom.gba", 0x5882B8, 0x5882C0-0x5882B8

	.GLOBAL gUnknown_085882C0
gUnknown_085882C0:
	.INCBIN "baserom.gba", 0x5882C0, 0x59FC1C-0x5882C0

	.GLOBAL gUnknown_0859FC1C
gUnknown_0859FC1C:
	.INCBIN "baserom.gba", 0x59FC1C, 0x59FD3C-0x59FC1C

	.GLOBAL gUnknown_0859FD3C
gUnknown_0859FD3C:
	.INCBIN "baserom.gba", 0x59FD3C, 0x59FD44-0x59FD3C

	.GLOBAL gUnknown_0859FD44
gUnknown_0859FD44:
	.INCBIN "baserom.gba", 0x59FD44, 0x5BD3D8-0x59FD44

	.GLOBAL gUnknown_085BD3D8
gUnknown_085BD3D8:
	.INCBIN "baserom.gba", 0x5BD3D8, 0x5BD588-0x5BD3D8

	.GLOBAL gUnknown_085BD588
gUnknown_085BD588:
	.INCBIN "baserom.gba", 0x5BD588, 0x5BD590-0x5BD588

	.GLOBAL gUnknown_085BD590
gUnknown_085BD590:
	.INCBIN "baserom.gba", 0x5BD590, 0x5C240C-0x5BD590

	.GLOBAL gUnknown_085C240C
gUnknown_085C240C:
	.INCBIN "baserom.gba", 0x5C240C, 0x5C2588-0x5C240C

	.GLOBAL gUnknown_085C2588
gUnknown_085C2588:
	.INCBIN "baserom.gba", 0x5C2588, 0x5C2634-0x5C2588

	.GLOBAL gUnknown_085C2634
gUnknown_085C2634:
	.INCBIN "baserom.gba", 0x5C2634, 0x5C2F90-0x5C2634

	.GLOBAL gUnknown_085C2F90
gUnknown_085C2F90:
	.INCBIN "baserom.gba", 0x5C2F90, 0x5C3218-0x5C2F90

	.GLOBAL gUnknown_085C3218
gUnknown_085C3218:
	.INCBIN "baserom.gba", 0x5C3218, 0x5C3220-0x5C3218

	.GLOBAL gUnknown_085C3220
gUnknown_085C3220:
	.INCBIN "baserom.gba", 0x5C3220, 0x5C7A78-0x5C3220

	.GLOBAL gUnknown_085C7A78
gUnknown_085C7A78:
	.INCBIN "baserom.gba", 0x5C7A78, 0x5C7D00-0x5C7A78

	.GLOBAL gUnknown_085C7D00
gUnknown_085C7D00:
	.INCBIN "baserom.gba", 0x5C7D00, 0x5C7D08-0x5C7D00

	.GLOBAL gUnknown_085C7D08
gUnknown_085C7D08:
	.INCBIN "baserom.gba", 0x5C7D08, 0x5CD18C-0x5C7D08

	.GLOBAL gUnknown_085CD18C
gUnknown_085CD18C:
	.INCBIN "baserom.gba", 0x5CD18C, 0x5CD848-0x5CD18C

	.GLOBAL gUnknown_085CD848
gUnknown_085CD848:
	.INCBIN "baserom.gba", 0x5CD848, 0x5CE074-0x5CD848

	.GLOBAL gUnknown_085CE074
gUnknown_085CE074:
	.INCBIN "baserom.gba", 0x5CE074, 0x5D08F8-0x5CE074

	.GLOBAL gUnknown_085D08F8
gUnknown_085D08F8:
	.INCBIN "baserom.gba", 0x5D08F8, 0x5D0900-0x5D08F8

	.GLOBAL gUnknown_085D0900
gUnknown_085D0900:
	.INCBIN "baserom.gba", 0x5D0900, 0x5DEA94-0x5D0900

	.GLOBAL gUnknown_085DEA94
gUnknown_085DEA94:
	.INCBIN "baserom.gba", 0x5DEA94, 0x5DEA9C-0x5DEA94

	.GLOBAL gUnknown_085DEA9C
gUnknown_085DEA9C:
	.INCBIN "baserom.gba", 0x5DEA9C, 0x5DED1C-0x5DEA9C

	.GLOBAL gUnknown_085DED1C
gUnknown_085DED1C:
	.INCBIN "baserom.gba", 0x5DED1C, 0x5DEFAC-0x5DED1C

	.GLOBAL gUnknown_085DEFAC
gUnknown_085DEFAC:
	.INCBIN "baserom.gba", 0x5DEFAC, 0x5DF3AC-0x5DEFAC

	.GLOBAL gUnknown_085DF3AC
gUnknown_085DF3AC:
	.INCBIN "baserom.gba", 0x5DF3AC, 0x5DF63C-0x5DF3AC

	.GLOBAL gUnknown_085DF63C
gUnknown_085DF63C:
	.INCBIN "baserom.gba", 0x5DF63C, 0x5DFA3C-0x5DF63C

	.GLOBAL gUnknown_085DFA3C
gUnknown_085DFA3C:
	.INCBIN "baserom.gba", 0x5DFA3C, 0x5DFCCC-0x5DFA3C

	.GLOBAL gUnknown_085DFCCC
gUnknown_085DFCCC:
	.INCBIN "baserom.gba", 0x5DFCCC, 0x5E063C-0x5DFCCC

	.GLOBAL gUnknown_085E063C
gUnknown_085E063C:
	.INCBIN "baserom.gba", 0x5E063C, 0x5E068C-0x5E063C

	.GLOBAL gUnknown_085E068C
gUnknown_085E068C:
	.INCBIN "baserom.gba", 0x5E068C, 0x5E0908-0x5E068C

	.GLOBAL gUnknown_085E0908
gUnknown_085E0908:
	.INCBIN "baserom.gba", 0x5E0908, 0x5E0AC4-0x5E0908

	.GLOBAL gUnknown_085E0AC4
gUnknown_085E0AC4:
	.INCBIN "baserom.gba", 0x5E0AC4, 0x5E0B14-0x5E0AC4

	.GLOBAL gUnknown_085E0B14
gUnknown_085E0B14:
	.INCBIN "baserom.gba", 0x5E0B14, 0x5E0D90-0x5E0B14

	.GLOBAL gUnknown_085E0D90
gUnknown_085E0D90:
	.INCBIN "baserom.gba", 0x5E0D90, 0x5E0EBC-0x5E0D90

	.GLOBAL gUnknown_085E0EBC
gUnknown_085E0EBC:
	.INCBIN "baserom.gba", 0x5E0EBC, 0x5E0F0C-0x5E0EBC

	.GLOBAL gUnknown_085E0F0C
gUnknown_085E0F0C:
	.INCBIN "baserom.gba", 0x5E0F0C, 0x5E1188-0x5E0F0C

	.GLOBAL gUnknown_085E1188
gUnknown_085E1188:
	.INCBIN "baserom.gba", 0x5E1188, 0x5E1C2C-0x5E1188

	.GLOBAL gUnknown_085E1C2C
gUnknown_085E1C2C:
	.INCBIN "baserom.gba", 0x5E1C2C, 0x5E1F2C-0x5E1C2C

	.GLOBAL gUnknown_085E1F2C
gUnknown_085E1F2C:
	.INCBIN "baserom.gba", 0x5E1F2C, 0x5E200C-0x5E1F2C

	.GLOBAL gUnknown_085E200C
gUnknown_085E200C:
	.INCBIN "baserom.gba", 0x5E200C, 0x5E2330-0x5E200C

	.GLOBAL gUnknown_085E2330
gUnknown_085E2330:
	.INCBIN "baserom.gba", 0x5E2330, 0x5E2338-0x5E2330

	.GLOBAL gUnknown_085E2338
gUnknown_085E2338:
	.INCBIN "baserom.gba", 0x5E2338, 0x5E2870-0x5E2338

	.GLOBAL gUnknown_085E2870
gUnknown_085E2870:
	.INCBIN "baserom.gba", 0x5E2870, 0x5E2B00-0x5E2870

	.GLOBAL gUnknown_085E2B00
gUnknown_085E2B00:
	.INCBIN "baserom.gba", 0x5E2B00, 0x5E2F00-0x5E2B00

	.GLOBAL gUnknown_085E2F00
gUnknown_085E2F00:
	.INCBIN "baserom.gba", 0x5E2F00, 0x5E3190-0x5E2F00

	.GLOBAL gUnknown_085E3190
gUnknown_085E3190:
	.INCBIN "baserom.gba", 0x5E3190, 0x5E3590-0x5E3190

	.GLOBAL gUnknown_085E3590
gUnknown_085E3590:
	.INCBIN "baserom.gba", 0x5E3590, 0x5E3818-0x5E3590

	.GLOBAL gUnknown_085E3818
gUnknown_085E3818:
	.INCBIN "baserom.gba", 0x5E3818, 0x5E3820-0x5E3818

	.GLOBAL gUnknown_085E3820
gUnknown_085E3820:
	.INCBIN "baserom.gba", 0x5E3820, 0x5E90D0-0x5E3820

	.GLOBAL gUnknown_085E90D0
gUnknown_085E90D0:
	.INCBIN "baserom.gba", 0x5E90D0, 0x5E9360-0x5E90D0

	.GLOBAL gUnknown_085E9360
gUnknown_085E9360:
	.INCBIN "baserom.gba", 0x5E9360, 0x5F49D0-0x5E9360

	.GLOBAL gUnknown_085F49D0
gUnknown_085F49D0:
	.INCBIN "baserom.gba", 0x5F49D0, 0x5F49D8-0x5F49D0

	.GLOBAL gUnknown_085F49D8
gUnknown_085F49D8:
	.INCBIN "baserom.gba", 0x5F49D8, 0x5F61B4-0x5F49D8

	.GLOBAL gUnknown_085F61B4
gUnknown_085F61B4:
	.INCBIN "baserom.gba", 0x5F61B4, 0x5F6388-0x5F61B4

	.GLOBAL gUnknown_085F6388
gUnknown_085F6388:
	.INCBIN "baserom.gba", 0x5F6388, 0x5F6390-0x5F6388

	.GLOBAL gUnknown_085F6390
gUnknown_085F6390:
	.INCBIN "baserom.gba", 0x5F6390, 0x5FB554-0x5F6390

	.GLOBAL gUnknown_085FB554
gUnknown_085FB554:
	.INCBIN "baserom.gba", 0x5FB554, 0x5FB7DC-0x5FB554

	.GLOBAL gUnknown_085FB7DC
gUnknown_085FB7DC:
	.INCBIN "baserom.gba", 0x5FB7DC, 0x5FB7E4-0x5FB7DC

	.GLOBAL gUnknown_085FB7E4
gUnknown_085FB7E4:
	.INCBIN "baserom.gba", 0x5FB7E4, 0x5FEFE4-0x5FB7E4

	.GLOBAL gUnknown_085FEFE4
gUnknown_085FEFE4:
	.INCBIN "baserom.gba", 0x5FEFE4, 0x5FF26C-0x5FEFE4

	.GLOBAL gUnknown_085FF26C
gUnknown_085FF26C:
	.INCBIN "baserom.gba", 0x5FF26C, 0x5FF274-0x5FF26C

	.GLOBAL gUnknown_085FF274
gUnknown_085FF274:
	.INCBIN "baserom.gba", 0x5FF274, 0x600E74-0x5FF274

	.GLOBAL gUnknown_08600E74
gUnknown_08600E74:
	.INCBIN "baserom.gba", 0x600E74, 0x6010FC-0x600E74

	.GLOBAL gUnknown_086010FC
gUnknown_086010FC:
	.INCBIN "baserom.gba", 0x6010FC, 0x601104-0x6010FC

	.GLOBAL gUnknown_08601104
gUnknown_08601104:
	.INCBIN "baserom.gba", 0x601104, 0x602D04-0x601104

	.GLOBAL gUnknown_08602D04
gUnknown_08602D04:
	.INCBIN "baserom.gba", 0x602D04, 0x602F8C-0x602D04

	.GLOBAL gUnknown_08602F8C
gUnknown_08602F8C:
	.INCBIN "baserom.gba", 0x602F8C, 0x602F94-0x602F8C

	.GLOBAL gUnknown_08602F94
gUnknown_08602F94:
	.INCBIN "baserom.gba", 0x602F94, 0x606794-0x602F94

	.GLOBAL gUnknown_08606794
gUnknown_08606794:
	.INCBIN "baserom.gba", 0x606794, 0x606A1C-0x606794

	.GLOBAL gUnknown_08606A1C
gUnknown_08606A1C:
	.INCBIN "baserom.gba", 0x606A1C, 0x606A24-0x606A1C

	.GLOBAL gUnknown_08606A24
gUnknown_08606A24:
	.INCBIN "baserom.gba", 0x606A24, 0x60A224-0x606A24

	.GLOBAL gUnknown_0860A224
gUnknown_0860A224:
	.INCBIN "baserom.gba", 0x60A224, 0x60A4AC-0x60A224

	.GLOBAL gUnknown_0860A4AC
gUnknown_0860A4AC:
	.INCBIN "baserom.gba", 0x60A4AC, 0x60A4B4-0x60A4AC

	.GLOBAL gUnknown_0860A4B4
gUnknown_0860A4B4:
	.INCBIN "baserom.gba", 0x60A4B4, 0x60C0B4-0x60A4B4

	.GLOBAL gUnknown_0860C0B4
gUnknown_0860C0B4:
	.INCBIN "baserom.gba", 0x60C0B4, 0x60C33C-0x60C0B4

	.GLOBAL gUnknown_0860C33C
gUnknown_0860C33C:
	.INCBIN "baserom.gba", 0x60C33C, 0x60C344-0x60C33C

	.GLOBAL gUnknown_0860C344
gUnknown_0860C344:
	.INCBIN "baserom.gba", 0x60C344, 0x60FB44-0x60C344

	.GLOBAL gUnknown_0860FB44
gUnknown_0860FB44:
	.INCBIN "baserom.gba", 0x60FB44, 0x60FDCC-0x60FB44

	.GLOBAL gUnknown_0860FDCC
gUnknown_0860FDCC:
	.INCBIN "baserom.gba", 0x60FDCC, 0x60FDD4-0x60FDCC

	.GLOBAL gUnknown_0860FDD4
gUnknown_0860FDD4:
	.INCBIN "baserom.gba", 0x60FDD4, 0x614764-0x60FDD4

	.GLOBAL gUnknown_08614764
gUnknown_08614764:
	.INCBIN "baserom.gba", 0x614764, 0x615BB4-0x614764

	.GLOBAL gUnknown_08615BB4
gUnknown_08615BB4:
	.INCBIN "baserom.gba", 0x615BB4, 0x615C04-0x615BB4

	.GLOBAL gUnknown_08615C04
gUnknown_08615C04:
	.INCBIN "baserom.gba", 0x615C04, 0x617030-0x615C04

	.GLOBAL gUnknown_08617030
gUnknown_08617030:
	.INCBIN "baserom.gba", 0x617030, 0x617080-0x617030

	.GLOBAL gUnknown_08617080
gUnknown_08617080:
	.INCBIN "baserom.gba", 0x617080, 0x6172E8-0x617080

	.GLOBAL gUnknown_086172E8
gUnknown_086172E8:
	.INCBIN "baserom.gba", 0x6172E8, 0x6172F0-0x6172E8

	.GLOBAL gUnknown_086172F0
gUnknown_086172F0:
	.INCBIN "baserom.gba", 0x6172F0, 0x617828-0x6172F0

	.GLOBAL gUnknown_08617828
gUnknown_08617828:
	.INCBIN "baserom.gba", 0x617828, 0x617830-0x617828

	.GLOBAL gUnknown_08617830
gUnknown_08617830:
	.INCBIN "baserom.gba", 0x617830, 0x617AFC-0x617830

	.GLOBAL gUnknown_08617AFC
gUnknown_08617AFC:
	.INCBIN "baserom.gba", 0x617AFC, 0x617B04-0x617AFC

	.GLOBAL gUnknown_08617B04
gUnknown_08617B04:
	.INCBIN "baserom.gba", 0x617B04, 0x617F1C-0x617B04

	.GLOBAL gUnknown_08617F1C
gUnknown_08617F1C:
	.INCBIN "baserom.gba", 0x617F1C, 0x617F24-0x617F1C

	.GLOBAL gUnknown_08617F24
gUnknown_08617F24:
	.INCBIN "baserom.gba", 0x617F24, 0x618064-0x617F24

	.GLOBAL gUnknown_08618064
gUnknown_08618064:
	.INCBIN "baserom.gba", 0x618064, 0x6180B4-0x618064

	.GLOBAL gUnknown_086180B4
gUnknown_086180B4:
	.INCBIN "baserom.gba", 0x6180B4, 0x61DE70-0x6180B4

	.GLOBAL gUnknown_0861DE70
gUnknown_0861DE70:
	.INCBIN "baserom.gba", 0x61DE70, 0x61E0B0-0x61DE70

	.GLOBAL gUnknown_0861E0B0
gUnknown_0861E0B0:
	.INCBIN "baserom.gba", 0x61E0B0, 0x61E0B8-0x61E0B0

	.GLOBAL gUnknown_0861E0B8
gUnknown_0861E0B8:
	.INCBIN "baserom.gba", 0x61E0B8, 0x6200B8-0x61E0B8

	.GLOBAL gUnknown_086200B8
gUnknown_086200B8:
	.INCBIN "baserom.gba", 0x6200B8, 0x6201D8-0x6200B8

	.GLOBAL gUnknown_086201D8
gUnknown_086201D8:
	.INCBIN "baserom.gba", 0x6201D8, 0x6201E0-0x6201D8

	.GLOBAL gUnknown_086201E0
gUnknown_086201E0:
	.INCBIN "baserom.gba", 0x6201E0, 0x6211E0-0x6201E0

	.GLOBAL gUnknown_086211E0
gUnknown_086211E0:
	.INCBIN "baserom.gba", 0x6211E0, 0x621300-0x6211E0

	.GLOBAL gUnknown_08621300
gUnknown_08621300:
	.INCBIN "baserom.gba", 0x621300, 0x621308-0x621300

	.GLOBAL gUnknown_08621308
gUnknown_08621308:
	.INCBIN "baserom.gba", 0x621308, 0x657324-0x621308

	.GLOBAL gUnknown_08657324
gUnknown_08657324:
	.INCBIN "baserom.gba", 0x657324, 0x65732C-0x657324

	.GLOBAL gUnknown_0865732C
gUnknown_0865732C:
	.INCBIN "baserom.gba", 0x65732C, 0x6573AC-0x65732C

	.GLOBAL gUnknown_086573AC
gUnknown_086573AC:
	.INCBIN "baserom.gba", 0x6573AC, 0x657630-0x6573AC

	.GLOBAL gUnknown_08657630
gUnknown_08657630:
	.INCBIN "baserom.gba", 0x657630, 0x6576C0-0x657630

	.GLOBAL gUnknown_086576C0
gUnknown_086576C0:
	.INCBIN "baserom.gba", 0x6576C0, 0x6576C8-0x6576C0

	.GLOBAL gUnknown_086576C8
gUnknown_086576C8:
	.INCBIN "baserom.gba", 0x6576C8, 0x6593A0-0x6576C8

	.GLOBAL gUncompressedGraphicsTable
gUncompressedGraphicsTable:
	.INCBIN "baserom.gba", 0x6593A0, 0x65F610-0x6593A0

	.GLOBAL gUnknown_0865F610
gUnknown_0865F610:
	.INCBIN "baserom.gba", 0x65F610, 0x65F700-0x65F610

	.GLOBAL gUnknown_0865F700
gUnknown_0865F700:
	.INCBIN "baserom.gba", 0x65F700, 0x65F7F0-0x65F700

	.GLOBAL gUnknown_0865F7F0
gUnknown_0865F7F0:
	.INCBIN "baserom.gba", 0x65F7F0, 0x65F8E0-0x65F7F0

	.GLOBAL gUnknown_0865F8E0
gUnknown_0865F8E0:
	.INCBIN "baserom.gba", 0x65F8E0, 0x65F9D0-0x65F8E0

	.GLOBAL gUnknown_0865F9D0
gUnknown_0865F9D0:
	.INCBIN "baserom.gba", 0x65F9D0, 0x65FAC0-0x65F9D0

	.GLOBAL gUnknown_0865FAC0
gUnknown_0865FAC0:
	.INCBIN "baserom.gba", 0x65FAC0, 0x65FBB0-0x65FAC0

	.GLOBAL gUnknown_0865FBB0
gUnknown_0865FBB0:
	.INCBIN "baserom.gba", 0x65FBB0, 0x65FCA0-0x65FBB0

	.GLOBAL gUnknown_0865FCA0
gUnknown_0865FCA0:
	.INCBIN "baserom.gba", 0x65FCA0, 0x65FD90-0x65FCA0

	.GLOBAL gUnknown_0865FD90
gUnknown_0865FD90:
	.INCBIN "baserom.gba", 0x65FD90, 0x65FE80-0x65FD90

	.GLOBAL gUnknown_0865FE80
gUnknown_0865FE80:
	.INCBIN "baserom.gba", 0x65FE80, 0x6600D8-0x65FE80

	.GLOBAL gUnknown_086600D8
gUnknown_086600D8:
	.INCBIN "baserom.gba", 0x6600D8, 0x660118-0x6600D8

	.GLOBAL gUnknown_08660118
gUnknown_08660118:
	.INCBIN "baserom.gba", 0x660118, 0x660188-0x660118

	.GLOBAL gUnknown_08660188
gUnknown_08660188:
	.INCBIN "baserom.gba", 0x660188, 0x660228-0x660188

	.GLOBAL gUnknown_08660228
gUnknown_08660228:
	.INCBIN "baserom.gba", 0x660228, 0x6602C0-0x660228

	.GLOBAL gUnknown_086602C0
gUnknown_086602C0:
	.INCBIN "baserom.gba", 0x6602C0, 0x660310-0x6602C0

	.GLOBAL gUnknown_08660310
gUnknown_08660310:
	.INCBIN "baserom.gba", 0x660310, 0x660380-0x660310

	.GLOBAL gUnknown_08660380
gUnknown_08660380:
	.INCBIN "baserom.gba", 0x660380, 0x660420-0x660380

	.GLOBAL gUnknown_08660420
gUnknown_08660420:
	.INCBIN "baserom.gba", 0x660420, 0x6604B8-0x660420

	.GLOBAL gUnknown_086604B8
gUnknown_086604B8:
	.INCBIN "baserom.gba", 0x6604B8, 0x660A68-0x6604B8

	.GLOBAL gUnknown_08660A68
gUnknown_08660A68:
	.INCBIN "baserom.gba", 0x660A68, 0x660E4C-0x660A68

	.GLOBAL gUnknown_08660E4C
gUnknown_08660E4C:
	.INCBIN "baserom.gba", 0x660E4C, 0x660E8C-0x660E4C

	.GLOBAL gUnknown_08660E8C
gUnknown_08660E8C:
	.INCBIN "baserom.gba", 0x660E8C, 0x660EA8-0x660E8C

	.GLOBAL gUnknown_08660EA8
gUnknown_08660EA8:
	.INCBIN "baserom.gba", 0x660EA8, 0x661378-0x660EA8

	.GLOBAL gUnknown_08661378
gUnknown_08661378:
	.INCBIN "baserom.gba", 0x661378, 0x6613B8-0x661378

	.GLOBAL gUnknown_086613B8
gUnknown_086613B8:
	.INCBIN "baserom.gba", 0x6613B8, 0x661EB8-0x6613B8

	.GLOBAL gUnknown_08661EB8
gUnknown_08661EB8:
	.INCBIN "baserom.gba", 0x661EB8, 0x6622A8-0x661EB8

	.GLOBAL gUnknown_086622A8
gUnknown_086622A8:
	.INCBIN "baserom.gba", 0x6622A8, 0x662778-0x6622A8

	.GLOBAL gUnknown_08662778
gUnknown_08662778:
	.INCBIN "baserom.gba", 0x662778, 0x662A00-0x662778

	.GLOBAL gUnknown_08662A00
gUnknown_08662A00:
	.INCBIN "baserom.gba", 0x662A00, 0x662C30-0x662A00

	.GLOBAL gUnknown_08662C30
gUnknown_08662C30:
	.INCBIN "baserom.gba", 0x662C30, 0x662C44-0x662C30

	.GLOBAL gUnknown_08662C44
gUnknown_08662C44:
	.INCBIN "baserom.gba", 0x662C44, 0x662C5C-0x662C44

	.GLOBAL gUnknown_08662C5C
gUnknown_08662C5C:
	.INCBIN "baserom.gba", 0x662C5C, 0x662C7C-0x662C5C

	.GLOBAL gUnknown_08662C7C
gUnknown_08662C7C:
	.INCBIN "baserom.gba", 0x662C7C, 0x662CA4-0x662C7C

	.GLOBAL gUnknown_08662CA4
gUnknown_08662CA4:
	.INCBIN "baserom.gba", 0x662CA4, 0x663174-0x662CA4

	.GLOBAL gUnknown_08663174
gUnknown_08663174:
	.INCBIN "baserom.gba", 0x663174, 0x663444-0x663174

	.GLOBAL gUnknown_08663444
gUnknown_08663444:
	.INCBIN "baserom.gba", 0x663444, 0x663464-0x663444

	.GLOBAL gUnknown_08663464
gUnknown_08663464:
	.INCBIN "baserom.gba", 0x663464, 0x663488-0x663464

	.GLOBAL gUnknown_08663488
gUnknown_08663488:
	.INCBIN "baserom.gba", 0x663488, 0x663568-0x663488

	.GLOBAL gUnknown_08663568
gUnknown_08663568:
	.INCBIN "baserom.gba", 0x663568, 0x663648-0x663568

	.GLOBAL gUnknown_08663648
gUnknown_08663648:
	.INCBIN "baserom.gba", 0x663648, 0x663728-0x663648

	.GLOBAL gUnknown_08663728
gUnknown_08663728:
	.INCBIN "baserom.gba", 0x663728, 0x663734-0x663728

	.GLOBAL gUnknown_08663734
gUnknown_08663734:
	.INCBIN "baserom.gba", 0x663734, 0x663748-0x663734

	.GLOBAL gUnknown_08663748
gUnknown_08663748:
	.INCBIN "baserom.gba", 0x663748, 0x663768-0x663748

	.GLOBAL gUnknown_08663768
gUnknown_08663768:
	.INCBIN "baserom.gba", 0x663768, 0x6637A0-0x663768

	.GLOBAL gUnknown_086637A0
gUnknown_086637A0:
	.INCBIN "baserom.gba", 0x6637A0, 0x663C70-0x6637A0

	.GLOBAL gUnknown_08663C70
gUnknown_08663C70:
	.INCBIN "baserom.gba", 0x663C70, 0x663C74-0x663C70

	.GLOBAL gUnknown_08663C74
gUnknown_08663C74:
	.INCBIN "baserom.gba", 0x663C74, 0x663C78-0x663C74

	.GLOBAL gUnknown_08663C78
gUnknown_08663C78:
	.INCBIN "baserom.gba", 0x663C78, 0x663C7C-0x663C78

	.GLOBAL gUnknown_08663C7C
gUnknown_08663C7C:
	.INCBIN "baserom.gba", 0x663C7C, 0x663C88-0x663C7C

	.GLOBAL gUnknown_08663C88
gUnknown_08663C88:
	.INCBIN "baserom.gba", 0x663C88, 0x664120-0x663C88

	.GLOBAL gUnknown_08664120
gUnknown_08664120:
	.INCBIN "baserom.gba", 0x664120, 0x6641E8-0x664120

	.GLOBAL gUnknown_086641E8
gUnknown_086641E8:
	.INCBIN "baserom.gba", 0x6641E8, 0x664610-0x6641E8

	.GLOBAL gUnknown_08664610
gUnknown_08664610:
	.INCBIN "baserom.gba", 0x664610, 0x664698-0x664610

	.GLOBAL gUnknown_08664698
gUnknown_08664698:
	.INCBIN "baserom.gba", 0x664698, 0x6647BC-0x664698

	.GLOBAL gUnknown_086647BC
gUnknown_086647BC:
	.INCBIN "baserom.gba", 0x6647BC, 0x6648A8-0x6647BC

	.GLOBAL gUnknown_086648A8
gUnknown_086648A8:
	.INCBIN "baserom.gba", 0x6648A8, 0x664A68-0x6648A8

	.GLOBAL gUnknown_08664A68
gUnknown_08664A68:
	.INCBIN "baserom.gba", 0x664A68, 0x664C28-0x664A68

	.GLOBAL gUnknown_08664C28
gUnknown_08664C28:
	.INCBIN "baserom.gba", 0x664C28, 0x664DE8-0x664C28

	.GLOBAL gUnknown_08664DE8
gUnknown_08664DE8:
	.INCBIN "baserom.gba", 0x664DE8, 0x664E90-0x664DE8

	.GLOBAL gUnknown_08664E90
gUnknown_08664E90:
	.INCBIN "baserom.gba", 0x664E90, 0x664F38-0x664E90

	.GLOBAL gUnknown_08664F38
gUnknown_08664F38:
	.INCBIN "baserom.gba", 0x664F38, 0x664FE4-0x664F38

	.GLOBAL gUnknown_08664FE4
gUnknown_08664FE4:
	.INCBIN "baserom.gba", 0x664FE4, 0x66508C-0x664FE4

	.GLOBAL gUnknown_0866508C
gUnknown_0866508C:
	.INCBIN "baserom.gba", 0x66508C, 0x6651C4-0x66508C

	.GLOBAL gUnknown_086651C4
gUnknown_086651C4:
	.INCBIN "baserom.gba", 0x6651C4, 0x6656FC-0x6651C4

	.GLOBAL gUnknown_086656FC
gUnknown_086656FC:
	.INCBIN "baserom.gba", 0x6656FC, 0x665844-0x6656FC

	.GLOBAL gUnknown_08665844
gUnknown_08665844:
	.INCBIN "baserom.gba", 0x665844, 0x66587C-0x665844

	.GLOBAL gUnknown_0866587C
gUnknown_0866587C:
	.INCBIN "baserom.gba", 0x66587C, 0x665886-0x66587C

	.GLOBAL gUnknown_08665886
gUnknown_08665886:
	.INCBIN "baserom.gba", 0x665886, 0x665968-0x665886

	.GLOBAL gUnknown_08665968
gUnknown_08665968:
	.INCBIN "baserom.gba", 0x665968, 0x6660E0-0x665968

	.GLOBAL gUnknown_086660E0
gUnknown_086660E0:
	.INCBIN "baserom.gba", 0x6660E0, 0x668D38-0x6660E0

	.GLOBAL gUnknown_08668D38
gUnknown_08668D38:
	.INCBIN "baserom.gba", 0x668D38, 0x6691BC-0x668D38

	.GLOBAL gUnknown_086691BC
gUnknown_086691BC:
	.INCBIN "baserom.gba", 0x6691BC, 0x66945C-0x6691BC

	.GLOBAL gUnknown_0866945C
gUnknown_0866945C:
	.INCBIN "baserom.gba", 0x66945C, 0x6694D4-0x66945C

	.GLOBAL gUnknown_086694D4
gUnknown_086694D4:
	.INCBIN "baserom.gba", 0x6694D4, 0x66954C-0x6694D4

	.GLOBAL gUnknown_0866954C
gUnknown_0866954C:
	.INCBIN "baserom.gba", 0x66954C, 0x66958C-0x66954C

	.GLOBAL gUnknown_0866958C
gUnknown_0866958C:
	.INCBIN "baserom.gba", 0x66958C, 0x6695D8-0x66958C

	.GLOBAL gUnknown_086695D8
gUnknown_086695D8:
	.INCBIN "baserom.gba", 0x6695D8, 0x669A80-0x6695D8

	.GLOBAL gUnknown_08669A80
gUnknown_08669A80:
	.INCBIN "baserom.gba", 0x669A80, 0x669D6C-0x669A80

	.GLOBAL gUnknown_08669D6C
gUnknown_08669D6C:
	.INCBIN "baserom.gba", 0x669D6C, 0x669DAC-0x669D6C

	.GLOBAL gUnknown_08669DAC
gUnknown_08669DAC:
	.INCBIN "baserom.gba", 0x669DAC, 0x706FC8-0x669DAC

	.GLOBAL gUnknown_08706FC8
gUnknown_08706FC8:
	.INCBIN "baserom.gba", 0x706FC8, 0x707E30-0x706FC8

	.GLOBAL gUnknown_08707E30
gUnknown_08707E30:
	.INCBIN "baserom.gba", 0x707E30, 0x7B2FF8-0x707E30

	.GLOBAL gMainMenuData
gMainMenuData:
	.INCBIN "baserom.gba", 0x7B2FF8, 0x7B8A08-0x7B2FF8

	.GLOBAL gLevelSelectData
gLevelSelectData:
	.INCBIN "baserom.gba", 0x7B8A08, 0x7C81C8-0x7B8A08

	.GLOBAL gLevelSelectDKBossData
gLevelSelectDKBossData:
	.INCBIN "baserom.gba", 0x7C81C8, 0x7CB20C-0x7C81C8

	.GLOBAL gLevelSelectPlusData
gLevelSelectPlusData:
	.INCBIN "baserom.gba", 0x7CB20C, 0x7D9894-0x7CB20C

	.GLOBAL gLevelSelectDKPlusBossData
gLevelSelectDKPlusBossData:
	.INCBIN "baserom.gba", 0x7D9894, 0x7DCC50-0x7D9894

	.GLOBAL gExpertLevelMenuData
gExpertLevelMenuData:
	.INCBIN "baserom.gba", 0x7DCC50, 0x7DED6C-0x7DCC50

	.GLOBAL gEWorldMenuData2
gEWorldMenuData2:
	.INCBIN "baserom.gba", 0x7DED6C, 0x7E21D0-0x7DED6C

	.GLOBAL gWorldOneBossClearData1
gWorldOneBossClearData1:
	.INCBIN "baserom.gba", 0x7E21D0, 0x7E4B48-0x7E21D0

	.GLOBAL gWorldOneBossClearData2
gWorldOneBossClearData2:
	.INCBIN "baserom.gba", 0x7E4B48, 0x7E88DC-0x7E4B48

	.GLOBAL gWorldTwoBossClearData1
gWorldTwoBossClearData1:
	.INCBIN "baserom.gba", 0x7E88DC, 0x7EB618-0x7E88DC

	.GLOBAL gWorldTwoBossClearData2
gWorldTwoBossClearData2:
	.INCBIN "baserom.gba", 0x7EB618, 0x7EF674-0x7EB618

	.GLOBAL gWorldThreeBossClearData1
gWorldThreeBossClearData1:
	.INCBIN "baserom.gba", 0x7EF674, 0x7F1714-0x7EF674

	.GLOBAL gWorldThreeBossClearData2
gWorldThreeBossClearData2:
	.INCBIN "baserom.gba", 0x7F1714, 0x7F52DC-0x7F1714

	.GLOBAL gWorldFourBossClearData1
gWorldFourBossClearData1:
	.INCBIN "baserom.gba", 0x7F52DC, 0x7F6CF0-0x7F52DC

	.GLOBAL gWorldFourBossClearData2
gWorldFourBossClearData2:
	.INCBIN "baserom.gba", 0x7F6CF0, 0x7FB054-0x7F6CF0

	.GLOBAL gWorldFiveBossClearData1
gWorldFiveBossClearData1:
	.INCBIN "baserom.gba", 0x7FB054, 0x7FD5AC-0x7FB054

	.GLOBAL gWorldFiveBossClearData2
gWorldFiveBossClearData2:
	.INCBIN "baserom.gba", 0x7FD5AC, 0x801ABC-0x7FD5AC

	.GLOBAL gWorldSixBossClearData1
gWorldSixBossClearData1:
	.INCBIN "baserom.gba", 0x801ABC, 0x8034AC-0x801ABC

	.GLOBAL gWorldSixBossClearData2
gWorldSixBossClearData2:
	.INCBIN "baserom.gba", 0x8034AC, 0x8076D4-0x8034AC

	.GLOBAL gWorldOnePlusBossClearData1
gWorldOnePlusBossClearData1:
	.INCBIN "baserom.gba", 0x8076D4, 0x8095E0-0x8076D4

	.GLOBAL gWorldOnePlusBossClearData2
gWorldOnePlusBossClearData2:
	.INCBIN "baserom.gba", 0x8095E0, 0x80D09C-0x8095E0

	.GLOBAL gWorldTwoPlusBossClearData1
gWorldTwoPlusBossClearData1:
	.INCBIN "baserom.gba", 0x80D09C, 0x80F0A4-0x80D09C

	.GLOBAL gWorldTwoPlusBossClearData2
gWorldTwoPlusBossClearData2:
	.INCBIN "baserom.gba", 0x80F0A4, 0x8133F0-0x80F0A4

	.GLOBAL gWorldThreePlusBossClearData1
gWorldThreePlusBossClearData1:
	.INCBIN "baserom.gba", 0x8133F0, 0x814E6C-0x8133F0

	.GLOBAL gWorldThreePlusBossClearData2
gWorldThreePlusBossClearData2:
	.INCBIN "baserom.gba", 0x814E6C, 0x8184BC-0x814E6C

	.GLOBAL gWorldFourPlusBossClearData1
gWorldFourPlusBossClearData1:
	.INCBIN "baserom.gba", 0x8184BC, 0x81A270-0x8184BC

	.GLOBAL gWorldFourPlusBossClearData2
gWorldFourPlusBossClearData2:
	.INCBIN "baserom.gba", 0x81A270, 0x81E02C-0x81A270

	.GLOBAL gWorldFivePlusBossClearData1
gWorldFivePlusBossClearData1:
	.INCBIN "baserom.gba", 0x81E02C, 0x81FE98-0x81E02C

	.GLOBAL gWorldFivePlusBossClearData2
gWorldFivePlusBossClearData2:
	.INCBIN "baserom.gba", 0x81FE98, 0x823B74-0x81FE98

	.GLOBAL gWorldSixPlusBossClearData1
gWorldSixPlusBossClearData1:
	.INCBIN "baserom.gba", 0x823B74, 0x825F04-0x823B74

	.GLOBAL gWorldSixPlusBossClearData2
gWorldSixPlusBossClearData2:
	.INCBIN "baserom.gba", 0x825F04, 0x829B18-0x825F04

	.GLOBAL gGameOverData
gGameOverData:
	.INCBIN "baserom.gba", 0x829B18, 0x82B4C4-0x829B18

	.GLOBAL gWorldStartData
gWorldStartData:
	.INCBIN "baserom.gba", 0x82B4C4, 0x85A088-0x82B4C4

	.GLOBAL gLevelResultsData
gLevelResultsData:
	.INCBIN "baserom.gba", 0x85A088, 0x85C4C4-0x85A088

	.GLOBAL gBonusStopArrowData
gBonusStopArrowData:
	.INCBIN "baserom.gba", 0x85C4C4, 0x85D720-0x85C4C4

	.GLOBAL gBonusStopArrowBackgroundData
gBonusStopArrowBackgroundData:
	.INCBIN "baserom.gba", 0x85D720, 0x86022C-0x85D720

	.GLOBAL gBonusSwapBoxesData
gBonusSwapBoxesData:
	.INCBIN "baserom.gba", 0x86022C, 0x8637E8-0x86022C

	.GLOBAL gBonusSwapBoxesBackgroundData
gBonusSwapBoxesBackgroundData:
	.INCBIN "baserom.gba", 0x8637E8, 0x866A48-0x8637E8

	.GLOBAL gNintendoSoftwareTechnologyLogo
gNintendoSoftwareTechnologyLogo:
	.INCBIN "baserom.gba", 0x866A48, 0x867560-0x866A48

	.GLOBAL gTitleScreenLeftData
gTitleScreenLeftData:
	.INCBIN "baserom.gba", 0x867560, 0x86A328-0x867560

	.GLOBAL gTitleScreenRightData
gTitleScreenRightData:
	.INCBIN "baserom.gba", 0x86A328, 0x86CFCC-0x86A328

	.GLOBAL gTitleMarioDKEyes
gTitleMarioDKEyes:
	.INCBIN "baserom.gba", 0x86CFCC, 0x8754F8-0x86CFCC

	.GLOBAL gOptionsMenuData
gOptionsMenuData:
	.INCBIN "baserom.gba", 0x8754F8, 0x879AB4-0x8754F8

	.GLOBAL gUnusedToadDKCutscene
gUnusedToadDKCutscene:
	.INCBIN "baserom.gba", 0x879AB4, 0x87D89C-0x879AB4

	.GLOBAL gUnusedToadMarioCutscene
gUnusedToadMarioCutsceneGFX:
	.INCBIN "baserom.gba", 0x87D89C, 0x880D90-0x87D89C

	.GLOBAL gUnknown_08880D90
gUnknown_08880D90:
	.INCBIN "baserom.gba", 0x880D90, 0x908A30-0x880D90

	.GLOBAL gUnknown_08908A30
gUnknown_08908A30:
	.INCBIN "baserom.gba", 0x908A30, 0x90D474-0x908A30
	
	.GLOBAL gUnknown_0890D474
gUnknown_0890D474:
	.INCBIN "baserom.gba", 0x90D474, 0x912138-0x90D474
	
	.GLOBAL gUnknown_08912138
gUnknown_08912138:
	.INCBIN "baserom.gba", 0x912138, 0x91720C-0x912138
	
	.GLOBAL gUnknown_0891720C
gUnknown_0891720C:
	.INCBIN "baserom.gba", 0x91720C, 0x91C114-0x91720C
	
	.GLOBAL gUnknown_0891C114
gUnknown_0891C114:
	.INCBIN "baserom.gba", 0x91C114, 0x920C64-0x91C114
	
	.GLOBAL gUnknown_08920C64
gUnknown_08920C64:
	.INCBIN "baserom.gba", 0x920C64, 0x925B24-0x920C64
	
	.GLOBAL gUnknown_08925B24
gUnknown_08925B24:
	.INCBIN "baserom.gba", 0x925B24, 0x92B040-0x925B24
	
	.GLOBAL gUnknown_0892B040
gUnknown_0892B040:
	.INCBIN "baserom.gba", 0x92B040, 0x93064C-0x92B040
	
	.GLOBAL gUnknown_0893064C
gUnknown_0893064C:
	.INCBIN "baserom.gba", 0x93064C, 0x9355B8-0x93064C
	
	.GLOBAL gUnknown_089355B8
gUnknown_089355B8:
	.INCBIN "baserom.gba", 0x9355B8, 0x93A2C8-0x9355B8
	
	.GLOBAL gUnknown_0803A2C8
gUnknown_0893A2C8:
	.INCBIN "baserom.gba", 0x93A2C8, 0x93E960-0x93A2C8
	
	.GLOBAL gUnknown_0893E960
gUnknown_0893E960:
	.INCBIN "baserom.gba", 0x93E960, 0x942D4C-0x93E960
	
	.GLOBAL gUnknown_08942D4C
gUnknown_08942D4C:
	.INCBIN "baserom.gba", 0x942D4C, 0x947130-0x942D4C
	
	.GLOBAL gUnknown_08947130
gUnknown_08947130:
	.INCBIN "baserom.gba", 0x947130, 0x94B710-0x947130
	
	.GLOBAL gUnknown_0894B710
gUnknown_0894B710:
	.INCBIN "baserom.gba", 0x94B710, 0x94EB78-0x94B710
	
	.GLOBAL gUnknown_0894EB78
gUnknown_0894EB78:
	.INCBIN "baserom.gba", 0x94EB78, 0x950464-0x94EB78
	
	.GLOBAL gUnknown_08950464
gUnknown_08950464:
	.INCBIN "baserom.gba", 0x950464, 0x9526B0-0x950464
	
	.GLOBAL gUnknown_089526B0
gUnknown_089526B0:
	.INCBIN "baserom.gba", 0x9526B0, 0x9548DC-0x9526B0
	
	.GLOBAL gUnknown_089548DC
gUnknown_089548DC:
	.INCBIN "baserom.gba", 0x9548DC, 0x959B10-0x9548DC
	
	.GLOBAL gUnknown_08959B10
gUnknown_08959B10:
	.INCBIN "baserom.gba", 0x959B10, 0x95F0B0-0x959B10
	
	.GLOBAL gUnknown_0895F0B0
gUnknown_0895F0B0:
	.INCBIN "baserom.gba", 0x95F0B0, 0x964974-0x95F0B0
	
	.GLOBAL gUnknown_08964974
gUnknown_08964974:
	.INCBIN "baserom.gba", 0x964974, 0x969AB4-0x964974
	
	.GLOBAL gUnknown_08969AB4
gUnknown_08969AB4:
	.INCBIN "baserom.gba", 0x969AB4, 0x96E724-0x969AB4
	
	.GLOBAL gUnknown_0896E724
gUnknown_0896E724:
	.INCBIN "baserom.gba", 0x96E724, 0x97423C-0x96E724
	
	.GLOBAL gUnknown_0897423C
gUnknown_0897423C:
	.INCBIN "baserom.gba", 0x97423C, 0x979C5C-0x97423C
	
	.GLOBAL gUnknown_08979C5C
gUnknown_08979C5C:
	.INCBIN "baserom.gba", 0x979C5C, 0x97E3B8-0x979C5C
	
	.GLOBAL gUnknown_0897E3B8
gUnknown_0897E3B8:
	.INCBIN "baserom.gba", 0x97E3B8, 0x982F18-0x97E3B8
	
	.GLOBAL gUnknown_08982F18
gUnknown_08982F18:
	.INCBIN "baserom.gba", 0x982F18, 0x987BAC-0x982F18
	
	.GLOBAL gUnknown_08987BAC
gUnknown_08987BAC:
	.INCBIN "baserom.gba", 0x987BAC, 0x98CA8C-0x987BAC
	
	.GLOBAL gUnknown_0898CA8C
gUnknown_0898CA8C:
	.INCBIN "baserom.gba", 0x98CA8C, 0x991B54-0x98CA8C
	
	.GLOBAL gUnknown_08991B54
gUnknown_08991B54:
	.INCBIN "baserom.gba", 0x991B54, 0x996D1C-0x991B54
	
	.GLOBAL gUnknown_08996D1C
gUnknown_08996D1C:
	.INCBIN "baserom.gba", 0x996D1C, 0x99BDE0-0x996D1C
	
	.GLOBAL gUnknown_0899BDE0
gUnknown_0899BDE0:
	.INCBIN "baserom.gba", 0x99BDE0, 0x9A041C-0x99BDE0
	
	.GLOBAL gUnknown_089A041C
gUnknown_089A041C:
	.INCBIN "baserom.gba", 0x9A041C, 0x9A4F0C-0x9A041C
	
	.GLOBAL gUnknown_089A4F0C
gUnknown_089A4F0C:
	.INCBIN "baserom.gba", 0x9A4F0C, 0x9A9FB4-0x9A4F0C
	
	.GLOBAL gUnknown_089A9FB4
gUnknown_089A9FB4:
	.INCBIN "baserom.gba", 0x9A9FB4, 0x9ADFE8-0x9A9FB4
	
	.GLOBAL gUnknown_089ADFE8
gUnknown_089ADFE8:
	.INCBIN "baserom.gba", 0x9ADFE8, 0x9B2CD4-0x9ADFE8
	
	.GLOBAL gUnknown_089B2CD4
gUnknown_089B2CD4:
	.INCBIN "baserom.gba", 0x9B2CD4, 0x9B7674-0x9B2CD4
	
	.GLOBAL gUnknown_089B7674
gUnknown_089B7674:
	.INCBIN "baserom.gba", 0x9B7674, 0x9BB908-0x9B7674
	
	.GLOBAL gUnknown_089BB908
gUnknown_089BB908:
	.INCBIN "baserom.gba", 0x9BB908, 0x9C0348-0x9BB908
	
	.GLOBAL gUnknown_089C0348
gUnknown_089C0348:
	.INCBIN "baserom.gba", 0x9C0348, 0x9C4B54-0x9C0348
	
	.GLOBAL gUnknown_089C4B54
gUnknown_089C4B54:
	.INCBIN "baserom.gba", 0x9C4B54, 0x9C51F4-0x9C4B54
	
	.GLOBAL gUnknown_089C51F4
gUnknown_089C51F4:
	.INCBIN "baserom.gba", 0x9C51F4, 0x9C605C-0x9C51F4
	
	.GLOBAL gUnknown_089C605C
gUnknown_089C605C:
	.INCBIN "baserom.gba", 0x9C605C, 0x9C9258-0x9C605C
	
	.GLOBAL gUnknown_089C9258
gUnknown_089C9258:
	.INCBIN "baserom.gba", 0x9C9258, 0x9CB340-0x9C9258
	
	.GLOBAL gUnknown_089CB340
gUnknown_089CB340:
	.INCBIN "baserom.gba", 0x9CB340, 0x9CDCC0-0x9CB340
	
	.GLOBAL gUnknown_089CDCC0
gUnknown_089CDCC0:
	.INCBIN "baserom.gba", 0x9CDCC0, 0x9D1128-0x9CDCC0
	
	.GLOBAL gUnknown_089D1128
gUnknown_089D1128:
	.INCBIN "baserom.gba", 0x9D1128, 0x9D44B0-0x9D1128
	
	.GLOBAL gUnknown_089D44B0
gUnknown_089D44B0:
	.INCBIN "baserom.gba", 0x9D44B0, 0x9D7414-0x9D44B0
	
	.GLOBAL gUnknown_089D7414
gUnknown_089D7414:
	.INCBIN "baserom.gba", 0x9D7414, 0x9D9780-0x9D7414
	
	.GLOBAL gUnknown_089D9780
gUnknown_089D9780:
	.INCBIN "baserom.gba", 0x9D9780, 0x9DC310-0x9D9780
	
	.GLOBAL gUnknown_089DC310
gUnknown_089DC310:
	.INCBIN "baserom.gba", 0x9DC310, 0x9DF098-0x9DC310
	
	.GLOBAL gUnknown_089DF098
gUnknown_089DF098:
	.INCBIN "baserom.gba", 0x9DF098, 0x9E2730-0x9DF098
	
	.GLOBAL gUnknown_089E2730
gUnknown_089E2730:
	.INCBIN "baserom.gba", 0x9E2730, 0x9E45A0-0x9E2730
	
	.GLOBAL gUnknown_089E45A0
gUnknown_089E45A0:
	.INCBIN "baserom.gba", 0x9E45A0, 0x9E4F74-0x9E45A0
	
	.GLOBAL gUnknown_089E4F74
gUnknown_089E4F74:
	.INCBIN "baserom.gba", 0x9E4F74, 0x9E7DB4-0x9E4F74
	
	.GLOBAL gUnknown_089E7DB4
gUnknown_089E7DB4:
	.INCBIN "baserom.gba", 0x9E7DB4, 0x9EA140-0x9E7DB4
	
	.GLOBAL gUnknown_089EA140
gUnknown_089EA140:
	.INCBIN "baserom.gba", 0x9EA140, 0x9EC068-0x9EA140
	
	.GLOBAL gUnknown_089EC068
gUnknown_089EC068:
	.INCBIN "baserom.gba", 0x9EC068, 0x9EEDC4-0x9EC068
	
	.GLOBAL gUnknown_089EEDC4
gUnknown_089EEDC4:
	.INCBIN "baserom.gba", 0x9EEDC4, 0x9EF814-0x9EEDC4
	
	.GLOBAL gUnknown_089EF814
gUnknown_089EF814:
	.INCBIN "baserom.gba", 0x9EF814, 0x9F20A8-0x9EF814
	
	.GLOBAL gUnknown_089F20A8
gUnknown_089F20A8:
	.INCBIN "baserom.gba", 0x9F20A8, 0x9F4F24-0x9F20A8
	
	.GLOBAL gUnknown_089F4F24
gUnknown_089F4F24:
	.INCBIN "baserom.gba", 0x9F4F24, 0x9F89F0-0x9F4F24
	
	.GLOBAL gUnknown_089F89F0
gUnknown_089F89F0:
	.INCBIN "baserom.gba", 0x9F89F0, 0x9FB964-0x9F89F0
	
	.GLOBAL gUnknown_089FB964
gUnknown_089FB964:
	.INCBIN "baserom.gba", 0x9FB964, 0x9FEBEC-0x9FB964
	
	.GLOBAL gUnknown_089FEBEC
gUnknown_089FEBEC:
	.INCBIN "baserom.gba", 0x9FEBEC, 0xA0287C-0x9FEBEC
	
	.GLOBAL gUnknown_08A0287C
gUnknown_08A0287C:
	.INCBIN "baserom.gba", 0xA0287C, 0xA056A4-0xA0287C
	
	.GLOBAL gUnknown_08A056A4
gUnknown_08A056A4:
	.INCBIN "baserom.gba", 0xA056A4, 0xA0C18C-0xA056A4
	
	.GLOBAL gUnknown_08A0C18C
gUnknown_08A0C18C:
	.INCBIN "baserom.gba", 0xA0C18C, 0xA0D0B4-0xA0C18C
	
	.GLOBAL gUnknown_08A0D0B4
gUnknown_08A0D0B4:
	.INCBIN "baserom.gba", 0xA0D0B4, 0xA0DD50-0xA0D0B4
	
	.GLOBAL gUnknown_08A0DD50
gUnknown_08A0DD50:
	.INCBIN "baserom.gba", 0xA0DD50, 0xA0ED38-0xA0DD50
	
	.GLOBAL gUnknown_08A0ED38
gUnknown_08A0ED38:
	.INCBIN "baserom.gba", 0xA0ED38, 0xA0FA50-0xA0ED38
	
	.GLOBAL gUnknown_08A0FA50
gUnknown_08A0FA50:
	.INCBIN "baserom.gba", 0xA0FA50, 0xA10B78-0xA0FA50
	
	.GLOBAL gUnknown_08A10B78
gUnknown_08A10B78:
	.INCBIN "baserom.gba", 0xA10B78, 0xA118C0-0xA10B78
	
	.GLOBAL gUnknown_08A118C0
gUnknown_08A118C0:
	.INCBIN "baserom.gba", 0xA118C0, 0xA125F0-0xA118C0

	.GLOBAL gUnknown_08A125F0
gUnknown_08A125F0:
	.INCBIN "baserom.gba", 0xA125F0, 0xA13688-0xA125F0

	.GLOBAL gUnknown_08A13688
gUnknown_08A13688:
	.INCBIN "baserom.gba", 0xA13688, 0xA14340-0xA13688

	.GLOBAL gUnknown_08A14340
gUnknown_08A14340:
	.INCBIN "baserom.gba", 0xA14340, 0xA15554-0xA14340

	.GLOBAL gUnknown_08A15554
gUnknown_08A15554:
	.INCBIN "baserom.gba", 0xA15554, 0xA166E8-0xA15554

	.GLOBAL gUnknown_08A166E8
gUnknown_08A166E8:
	.INCBIN "baserom.gba", 0xA166E8, 0xA179FC-0xA166E8

	.GLOBAL gUnknown_08A179FC
gUnknown_08A179FC:
	.INCBIN "baserom.gba", 0xA179FC, 0xA187B0-0xA179FC

	.GLOBAL gUnknown_08A187B0
gUnknown_08A187B0:
	.INCBIN "baserom.gba", 0xA187B0, 0xA190EC-0xA187B0

	.GLOBAL gUnknown_08A190EC
gUnknown_08A190EC:
	.INCBIN "baserom.gba", 0xA190EC, 0xA1A0A0-0xA190EC

	.GLOBAL gUnknown_08A1A0A0
gUnknown_08A1A0A0:
	.INCBIN "baserom.gba", 0xA1A0A0, 0xA1AFF4-0xA1A0A0

	.GLOBAL gUnknown_08A1AFF4
gUnknown_08A1AFF4:
	.INCBIN "baserom.gba", 0xA1AFF4, 0xA1BC60-0xA1AFF4

	.GLOBAL gUnknown_08A1BC60
gUnknown_08A1BC60:
	.INCBIN "baserom.gba", 0xA1BC60, 0xA1CA4C-0xA1BC60

	.GLOBAL gUnknown_08A1CA4C
gUnknown_08A1CA4C:
	.INCBIN "baserom.gba", 0xA1CA4C, 0xA1D3C8-0xA1CA4C

	.GLOBAL gUnknown_08A1D3C8
gUnknown_08A1D3C8:
	.INCBIN "baserom.gba", 0xA1D3C8, 0xA1E78C-0xA1D3C8

	.GLOBAL gUnknown_08A1E78C
gUnknown_08A1E78C:
	.INCBIN "baserom.gba", 0xA1E78C, 0xA1F8CC-0xA1E78C

	.GLOBAL gUnknown_08A1F8CC
gUnknown_08A1F8CC:
	.INCBIN "baserom.gba", 0xA1F8CC, 0xA21124-0xA1F8CC

	.GLOBAL gUnknown_08A21124
gUnknown_08A21124:
	.INCBIN "baserom.gba", 0xA21124, 0xA22BCC-0xA21124

	.GLOBAL gUnknown_08A22BCC
gUnknown_08A22BCC:
	.INCBIN "baserom.gba", 0xA22BCC, 0xA24620-0xA22BCC

	.GLOBAL gUnknown_08A24620
gUnknown_08A24620:
	.INCBIN "baserom.gba", 0xA24620, 0xA2603C-0xA24620

	.GLOBAL gUnknown_08A2603C
gUnknown_08A2603C:
	.INCBIN "baserom.gba", 0xA2603C, 0xA26F88-0xA2603C

	.GLOBAL gUnknown_08A26F88
gUnknown_08A26F88:
	.INCBIN "baserom.gba", 0xA26F88, 0xA27880-0xA26F88

	.GLOBAL gUnknown_08A27880
gUnknown_08A27880:
	.INCBIN "baserom.gba", 0xA27880, 0xA28710-0xA27880

	.GLOBAL gUnknown_08A28710
gUnknown_08A28710:
	.INCBIN "baserom.gba", 0xA28710, 0xA294C0-0xA28710

	.GLOBAL gUnknown_08A294C0
gUnknown_08A294C0:
	.INCBIN "baserom.gba", 0xA294C0, 0xA2D9A8-0xA294C0

	.GLOBAL gUnknown_08A2D9A8
gUnknown_08A2D9A8:
	.INCBIN "baserom.gba", 0xA2D9A8, 0xA31EF0-0xA2D9A8

	.GLOBAL gUnknown_08A31EF0
gUnknown_08A31EF0:
	.INCBIN "baserom.gba", 0xA31EF0, 0xA38DA4-0xA31EF0

	.GLOBAL gUnknown_08A38DA4
gUnknown_08A38DA4:
	.INCBIN "baserom.gba", 0xA38DA4, 0xA3F2CC-0xA38DA4

	.GLOBAL gUnknown_08A3F2CC
gUnknown_08A3F2CC:
	.INCBIN "baserom.gba", 0xA3F2CC, 0xA44E38-0xA3F2CC

	.GLOBAL gUnknown_08A44E38
gUnknown_08A44E38:
	.INCBIN "baserom.gba", 0xA44E38, 0xA4B028-0xA44E38

	.GLOBAL gUnknown_08A4B028
gUnknown_08A4B028:
	.INCBIN "baserom.gba", 0xA4B028, 0xA5078C-0xA4B028

	.GLOBAL gUnknown_08A5078C
gUnknown_08A5078C:
	.INCBIN "baserom.gba", 0xA5078C, 0xA55BE4-0xA5078C

	.GLOBAL gUnknown_08A55BE4
gUnknown_08A55BE4:
	.INCBIN "baserom.gba", 0xA55BE4, 0xA5AE90-0xA55BE4

	.GLOBAL gUnknown_08A5AE90
gUnknown_08A5AE90:
	.INCBIN "baserom.gba", 0xA5AE90, 0xA5EF58-0xA5AE90

	.GLOBAL gUnknown_08A5EF58
gUnknown_08A5EF58:
	.INCBIN "baserom.gba", 0xA5EF58, 0xA60FC0-0xA5EF58

	.GLOBAL gUnknown_08A60FC0
gUnknown_08A60FC0:
	.INCBIN "baserom.gba", 0xA60FC0, 0xA65698-0xA60FC0

	.GLOBAL gUnknown_08A65698
gUnknown_08A65698:
	.INCBIN "baserom.gba", 0xA65698, 0xA69BF8-0xA65698

	.GLOBAL gUnknown_08A69BF8
gUnknown_08A69BF8:
	.INCBIN "baserom.gba", 0xA69BF8, 0xA6E47C-0xA69BF8

	.GLOBAL gUnknown_08A6E47C
gUnknown_08A6E47C:
	.INCBIN "baserom.gba", 0xA6E47C, 0xA71B8C-0xA6E47C

	.GLOBAL gUnknown_08A71B8C
gUnknown_08A71B8C:
	.INCBIN "baserom.gba", 0xA71B8C, 0xA76B6C-0xA71B8C

	.GLOBAL gUnknown_08A76B6C
gUnknown_08A76B6C:
	.INCBIN "baserom.gba", 0xA76B6C, 0xA7BB1C-0xA76B6C

	.GLOBAL gUnknown_08A7BB1C
gUnknown_08A7BB1C:
	.INCBIN "baserom.gba", 0xA7BB1C, 0xA7FB14-0xA7BB1C

	.GLOBAL gUnknown_08A7FB14
gUnknown_08A7FB14:
	.INCBIN "baserom.gba", 0xA7FB14, 0xA82E84-0xA7FB14

	.GLOBAL gUnknown_08A82E84
gUnknown_08A82E84:
	.INCBIN "baserom.gba", 0xA82E84, 0xA86D04-0xA82E84

	.GLOBAL gUnknown_08A86D04
gUnknown_08A86D04:
	.INCBIN "baserom.gba", 0xA86D04, 0xA8C9F4-0xA86D04

	.GLOBAL gUnknown_08A8C9F4
gUnknown_08A8C9F4:
	.INCBIN "baserom.gba", 0xA8C9F4, 0xA8FEE4-0xA8C9F4

	.GLOBAL gUnknown_08A8FEE4
gUnknown_08A8FEE4:
	.INCBIN "baserom.gba", 0xA8FEE4, 0xA91F1C-0xA8FEE4

	.GLOBAL gUnknown_08A91F1C
gUnknown_08A91F1C:
	.INCBIN "baserom.gba", 0xA91F1C, 0xA972F4-0xA91F1C

	.GLOBAL gUnknown_08A972F4
gUnknown_08A972F4:
	.INCBIN "baserom.gba", 0xA972F4, 0xA9CB3C-0xA972F4

	.GLOBAL gUnknown_08A9CB3C
gUnknown_08A9CB3C:
	.INCBIN "baserom.gba", 0xA9CB3C, 0xAA0D7C-0xA9CB3C

	.GLOBAL gUnknown_08AA0D7C
gUnknown_08AA0D7C:
	.INCBIN "baserom.gba", 0xAA0D7C, 0xAA35F8-0xAA0D7C

	.GLOBAL gUnknown_08AA35F8
gUnknown_08AA35F8:
	.INCBIN "baserom.gba", 0xAA35F8, 0xAA84CC-0xAA35F8

	.GLOBAL gUnknown_08AA84CC
gUnknown_08AA84CC:
	.INCBIN "baserom.gba", 0xAA84CC, 0xAAD5AC-0xAA84CC

	.GLOBAL gUnknown_08AAD5AC
gUnknown_08AAD5AC:
	.INCBIN "baserom.gba", 0xAAD5AC, 0xAAFF64-0xAAD5AC

	.GLOBAL gUnknown_08AAFF64
gUnknown_08AAFF64:
	.INCBIN "baserom.gba", 0xAAFF64, 0xAB3924-0xAAFF64

	.GLOBAL gUnknown_08AB3924
gUnknown_08AB3924:
	.INCBIN "baserom.gba", 0xAB3924, 0xAB6A8C-0xAB3924

	.GLOBAL gUnknown_08AB6A8C
gUnknown_08AB6A8C:
	.INCBIN "baserom.gba", 0xAB6A8C, 0xAB9BF4-0xAB6A8C

	.GLOBAL gUnknown_08AB9BF4
gUnknown_08AB9BF4:
	.INCBIN "baserom.gba", 0xAB9BF4, 0xABFBD0-0xAB9BF4

	.GLOBAL gUnknown_08ABFBD0
gUnknown_08ABFBD0:
	.INCBIN "baserom.gba", 0xABFBD0, 0xAC5800-0xABFBD0

	.GLOBAL gUnknown_08AC5800
gUnknown_08AC5800:
	.INCBIN "baserom.gba", 0xAC5800, 0xAC9ED8-0xAC5800

	.GLOBAL gUnknown_08AC9ED8
gUnknown_08AC9ED8:
	.INCBIN "baserom.gba", 0xAC9ED8, 0xACE438-0xAC9ED8

	.GLOBAL gUnknown_08ACE438
gUnknown_08ACE438:
	.INCBIN "baserom.gba", 0xACE438, 0xAD2DD4-0xACE438

	.GLOBAL gUnknown_08AD2DD4
gUnknown_08AD2DD4:
	.INCBIN "baserom.gba", 0xAD2DD4, 0xAD78A0-0xAD2DD4

	.GLOBAL gUnknown_08AD78A0
gUnknown_08AD78A0:
	.INCBIN "baserom.gba", 0xAD78A0, 0xADB0CC-0xAD78A0

	.GLOBAL gUnknown_08ADB0CC
gUnknown_08ADB0CC:
	.INCBIN "baserom.gba", 0xADB0CC, 0xADE300-0xADB0CC

	.GLOBAL gUnknown_08ADE300
gUnknown_08ADE300:
	.INCBIN "baserom.gba", 0xADE300, 0xAE1738-0xADE300

	.GLOBAL gUnknown_08AE1738
gUnknown_08AE1738:
	.INCBIN "baserom.gba", 0xAE1738, 0xAE67A8-0xAE1738

	.GLOBAL gUnknown_08AE67A8
gUnknown_08AE67A8:
	.INCBIN "baserom.gba", 0xAE67A8, 0xAEB800-0xAE67A8

	.GLOBAL gUnknown_08AEB800
gUnknown_08AEB800:
	.INCBIN "baserom.gba", 0xAEB800, 0xAEFCB4-0xAEB800

	.GLOBAL gUnknown_08AEFCB4
gUnknown_08AEFCB4:
	.INCBIN "baserom.gba", 0xAEFCB4, 0xAF43E4-0xAEFCB4

	.GLOBAL gUnknown_08AF43E4
gUnknown_08AF43E4:
	.INCBIN "baserom.gba", 0xAF43E4, 0xB29054-0xAF43E4

	.GLOBAL gEWorldMenuData1
gEWorldMenuData1:
	.INCBIN "baserom.gba", 0xB29054, 0xB2AD88-0xB29054

	.GLOBAL gUnknown_08B2AD88
gUnknown_08B2AD88:
	.INCBIN "baserom.gba", 0xB2AD88, 0xB2CA5C-0xB2AD88

	.GLOBAL gUnknown_08B2CA5C
gUnknown_08B2CA5C:
	.INCBIN "baserom.gba", 0xB2CA5C, 0xB2CDF4-0xB2CA5C

	.GLOBAL gUnknown_08B2CDF4
gUnknown_08B2CDF4:
	.INCBIN "baserom.gba", 0xB2CDF4, 0xB2CEBC-0xB2CDF4

	.GLOBAL gUnknown_08B2CEBC
gUnknown_08B2CEBC:
	.INCBIN "baserom.gba", 0xB2CEBC, 0xB2CF84-0xB2CEBC

	.GLOBAL gUnknown_08B2CF84
gUnknown_08B2CF84:
	.INCBIN "baserom.gba", 0xB2CF84, 0xB2CFC0-0xB2CF84

	.GLOBAL gUnknown_08B2CFC0
gUnknown_08B2CFC0:
	.INCBIN "baserom.gba", 0xB2CFC0, 0xB2CFC8-0xB2CFC0

	.GLOBAL gUnknown_08B2CFC8
gUnknown_08B2CFC8:
	.INCBIN "baserom.gba", 0xB2CFC8, 0xB2CFD0-0xB2CFC8

	.GLOBAL gTitleDemoInputTable
gTitleDemoInputTable:
	.INCBIN "baserom.gba", 0xB2CFD0, 0xB2D378-0xB2CFD0

	.GLOBAL gUnknown_08B2D378
gUnknown_08B2D378:
	.INCBIN "baserom.gba", 0xB2D378, 0xB2D380-0xB2D378

	.GLOBAL gTutorialDemoInputTable
gTutorialDemoInputTable:
	.INCBIN "baserom.gba", 0xB2D380, 0xB2D574-0xB2D380

	.GLOBAL gUnknown_08B2D574
gUnknown_08B2D574:
	.INCBIN "baserom.gba", 0xB2D574, 0xB2D578-0xB2D574

	.GLOBAL gUnknown_08B2D578
gUnknown_08B2D578:
	.INCBIN "baserom.gba", 0xB2D578, 0xB2DC74-0xB2D578

	.GLOBAL gUnknown_08B2DC74
gUnknown_08B2DC74:
	.INCBIN "baserom.gba", 0xB2DC74, 0xB2F070-0xB2DC74

	.GLOBAL gUnknown_08B2F070
gUnknown_08B2F070:
	.INCBIN "baserom.gba", 0xB2F070, 0xB2F5B8-0xB2F070

	.GLOBAL gUnknown_08B2F5B8
gUnknown_08B2F5B8:
	.INCBIN "baserom.gba", 0xB2F5B8, 0xB2FFDC-0xB2F5B8

	.GLOBAL gUnknown_08B2FFDC
gUnknown_08B2FFDC:
	.INCBIN "baserom.gba", 0xB2FFDC, 0xB30768-0xB2FFDC

	.GLOBAL gUnknown_08B30768
gUnknown_08B30768:
	.INCBIN "baserom.gba", 0xB30768, 0xB30F94-0xB30768

	.GLOBAL gUnknown_08B30F94
gUnknown_08B30F94:
	.INCBIN "baserom.gba", 0xB30F94, 0xB32118-0xB30F94

	.GLOBAL gUnknown_08B32118
gUnknown_08B32118:
	.INCBIN "baserom.gba", 0xB32118, 0xB35FC0-0xB32118

	.GLOBAL gUnknown_08B35FC0
gUnknown_08B35FC0:
	.INCBIN "baserom.gba", 0xB35FC0, 0xB37168-0xB35FC0

	.GLOBAL gUnknown_08B37168
gUnknown_08B37168:
	.INCBIN "baserom.gba", 0xB37168, 0xB3732C-0xB37168

	.GLOBAL gUnknown_08B3732C
gUnknown_08B3732C:
	.INCBIN "baserom.gba", 0xB3732C, 0xB37424-0xB3732C

	.GLOBAL gUnknown_08B37424
gUnknown_08B37424:
	.INCBIN "baserom.gba", 0xB37424, 0xB3742C-0xB37424
	
	.GLOBAL gCardEDataRevenge
gCardEDataRevenge:
	.INCBIN "assets/card-e/Revenge.bin"
	
	.GLOBAL gCardEDataTheLongWay
gCardEDataTheLongWay:
	.INCBIN "assets/card-e/The_Long_Way.bin"
	
	.GLOBAL gCardEDataOneShotBlue
gCardEDataOneShotBlue:
	.INCBIN "assets/card-e/One_Shot_Blue.bin"
	
	.GLOBAL gCardEDataEggAttack
gCardEDataEggAttack:
	.INCBIN "assets/card-e/Egg_Attack.bin"
	
	.GLOBAL gCardEDataLaterGator
gCardEDataLaterGator:
	.INCBIN "assets/card-e/Later_Gator.bin"
	
	.GLOBAL gCardEDataHotFeet
gCardEDataHotFeet:
	.INCBIN "assets/card-e/Hot_Feet.bin"
	
	.GLOBAL gCardEDataBooInABox
gCardEDataBooInABox:
	.INCBIN "assets/card-e/Boo_In_A_Box.bin"

	.GLOBAL gCardEDataTheThwamplet
gCardEDataTheThwamplet:
	.INCBIN "assets/card-e/The_Thwamplet.bin"

	.GLOBAL gCardEDataATrickyCandle
gCardEDataATrickyCandle:
	.INCBIN "assets/card-e/A_Tricky_Candle.bin"

	.GLOBAL gCardEDataKeyToTheKey
gCardEDataKeyToTheKey:
	.INCBIN "assets/card-e/Key_To_The_Key.bin"

	.GLOBAL gCardEDataDangerFlowers
gCardEDataDangerFlowers:
	.INCBIN "assets/card-e/Danger_Flowers.bin"

	.GLOBAL gCardEDataClimbAndFall
gCardEDataClimbAndFall:
	.INCBIN "assets/card-e/Climb_And_Fall.bin"

	.GLOBAL gCardEDataDummy2
gCardEDataDummy2:
	.INCBIN "assets/card-e/Dummy2.bin"

	.GLOBAL gUnknown_08B3961C
gUnknown_08B3961C:
	.INCBIN "baserom.gba", 0xB3961C, 0xB39C1C-0xB3961C

	.GLOBAL gUnknown_08B39C1C
gUnknown_08B39C1C:
	.INCBIN "baserom.gba", 0xB39C1C, 0xB39F1C-0xB39C1C

	.GLOBAL gUnknown_08B39F1C
gUnknown_08B39F1C:
	.INCBIN "baserom.gba", 0xB39F1C, 0xB39F48-0xB39F1C

	.GLOBAL gUnknown_08B39F48
gUnknown_08B39F48:
	.INCBIN "baserom.gba", 0xB39F48, 0xB39FC4-0xB39F48

	.GLOBAL gUnknown_08B39FC4
gUnknown_08B39FC4:
	.INCBIN "baserom.gba", 0xB39FC4, 0xB3A004-0xB39FC4

	.GLOBAL gUnknown_08B3A004
gUnknown_08B3A004:
	.INCBIN "baserom.gba", 0xB3A004, 0xB3A0A8-0xB3A004

	.GLOBAL gUnknown_08B3A0A8
gUnknown_08B3A0A8:
	.INCBIN "baserom.gba", 0xB3A0A8, 0xB3A4AC-0xB3A0A8

	.GLOBAL gUnknown_08B3A4AC
gUnknown_08B3A4AC:
	.INCBIN "baserom.gba", 0xB3A4AC, 0xB3A4DC-0xB3A4AC

	.GLOBAL gUnknown_08B3A4DC
gUnknown_08B3A4DC:
	.INCBIN "baserom.gba", 0xB3A4DC, 0xB3A4E0-0xB3A4DC

	.GLOBAL gUnknown_08B3A4E0
gUnknown_08B3A4E0:
	.INCBIN "baserom.gba", 0xB3A4E0, 0xD7B10C-0xB3A4E0

	.GLOBAL gUnknown_08D7B10C
gUnknown_08D7B10C:
	.INCBIN "baserom.gba", 0xD7B10C, 0xD7B110-0xD7B10C

	.GLOBAL gUnknown_08D7B110
gUnknown_08D7B110:
	.INCBIN "baserom.gba", 0xD7B110, 0xD7B116-0xD7B110

	.GLOBAL gUnknown_08D7B116
gUnknown_08D7B116:
	.INCBIN "baserom.gba", 0xD7B116, 0xEBFE90-0xD7B116

	.GLOBAL gUnknown_08EBFE90
gUnknown_08EBFE90:
	.INCBIN "baserom.gba", 0xEBFE90, 0xECCA3C-0xEBFE90
	
BGM_1AXM:
	.INCBIN "assets/music/BGM_1AXM.bin"
	
HAMMERXM:
	.INCBIN "assets/music/HAMMERXM.bin"
	
WINXM:
	.INCBIN "assets/music/WINXM.bin"
	
FAIL_1XM:
	.INCBIN "assets/music/FAIL_1XM.bin"
	
FAIL_2XM:
	.INCBIN "assets/music/FAIL_2XM.bin"
	
FAIL_3XM:
	.INCBIN "assets/music/FAIL_3XM.bin"
	
TIMEXM:
	.INCBIN "assets/music/TIMEXM.bin"
	
INTRO_2XM:
	.INCBIN "assets/music/INTRO_2XM.bin"
	
BGM_1CXM:
	.INCBIN "assets/music/BGM_1CXM.bin"
	
BGM_1BXM:
	.INCBIN "assets/music/BGM_1BXM.bin"
	
TITLEXM:
	.INCBIN "assets/music/TITLEXM.bin"
	
RESULTSXM:
	.INCBIN "assets/music/RESULTSXM.bin"
	
BGM_MM1XM:
	.INCBIN "assets/music/BGM_MM1XM.bin"
	
BOSS1XM:
	.INCBIN "assets/music/BOSS1XM.bin"
	
MM_PROTECTXM:
	.INCBIN "assets/music/MM_PROTECTXM.bin"
	
GAMEOVERXM:
	.INCBIN "assets/music/GAMEOVERXM.bin"
	
INTRO_1XM:
	.INCBIN "assets/music/INTRO_1XM.bin"
	
INTRO_3XM:
	.INCBIN "assets/music/INTRO_3XM.bin"
	
BGM_2AXM:
	.INCBIN "assets/music/BGM_2AXM.bin"
	
BGM_2BXM:
	.INCBIN "assets/music/BGM_2BXM.bin"
	
BGM_2CXM:
	.INCBIN "assets/music/BGM_2CXM.bin"
	
WIN2XM:
	.INCBIN "assets/music/WIN2XM.bin"
	
WIN3XM:
	.INCBIN "assets/music/WIN3XM.bin"
	
MOVIEXM:
	.INCBIN "assets/music/MOVIEXM.bin"
	
BGM_5AXM:
	.INCBIN "assets/music/BGM_5AXM.bin"
	
BGM_5BXM:
	.INCBIN "assets/music/BGM_5BXM.bin"
	
BGM_5CXM:
	.INCBIN "assets/music/BGM_5CXM.bin"
	
BGM_4AXM:
	.INCBIN "assets/music/BGM_4AXM.bin"
	
BGM_4BXM:
	.INCBIN "assets/music/BGM_4BXM.bin"
	
BGM_4CXM:
	.INCBIN "assets/music/BGM_4CXM.bin"
	
DK01XM:
	.INCBIN "assets/music/DK01XM.bin"
	
DK02XM:
	.INCBIN "assets/music/DK02XM.bin"
	
BGM_MM_INTROXM:
	.INCBIN "assets/music/BGM_MM_INTROXM.bin"
	
DK03XM:
	.INCBIN "assets/music/DK03XM.bin"
	
DK04XM:
	.INCBIN "assets/music/DK04XM.bin"
	
DK05XM:
	.INCBIN "assets/music/DK05XM.bin"
	
DK06XM:
	.INCBIN "assets/music/DK06XM.bin"
	
DK07XM:
	.INCBIN "assets/music/DK07XM.bin"
	
DK08XM:
	.INCBIN "assets/music/DK08XM.bin"
	
DK_BOSS01XM:
	.INCBIN "assets/music/DK_BOSS01XM.bin"
	
BOSS2XM:
	.INCBIN "assets/music/BOSS2XM.bin"
	
MOVIE2XM:
	.INCBIN "assets/music/MOVIE2XM.bin"
	
MINIGAMEXM:
	.INCBIN "assets/music/MINIGAMEXM.bin"
	
MOVIE3XM:
	.INCBIN "assets/music/MOVIE3XM.bin"
	
MOVIE4XM:
	.INCBIN "assets/music/MOVIE4XM.bin"
	
MOVIE5XM:
	.INCBIN "assets/music/MOVIE5XM.bin"
	
MOVIE6XM:
	.INCBIN "assets/music/MOVIE6XM.bin"
	
CREDITSXM:
	.INCBIN "assets/music/CREDITSXM.bin"
	
EXPERT_1XM:
	.INCBIN "assets/music/EXPERT_1XM.bin"
	
EXPERT_2XM:
	.INCBIN "assets/music/EXPERT_2XM.bin"
	
EXPERT_3XM:
	.INCBIN "assets/music/EXPERT_3XM.bin"
	
EXPERT_4XM:
	.INCBIN "assets/music/EXPERT_4XM.bin"
	
EXPERT_5XM:
	.INCBIN "assets/music/EXPERT_5XM.bin"
	
EXPERT_6XM:
	.INCBIN "assets/music/EXPERT_6XM.bin"
	
EXPERT_7XM:
	.INCBIN "assets/music/EXPERT_7XM.bin"
	
EXPERT_8XM:
	.INCBIN "assets/music/EXPERT_8XM.bin"
	
EXPERT_9XM:
	.INCBIN "assets/music/EXPERT_9XM.bin"
	
EXPERT_10XM:
	.INCBIN "assets/music/EXPERT_10XM.bin"
	
EXPERT_11XM:
	.INCBIN "assets/music/EXPERT_11XM.bin"
	
EXPERT_12XM:
	.INCBIN "assets/music/EXPERT_12XM.bin"
	
INTRO_FINALBOSSXM:
	.INCBIN "assets/music/INTRO_FINALBOSSXM.bin"
	
MIDCREDITSXM:
	.INCBIN "assets/music/MIDCREDITSXM.bin"
	
MIDBOSS_ENDXM:
	.INCBIN "assets/music/MIDBOSS_ENDXM.bin"
	
FAIL_4XM:
	.INCBIN "assets/music/FAIL_4XM.bin"
	
INTRO_FINALBOSS2XM:
	.INCBIN "assets/music/INTRO_FINALBOSS2XM.bin"
	
WIN_FINALBOSSXM:
	.INCBIN "assets/music/WIN_FINALBOSSXM.bin"
	
BOSS3XM:
	.INCBIN "assets/music/BOSS3XM.bin"
	
DK_BOSS02XM:
	.INCBIN "assets/music/DK_BOSS02XM.bin"
	
INTRO_MINIGAMEXM:
	.INCBIN "assets/music/INTRO_MINIGAMEXM.bin"
	
OUTRO_MINIGAMEXM:
	.INCBIN "assets/music/OUTRO_MINIGAMEXM.bin"
	