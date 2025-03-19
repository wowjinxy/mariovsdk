	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .data

	.GLOBAL gUnknown_08B2FFE4
gUnknown_08B2FFE4:
	.4byte 204  @ Sound ID
	.2byte 0x0000
	.byte 0x0
	.byte 0xC
	.4byte 5  @ Start Time
	.4byte 195  @ End Time

	.4byte 205  @ Sound ID
	.2byte 0x0000
	.byte 0x0
	.byte 0xC
	.4byte 195  @ Start Time
	.4byte 435  @ End Time

	.4byte 206  @ Sound ID
	.2byte 0x0000
	.byte 0x0
	.byte 0xC
	.4byte 435  @ Start Time
	.4byte 565  @ End Time

	.4byte 207  @ Sound ID
	.2byte 0x0000
	.byte 0x0
	.byte 0xC
	.4byte 565  @ Start Time
	.4byte 1035  @ End Time

	.4byte 209  @ Sound ID
	.2byte 0x0000
	.byte 0x0
	.byte 0xC
	.4byte 1035  @ Start Time
	.4byte 1185  @ End Time

	.4byte 210  @ Sound ID
	.2byte 0x0000
	.byte 0x0
	.byte 0xC
	.4byte 1200  @ Start Time
	.4byte 1360  @ End Time

	.4byte 211  @ Sound ID
	.2byte 0x0000
	.byte 0x0
	.byte 0xC
	.4byte 1360  @ Start Time
	.4byte 1490  @ End Time

	.4byte 212  @ Sound ID
	.2byte 0x0000
	.byte 0x0
	.byte 0xC
	.4byte 1520  @ Start Time
	.4byte 1750  @ End Time

	.INCBIN "baserom.gba", 0xB30064, 0xB3011C-0xB30064

	.GLOBAL gUnknown_08B3011C
gUnknown_08B3011C:
	.INCBIN "baserom.gba", 0xB3011C, 0xB30734-0xB3011C

	.GLOBAL gUnknown_08B30734
gUnknown_08B30734:
	.4byte 1750 @ Cutscene length in frames
	.2byte 0 @ Sprite count
	.skip 2
	.4byte 0x00000000  @ Sprite table
	.2byte 0x0
	.skip 2
	.4byte 0x00000000  @ ptr offset 0x10
	.2byte 8 @ Sound Effect count
	.skip 2
	.4byte gUnknown_08B2FFE4  @ Sound Effects
	.2byte 0x0
	.skip 2
	.4byte 0x00000000  @ ptr offset 0x20
	.2byte 0x0 @ Text Banks in text bank
	.skip 2
	.4byte 0x00000000  @ Text Bank
	.2byte 10 @ Scene Banks
	.skip 2
	.4byte gUnknown_08B3011C @ Scene Bank

	.GLOBAL gMovieDKBoss1End
gMovieDKBoss1End:
	.4byte 0x00000001
	.4byte gUnknown_08B30734 @ Movie Data -- Movie ID 4
