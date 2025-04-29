	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .data

	.GLOBAL gDKPlusLeftovers
gDKPlusLeftovers:
	.4byte 0x74 | (1 << 31)  @ unk0
	.4byte 0x2DE4  @ filler4
	.4byte gDKPlusLeftovers.bg - gDKPlusLeftovers - 4  @ gfxOffset
	.4byte 0x219C, 0, 0, 0  @ unkOffsets
	.4byte 0  @ palOffset
	.skip 0xC  @ filler20
	.2byte 0x50  @ unk2C
	.2byte 0  @ unk2E
	.2byte 0  @ bldCnt
	.2byte 0  @ bldAlpha
	.2byte 0  @ bldY
	.byte 0, 1  @ filler36
	.2byte 0x0004, 0x0108, 0x0508, 0x0908  @ bgCnt
	.4byte 0x06000000, 0x06000800, 0x06002800, 0x06004800  @ bgVramMapAddrs
	.4byte 0x06004000, 0x06008000, 0x06008000, 0x06008000  @ vramAddr50
	.byte 0xC0, 0x22, 0, 0, 0, 0, 0, 0  @ filler60
	.4byte 0  @ unk68
	.4byte 0  @ unk6C
	.byte 0x30, 0x24, 0x00, 0x00, 0x24, 0x21, 0x00, 0x00  @ unknown, some more RLE stuff?
gDKPlusLeftovers.bg:
	.INCBIN "assets/unused/DKPlusLeftoverBG.4bpp.rle"
	.INCBIN "assets/unused/DKPlusLeftoverBGUnknown.bin" 
	
	.GLOBAL gMainMenuData
gMainMenuData:
	.INCBIN "assets/menu/MainMenuData.bin"

	.GLOBAL gLevelSelectData
gLevelSelectData:
	.INCBIN "assets/level_select/LevelSelectData.bin"
	
	.GLOBAL gLevelSelectWorldOneBG 	
gLevelSelectWorldOneBG:
	.INCBIN "assets/level_select/LevelSelectWorldOneBG.bin"

	.GLOBAL gLevelSelectWorldTwoBG 	
gLevelSelectWorldTwoBG:
	.INCBIN "assets/level_select/LevelSelectWorldTwoBG.bin"	
	
	.GLOBAL gLevelSelectWorldThreeBG 	
gLevelSelectWorldThreeBG:
	.INCBIN "assets/level_select/LevelSelectWorldThreeBG.bin"

	.GLOBAL gLevelSelectWorldFourBG 	
gLevelSelectWorldFourBG:
	.INCBIN "assets/level_select/LevelSelectWorldFourBG.bin"

	.GLOBAL gLevelSelectWorldFiveBG 	
gLevelSelectWorldFiveBG:
	.INCBIN "assets/level_select/LevelSelectWorldFiveBG.bin"

	.GLOBAL gLevelSelectWorldSixBG 	
gLevelSelectWorldSixBG:
	.INCBIN "assets/level_select/LevelSelectWorldSixBG.bin"
	
	.GLOBAL gLevelSelectDKBossBG
gLevelSelectDKBossBG:
	.INCBIN "assets/level_select/LevelSelectDKBossBG.bin"

	.GLOBAL gLevelSelectPlusData
gLevelSelectPlusData:
	.INCBIN "assets/level_select_plus/LevelSelectPlusData.bin"
	
	.GLOBAL gLevelSelectWorldOnePlusBG
gLevelSelectWorldOnePlusBG:
	.INCBIN "assets/level_select_plus/LevelSelectWorldOnePlusBG.bin"
	
	.GLOBAL gLevelSelectWorldTwoPlusBG
gLevelSelectWorldTwoPlusBG:
	.INCBIN "assets/level_select_plus/LevelSelectWorldTwoPlusBG.bin"
	
	.GLOBAL gLevelSelectWorldThreePlusBG
gLevelSelectWorldThreePlusBG:
	.INCBIN "assets/level_select_plus/LevelSelectWorldThreePlusBG.bin"
	
	.GLOBAL gLevelSelectWorldFourPlusBG
gLevelSelectWorldFourPlusBG:
	.INCBIN "assets/level_select_plus/LevelSelectWorldFourPlusBG.bin"
	
	.GLOBAL gLevelSelectWorldFivePlusBG
gLevelSelectWorldFivePlusBG:
	.INCBIN "assets/level_select_plus/LevelSelectWorldFivePlusBG.bin"
	
	.GLOBAL gLevelSelectWorldSixPlusBG
gLevelSelectWorldSixPlusBG:
	.INCBIN "assets/level_select_plus/LevelSelectWorldSixPlusBG.bin"

	.GLOBAL gLevelSelectDKPlusBossBG
gLevelSelectDKPlusBossBG:
	.INCBIN "assets/level_select_plus/LevelSelectDKPlusBossBG.bin"

	.GLOBAL gExpertLevelMenuData
gExpertLevelMenuData:
	.INCBIN "assets/menu/ExpertLevelMenuData.bin"

	.GLOBAL gEWorldMenuData1
gEWorldMenuData1:
	.INCBIN "assets/menu/EWorldMenuData1.bin"

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
	.INCBIN "assets/menu/GameOverData.bin"

	.GLOBAL gWorldOneStartData
gWorldOneStartData:
	.INCBIN "baserom.gba", 0x82B4C4, 0x82EF0C-0x82B4C4

	.GLOBAL gWorldTwoStartData
gWorldTwoStartData:
	.INCBIN "baserom.gba", 0x82EF0C, 0x832F40-0x82EF0C
	
	.GLOBAL gWorldThreeStartData
gWorldThreeStartData:
	.INCBIN "baserom.gba", 0x832F40, 0x8369B4-0x832F40
	
	.GLOBAL gWorldFourStartData
gWorldFourStartData:
	.INCBIN "baserom.gba", 0x8369B4, 0x83A2FC-0x8369B4
	
	.GLOBAL gWorldFiveStartData
gWorldFiveStartData:
	.INCBIN "baserom.gba", 0x83A2FC, 0x83E274-0x83A2FC
	
	.GLOBAL gWorldSixStartData
gWorldSixStartData:
	.INCBIN "baserom.gba", 0x83E274, 0x841E1C-0x83E274

	.GLOBAL gWorldOnePlusStartData
gWorldOnePlusStartData:
	.INCBIN "baserom.gba", 0x841E1C, 0x84585C-0x841E1C

	.GLOBAL gWorldTwoPlusStartData
gWorldTwoPlusStartData:
	.INCBIN "baserom.gba", 0x84585C, 0x849A84-0x84585C
	
	.GLOBAL gWorldThreePlusStartData
gWorldThreePlusStartData:
	.INCBIN "baserom.gba", 0x849A84, 0x84DCEC-0x849A84
	
	.GLOBAL gWorldFourPlusStartData
gWorldFourPlusStartData:
	.INCBIN "baserom.gba", 0x84DCEC, 0x851C58-0x84DCEC
	
	.GLOBAL gWorldFivePlusStartData
gWorldFivePlusStartData:
	.INCBIN "baserom.gba", 0x851C58, 0x855FE0-0x851C58
	
	.GLOBAL gWorldSixPlusStartData
gWorldSixPlusStartData:
	.INCBIN "baserom.gba", 0x855FE0, 0x85A088-0x855FE0

	.GLOBAL gLevelResultsData
gLevelResultsData:
	.INCBIN "baserom.gba", 0x85A088, 0x85C4C4-0x85A088

	.GLOBAL gBonusStopArrowData
gBonusStopArrowData:
	.INCBIN "assets/bonus/BonusStopArrowData.bin"

	.GLOBAL gBonusStopArrowBackgroundData
gBonusStopArrowBackgroundData:
	.INCBIN "assets/bonus/BonusStopArrowBackground.bin"

	.GLOBAL gBonusSwapBoxesData
gBonusSwapBoxesData:
	.INCBIN "assets/bonus/BonusSwapBoxesData.bin"

	.GLOBAL gBonusSwapBoxesBackgroundData
gBonusSwapBoxesBackgroundData:
	.INCBIN "assets/bonus/BonusSwapBoxesBackground.bin"

	.GLOBAL gNintendoSoftwareTechnologyLogo
gNintendoSoftwareTechnologyLogo:
	.INCBIN "assets/NSTLogo.bin"

	.GLOBAL gTitleScreenLeftData
gTitleScreenLeftData:
	.INCBIN "assets/title/TitleScreenLeft.bin"

	.GLOBAL gTitleScreenRightData
gTitleScreenRightData:
	.INCBIN "assets/title/TitleScreenRight.bin"

	.GLOBAL gTitleMarioDKEyes
gTitleMarioDKEyes:
	.INCBIN "assets/title/TitleMarioDKEyes.bin"

	.GLOBAL gUnusedOptionsMenuData
gUnusedOptionsMenuData:
	.4byte 0x74 | (1 << 31)  @ unk0
	.4byte gUnusedOptionsMenuData.end - gUnusedOptionsMenuData  @ filler4
	.4byte gUnusedOptionsMenuData.bg - gUnusedOptionsMenuData - 4  @ gfxOffset
	.4byte 0x2F44, 0x2F90, 0x2FDC, 0x3028  @ unkOffsets
	.4byte gUnusedOptionsMenuData.pal - gUnusedOptionsMenuData - 4  @ palOffset
	.skip 0xC  @ filler20
	.2byte 0  @ unk2C
	.2byte 0xA0  @ unk2E
	.2byte 0  @ bldCnt
	.2byte 0  @ bldAlpha
	.2byte 0  @ bldY
	.byte 0, 0xF  @ filler36
	.2byte 0x0084, 0x0184, 0x0284, 0x0384  @ bgCnt
	.4byte 0x06000000, 0x06000800, 0x06001000, 0x06001800  @ bgVramMapAddrs
	.4byte 0x06004000, 0x06004000, 0x06004000, 0x06004000  @ vramAddr50
	.byte 0, 0, 0, 0, 0, 0, 0, 0  @ filler60
	.4byte 0  @ unk68
	.4byte 0  @ unk6C
	.byte 0xF4, 0x36, 0x00, 0x00, 0xCC, 0x2E, 0x00, 0x00  @ unknown
gUnusedOptionsMenuData.bg:
	.INCBIN "assets/unused/EarlyOptionsMenuBG.8bpp.rle"
	.INCBIN "assets/unused/EarlyOptionsMenu.bin", 0x2F42, 0x34F4-0x2F42
gUnusedOptionsMenuData.pal:
	.INCBIN "assets/unused/EarlyOptionsMenuBG.gbapal.bin"
	.INCBIN "assets/unused/EarlyOptionsMenu.bin", 0x36F4
gUnusedOptionsMenuData.end:

	.GLOBAL gOptionsMenuBGConfig
gOptionsMenuBGConfig:
	.INCBIN "assets/menu/OptionsMenuData.bin"

@ Beta New Game Cutscene

	.GLOBAL gUnusedToadDKCutscene
gUnusedToadDKCutscene:
	.INCBIN "baserom.gba", 0x879AB4, 0x87D89C-0x879AB4

	.GLOBAL gUnusedToadMarioCutscene
gUnusedToadMarioCutscene:
	.INCBIN "baserom.gba", 0x87D89C, 0x880D90-0x87D89C

@ Intro Cutscene

	.GLOBAL gUnknown_08880D90
gUnknown_08880D90:
	.INCBIN "baserom.gba", 0x880D90, 0x8867F0-0x880D90
	
	.GLOBAL gUnknown_088867F0
gUnknown_088867F0:
	.INCBIN "baserom.gba", 0x8867F0, 0x88C3A0-0x8867F0
	
	.GLOBAL gUnknown_0888C3A0
gUnknown_0888C3A0:
	.INCBIN "baserom.gba", 0x88C3A0, 0x891CE4-0x88C3A0
	
	.GLOBAL gUnknown_08891CE4
gUnknown_08891CE4:
	.INCBIN "baserom.gba", 0x891CE4, 0x89782C-0x891CE4
	
	.GLOBAL gUnknown_0889782C
gUnknown_0889782C:
	.INCBIN "baserom.gba", 0x89782C, 0x89BF4C-0x89782C
	
	.GLOBAL gUnknown_0889BF4C
gUnknown_0889BF4C:
	.INCBIN "baserom.gba", 0x89BF4C, 0x8A19A8-0x89BF4C
	
	.GLOBAL gUnknown_088A19A8
