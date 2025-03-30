	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .data

	.GLOBAL gWorldSpriteTableData
gWorldSpriteTableData:
	.4byte gUnknown_087140B8 @ TODO: replace this with gWorldOneSpriteTable once split
	.4byte 37 @ Palette
	.2byte 15 @ Sprite count
	.2byte 0x00
	
	.4byte gUnknown_08723440 @ TODO: replace this with gWorldTwoSpriteTable once split
	.4byte 38 @ Palette
	.2byte 21 @ Sprite count
	.2byte 0x00
	
	.4byte gUnknown_087326E8 @ TODO: replace this with gWorldThreeSpriteTable once split
	.4byte 39 @ Palette
	.2byte 22 @ Sprite count
	.2byte 0x00
	
	.4byte gUnknown_0875A154 @ TODO: replace this with gWorldFourSpriteTable once split
	.4byte 40 @ Palette
	.2byte 28 @ Sprite count
	.2byte 0x00

	.4byte gUnknown_08771D24 @ TODO: replace this with gWorldFiveSpriteTable once split
	.4byte 41 @ Palette
	.2byte 15 @ Sprite count
	.2byte 0x00
	
	.4byte gUnknown_08796104 @ TODO: replace this with gWorldSixSpriteTable once split
	.4byte 42 @ Palette
	.2byte 20 @ Sprite count
	.2byte 0x00

	.GLOBAL gBossOneSpriteTableData
gBossOneSpriteTableData:
	.4byte gUnknown_087AC8DC @ TODO: replace this with gBossOneSpriteTable once split
	.4byte 62 @ Palette
	.2byte 14 @ Sprite count
	.2byte 0x00
	
	.GLOBAL gBossTwoSpriteTableData
gBossTwoSpriteTableData:
	.4byte gDKMechBossSpriteTable
	.4byte 63 @ Palette
	.2byte 10 @ Sprite count
	.2byte 0x00
	@ 4 blank world sprite table data things?
	.4byte 0x00000000 @ Sprite Table
	.4byte 0x00000000 @ Palette
	.2byte 0x0000 @ Sprite count
	.2byte 0x0000
	
	.4byte 0x00000000 @ Sprite Table
	.4byte 0x00000000 @ Palette
	.2byte 0x0000 @ Sprite count
	.2byte 0x0000
	
	.4byte 0x00000000 @ Sprite Table
	.4byte 0x00000000 @ Palette
	.2byte 0x0000 @ Sprite count
	.2byte 0x0000
	
	.4byte 0x00000000 @ Sprite Table
	.4byte 0x00000000 @ Palette
	.2byte 0x0000 @ Sprite count
	.2byte 0x0000
