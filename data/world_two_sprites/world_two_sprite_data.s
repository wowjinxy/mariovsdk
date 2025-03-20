	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .data

	.GLOBAL gUnknown_087144D4
gUnknown_087144D4:
	.INCBIN "baserom.gba", 0x7144D4, 0x723440-0x7144D4

	.GLOBAL gUnknown_08723440
gUnknown_08723440:
	.INCBIN "baserom.gba", 0x723440, 0x723734-0x723440
	
	@ unused palette
	.INCBIN "baserom.gba", 0x723734, 0x723934-0x723734
