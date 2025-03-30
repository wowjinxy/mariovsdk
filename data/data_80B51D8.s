	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .data

	.GLOBAL gUnknown_080B51BC
gUnknown_080B51BC:
	.4byte 0x00000008

	.GLOBAL gUnknown_080B51C0 @ Random jump sounds
gUnknown_080B51C0:
	.4byte 0x00000006 @ SE_JUMP_1 - never used
	.4byte 0x00000006 @ SE_JUMP_1 - never used
	.4byte 0x0000009B @ SE_JUMP_A
	.4byte 0x0000009C @ SE_JUMP_B
	.4byte 0x0000009D @ SE_JUMP_C
	.4byte 0x0000009E @ SE_JUMP_D

	.GLOBAL gUnknown_080B51D8
gUnknown_080B51D8:
	.2byte 0x0000
	.2byte 0x0019
	.2byte 0x0032
	.2byte 0x004D
	.2byte 0x006A
	.2byte 0x0088
	.2byte 0x00AB
	.2byte 0x00D2
	.2byte 0x00FF
	.2byte 0x0137
	.2byte 0x017F
	.2byte 0x01DE
	.2byte 0x026A
	.2byte 0x034B
	.2byte 0x0506
	.2byte 0x0A00

	.GLOBAL gUnknown_080B51F8
gUnknown_080B51F8:
	.2byte 0x0000
	.2byte 0x0019
	.2byte 0x0031
	.2byte 0x004A
	.2byte 0x0061
	.2byte 0x0078
	.2byte 0x008E
	.2byte 0x00A2
	.2byte 0x00B5
	.2byte 0x00C5
	.2byte 0x00D4
	.2byte 0x00E1
	.2byte 0x00EC
	.2byte 0x00F4
	.2byte 0x00FB
	.2byte 0x00FE
	.2byte 0x0100
	.2byte 0x0000

	.GLOBAL gUnknown_080B521C
gUnknown_080B521C:
	.INCBIN "assets/objects/key_blinking.bin"

	.GLOBAL gUnknown_080B5300
gUnknown_080B5300:
	.4byte 0x00002000
	.4byte 0x00003000
	.4byte 0x00004000
	.4byte 0x00003800
	.4byte 0x00002800
	.4byte 0x00003000
	.4byte 0x00002800
	.4byte 0x00003800
	.4byte 0x00002000
	.4byte 0x00004000

	.GLOBAL gUnknown_080B5328
gUnknown_080B5328:
	.INCBIN "assets/gUnknown_080B5328.bin"
