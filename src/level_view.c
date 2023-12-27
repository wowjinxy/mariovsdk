#include "gba/gba.h"
#include "global.h"
#include "main.h"


//todo: uncomment this when `sub_080322A8` in asm/level_view.s gets decompiled

//void level_view_main(void) {

//    u8 temp1;
//    sub_080331FC();
//    if ((gUnknown_030012E0 & 0x300) != 0x300) {
//        gUnknown_030019A0 |= 0x40000000;
//   }
//    sub_0800CC6C();
//    sub_08041F70();
//    if (gUnknown_03001A38 == 0x1) {
//        gUnknown_03001A38 =  sub_0800C5A4();
//    } else if (gUnknown_03001A38 == 0x2) {
//         gUnknown_03001A38 = sub_0800EF30();
//    } else if (gUnknown_03001A38 == 0x3) {
//         gUnknown_03001A38 = sub_0800EF8C();
//        if (gUnknown_03001A38 == 0x0) {
//           sub_08072118();
//            sub_080070E8(0x13, 0);
//        }
//    }
//    temp1 = _call_via_r0(gNextLevelInLevelTable.unkC);
//    if (gNextLevelInLevelTable.unk12 == 2) {
//        sub_0802BEA4(0);
//    }
//    else {
//        sub_0802BE50();
//    }
//}

//todo: decompile `sub_080322A8` in asm/level_view.s 

//void sub_080322A8(void) {
	
//}

void level_view_init_callback(void) {
    
	sub_080720E4();
	sub_08040F54();
	gUnknown_03001A38 = 1; 
	sub_08071C24();
	sub_08071990(0x1a,8,0x10,0x40,0,0x80,0);
	gUnknown_030019A0 = gUnknown_030019A0 & 0xbfffffff;
	gUnknown_03000B78 = 1;
	gUnknown_03001A00 = 0;
}

void level_view_loop() { // 0x080323CC
	u32 var1;
	var1 = gMainState;
	gMainState = MAIN_STATE_LEVEL_PLAY;
	level_play_loop();
	gMainState = var1;
}

void level_view_end() { // 0x080323E8
	
	gUnknown_03000B78 = 0;
	gUnknown_03001A00 = 1;
	sub_0800F060();
}