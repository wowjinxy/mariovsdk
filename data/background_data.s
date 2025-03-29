	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .data

	.GLOBAL gUnknown_0807BA58 @ World 3 background data
gUnknown_0807BA58:
	.2byte 0x0003 @ BG layer to affect
	.2byte 0x0001 @ Scroll type?
	.4byte 0x00000000 @ Scroll speed
	.4byte 0x00010000 @ this is odd, its read as a LDR like its supposed to be a 0x00000001, but acts like its a LDRH where this would be 0x0001, 0x0000
	.2byte 0x0000
	.2byte 0x0000 @ unused

	.GLOBAL gUnknown_0807BA68 @ World 3 waving background
gUnknown_0807BA68:
	.2byte 0
	.2byte 92
	.2byte 55
	.2byte 19
	.2byte 109
	.2byte 198
	.2byte 158
	.2byte 116
	.2byte 200
	.2byte 282
	.2byte 234
	.2byte 184
	.2byte 259
	.2byte 331
	.2byte 273
	.2byte 213
	.2byte 277
	.2byte 340
	.2byte 272
	.2byte 202
	.2byte 257
	.2byte 311
	.2byte 235
	.2byte 158
	.2byte 207
	.2byte 256
	.2byte 175
	.2byte 94
	.2byte 141
	.2byte 188
	.2byte 107
	.2byte 26
	.2byte 75
	.2byte 124
	.2byte 46
	.2byte -30
	.2byte 22
	.2byte 76
	.2byte 3
	.2byte -67
	.2byte -8
	.2byte 51
	.2byte -15
	.2byte -80
	.2byte -16
	.2byte 48
	.2byte -13
	.2byte -75
	.2byte -7
	.2byte 60
	.2byte 0
	.2byte -60
	.2byte 7
	.2byte 75
	.2byte 13
	.2byte -48
	.2byte 16
	.2byte 80
	.2byte 15
	.2byte -51
	.2byte 8
	.2byte 67
	.2byte -3
	.2byte -76
	.2byte -22
	.2byte 30
	.2byte -46
	.2byte -124
	.2byte -75
	.2byte -26
	.2byte -107
	.2byte -188
	.2byte -141
	.2byte -94
	.2byte -175
	.2byte -255
	.2byte -207
	.2byte -158
	.2byte -235
	.2byte -311
	.2byte -257
	.2byte -202
	.2byte -272
	.2byte -340
	.2byte -277
	.2byte -213
	.2byte -273
	.2byte -331
	.2byte -259
	.2byte -184
	.2byte -234
	.2byte -282
	.2byte -200
	.2byte -116
	.2byte -158
	.2byte -198
	.2byte -109
	.2byte -19
	.2byte -55
	.2byte -92

	.GLOBAL gUnknown_0807BB30 @ BG HOFS
gUnknown_0807BB30:
	.4byte REG_BG0HOFS
	.4byte REG_BG1HOFS
	.4byte REG_BG2HOFS
	.4byte REG_BG3HOFS @ read by world 1's vertical BG, world 4
