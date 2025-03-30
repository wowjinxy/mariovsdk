	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .data
	
	.GLOBAL gUnknown_08660D40
gUnknown_08660D40:
	.INCBIN "baserom.gba", 0x660D40, 0x660E4C-0x660D40

	.GLOBAL gUnknown_08660E4C
gUnknown_08660E4C:
	.INCBIN "baserom.gba", 0x660E4C, 0x660E8C-0x660E4C

	.GLOBAL gUnknown_08660E8C
gUnknown_08660E8C:
	.INCBIN "baserom.gba", 0x660E8C, 0x660EA8-0x660E8C

	.GLOBAL gUnknown_08660EA8
gUnknown_08660EA8:
	.INCBIN "baserom.gba", 0x660EA8, 0x661378-0x660EA8