gUnknown_088A19A8:
	.INCBIN "baserom.gba", 0x8A19A8, 0x8A6070-0x8A19A8
	
	.GLOBAL gUnknown_088A6070
gUnknown_088A6070:
	.INCBIN "baserom.gba", 0x8A6070, 0x8AA5D8-0x8A6070
	
	.GLOBAL gUnknown_088AA5D8
gUnknown_088AA5D8:
	.INCBIN "baserom.gba", 0x8AA5D8, 0x8AEA00-0x8AA5D8
	
	.GLOBAL gUnknown_088AEA00
gUnknown_088AEA00:
	.INCBIN "baserom.gba", 0x8AEA00, 0x8B3EB0-0x8AEA00
	
	.GLOBAL gUnknown_088B3EB0
gUnknown_088B3EB0:
	.INCBIN "baserom.gba", 0x8B3EB0, 0x8B7C4C-0x8B3EB0
	
	.GLOBAL gUnknown_088B7C4C
gUnknown_088B7C4C:
	.INCBIN "baserom.gba", 0x8B7C4C, 0x8BC7FC-0x8B7C4C
	
	.GLOBAL gUnknown_088BC7FC
gUnknown_088BC7FC:
	.INCBIN "baserom.gba", 0x8BC7FC, 0x8C09AC-0x8BC7FC
	
	.GLOBAL gUnknown_088C09AC
gUnknown_088C09AC:
	.INCBIN "baserom.gba", 0x8C09AC, 0x8C53EC-0x8C09AC
	
	.GLOBAL gUnknown_088C53EC
gUnknown_088C53EC:
	.INCBIN "baserom.gba", 0x8C53EC, 0x8C962C-0x8C53EC
	
	.GLOBAL gUnknown_088C962C
gUnknown_088C962C:
	.INCBIN "baserom.gba", 0x8C962C, 0x8CE9D4-0x8C962C
	
	.GLOBAL gUnknown_088CE9D4
gUnknown_088CE9D4:
	.INCBIN "baserom.gba", 0x8CE9D4, 0x8D3034-0x8CE9D4
	
	.GLOBAL gUnknown_088D3034
gUnknown_088D3034:
	.INCBIN "baserom.gba", 0x8D3034, 0x8DA250-0x8D3034
	
	.GLOBAL gUnknown_088DA250
gUnknown_088DA250:
	.INCBIN "baserom.gba", 0x8DA250, 0x8DCB4C-0x8DA250
	
	.GLOBAL gUnknown_088DCB4C
gUnknown_088DCB4C:
	.INCBIN "baserom.gba", 0x8DCB4C, 0x8DF5A8-0x8DCB4C
	
@ New Game Cutscene

	.GLOBAL gUnknown_08DF5A8
gUnknown_08DF5A8:
	.INCBIN "baserom.gba", 0x8DF5A8, 0x8E44F4-0x8DF5A8

	.GLOBAL gUnknown_08E44F4
gUnknown_08E44F4:
	.INCBIN "baserom.gba", 0x8E44F4, 0x8E95F8-0x8E44F4

	.GLOBAL gUnknown_08E95F8
gUnknown_088E95F8:
	.INCBIN "baserom.gba", 0x8E95F8, 0x8EEC30-0x8E95F8

	.GLOBAL gUnknown_08EEC30
gUnknown_08EEC30:
	.INCBIN "baserom.gba", 0x8EEC30, 0x8F45C8-0x8EEC30

	.GLOBAL gUnknown_08F45C8
gUnknown_08F45C8:
	.INCBIN "baserom.gba", 0x8F45C8, 0x8F8B8C-0x8F45C8

	.GLOBAL gUnknown_08F8B8C
gUnknown_08F8B8C:
	.INCBIN "baserom.gba", 0x8F8B8C, 0x8FCBE4-0x8F8B8C

	.GLOBAL gUnknown_08FCBE4
gUnknown_08FCBE4:
	.INCBIN "baserom.gba", 0x8FCBE4, 0x901234-0x8FCBE4

	.GLOBAL gUnknown_0901234
gUnknown_0901234:
	.INCBIN "baserom.gba", 0x901234, 0x9052C8-0x901234

	.GLOBAL gUnknown_09052C8
gUnknown_09052C8:
	.INCBIN "baserom.gba", 0x9052C8, 0x908A30-0x9052C8
	
@ Pre DK-Boss 1
	
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
	
	.GLOBAL gUnknown_0893A2C8
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
	
@ Post Credits 1
	
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
	
@ Movie 6 (DK Boss 2 End)
	
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
	
@ Pre Credits 2
	
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
	
@ Credits 2
	
	.GLOBAL gCredits2ProducerExecAdvisor
gCredits2ProducerExecAdvisor:
	.INCBIN "baserom.gba", 0x9C605C, 0x9C9258-0x9C605C
	
	.GLOBAL gCredits2GameDirector
gCredits2GameDirector:
	.INCBIN "baserom.gba", 0x9C9258, 0x9CB340-0x9C9258
	
	.GLOBAL gCredits2GameDesignSupport
gCredits2GameDesignSupport:
	.INCBIN "baserom.gba", 0x9CB340, 0x9CDCC0-0x9CB340
	
	.GLOBAL gCredits2EngineeringDirector
gCredits2EngineeringDirector:
	.INCBIN "baserom.gba", 0x9CDCC0, 0x9D1128-0x9CDCC0
	
	.GLOBAL gCredits2Engineers
gCredits2Engineers:
	.INCBIN "baserom.gba", 0x9D1128, 0x9D44B0-0x9D1128
	
	.GLOBAL gCredits2EngineeringSpecialistManager
gCredits2EngineeringSpecialistManager:
	.INCBIN "baserom.gba", 0x9D44B0, 0x9D7414-0x9D44B0
	
	.GLOBAL gCredits2ArtDirector
gCredits2ArtDirector:
	.INCBIN "baserom.gba", 0x9D7414, 0x9D9780-0x9D7414
	
	.GLOBAL gCredits2ArtSupport
gCredits2ArtSupport:
	.INCBIN "baserom.gba", 0x9D9780, 0x9DC310-0x9D9780
	
	.GLOBAL gCredits2AudioDirectorSupport
gCredits2AudioDirectorSupport:
	.INCBIN "baserom.gba", 0x9DC310, 0x9DF098-0x9DC310
	
	.GLOBAL gCredits2NetworkOfficeManagerAssistant
gCredits2NetworkOfficeManagerAssistant:
	.INCBIN "baserom.gba", 0x9DF098, 0x9E2730-0x9DF098
	
	.GLOBAL gCredits2GameDesignAssociate
gCredits2GameDesignAssociate:
	.INCBIN "baserom.gba", 0x9E2730, 0x9E45A0-0x9E2730
	
	.GLOBAL gCredits2NintendoCoLtd
gCredits2NintendoCoLtd:
	.INCBIN "baserom.gba", 0x9E45A0, 0x9E4F74-0x9E45A0
	
	.GLOBAL gCredits2ExecutiveProducer
gCredits2ExecutiveProducer:
	.INCBIN "baserom.gba", 0x9E4F74, 0x9E7DB4-0x9E4F74
	
	.GLOBAL gCredits2AssociateProducers
gCredits2AssociateProducers:
	.INCBIN "baserom.gba", 0x9E7DB4, 0x9EA140-0x9E7DB4
	
	.GLOBAL gCredits2ArtSupervisor
gCredits2ArtSupervisor:
	.INCBIN "baserom.gba", 0x9EA140, 0x9EC068-0x9EA140
	
	.GLOBAL gCredits2Advisors
gCredits2Advisors:
	.INCBIN "baserom.gba", 0x9EC068, 0x9EEDC4-0x9EC068
	
	.GLOBAL gCredits2NOAInc
gCredits2NOA:
	.INCBIN "baserom.gba", 0x9EEDC4, 0x9EF814-0x9EEDC4
	
	.GLOBAL gCredits2ProductCoordinators
gCredits2ProductCoordinators:
	.INCBIN "baserom.gba", 0x9EF814, 0x9F20A8-0x9EF814
	
	.GLOBAL gCredits2PackagingManualArt
gCredits2PackagingManualArt:
	.INCBIN "baserom.gba", 0x9F20A8, 0x9F4F24-0x9F20A8
	
	.GLOBAL gCredits2NOAProductTesting
gCredits2NOAProductTesting:
	.INCBIN "baserom.gba", 0x9F4F24, 0x9F89F0-0x9F4F24
	
	.GLOBAL gCredits2SpecialThanks1
gCredits2SpecialThanks1:
	.INCBIN "baserom.gba", 0x9F89F0, 0x9FB964-0x9F89F0
	
	.GLOBAL gCredits2SpecialThanks2
gCredits2SpecialThanks2:
	.INCBIN "baserom.gba", 0x9FB964, 0x9FEBEC-0x9FB964
	
	.GLOBAL gCredits2SpecialThanks3
gCredits2SpecialThanks3:
	.INCBIN "baserom.gba", 0x9FEBEC, 0xA0287C-0x9FEBEC
	
	.GLOBAL gCredits2VoiceOfMario
gCredits2VoiceOfMario:
	.INCBIN "baserom.gba", 0xA0287C, 0xA056A4-0xA0287C
	
	.GLOBAL gCredits2ThanksForPlaying
gCredits2ThanksForPlaying:
	.INCBIN "baserom.gba", 0xA056A4, 0xA0C18C-0xA056A4
	
	.GLOBAL gCredits2EndAllRightsReserved
gCredits2EndAllRightsReserved:
	.INCBIN "baserom.gba", 0xA0C18C, 0xA0D0B4-0xA0C18C
	
@ Credits 1
	
	.GLOBAL gCreditsNSTCorp
gCreditsNSTCorp:
	.INCBIN "baserom.gba", 0xA0D0B4, 0xA0DD50-0xA0D0B4
	
	.GLOBAL gCreditsProducerExecAdvisor
gCreditsProducerExecAdvisor:
	.INCBIN "baserom.gba", 0xA0DD50, 0xA0ED38-0xA0DD50
	
	.GLOBAL gCreditsGameDirector
gCreditsGameDirector:
	.INCBIN "baserom.gba", 0xA0ED38, 0xA0FA50-0xA0ED38
	
	.GLOBAL gCreditsGameDesignSupport
gCreditsGameDesignSupport:
	.INCBIN "baserom.gba", 0xA0FA50, 0xA10B78-0xA0FA50
	
	.GLOBAL gCreditsEngineeringDirector
gCreditsEngineeringDirector:
	.INCBIN "baserom.gba", 0xA10B78, 0xA118C0-0xA10B78
	
	.GLOBAL gCreditsEngineers
gCreditsEngineers:
	.INCBIN "baserom.gba", 0xA118C0, 0xA125F0-0xA118C0

	.GLOBAL gCreditsEngineeringSpecialistManager
gCreditsEngineeringSpecialistManager:
	.INCBIN "baserom.gba", 0xA125F0, 0xA13688-0xA125F0

	.GLOBAL gCreditsArtDirector
gCreditsArtDirector:
	.INCBIN "baserom.gba", 0xA13688, 0xA14340-0xA13688

	.GLOBAL gCreditsArtSupport
gCreditsArtSupport:
	.INCBIN "baserom.gba", 0xA14340, 0xA15554-0xA14340

	.GLOBAL gCreditsAudioDirectorSupport
gCreditsAudioDirectorSupport:
	.INCBIN "baserom.gba", 0xA15554, 0xA166E8-0xA15554

	.GLOBAL gCreditsNetworkOfficeManagerAssistant
gCreditsNetworkOfficeManagerAssistant:
	.INCBIN "baserom.gba", 0xA166E8, 0xA179FC-0xA166E8

	.GLOBAL gCreditsGameDesignAssociate
gCreditsGameDesignAssociate:
	.INCBIN "baserom.gba", 0xA179FC, 0xA187B0-0xA179FC

	.GLOBAL gCreditsNintendoCoLtd
gCreditsNintendoCoLtd:
	.INCBIN "baserom.gba", 0xA187B0, 0xA190EC-0xA187B0

	.GLOBAL gCreditsExecutiveProducer
gCreditsExecutiveProducer:
	.INCBIN "baserom.gba", 0xA190EC, 0xA1A0A0-0xA190EC

	.GLOBAL gCreditsAssociateProducers
gCreditsAssociateProducers:
	.INCBIN "baserom.gba", 0xA1A0A0, 0xA1AFF4-0xA1A0A0

	.GLOBAL gCreditsArtSupervisor
