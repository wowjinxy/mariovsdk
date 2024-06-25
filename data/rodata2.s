	.SECTION .rodata

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
	.4byte 0xFFF00000
	.4byte 0x00000010

	.GLOBAL gUnknown_08076FA0
gUnknown_08076FA0:
	.4byte 0x01000000
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x00000100
	.4byte 0x00000000
	.4byte 0x00000000

	.GLOBAL gUnknown_08076FB8
gUnknown_08076FB8:
	.4byte 0x003A3938

	.GLOBAL gUnknown_08076FBC
gUnknown_08076FBC:
	.4byte 0xFFF00000
	.4byte 0x00000010

	.GLOBAL gUnknown_08076FC4
gUnknown_08076FC4:
	.4byte 0x003A3938

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
	.4byte 0x00000010
	
	.2byte 0x0002 @ ??? 
	.INCBIN "assets/unused/DKPlusLeftoverPalette.bin" @ header says size of 0x2A6, seems to include the header
	.2byte 0x0004 @ ???
	.INCBIN "assets/unused/DKPlusLeftoverPalette2.bin" @ header says size of 0x2AE, seems to include header

	.GLOBAL gSFXTextDKFall
gSFXTextDKFall:
	.ASCII "DK_FALL\0"
	
	.GLOBAL gSFXTextWonText
gSFXTextWonText:
	.ASCII "WON_TEXT\0\0\0\0"
	
	.GLOBAL gSFXTextRibbon
gSFXTextRibbon:
	.ASCII "RIBBON\0\0"
	
	.GLOBAL gSFXTextDKGrunt
gSFXTextDKGrunt:
	.ASCII "DK_GRUNT\0\0\0\0"
	
	.GLOBAL gSFXTextMMWalk
gSFXTextMMWalk:
	.ASCII "MM_WALK\0"
	
	.GLOBAL gSFXTextRockBounce
gSFXTextRockBounce:
	.ASCII "ROCK_BOUNCE\0"
	
	.GLOBAL gSFXTextBarrelBounce
gSFXTextBarrelBounce:
	.ASCII "BARREL_BOUNCE\0\0\0"
	
	.GLOBAL gSFXTextBossDie3
gSFXTextBossDie3:
	.ASCII "BOSS_DIE3\0\0\0"
	
	.GLOBAL gSFXTextSpikeAppear
gSFXTextSpikeAppear:
	.ASCII "SPIKE_APPEAR\0\0\0\0"
	
	.GLOBAL gSFXTextSpikeVanish
gSFXTextSpikeVanish:
	.ASCII "SPIKE_VANISH\0\0\0\0"
	
	.GLOBAL gSFXTextMMMamamias
gSFXTextMMMamamias:
	.ASCII "MM_MAMAMIAS\0"
	
	.GLOBAL gSFXTextMMFree
gSFXTextMMFree:
	.ASCII "MM_FREE\0"
	
	.GLOBAL gSFXTextMMWakeup
gSFXTextMMWakeup:
	.ASCII "MM_WAKEUP\0\0\0"
	
	.GLOBAL gSFXTextWorldStart
gSFXTextWorldStart:
	.ASCII "WORLD_START\0"
	
	.GLOBAL gSFXTextScuff2
gSFXTextScuff2:
	.ASCII "SCUFF2\0\0"
	
	.GLOBAL gSFXTextDKWalk
gSFXTextDKWalk:
	.ASCII "DK_WALK\0"
	
	.GLOBAL gSFXTextStar
gSFXTextStar:
	.ASCII "STAR\0\0\0\0"
	
	.GLOBAL gSFXTextYouWon3
gSFXTextYouWon3:
	.ASCII "YOU_WON3\0\0\0\0"
	
	.GLOBAL gSFXTextYouWon2
gSFXTextYouWon2:
	.ASCII "YOU_WON2\0\0\0\0"
	
	.GLOBAL gSFXTextYouWon1
gSFXTextYouWon1:
	.ASCII "YOU_WON1\0\0\0\0"
	
	.GLOBAL gSFXTextTitle
gSFXTextTitle:
	.ASCII "TITLE\0\0\0"
	
	.GLOBAL gSFXNameMovie08
gSFXNameMovie08:
	.ASCII "MOVIE_08\0\0\0\0"
	
	.GLOBAL gSFXNameMovie210
gSFXNameMovie210:
	.ASCII "MOVIE2_10\0\0\0"
	
	.GLOBAL gSFXNameMovie29
