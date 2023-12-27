#include "gba/gba.h"
#include "global.h"
#include "main.h"


//todo: uncomment this when `sub_080322A8` in asm/level_view.s gets decompiled

void level_view_main(void) {

    u8 temp1;
    sub_080331FC();
    if ((gUnknown_030012E0 & 0x300) != 0x300) {
        gUnknown_030019A0 |= 0x40000000;
   }
    sub_0800CC6C();
    sub_08041F70();
    if (gUnknown_03001A38 == 0x1) {
        gUnknown_03001A38 =  sub_0800C5A4();
    } else if (gUnknown_03001A38 == 0x2) {
         gUnknown_03001A38 = sub_0800EF30();
    } else if (gUnknown_03001A38 == 0x3) {
         gUnknown_03001A38 = sub_0800EF8C();
        if (gUnknown_03001A38 == 0x0) {
           sub_08072118();
            sub_080070E8(0x13, 0);
        }
    }
    _call_via_r0(gNextLevelInLevelTable.unkC);
    if (gNextLevelInLevelTable.unk12 == 2) {
        sub_0802BEA4(0);
    }
    else {
        sub_0802BE50();
    }
}



u32 sub_080322A8(u16 *param1, u16 *param2, u16 *param3) {
    if (gUnknown_03000B78 != 0) {
        DmaCopy32(3, gUnknown_082E8908, OBJ_VRAM0 + param3[0], 0x100);
        DmaCopy32(3, gUnknown_082E8900, gOamData + param1[0], 8);

        (&gOamData[param1[0]])->tileNum = param2[0];
        (&gOamData[param1[0]])->x = 0xc8;
        (&gOamData[param1[0]])->y = 0x8c;
        (&gOamData[param1[0]])->priority = 0;

        param2[0] += 8;
        param3[0] += 0x100;
        param1[0] += 1;
    }
}
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