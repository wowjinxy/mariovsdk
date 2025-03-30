	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .data

@ main boss spiky barrel

	.GLOBAL gUnknown_08664610
gUnknown_08664610:
	.INCBIN "baserom.gba", 0x664610, 0x664698-0x664610

	.GLOBAL gUnknown_08664698
gUnknown_08664698:
	.INCBIN "baserom.gba", 0x664698, 0x664740-0x664698
