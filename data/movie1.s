	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .data

	.GLOBAL gUnknown_08B30770
gUnknown_08B30770:
	.4byte 163  @ Sound ID
	.2byte 0x0000
	.byte 0x0
	.byte 0xC
	.4byte 130  @ Start Time
	.4byte 290  @ End Time

	.4byte 164  @ Sound ID
	.2byte 0x0000
	.byte 0x0
	.byte 0xC
	.4byte 290  @ Start Time
	.4byte 450  @ End Time

	.4byte 165  @ Sound ID
	.2byte 0x0000
	.byte 0x0
	.byte 0xC
	.4byte 470  @ Start Time
	.4byte 730  @ End Time

	.4byte 166  @ Sound ID
	.2byte 0x0000
	.byte 0x0
	.byte 0xC
	.4byte 585  @ Start Time
	.4byte 730  @ End Time

	.4byte 167  @ Sound ID
	.2byte 0x0000
	.byte 0x0
	.byte 0xC
	.4byte 805  @ Start Time
	.4byte 990  @ End Time

	.4byte 168  @ Sound ID
	.2byte 0x0000
	.byte 0x0
	.byte 0xC
	.4byte 990  @ Start Time
	.4byte 1150  @ End Time

	.4byte 169  @ Sound ID
	.2byte 0x0000
	.byte 0x0
	.byte 0xC
	.4byte 1150  @ Start Time
	.4byte 1270  @ End Time

	.4byte 170  @ Sound ID
	.2byte 0x0000
	.byte 0x0
	.byte 0xC
	.4byte 1270  @ Start Time
	.4byte 1510  @ End Time

	.4byte 226  @ Sound ID
	.2byte 0x0000
	.byte 0x0
	.byte 0xC
	.4byte 1510  @ Start Time
	.4byte 1670  @ End Time

	.4byte 218  @ Sound ID
	.2byte 0x0000
	.byte 0x0
	.byte 0xC
	.4byte 1670  @ Start Time
	.4byte 1850  @ End Time

	.INCBIN "baserom.gba", 0xB30810, 0xB308AC-0xB30810

	.GLOBAL gUnknown_08B308AC
gUnknown_08B308AC:
	.INCBIN "baserom.gba", 0xB308AC, 0xB30F60-0xB308AC

	.GLOBAL gUnknown_08B30F60
gUnknown_08B30F60:
	.4byte 0x73A
	.2byte 0x0 @ Sprite count
	.skip 2
	.4byte 0x00000000  @ Sprite table
	.2byte 0x0
	.skip 2
	.4byte 0x00000000  @ ptr offset 0x10
	.2byte 0xA @ Sound Effect count
	.skip 2
	.4byte gUnknown_08B30770  @ Sound Effects
	.2byte 0x0
	.skip 2
	.4byte 0x00000000  @ ptr offset 0x20
	.2byte 0x0 @ Text Banks in text bank
	.skip 2
	.4byte 0x00000000  @ Text Bank
	.2byte 0xB
	.skip 2
	.4byte gUnknown_08B308AC  @ ptr offset 0x30

	.GLOBAL gMovie1
gMovie1:
	.4byte 0x00000001
	.4byte gUnknown_08B30F60 @ Movie Data -- Movie ID 1
