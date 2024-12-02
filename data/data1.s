	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .data

	.GLOBAL gUnknown_08079D30
gUnknown_08079D30:
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0x00C02018
	.4byte 0x00000000
	.4byte 0x03C03440
	.4byte 0x00000000
	.4byte 0x04C04C18

	.GLOBAL gUnknown_08079D4C
gUnknown_08079D4C:
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0x00C02018
	.4byte 0x00000000
	.4byte 0x03C03440
	.4byte 0x00000000
	.4byte 0x04C04C18
	
	.GLOBAL gUnknown_08079D68
gUnknown_08079D68:
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0x00C02018
	.4byte 0x00000000
	.4byte 0x03C03440
	.4byte 0x00000000
	.4byte 0x04C04C18	
	
	.GLOBAL gUnknown_08079D84
gUnknown_08079D84:
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0x00C02018
	.4byte 0x00000000
	.4byte 0x03C03440
	.4byte 0x00000000
	.4byte 0x04C04C18
	

	.GLOBAL gUnknown_08079DA0
gUnknown_08079DA0:
	.4byte gUnknown_08079D30
	.4byte gUnknown_08079D4C
	.4byte gUnknown_08079D68
	.4byte gUnknown_08079D84
