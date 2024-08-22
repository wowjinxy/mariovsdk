#include "gba/gba.h"
#include "global.h"
#include "main.h"

void sub_08006CF0(u32 param1, u32 param2) {

    gUnknown_03000008.unk0 = param1;
    gUnknown_03000008.unk4 = param2;
    gUnknown_03000008.unk14 = 0;
    
    if (gUnknown_03000008.unk10 != 0) { 
        memcpy((u32*)gUnknown_03000008.unk10, (u32*)param1, 0x200);
        gUnknown_03000968 = &sub_080003D0; // todo: fix assignment from incompatible pointer type
    }
}

void sub_08006D24(u32 param1) {
	
    if (gUnknown_03000008.unk14 == 0) { 
		gUnknown_03000008.unk8 = 1 << param1;
		gUnknown_03000008.unkC = param1;
		gUnknown_03000008.unk14 = 1;
    }
}

void sub_08006D44(void) {

    if ((gUnknown_03000008.unk8 < 1) || (gUnknown_03000008.unk14 == 0)) {
        gUnknown_03000008.unk14 = 0;
    }
    else {
        gUnknown_03000008.unk8--;
        if (gUnknown_03000008.unk8 == 0) {
            memcpy((u32*)gUnknown_03000008.unk10, (u32*)gUnknown_03000008.unk4, 0x200);
        }
        else {
            gUnknown_03000968(&gUnknown_03000008.unk0);
        }
    }
}

void sub_08006D88(void) {
	
	gUnknown_03000008.unk14 = 0;
}

void sub_08006D94(void) {

    if (gUnknown_03000008.unk14 != 0) {
    DmaCopy16(0, gUnknown_03000008.unk10, PLTT, 0x200);
    }
}

u32 sub_08006DC0(void) {
	
	return gUnknown_03000008.unk14 == 0;
}
