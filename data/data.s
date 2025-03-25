	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .data

	.GLOBAL gUnknown_0807C850
gUnknown_0807C850:
	.4byte 0x00000001
	.4byte gTextCRCCheckFailed
	.4byte 0x00000002
	.4byte 0x00000001
	.4byte gTextRetry
	.4byte 0x0000000C
	.4byte gTextCancel
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	
	.4byte 0x00000001
	.4byte gTextTimeOut
	.4byte 0x00000002
	.4byte 0x00000001
	.4byte gTextRetry
	.4byte 0x000000C
	.4byte gTextCancel
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	
	.4byte 0x00000001
	.4byte gTextConnectionLost
	.4byte 0x00000002
	.4byte 0x00000001
	.4byte gTextRetry
	.4byte 0x000000C
	.4byte gTextCancel
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	
	.4byte 0x00000000
	.4byte gTextLevelAlreadyExists
	.4byte 0x00000003
	.4byte 0x00000007
	.4byte gTextOverwrite
	.4byte 0x00000001
	.4byte gTextRetry
	.4byte 0x0000000C
	.4byte gTextCancel
	.4byte 0x00000000
	
	.4byte 0x00000000
	.4byte gTextLevelDoesNotBelongToCurrentWorld
	.4byte 0x00000003
	.4byte 0x00000008
	.4byte gTextEraseOldWorld
	.4byte 0x00000001
	.4byte gTextRetry
	.4byte 0x0000000C
	.4byte gTextCancel
	.4byte 0x00000000
	
	.4byte 0x00000000
	.4byte gTextThemeCardActivated
	.4byte 0x00000001
	.4byte 0x0000000D
	.4byte gTextPressAToContinue2
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x14000101
	
	.4byte 0x00000000
	.4byte gTextThemeCardDeactivated
	.4byte 0x00000001
	.4byte 0x0000000E
	.4byte gTextPressAToContinue2
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x14000101
	
	.4byte 0x00000000
	.4byte gTextThemeCardAlreadyLoadedOverwrite
	.4byte 0x00000002
	.4byte 0x0000000D
	.4byte gTextYes
	.4byte 0x0000000B
	.4byte gTextNo
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x28010101
	
	.GLOBAL gUnknown_0807C990
gUnknown_0807C990:
	.4byte gTextPleaseConnectEReader
	.4byte gTextWaitingForECard
	.4byte gTextECardDetected
	.4byte gTextRecivingECard
	.4byte gTextRecivedNewLevel
	.4byte gTextRecivedLevelAlreadyExists
	.4byte gTextError
	.4byte gTextAddingLevel
	.4byte gTextErasingLevels
	.4byte gTextSavingLevelAs
	.4byte gTextSavingLevelAs
	.4byte gTextBlank
	.4byte gTextBlank
	.4byte 0x00000000
	.4byte 0x00000000

	.GLOBAL gUnknown_0807C9CC
gUnknown_0807C9CC:
	.4byte gTextPressAWhenReady
	.4byte gTextPressBToCancel
	.4byte gTextPressAToReceiveLevel
	.4byte gTextDoNotTurnOff
	.4byte gTextPressAToContinue
	.4byte gTextPressAToContinue
	.4byte gTextPressAToRetry
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000

	.GLOBAL gUnknown_0807CA08 @ e-Reader sprite IDs
gUnknown_0807CA08:
	.4byte 0x00000334 @ Sprite ID used for the standard selection box
	.4byte 0x000003A3 @ Sprite ID used for the delete yes/no selection box
	.4byte 0x00000097 
	.4byte 0x00000359
	.4byte 0x0000035D
	.4byte 0x00000354
	.4byte 0x00000357
	.4byte 0x0000035B
	.4byte 0x00000352

	.GLOBAL gUnknown_0807CA2C @ e-Reader menu palette lines
gUnknown_0807CA2C:
	.byte 0x05
	.byte 0x00 @ palette line used for add/erase level selection box
	.byte 0x06 @ palette line used for not added levels
	.byte 0x00 @ palette line used for not added levels selection
	.byte 0x07 @ palette line used for world 1 type level
	.byte 0x05 @ palette line used for world 1 type level selection
	.byte 0x08 @ palette line used for world 2 type level
	.byte 0x06 @ palette line used for world 2 type level selection
	.byte 0x09 @ palette line used for world 3 type level
	.byte 0x07 @ palette line used for world 3 type level selection
	.byte 0x0A @ palette line used for world 4 type level
	.byte 0x08 @ palette line used for world 4 type level selection
	.byte 0x0B @ palette line used for world 5 type level
	.byte 0x0D @ palette line used for world 5 type level selection
	.byte 0x0C @ palette line used for world 6 type level
	.byte 0x0E @ palette line used for world 6 type level selection
	.byte 0x0D @ palette line used for boss type level -- unused
	.byte 0x0F @ palette line used for boss type level selection -- unused
	.byte 0x00
	.byte 0x00

	.GLOBAL gUnknown_0807CA40
