	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .data

	.GLOBAL gUnknown_08B2E914
gUnknown_08B2E914:
	.4byte 216  @ Sound ID
	.2byte 0x0000
	.byte 0x0
	.byte 0xC
	.4byte 0  @ Start Time
	.4byte 175  @ End Time

	.4byte 217  @ Sound ID
	.2byte 0x0000
	.byte 0x0
	.byte 0xC
	.4byte 175  @ Start Time
	.4byte 285  @ End Time

	.4byte 218  @ Sound ID
	.2byte 0x0000
	.byte 0x0
	.byte 0xC
	.4byte 285  @ Start Time
	.4byte 465  @ End Time

	.4byte 219  @ Sound ID
	.2byte 0x0000
	.byte 0x0
	.byte 0xC
	.4byte 465  @ Start Time
	.4byte 625  @ End Time

	.4byte 220  @ Sound ID
	.2byte 0x0000
	.byte 0x0
	.byte 0xC
	.4byte 625  @ Start Time
	.4byte 805  @ End Time

	.4byte 221  @ Sound ID
	.2byte 0x0000
	.byte 0x0
	.byte 0xC
	.4byte 805  @ Start Time
	.4byte 985  @ End Time

	.4byte 222  @ Sound ID
	.2byte 0x0000
	.byte 0x0
	.byte 0xC
	.4byte 985  @ Start Time
	.4byte 1155  @ End Time

	.4byte 223  @ Sound ID
	.2byte 0x0000
	.byte 0x0
	.byte 0xC
	.4byte 1155  @ Start Time
	.4byte 1320  @ End Time

	.4byte 224  @ Sound ID
	.2byte 0x0000
	.byte 0x0
	.byte 0xC
	.4byte 1320  @ Start Time
	.4byte 1460  @ End Time

	.4byte 225  @ Sound ID
	.2byte 0x0000
	.byte 0x0
	.byte 0xC
	.4byte 1460  @ Start Time
	.4byte 1740  @ End Time

	.INCBIN "baserom.gba", 0xB2E9B4, 0xB2EA24-0xB2E9B4

	.GLOBAL gUnknown_08B2EA24
gUnknown_08B2EA24:
	.INCBIN "baserom.gba", 0xB2EA24, 0xB2F03C-0xB2EA24

	.GLOBAL gUnknown_08B2F03C
gUnknown_08B2F03C:
	.4byte 0x6CC
	.2byte 0x0 @ Sprite count
	.skip 2
	.4byte 0x00000000  @ Sprite table
	.2byte 0x0
	.skip 2
	.4byte 0x00000000  @ ptr offset 0x10
	.2byte 10  @ Sound Effect count
	.skip 2
	.4byte gUnknown_08B2E914  @ Sound Effects
	.2byte 0x0
	.skip 2
	.4byte 0x00000000  @ ptr offset 0x20
	.2byte 0x0 @ Text Banks in text bank
	.skip 2
	.4byte 0x00000000  @ Text Bank
	.2byte 10
	.skip 2
	.4byte gUnknown_08B2EA24  @ ptr offset 0x30

	.GLOBAL gMovie6
gMovie6:
	.4byte 0x00000001
	.4byte gUnknown_08B2F03C @ Movie Data -- Movie ID 6