gCreditsArtSupervisor:
	.INCBIN "baserom.gba", 0xA1AFF4, 0xA1BC60-0xA1AFF4

	.GLOBAL gCreditsAdvisors
gCreditsAdvisors:
	.INCBIN "baserom.gba", 0xA1BC60, 0xA1CA4C-0xA1BC60

	.GLOBAL gCreditsNOAInc
gCreditsNOA:
	.INCBIN "baserom.gba", 0xA1CA4C, 0xA1D3C8-0xA1CA4C

	.GLOBAL gCreditsProductCoordinators
gCreditsProductCoordinators:
	.INCBIN "baserom.gba", 0xA1D3C8, 0xA1E78C-0xA1D3C8

	.GLOBAL gCreditsPackagingManualArt
gCreditsPackagingManualArt:
	.INCBIN "baserom.gba", 0xA1E78C, 0xA1F8CC-0xA1E78C

	.GLOBAL gCreditsNOAProductTesting
gCreditsNOAProductTesting:
	.INCBIN "baserom.gba", 0xA1F8CC, 0xA21124-0xA1F8CC

	.GLOBAL gCreditsSpecialThanks1
gCreditsSpecialThanks1:
	.INCBIN "baserom.gba", 0xA21124, 0xA22BCC-0xA21124

	.GLOBAL gCreditsSpecialThanks2
gCreditsSpecialThanks2:
	.INCBIN "baserom.gba", 0xA22BCC, 0xA24620-0xA22BCC

	.GLOBAL gCreditsSpecialThanks3
gCreditsSpecialThanks3:
	.INCBIN "baserom.gba", 0xA24620, 0xA2603C-0xA24620

	.GLOBAL gCreditsVoiceOfMario
gCreditsVoiceOfMario:
	.INCBIN "baserom.gba", 0xA2603C, 0xA26F88-0xA2603C

	.GLOBAL gCreditsThanksForPlaying
gCreditsThanksForPlaying:
	.INCBIN "baserom.gba", 0xA26F88, 0xA27880-0xA26F88

	.GLOBAL gCreditsAllRightsReserved
gCreditsAllRightsReserved:
	.INCBIN "baserom.gba", 0xA27880, 0xA28710-0xA27880
	
@ Unused Plus Worlds Unlocked Screen	

	.GLOBAL gUnusedPlusWorldsUnlocked
gUnusedPlusWorldsUnlocked:
	.INCBIN "assets/cutscene/UnusedPlusWorldsUnlocked.bin"

@ World Data

	.GLOBAL gWorldOneData
gWorldOneData:
	.INCBIN "assets/level/data/WorldOneData.bin"

	.GLOBAL gWorldTwoData
gWorldTwoData:
	.INCBIN "assets/level/data/WorldTwoData.bin"

	.GLOBAL gWorldThreeData
gWorldThreeData:
	.INCBIN "assets/level/data/WorldThreeData.bin"

	.GLOBAL gWorldFourData
gWorldFourData:
	.INCBIN "assets/level/data/WorldFourData.bin"

	.GLOBAL gWorldFiveData
gWorldFiveData:
	.4byte 0x74 | (1 << 31)  @ unk0
	.4byte gWorldFiveData.end - gWorldFiveData  @ filler4
	.4byte gWorldFiveData.bg - gWorldFiveData - 4  @ gfxOffset
	.4byte 0, 0x2DFC, 0, 0  @ unkOffsets
	.4byte 0  @ palOffset
	.skip 0xC  @ filler20
	.2byte 0  @ unk2C
	.2byte 0x0200  @ unk2E
	.2byte 0  @ bldCnt
	.2byte 0  @ bldAlpha
	.2byte 0  @ bldY
	.byte 0, 2  @ filler36
	.2byte 0x000C, 0x810E, 0x0506, 0x0906  @ bgCnt
	.4byte 0x06000000, 0x06000800, 0x06002800, 0x06004800  @ bgVramMapAddrs
	.4byte 0x0600C000, 0x0600C000, 0x06004000, 0x06004000  @ vramAddr50
	.byte 0x24, 0x2E, 0, 0, 0, 0, 0, 0  @ filler60
	.4byte 0  @ unk68
	.4byte 0  @ unk6C
	.byte 0xDC, 0x44, 0x00, 0x00, 0x84, 0x2D, 0x00, 0x00  @ unknown
gWorldFiveData.bg:
	.INCBIN "assets/level/data/WorldFiveBG.4bpp.rle"
	.INCBIN "assets/level/data/WorldFiveUnknown.bin"
gWorldFiveData.end:

	.GLOBAL gWorldSixData
gWorldSixData:
	.INCBIN "assets/level/data/WorldSixData.bin"

	.GLOBAL gBossLevelData
gBossLevelData:
	.INCBIN "assets/level/data/BossLevelData.bin"
	
@ Level Backgrounds

	.GLOBAL gWorldOneHorizontalBG
gWorldOneHorizontalBG:
	.INCBIN "assets/level/backgrounds/world_one/world_one_horizontal.bin"

	.GLOBAL gWorldOneVerticalBG
gWorldOneVerticalBG:
	.INCBIN "assets/level/backgrounds/world_one/world_one_vertical.bin"

	.GLOBAL gWorldOneMiniMarioBG
gWorldOneMiniMarioBG:
	.INCBIN  "assets/level/backgrounds/world_one/world_one_mini_mario.bin"

	.GLOBAL gWorldOneBossBG
gWorldOneBossBG:
	.INCBIN "assets/level/backgrounds/world_one/world_one_boss.bin"

	.GLOBAL gWorldTwoHorizontalBG
gWorldTwoHorizontalBG:
	.INCBIN "assets/level/backgrounds/world_two/world_two_horizontal.bin"

	.GLOBAL gWorldTwoVerticalBG
gWorldTwoVerticalBG:
	.INCBIN "assets/level/backgrounds/world_two/world_two_vertical.bin"

	.GLOBAL gWorldTwoMiniMarioBG
gWorldTwoMiniMarioBG:
	.INCBIN "assets/level/backgrounds/world_two/world_two_mini_mario.bin"

	.GLOBAL gWorldTwoBossBG
gWorldTwoBossBG:
	.INCBIN "assets/level/backgrounds/world_two/world_two_boss.bin"

	.GLOBAL gWorldThreeHorizontalBG
gWorldThreeHorizontalBG:
	.INCBIN "assets/level/backgrounds/world_three/world_three_horizontal.bin"

	.GLOBAL gWorldThreeVerticalBG
gWorldThreeVerticalBG:
	.INCBIN "assets/level/backgrounds/world_three/world_three_vertical.bin"

	.GLOBAL gWorldThreeMiniMarioBG
gWorldThreeMiniMarioBG:
	.INCBIN "assets/level/backgrounds/world_three/world_three_mini_mario.bin"

	.GLOBAL gWorldThreeBossBG
gWorldThreeBossBG:
	.INCBIN "assets/level/backgrounds/world_three/world_three_boss.bin"

	.GLOBAL gWorldFourHorizontalBG
gWorldFourHorizontalBG:
	.INCBIN "assets/level/backgrounds/world_four/world_four_horizontal.bin"

	.GLOBAL gWorldFourVerticalBG
gWorldFourVerticalBG:
	.INCBIN "assets/level/backgrounds/world_four/world_four_vertical.bin"

	.GLOBAL gWorldFourMiniMarioBG
gWorldFourMiniMarioBG:
	.INCBIN "assets/level/backgrounds/world_four/world_four_mini_mario.bin"

	.GLOBAL gWorldFourBossBG
gWorldFourBossBG:
	.INCBIN "assets/level/backgrounds/world_four/world_four_boss.bin"

	.GLOBAL gWorldFiveHorizontalBG
gWorldFiveHorizontalBG:
	.INCBIN "assets/level/backgrounds/world_five/world_five_horizontal.bin"

	.GLOBAL gWorldFiveVerticalBG
gWorldFiveVerticalBG:
	.INCBIN "assets/level/backgrounds/world_five/world_five_vertical.bin"

	.GLOBAL gWorldFiveMiniMarioBG
gWorldFiveMiniMarioBG:
	.INCBIN "assets/level/backgrounds/world_five/world_five_mini_mario.bin"

	.GLOBAL gWorldFiveBossBG
gWorldFiveBossBG:
	.INCBIN "assets/level/backgrounds/world_five/world_five_boss.bin"

	.GLOBAL gWorldSixHorizontalBG
gWorldSixHorizontalBG:
	.INCBIN "assets/level/backgrounds/world_six/world_six_horizontal.bin"

	.GLOBAL gWorldSixVerticalBG
gWorldSixVerticalBG:
	.INCBIN "assets/level/backgrounds/world_six/world_six_vertical.bin"

	.GLOBAL gWorldSixMiniMarioBG
gWorldSixMiniMarioBG:
	.INCBIN "assets/level/backgrounds/world_six/world_six_mini_mario.bin"

	.GLOBAL gWorldSixBossBG
gWorldSixBossBG:
	.INCBIN "assets/level/backgrounds/world_six/world_six_boss.bin"

	.GLOBAL gDKBossBG
gDKBossBG:
	.INCBIN "assets/level/backgrounds/boss/dk_boss.bin"

	.GLOBAL gDKBossPlusBG
gDKBossPlusBG:
	.INCBIN "assets/level/backgrounds/boss/dk_boss_plus.bin"

	.GLOBAL gWorldOnePlusHorizontalBG
gWorldOnePlusHorizontalBG:
	.INCBIN "assets/level/backgrounds/world_one/world_one_plus_horizontal.bin"

	.GLOBAL gWorldOnePlusVerticalBG
gWorldOnePlusVerticalBG:
	.INCBIN "assets/level/backgrounds/world_one/world_one_plus_vertical.bin"

	.GLOBAL gWorldTwoPlusHorizontalBG
gWorldTwoPlusHorizontalBG:
	.INCBIN "assets/level/backgrounds/world_two/world_two_plus_horizontal.bin"

	.GLOBAL gWorldTwoPlusVerticalBG
gWorldTwoPlusVerticalBG:
	.INCBIN "assets/level/backgrounds/world_two/world_two_plus_vertical.bin"

	.GLOBAL gWorldThreePlusHorizontalBG
gWorldThreePlusHorizontalBG:
	.INCBIN "assets/level/backgrounds/world_three/world_three_plus_horizontal.bin"

	.GLOBAL gWorldThreePlusVerticalBG
gWorldThreePlusVerticalBG:
	.INCBIN "assets/level/backgrounds/world_three/world_three_plus_vertical.bin"

	.GLOBAL gWorldThreePlusBossBG
gWorldThreePlusBossBG:
	.INCBIN "assets/level/backgrounds/world_three/world_three_plus_boss.bin"

	.GLOBAL gWorldFourPlusHorizontalBG
gWorldFourPlusHorizontalBG:
	.INCBIN "assets/level/backgrounds/world_four/world_four_plus_horizontal.bin"

	.GLOBAL gWorldFourPlusVerticalBG
gWorldFourPlusVerticalBG:
	.INCBIN "assets/level/backgrounds/world_four/world_four_plus_vertical.bin"

	.GLOBAL gWorldFivePlusHorizontalBG
gWorldFivePlusHorizontalBG:
	.INCBIN "assets/level/backgrounds/world_five/world_five_plus_horizontal.bin"

	.GLOBAL gWorldFivePlusVerticalBG
gWorldFivePlusVerticalBG:
	.INCBIN "assets/level/backgrounds/world_five/world_five_plus_vertical.bin"

	.GLOBAL gWorldSixPlusHorizontalBG
gWorldSixPlusHorizontalBG:
	.INCBIN "assets/level/backgrounds/world_six/world_six_plus_horizontal.bin"

	.GLOBAL gWorldSixPlusVerticalBG
gWorldSixPlusVerticalBG:
	.INCBIN "assets/level/backgrounds/world_six/world_six_plus_vertical.bin"
	
@ Related to level intro camera panning/side of level the player enters from

	.GLOBAL gUnknown_08AF43E4
gUnknown_08AF43E4:
	.INCBIN "assets/level/gUnknown_08AF43E4.bin"
	
@ Levels

	.GLOBAL gLevel11A
gLevel11A:
	INCBIN_LEVEL "assets/level/level_data/world_one/1_1A.bin.lz"
	
	.GLOBAL gLevel11B
gLevel11B:
	INCBIN_LEVEL "assets/level/level_data/world_one/1_1B.bin.lz"
	
	.GLOBAL gLevel11Tutorial
