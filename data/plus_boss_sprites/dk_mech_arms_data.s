	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .data

	.GLOBAL gUnknown_08665C78
gUnknown_08665968:
	.INCBIN "baserom.gba", 0x665C78, 0x6660E0-0x665C78

	.GLOBAL gUnknown_086660E0
gUnknown_086660E0:
	.INCBIN "baserom.gba", 0x6660E0, 0x668CA0-0x6660E0
