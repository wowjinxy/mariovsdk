	.SECTION .rodata

	@ What is this first part? Seems unreferenced.

	.4byte 0x40400030
	.4byte 0x00000000

	.GLOBAL gUnknown_08076368
gUnknown_08076368:
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.2byte 0x0101
	.byte 0x01

	.GLOBAL gUnknown_08076387
gUnknown_08076387:
	.byte 0x8
	.byte 0xA
	.byte 0x9
	.2byte 0x0000

	.GLOBAL gUnknown_0807638C
gUnknown_0807638C:
	.4byte 0x8E5E2EFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000

	.GLOBAL gUnknown_080763AC
gUnknown_080763AC:
	.4byte 0x007A4108
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000

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
	.4byte 0x0000001A
	.4byte 0x0000001B

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
	.INCBIN "assets/gUnknown_08076AD8.bin"

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