gLevel11Tutorial:
	INCBIN_LEVEL "assets/level/level_data/world_one/1_1_tutorial.bin.lz.orig"
	
	
	.GLOBAL gLevel12A
gLevel12A:
	INCBIN_LEVEL "assets/level/level_data/world_one/1_2A.bin.lz"
	
	.GLOBAL gLevel12B
gLevel12B:
	INCBIN_LEVEL "assets/level/level_data/world_one/1_2B.bin.lz"
	
	.GLOBAL gLevel12Tutorial
gLevel12Tutorial:
	INCBIN_LEVEL "assets/level/level_data/world_one/1_2_tutorial.bin.lz.orig"
	

	.GLOBAL gLevel13A
gLevel13A:
	INCBIN_LEVEL "assets/level/level_data/world_one/1_3A.bin.lz"
	
	.GLOBAL gLevel13B
gLevel13B:
	INCBIN_LEVEL "assets/level/level_data/world_one/1_3B.bin.lz"
	
	.GLOBAL gLevel13Tutorial
gLevel13Tutorial:
	INCBIN_LEVEL "assets/level/level_data/world_one/1_3_tutorial.bin.lz.orig"
	
	
	.GLOBAL gLevel14A
gLevel14A:
	INCBIN_LEVEL "assets/level/level_data/world_one/1_4A.bin.lz"
	
	.GLOBAL gLevel14B
gLevel14B:
	INCBIN_LEVEL "assets/level/level_data/world_one/1_4B.bin.lz"
	
	.GLOBAL gLevel14Tutorial
gLevel14Tutorial:
	INCBIN_LEVEL "assets/level/level_data/world_one/1_4_tutorial.bin.lz.orig"
	
	
	.GLOBAL gLevel15A
gLevel15A:
	INCBIN_LEVEL "assets/level/level_data/world_one/1_5A.bin.lz"
	
	.GLOBAL gLevel15B
gLevel15B:
	INCBIN_LEVEL "assets/level/level_data/world_one/1_5B.bin.lz"
	
	.GLOBAL gLevel15Tutorial
gLevel15Tutorial:
	INCBIN_LEVEL "assets/level/level_data/world_one/1_5_tutorial.bin.lz.orig"
	
	
	.GLOBAL gLevel16A
gLevel16A:
	INCBIN_LEVEL "assets/level/level_data/world_one/1_6A.bin.lz"
	
	.GLOBAL gLevel16B
gLevel16B:
	INCBIN_LEVEL "assets/level/level_data/world_one/1_6B.bin.lz"

	.GLOBAL gLevel16Tutorial
gLevel16Tutorial:
	INCBIN_LEVEL "assets/level/level_data/world_one/1_6_tutorial.bin.lz.orig"


	.GLOBAL gLevel1MM
gLevel1MM:
	INCBIN_LEVEL "assets/level/level_data/world_one/1_mm.bin.lz"
	
	.GLOBAL gLevel1DK
gLevel1DK:
	INCBIN_LEVEL "assets/level/level_data/world_one/1_DK.bin.lz"

	.GLOBAL gLevel1MMTutorial
gLevel1MMTutorial:
	INCBIN_LEVEL "assets/level/level_data/world_one/1_mm_tutorial.bin.lz.orig"
	
@ World 2
	
	.GLOBAL gLevel21A
gLevel21A:
	INCBIN_LEVEL "assets/level/level_data/world_two/2_1A.bin.lz"

	.GLOBAL gLevel21B
gLevel21B:
	INCBIN_LEVEL "assets/level/level_data/world_two/2_1B.bin.lz"
	
	.GLOBAL gLevel21Tutorial
gLevel21Tutorial:
	INCBIN_LEVEL "assets/level/level_data/world_two/2_1_tutorial.bin.lz"


	.GLOBAL gLevel22A
gLevel22A:
	INCBIN_LEVEL "assets/level/level_data/world_two/2_2A.bin.lz"
	
	.GLOBAL gLevel22B
gLevel22B:
	INCBIN_LEVEL "assets/level/level_data/world_two/2_2B.bin.lz"

	.GLOBAL gLevel22Tutorial
gLevel22Tutorial:
	INCBIN_LEVEL "assets/level/level_data/world_two/2_2_tutorial.bin.lz"
	

	.GLOBAL gLevel23A
gLevel23A:
	INCBIN_LEVEL "assets/level/level_data/world_two/2_3A.bin.lz"
	
	.GLOBAL gLevel23B
gLevel23B:
	INCBIN_LEVEL "assets/level/level_data/world_two/2_3B.bin.lz"

	.GLOBAL gLevel23Tutorial
gLevel23Tutorial:
	INCBIN_LEVEL "assets/level/level_data/world_two/2_3_tutorial.bin.lz"
	
	
	.GLOBAL gLevel24A
gLevel24A:
	INCBIN_LEVEL "assets/level/level_data/world_two/2_4A.bin.lz"
	
	.GLOBAL gLevel24B
gLevel24B:
	INCBIN_LEVEL "assets/level/level_data/world_two/2_4B.bin.lz"

	.GLOBAL gLevel24Tutorial
gLevel24Tutorial:
	INCBIN_LEVEL "assets/level/level_data/world_two/2_4_tutorial.bin.lz"
	
	
	.GLOBAL gLevel25A
gLevel25A:
	INCBIN_LEVEL "assets/level/level_data/world_two/2_5A.bin.lz"
	
	.GLOBAL gLevel25B
gLevel25B:
	INCBIN_LEVEL "assets/level/level_data/world_two/2_5B.bin.lz"

	.GLOBAL gLevel25Tutorial
gLevel25Tutorial:
	INCBIN_LEVEL "assets/level/level_data/world_two/2_5_tutorial.bin.lz.orig"


	.GLOBAL gLevel26A
gLevel26A:
	INCBIN_LEVEL "assets/level/level_data/world_two/2_6A.bin.lz"
	
	.GLOBAL gLevel26B
gLevel26B:
	INCBIN_LEVEL "assets/level/level_data/world_two/2_6B.bin.lz"

	.GLOBAL gLevel26Tutorial
gLevel26Tutorial:
	INCBIN_LEVEL "assets/level/level_data/world_two/2_6_tutorial.bin.lz"
	
	
	.GLOBAL gLevel2MM
gLevel2MM:
	INCBIN_LEVEL "assets/level/level_data/world_two/2_mm.bin.lz"
	
	.GLOBAL gLevel2DK
gLevel2DK:
	INCBIN_LEVEL "assets/level/level_data/world_two/2_DK.bin.lz"

	.GLOBAL gLevel2MMTutorial
gLevel2MMTutorial:
	INCBIN_LEVEL "assets/level/level_data/world_two/2_mm_tutorial.bin.lz"
	
@ World 3

	.GLOBAL gLevel31A
gLevel31A:
	INCBIN_LEVEL "assets/level/level_data/world_three/3_1A.bin.lz"
	
	.GLOBAL gLevel31B
gLevel31B:
	INCBIN_LEVEL "assets/level/level_data/world_three/3_1B.bin.lz"

	.GLOBAL gLevel31Tutorial
gLevel31Tutorial:
	INCBIN_LEVEL "assets/level/level_data/world_three/3_1_tutorial.bin.lz"
	

	.GLOBAL gLevel32A
gLevel32A:
	INCBIN_LEVEL "assets/level/level_data/world_three/3_2A.bin"
	
	.GLOBAL gLevel32B
gLevel32B:
	INCBIN_LEVEL "assets/level/level_data/world_three/3_2B.bin.lz"

	.GLOBAL gLevel32Tutorial
gLevel32Tutorial:
	INCBIN_LEVEL "assets/level/level_data/world_three/3_2_tutorial.bin.lz"
	

	.GLOBAL gLevel33A
gLevel33A:
	INCBIN_LEVEL "assets/level/level_data/world_three/3_3A.bin.lz"
	
	.GLOBAL gLevel33B
gLevel33B:
	INCBIN_LEVEL "assets/level/level_data/world_three/3_3B.bin.lz"

	.GLOBAL gLevel33Tutorial
gLevel33Tutorial:
	INCBIN_LEVEL "assets/level/level_data/world_three/3_3_tutorial.bin.lz"
	
	
	.GLOBAL gLevel34A
gLevel34A:
	INCBIN_LEVEL "assets/level/level_data/world_three/3_4A.bin.lz"
	
	.GLOBAL gLevel34B
gLevel34B:
	INCBIN_LEVEL "assets/level/level_data/world_three/3_4B.bin.lz"

	.GLOBAL gLevel34Tutorial
gLevel34Tutorial:
	INCBIN_LEVEL "assets/level/level_data/world_three/3_4_tutorial.bin.lz"

	
	.GLOBAL gLevel35A
gLevel35A:
	INCBIN_LEVEL "assets/level/level_data/world_three/3_5A.bin.lz"
	
	.GLOBAL gLevel35B
gLevel35B:
	INCBIN_LEVEL "assets/level/level_data/world_three/3_5B.bin.lz"

	.GLOBAL gLevel35Tutorial
gLevel35Tutorial:
	INCBIN_LEVEL "assets/level/level_data/world_three/3_5_tutorial.bin.lz"
	

	.GLOBAL gLevel36A
gLevel36A:
	INCBIN_LEVEL "assets/level/level_data/world_three/3_6A.bin.lz"
	
	.GLOBAL gLevel36B
gLevel36B:
	INCBIN_LEVEL "assets/level/level_data/world_three/3_6B.bin.lz"

	.GLOBAL gLevel36Tutorial
gLevel36Tutorial:
	INCBIN_LEVEL "assets/level/level_data/world_three/3_6_tutorial.bin.lz"


	.GLOBAL gLevel3MM
gLevel3MM:
	INCBIN_LEVEL "assets/level/level_data/world_three/3_mm.bin.lz"
	
	.GLOBAL gLevel3DK
gLevel3DK:
	INCBIN_LEVEL "assets/level/level_data/world_three/3_DK.bin.lz"

	.GLOBAL gLevel3MMTutorial
gLevel3MMTutorial:
	INCBIN_LEVEL "assets/level/level_data/world_three/3_mm_tutorial.bin.lz"
	
@ World 4	

	.GLOBAL gLevel41A
gLevel41A:
	INCBIN_LEVEL "assets/level/level_data/world_four/4_1A.bin.lz"
	
	.GLOBAL gLevel41B
gLevel41B:
	INCBIN_LEVEL "assets/level/level_data/world_four/4_1B.bin.lz"

	.GLOBAL gLevel41Tutorial
gLevel41Tutorial:
	INCBIN_LEVEL "assets/level/level_data/world_four/4_1_tutorial.bin.lz"
	

	.GLOBAL gLevel42A
gLevel42A:
	INCBIN_LEVEL "assets/level/level_data/world_four/4_2A.bin.lz"
	
	.GLOBAL gLevel42B
gLevel42B:
	INCBIN_LEVEL "assets/level/level_data/world_four/4_2B.bin.lz"

	.GLOBAL gLevel42Tutorial
gLevel42Tutorial:
	INCBIN_LEVEL "assets/level/level_data/world_four/4_2_tutorial.bin.lz"
	

	.GLOBAL gLevel43A
gLevel43A:
	INCBIN_LEVEL "assets/level/level_data/world_four/4_3A.bin.lz"
	
	.GLOBAL gLevel43B
gLevel43B:
	INCBIN_LEVEL "assets/level/level_data/world_four/4_3B.bin.lz"

	.GLOBAL gLevel43Tutorial
gLevel43Tutorial:
	INCBIN_LEVEL "assets/level/level_data/world_four/4_3_tutorial.bin.lz.orig"
	
	
	.GLOBAL gLevel44A
gLevel44A:
	INCBIN_LEVEL "assets/level/level_data/world_four/4_4A.bin.lz"
	
	.GLOBAL gLevel44B
gLevel44B:
	INCBIN_LEVEL "assets/level/level_data/world_four/4_4B.bin.lz"

	.GLOBAL gLevel44Tutorial
gLevel44Tutorial:
	INCBIN_LEVEL "assets/level/level_data/world_four/4_4_tutorial.bin.lz.orig"

	
	.GLOBAL gLevel45A
gLevel45A:
	INCBIN_LEVEL "assets/level/level_data/world_four/4_5A.bin.lz"
	
	.GLOBAL gLevel45B
gLevel45B:
	INCBIN_LEVEL "assets/level/level_data/world_four/4_5B.bin.lz"

	.GLOBAL gLevel45Tutorial