gSFXNameMovie29:
	.ASCII "MOVIE2_9\0\0\0\0"
	
	.GLOBAL gSFXNameMovie610
gSFXNameMovie610:
	.ASCII "MOVIE6_10\0\0\0"
	
	.GLOBAL gSFXNameMovie609
gSFXNameMovie609:
	.ASCII "MOVIE6_09\0\0\0"

	.GLOBAL gSFXNameMovie608
gSFXNameMovie608:
	.ASCII "MOVIE6_08\0\0\0"
	
	.GLOBAL gSFXNameMovie607
gSFXNameMovie607:
	.ASCII "MOVIE6_07\0\0\0"
	
	.GLOBAL gSFXNameMovie606
gSFXNameMovie606:
	.ASCII "MOVIE6_06\0\0\0"
	
	.GLOBAL gSFXNameMovie605
gSFXNameMovie605:
	.ASCII "MOVIE6_05\0\0\0"
	
	.GLOBAL gSFXNameMovie604
gSFXNameMovie604:
	.ASCII "MOVIE6_04\0\0\0"

	.GLOBAL gSFXNameMovie603
gSFXNameMovie603:
	.ASCII "MOVIE6_03\0\0\0"

	.GLOBAL gSFXNameMovie602
gSFXNameMovie602:
	.ASCII "MOVIE6_02\0\0\0"
	
	.GLOBAL gSFXNameMovie601
gSFXNameMovie601:
	.ASCII "MOVIE6_01\0\0\0"
	
	.GLOBAL gSFXNameMovie507
gSFXNameMovie507:
	.ASCII "MOVIE5_07\0\0\0"
	
	.GLOBAL gSFXNameMovie505
gSFXNameMovie505:
	.ASCII "MOVIE5_05\0\0\0"
	
	.GLOBAL gSFXNameMovie501
gSFXNameMovie501:
	.ASCII "MOVIE5_01\0\0\0"
	
	.GLOBAL gSFXNameMovie410
gSFXNameMovie410:
	.ASCII "MOVIE4_10\0\0\0"
	
	.GLOBAL gSFXNameMovie409
gSFXNameMovie409:
	.ASCII "MOVIE4_09\0\0\0"
	
	.GLOBAL gSFXNameMovie408
gSFXNameMovie408:
	.ASCII "MOVIE4_08\0\0\0"
	
	.GLOBAL gSFXNameMovie407
gSFXNameMovie407:
	.ASCII "MOVIE4_07\0\0\0"
	
	.GLOBAL gSFXNameMovie406
gSFXNameMovie406:
	.ASCII "MOVIE4_06\0\0\0"
	
	.GLOBAL gSFXNameMovie404
gSFXNameMovie404:
	.ASCII "MOVIE4_04\0\0\0"

	.GLOBAL gSFXNameMovie403
gSFXNameMovie403:
	.ASCII "MOVIE4_03\0\0\0"
	
	.GLOBAL gSFXNameMovie402
gSFXNameMovie402:
	.ASCII "MOVIE4_02\0\0\0"
	
	.GLOBAL gSFXNameMovie401
gSFXNameMovie401:
	.ASCII "MOVIE4_01\0\0\0"
	
	.GLOBAL gSFXNameMovie314
gSFXNameMovie314:
	.ASCII "MOVIE3_14\0\0\0"
	
	.GLOBAL gSFXNameMovie313
gSFXNameMovie313:
	.ASCII "MOVIE3_13\0\0\0"
	
	.GLOBAL gSFXNameMovie312
gSFXNameMovie312:
	.ASCII "MOVIE3_12\0\0\0"
	
	.GLOBAL gSFXNameMovie311
gSFXNameMovie311:
	.ASCII "MOVIE3_11\0\0\0"
	
	.GLOBAL gSFXNameMovie310
gSFXNameMovie310:
	.ASCII "MOVIE3_10\0\0\0"
	
	.GLOBAL gSFXNameMovie309
gSFXNameMovie309:
	.ASCII "MOVIE3_09\0\0\0"
	
	.GLOBAL gSFXNameMovie308
gSFXNameMovie308:
	.ASCII "MOVIE3_08\0\0\0"
	
	.GLOBAL gSFXNameMovie307
gSFXNameMovie307:
	.ASCII "MOVIE3_07\0\0\0"
	
	.GLOBAL gSFXNameMovie306
gSFXNameMovie306:
	.ASCII "MOVIE3_06\0\0\0"
	
	.GLOBAL gSFXNameMovie305
