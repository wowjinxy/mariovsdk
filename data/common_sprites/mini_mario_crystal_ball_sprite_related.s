	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .data

	@ Mini Mario crystal ball related
	.GLOBAL gUnknown_086F2C60
gUnknown_086F2C60:
	.INCBIN "baserom.gba", 0x6f2c60, 0x6f8a8c-0x6f2c60
	
	.GLOBAL gUnknown_086F8A8C
gUnknown_086F8A8C:
	.INCBIN "baserom.gba", 0x6F8A8C, 0x6F90BC-0x6F8A8C
