	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .data

@ World 4 boss Polterguy

	.GLOBAL gUnknown_08663174
gUnknown_08663174:
	.INCBIN "baserom.gba", 0x663174, 0x663444-0x663174

	.GLOBAL gUnknown_08663444
gUnknown_08663444:
	.INCBIN "baserom.gba", 0x663444, 0x663464-0x663444

	.GLOBAL gUnknown_08663464
gUnknown_08663464:
	.INCBIN "baserom.gba", 0x663464, 0x663488-0x663464

	.GLOBAL gUnknown_08663488 @ Red Polterguy
gUnknown_08663488:
	.INCBIN "baserom.gba", 0x663488, 0x663568-0x663488

	.GLOBAL gUnknown_08663568 @ Blue Polterguy
gUnknown_08663568:
	.INCBIN "baserom.gba", 0x663568, 0x663648-0x663568

	.GLOBAL gUnknown_08663648 @ Yellow Polterguy
gUnknown_08663648:
	.INCBIN "baserom.gba", 0x663648, 0x663728-0x663648
