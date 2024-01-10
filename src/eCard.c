#include "gba/gba.h"
#include "global.h"
#include "main.h"

void e_world_from_menu_init_callback(void) {

    u32 var1;
    u16 var2[2];
    sub_08034898(0);
    gUnknown_03001930 = gUnknown_0300192C = 0;
    e_world_init_callback();
    sub_08006968(&gEWorldMenuData1);
    var1 = sub_0802A458();
    if (var1 != 0) {
        sub_0802F06C();
    }
    var1 = sub_08071FE4();
    if (var1 != 10) {
        sub_0807204C(10, 0x80, 1);
    }
    gUnknown_0300028C = gUnknown_03000288 = 0;
    gUnknown_03000290 = 0;
    var2[0] = 0;
    CpuSet(var2,&gBGLayerOffsets.bg0_x,0x1000008);
}


void e_world_from_menu_end(void) {

	return;
}

asm(".short 0x0000");