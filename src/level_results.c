#include "gba/gba.h"
#include "global.h"

void level_results_loop(void) {
    u16 sp4, sp6, sp8;
    sp4 = 0;
    sp6 = gUnknown_03001930;
    sp8 = gObjVRAMCopyOffset_0300192C;

    if (!gUnknown_03000C1C) {
        DmaFill32(3, 0xa0, &gOamBuffer, 0x400);
        sub_08031AD4(&sp4);    
        sub_0802F890(&gUnknown_03000E00, &sp4, &sp6, &sp8);
        sub_08030C84(&sp4, &sp6, &sp8);
        DmaCopy32(3, &gOamBuffer, (void *)0x07000000, 0x400);
    }
}

void level_results_end(void) {
	return;
}

asm(".2byte 0x0000");