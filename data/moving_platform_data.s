	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .data

	.GLOBAL gUnknown_0807AA58 @ Moving platform related
gUnknown_0807AA58:
	.INCBIN "baserom.gba", 0x7AA58, 0x7BA58-0x7AA58
