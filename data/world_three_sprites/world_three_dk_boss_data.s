	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .data

@ World 3 boss

	.GLOBAL gUnknown_086622A8
gUnknown_086622A8:
	.INCBIN "baserom.gba", 0x6622A8, 0x662778-0x6622A8
