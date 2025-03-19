	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .data

	.GLOBAL gUnknown_08B30F9C
gUnknown_08B30F9C:
	.4byte 161  @ Sound ID
	.2byte 0x0000
	.byte 0x0
	.byte 0xC
	.4byte 0  @ Start Time
	.4byte 240  @ End Time

	.4byte 96  @ Sound ID
	.2byte 0x0000
	.byte 0x0
	.byte 0xC
	.4byte 240  @ Start Time
	.4byte 255  @ End Time

	.4byte 97  @ Sound ID
	.2byte 0x0000
	.byte 0x0
	.byte 0xC
	.4byte 255  @ Start Time
	.4byte 390  @ End Time

	.4byte 96  @ Sound ID
	.2byte 0x0000
	.byte 0x0
	.byte 0xC
	.4byte 390  @ Start Time
	.4byte 405  @ End Time

	.4byte 98  @ Sound ID
	.2byte 0x0000
	.byte 0x0
	.byte 0xC
	.4byte 405  @ Start Time
	.4byte 590  @ End Time

	.4byte 96  @ Sound ID
	.2byte 0x0000
	.byte 0x0
	.byte 0xC
	.4byte 590  @ Start Time
	.4byte 605  @ End Time

	.4byte 99  @ Sound ID
	.2byte 0x0000
	.byte 0x0
	.byte 0xC
	.4byte 605  @ Start Time
	.4byte 695  @ End Time

	.4byte 96  @ Sound ID
	.2byte 0x0000
	.byte 0x0
	.byte 0xC
	.4byte 695  @ Start Time
	.4byte 710  @ End Time

	.4byte 100  @ Sound ID
	.2byte 0x0000
	.byte 0x0
	.byte 0xC
	.4byte 710  @ Start Time
	.4byte 840  @ End Time

	.4byte 96  @ Sound ID
	.2byte 0x0000
	.byte 0x0
	.byte 0xC
	.4byte 840  @ Start Time
	.4byte 855  @ End Time

	.4byte 160  @ Sound ID
	.2byte 0x0000
	.byte 0x0
	.byte 0xC
	.4byte 855  @ Start Time
	.4byte 1630  @ End Time

	.4byte 228  @ Sound ID
	.2byte 0x0000
	.byte 0x0
	.byte 0xC
	.4byte 2285  @ Start Time
	.4byte 2400  @ End Time

	.INCBIN "baserom.gba", 0xB3105C, 0xB311A8-0xB3105C

	.GLOBAL gUnknown_08B311A8
gUnknown_08B311A8:
	.INCBIN "baserom.gba", 0xB311A8, 0xB320E4-0xB311A8

	.GLOBAL gUnknown_08B320E4
gUnknown_08B320E4:
	.4byte 2945 @ Cutscene length in frames
	.2byte 0 @ Sprite count
	.skip 2
	.4byte 0x00000000  @ Sprite table
	.2byte 0x0
	.skip 2
	.4byte 0x00000000  @ ptr offset 0x10
	.2byte 12 @ Sound Effect count
	.skip 2
	.4byte gUnknown_08B30F9C  @ Sound Effects
	.2byte 0x0
	.skip 2
	.4byte 0x00000000  @ ptr offset 0x20
	.2byte 0 @ Text Banks in text bank
	.skip 2
	.4byte 0x00000000  @ Text Bank
	.2byte 25 @ Scene Banks
	.skip 2
	.4byte gUnknown_08B311A8 @ Scene Bank

@ Intro movie
	.GLOBAL gMovieIntro
gMovieIntro:
	.4byte 0x00000001
	.4byte gUnknown_08B320E4 @ Movie Data -- Movie ID 0
