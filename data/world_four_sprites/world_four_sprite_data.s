	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .data

	@ World 4 sprites
	.GLOBAL gUnknown_08732C00
gUnknown_08732C00:
	.INCBIN "baserom.gba", 0x732c00, 0x75A154-0x732c00

	.GLOBAL gUnknown_0875A154
gUnknown_0875A154:
	.INCBIN "baserom.gba", 0x75A154, 0x75a544-0x75A154
	
	@ Unused palette
	.INCBIN "baserom.gba", 0x75a544, 0x75a744-0x75a544
