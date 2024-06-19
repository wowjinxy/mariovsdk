	.SECTION .data

	@ What is this first part? Seems unreferenced.

	.INCBIN "baserom.gba", 0x76360, 0x76368-0x76360

	.GLOBAL gUnknown_08076368
gUnknown_08076368:
	.INCBIN "baserom.gba", 0x76368, 0x76387-0x76368

	.GLOBAL gUnknown_08076387
gUnknown_08076387:
	.byte 0x8
	.byte 0xA
	.byte 0x9
	.2byte 0x0000

	.GLOBAL gUnknown_0807638C
gUnknown_0807638C:
	.INCBIN "baserom.gba", 0x7638C, 0x763AC-0x7638C

	.GLOBAL gUnknown_080763AC
gUnknown_080763AC:
	.INCBIN "baserom.gba", 0x763AC, 0x763CC-0x763AC

	.GLOBAL gUnknown_080763CC
gUnknown_080763CC:
	.byte 0x4
	.byte 0x6
	.byte 0x8
	.byte 0xC
	.byte 0xA
	.byte 0xA

	.GLOBAL gUnknown_080763D2
gUnknown_080763D2:
	.2byte 0x0044
	.2byte 0x0073

	.GLOBAL gUnknown_080763D6
gUnknown_080763D6:
	.byte 0x5
	.byte 0x7
	.byte 0x9
	.byte 0xD
	.byte 0xB
	.byte 0xB

	.GLOBAL gUnknown_080763DC
gUnknown_080763DC:
	.byte 0x4
	.byte 0x6
	.byte 0x8
	.byte 0x2
	.byte 0xA
	.byte 0xA

	.GLOBAL gUnknown_080763E2
gUnknown_080763E2:
	.byte 0x5
	.byte 0x7
	.byte 0x9
	.byte 0x2
	.byte 0xB
	.byte 0xB

	.GLOBAL gUnknown_080763E8
gUnknown_080763E8:
	.byte 0x4
	.byte 0x6
	.byte 0x8
	.byte 0xA
	.byte 0xA

	.GLOBAL gUnknown_080763ED
gUnknown_080763ED:
	.byte 0x5
	.byte 0x7
	.byte 0x9
	.byte 0xB
	.byte 0xB
	.byte 0x0
	.byte 0x0

	.GLOBAL gUnknown_080763F4
gUnknown_080763F4:
	.byte 0x1
	.byte 0x2
	.byte 0x3
	.byte 0x4
	.byte 0x5
	.byte 0x6
	.byte 0x7
	.byte 0x9

	.GLOBAL gUnknown_080763FC
gUnknown_080763FC:
	.4byte 0x0000000D
	.4byte 0x00000002

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

	.GLOBAL gTextPressAToRetry
gTextPressAToRetry:
	.ASCII "Press A Button to Retry\nPress B Button to Cancel\0\0\0\0"

	.GLOBAL gTextPressAToContinue
gTextPressAToContinue:
	.ASCII "Press A Button to continue\0\0"
	
	.GLOBAL gTextDoNotTurnOff
gTextDoNotTurnOff:
	.ASCII "Please DO NOT TURN OFF\nGame Boy Advance Systems\nor DISCONNECT Game Boy Advance\nGame Link cable\0\0"
	
	.GLOBAL gTextPressAToReceiveLevel
gTextPressAToReceiveLevel:
	.ASCII "Press A Button to Receive Level\nPress B Button to Cancel\0\0\0\0"
	
	.GLOBAL gTextPressBToCancel
gTextPressBToCancel:
	.ASCII "Press B Button to Cancel\0\0\0\0"
	
	.GLOBAL gTextPressAWhenReady
gTextPressAWhenReady:
	.ASCII "Press A Button when Ready\nPress B Button to Cancel\0\0"

	.GLOBAL gTextEraseLevelE
gTextEraseLevelE:
	.ASCII "ERASE\nLEVEL e-\0\0"
	
	.GLOBAL gTextPressAToEraseLevel
gTextPressAToEraseLevel:
	.ASCII "Press A Button to ERASE LEVEL\0\0\0"

	.GLOBAL gTextPressAToAddLevel
gTextPressAToAddLevel:
	.ASCII "Press A Button to ADD LEVEL\0"
	
	.GLOBAL gTextNoSpaceForNewELevels
gTextNoSpaceForNewELevels:
	.ASCII "No Space for new\nMario vs. Donkey\nKong-e levels.\nPlease Erase a\nLevel first!\0\0\0\0"
	
	.GLOBAL gTextOK
gTextOK:
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
	
	.GLOBAL gTextScanCardE
gTextScanCardE:
	.ASCII "Scan Card-e\0"
	
	.GLOBAL gTextScanPreloadedCardE
gTextScanPreloadedCardE:
	.ASCII "Scan Preloaded Card-e\0\0\0"

	.GLOBAL gUnknown_08076994
gUnknown_08076994:
	.4byte gTextScanCardE
	.4byte gTextScanPreloadedCardE
	
	.GLOBAL gTextPressBToReturn
