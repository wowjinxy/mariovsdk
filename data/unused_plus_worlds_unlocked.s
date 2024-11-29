	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .data
	
	.INCBIN "baserom.gba", 0xB37334, 0xB37354-0xB37334

	.GLOBAL gUnknown_08B37354
gUnknown_08B37354:
	.INCBIN "baserom.gba", 0xB37354, 0xB373F0-0xB37354

	.GLOBAL gUnknown_08B373F0
gUnknown_08B373F0:
	.4byte 0xC8
	.2byte 0x0 @ Sprite count
	.skip 2
	.4byte 0x00000000  @ Sprite table
	.2byte 0x0
	.skip 2
	.4byte 0x00000000  @ ptr offset 0x10
	.2byte 0x0 @ Sound Effect count
	.skip 2
	.4byte 0x00000000  @ Sound Effects
	.2byte 0x0
	.skip 2
	.4byte 0x00000000  @ ptr offset 0x20
	.2byte 0x0 @ Text Banks in text bank
	.skip 2
	.4byte 0x00000000  @ Text Bank
	.2byte 0x1
	.skip 2
	.4byte gUnknown_08B37354  @ ptr offset 0x30

	.GLOBAL gMovie9
gMovie9:
	.4byte 0x00000001
	.4byte gUnknown_08B373F0 @ Movie Data -- Unused Plus Worlds Unlocked Screen
	