gUnknown_0807CA40:
	.4byte 0x00000001 @ Level text X location in tiles
	.4byte 0x00000011 @ Level text Y location in tiles
	
	.4byte 0x00000015 @ Skill text X location in tiles
	.4byte 0x00000011 @ Skill text Y location in tiles
	
	.4byte 0x00000018 @ Skill level 1 banana X location in tiles
	.4byte 0x00000011 @ Skill level 1 banana Y location in tiles
	
	.4byte 0x00000018 @ Skill level 2 banana X location in tiles
	.4byte 0x00000011 @ Skill level 2 banana Y location in tiles
	
	.4byte 0x00000018 @ Skill level 3 banana X location in tiles
	.4byte 0x00000011 @ Skill level 3 banana Y location in tiles
	
	.4byte 0x00000001
	.4byte 0x00000011
	
	.4byte 0x00000015
	.4byte 0x00000011
	
	.4byte 0x00000007 @ X position for the delete e-level sprites
	.4byte 0x00000006 @ Y position for the delete e-level sprites
	
	.4byte 0x00000007
	.4byte 0x00000003
	
	.GLOBAL gUnknown_0807CA88
gUnknown_0807CA88:
	.4byte gTextPressAToAddLevel
	.4byte gTextPressAToEraseLevel

	.GLOBAL gUnknown_0807CA90
gUnknown_0807CA90:
	.2byte 0x0044 @ X Position for the delete e-level no selection cursor
	.2byte 0x0073 @ X Position for the delete e-level yes selection cursor

	.GLOBAL gEWorldLevelCountPtr
gEWorldLevelCountPtr:
	.4byte 0x02012C00

	.GLOBAL gUnknown_0807CA98
gUnknown_0807CA98:
	.4byte 0x0201BC68

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
	.2byte 0xFFC0
	.2byte 0x0000
	.2byte 0xFFFF
	.2byte 0x0040
	.2byte 0x0000
	.2byte 0x0001
	.2byte 0x0001
	.2byte 0x0001
	.2byte 0x0000
	.2byte 0xFFFF
	.2byte 0xFFFF
	.2byte 0x0000

	.GLOBAL gUnknown_0807DC88
gUnknown_0807DC88:
	.byte 0x00
	.byte 0x00
	.byte 0x01
	.byte 0x01

	.GLOBAL gUnknown_0807DC8C
gUnknown_0807DC8C:
	.4byte 0x02038000

	.GLOBAL gUnknown_0807DC90
gUnknown_0807DC90:
	.byte 0x06
	.byte 0x05
	.byte 0x06
	.byte 0x06
	.byte 0x06
	.byte 0x06
	.byte 0x06
	.byte 0x06
	.byte 0x06
	.byte 0x06
	.byte 0x00
	.byte 0x00

	.GLOBAL gUnknown_0807DC9C
gUnknown_0807DC9C:
	.4byte 0x00000000
	.4byte gUnknown_080769D4
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte gUnknown_080769CC
	.4byte 0x00000002
	.4byte gUnknown_080769C4
	.4byte 0x00000003
	.4byte gUnknown_080769BC
	.4byte 0x0F000000
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
	
	.GLOBAL gUnknown_0807DD14
gUnknown_0807DD14:
	.4byte 0x7FFF0000
	.4byte 0x00000000

	.GLOBAL gUnknown_0807DD1C
gUnknown_0807DD1C:
	.4byte gTextErrorFlashNotDetected
	.4byte 0x00000007
	.4byte gTextErrorSaveCorrupted
	.4byte 0x00000004
	.4byte gErrorELevelCorruptedText
	.4byte 0x00000005

@ rom_8032814.c?

	.GLOBAL gPaletteIndices_0807DD34
