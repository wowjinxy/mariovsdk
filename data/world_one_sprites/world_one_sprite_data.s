	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .data

	.GLOBAL gUnknown_087082DC
gUnknown_087082DC:
	.INCBIN "baserom.gba", 0x7082dc, 0x7140B8-0x7082dc
	
	.GLOBAL gUnknown_087140B8
gUnknown_087140B8:
	.INCBIN "baserom.gba", 0x7140B8, 0x7142D4-0x7140B8
	
	@ unused palette
	.INCBIN "baserom.gba", 0x7142D4, 0x7144D4-0x7142D4
