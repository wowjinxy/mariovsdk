	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .data

	.GLOBAL gUnknown_08B32120
gUnknown_08B32120:
	.INCBIN "baserom.gba", 0xB32120, 0xB34F18-0xB32120

	.GLOBAL gUnknown_08B34F18
gUnknown_08B34F18:
	.INCBIN "baserom.gba", 0xB34F18, 0xB35F8C-0xB34F18

	.GLOBAL gUnknown_08B35F8C
gUnknown_08B35F8C:
	.4byte 0x1C20
	.2byte 0x90 @ Sprite count
	.skip 2
	.4byte gUnknown_08B32120  @ Sprite table
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
	.2byte 0x1B
	.skip 2
	.4byte gUnknown_08B34F18  @ ptr offset 0x30

	.GLOBAL gMovie7
gMovie7:
	.4byte 0x00000001
	.4byte gUnknown_08B35F8C @ Movie Data -- Movie ID 7
