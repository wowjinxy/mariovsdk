	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .data

	.GLOBAL gUnknown_08B32120
gUnknown_08B32120:
	.INCBIN "baserom.gba", 0xB32120, 0xB34F18-0xB32120

	.GLOBAL gUnknown_08B34F18
gUnknown_08B34F18:
	.INCBIN "baserom.gba", 0xB34F18, 0xB35F8C-0xB34F18

	.GLOBAL gUnknown_08B35F8C
gUnknown_08B35F8C:
	.4byte 7200 @ Cutscene length in frames
	.2byte 144 @ Sprite count
	.skip 2
	.4byte gUnknown_08B32120  @ Sprite table
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
	.2byte 27 @ Scene Banks
	.skip 2
	.4byte gUnknown_08B34F18 @ Scene Bank

	.GLOBAL gMovieCredits2
gMovieCredits2:
	.4byte 0x00000001
	.4byte gUnknown_08B35F8C @ Movie Data -- Movie ID 7