gTextPressBToReturn:
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

	.GLOBAL gTextErasing
gTextErasing:
	.ASCII "Erasing...\0\0"
	
	.GLOBAL gErrorELevelCorruptedText
gErrorELevelCorruptedText:
	.ASCII "ERROR\nSaved Mario vs. Donkey Kong-e\nlevels have been erased due to\ncorruption of data.\0\0"
	
	.GLOBAL gTextErrorSaveCorrupted
gTextErrorSaveCorrupted:
	.ASCII "ERROR\nAll saved data has been erased\ndue to corruption of data\0\0"
	
	.GLOBAL gTextErrorFlashNotDetected
gTextErrorFlashNotDetected:
	.ASCII "ERROR\nFlash hardware could not\nbe detected.\nSaving is disabled.\0"

	.GLOBAL gUnknown_08076AD8
gUnknown_08076AD8:
	.INCBIN "baserom.gba", 0x76AD8, 0x76D58-0x76AD8

	.GLOBAL gUnknown_08076D58
gUnknown_08076D58:
	.4byte sub_08033DCC
	.4byte sub_08037ED4
	.4byte sub_08034138
	.4byte sub_0802BF70
	.4byte sub_08073B90
	.4byte sub_08034138

	.GLOBAL gUnknown_08076D70
gUnknown_08076D70:
	.4byte sub_0803413C
	.4byte sub_08037ED4
	.4byte sub_08034138
	.4byte sub_08071BCC
	.4byte sub_08034138
	.4byte sub_08034138
	.4byte sub_08034138
	.4byte sub_08034138
	.4byte sub_08034138

	.GLOBAL gTextHeapOverflow
gTextHeapOverflow:
	.ASCII "Heap overflow.\nWe are out of RAM!\0"

	.ALIGN 2
	.ASCII "MultiSio010918\0"

	.ALIGN 2
	.GLOBAL gTextSendingCompleted
gTextSendingCompleted:
	.ASCII "SENDING COMPLETED\n\n"
	.ASCII "Press A Button to Resend\n"
	.ASCII "Press B Button to Cancel.\0"

	.ALIGN 2
	
	.GLOBAL gTextSending
gTextSending:
	.ASCII "SENDING...\n\n"
	.ASCII "Please DO NOT TURN OFF\n"
	.ASCII "Game Boy Advance Systems\n"
	.ASCII "or Disconnect the\n"
	.ASCII "Game Boy Advance\n"
	.ASCII "Game Link cable.\0"

	.ALIGN 2
	.GLOBAL gTextReadyToSendPressA
gTextReadyToSendPressA:
	.ASCII "READY TO SEND\n\n"
	.ASCII "Press A Button on GBA with\n"
	.ASCII "Mario vs. Donkey Kong to\n"
	.ASCII "begin sending new level to.\0"

	.ALIGN 2
	.GLOBAL gTextReadyToSendLink
gTextReadyToSendLink:
	.ASCII "READY TO SEND\n\n"
	.ASCII "Link e-Reader to\n"
	.ASCII "Mario vs. Donkey Kong and\n"
	.ASCII "select the e-Reader card\n"
	.ASCII "Menu and ADD LEVEL to begin.\n"
	.ASCII "Press B Button to Cancel\0"

	.ALIGN 2
	.GLOBAL gTextLostAll
gTextLostAll:
	.ASCII "LOST ALL\0"

	.ALIGN 2
	.GLOBAL gTextMiniMarios
gTextMiniMarios:
	.ASCII "MINI MARIOS\0"

	.ALIGN 2
	.GLOBAL gTextGetTOYCards
gTextGetTOYCards:
	.ASCII "GET TOY CARDS!\0"

	.ALIGN 2
	.GLOBAL gUnknown_08076F94
gUnknown_08076F94:
	.4byte 0x003A3938

	.GLOBAL gUnknown_08076F98
gUnknown_08076F98:
	.INCBIN "baserom.gba", 0x76F98, 0x76FA0-0x76F98

	.GLOBAL gUnknown_08076FA0
gUnknown_08076FA0:
	.INCBIN "baserom.gba", 0x76FA0, 0x76FB8-0x76FA0

	.GLOBAL gUnknown_08076FB8
gUnknown_08076FB8:
	.4byte 0x003A3938

	.GLOBAL gUnknown_08076FBC
gUnknown_08076FBC:
	.INCBIN "baserom.gba", 0x76FBC, 0x76FC4-0x76FBC

	.GLOBAL gUnknown_08076FC4
gUnknown_08076FC4:
	.INCBIN "baserom.gba", 0x76FC4, 0x76FC8-0x76FC4

	.GLOBAL gUnknown_08076FC8
gUnknown_08076FC8:
	.4byte 0xFFF00000
	.4byte 0x00000010

	.GLOBAL gUnknown_08076FD0
gUnknown_08076FD0:
	.4byte 0x003A3938
	
	.GLOBAL gUnknown_08076FD4
gUnknown_08076FD4:
	.4byte 0xFFF00000

	.INCBIN "assets/unused/DKPlusLeftoverPalette.bin"

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
