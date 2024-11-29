	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .data

	.GLOBAL gUnknown_08B2F5C0
gUnknown_08B2F5C0:
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

	.4byte 193  @ Sound ID
	.2byte 0x0000
	.byte 0x0
	.byte 0xC
	.4byte 460  @ Start Time
	.4byte 635  @ End Time

	.4byte 194  @ Sound ID
	.2byte 0x0000
	.byte 0x0
	.byte 0xC
	.4byte 635  @ Start Time
	.4byte 760  @ End Time

	.4byte 195  @ Sound ID
	.2byte 0x0000
	.byte 0x0
	.byte 0xC
	.4byte 760  @ Start Time
	.4byte 870  @ End Time

	.4byte 196  @ Sound ID
	.2byte 0x0000
	.byte 0x0
	.byte 0xC
	.4byte 870  @ Start Time
	.4byte 1020  @ End Time

	.4byte 197  @ Sound ID
	.2byte 0x0000
	.byte 0x0
	.byte 0xC
	.4byte 1020  @ Start Time
	.4byte 1160  @ End Time

	.4byte 198  @ Sound ID
	.2byte 0x0000
	.byte 0x0
	.byte 0xC
	.4byte 1160  @ Start Time
	.4byte 1300  @ End Time

	.4byte 199  @ Sound ID
	.2byte 0x0000
	.byte 0x0
	.byte 0xC
	.4byte 1300  @ Start Time
	.4byte 1450  @ End Time

	.4byte 200  @ Sound ID
	.2byte 0x0000
	.byte 0x0
	.byte 0xC
	.4byte 1450  @ Start Time
	.4byte 1615  @ End Time

	.4byte 169  @ Sound ID
	.2byte 0x0000
	.byte 0x0
	.byte 0xC
	.4byte 1615  @ Start Time
	.4byte 1695  @ End Time

	.4byte 203  @ Sound ID
	.2byte 0x0000
	.byte 0x0
	.byte 0xC
	.4byte 1695  @ Start Time
	.4byte 1915  @ End Time

	.INCBIN "baserom.gba", 0xB2F690, 0xB2F720-0xB2F690

	.GLOBAL gUnknown_08B2F720
gUnknown_08B2F720:
	.INCBIN "baserom.gba", 0xB2F720, 0xB2FFA8-0xB2F720

	.GLOBAL gUnknown_08B2FFA8
gUnknown_08B2FFA8:
	.4byte 0x77B
	.2byte 0x0 @ Sprite count
	.skip 2
	.4byte 0x00000000  @ Sprite table
	.2byte 0x0
	.skip 2
	.4byte 0x00000000  @ ptr offset 0x10
	.2byte 0xD @ Sound Effect count
	.skip 2
	.4byte gUnknown_08B2F5C0  @ Sound Effects
	.2byte 0x0
	.skip 2
	.4byte 0x00000000  @ ptr offset 0x20
	.2byte 0x0 @ Text Banks in text bank
	.skip 2
	.4byte 0x00000000  @ Text Bank
	.2byte 0xE
	.skip 2
	.4byte gUnknown_08B2F720  @ ptr offset 0x30

	.GLOBAL gMovie2
gMovie2:
	.4byte 0x00000001
	.4byte gUnknown_08B2FFA8 @ Movie Data -- Movie ID 2
