	.SECTION .rodata

	.BALIGN 4

	.GLOBAL gTextNo
gTextNo:
	.ASCII "No\0\0"	
	
	.GLOBAL gTextYes
gTextYes:
	.ASCII "Yes\0"
	
	.GLOBAL gTextThemeCardAlreadyLoadedOverwrite
gTextThemeCardAlreadyLoadedOverwrite:
	.ASCII "Theme Card already loaded!\n\nOverwrite existing theme?\0\0\0"
	
	.GLOBAL gTextThemeCardDeactivated
gTextThemeCardDeactivated:
	.ASCII "Theme Card\nDEACTIVATED!\0"
	
	.GLOBAL gTextPressAToContinue2
gTextPressAToContinue2:
	.ASCII "Press A to continue\0"
	
	.GLOBAL gTextThemeCardActivated
gTextThemeCardActivated:
	.ASCII "Theme Card\nACTIVATED!\0\0\0"
	
	.GLOBAL gTextEraseOldWorld
gTextEraseOldWorld:
	.ASCII "Erase old world\0"
	
	.GLOBAL gTextLevelDoesNotBelongToCurrentWorld
gTextLevelDoesNotBelongToCurrentWorld:
	.ASCII "Level does not belong\nto current world!\0"
	
	.GLOBAL gTextOverwrite
gTextOverwrite:
	.ASCII "Overwrite\0\0\0"
	
	.GLOBAL gTextLevelAlreadyExists
gTextLevelAlreadyExists:
	.ASCII "Level already exists!\0\0\0"
	
	.GLOBAL gTextConnectionLost
gTextConnectionLost:
	.ASCII "Connection lost!\0\0\0\0"
	
	.GLOBAL gTextTimeOut
gTextTimeOut:
	.ASCII "Time out!\0\0\0"
	
	.GLOBAL gTextCancel
gTextCancel:
	.ASCII "Cancel\0\0"	
	
	.GLOBAL gTextRetry
gTextRetry:
	.ASCII "Retry\0\0\0"
	
	.GLOBAL gTextCRCCheckFailed
gTextCRCCheckFailed:
	.ASCII "CRC check failed!\0\0\0"
	
	.GLOBAL gTextBlank
gTextBlank:
	.ASCII "\0\0\0\0"
	
	.GLOBAL gTextSavingLevelAs
gTextSavingLevelAs:
	.ASCII "Saving Level as\0"
	
	.GLOBAL gTextErasingLevels
gTextErasingLevels:
	.ASCII "Erasing levels\0\0"
	
	.GLOBAL gTextAddingLevel
gTextAddingLevel:
	.ASCII "Adding level\0\0\0\0"
	
	.GLOBAL gTextError
gTextError:
	.ASCII "ERROR\0\0\0"
	
	.GLOBAL gTextRecivedLevelAlreadyExists
gTextRecivedLevelAlreadyExists:
	.ASCII "Mario vs. Donkey Kong-e card\nRECEIVED!\n\nBut Level Already Exists as\0"
	
	.GLOBAL gTextRecivedNewLevel
gTextRecivedNewLevel:
	.ASCII "Mario vs. Donkey Kong-e card\nRECEIVED!\n\nNew level received:\0"

	.GLOBAL gTextRecivingECard
gTextRecivingECard:
	.ASCII "RECEIVING\nMario vs. Donkey Kong-e card...\0\0\0"
	
	.GLOBAL gTextECardDetected
gTextECardDetected:
	.ASCII "Mario vs. Donkey Kong-e card\nDETECTED!!\n\n\0\0\0"
	
	.GLOBAL gTextWaitingForECard
gTextWaitingForECard:
	.ASCII "WAITING FOR\nMario vs. Donkey Kong-e card...\0"
	
	.GLOBAL gTextPleaseConnectEReader
gTextPleaseConnectEReader:
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

	.GLOBAL gTextBlank2
gTextBlank2:
	.ASCII "\0\0\0\0"
	
	.GLOBAL gUnknown_080769BC
gUnknown_080769BC:
	.ASCII "Erase\0\0\0"
	
	.GLOBAL gUnknown_080769C4
gUnknown_080769C4:
	.ASCII "Cancel\0\0"
	
	.GLOBAL gUnknown_080769CC
gUnknown_080769CC:
	.ASCII "Retry\0\0\0"
	
	.GLOBAL gUnknown_080769D4
gUnknown_080769D4:
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
	.4byte dummy_loop_callback
	.4byte tm0over_interrupt_handler
	.4byte update_gbc_sound_regs
	.4byte dummy_loop_callback

	.GLOBAL gUnknown_08076D70
gUnknown_08076D70:
	.4byte sub_0803413C
	.4byte sub_08037ED4
	.4byte dummy_loop_callback
	.4byte sound_update_dma_transfer
	.4byte dummy_loop_callback
	.4byte dummy_loop_callback
	.4byte dummy_loop_callback
	.4byte dummy_loop_callback
	.4byte dummy_loop_callback
