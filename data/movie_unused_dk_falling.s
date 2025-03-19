	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .data

	.GLOBAL gUnknown_08B37170
gUnknown_08B37170:
	.4byte 204  @ Sound ID
	.2byte 0x0000
	.byte 0x0
	.byte 0xC
	.4byte 0  @ Start Time
	.4byte 360  @ End Time

	.GLOBAL gUnknown_08B37180
gUnknown_08B37180:
	.4byte 0x00000000 @ Start position
	.4byte 0x00000000 @ Unknown
	.4byte 0 @ Start frame
	.4byte 0x00000000 @ End position
	.4byte 0x00000000 @ Pan direction/speed?
	.4byte 0 @ End frame 
	
	.GLOBAL gUnknown_08B37198
gUnknown_08B37198:
	.4byte 0x00000000 @ Start position
	.4byte 0x00000000 @ Unknown
	.4byte 0 @ Start frame
	.4byte 0x00043800 @ End position
	.4byte 0x00000300 @ Pan direction/speed?
	.4byte 360 @ End frame 

	.GLOBAL gUnknown_08B371B0
gUnknown_08B371B0:
	.4byte 0 @ Start frame
	.4byte 360 @ End frame
	
	.GLOBAL gUnknown_08B371B8
gUnknown_08B371B8:
	.4byte 360 @ Start frame
	.4byte 460 @ End frame
	
	.GLOBAL gUnknown_08B371C0
gUnknown_08B371C0:
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
	
	.4byte gUnknown_0894B710 @ BG layer 2 GFX
	.byte 0x00
	.byte 0x00
	.byte 0x01
	.byte 0x01
	
	.4byte gUnknown_0894B710 @ BG layer 3 GFX
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
	.4byte 0x00000000
	
	.2byte 0x0000 @ Pan total
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ BG 1 panning data pointer
	.2byte 0x0000 @ Unknown total
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ Unknown pointer
	
	.2byte 0x0002 @ Pan total
	.2byte 0x0000 @ Unknown/unused
	.4byte gUnknown_08B37180 @ BG 2 panning data pointer
	.2byte 0x0000 @ Unknown total
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ Unknown pointer
	
	.2byte 0x0002 @ Pan total
	.2byte 0x0000 @ Unknown/unused
	.4byte gUnknown_08B37180 @ BG 3 panning data pointer
	.2byte 0x0002 @ Unknown total
	.2byte 0x0000 @ Unknown/unused
	.4byte gUnknown_08B37198 @ Unknown pointer
	
	.2byte 0x0000 @ BG 0 timer count?
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ Some timer pointer
	
	.2byte 0x0000 @ BG 1 timer count?
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ Some timer pointer
	
	.2byte 0x0001 @ BG 2 timer count?
	.2byte 0x0000 @ Unknown/unused
	.4byte gUnknown_08B371B0 @ Some timer pointer
	
	.2byte 0x0001 @ BG 3 timer count?
	.2byte 0x0000 @ Unknown/unused
	.4byte gUnknown_08B371B0 @ Some timer pointer
	
	.2byte 0x0001 @ Unknown count
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000168 @ end frame?
	
	@ Scene bank 2
	
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
	
	.4byte gUnknown_089C4B54 @ BG layer 3 GFX
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
	.4byte gUnknown_08B37180 @ BG 3 panning data pointer
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
	.4byte gUnknown_08B371B8 @ Some timer pointer
	
	.2byte 0x0001 @ Unknown count
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x000001CC @ end frame?

	.GLOBAL gUnknown_08B372F8
gUnknown_08B372F8:
	.4byte 0x1CC
	.2byte 0x0 @ Sprite count
	.skip 2
	.4byte 0x00000000  @ Sprite table
	.2byte 0x0
	.skip 2
	.4byte 0x00000000  @ ptr offset 0x10
	.2byte 0x1 @ Sound Effect count
	.skip 2
	.4byte gUnknown_08B37170  @ Sound Effects
	.2byte 0x0
	.skip 2
	.4byte 0x00000000  @ ptr offset 0x20
	.2byte 0x0 @ Text Banks in text bank
	.skip 2
	.4byte 0x00000000  @ Text Bank
	.2byte 0x2 @ Scene Banks
	.skip 2
	.4byte gUnknown_08B371C0 @ Scene Bank

	.GLOBAL gMovieUnusedDKFalling
gMovieUnusedDKFalling:
	.4byte 0x00000001
	.4byte gUnknown_08B372F8 @ Movie Data -- Movie ID 8