gPaletteIndices_0807DD34:
	.4byte 37 @ World 1 palette
	.4byte 38 @ World 2 palette
	.4byte 39 @ World 3 palette
	.4byte 40 @ World 4 palette
	.4byte 41 @ World 5 palette
	.4byte 42 @ World 6 palette

	.GLOBAL gPaletteIndices_0807DD4C
gPaletteIndices_0807DD4C:
	.4byte 43 @ World 1 Plus palette
	.4byte 44 @ World 2 Plus palette
	.4byte 45 @ World 3 Plus palette
	.4byte 46 @ World 4 Plus palette
	.4byte 47 @ World 5 Plus palette
	.4byte 48 @ World 6 Plus palette

	.GLOBAL gPaletteIndices_0807DD64
gPaletteIndices_0807DD64:
	.4byte 49 @ Expert 1 palette
	.4byte 50 @ Expert 2 palette
	.4byte 51 @ Expert 3 palette
	.4byte 52 @ Expert 4 palette
	.4byte 53 @ Expert 5 palette
	.4byte 54 @ Expert 6 palette

	.GLOBAL gPaletteIndices_0807DD7C
gPaletteIndices_0807DD7C:
	.4byte 55 @ Expert 7 palette
	.4byte 56 @ Expert 8 palette
	.4byte 57 @ Expert 9 palette
	.4byte 59 @ Expert 10 palette
	.4byte 60 @ Expert 11 palette
	.4byte 61 @ Expert 12 palette

	.GLOBAL gUnknown_0807DD94
gUnknown_0807DD94:
	.INCBIN "baserom.gba", 0x7DD94, 0x81D98-0x7DD94

	.GLOBAL gPredefinedPalettes
