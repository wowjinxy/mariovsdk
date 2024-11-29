	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .data

	.GLOBAL gUnknown_08B2F078
gUnknown_08B2F078:
	.4byte 213  @ Sound ID
	.2byte 0x0000
	.byte 0x0
	.byte 0xC
	.4byte 12  @ Start Time
	.4byte 180  @ End Time

	.4byte 191  @ Sound ID
	.2byte 0x0000
	.byte 0x0
	.byte 0xC
	.4byte 180  @ Start Time
	.4byte 310  @ End Time

	.4byte 192  @ Sound ID
	.2byte 0x0000
	.byte 0x0
	.byte 0xC
	.4byte 310  @ Start Time
	.4byte 460  @ End Time

	.4byte 194  @ Sound ID
	.2byte 0x0000
	.byte 0x0
	.byte 0xC
	.4byte 460  @ Start Time
	.4byte 600  @ End Time

	.4byte 214  @ Sound ID
	.2byte 0x0000
	.byte 0x0
	.byte 0xC
	.4byte 600  @ Start Time
	.4byte 765  @ End Time

	.4byte 210  @ Sound ID
	.2byte 0x0000
	.byte 0x0
	.byte 0xC
	.4byte 765  @ Start Time
	.4byte 925  @ End Time

	.4byte 215  @ Sound ID
	.2byte 0x0000
	.byte 0x0
	.byte 0xC
	.4byte 925  @ Start Time
	.4byte 1165  @ End Time

	.INCBIN "baserom.gba", 0xB2F0E8, 0xB2F140-0xB2F0E8

	.GLOBAL gUnknown_08B2F140
gUnknown_08B2F140:
	.INCBIN "baserom.gba", 0xB2F140, 0xB2F584-0xB2F140

	.GLOBAL gUnknown_08B2F584
gUnknown_08B2F584:
	.4byte 0x48D
	.2byte 0x0 @ Sprite count
	.skip 2
	.4byte 0x00000000  @ Sprite table
	.2byte 0x0
	.skip 2
	.4byte 0x00000000  @ ptr offset 0x10
	.2byte 0x7 @ Sound Effect count
	.skip 2
	.4byte gUnknown_08B2F078  @ Sound Effects
	.2byte 0x0
	.skip 2
	.4byte 0x00000000  @ ptr offset 0x20
	.2byte 0x0 @ Text Banks in text bank
	.skip 2
	.4byte 0x00000000  @ Text Bank
	.2byte 0x7
	.skip 2
	.4byte gUnknown_08B2F140  @ ptr offset 0x30

	.GLOBAL gMovie5
gMovie5:
	.4byte 0x00000001
	.4byte gUnknown_08B2F584 @ Movie Data -- Movie ID 5
