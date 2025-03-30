	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .data
	
	.GLOBAL gUnknown_08669D6C
gUnknown_08669D6C:
	.INCBIN "baserom.gba", 0x669D6C, 0x669DAC-0x669D6C

	.GLOBAL gUnknown_08669DAC
gUnknown_08669DAC:
	.INCBIN "baserom.gba", 0x669DAC, 0x669FB0-0x669DAC