gSFXNameMovie305:
	.ASCII "MOVIE3_05\0\0\0"
	
	.GLOBAL gSFXNameMovie304
gSFXNameMovie304:
	.ASCII "MOVIE3_04\0\0\0"
	
	.GLOBAL gSFXNameMovie303
gSFXNameMovie303:
	.ASCII "MOVIE3_03\0\0\0"
	
	.GLOBAL gSFXNameMovie302
gSFXNameMovie302:
	.ASCII "MOVIE3_02\0\0\0"
	
	.GLOBAL gSFXNameMovie301
gSFXNameMovie301:
	.ASCII "MOVIE3_01\0\0\0"
	
	.GLOBAL gSFXNameToadsGrab
gSFXNameToadsGrab:
	.ASCII "TOADS_GRAB\0\0"
	
	.GLOBAL gSFXNameToadsJump
gSFXNameToadsJump:
	.ASCII "TOADS_JUMP\0\0"
	
	.GLOBAL gSFXNameBigBarrelFall
gSFXNameBigBarrelFall:
	.ASCII "BIGBARREL_FALL\0\0"
	
	.GLOBAL gSFXNameBigBarrelHit
gSFXNameBigBarrelHit:
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
	
	.GLOBAL gSFXNameCrouch
gSFXNameCrouch:
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
	
	.GLOBAL gSFXNameOuch
gSFXNameOuch:
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
	
	.GLOBAL gSFXNameWarpOut
gSFXNameWarpOut:
	.ASCII "WARP_OUT\0\0\0\0"
	
	.GLOBAL gSFXNameToyLast
gSFXNameToyLast:
	.ASCII "TOYLAST\0"
	
	.GLOBAL gSFXNameToy1
gSFXNameToy1:
	.ASCII "TOY1\0\0\0\0"
	
	.GLOBAL gSFXNameEmpty
gSFXNameEmpty:
	.ASCII "EMPTY\0\0\0"
	
	.GLOBAL gSFXNameChoose
gSFXNameChoose:
	.ASCII "CHOOSE\0\0"
	
	.GLOBAL gSFXNamePointer
gSFXNamePointer:
	.ASCII "POINTER\0"
	
	.GLOBAL gSFXNameFruitFall
gSFXNameFruitFall:
	.ASCII "FRUIT_FALL\0\0"
	
	.GLOBAL gSFXNameSlam2
gSFXNameSlam2:
	.ASCII "SLAM2\0\0\0"
	
	.GLOBAL gSFXNameDKBellow
gSFXNameDKBellow:
	.ASCII "DK_BELLOW\0\0\0"
	
	.GLOBAL gSFXNameDKHurt
gSFXNameDKHurt:
	.ASCII "DK_HURT\0"
	
	.GLOBAL gSFXNameOof
gSFXNameOof:
	.ASCII "OOF\0"
	
	.GLOBAL gSFXNameChestClose
gSFXNameChestClose:
	.ASCII "CHEST_CLOSE\0"
	
	.GLOBAL gSFXNameChestOpen
gSFXNameChestOpen:
	.ASCII "CHEST_OPEN\0\0"
	
	.GLOBAL gSFXNameMMProtect
gSFXNameMMProtect:
	.ASCII "MM_PROTECT\0\0"
	
	.GLOBAL gSFXNameMMBoing
gSFXNameMMBoing:
	.ASCII "MM_BOING\0\0\0\0"
	
	.GLOBAL gSFXNameMMDie
gSFXNameMMDie:
	.ASCII "MM_DIE\0\0"
	
	.GLOBAL gSFXNameLookUp
gSFXNameLookUp:
	.ASCII "LOOK_UP\0"
	
	.GLOBAL gSFXNameBlank
gSFXNameBlank:
	.ASCII "BLANK\0\0\0"
	
	
	.GLOBAL gSFXNameReturn
gSFXNameReturn:
	.ASCII "RETURN\0\0"
	
	.GLOBAL gSFXNameScroll
gSFXNameScroll:
	.ASCII "SCROLL\0\0"
	
	.GLOBAL gSFXNameDoor
gSFXNameDoor:
	.ASCII "DOOR\0\0\0\0"
	
	.GLOBAL gSFXNameRopeDown
gSFXNameRopeDown:
	.ASCII "ROPE_DOWN\0\0\0"
	
	.GLOBAL gSFXNameRopeUp
gSFXNameRopeUp:
	.ASCII "ROPE_UP\0"
	
	.GLOBAL gSFXNameJump6
