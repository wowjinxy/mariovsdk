	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .data

	.GLOBAL gUnknown_08B2F078
gUnknown_08B2F078:
	.4byte 213  @ Sound ID
	.2byte 0x0000
	.byte 0x0
	.byte 0xC
	.4byte 12  @ Start Time
	.4byte 180  @ End Time

	.4byte 191  @ Sound ID
	.2byte 0x0000
	.byte 0x0
	.byte 0xC
	.4byte 180  @ Start Time
	.4byte 310  @ End Time

	.4byte 192  @ Sound ID
	.2byte 0x0000
	.byte 0x0
	.byte 0xC
	.4byte 310  @ Start Time
	.4byte 460  @ End Time

	.4byte 194  @ Sound ID
	.2byte 0x0000
	.byte 0x0
	.byte 0xC
	.4byte 460  @ Start Time
	.4byte 600  @ End Time

	.4byte 214  @ Sound ID
	.2byte 0x0000
	.byte 0x0
	.byte 0xC
	.4byte 600  @ Start Time
	.4byte 765  @ End Time

	.4byte 210  @ Sound ID
	.2byte 0x0000
	.byte 0x0
	.byte 0xC
	.4byte 765  @ Start Time
	.4byte 925  @ End Time

	.4byte 215  @ Sound ID
	.2byte 0x0000
	.byte 0x0
	.byte 0xC
	.4byte 925  @ Start Time
	.4byte 1165  @ End Time

	.GLOBAL gUnknown_08B2F0E8
gUnknown_08B2F0E8:
	.4byte 0x00000000 @ Start position
	.4byte 0x00000000 @ Unknown
	.4byte 0 @ Start frame
	.4byte 0x00000000 @ End position
	.4byte 0x00000000 @ Pan direction/speed?
	.4byte 0 @ End frame
	
	.GLOBAL gUnknown_08B2F100
gUnknown_08B2F100:
	.4byte 0 @ Start frame
	.4byte 180 @ End frame
	
	.GLOBAL gUnknown_08B2F108
gUnknown_08B2F108:
	.4byte 180 @ Start frame
	.4byte 310 @ End frame	
	@unused
	.4byte 310 @ Start frame
	.4byte 460 @ End frame	
	
	.GLOBAL gUnknown_08B2F118
gUnknown_08B2F118:
	.4byte 310 @ Start frame
	.4byte 460 @ End frame	
	
	.GLOBAL gUnknown_08B2F120
gUnknown_08B2F120:
	.4byte 460 @ Start frame
	.4byte 600 @ End frame	
	
	.GLOBAL gUnknown_08B2F128
gUnknown_08B2F128:
	.4byte 600 @ Start frame
	.4byte 765 @ End frame	

	.GLOBAL gUnknown_08B2F130
gUnknown_08B2F130:
	.4byte 765 @ Start frame
	.4byte 925 @ End frame	

	.GLOBAL gUnknown_08B2F138
gUnknown_08B2F138:
	.4byte 925 @ Start frame
	.4byte 1165 @ End frame	
	
	.GLOBAL gUnknown_08B2F140
