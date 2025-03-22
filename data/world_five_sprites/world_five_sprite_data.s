	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .data

	@ World 5 sprites
	.GLOBAL gUnknown_0875A744
gUnknown_0875A744:
	.INCBIN "baserom.gba", 0x75a744, 0x771D24-0x75a744

	.GLOBAL gUnknown_08771D24
gUnknown_08771D24:
	.INCBIN "baserom.gba", 0x771D24, 0x772140-0x771D24
	
	@ Unused palette
	.INCBIN "baserom.gba", 0x772140, 0x772168-0x772140
