	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .data

	.GLOBAL gUnknown_080A86EC
gUnknown_080A86EC:
	.4byte 0x7FFF0000
	.4byte 0x00000000

	.GLOBAL gUnknown_080A86F4
gUnknown_080A86F4:
	.byte 0x01
	.byte 0x02
	.byte 0x02
	.byte 0x03
	.byte 0x04
	.byte 0x03

	.GLOBAL gEReaderSendTextPointers
gEReaderSendTextPointers:
	.2byte 0x0000
	.4byte 0x00000000
	.4byte gTextReadyToSendLink
	.4byte gTextReadyToSendLink
	.4byte gTextReadyToSendPressA
	.4byte gTextSending
	.4byte gTextSendingCompleted
	.4byte gTextSending
