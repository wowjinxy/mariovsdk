	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .data

	@ World 6 sprites
	.GLOBAL gUnknown_08772168
gUnknown_08772168:	
	.INCBIN "baserom.gba", 0x772168, 0x796104-0x772168

	.GLOBAL gUnknown_08796104
gUnknown_08796104:
	.INCBIN "baserom.gba", 0x796104, 0x7963d4-0x796104
	
	@ Unused palette
	.INCBIN "baserom.gba", 0x7963d4, 0x7965d4-0x7963d4
