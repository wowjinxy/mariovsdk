	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .data

	.GLOBAL gUnknown_0866508C
gUnknown_0866508C:
	.INCBIN "baserom.gba", 0x66508C, 0x6651C4-0x66508C

	.GLOBAL gUnknown_086651C4
gUnknown_086651C4:
	.INCBIN "baserom.gba", 0x6651C4, 0x6656FC-0x6651C4

	.GLOBAL gUnknown_086656FC
gUnknown_086656FC:
	.INCBIN "baserom.gba", 0x6656FC, 0x665844-0x6656FC

	.GLOBAL gUnknown_08665844
gUnknown_08665844:
	.INCBIN "baserom.gba", 0x665844, 0x66587C-0x665844

	.GLOBAL gUnknown_0866587C
gUnknown_0866587C:
	.INCBIN "baserom.gba", 0x66587C, 0x665886-0x66587C

	.GLOBAL gUnknown_08665886
gUnknown_08665886:
	.INCBIN "baserom.gba", 0x665886, 0x66588A-0x665886


	.GLOBAL gUnknown_0866588A
gUnknown_0866588A:
	.INCBIN "baserom.gba", 0x66588A, 0x665968-0x66588A

	.GLOBAL gUnknown_08665968
gUnknown_08665968:
	.INCBIN "baserom.gba", 0x665968, 0x665C78-0x665968