gUnknown_08B2F140:
	@ Scene bank 1
	.4byte 0x00000000 @ BG layer 0 GFX
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	
	.4byte 0x00000000 @ BG layer 1 GFX
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	
	.4byte 0x00000000 @ BG layer 2 GFX
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	
	.4byte gUnknown_0897E3B8 @ BG layer 3 GFX
	.byte 0x00
	.byte 0x00
	.byte 0x01
	.byte 0x01
	
	.byte 0x00
	.byte 0x01
	.byte 0x02
	.byte 0x03
	.byte 0x00
	.byte 0x01
	.byte 0x02
	.byte 0x03
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x04
	.byte 0x00
	.byte 0x03
	.byte 0x03
	.byte 0x03
	.byte 0x03
	.byte 0x00
	.byte 0x01
	
	.2byte 0x0000 @ Pan total
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ BG 0 panning data pointer
	.2byte 0x0000 @ Unknown total
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ Unknown pointer
	
	.2byte 0x0000 @ Pan total
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ BG 1 panning data pointer
	.2byte 0x0000 @ Unknown total
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ Unknown pointer
	
	.2byte 0x0000 @ Pan total
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ BG 2 panning data pointer
	.2byte 0x0000 @ Unknown total
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ Unknown pointer
	
	.2byte 0x0002 @ Pan total
	.2byte 0x0000 @ Unknown/unused
	.4byte gUnknown_08B2F0E8 @ BG 3 panning data pointer
	.2byte 0x0000 @ Unknown total
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ Unknown pointer
	
	.2byte 0x0000 @ BG 0 timer count?
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ Some timer pointer
	
	.2byte 0x0000 @ BG 1 timer count?
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ Some timer pointer
	
	.2byte 0x0000 @ BG 2 timer count?
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ Some timer pointer
	
	.2byte 0x0001 @ BG 3 timer count?
	.2byte 0x0000 @ Unknown/unused
	.4byte gUnknown_08B2F100 @ Some timer pointer
	
	.2byte 0x0001 @ Unknown count
	.2byte 0x0000 @ Unknown/unused
	.4byte 180 @ end frame?
	
	@ Scene bank 2
	
	.4byte 0x00000000
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	
	.4byte 0x00000000
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	
	.4byte 0x00000000
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	
	.4byte gUnknown_08982F18
	.byte 0x00
	.byte 0x00
	.byte 0x01
	.byte 0x01
	
	.byte 0x00
	.byte 0x01
	.byte 0x02
	.byte 0x03
	.byte 0x00
	.byte 0x01
	.byte 0x02
	.byte 0x03
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x04
	.byte 0x00
	.byte 0x03
	.byte 0x03
	.byte 0x03
	.byte 0x03
	.byte 0x00
	.byte 0x01
	
	.2byte 0x0000 @ Pan total
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ BG 0 panning data pointer
	.2byte 0x0000 @ Unknown total
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ Unknown pointer
	
	.2byte 0x0000 @ Pan total
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ BG 1 panning data pointer
	.2byte 0x0000 @ Unknown total
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ Unknown pointer
	
	.2byte 0x0000 @ Pan total
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ BG 2 panning data pointer
	.2byte 0x0000 @ Unknown total
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ Unknown pointer
	
	.2byte 0x0002 @ Pan total
	.2byte 0x0000 @ Unknown/unused
	.4byte gUnknown_08B2F0E8 @ BG 3 panning data pointer
	.2byte 0x0000 @ Unknown total
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ Unknown pointer
	
	.2byte 0x0000 @ BG 0 timer count?
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ Some timer pointer
	
	.2byte 0x0000 @ BG 1 timer count?
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ Some timer pointer
	
	.2byte 0x0000 @ BG 2 timer count?
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ Some timer pointer
	
	.2byte 0x0001 @ BG 3 timer count?
	.2byte 0x0000 @ Unknown/unused
	.4byte gUnknown_08B2F108 @ Some timer pointer
	
	.2byte 0x0001 @ Unknown count
	.2byte 0x0000 @ Unknown/unused
	.4byte 310 @ end frame?
	
	@ Scene bank 3
	
	.4byte 0x00000000
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	
	.4byte 0x00000000
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	
	.4byte 0x00000000
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	
	.4byte gUnknown_08987BAC
	.byte 0x00
	.byte 0x00
	.byte 0x01
	.byte 0x01
	
	.byte 0x00
	.byte 0x01
	.byte 0x02
	.byte 0x03
	.byte 0x03
	.byte 0x02
	.byte 0x01
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x04
	.byte 0x00
	.byte 0x03
	.byte 0x03
	.byte 0x03
	.byte 0x03
	.byte 0x00
	.byte 0x01
	
	.2byte 0x0000 @ Pan total
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ BG 0 panning data pointer
	.2byte 0x0000 @ Unknown total
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ Unknown pointer
	
	.2byte 0x0000 @ Pan total
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ BG 1 panning data pointer
	.2byte 0x0000 @ Unknown total
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ Unknown pointer
	
	.2byte 0x0000 @ Pan total
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ BG 2 panning data pointer
	.2byte 0x0000 @ Unknown total
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ Unknown pointer
	
	.2byte 0x0002 @ Pan total
	.2byte 0x0000 @ Unknown/unused
	.4byte gUnknown_08B2F0E8 @ BG 3 panning data pointer
	.2byte 0x0000 @ Unknown total
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ Unknown pointer
	
	.2byte 0x0000 @ BG 0 timer count?
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ Some timer pointer
	
	.2byte 0x0000 @ BG 1 timer count?
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ Some timer pointer
	
	.2byte 0x0000 @ BG 2 timer count?
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ Some timer pointer
	
	.2byte 0x0001 @ BG 3 timer count?
	.2byte 0x0000 @ Unknown/unused
	.4byte gUnknown_08B2F118 @ Some timer pointer
	
	.2byte 0x0001 @ Unknown count
	.2byte 0x0000 @ Unknown/unused
	.4byte 460 @ end frame?
	
	@ Scene bank 4
	
	.4byte 0x00000000
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	
	.4byte 0x00000000
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	
	.4byte 0x00000000
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	
	.4byte gUnknown_0898CA8C
	.byte 0x00
	.byte 0x00
	.byte 0x01
	.byte 0x01
	
	.byte 0x00
	.byte 0x01
	.byte 0x02
	.byte 0x03
	.byte 0x03
	.byte 0x02
	.byte 0x01
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x04
	.byte 0x00
	.byte 0x03
	.byte 0x03
	.byte 0x03
	.byte 0x03
	.byte 0x00
	.byte 0x01
	
	.2byte 0x0000 @ Pan total
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ BG 0 panning data pointer
	.2byte 0x0000 @ Unknown total
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ Unknown pointer
	
	.2byte 0x0000 @ Pan total
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ BG 1 panning data pointer
	.2byte 0x0000 @ Unknown total
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ Unknown pointer
	
	.2byte 0x0000 @ Pan total
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ BG 2 panning data pointer
	.2byte 0x0000 @ Unknown total
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ Unknown pointer
	
	.2byte 0x0002 @ Pan total
	.2byte 0x0000 @ Unknown/unused
	.4byte gUnknown_08B2F0E8 @ BG 3 panning data pointer
	.2byte 0x0000 @ Unknown total
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ Unknown pointer
	
	.2byte 0x0000 @ BG 0 timer count?
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ Some timer pointer
	
	.2byte 0x0000 @ BG 1 timer count?
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ Some timer pointer
	
	.2byte 0x0000 @ BG 2 timer count?
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ Some timer pointer
	
	.2byte 0x0001 @ BG 3 timer count?
	.2byte 0x0000 @ Unknown/unused
	.4byte gUnknown_08B2F120 @ Some timer pointer
	
	.2byte 0x0001 @ Unknown count
	.2byte 0x0000 @ Unknown/unused
	.4byte 600 @ end frame?
	
	@ Scene bank 5
	
	.4byte 0x00000000
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	
	.4byte 0x00000000
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	
	.4byte 0x00000000
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	
	.4byte gUnknown_08991B54
	.byte 0x00
	.byte 0x00
	.byte 0x01
	.byte 0x01
	
	.byte 0x00
	.byte 0x01
	.byte 0x02
	.byte 0x03
	.byte 0x03
	.byte 0x02
	.byte 0x01
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x04
	.byte 0x00
	.byte 0x03
	.byte 0x03
	.byte 0x03
	.byte 0x03
	.byte 0x00
	.byte 0x01
	
	.2byte 0x0000 @ Pan total
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ BG 0 panning data pointer
	.2byte 0x0000 @ Unknown total
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ Unknown pointer
	
	.2byte 0x0000 @ Pan total
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ BG 1 panning data pointer
	.2byte 0x0000 @ Unknown total
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ Unknown pointer
	
	.2byte 0x0000 @ Pan total
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ BG 2 panning data pointer
	.2byte 0x0000 @ Unknown total
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ Unknown pointer
	
	.2byte 0x0002 @ Pan total
	.2byte 0x0000 @ Unknown/unused
	.4byte gUnknown_08B2F0E8 @ BG 3 panning data pointer
	.2byte 0x0000 @ Unknown total
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ Unknown pointer
	
	.2byte 0x0000 @ BG 0 timer count?
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ Some timer pointer
	
	.2byte 0x0000 @ BG 1 timer count?
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ Some timer pointer
	
	.2byte 0x0000 @ BG 2 timer count?
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ Some timer pointer
	
	.2byte 0x0001 @ BG 3 timer count?
	.2byte 0x0000 @ Unknown/unused
	.4byte gUnknown_08B2F128 @ Some timer pointer
	
	.2byte 0x0001 @ Unknown count
	.2byte 0x0000 @ Unknown/unused
	.4byte 765 @ end frame?
	
	@ Scene bank 6
	
	.4byte 0x00000000
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	
	.4byte 0x00000000
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	
	.4byte 0x00000000
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	
	.4byte gUnknown_08996D1C
	.byte 0x00
	.byte 0x00
	.byte 0x01
	.byte 0x01
	
	.byte 0x00
	.byte 0x01
	.byte 0x02
	.byte 0x03
	.byte 0x03
	.byte 0x02
	.byte 0x01
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x04
	.byte 0x00
	.byte 0x03
	.byte 0x03
	.byte 0x03
	.byte 0x03
	.byte 0x00
	.byte 0x01
	
	.2byte 0x0000 @ Pan total
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ BG 0 panning data pointer
	.2byte 0x0000 @ Unknown total
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ Unknown pointer
	
	.2byte 0x0000 @ Pan total
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ BG 1 panning data pointer
	.2byte 0x0000 @ Unknown total
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ Unknown pointer
	
	.2byte 0x0000 @ Pan total
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ BG 2 panning data pointer
	.2byte 0x0000 @ Unknown total
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ Unknown pointer
	
	.2byte 0x0002 @ Pan total
	.2byte 0x0000 @ Unknown/unused
	.4byte gUnknown_08B2F0E8 @ BG 3 panning data pointer
	.2byte 0x0000 @ Unknown total
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ Unknown pointer
	
	.2byte 0x0000 @ BG 0 timer count?
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ Some timer pointer
	
	.2byte 0x0000 @ BG 1 timer count?
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ Some timer pointer
	
	.2byte 0x0000 @ BG 2 timer count?
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ Some timer pointer
	
	.2byte 0x0001 @ BG 3 timer count?
	.2byte 0x0000 @ Unknown/unused
	.4byte gUnknown_08B2F130 @ Some timer pointer
	
	.2byte 0x0001 @ Unknown count
	.2byte 0x0000 @ Unknown/unused
	.4byte 925 @ end frame?
	
	@ Scene bank 7
	
	.4byte 0x00000000 @ BG layer 0 GFX
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	
	.4byte 0x00000000 @ BG layer 1 GFX
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	
	.4byte 0x00000000 @ BG layer 2 GFX
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	
	.4byte gUnknown_0899BDE0 @ BG layer 3 GFX
	.byte 0x00
	.byte 0x00
	.byte 0x01
	.byte 0x01
	
	.byte 0x00
	.byte 0x01
	.byte 0x02
	.byte 0x03
	.byte 0x03
	.byte 0x02
	.byte 0x01
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x04
	.byte 0x00
	.byte 0x03
	.byte 0x03
	.byte 0x03
	.byte 0x03
	.byte 0x00
	.byte 0x01
	
	.2byte 0x0000 @ Pan total
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ BG 0 panning data pointer
	.2byte 0x0000 @ Unknown total
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ Unknown pointer
	
	.2byte 0x0000 @ Pan total
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ BG 1 panning data pointer
	.2byte 0x0000 @ Unknown total
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ Unknown pointer
	
	.2byte 0x0000 @ Pan total
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ BG 2 panning data pointer
	.2byte 0x0000 @ Unknown total
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ Unknown pointer
	
	.2byte 0x0002 @ Pan total
	.2byte 0x0000 @ Unknown/unused
	.4byte gUnknown_08B2F0E8 @ BG 3 panning data pointer
	.2byte 0x0000 @ Unknown total
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ Unknown pointer
	
	.2byte 0x0000 @ BG 0 timer count?
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ Some timer pointer
	
	.2byte 0x0000 @ BG 1 timer count?
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ Some timer pointer
	
	.2byte 0x0000 @ BG 2 timer count?
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ Some timer pointer
	
	.2byte 0x0001 @ BG 3 timer count?
	.2byte 0x0000 @ Unknown/unused
	.4byte gUnknown_08B2F138 @ Some timer pointer
	
	.2byte 0x0001 @ Unknown count
	.2byte 0x0000 @ Unknown/unused
	.4byte 1165 @ end frame?

	.GLOBAL gUnknown_08B2F584
gUnknown_08B2F584:
	.4byte 1165 @ Cutscene length in frames
	.2byte 0 @ Sprite count
	.skip 2
	.4byte 0x00000000  @ Sprite table
	.2byte 0x0
	.skip 2
	.4byte 0x00000000  @ ptr offset 0x10
	.2byte 7 @ Sound Effect count
	.skip 2
	.4byte gUnknown_08B2F078  @ Sound Effects
	.2byte 0x0
	.skip 2
	.4byte 0x00000000  @ ptr offset 0x20
	.2byte 0 @ Text Banks in text bank
	.skip 2
	.4byte 0x00000000  @ Text Bank
	.2byte 7 @ Scene Banks
	.skip 2
	.4byte gUnknown_08B2F140 @ Scene Bank

	.GLOBAL gMovieDKBoss2Intro
gMovieDKBoss2Intro:
	.4byte 0x00000001
	.4byte gUnknown_08B2F584 @ Movie Data -- Movie ID 5
