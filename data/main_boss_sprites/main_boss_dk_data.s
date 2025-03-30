	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .data

@ main boss
	.GLOBAL gUnknown_08664120
gUnknown_08664120:
	.INCBIN "baserom.gba", 0x664120, 0x6641E8-0x664120

	.GLOBAL gUnknown_086641E8
gUnknown_086641E8:
	.INCBIN "baserom.gba", 0x6641E8, 0x664610-0x6641E8
