	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .data

@ Main boss toads carrying barrel

	.GLOBAL gUnknown_08664FE0
gUnknown_08664FE0:
	.INCBIN "baserom.gba", 0x664FE0, 0x664FE4-0x664FE0
	
	.GLOBAL gUnknown_08664FE4
gUnknown_08664FE4:
	.INCBIN "baserom.gba", 0x664FE4, 0x66508C-0x664FE4