gSFXNameJump6:
	.ASCII "JUMP_6\0\0"
	
	.GLOBAL gSFXNameBoing
gSFXNameBoing:
	.ASCII "BOING\0\0\0"
	
	.GLOBAL gSFXNameSwitch3
gSFXNameSwitch3:
	.ASCII "SWITCH3\0"
	
	.GLOBAL gSFXNameSwitch2
gSFXNameSwitch2:
	.ASCII "SWITCH2\0"
	
	.GLOBAL gSFXNameSwitch1
gSFXNameSwitch1:
	.ASCII "SWITCH1\0"
	
	.GLOBAL gSFXNameSkidshort
gSFXNameSkidshort:
	.ASCII "SKIDSHORT\0\0\0"
	
	.GLOBAL gSFXNameSilence
gSFXNameSilence:
	.ASCII "SILENCE\0"
	
	.GLOBAL gSFXNameHelp
gSFXNameHelp:
	.ASCII "HELP\0\0\0\0"
	
	.GLOBAL gSFXNameOneUp
gSFXNameOneUp:
	.ASCII "ONE_UP\0\0"
	
	.GLOBAL gSFXNameSpin1
gSFXNameSpin1:
	.ASCII "SPIN_1\0\0"
	
	.GLOBAL gSFXNameWirejump
gSFXNameWirejump:
	.ASCII "WIREJUMP\0\0\0\0"
	
	.GLOBAL gSFXNameUnlock
gSFXNameUnlock:
	.ASCII "UNLOCK\0\0"
	
	.GLOBAL gSFXNameSqueak
gSFXNameSqueak:
	.ASCII "SQUEAK\0\0"
	
	.GLOBAL gSFXNameSplat
gSFXNameSplat:
	.ASCII "SPLAT\0\0\0"
	
	.GLOBAL gSFXNameSpin
gSFXNameSpin:
	.ASCII "SPIN\0\0\0\0"
	
	.GLOBAL gSFXNameKeyDoor
gSFXNameKeyDoor:
	.ASCII "KEY_DOOR\0\0\0\0"
	
	.GLOBAL gSFXNameShock
gSFXNameShock:
	.ASCII "SHOCK\0\0\0"
	
	.GLOBAL gSFXNameScuff
gSFXNameScuff:
	.ASCII "SCUFF\0\0\0"
	
	.GLOBAL gSFXNamePound2
gSFXNamePound2:
	.ASCII "POUND2\0\0"
	
	.GLOBAL gSFXNameItemLast
gSFXNameItemLast:
	.ASCII "ITEMLAST\0\0\0\0"
	
	.GLOBAL gSFXNameHurt
gSFXNameHurt:
	.ASCII "HURT\0\0\0\0"
	
	.GLOBAL gSFXNameExit
gSFXNameExit:
	.ASCII "EXIT\0\0\0\0"
	
	.GLOBAL gSFXNameBlock
gSFXNameBlock:
	.ASCII "BLOCK\0\0\0"
	
	.GLOBAL gSFXNameBurn2
gSFXNameBurn2:
	.ASCII "BURN2\0\0\0"
	
	.GLOBAL gSFXNameBeam
gSFXNameBeam:
	.ASCII "BEAM\0\0\0\0"
	
	.GLOBAL gSFXNameStart
gSFXNameStart:
	.ASCII "START\0\0\0"
	
	.GLOBAL gSFXNameStamp
gSFXNameStamp:
	.ASCII "STAMP\0\0\0"
	
	.GLOBAL gSFXNameSelectS
gSFXNameSelectS:
	.ASCII "SELECT_S\0\0\0\0"
	
	.GLOBAL gSFXNameSelectM
gSFXNameSelectM:
	.ASCII "SELECT_M\0\0\0\0"
	
	.GLOBAL gSFXNameItem
gSFXNameItem:
	.ASCII "ITEM\0\0\0\0"
	
	.GLOBAL gSFXNameGrid
gSFXNameGrid:
	.ASCII "GRID\0\0\0\0"
	
	.GLOBAL gSFXNameField
gSFXNameField:
	.ASCII "FIELD\0\0\0"
	
	.GLOBAL gSFXNameExitEd
