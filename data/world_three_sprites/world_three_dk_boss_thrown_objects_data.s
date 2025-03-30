	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .data

@ World 3 boss thrown objects

	.GLOBAL gUnknown_08662778
gUnknown_08662778:
	.INCBIN "baserom.gba", 0x662778, 0x662A00-0x662778

	.GLOBAL gUnknown_08662A00
gUnknown_08662A00:
	.INCBIN "baserom.gba", 0x662A00, 0x662C30-0x662A00
