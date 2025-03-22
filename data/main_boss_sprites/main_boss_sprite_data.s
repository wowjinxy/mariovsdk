	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .data

	@ Boss 1 sprites
	.GLOBAL gUnknown_087965D4
gUnknown_087965D4:
	.INCBIN "baserom.gba", 0x7965d4, 0x7AC8DC-0x7965d4

	.GLOBAL gUnknown_087AC8DC
gUnknown_087AC8DC:
	.INCBIN "baserom.gba", 0x7AC8DC, 0x7acad4-0x7AC8DC
	
	@ Unused palette
	.INCBIN "baserom.gba", 0x7acad4, 0x7accd4-0x7acad4