gSFXNameExitEd:
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
	.4byte 0x03000882
	.4byte gFlashTimeoutFlag
	.4byte 0x03000880
	.4byte 0x03000884
	.4byte FlashTimerIntr
	.4byte gFlashMaxTime
	.4byte 0x03000888
	.4byte 0x03000884
	.4byte 0x03000880
	.4byte gFlashTimeoutFlag
	.4byte 0x03000882
	.4byte 0x03000884
	.4byte 0x03000880
	.4byte 0x03000888
	.4byte PollFlashStatus
	.4byte ReadFlash1
	.4byte SetReadFlash1
	.4byte gFlash
	.4byte ReadFlash_Core
	.4byte ReadFlash
	.4byte gFlash
	.4byte VerifyFlashSector_Core
	.4byte VerifyFlashSector
	.4byte gFlash
	.4byte VerifyFlashSector_Core
	.4byte VerifyFlashSector
	.4byte ProgramFlashSector
	.4byte ProgramFlashSector
	.ASCII "FLASH512_V131\0\0\0"
	
	.GLOBAL sSetupInfos
sSetupInfos:
	.4byte gUnknown_08078028
	.4byte gUnknown_080780D8
	.4byte gUnknown_080780AC
	.4byte gUnknown_08077FFC
	.4byte sSetupInfos
	.4byte ProgramFlashSector
	.4byte EraseFlashChip
	.4byte EraseFlashSector
	.4byte WaitForFlashWrite
	.4byte gFlashMaxTime
	.4byte gFlash
	.4byte PollFlashStatus
	.4byte gFlashTimeoutFlag
	.4byte gFlash
	
	.GLOBAL gUnknown_08077FE4
gUnknown_08077FE4:
	.4byte 0xFFBD000A
	.4byte 0x000A00C2
	.4byte 0x00C2FFBD
	.4byte 0xFFBD0028
	.4byte 0x00C800C2
	.4byte 0x00C2FFBD
	
	.GLOBAL gUnknown_08077FFC
gUnknown_08077FFC:
	.4byte ProgramFlashSector_MX
	.4byte EraseFlashChip_MX
	.4byte EraseFlashSector_MX
	.4byte WaitForFlashWrite_Common
	.4byte gUnknown_08077FE4
	.4byte 0x00010000
	.4byte 0x00001000
	.4byte 0x0010000C
	.4byte 0x00000000
	.4byte 0x00030003
	.4byte 0x00000000
	
	.GLOBAL gUnknown_08078028
gUnknown_08078028:
	.4byte ProgramFlashSector_MX
	.4byte EraseFlashChip_MX
	.4byte EraseFlashSector_MX
	.4byte WaitForFlashWrite_Common
	.4byte gUnknown_08077FE4
	.4byte 0x00010000
	.4byte 0x00001000
	.4byte 0x0010000C
	.4byte 0x00000000
	.4byte 0x00020001
	.4byte 0x0000D4BF
	.4byte gFlash
	.4byte WaitForFlashWrite
	.4byte gFlash
	.4byte WaitForFlashWrite
	.4byte WaitForFlashWrite
	.4byte gFlash
	.4byte sub_080746D0
	.4byte sub_080746F4
	.4byte gFlashNumRemainingBytes
	.4byte gFlash

	.GLOBAL gUnknown_0807807C
gUnknown_0807807C:
	.4byte 0xFFBD000A
	.4byte 0x000A00C2
	.4byte 0x00C2FFBD
	.4byte 0xFFBD07D0
	.4byte 0x07D000C2
	.4byte 0x00C2FFBD
	
	.GLOBAL gUnknown_08078094
gUnknown_08078094:
	.4byte 0xFFBD000A
	.4byte 0x000A00C2
	.4byte 0x00C2FFBD
	.4byte 0xFFBD01F4
	.4byte 0x01F400C2
	.4byte 0x00C2FFBD

	.GLOBAL gUnknown_080780AC
gUnknown_080780AC:
	.4byte sub_0807470C
	.4byte EraseFlashChip_MX
	.4byte EraseFlashSector_MX
	.4byte WaitForFlashWrite_Common
	.4byte gUnknown_0807807C
	.4byte 0x00010000
	.4byte 0x00001000
	.4byte 0x0010000C
	.4byte 0x00000000
	.4byte 0x00010003
	.4byte 0x00001CC2

	.GLOBAL gUnknown_080780D8
gUnknown_080780D8:
	.4byte sub_0807470C
	.4byte EraseFlashChip_MX
	.4byte EraseFlashSector_MX
	.4byte WaitForFlashWrite_Common
	.4byte gUnknown_08078094
	.4byte 0x00010000
	.4byte 0x00001000
	.4byte 0x0010000C
	.4byte 0x00000000
	.4byte 0x00020000
	.4byte 0x00001B32
	.4byte gFlash
	.4byte gFlashNumRemainingBytes
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	
