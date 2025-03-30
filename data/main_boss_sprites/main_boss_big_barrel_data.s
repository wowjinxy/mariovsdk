	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .data

@ main boss big barrel

	.GLOBAL gUnknown_08664740
gUnknown_08664740:
	.INCBIN "baserom.gba", 0x664740, 0x6647BC-0x664740

	.GLOBAL gUnknown_086647BC
gUnknown_086647BC:
	.INCBIN "baserom.gba", 0x6647BC, 0x66482C-0x6647BC
