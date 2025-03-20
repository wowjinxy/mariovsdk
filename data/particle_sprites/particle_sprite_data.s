	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .data

	.GLOBAL gUnknown_08707408
gUnknown_08707408:
	.INCBIN "baserom.gba", 0x707408, 0x707E30-0x707408

	.GLOBAL gUnknown_08707E30
gUnknown_08707E30:
	.INCBIN "baserom.gba", 0x707E30, 0x7080dc-0x707E30
	
	@ unused palette
	.INCBIN "baserom.gba", 0x7080dc, 0x7082dc-0x7080dc
