	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .data

	.GLOBAL gUnknown_080788E0
gUnknown_080788E0:
	.2byte 0x0002
	.2byte 0x0001
	.2byte 0x0100
	.2byte 0x0010
	.2byte 0x0200
	.2byte 0x0020
	.2byte 0x0001
	.2byte 0x0080
	.2byte 0x0080
	.2byte 0x0100

	.GLOBAL gSelectedSaveFileNumPtr
gSelectedSaveFileNumPtr:
	.4byte 0x02032100

	.GLOBAL gUnknown_080788F8
gUnknown_080788F8:
	.4byte 0x02032108

	.GLOBAL gScreenModeRelatedPtr
gScreenModeRelatedPtr:
	.4byte 0x02032104 

	.GLOBAL gSaveFilesPtr
gSaveFilesPtr:
	.4byte 0x02032110