gLevel45Tutorial:
	INCBIN_LEVEL "assets/level/level_data/world_four/4_5_tutorial.bin.lz.orig"
	

	.GLOBAL gLevel46A
gLevel46A:
	INCBIN_LEVEL "assets/level/level_data/world_four/4_6A.bin.lz"
	
	.GLOBAL gLevel46B
gLevel46B:
	INCBIN_LEVEL "assets/level/level_data/world_four/4_6B.bin.lz"

	.GLOBAL gLevel46Tutorial
gLevel46Tutorial:
	INCBIN_LEVEL "assets/level/level_data/world_four/4_6_tutorial.bin.lz.orig"


	.GLOBAL gLevel4MM
gLevel4MM:
	INCBIN_LEVEL "assets/level/level_data/world_four/4_mm.bin.lz"
	
	.GLOBAL gLevel4DK
gLevel4DK:
	INCBIN_LEVEL "assets/level/level_data/world_four/4_DK.bin.lz"

	.GLOBAL gLevel4MMTutorial
gLevel4MMTutorial:
	INCBIN_LEVEL "assets/level/level_data/world_four/4_mm_tutorial.bin.lz.orig"
	
@ World 5

	.GLOBAL gLevel51A
gLevel51A:
	INCBIN_LEVEL "assets/level/level_data/world_five/5_1A.bin.lz"
	
	.GLOBAL gLevel51B
gLevel51B:
	INCBIN_LEVEL "assets/level/level_data/world_five/5_1B.bin.lz"

	.GLOBAL gLevel51Tutorial
gLevel51Tutorial:
	INCBIN_LEVEL "assets/level/level_data/world_five/5_1_tutorial.bin.lz.orig"
	

	.GLOBAL gLevel52A
gLevel52A:
	INCBIN_LEVEL "assets/level/level_data/world_five/5_2A.bin.lz"
	
	.GLOBAL gLevel52B
gLevel52B:
	INCBIN_LEVEL "assets/level/level_data/world_five/5_2B.bin.lz"

	.GLOBAL gLevel52Tutorial
gLevel52Tutorial:
	INCBIN_LEVEL "assets/level/level_data/world_five/5_2_tutorial.bin.lz.orig"
	

	.GLOBAL gLevel53A
gLevel53A:
	INCBIN_LEVEL "assets/level/level_data/world_five/5_3A.bin.lz"
	
	.GLOBAL gLevel53B
gLevel53B:
	INCBIN_LEVEL "assets/level/level_data/world_five/5_3B.bin.lz"

	.GLOBAL gLevel53Tutorial
gLevel53Tutorial:
	INCBIN_LEVEL "assets/level/level_data/world_five/5_3_tutorial.bin.lz.orig"
	
	
	.GLOBAL gLevel54A
gLevel54A:
	INCBIN_LEVEL "assets/level/level_data/world_five/5_4A.bin.lz"
	
	.GLOBAL gLevel54B
gLevel54B:
	INCBIN_LEVEL "assets/level/level_data/world_five/5_4B.bin.lz"

	.GLOBAL gLevel54Tutorial
gLevel54Tutorial:
	INCBIN_LEVEL "assets/level/level_data/world_five/5_4_tutorial.bin.lz.orig"

	
	.GLOBAL gLevel55A
gLevel55A:
	INCBIN_LEVEL "assets/level/level_data/world_five/5_5A.bin.lz"
	
	.GLOBAL gLevel55B
gLevel55B:
	INCBIN_LEVEL "assets/level/level_data/world_five/5_5B.bin.lz"

	.GLOBAL gLevel55Tutorial
gLevel55Tutorial:
	INCBIN_LEVEL "assets/level/level_data/world_five/5_5_tutorial.bin.lz.orig"
	

	.GLOBAL gLevel56A
gLevel56A:
	INCBIN_LEVEL "assets/level/level_data/world_five/5_6A.bin.lz"
	
	.GLOBAL gLevel56B
gLevel56B:
	INCBIN_LEVEL "assets/level/level_data/world_five/5_6B.bin.lz"

	.GLOBAL gLevel56Tutorial
gLevel56Tutorial:
	INCBIN_LEVEL "assets/level/level_data/world_five/5_6_tutorial.bin.lz.orig"


	.GLOBAL gLevel5MM
gLevel5MM:
	INCBIN_LEVEL "assets/level/level_data/world_five/5_mm.bin.lz"
	
	.GLOBAL gLevel5DK
gLevel5DK:
	INCBIN_LEVEL "assets/level/level_data/world_five/5_DK.bin.lz"

	.GLOBAL gLevel5MMTutorial
gLevel5MMTutorial:
	INCBIN_LEVEL "assets/level/level_data/world_five/5_mm_tutorial.bin.lz.orig"
	
@ World 6
	
	.GLOBAL gLevel61A
gLevel61A:
	INCBIN_LEVEL "assets/level/level_data/world_six/6_1A.bin.lz"

	.GLOBAL gLevel61B
gLevel61B:
	INCBIN_LEVEL "assets/level/level_data/world_six/6_1B.bin.lz"

	.GLOBAL gLevel61Tutorial
gLevel61Tutorial:
	INCBIN_LEVEL "assets/level/level_data/world_six/6_1_tutorial.bin.lz.orig"


	.GLOBAL gLevel62A
gLevel62A:
	INCBIN_LEVEL "assets/level/level_data/world_six/6_2A.bin.lz"

	.GLOBAL gLevel62B
gLevel62B:
	INCBIN_LEVEL "assets/level/level_data/world_six/6_2B.bin.lz"

	.GLOBAL gLevel62Tutorial
gLevel62Tutorial:
	INCBIN_LEVEL "assets/level/level_data/world_six/6_2_tutorial.bin.lz.orig"
	
	
	.GLOBAL gLevel63A
gLevel63A:
	INCBIN_LEVEL "assets/level/level_data/world_six/6_3A.bin.lz"

	.GLOBAL gLevel63B
gLevel63B:
	INCBIN_LEVEL "assets/level/level_data/world_six/6_3B.bin.lz"

	.GLOBAL gLevel63Tutorial 
gLevel63Tutorial:
	INCBIN_LEVEL "assets/level/level_data/world_six/6_3_tutorial.bin.lz.orig"


	.GLOBAL gLevel64A
gLevel64A:
	INCBIN_LEVEL "assets/level/level_data/world_six/6_4A.bin.lz"
	
	.GLOBAL gLevel64B
gLevel64B:
	INCBIN_LEVEL "assets/level/level_data/world_six/6_4B.bin.lz"
	
	.GLOBAL gLevel64Tutorial
gLevel64Tutorial:
	INCBIN_LEVEL "assets/level/level_data/world_six/6_4_tutorial.bin.lz.orig"


	.GLOBAL gLevel65A
gLevel65A:
	INCBIN_LEVEL "assets/level/level_data/world_six/6_5A.bin.lz"
	
	.GLOBAL gLevel65B
gLevel65B:
	INCBIN_LEVEL "assets/level/level_data/world_six/6_5B.bin.lz"
	
	.GLOBAL gLevel65Tutorial
gLevel65Tutorial:
	INCBIN_LEVEL "assets/level/level_data/world_six/6_5_tutorial.bin.lz.orig"
	
	
	.GLOBAL gLevel66A
gLevel66A:
	INCBIN_LEVEL "assets/level/level_data/world_six/6_6A.bin.lz"

	.GLOBAL gLevel66B
gLevel66B:
	INCBIN_LEVEL "assets/level/level_data/world_six/6_6B.bin.lz"
	
	.GLOBAL gLevel66Tutorial
gLevel66Tutorial:
	INCBIN_LEVEL "assets/level/level_data/world_six/6_6_tutorial.bin.lz.orig"
	
	
	.GLOBAL gLevel6MM
gLevel6MM:
	INCBIN_LEVEL "assets/level/level_data/world_six/6_mm.bin.lz"
	
	.GLOBAL gLevel6DK
gLevel6DK:
	INCBIN_LEVEL "assets/level/level_data/world_six/6_DK.bin.lz"
	
	.GLOBAL gLevel6MMTutorial
gLevel6MMTutorial:
	INCBIN_LEVEL "assets/level/level_data/world_six/6_mm_tutorial.bin.lz.orig"

@ World 1+
	
	.GLOBAL gLevel11Plus
gLevel11Plus:
	INCBIN_LEVEL "assets/level/level_data/world_one_plus/1_1_plus.bin.lz"
	
	.GLOBAL gLevelExpert1
gLevelExpert1:
	INCBIN_LEVEL "assets/level/level_data/expert/expert_1.bin.lz"
	
	
	.GLOBAL gLevel12Plus
gLevel12Plus:
	INCBIN_LEVEL "assets/level/level_data/world_one_plus/1_2_plus.bin.lz"
	
	.GLOBAL gLevelExpert7
gLevelExpert7:
	INCBIN_LEVEL "assets/level/level_data/expert/expert_7.bin.lz"
	
	
	.GLOBAL gLevel13Plus
gLevel13Plus:
	INCBIN_LEVEL "assets/level/level_data/world_one_plus/1_3_plus.bin.lz"
	
	.GLOBAL gLevelUnusedRevenge
gLevelUnusedRevenge:
	INCBIN_LEVEL "assets/level/level_data/world_one_plus/1_unused_revenge.bin.lz"
	
	
	.GLOBAL gLevel14Plus
gLevel14Plus:
	INCBIN_LEVEL "assets/level/level_data/world_one_plus/1_4_plus.bin.lz"
	
	.GLOBAL gLevelUnusedTheLongWay
gLevelUnusedTheLongWay:
	INCBIN_LEVEL "assets/level/level_data/world_one_plus/1_unused_the_long_way.bin.lz"	
	
	
	.GLOBAL gLevel15Plus
gLevel15Plus:
	INCBIN_LEVEL "assets/level/level_data/world_one_plus/1_5_plus.bin.lz"
	
	.GLOBAL gLevelUnused1
gLevelUnused1:
	INCBIN_LEVEL "assets/level/level_data/world_one_plus/1_unused_1.bin.lz"	
	
	
	.GLOBAL gLevel16Plus
gLevel16Plus:
	INCBIN_LEVEL "assets/level/level_data/world_one_plus/1_6_plus.bin.lz"
	
	.GLOBAL gLevelUnused2
gLevelUnused2:
	INCBIN_LEVEL "assets/level/level_data/world_one_plus/1_unused_2.bin.lz"
	

	.GLOBAL gLevel1DKPlus
gLevel1DKPlus:
	INCBIN_LEVEL "assets/level/level_data/world_one_plus/1_DK_plus.bin.lz"
	
	.GLOBAL gLevelUnusedDK1
gLevelUnusedDK1:
	INCBIN_LEVEL "assets/level/level_data/world_one_plus/1_unused_DK.bin.lz"
	
@ World 2+
	
	.GLOBAL gLevel21Plus
gLevel21Plus:
	INCBIN_LEVEL "assets/level/level_data/world_two_plus/2_1_plus.bin.lz"
	
	.GLOBAL gLevelExpert2
gLevelExpert2:
	INCBIN_LEVEL "assets/level/level_data/expert/expert_2.bin.lz"
	
	
	.GLOBAL gLevel22Plus
gLevel22Plus:
	INCBIN_LEVEL "assets/level/level_data/world_two_plus/2_2_plus.bin.lz"
	
	.GLOBAL gLevelExpert8
gLevelExpert8:
	INCBIN_LEVEL "assets/level/level_data/expert/expert_8.bin"
	
	
	.GLOBAL gLevel23Plus
gLevel23Plus:
	INCBIN_LEVEL "assets/level/level_data/world_two_plus/2_3_plus.bin.lz"
	
	.GLOBAL gLevelUnusedOneShotBlue
gLevelUnusedOneShotBlue:
	INCBIN_LEVEL "assets/level/level_data/world_two_plus/2_unused_one_shot_blue.bin.lz"
	
	
	.GLOBAL gLevel24Plus 
gLevel24Plus: 
	INCBIN_LEVEL "assets/level/level_data/world_two_plus/2_4_plus.bin.lz"
	
	.GLOBAL gLevelUnusedEggAttack
gLevelUnusedEggAttack:
	INCBIN_LEVEL "assets/level/level_data/world_two_plus/2_unused_egg_attack.bin.lz"	
	
	
	.GLOBAL gLevel25Plus 
