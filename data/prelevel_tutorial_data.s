	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .data


	.GLOBAL gUnknown_08B2D440
gUnknown_08B2D440:
	.INCBIN "baserom.gba", 0xB2D440, 0xB2D574-0xB2D440

@ Pre-level tutorial thought bubble table
	.GLOBAL gUnknown_08B2D574
gUnknown_08B2D574:
	.INCBIN "baserom.gba", 0xB2D574, 0xB2D578-0xB2D574

	.GLOBAL gUnknown_08B2D578
gUnknown_08B2D578:
	.INCBIN "baserom.gba", 0xB2D578, 0xb2d6c4-0xB2D578

@ Pre-level tutorial button sprite
	.GLOBAL gUnknown_08B2D6C4
gUnknown_08B2D6C4:
	.INCBIN "baserom.gba", 0xb2d6c4, 0xB2DC74-0xb2d6c4

	.GLOBAL gUnknown_08B2DC74
gUnknown_08B2DC74:
	.INCBIN "baserom.gba", 0xB2DC74, 0xB2DEBC-0xB2DC74
