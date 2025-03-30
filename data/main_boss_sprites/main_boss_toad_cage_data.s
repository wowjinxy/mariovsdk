	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .data

@ main boss toads in cages

	.GLOBAL gUnknown_0866482C
gUnknown_0866482C:
	.INCBIN "baserom.gba", 0x66482C, 0x6648A8-0x66482C
	
	.GLOBAL gUnknown_086648A8
gUnknown_086648A8:
	.INCBIN "baserom.gba", 0x6648A8, 0x664A68-0x6648A8

	.GLOBAL gUnknown_08664A68
gUnknown_08664A68:
	.INCBIN "baserom.gba", 0x664A68, 0x664C28-0x664A68

	.GLOBAL gUnknown_08664C28
gUnknown_08664C28:
	.INCBIN "baserom.gba", 0x664C28, 0x664DE8-0x664C28

	.GLOBAL gUnknown_08664DE8
gUnknown_08664DE8:
	.INCBIN "baserom.gba", 0x664DE8, 0x664E90-0x664DE8

	.GLOBAL gUnknown_08664E90
gUnknown_08664E90:
	.INCBIN "baserom.gba", 0x664E90, 0x664F38-0x664E90

	.GLOBAL gUnknown_08664F38
gUnknown_08664F38:
	.INCBIN "baserom.gba", 0x664F38, 0x664FE0-0x664F38
