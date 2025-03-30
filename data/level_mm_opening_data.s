	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .data
	
	.GLOBAL gUnknown_086696F0
gUnknown_086696F0:
	.INCBIN "baserom.gba", 0x6696F0, 0x669A80-0x6696F0

	.GLOBAL gUnknown_08669A80
gUnknown_08669A80:
	.INCBIN "baserom.gba", 0x669A80, 0x669D6C-0x669A80
