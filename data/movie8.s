	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .data

	.GLOBAL gUnknown_08B37170
gUnknown_08B37170:
	.4byte 204  @ Sound ID
	.2byte 0x0000
	.byte 0x0
	.byte 0xC
	.4byte 0  @ Start Time
	.4byte 360  @ End Time

	.INCBIN "baserom.gba", 0xB37180, 0xB371C0-0xB37180

	.GLOBAL gUnknown_08B371C0
gUnknown_08B371C0:
	.INCBIN "baserom.gba", 0xB371C0, 0xB372F8-0xB371C0

	.GLOBAL gUnknown_08B372F8
gUnknown_08B372F8:
	.4byte 0x1CC
	.2byte 0x0 @ Sprite count
	.skip 2
	.4byte 0x00000000  @ Sprite table
	.2byte 0x0
	.skip 2
	.4byte 0x00000000  @ ptr offset 0x10
	.2byte 0x1 @ Sound Effect count
	.skip 2
	.4byte gUnknown_08B37170  @ Sound Effects
	.2byte 0x0
	.skip 2
	.4byte 0x00000000  @ ptr offset 0x20
	.2byte 0x0 @ Text Banks in text bank
	.skip 2
	.4byte 0x00000000  @ Text Bank
	.2byte 0x2
	.skip 2
	.4byte gUnknown_08B371C0  @ ptr offset 0x30

	.GLOBAL gMovie8
gMovie8:
	.4byte 0x00000001
	.4byte gUnknown_08B372F8 @ Movie Data -- Movie ID 8
