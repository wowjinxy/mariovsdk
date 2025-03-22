	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .data

	@ world 3 sprites
	.GLOBAL gUnknown_08723934
gUnknown_08723934:
	.INCBIN "baserom.gba", 0x723934, 0x7326E8-0x723934

	.GLOBAL gUnknown_087326E8
gUnknown_087326E8:
	.INCBIN "baserom.gba", 0x7326E8, 0x732a00-0x7326E8
	
	@ Unused palette
	.INCBIN "baserom.gba", 0x732a00, 0x732c00-0x732a00
