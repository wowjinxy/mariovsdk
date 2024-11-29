	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .data
	
	.GLOBAL gCardEDataRevenge
gCardEDataRevenge:
	.INCBIN "assets/card-e/Revenge.bin"
	
	.GLOBAL gCardEDataTheLongWay
gCardEDataTheLongWay:
	.INCBIN "assets/card-e/The_Long_Way.bin"
	
	.GLOBAL gCardEDataOneShotBlue
gCardEDataOneShotBlue:
	.INCBIN "assets/card-e/One_Shot_Blue.bin"
	
	.GLOBAL gCardEDataEggAttack
gCardEDataEggAttack:
	.INCBIN "assets/card-e/Egg_Attack.bin"
	
	.GLOBAL gCardEDataLaterGator
gCardEDataLaterGator:
	.INCBIN "assets/card-e/Later_Gator.bin"
	
	.GLOBAL gCardEDataHotFeet
gCardEDataHotFeet:
	.INCBIN "assets/card-e/Hot_Feet.bin"
	
	.GLOBAL gCardEDataBooInABox
gCardEDataBooInABox:
	.INCBIN "assets/card-e/Boo_In_A_Box.bin"

	.GLOBAL gCardEDataTheThwamplet
gCardEDataTheThwamplet:
	.INCBIN "assets/card-e/The_Thwamplet.bin"

	.GLOBAL gCardEDataATrickyCandle
gCardEDataATrickyCandle:
	.INCBIN "assets/card-e/A_Tricky_Candle.bin"

	.GLOBAL gCardEDataKeyToTheKey
gCardEDataKeyToTheKey:
	.INCBIN "assets/card-e/Key_To_The_Key.bin"

	.GLOBAL gCardEDataDangerFlowers
gCardEDataDangerFlowers:
	.INCBIN "assets/card-e/Danger_Flowers.bin"

	.GLOBAL gCardEDataClimbAndFall
gCardEDataClimbAndFall:
	.INCBIN "assets/card-e/Climb_And_Fall.bin"

	.GLOBAL gCardEDataDummy2
gCardEDataDummy2:
	.INCBIN "assets/card-e/Dummy2.bin"

	.GLOBAL gUnknown_08B3961C
gUnknown_08B3961C:
	.INCBIN "baserom.gba", 0xB3961C, 0xB39C1C-0xB3961C

	.GLOBAL gUnknown_08B39C1C
gUnknown_08B39C1C:
	.INCBIN "baserom.gba", 0xB39C1C, 0xB39F1C-0xB39C1C

	.GLOBAL gUnknown_08B39F1C
gUnknown_08B39F1C:
	.byte 0x08
	.byte 0x00
	.byte 0x01
	.byte 0x02
	.byte 0x03
	.byte 0x08
	.byte 0x08
	.byte 0x05
	.byte 0x08
	.byte 0x08
	.byte 0x08
	.byte 0x08
	.byte 0x08
	.byte 0x08
	.byte 0x08
	.byte 0x08
	.byte 0x08
	.byte 0x08
	.byte 0x08
	.byte 0x08
	.byte 0x08
	.byte 0x08
	.byte 0x08
	.byte 0x08
	.byte 0x08
	.byte 0x08
	.byte 0x08
	.byte 0x08
	.byte 0x08
	.byte 0x08
	.byte 0x08
	.byte 0x08
	.byte 0x08
	.byte 0x08
	.byte 0x06
	.byte 0x08
	.byte 0x08
	.byte 0x07
	.byte 0x04
	.byte 0x08
	.byte 0x08
	.byte 0x00
	.byte 0x00
	.byte 0x00

	.GLOBAL gUnknown_08B39F48
gUnknown_08B39F48:
	.4byte 0x00000000
	.4byte 0x00000100
	.4byte 0x00000200
	.4byte 0x00000001
	.4byte 0x00000101
	.4byte 0x00000201	
	.4byte 0x00000002
	.4byte 0x00000102
	.4byte 0x00000202
	.4byte 0x00000003
	.4byte 0x00000103
	.4byte 0x00000203
	.4byte 0x00000004
	.4byte 0x00000104
	.4byte 0x00000204
	.4byte 0x00000005
	.4byte 0x00000105
	.4byte 0x00000205
	.4byte 0x00000006
	.4byte 0x00000106
	.4byte 0x00000206
	.4byte 0x00000007
	.4byte 0x00000107
	.4byte 0x00000207
	.4byte 0x00000008
	.4byte 0x00000108
	.4byte 0x00000208
	.4byte 0x00000009
	.4byte 0x00000109
	.4byte 0x00000209
	.4byte 0x0000000A

	.GLOBAL gUnknown_08B39FC4
gUnknown_08B39FC4:
	.4byte 0x00000000
	.4byte 0x00000040
	.4byte 0x00000080
	.4byte 0x000000C0
	.4byte 0x00000100
	.4byte 0x00000140
	.4byte 0x00000180
	.4byte 0x000001C0
	.4byte 0x00000200
	.4byte 0x00000240
	.4byte 0x00000280
	.4byte 0x000002C0
	.4byte 0x00000300
	.4byte 0x00000340
	.4byte 0x00000380
	.4byte 0x000003C0

	.GLOBAL gUnknown_08B3A004
gUnknown_08B3A004:
	 .4byte sub_080728F0
	 .4byte sub_08072A04
	 .4byte sub_08072A88
	 .4byte sub_08072B10
	 .4byte sub_08072BA8
	 .4byte sub_08072C74
	 .4byte sub_08072D54
	 .4byte sub_08072E64
	 .4byte sub_0807394C
	 .4byte sub_0807394C
	 .4byte sub_08072F2C
	 .4byte sub_0807394C
	 .4byte sub_0807394C
	 .4byte sub_0807394C
	 .4byte sub_0807394C
	 .4byte sub_0807394C
	 .4byte sub_0807394C
	 .4byte sub_0807394C
	 .4byte sub_0807394C
	 .4byte sub_0807394C
	 .4byte sub_0807394C
	 .4byte sub_0807394C
	 .4byte sub_0807394C
	 .4byte sub_0807394C
	 .4byte sub_0807394C
	 .4byte sub_0807394C
	 .4byte sub_0807394C
	 .4byte sub_0807394C
	 .4byte sub_0807394C
	 .4byte sub_0807394C
	 .4byte sub_0807394C
	 .4byte sub_0807394C
	 .4byte sub_0807394C
	 .4byte sub_0807394C
	 .4byte sub_080739B0
	 .4byte sub_0807394C
	 .4byte sub_0807394C
	 .4byte sub_08073A34
	 .4byte sub_08073AAC
	 .4byte sub_0807394C
	 .4byte sub_0807394C

	.GLOBAL gUnknown_08B3A0A8
gUnknown_08B3A0A8:
	.INCBIN "assets/gUnknown_08B3A0A8.bin" @ counts from 0x0000 to 0x0200 with a padding 0x0000