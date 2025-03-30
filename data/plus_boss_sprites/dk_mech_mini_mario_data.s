	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .data

	.GLOBAL gUnknown_08668CA0
gUnknown_08668CA0:
	.INCBIN "baserom.gba", 0x668CA0, 0x668D38-0x668CA0

	.GLOBAL gUnknown_08668D38
gUnknown_08668D38:
	.INCBIN "baserom.gba", 0x668D38, 0x6690f0-0x668D38
