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

	.GLOBAL gThemeCardPtr
gThemeCardPtr:
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
	