gPredefinedPalettes:
	.INCBIN "assets/palettes/0_title_screen_bg.gbapal"
	.INCBIN "assets/palettes/0_title_screen_obj.gbapal"
	.INCBIN "assets/palettes/0_title_screen_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/0_title_screen_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/1_main_menu_bg.gbapal"
	.INCBIN "assets/palettes/1_main_menu_obj.gbapal"
	.INCBIN "assets/palettes/1_main_menu_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/1_main_menu_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/2_expert_levels_bg.gbapal"
	.INCBIN "assets/palettes/2_expert_levels_obj.gbapal"
	.INCBIN "assets/palettes/2_expert_levels_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/2_expert_levels_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/3_options_menu_bg.gbapal"
	.INCBIN "assets/palettes/3_options_menu_obj.gbapal"
	.INCBIN "assets/palettes/3_options_menu_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/3_options_menu_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/4_bg.gbapal"
	.INCBIN "assets/palettes/4_obj.gbapal"
	.INCBIN "assets/palettes/4_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/4_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/5_level_help_bg.gbapal"
	.INCBIN "assets/palettes/5_level_help_obj.gbapal"
	.INCBIN "assets/palettes/5_level_help_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/5_level_help_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/6_bg.gbapal"
	.INCBIN "assets/palettes/6_obj.gbapal"
	.INCBIN "assets/palettes/6_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/6_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/7_level_results_bg.gbapal"
	.INCBIN "assets/palettes/7_level_results_obj.gbapal"
	.INCBIN "assets/palettes/7_level_results_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/7_level_results_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/8_e_world_bg.gbapal"
	.INCBIN "assets/palettes/8_e_world_obj.gbapal"
	.INCBIN "assets/palettes/8_e_world_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/8_e_world_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/9_bg.gbapal"
	.INCBIN "assets/palettes/9_obj.gbapal"
	.INCBIN "assets/palettes/9_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/9_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/10_bg.gbapal"
	.INCBIN "assets/palettes/10_obj.gbapal"
	.INCBIN "assets/palettes/10_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/10_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/11_level_select_world_one_bg.gbapal"
	.INCBIN "assets/palettes/11_level_select_world_one_obj.gbapal"
	.INCBIN "assets/palettes/11_level_select_world_one_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/11_level_select_world_one_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/12_level_select_world_two_bg.gbapal"
	.INCBIN "assets/palettes/12_level_select_world_two_obj.gbapal"
	.INCBIN "assets/palettes/12_level_select_world_two_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/12_level_select_world_two_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/13_level_select_world_three_bg.gbapal"
	.INCBIN "assets/palettes/13_level_select_world_three_obj.gbapal"
	.INCBIN "assets/palettes/13_level_select_world_three_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/13_level_select_world_three_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/14_level_select_world_four_bg.gbapal"
	.INCBIN "assets/palettes/14_level_select_world_four_obj.gbapal"
	.INCBIN "assets/palettes/14_level_select_world_four_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/14_level_select_world_four_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/15_level_select_world_five_bg.gbapal"
	.INCBIN "assets/palettes/15_level_select_world_five_obj.gbapal"
	.INCBIN "assets/palettes/15_level_select_world_five_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/15_level_select_world_five_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/16_level_select_world_six_bg.gbapal"
	.INCBIN "assets/palettes/16_level_select_world_six_obj.gbapal"
	.INCBIN "assets/palettes/16_level_select_world_six_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/16_level_select_world_six_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/17_level_select_dk_boss_bg.gbapal"
	.INCBIN "assets/palettes/17_level_select_dk_boss_obj.gbapal"
	.INCBIN "assets/palettes/17_level_select_dk_boss_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/17_level_select_dk_boss_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/18_level_select_world_one_plus_bg.gbapal"
	.INCBIN "assets/palettes/18_level_select_world_one_plus_obj.gbapal"
	.INCBIN "assets/palettes/18_level_select_world_one_plus_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/18_level_select_world_one_plus_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/19_level_select_world_two_plus_bg.gbapal"
	.INCBIN "assets/palettes/19_level_select_world_two_plus_obj.gbapal"
	.INCBIN "assets/palettes/19_level_select_world_two_plus_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/19_level_select_world_two_plus_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/20_level_select_world_three_plus_bg.gbapal"
	.INCBIN "assets/palettes/20_level_select_world_three_plus_obj.gbapal"
	.INCBIN "assets/palettes/20_level_select_world_three_plus_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/20_level_select_world_three_plus_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/21_level_select_world_four_plus_bg.gbapal"
	.INCBIN "assets/palettes/21_level_select_world_four_plus_obj.gbapal"
	.INCBIN "assets/palettes/21_level_select_world_four_plus_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/21_level_select_world_four_plus_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/22_level_select_world_five_plus_bg.gbapal"
	.INCBIN "assets/palettes/22_level_select_world_five_plus_obj.gbapal"
	.INCBIN "assets/palettes/22_level_select_world_five_plus_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/22_level_select_world_five_plus_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/23_level_select_world_six_plus_bg.gbapal"
	.INCBIN "assets/palettes/23_level_select_world_six_plus_obj.gbapal"
	.INCBIN "assets/palettes/23_level_select_world_six_plus_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/23_level_select_world_six_plus_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/24_level_select_dk_boss_plus_bg.gbapal"
	.INCBIN "assets/palettes/24_level_select_dk_boss_plus_obj.gbapal"
	.INCBIN "assets/palettes/24_level_select_dk_boss_plus_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/24_level_select_dk_boss_plus_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/25_world_one_boss_clear_bg.gbapal"
	.INCBIN "assets/palettes/25_world_one_boss_clear_obj.gbapal"
	.INCBIN "assets/palettes/25_world_one_boss_clear_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/25_world_one_boss_clear_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/26_world_two_boss_clear_bg.gbapal"
	.INCBIN "assets/palettes/26_world_two_boss_clear_obj.gbapal"
	.INCBIN "assets/palettes/26_world_two_boss_clear_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/26_world_two_boss_clear_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/27_world_three_boss_clear_bg.gbapal"
	.INCBIN "assets/palettes/27_world_three_boss_clear_obj.gbapal"
	.INCBIN "assets/palettes/27_world_three_boss_clear_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/27_world_three_boss_clear_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/28_world_four_boss_clear_bg.gbapal"
	.INCBIN "assets/palettes/28_world_four_boss_clear_obj.gbapal"
	.INCBIN "assets/palettes/28_world_four_boss_clear_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/28_world_four_boss_clear_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/29_world_five_boss_clear_bg.gbapal"
	.INCBIN "assets/palettes/29_world_five_boss_clear_obj.gbapal"
	.INCBIN "assets/palettes/29_world_five_boss_clear_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/29_world_five_boss_clear_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/30_world_six_boss_clear_bg.gbapal"
	.INCBIN "assets/palettes/30_world_six_boss_clear_obj.gbapal"
	.INCBIN "assets/palettes/30_world_six_boss_clear_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/30_world_six_boss_clear_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/31_world_one_plus_boss_clear_bg.gbapal"
	.INCBIN "assets/palettes/31_world_one_plus_boss_clear_obj.gbapal"
	.INCBIN "assets/palettes/31_world_one_plus_boss_clear_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/31_world_one_plus_boss_clear_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/32_world_two_plus_boss_clear_bg.gbapal"
	.INCBIN "assets/palettes/32_world_two_plus_boss_clear_obj.gbapal"
	.INCBIN "assets/palettes/32_world_two_plus_boss_clear_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/32_world_two_plus_boss_clear_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/33_world_three_plus_boss_clear_bg.gbapal"
	.INCBIN "assets/palettes/33_world_three_plus_boss_clear_obj.gbapal"
	.INCBIN "assets/palettes/33_world_three_plus_boss_clear_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/33_world_three_plus_boss_clear_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/34_world_four_plus_boss_clear_bg.gbapal"
	.INCBIN "assets/palettes/34_world_four_plus_boss_clear_obj.gbapal"
	.INCBIN "assets/palettes/34_world_four_plus_boss_clear_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/34_world_four_plus_boss_clear_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/35_world_five_plus_boss_clear_bg.gbapal"
	.INCBIN "assets/palettes/35_world_five_plus_boss_clear_obj.gbapal"
	.INCBIN "assets/palettes/35_world_five_plus_boss_clear_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/35_world_five_plus_boss_clear_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/36_world_six_plus_boss_clear_bg.gbapal"
	.INCBIN "assets/palettes/36_world_six_plus_boss_clear_obj.gbapal"
	.INCBIN "assets/palettes/36_world_six_plus_boss_clear_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/36_world_six_plus_boss_clear_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/37_world_one_bg.gbapal"
	.INCBIN "assets/palettes/37_world_one_obj.gbapal"
	.INCBIN "assets/palettes/37_world_one_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/37_world_one_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/38_world_two_bg.gbapal"
	.INCBIN "assets/palettes/38_world_two_obj.gbapal"
	.INCBIN "assets/palettes/38_world_two_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/38_world_two_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/39_world_three_bg.gbapal"
	.INCBIN "assets/palettes/39_world_three_obj.gbapal"
	.INCBIN "assets/palettes/39_world_three_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/39_world_three_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/40_world_four_bg.gbapal"
	.INCBIN "assets/palettes/40_world_four_obj.gbapal"
	.INCBIN "assets/palettes/40_world_four_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/40_world_four_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/41_world_five_bg.gbapal"
	.INCBIN "assets/palettes/41_world_five_obj.gbapal"
	.INCBIN "assets/palettes/41_world_five_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/41_world_five_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/42_world_six_bg.gbapal"
	.INCBIN "assets/palettes/42_world_six_obj.gbapal"
	.INCBIN "assets/palettes/42_world_six_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/42_world_six_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/43_world_one_plus_bg.gbapal"
	.INCBIN "assets/palettes/43_world_one_plus_obj.gbapal"
	.INCBIN "assets/palettes/43_world_one_plus_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/43_world_one_plus_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/44_world_two_plus_bg.gbapal"
	.INCBIN "assets/palettes/44_world_two_plus_obj.gbapal"
	.INCBIN "assets/palettes/44_world_two_plus_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/44_world_two_plus_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/45_world_three_plus_bg.gbapal"
	.INCBIN "assets/palettes/45_world_three_plus_obj.gbapal"
	.INCBIN "assets/palettes/45_world_three_plus_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/45_world_three_plus_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/46_world_four_plus_bg.gbapal"
	.INCBIN "assets/palettes/46_world_four_plus_obj.gbapal"
	.INCBIN "assets/palettes/46_world_four_plus_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/46_world_four_plus_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/47_world_five_plus_bg.gbapal"
	.INCBIN "assets/palettes/47_world_five_plus_obj.gbapal"
	.INCBIN "assets/palettes/47_world_five_plus_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/47_world_five_plus_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/48_world_six_plus_bg.gbapal"
	.INCBIN "assets/palettes/48_world_six_plus_obj.gbapal"
	.INCBIN "assets/palettes/48_world_six_plus_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/48_world_six_plus_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/49_expert_1_bg.gbapal"
	.INCBIN "assets/palettes/49_expert_1_obj.gbapal"
	.INCBIN "assets/palettes/49_expert_1_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/49_expert_1_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/50_expert_2_bg.gbapal"
	.INCBIN "assets/palettes/50_expert_2_obj.gbapal"
	.INCBIN "assets/palettes/50_expert_2_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/50_expert_2_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/51_expert_3_bg.gbapal"
	.INCBIN "assets/palettes/51_expert_3_obj.gbapal"
	.INCBIN "assets/palettes/51_expert_3_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/51_expert_3_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/52_expert_4_bg.gbapal"
	.INCBIN "assets/palettes/52_expert_4_obj.gbapal"
	.INCBIN "assets/palettes/52_expert_4_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/52_expert_4_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/53_expert_5_bg.gbapal"
	.INCBIN "assets/palettes/53_expert_5_obj.gbapal"
	.INCBIN "assets/palettes/53_expert_5_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/53_expert_5_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/54_expert_6_bg.gbapal"
	.INCBIN "assets/palettes/54_expert_6_obj.gbapal"
	.INCBIN "assets/palettes/54_expert_6_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/54_expert_6_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/55_expert_7_bg.gbapal"
	.INCBIN "assets/palettes/55_expert_7_obj.gbapal"
	.INCBIN "assets/palettes/55_expert_7_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/55_expert_7_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/56_expert_8_bg.gbapal"
	.INCBIN "assets/palettes/56_expert_8_obj.gbapal"
	.INCBIN "assets/palettes/56_expert_8_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/56_expert_8_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/57_expert_9_bg.gbapal"
	.INCBIN "assets/palettes/57_expert_9_obj.gbapal"
	.INCBIN "assets/palettes/57_expert_9_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/57_expert_9_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/58_expert_unused_bg.gbapal"
	.INCBIN "assets/palettes/58_expert_unused_obj.gbapal"
	.INCBIN "assets/palettes/58_expert_unused_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/58_expert_unused_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/59_expert_10_bg.gbapal"
	.INCBIN "assets/palettes/59_expert_10_obj.gbapal"
	.INCBIN "assets/palettes/59_expert_10_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/59_expert_10_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/60_expert_11_bg.gbapal"
	.INCBIN "assets/palettes/60_expert_11_obj.gbapal"
	.INCBIN "assets/palettes/60_expert_11_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/60_expert_11_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/61_expert_12_bg.gbapal"
	.INCBIN "assets/palettes/61_expert_12_obj.gbapal"
	.INCBIN "assets/palettes/61_expert_12_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/61_expert_12_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/62_dk_boss_bg.gbapal"
	.INCBIN "assets/palettes/62_dk_boss_obj.gbapal"
	.INCBIN "assets/palettes/62_dk_boss_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/62_dk_boss_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/63_dk_boss_plus_bg.gbapal"
	.INCBIN "assets/palettes/63_dk_boss_plus_obj.gbapal"
	.INCBIN "assets/palettes/63_dk_boss_plus_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/63_dk_boss_plus_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/64_bg.gbapal"
	.INCBIN "assets/palettes/64_obj.gbapal"
	.INCBIN "assets/palettes/64_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/64_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/65_bg.gbapal"
	.INCBIN "assets/palettes/65_obj.gbapal"
	.INCBIN "assets/palettes/65_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/65_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/66_bg.gbapal"
	.INCBIN "assets/palettes/66_obj.gbapal"
	.INCBIN "assets/palettes/66_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/66_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/67_bg.gbapal"
	.INCBIN "assets/palettes/67_obj.gbapal"
	.INCBIN "assets/palettes/67_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/67_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/68_bg.gbapal"
	.INCBIN "assets/palettes/68_obj.gbapal"
	.INCBIN "assets/palettes/68_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/68_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/69_bg.gbapal"
	.INCBIN "assets/palettes/69_obj.gbapal"
	.INCBIN "assets/palettes/69_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/69_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/70_bg.gbapal"
	.INCBIN "assets/palettes/70_obj.gbapal"
	.INCBIN "assets/palettes/70_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/70_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/71_bg.gbapal"
	.INCBIN "assets/palettes/71_obj.gbapal"
	.INCBIN "assets/palettes/71_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/71_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/72_bg.gbapal"
	.INCBIN "assets/palettes/72_obj.gbapal"
	.INCBIN "assets/palettes/72_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/72_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/73_bg.gbapal"
	.INCBIN "assets/palettes/73_obj.gbapal"
	.INCBIN "assets/palettes/73_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/73_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/74_bg.gbapal"
	.INCBIN "assets/palettes/74_obj.gbapal"
	.INCBIN "assets/palettes/74_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/74_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/75_bg.gbapal"
	.INCBIN "assets/palettes/75_obj.gbapal"
	.INCBIN "assets/palettes/75_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/75_obj_gbplayer.gbapal"