gLevel25Plus: 
	INCBIN_LEVEL "assets/level/level_data/world_two_plus/2_5_plus.bin.lz"
	
	.GLOBAL gLevelUnusedDangerFlowersW2
gLevelUnusedDangerFlowersW2:
	INCBIN_LEVEL "assets/level/level_data/world_two_plus/2_unused_danger_flowers_W2.bin.lz"	
	
	
	.GLOBAL gLevel26Plus 
gLevel26Plus: 
	INCBIN_LEVEL "assets/level/level_data/world_two_plus/2_6_plus.bin.lz"
	
	.GLOBAL gLevelUnusedLaterGator
gLevelUnusedLaterGator:
	INCBIN_LEVEL "assets/level/level_data/world_two_plus/2_unused_later_gator.bin.lz"
	
	
	.GLOBAL gLevel2DKPlus
gLevel2DKPlus:
	INCBIN_LEVEL "assets/level/level_data/world_two_plus/2_DK_plus.bin.lz"
	
	.GLOBAL gLevelUnusedDK2
gLevelUnusedDK2:
	INCBIN_LEVEL "assets/level/level_data/world_two_plus/2_unused_DK.bin.lz"	
	
@ World 3+

	.GLOBAL gLevel31Plus
gLevel31Plus:
	INCBIN_LEVEL "assets/level/level_data/world_three_plus/3_1_plus.bin.lz"	
	
	.GLOBAL gLevelExpert3
gLevelExpert3:
	INCBIN_LEVEL "assets/level/level_data/expert/expert_3.bin.lz"	
	
	
	.GLOBAL gLevel32Plus
gLevel32Plus:
	INCBIN_LEVEL "assets/level/level_data/world_three_plus/3_2_plus.bin.lz"	
	
	.GLOBAL gLevelExpert9
gLevelExpert9:
	INCBIN_LEVEL "assets/level/level_data/expert/expert_9.bin.lz"	


	.GLOBAL gLevel33Plus
gLevel33Plus:
	INCBIN_LEVEL "assets/level/level_data/world_three_plus/3_3_plus.bin.lz"	
	
	.GLOBAL gLevelUnusedHotFeet
gLevelUnusedHotFeet:
	INCBIN_LEVEL "assets/level/level_data/world_three_plus/3_unused_hot_feet.bin.lz"
	

	.GLOBAL gLevel34Plus
gLevel34Plus:
	INCBIN_LEVEL "assets/level/level_data/world_three_plus/3_4_plus.bin.lz"	
	
	.GLOBAL gLevelUnused3
gLevelUnused3:
	INCBIN_LEVEL "assets/level/level_data/world_three_plus/3_unused_1.bin.lz"
	

	.GLOBAL gLevel35Plus
gLevel35Plus:
	INCBIN_LEVEL "assets/level/level_data/world_three_plus/3_5_plus.bin.lz"	
	
	.GLOBAL gLevelUnused4
gLevelUnused4:
	INCBIN_LEVEL "assets/level/level_data/world_three_plus/3_unused_2.bin.lz"
	
	
	.GLOBAL gLevel36Plus
gLevel36Plus:
	INCBIN_LEVEL "assets/level/level_data/world_three_plus/3_6_plus.bin.lz"	
	
	.GLOBAL gLevelUnused5
gLevelUnused5:
	INCBIN_LEVEL "assets/level/level_data/world_three_plus/3_unused_3.bin.lz"
	
	
	.GLOBAL gLevel3DKPlus
gLevel3DKPlus:
	INCBIN_LEVEL "assets/level/level_data/world_three_plus/3_DK_plus.bin.lz"
	
	.GLOBAL gLevelUnusedDK3
gLevelUnusedDK3:
	INCBIN_LEVEL "assets/level/level_data/world_three_plus/3_unused_DK.bin"	
	
@ World 4+

	.GLOBAL gLevel41Plus
gLevel41Plus:
	INCBIN_LEVEL "assets/level/level_data/world_four_plus/4_1_plus.bin.lz"
	
	.GLOBAL gLevelExpert4
gLevelExpert4:
	INCBIN_LEVEL "assets/level/level_data/expert/expert_4.bin.lz"	
	
	
	.GLOBAL gLevel42Plus
gLevel42Plus:
	INCBIN_LEVEL "assets/level/level_data/world_four_plus/4_2_plus.bin.lz"
	
	.GLOBAL gLevelExpert10
gLevelExpert10:
	INCBIN_LEVEL "assets/level/level_data/expert/expert_10.bin.lz"	
	
	
	.GLOBAL gLevel43Plus
gLevel43Plus:
	INCBIN_LEVEL "assets/level/level_data/world_four_plus/4_3_plus.bin.lz"
	
	.GLOBAL gLevelUnusedBooInABox
gLevelUnusedBooInABox:
	INCBIN_LEVEL "assets/level/level_data/world_four_plus/4_unused_boo_in_a_box.bin.lz"
	
	
	.GLOBAL gLevel44Plus
gLevel44Plus:
	INCBIN_LEVEL "assets/level/level_data/world_four_plus/4_4_plus.bin.lz"
	
	.GLOBAL gLevelUnusedTheThwamplet
gLevelUnusedTheThwamplet:
	INCBIN_LEVEL "assets/level/level_data/world_four_plus/4_unused_the_thwamplet.bin.lz"
	
	
	.GLOBAL gLevel45Plus
gLevel45Plus:
	INCBIN_LEVEL "assets/level/level_data/world_four_plus/4_5_plus.bin.lz"
	
	.GLOBAL gLevelUnusedATrickyCandle
gLevelUnusedATrickyCandle:
	INCBIN_LEVEL "assets/level/level_data/world_four_plus/4_unused_a_tricky_candle.bin.lz"
	
	
	.GLOBAL gLevel46Plus
gLevel46Plus:
	INCBIN_LEVEL "assets/level/level_data/world_four_plus/4_6_plus.bin.lz"
	
	.GLOBAL gLevelUnused6
gLevelUnused6:
	INCBIN_LEVEL "assets/level/level_data/world_four_plus/4_unused_1.bin.lz"
	
	
	.GLOBAL gLevel4DKPlus
gLevel4DKPlus:
	INCBIN_LEVEL "assets/level/level_data/world_four_plus/4_DK_plus.bin.lz"
	
	.GLOBAL gLevelUnusedDK4
gLevelUnusedDK4:
	INCBIN_LEVEL "assets/level/level_data/world_four_plus/4_unused_DK.bin.lz"	
	
@ World 5+

	.GLOBAL gLevel51Plus
gLevel51Plus:
	INCBIN_LEVEL "assets/level/level_data/world_five_plus/5_1_plus.bin.lz"
	
	.GLOBAL gLevelExpert5
gLevelExpert5:
	INCBIN_LEVEL "assets/level/level_data/expert/expert_5.bin.lz"	
	
	
	.GLOBAL gLevel52Plus
gLevel52Plus:
	INCBIN_LEVEL "assets/level/level_data/world_five_plus/5_2_plus.bin.lz"
	
	.GLOBAL gLevelExpert11
gLevelExpert11:
	INCBIN_LEVEL "assets/level/level_data/expert/expert_11.bin.lz"	
	
	
	.GLOBAL gLevel53Plus
gLevel53Plus:
	INCBIN_LEVEL "assets/level/level_data/world_five_plus/5_3_plus.bin.lz"
	
	.GLOBAL gLevelUnusedKeyToTheKey
gLevelUnusedKeyToTheKey:
	INCBIN_LEVEL "assets/level/level_data/world_five_plus/5_unused_key_to_the_key.bin.lz"
	
	
	.GLOBAL gLevel54Plus
gLevel54Plus:
	INCBIN_LEVEL "assets/level/level_data/world_five_plus/5_4_plus.bin.lz"
	
	.GLOBAL gLevelUnusedDangerFlowersW5
gLevelUnusedDangerFlowersW5:
	INCBIN_LEVEL "assets/level/level_data/world_five_plus/5_unused_danger_flowers_W5.bin.lz"
	
	
	.GLOBAL gLevel55Plus
gLevel55Plus:
	INCBIN_LEVEL "assets/level/level_data/world_five_plus/5_5_plus.bin.lz"
	
	.GLOBAL gLevelUnusedHitasuraKawase
gLevelUnusedHitasuraKawase:
	INCBIN_LEVEL "assets/level/level_data/world_five_plus/5_unused_hitasura_kawase.bin.lz"
	
	
	.GLOBAL gLevel56Plus
gLevel56Plus:
	INCBIN_LEVEL "assets/level/level_data/world_five_plus/5_6_plus.bin.lz"
	
	.GLOBAL gLevelUnused7
gLevelUnused7:
	INCBIN_LEVEL "assets/level/level_data/world_five_plus/5_unused_1.bin.lz"
	
	
	.GLOBAL gLevel5DKPlus
gLevel5DKPlus:
	INCBIN_LEVEL "assets/level/level_data/world_five_plus/5_DK_plus.bin.lz"
	
	.GLOBAL gLevelUnusedDK5
gLevelUnusedDK5:
	INCBIN_LEVEL "assets/level/level_data/world_five_plus/5_unused_DK.bin.lz"	
	
@ World 6+

	.GLOBAL gLevel61Plus
gLevel61Plus:
	INCBIN_LEVEL "assets/level/level_data/world_six_plus/6_1_plus.bin.lz"
	
	.GLOBAL gLevelExpert6
gLevelExpert6:
	INCBIN_LEVEL "assets/level/level_data/expert/expert_6.bin.lz"	
	
	
	.GLOBAL gLevel62Plus
gLevel62Plus:
	INCBIN_LEVEL "assets/level/level_data/world_six_plus/6_2_plus.bin.lz"
	
	.GLOBAL gLevelExpert12
gLevelExpert12:
	INCBIN_LEVEL "assets/level/level_data/expert/expert_12.bin.lz"	
	
	
	.GLOBAL gLevel63Plus
gLevel63Plus:
	INCBIN_LEVEL "assets/level/level_data/world_six_plus/6_3_plus.bin.lz"
	
	.GLOBAL gLevelUnusedClimbAndFall
gLevelUnusedClimbAndFall:
	INCBIN_LEVEL "assets/level/level_data/world_six_plus/6_unused_climb_and_fall_1.bin.lz"
	
	
	.GLOBAL gLevel64Plus
gLevel64Plus:
	INCBIN_LEVEL "assets/level/level_data/world_six_plus/6_4_plus.bin.lz"
	
	.GLOBAL gLevelUnused8
gLevelUnused8:
	INCBIN_LEVEL "assets/level/level_data/world_six_plus/6_unused_1.bin.lz"
	
	
	.GLOBAL gLevel65Plus
gLevel65Plus:
	INCBIN_LEVEL "assets/level/level_data/world_six_plus/6_5_plus.bin"
	
	.GLOBAL gLevelUnused9
gLevelUnused9:
	INCBIN_LEVEL "assets/level/level_data/world_six_plus/6_unused_2.bin.lz"
	
	
	.GLOBAL gLevel66Plus
gLevel66Plus:
	INCBIN_LEVEL "assets/level/level_data/world_six_plus/6_6_plus.bin.lz"
	
	.GLOBAL gLevelUnusedClimbAndFall2
gLevelUnusedClimbAndFall2:
	INCBIN_LEVEL "assets/level/level_data/world_six_plus/6_unused_climb_and_fall_2.bin.lz"
	
	
	.GLOBAL gLevel6DKPlus
gLevel6DKPlus:
	INCBIN_LEVEL "assets/level/level_data/world_six_plus/6_DK_plus.bin.lz"
	
	.GLOBAL gLevelUnusedDK6
gLevelUnusedDK6:
	INCBIN_LEVEL "assets/level/level_data/world_six_plus/6_unused_DK.bin.lz"	
	
@ Boss Levels

	.GLOBAL gLevelDKBoss
gLevelDKBoss:
	INCBIN_LEVEL "assets/level/level_data/boss/DK_boss.bin.lz"
	
	.GLOBAL gLevelDKBossPlus
gLevelDKBossPlus:
	INCBIN_LEVEL "assets/level/level_data/boss/DK_boss_plus.bin.lz"
	
@ Title demo/Tutorial Input data
	
	.GLOBAL g11BTitleDemo
g11BTitleDemo:
	.INCBIN "assets/demo_inputs/title/1_1B_demo_inputs.bin"
	
	.GLOBAL g26BTitleDemo
g26BTitleDemo:
	.INCBIN "assets/demo_inputs/title/2_6B_demo_inputs.bin"
	
	.GLOBAL g33ATitleDemo
