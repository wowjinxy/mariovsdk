	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .data

	.GLOBAL gUnknown_0807C280
gUnknown_0807C280:
	.4byte 0x00003400 @ Start X position
	.4byte 0x00004800 @ End Y position
	.2byte 0x00C0 @ Speed going up
	.2byte 0x0240 @ Speed going down
	.2byte 0x0000
	.2byte 0x001B @ Time staying up
	.byte 0x01 @ Pass over 1
	.byte 0x00 @ Pass over 2
	.byte 0x01 @ Pass over 3
	.byte 0x01 @ Pass over 4
	.byte 0x00 @ Pass over 5
	.byte 0x01 @ Pass over 6
	.byte 0x01 @ Pass over 7
	.byte 0x00 @ Pass over 8

	.4byte 0x00009400 @ Start X position
	.4byte 0x00004800 @ End Y position
	.2byte 0x00C0 @ Speed going up
	.2byte 0x0240 @ Speed going down
	.2byte 0x0000
	.2byte 0x001B @ Time staying up
	.byte 0x01 @ Pass over 1
	.byte 0x01 @ Pass over 2
	.byte 0x01 @ Pass over 3
	.byte 0x01 @ Pass over 4
	.byte 0x01 @ Pass over 5
	.byte 0x01 @ Pass over 6
	.byte 0x01 @ Pass over 7
	.byte 0x01 @ Pass over 8

	.4byte 0x0000F400 @ Start X position
	.4byte 0x00004800 @ End Y position
	.2byte 0x00C0 @ Speed going up
	.2byte 0x0240 @ Speed going down
	.2byte 0x0000
	.2byte 0x001B @ Time staying up
	.byte 0x00 @ Pass over 1
	.byte 0x01 @ Pass over 2
	.byte 0x01 @ Pass over 3
	.byte 0x00 @ Pass over 4
	.byte 0x01 @ Pass over 5
	.byte 0x01 @ Pass over 6
	.byte 0x00 @ Pass over 7
	.byte 0x01 @ Pass over 8
	
	.GLOBAL gUnknown_0807C2C8
gUnknown_0807C2C8:
	.INCBIN "baserom.gba", 0x7C2C8, 0x7C310-0x7C2C8
	
	.GLOBAL gUnknown_0807C310
gUnknown_0807C310:
	.INCBIN "baserom.gba", 0x7C310, 0x7C358-0x7C310
	
	.GLOBAL gUnknown_0807C358
gUnknown_0807C358:
	.4byte 0x00008800 @ Start X position
	.4byte 0x00005000 @ End Y position
	.2byte 0x00C0 @ Speed going up
	.2byte 0x0080 @ Speed going down
	.2byte 0x0000
	.2byte 0x0010 @ Time staying up
	.byte 0x01 @ Pass over 1
	.byte 0x01 @ Pass over 2
	.byte 0x01 @ Pass over 3
	.byte 0x01 @ Pass over 4
	.byte 0x01 @ Pass over 5
	.byte 0x01 @ Pass over 6
	.byte 0x01 @ Pass over 7
	.byte 0x01 @ Pass over 8

	.4byte 0x00011800
	.4byte 0x00005000
	.2byte 0x00C0 @ Speed going up
	.2byte 0x0080 @ Speed going down
	.2byte 0x0000
	.2byte 0x0010 @ Time staying up
	.byte 0x01 @ Pass over 1
	.byte 0x01 @ Pass over 2
	.byte 0x01 @ Pass over 3
	.byte 0x01 @ Pass over 4
	.byte 0x01 @ Pass over 5
	.byte 0x01 @ Pass over 6
	.byte 0x01 @ Pass over 7
	.byte 0x01 @ Pass over 8
	
	.GLOBAL gUnknown_0807C388
gUnknown_0807C388:
	.INCBIN "baserom.gba", 0x7C388, 0x7C3E8-0x7C388
	
	.GLOBAL gUnknown_0807C3E8
gUnknown_0807C3E8:
	.INCBIN "baserom.gba", 0x7C3E8, 0x7C430-0x7C3E8
	
	.GLOBAL gUnknown_0807C430
gUnknown_0807C430:
	.INCBIN "baserom.gba", 0x7C430, 0x7C490-0x7C430
	
	.GLOBAL gUnknown_0807C490
gUnknown_0807C490:
	.INCBIN "baserom.gba", 0x7C490, 0x7C4A8-0x7C490
	
	.GLOBAL gUnknown_0807C4A8
gUnknown_0807C4A8:
	.INCBIN "baserom.gba", 0x7C4A8, 0x7C4C0-0x7C4A8
	
	.GLOBAL gUnknown_0807C4C0
gUnknown_0807C4C0:
	.INCBIN "baserom.gba", 0x7C4C0, 0x7C520-0x7C4C0

	.GLOBAL gUnknown_0807C520
gUnknown_0807C520:
	.INCBIN "baserom.gba", 0x7C520, 0x7C538-0x7C520
	
	.GLOBAL gUnknown_0807C538
gUnknown_0807C538:
	.INCBIN "baserom.gba", 0x7C538, 0x7C568-0x7C538
	
	.GLOBAL gUnknown_0807C568
gUnknown_0807C568:
	.INCBIN "baserom.gba", 0x7C568, 0x7C5C8-0x7C568
	
	.GLOBAL gUnknown_0807C5C8
gUnknown_0807C5C8:
	.INCBIN "baserom.gba", 0x7C5C8, 0x7C5E0-0x7C5C8
	
	.GLOBAL gUnknown_0807C5E0
gUnknown_0807C5E0:
	.INCBIN "baserom.gba", 0x7C5E0, 0x7C5F8-0x7C5E0
	
	.GLOBAL gUnknown_0807C5F8
