	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .data

	.GLOBAL gUnknown_0807976C
gUnknown_0807976C:
	.2byte 0x00E6
	.2byte 0x00E7
	.2byte 0x00E8
	.2byte 0x00E6
	.2byte 0x00E7
	.2byte 0x00E8

	.GLOBAL gUnknown_08079778
gUnknown_08079778:
	.4byte 25 @ palette world_one_boss_clear
	.4byte 26 @ palette world_two_boss_clear
	.4byte 27 @ palette world_three_boss_clear
	.4byte 28 @ palette world_four_boss_clear
	.4byte 29 @ palette world_five_boss_clear
	.4byte 30 @ palette world_six_boss_clear

	.GLOBAL gUnknown_08079790
gUnknown_08079790:
	.4byte 31 @ palette world_one_plus_boss_clear
	.4byte 32 @ palette world_two_plus_boss_clear
	.4byte 33 @ palette world_three_plus_boss_clear
	.4byte 34 @ palette world_four_plus_boss_clear
	.4byte 35 @ palette world_five_plus_boss_clear
	.4byte 36 @ palette world_six_plus_boss_clear

	.GLOBAL gUnknown_080797A8
gUnknown_080797A8:
	.byte 0x35
	.byte 0x45
	.byte 0x56
	.byte 0x67
	.byte 0x7E
	.byte 0x8D
	.byte 0x9D
	.byte 0xAD

	.GLOBAL gUnknown_080797B0
gUnknown_080797B0:
	.byte 0x06
	.byte 0x00
	.byte 0x0C
	.byte 0x04
	.byte 0x0E
	.byte 0x15
	.byte 0x04
	.byte 0x11

	.GLOBAL gUnknown_080797B8
gUnknown_080797B8:
	.byte 0x00
	.byte 0x0C
	.byte 0x18
	.byte 0x24
	.byte 0x30
	.byte 0x3F
	.byte 0x49
	.byte 0x55
	.byte 0x61
	.byte 0x71
	.byte 0x7F
	.byte 0x8B
	.byte 0x9A
	.byte 0x00
	.byte 0x00
	.byte 0x00

	.GLOBAL gUnknown_080797C8
gUnknown_080797C8:
	.2byte 0x0011
	.2byte 0x000D
	.2byte 0x000D
	.2byte 0x000D
	.2byte 0x0027
	.2byte 0x000D
	.2byte 0x0045
	.2byte 0x000D
	.2byte 0x0048
	.2byte 0x000D
	.2byte 0x0027
	.2byte 0x000D

	.GLOBAL gUnknown_080797E0
gUnknown_080797E0:
	.2byte 0x0027
	.2byte 0x000D
	.2byte 0x0027
	.2byte 0x000D
	.2byte 0x0027
	.2byte 0x000D
	.2byte 0x0027
	.2byte 0x000D
	.2byte 0x0027
	.2byte 0x000D
	.2byte 0x0027
	.2byte 0x000D

	.GLOBAL gUnknown_080797F8
gUnknown_080797F8: 
	.4byte 0x0000034D
	.4byte 0x00007038
	.4byte 0x0001034E
	.4byte 0x00007040
	.4byte 0x0001034E
	.4byte 0x00007048
	.4byte 0x0001034E
	.4byte 0x00007050
	.4byte 0x0001034E
	.4byte 0x00007058
	.4byte 0x0001034E
	.4byte 0x00007060
	.4byte 0x0001034E
	.4byte 0x00007068
	.4byte 0x0002034D
	.4byte 0x00007070
	
	.GLOBAL gUnknown_08079838
gUnknown_08079838: 
	.4byte 0x0000034D
	.4byte 0x00007088
	.4byte 0x0001034E
	.4byte 0x00007090
	.4byte 0x0001034E
	.4byte 0x00007098
	.4byte 0x0001034E
	.4byte 0x000070A0
	.4byte 0x0001034E
	.4byte 0x000070A8
	.4byte 0x0002034D
	.4byte 0x000070B0
	
	.GLOBAL gUnknown_08079868
gUnknown_08079868:
	.4byte gUnknown_080797F8
	.2byte 0x0008 @ Unknown count, seems to be half whats contained in the above pointer
	.2byte 0x0000
	.4byte gUnknown_08079838
	.2byte 0x0006 @ Unknown count, seems to be half whats contained in the above pointer
	.2byte 0x0000

	.GLOBAL gUnknown_08079878
gUnknown_08079878:
	.4byte sub_08021BA4
	.4byte sub_08021BF0
	.4byte sub_08021C80
	.4byte sub_0802089C
	.4byte sub_08020908
	.4byte sub_080209B8
	.4byte sub_08020A74
	.4byte sub_08020BE4
	.4byte sub_08020E1C
	.4byte sub_08020EC8
	.4byte sub_08021E70
	.4byte sub_08020F20
	.4byte sub_08021014
	.4byte sub_08021534

	.GLOBAL gUnknown_080798B0
gUnknown_080798B0:
	.4byte sub_0801CBD8
	.4byte sub_08021C3C
	.4byte sub_08021CD8
	.4byte sub_08021D10
	.4byte sub_08021D48
	.4byte sub_08021D8C
	.4byte sub_08021DA0
	.4byte sub_08021DB4
	.4byte sub_08021DC8
	.4byte sub_08021E1C
	.4byte sub_08021EBC
	.4byte sub_08021F10
	.4byte sub_08021F64
	.4byte sub_08021FB8
