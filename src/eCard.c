#include "gba/gba.h"
#include "global.h"
#include "arena.h"
#include "main.h"

void e_world_from_menu_loop(void) {
	
    s32 temp1;
    u16 temp2 = 0;

DmaFill32(3, 0xa0, gOamBuffer, 0x400); 
    
    sub_080351E0();

      if (gUnknown_03000288 == 1) {
    sub_08031D44(gUnknown_03000294,gUnknown_03000298,0x14,0);
  }
      else if (gUnknown_03000288 >= (temp1 = 1)) { 
           if (6 > gUnknown_03000288) {
           if ((gUnknown_03000288 >= (temp1 = 3))){ 
    sub_08034CCC(gTextErasing,0xffff8001,0x14,0xffffffff,2);
  }}}
    
    sub_08035108(&temp2);
DmaCopy16(3, gOamBuffer, 0x7000000, 0x400);
}

void e_world_from_menu_init_callback(void) {

    u32 var1;
    u16 var2[2];
    arena_restore_head(0);
    gVRAMCurrTileNum_03001930 = gObjVRAMCopyOffset_0300192C = 0;
    e_world_init_callback();
    sub_08006968(&gEWorldMenuData2);
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