gUnknown_0807C5F8:
	.INCBIN "baserom.gba", 0x7C5F8, 0x7C658-0x7C5F8

	.GLOBAL gUnknown_0807C658
gUnknown_0807C658:
	.INCBIN "baserom.gba", 0x7C658, 0x7C670-0x7C658

	.GLOBAL gUnknown_0807C670
gUnknown_0807C670:
	.INCBIN "baserom.gba", 0x7C670, 0x7C688-0x7C670

	.GLOBAL gUnknown_0807C688
gUnknown_0807C688:
	.INCBIN "baserom.gba", 0x7C688, 0x7C6E8-0x7C688

	.GLOBAL gUnknown_0807C6E8
gUnknown_0807C6E8:
	.INCBIN "baserom.gba", 0x7C6E8, 0x7C700-0x7C6E8

	.GLOBAL gUnknown_0807C700
gUnknown_0807C700:
	.INCBIN "baserom.gba", 0x7C700, 0x7C7A8-0x7C700

	.GLOBAL gUnknown_0807C7A8
gUnknown_0807C7A8:
	.INCBIN "baserom.gba", 0x7C7A8, 0x7C7C4-0x7C7A8

	.GLOBAL gUnknown_0807C7C4  @ 3-1 tutorial lava geyser pass over trigger
gUnknown_0807C7C4:
	.byte 0x01
	.byte 0x01
	.byte 0x01
	.byte 0x01
	.byte 0x01
	.byte 0x01
	.byte 0x01
	.byte 0x00

	.GLOBAL gUnknown_0807C7CC
gUnknown_0807C7CC:
	.4byte gUnknown_0807C280 @ 3-1A lava geyser (includes tutorial)
	.4byte gUnknown_0807C2C8 @ 3-1B lava geyser
	
	.4byte gUnknown_0807C388 @ unused 3-2A lava geyser
	.4byte gUnknown_0807C3E8 @ unused 3-2B lava geyser
	
	.4byte gUnknown_0807C490 @ unused 3-3A lava geyser
	.4byte gUnknown_0807C4A8 @ unused 3-3B lava geyser
	
	.4byte gUnknown_0807C520 @ unused 3-4A lava geyser
	.4byte gUnknown_0807C538 @ unused 3-4B lava geyser
	
	.4byte gUnknown_0807C5C8 @ unused 3-5A lava geyser
	.4byte gUnknown_0807C5E0 @ unused 3-5B lava geyser
	
	.4byte gUnknown_0807C658 @ unused 3-6A lava geyser
	.4byte gUnknown_0807C670 @ unused 3-6B lava geyser
	
	.4byte gUnknown_0807C6E8 @ unused 3-MM lava geyser
	.4byte gUnknown_0807C700 @ unused 3-DK lava geyser

	.GLOBAL gUnknown_0807C804
gUnknown_0807C804:
	.byte 0x03 @ 3-1A lava geyser count
	.byte 0x02 @ 3-1B lava geyser count
	
	.byte 0x04 @ unused 3-2A lava geyser count
	.byte 0x02 @ unused 3-2B lava geyser count
	
	.byte 0x01 @ unused 3-3A lava geyser count
	.byte 0x00 @ unused 3-3B lava geyser count
	
	.byte 0x01 @ unused 3-4A lava geyser count
	.byte 0x01 @ unused 3-4B lava geyser count
	
	.byte 0x01 @ unused 3-5A lava geyser count
	.byte 0x00 @ unused 3-5B lava geyser count
	
	.byte 0x01 @ unused 3-6A lava geyser count
	.byte 0x00 @ unused 3-6B lava geyser count
	
	.byte 0x01 @ unused 3-MM lava geyser count
	.byte 0x02 @ unused 3-DK lava geyser count
	
	.byte 0x00 @ unused
	.byte 0x00 @ unused
	
	.GLOBAL gUnknown_0807C814
gUnknown_0807C814:
	.4byte gUnknown_0807C310 @ unused 3-1+ lava geyser
	.4byte gUnknown_0807C430 @ unused 3-2+ lava geyser
	.4byte gUnknown_0807C4C0 @ unused 3-3+ lava geyser
	.4byte gUnknown_0807C568 @ unused 3-4+ lava geyser
	.4byte gUnknown_0807C5F8 @ unused 3-5+ lava geyser
	.4byte gUnknown_0807C688 @ unused 3-6+ lava geyser

	.GLOBAL gUnknown_0807C82C
gUnknown_0807C82C:
	.byte 0x03 @ unused 3-1+ lava geyser count
	.byte 0x02 @ unused 3-2+ lava geyser count
	.byte 0x02 @ unused 3-3+ lava geyser count
	.byte 0x02 @ unused 3-4+ lava geyser count
	.byte 0x02 @ unused 3-5+ lava geyser count
	.byte 0x02 @ unused 3-6+ lava geyser count
	.byte 0x00 @ unused
	.byte 0x00 @ unused

	.GLOBAL gUnknown_0807C834
gUnknown_0807C834:
	.4byte gUnknown_0807C358 @ unused expert 3 lava geyser

	.GLOBAL gUnknown_0807C838
gUnknown_0807C838:
	.byte 0x02 @ unused expert 3 lava geyser count
	.byte 0x00 @ unused

	.GLOBAL gUnknown_0807C83A
gUnknown_0807C83A: @ Lava geyser falling
	.2byte 0x0169
	.2byte 0x0143
	.2byte 0x011D
	.2byte 0x00F7
	.2byte 0x00D1
	.2byte 0x00AB
	.2byte 0x0085
	.2byte 0x005F
	.2byte 0x0039
	.2byte 0x0013
	.2byte 0x0000
