	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .data

	.GLOBAL gMiniMarioActionMapMainLevelTable_080B53F4
gMiniMarioActionMapMainLevelTable_080B53F4:
	.4byte gMiniMarioActionMap1MM_080AA178
	.4byte 0x00000000
	.4byte gMiniMarioActionMap2MM_080ABE4C
	.4byte 0x00000000
	.4byte gMiniMarioActionMap3MM_080ADE10
	.4byte 0x00000000
	.4byte gMiniMarioActionMap4MM_080B00EC
	.4byte 0x00000000
	.4byte gMiniMarioActionMap5MM_080B25E0
	.4byte 0x00000000
	.4byte gMiniMarioActionMap6MM_080B496C
	.4byte 0x00000000

	.GLOBAL gUnknown_080B5424
gUnknown_080B5424:
	.INCBIN "baserom.gba", 0xB5424, 0xB5F80-0xB5424

	.GLOBAL gUnknown_080B5F80
gUnknown_080B5F80:
	.INCBIN "baserom.gba", 0xB5F80, 0xB6C30-0xB5F80
