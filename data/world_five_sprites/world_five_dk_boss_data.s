	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .data

@ World 5 Boss

	.GLOBAL gUnknown_08663728
gUnknown_08663728:
	.INCBIN "baserom.gba", 0x663728, 0x663734-0x663728

	.GLOBAL gUnknown_08663734
gUnknown_08663734:
	.INCBIN "baserom.gba", 0x663734, 0x663748-0x663734

	.GLOBAL gUnknown_08663748
gUnknown_08663748:
	.INCBIN "baserom.gba", 0x663748, 0x663768-0x663748

	.GLOBAL gUnknown_08663768
gUnknown_08663768:
	.INCBIN "baserom.gba", 0x663768, 0x6637A0-0x663768

	.GLOBAL gUnknown_086637A0
gUnknown_086637A0:
	.INCBIN "baserom.gba", 0x6637A0, 0x663C70-0x6637A0
