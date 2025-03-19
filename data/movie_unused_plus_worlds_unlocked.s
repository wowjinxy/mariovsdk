	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .data
	.GLOBAL gUnknown_08B37334
gUnknown_08B37334:
	.4byte 0x00000000 @ Start position
	.4byte 0x00000000 @ Unknown
	.4byte 0 @ Start frame
	.4byte 0x00000000 @ End position
	.4byte 0x00000000 @ Pan direction/speed?
	.4byte 0 @ End frame

	.GLOBAL gUnknown_08B3734C
gUnknown_08B3734C:
	.4byte 0x00000000 @ Start frame
	.4byte 0x000000C8 @ End frame
	
	.GLOBAL gUnknown_08B37354
gUnknown_08B37354:
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
	
	.4byte gUnusedPlusWorldsUnlocked @ BG layer 3 GFX
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
	.2byte 0x0000 @ Unknown
	.4byte 0x00000000 @ Unknown pointer
	
	.2byte 0x0000 @ Pan total
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ BG 2 panning data pointer
	.2byte 0x0000 @ Unknown total
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ Unknown pointer
	
	.2byte 0x0002 @ Pan total
	.2byte 0x0000 @ Unknown/unused
	.4byte gUnknown_08B37334 @ BG 3 panning data pointer
	.2byte 0x0000 @ Unknown total
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ Unknown pointer
	
	.2byte 0x0000 @ BG 0 timer count?
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000  @ Some timer pointer
	
	.2byte 0x0000 @ BG 1 timer count?
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ Some timer pointer
	
	.2byte 0x0000 @ BG 2 timer count?
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x00000000 @ Some timer pointer
	
	.2byte 0x0001 @ BG 3 timer count?
	.2byte 0x0000 @ Unknown/unused
	.4byte gUnknown_08B3734C @ Some timer pointer
	
	.2byte 0x0001 @ Unknown count
	.2byte 0x0000 @ Unknown/unused
	.4byte 0x000000C8 @ end frame?

	.GLOBAL gUnknown_08B373F0
gUnknown_08B373F0:
	.4byte 200 @ Cutscene length in frames
	.2byte 0 @ Sprite count
	.skip 2
	.4byte 0x00000000  @ Sprite table
	.2byte 0x0
	.skip 2
	.4byte 0x00000000  @ ptr offset 0x10
	.2byte 0 @ Sound Effect count
	.skip 2
	.4byte 0x00000000  @ Sound Effects
	.2byte 0x0
	.skip 2
	.4byte 0x00000000  @ ptr offset 0x20
	.2byte 0x0 @ Text Banks in text bank
	.skip 2
	.4byte 0x00000000  @ Text Bank
	.2byte 1 @ Scene Banks
	.skip 2
	.4byte gUnknown_08B37354 @ Scene Bank

	.GLOBAL gMovieUnusedPlusWorldsUnlocked
gMovieUnusedPlusWorldsUnlocked:
	.4byte 0x00000001
	.4byte gUnknown_08B373F0 @ Movie Data -- Unused Plus Worlds Unlocked Screen
	