g33ATitleDemo:
	.INCBIN "assets/demo_inputs/title/3_3A_demo_inputs.bin"
	
	.GLOBAL g44BTitleDemo
g44BTitleDemo:
	.INCBIN "assets/demo_inputs/title/4_4B_demo_inputs.bin"
	
	.GLOBAL g52ATitleDemo
g52ATitleDemo:
	.INCBIN "assets/demo_inputs/title/5_2A_demo_inputs.bin"
	
	.GLOBAL g63BTitleDemo
g63BTitleDemo:
	.INCBIN "assets/demo_inputs/title/6_3B_demo_inputs.bin"
	
@ World 1 Tutorials
	
	.GLOBAL g11TutorialDemo
g11TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_one/1_1_tutorial_inputs.bin"

	.GLOBAL g12TutorialDemo
g12TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_one/1_2_tutorial_inputs.bin"
	
	.GLOBAL g13TutorialDemo
g13TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_one/1_3_tutorial_inputs.bin"

	.GLOBAL g14TutorialDemo
g14TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_one/1_4_tutorial_inputs.bin"
	
	.GLOBAL g15TutorialDemo
g15TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_one/1_5_tutorial_inputs.bin"

	.GLOBAL g16TutorialDemo
g16TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_one/1_6_tutorial_inputs.bin"
	
	.GLOBAL g1MMTutorialDemo
g1MMTutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_one/1_mm_tutorial_inputs.bin"
	
@ World 2 Tutorials
	
	.GLOBAL g21TutorialDemo
g21TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_two/2_1_tutorial_inputs.bin"

	.GLOBAL g22TutorialDemo
g22TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_two/2_2_tutorial_inputs.bin"
	
	.GLOBAL g23TutorialDemo
g23TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_two/2_3_tutorial_inputs.bin"

	.GLOBAL g24TutorialDemo
g24TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_two/2_4_tutorial_inputs.bin"
	
	.GLOBAL g25TutorialDemo
g25TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_two/2_5_tutorial_inputs.bin"

	.GLOBAL g26TutorialDemo
g26TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_two/2_6_tutorial_inputs.bin"
	
	.GLOBAL g2MMTutorialDemo
g2MMTutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_two/2_mm_tutorial_inputs.bin"
	
@ World 3 Tutorials
	
	.GLOBAL g31TutorialDemo
g31TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_three/3_1_tutorial_inputs.bin"

	.GLOBAL g32TutorialDemo
g32TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_three/3_2_tutorial_inputs.bin"
	
	.GLOBAL g33TutorialDemo
g33TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_three/3_3_tutorial_inputs.bin"

	.GLOBAL g34TutorialDemo
g34TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_three/3_4_tutorial_inputs.bin"
	
	.GLOBAL g35TutorialDemo
g35TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_three/3_5_tutorial_inputs.bin"

	.GLOBAL g36TutorialDemo
g36TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_three/3_6_tutorial_inputs.bin"
	
	.GLOBAL g3MMTutorialDemo
g3MMTutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_three/3_mm_tutorial_inputs.bin"
	
@ World 4 Tutorials
	
	.GLOBAL g41TutorialDemo
g41TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_four/4_1_tutorial_inputs.bin"

	.GLOBAL g42TutorialDemo
g42TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_four/4_2_tutorial_inputs.bin"
	
	.GLOBAL g43TutorialDemo
g43TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_four/4_3_tutorial_inputs.bin"

	.GLOBAL g44TutorialDemo
g44TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_four/4_4_tutorial_inputs.bin"
	
	.GLOBAL g45TutorialDemo
g45TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_four/4_5_tutorial_inputs.bin"

	.GLOBAL g46TutorialDemo
g46TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_four/4_6_tutorial_inputs.bin"
	
	.GLOBAL g4MMTutorialDemo
g4MMTutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_four/4_mm_tutorial_inputs.bin"
	
@ World 5 Tutorials
	
	.GLOBAL g51TutorialDemo
g51TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_five/5_1_tutorial_inputs.bin"

	.GLOBAL g52TutorialDemo
g52TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_five/5_2_tutorial_inputs.bin"
	
	.GLOBAL g53TutorialDemo
g53TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_five/5_3_tutorial_inputs.bin"

	.GLOBAL g54TutorialDemo
g54TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_five/5_4_tutorial_inputs.bin"
	
	.GLOBAL g55TutorialDemo
g55TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_five/5_5_tutorial_inputs.bin"

	.GLOBAL g56TutorialDemo
g56TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_five/5_6_tutorial_inputs.bin"
	
	.GLOBAL g5MMTutorialDemo
g5MMTutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_five/5_mm_tutorial_inputs.bin"
	
@ World 6 Tutorials
	
	.GLOBAL g61TutorialDemo
g61TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_six/6_1_tutorial_inputs.bin"

	.GLOBAL g62TutorialDemo
g62TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_six/6_2_tutorial_inputs.bin"
	
	.GLOBAL g63TutorialDemo
g63TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_six/6_3_tutorial_inputs.bin"

	.GLOBAL g64TutorialDemo
g64TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_six/6_4_tutorial_inputs.bin"
	
	.GLOBAL g65TutorialDemo
g65TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_six/6_5_tutorial_inputs.bin"

	.GLOBAL g66TutorialDemo
g66TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_six/6_6_tutorial_inputs.bin"
	
	.GLOBAL g6MMTutorialDemo
g6MMTutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_six/6_mm_tutorial_inputs.bin"
	
	
	.GLOBAL gUnknown_08B28D84
gUnknown_08B28D84:
	.INCBIN "assets/unused/gUnknown_08B28D84.bin"
	
	.GLOBAL gEWorldMenuData2
gEWorldMenuData2:
	.INCBIN "assets/menu/EWorldMenuData2.bin"

	.GLOBAL gUnknown_08B2AD88
