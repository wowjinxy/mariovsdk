	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .data

	.GLOBAL gUnknown_0807954C
gUnknown_0807954C:
	.2byte 0x0000 @ world 1
	.2byte 0x0000
	.2byte 0x0100 @ world 2
	.2byte 0x0000
	.2byte 0x0200 @ world 3
	.2byte 0x0000
	.2byte 0x0001 @ title screen plays intro cutscene
	.2byte 0x0000
	.2byte 0x0300 @ world 4
	.2byte 0x0000
	.2byte 0x0400 @ world 5
	.2byte 0x0000
	.2byte 0x0500 @ world 6
	.2byte 0x0000
	.2byte 0x0001 @ title screen plays intro cutscene
	.2byte 0x0000

	.GLOBAL gTitleMarioEyesAnimData
gTitleMarioEyesAnimData:
	.INCBIN "baserom.gba", 0x7956C, 0x79698-0x7956C

	.GLOBAL gTitleDKEyesAnimData
gTitleDKEyesAnimData:
	.INCBIN "baserom.gba", 0x79698, 0x7976C-0x79698
