	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .data
	
	.GLOBAL gUnknown_08669D6C
gUnknown_08669D6C:
	.2byte 0x00D0
	.2byte 0x0004
	.2byte 0x0008
	.2byte 0x0004
	.2byte 0x0002
	.2byte 0x0020
	.2byte 0x00D0
	.2byte 0x0004
	.2byte 0x0004
	.2byte 0x0008
	.2byte 0x0004
	.2byte 0x0002
	.2byte 0x0020
	.2byte 0x00D0
	.2byte 0x0004
	.2byte 0x0004
	.2byte 0x0008
	.2byte 0x0004
	.2byte 0x0002
	.2byte 0x0020
	.2byte 0x00D0
	.2byte 0x0004
	.2byte 0x0004
	.2byte 0x0008
	.2byte 0x0004
	.2byte 0x0002
	.2byte 0x0020
	.2byte 0x00D0
	.2byte 0x0004
	.2byte 0x0008
	.2byte 0x0004
	.2byte 0x0002

	.GLOBAL gUnknown_08669DAC
gUnknown_08669DAC:
	.2byte 0x0020
	.2byte 0x0000
	.INCBIN "baserom.gba", 0x669DB0, 0x669FB0-0x669DB0 @ some palette
