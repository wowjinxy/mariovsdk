	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .data

	.INCBIN "baserom.gba", 0xB35FC8, 0xB360C0-0xB35FC8

	.GLOBAL gUnknown_08B360C0
gUnknown_08B360C0:
	.INCBIN "baserom.gba", 0xB360C0, 0xB37134-0xB360C0

	.GLOBAL gUnknown_08B37134
gUnknown_08B37134:
	.4byte 5400 @ Cutscene length in frames
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
	.2byte 0 @ Text Banks in text bank
	.skip 2
	.4byte 0x00000000  @ Text Bank
	.2byte 27 @ Scene Banks
	.skip 2
	.4byte gUnknown_08B360C0 @ Scene Bank

	.GLOBAL gMovieCredits1
gMovieCredits1:
	.4byte 0x00000001
	.4byte gUnknown_08B37134 @ Movie Data -- Movie ID 3
