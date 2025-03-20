	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .data

	@ Key door related
	.GLOBAL gUnknown_086F2A58
gUnknown_086F2A58:
	.INCBIN "baserom.gba", 0x6F2A58, 0x6F2BE8-0x6F2A58
	
	.GLOBAL gUnknown_086F2BE8
gUnknown_086F2BE8:
	.INCBIN "baserom.gba", 0x6F2BE8, 0x6f2c60-0x6F2BE8