gUnknown_08B2AD88:
	.4byte 0x000011d0 @ unknown
	.2byte 580 @ character count?
	.2byte 0x0080 @ unknown
	.2byte 0x0047 @ unknown
	.byte 0x04 @ color mode? -- changing off of 0x04 makes characters be a 256 color sprite
	.byte 14 @ all characters height in pixels
	
	@ " " (space)
	.4byte 0x00000344 @ character offset from start of gUnknown_08B2AD88
	.4byte 0x00000002 @ character size in half in color mode 0x04 -- the 256 color mode makes this the total width of the character
	
	@ "0" 
	.4byte 0x00000360 @ character offset from start of gUnknown_08B2AD88
	.4byte 0x00000004 @ character size in half in color mode 0x04 -- the 256 color mode makes this the total width of the character
	
	@ "1"
	.4byte 0x00000398 @ character offset from start of gUnknown_08B2AD88
	.4byte 0x00000003 @ character size in half in color mode 0x04 -- the 256 color mode makes this the total width of the character
	
	@ "2"
	.4byte 0x000003C2 @ character offset from start of gUnknown_08B2AD88
	.4byte 0x00000004 @ character size in half in color mode 0x04 -- the 256 color mode makes this the total width of the character
	
	@ "3"
	.4byte 0x000003FA @ character offset from start of gUnknown_08B2AD88
	.4byte 0x00000004 @ character size in half in color mode 0x04 -- the 256 color mode makes this the total width of the character
	
	@ "4"
	.4byte 0x00000432 @ character offset from start of gUnknown_08B2AD88
	.4byte 0x00000004 @ character size in half in color mode 0x04 -- the 256 color mode makes this the total width of the character
	
	@ "5"
	.4byte 0x0000046A @ character offset from start of gUnknown_08B2AD88
	.4byte 0x00000004 @ character size in half in color mode 0x04 -- the 256 color mode makes this the total width of the character
	
	@ "6"
	.4byte 0x000004A2 @ character offset from start of gUnknown_08B2AD88
	.4byte 0x00000004 @ character size in half in color mode 0x04 -- the 256 color mode makes this the total width of the character
	
	@ "7"
	.4byte 0x000004DA @ character offset from start of gUnknown_08B2AD88
	.4byte 0x00000004 @ character size in half in color mode 0x04 -- the 256 color mode makes this the total width of the character
	
	@ "8"
	.4byte 0x00000512 @ character offset from start of gUnknown_08B2AD88
	.4byte 0x00000004 @ character size in half in color mode 0x04 -- the 256 color mode makes this the total width of the character
	
	@ "9"
	.4byte 0x0000054A @ character offset from start of gUnknown_08B2AD88
	.4byte 0x00000004 @ character size in half in color mode 0x04 -- the 256 color mode makes this the total width of the character
	
	@ "A"
	.4byte 0x00000582 @ character offset from start of gUnknown_08B2AD88
	.4byte 0x00000004 @ character size in half in color mode 0x04 -- the 256 color mode makes this the total width of the character
	
	@ "B"
	.4byte 0x000005BA @ character offset from start of gUnknown_08B2AD88
	.4byte 0x00000004 @ character size in half in color mode 0x04 -- the 256 color mode makes this the total width of the character
	
	@ "C"
	.4byte 0x000005F2 @ character offset from start of gUnknown_08B2AD88
	.4byte 0x00000004 @ character size in half in color mode 0x04 -- the 256 color mode makes this the total width of the character
	
	@ "D"
	.4byte 0x0000062A @ character offset from start of gUnknown_08B2AD88
	.4byte 0x00000004 @ character size in half in color mode 0x04 -- the 256 color mode makes this the total width of the character
	
	@ "E"
	.4byte 0x00000662 @ character offset from start of gUnknown_08B2AD88
	.4byte 0x00000004 @ character size in half in color mode 0x04 -- the 256 color mode makes this the total width of the character
	
	@ "F"
	.4byte 0x0000069A @ character offset from start of gUnknown_08B2AD88
	.4byte 0x00000004 @ character size in half in color mode 0x04 -- the 256 color mode makes this the total width of the character
	
	@ "G"
	.4byte 0x000006D2 @ character offset from start of gUnknown_08B2AD88
	.4byte 0x00000004 @ character size in half in color mode 0x04 -- the 256 color mode makes this the total width of the character
	
	@ "H"
	.4byte 0x0000070A @ character offset from start of gUnknown_08B2AD88
	.4byte 0x00000004 @ character size in half in color mode 0x04 -- the 256 color mode makes this the total width of the character
	
	@ "I"
	.4byte 0x00000742 @ character offset from start of gUnknown_08B2AD88
	.4byte 0x00000002 @ character size in half in color mode 0x04 -- the 256 color mode makes this the total width of the character
	
	@ "J"
	.4byte 0x0000075E @ character offset from start of gUnknown_08B2AD88
	.4byte 0x00000004 @ character size in half in color mode 0x04 -- the 256 color mode makes this the total width of the character
	
	@ "K"
	.4byte 0x00000796 @ character offset from start of gUnknown_08B2AD88
	.4byte 0x00000004 @ character size in half in color mode 0x04 -- the 256 color mode makes this the total width of the character
	
	@ "L"
	.4byte 0x000007CE @ character offset from start of gUnknown_08B2AD88
	.4byte 0x00000004 @ character size in half in color mode 0x04 -- the 256 color mode makes this the total width of the character
	
	@ "M"
	.4byte 0x00000806 @ character offset from start of gUnknown_08B2AD88
	.4byte 0x00000005 @ character size in half in color mode 0x04 -- the 256 color mode makes this the total width of the character
	
	@ "N"
	.4byte 0x0000084C @ character offset from start of gUnknown_08B2AD88
	.4byte 0x00000004 @ character size in half in color mode 0x04 -- the 256 color mode makes this the total width of the character
	
	@ "O"
	.4byte 0x00000884 @ character offset from start of gUnknown_08B2AD88
	.4byte 0x00000004 @ character size in half in color mode 0x04 -- the 256 color mode makes this the total width of the character
	
	@ "P"
	.4byte 0x000008BC @ character offset from start of gUnknown_08B2AD88
	.4byte 0x00000004 @ character size in half in color mode 0x04 -- the 256 color mode makes this the total width of the character
	
	@ "Q"
	.4byte 0x000008F4 @ character offset from start of gUnknown_08B2AD88
	.4byte 0x00000004 @ character size in half in color mode 0x04 -- the 256 color mode makes this the total width of the character
	
	@ "R"
	.4byte 0x0000092C @ character offset from start of gUnknown_08B2AD88
	.4byte 0x00000004 @ character size in half in color mode 0x04 -- the 256 color mode makes this the total width of the character
	
	@ "S"
	.4byte 0x00000964 @ character offset from start of gUnknown_08B2AD88
	.4byte 0x00000004 @ character size in half in color mode 0x04 -- the 256 color mode makes this the total width of the character
	
	@ "T"
	.4byte 0x0000099C @ character offset from start of gUnknown_08B2AD88
	.4byte 0x00000004 @ character size in half in color mode 0x04 -- the 256 color mode makes this the total width of the character
	
	@ "U"
	.4byte 0x000009D4 @ character offset from start of gUnknown_08B2AD88
	.4byte 0x00000004 @ character size in half in color mode 0x04 -- the 256 color mode makes this the total width of the character
	
	@ "V"
	.4byte 0x00000A0C @ character offset from start of gUnknown_08B2AD88
	.4byte 0x00000004 @ character size in half in color mode 0x04 -- the 256 color mode makes this the total width of the character
	
	@ "W"
	.4byte 0x00000A44 @ character offset from start of gUnknown_08B2AD88
	.4byte 0x00000005 @ character size in half in color mode 0x04 -- the 256 color mode makes this the total width of the character
	
	@ "X"
	.4byte 0x00000A8A @ character offset from start of gUnknown_08B2AD88
	.4byte 0x00000004 @ character size in half in color mode 0x04 -- the 256 color mode makes this the total width of the character
	
	@ "Y"
	.4byte 0x00000AC2 @ character offset from start of gUnknown_08B2AD88
	.4byte 0x00000004 @ character size in half in color mode 0x04 -- the 256 color mode makes this the total width of the character
	
	@ "Z"
	.4byte 0x00000AFA @ character offset from start of gUnknown_08B2AD88
	.4byte 0x00000004 @ character size in half in color mode 0x04 -- the 256 color mode makes this the total width of the character
	
	@ ":"
	.4byte 0x00000B32 @ character offset from start of gUnknown_08B2AD88
	.4byte 0x00000002 @ character size in half in color mode 0x04 -- the 256 color mode makes this the total width of the character
	
	@ ";"
	.4byte 0x00000B4E @ character offset from start of gUnknown_08B2AD88
	.4byte 0x00000002 @ character size in half in color mode 0x04 -- the 256 color mode makes this the total width of the character
	
	@ "?"
	.4byte 0x00000B6A @ character offset from start of gUnknown_08B2AD88
	.4byte 0x00000004 @ character size in half in color mode 0x04 -- the 256 color mode makes this the total width of the character
	
	@ "!"
	.4byte 0x00000BA2 @ character offset from start of gUnknown_08B2AD88
	.4byte 0x00000003 @ character size in half in color mode 0x04 -- the 256 color mode makes this the total width of the character
	
	@ "."
	.4byte 0x00000BCC @ character offset from start of gUnknown_08B2AD88
	.4byte 0x00000002 @ character size in half in color mode 0x04 -- the 256 color mode makes this the total width of the character
	
	@ ","
	.4byte 0x00000BE8 @ character offset from start of gUnknown_08B2AD88
	.4byte 0x00000002 @ character size in half in color mode 0x04 -- the 256 color mode makes this the total width of the character
	
	@ "a" 
	.4byte 0x00000C04 @ character offset from start of gUnknown_08B2AD88
	.4byte 0x00000004 @ character size in half in color mode 0x04 -- the 256 color mode makes this the total width of the character
	
	@ "b" 
	.4byte 0x00000C3C @ character offset from start of gUnknown_08B2AD88
	.4byte 0x00000004 @ character size in half in color mode 0x04 -- the 256 color mode makes this the total width of the character
	
	@ "c" 
	.4byte 0x00000C74 @ character offset from start of gUnknown_08B2AD88
	.4byte 0x00000004 @ character size in half in color mode 0x04 -- the 256 color mode makes this the total width of the character
	
	@ "d" 
	.4byte 0x00000CAC @ character offset from start of gUnknown_08B2AD88
	.4byte 0x00000004 @ character size in half in color mode 0x04 -- the 256 color mode makes this the total width of the character
	
	@ "e" 
	.4byte 0x00000CE4 @ character offset from start of gUnknown_08B2AD88
	.4byte 0x00000004 @ character size in half in color mode 0x04 -- the 256 color mode makes this the total width of the character
	
	@ "f" 
	.4byte 0x00000D1C @ character offset from start of gUnknown_08B2AD88
	.4byte 0x00000003 @ character size in half in color mode 0x04 -- the 256 color mode makes this the total width of the character
	
	@ "g" 
	.4byte 0x00000D46 @ character offset from start of gUnknown_08B2AD88
	.4byte 0x00000004 @ character size in half in color mode 0x04 -- the 256 color mode makes this the total width of the character
	
	@ "h"  
	.4byte 0x00000D7E @ character offset from start of gUnknown_08B2AD88
	.4byte 0x00000004 @ character size in half in color mode 0x04 -- the 256 color mode makes this the total width of the character
	
	@ "i" 
	.4byte 0x00000Db6 @ character offset from start of gUnknown_08B2AD88
	.4byte 0x00000002 @ character size in half in color mode 0x04 -- the 256 color mode makes this the total width of the character
	
	@ "j" 
	.4byte 0x00000DD2 @ character offset from start of gUnknown_08B2AD88
	.4byte 0x00000003 @ character size in half in color mode 0x04 -- the 256 color mode makes this the total width of the character
	
	@ "k" 
	.4byte 0x00000DFC @ character offset from start of gUnknown_08B2AD88
	.4byte 0x00000004 @ character size in half in color mode 0x04 -- the 256 color mode makes this the total width of the character
	
	@ "l" 
	.4byte 0x00000E34 @ character offset from start of gUnknown_08B2AD88
	.4byte 0x00000002 @ character size in half in color mode 0x04 -- the 256 color mode makes this the total width of the character
	
	@ "m" 
	.4byte 0x00000E50 @ character offset from start of gUnknown_08B2AD88
	.4byte 0x00000005 @ character size in half in color mode 0x04 -- the 256 color mode makes this the total width of the character
	
	@ "n" 
	.4byte 0x00000E96 @ character offset from start of gUnknown_08B2AD88
	.4byte 0x00000004 @ character size in half in color mode 0x04 -- the 256 color mode makes this the total width of the character
	
	@ "o" 
	.4byte 0x00000ECE @ character offset from start of gUnknown_08B2AD88
	.4byte 0x00000004 @ character size in half in color mode 0x04 -- the 256 color mode makes this the total width of the character
	
	@ "p" 
	.4byte 0x00000F06 @ character offset from start of gUnknown_08B2AD88
	.4byte 0x00000004 @ character size in half in color mode 0x04 -- the 256 color mode makes this the total width of the character
	
	@ "q" 
	.4byte 0x00000F3E @ character offset from start of gUnknown_08B2AD88
	.4byte 0x00000004 @ character size in half in color mode 0x04 -- the 256 color mode makes this the total width of the character
	
	@ "r" 
	.4byte 0x00000F76 @ character offset from start of gUnknown_08B2AD88
	.4byte 0x00000004 @ character size in half in color mode 0x04 -- the 256 color mode makes this the total width of the character
	
	@ "s" 
	.4byte 0x00000FAE @ character offset from start of gUnknown_08B2AD88
	.4byte 0x00000004 @ character size in half in color mode 0x04 -- the 256 color mode makes this the total width of the character
	
	@ "t" 
	.4byte 0x00000FE6 @ character offset from start of gUnknown_08B2AD88
	.4byte 0x00000003 @ character size in half in color mode 0x04 -- the 256 color mode makes this the total width of the character
	
	@ "u" 
	.4byte 0x00001010 @ character offset from start of gUnknown_08B2AD88
	.4byte 0x00000004 @ character size in half in color mode 0x04 -- the 256 color mode makes this the total width of the character
	
	@ "v" 
	.4byte 0x00001048 @ character offset from start of gUnknown_08B2AD88
	.4byte 0x00000004 @ character size in half in color mode 0x04 -- the 256 color mode makes this the total width of the character
	
	@ "w" 
	.4byte 0x00001080 @ character offset from start of gUnknown_08B2AD88
	.4byte 0x00000005 @ character size in half in color mode 0x04 -- the 256 color mode makes this the total width of the character
	
	@ "x" 
	.4byte 0x000010C6 @ character offset from start of gUnknown_08B2AD88
	.4byte 0x00000004 @ character size in half in color mode 0x04 -- the 256 color mode makes this the total width of the character
	
	@ "y" 
	.4byte 0x000010FE @ character offset from start of gUnknown_08B2AD88
	.4byte 0x00000004 @ character size in half in color mode 0x04 -- the 256 color mode makes this the total width of the character
	
	@ "z"
	.4byte 0x00001136 @ character offset from start of gUnknown_08B2AD88
	.4byte 0x00000004 @ character size in half in color mode 0x04 -- the 256 color mode makes this the total width of the character
	
	@ Quotation Mark
	.4byte 0x0000116E @ character offset from start of gUnknown_08B2AD88
	.4byte 0x00000005 @ character size in half in color mode 0x04 -- the 256 color mode makes this the total width of the character
	
	@ "-" 
	.4byte 0x000011B4 @ character offset from start of gUnknown_08B2AD88
	.4byte 0x00000002 @ character size in half in color mode 0x04 -- the 256 color mode makes this the total width of the character
	
	@ ASCII -> Character ID table
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000 @ " " (space)
	.2byte 0x0028 @ "!"
	.2byte 0x0045 @ Quotation Mark
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x002A @ ","
	.2byte 0x0046 @ "-"
	.2byte 0x0029 @ "."
	.2byte 0x0000
	.2byte 0x0001 @ "0"
	.2byte 0x0002 @ "1"
	.2byte 0x0003 @ "2"
	.2byte 0x0004 @ "3"
	.2byte 0x0005 @ "4"
	.2byte 0x0006 @ "5"
	.2byte 0x0007 @ "6"
	.2byte 0x0008 @ "7"
	.2byte 0x0009 @ "8"
	.2byte 0x000A @ "9"
	.2byte 0x0025 @ ";"
	.2byte 0x0026 @ ":"
	.2byte 0x0000 
	.2byte 0x0000 
	.2byte 0x0000 
	.2byte 0x0027 @ "?"
	.2byte 0x0000 
	.2byte 0x000B @ "A"
	.2byte 0x000C @ "B"
	.2byte 0x000D @ "C"
	.2byte 0x000E @ "D"
	.2byte 0x000F @ "E"
	.2byte 0x0010 @ "F"
	.2byte 0x0011 @ "G"
	.2byte 0x0012 @ "H"
	.2byte 0x0013 @ "I"
	.2byte 0x0014 @ "J"
	.2byte 0x0015 @ "K"
	.2byte 0x0016 @ "L"
	.2byte 0x0017 @ "M"
	.2byte 0x0018 @ "N"
	.2byte 0x0019 @ "O"
	.2byte 0x001A @ "P"
	.2byte 0x001B @ "Q"
	.2byte 0x001C @ "R"
	.2byte 0x001D @ "S"
	.2byte 0x001E @ "T"
	.2byte 0x001F @ "U"
	.2byte 0x0020 @ "V"
	.2byte 0x0021 @ "W"
	.2byte 0x0022 @ "X"
	.2byte 0x0023 @ "Y"
	.2byte 0x0024 @ "Z"
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x002B @ "a"
	.2byte 0x002C @ "b"
	.2byte 0x002D @ "c"
	.2byte 0x002E @ "d"
	.2byte 0x002F @ "e"
	.2byte 0x0030 @ "f"
	.2byte 0x0031 @ "g"
	.2byte 0x0032 @ "h"
	.2byte 0x0033 @ "i"
	.2byte 0x0034 @ "j"
	.2byte 0x0035 @ "k"
	.2byte 0x0036 @ "l"
	.2byte 0x0037 @ "m"
	.2byte 0x0038 @ "n"
	.2byte 0x0039 @ "o"
	.2byte 0x003A @ "p"
	.2byte 0x003B @ "q"
	.2byte 0x003C @ "r"
	.2byte 0x003D @ "s"
	.2byte 0x003E @ "t"
	.2byte 0x003F @ "u"
	.2byte 0x0040 @ "v"
	.2byte 0x0041 @ "w"
	.2byte 0x0042 @ "x"
	.2byte 0x0043 @ "y"
	.2byte 0x0044 @ "z"
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	.2byte 0x0000
	
	@ Font Graphics
	.INCBIN "baserom.gba", 0xB2B0CC, 0xB2C384-0xB2B0CC
