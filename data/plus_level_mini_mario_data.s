	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .data

	.GLOBAL gMiniMarioActionMapPlusLevelTable_080B6C30
gMiniMarioActionMapPlusLevelTable_080B6C30:
	.4byte gMiniMarioActionMap11Plus_080A8718
	.4byte 0x00000000
	.4byte gMiniMarioActionMap12Plus_080A8C18
	.4byte 0x00000000
	.4byte gMiniMarioActionMap13Plus_080A9098
	.4byte 0x00000000
	.4byte gMiniMarioActionMap14Plus_080A9558
	.4byte 0x00000000
	.4byte gMiniMarioActionMap15Plus_080A999C
	.4byte 0x00000000
	.4byte gMiniMarioActionMap16Plus_080A9D9C
	.4byte 0x00000000
	
	.4byte gMiniMarioActionMap21Plus_080AA778
	.4byte 0x00000000
	.4byte gMiniMarioActionMap22Plus_080AAC64
	.4byte 0x00000000
	.4byte gMiniMarioActionMap23Plus_080AAEBC
	.4byte 0x00000000
	.4byte gMiniMarioActionMap24Plus_080AB3CC
	.4byte 0x00000000
	.4byte gMiniMarioActionMap25Plus_080AB624
	.4byte 0x00000000
	.4byte gMiniMarioActionMap26Plus_080ABBF4
	.4byte 0x00000000
	
	.4byte gMiniMarioActionMap31Plus_080AC54C
	.4byte 0x00000000
	.4byte gMiniMarioActionMap32Plus_080AC9D4
	.4byte 0x00000000
	.4byte gMiniMarioActionMap33Plus_080ACD00
	.4byte 0x00000000
	.4byte gMiniMarioActionMap34Plus_080AD0E8
	.4byte 0x00000000
	.4byte gMiniMarioActionMap35Plus_080AD418
	.4byte 0x00000000
	.4byte gMiniMarioActionMap36Plus_080AD814
	.4byte 0x00000000
	
	.4byte gMiniMarioActionMap41Plus_080AE610
	.4byte 0x00000000
	.4byte gMiniMarioActionMap42Plus_080AEB38
	.4byte 0x00000000
	.4byte gMiniMarioActionMap43Plus_080AF038
	.4byte 0x00000000
	.4byte gMiniMarioActionMap44Plus_080AF538
	.4byte 0x00000000
	.4byte gMiniMarioActionMap45Plus_080AF90C
	.4byte 0x00000000
	.4byte gMiniMarioActionMap46Plus_080AFCB4
	.4byte 0x00000000
	
	.4byte gMiniMarioActionMap51Plus_080B07EC
	.4byte 0x00000000
	.4byte gMiniMarioActionMap52Plus_080B0D2C
	.4byte 0x00000000
	.4byte gMiniMarioActionMap53Plus_080B116C
	.4byte 0x00000000
	.4byte gMiniMarioActionMap54Plus_080B157C
	.4byte 0x00000000
	.4byte gMiniMarioActionMap55Plus_080B1B58
	.4byte 0x00000000
	.4byte gMiniMarioActionMap56Plus_080B20A0
	.4byte 0x00000000
	
	.4byte gMiniMarioActionMap61Plus_080B2D60
	.4byte 0x00000000
	.4byte gMiniMarioActionMap62Plus_080B3220
	.4byte 0x00000000
	.4byte gMiniMarioActionMap63Plus_080B3760
	.4byte 0x00000000
	.4byte gMiniMarioActionMap64Plus_080B3BD4
	.4byte 0x00000000
	.4byte gMiniMarioActionMap65Plus_080B4094
	.4byte 0x00000000
	.4byte gMiniMarioActionMap66Plus_080B43B4
	.4byte 0x00000000

	.GLOBAL gUnknown_080B6D50 @ unreferenced
gUnknown_080B6D50:
	.4byte 0x02A302D5
	.4byte 0x023F0271
	.4byte 0x01DB020D
	.4byte 0x017701A9
	.4byte 0x01130145
	.4byte 0x00AF00E1
	.4byte 0x004B007D
	.4byte 0xFFE70019
	.4byte 0xFF83FFB5
	.4byte 0xFF1FFF51
	.4byte 0xFEBBFEED
	.4byte 0xFE57FE89
	.4byte 0xFDF3FE25
	.4byte 0xFD8FFDC1
	.4byte 0xFD2BFD5D

	.GLOBAL gUnknown_080B6D8C
gUnknown_080B6D8C:
	.INCBIN "baserom.gba", 0xB6D8C, 0xB77F4-0xB6D8C

	.GLOBAL gUnknown_080B77F4
gUnknown_080B77F4:
	.INCBIN "baserom.gba", 0xB77F4, 0xB8584-0xB77F4
