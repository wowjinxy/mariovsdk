#include "gba/gba.h"
#include "global.h"
#include "main.h"

u8 sub_0800EF8C() {
    // ...
    u8 var1;
    
    gUnknown_03000A10.unk39 = 0;
    
    sub_0801B310();
    gUnknown_03000A10.unk2C++;
    if (gUnknown_03000A10.unk2C < 0xF) {
        var1 = 3;
    }
    else {
        sub_08071990(0x23,8,1,0x40,0,0x80,0);
        var1 = 0;
    }
    return var1;
}

void sub_0800EFD8(u32 param_1, u32 param_2, u8 param_3) {
    // ...
    if (gUnknown_03000A10.unk44 == '\x00' ) {
        gUnknown_03000A10.unk3C = param_1;
        gUnknown_03000A10.unk40 = param_2;
    }
    gUnknown_03000A10.unk44 = param_3;
}
void sub_0800F000(void) {
    gUnknown_03000A10.unk44 = 0;
}
void sub_0800F010(void) {
    gUnknown_03000A10.unk7C = 0;
    gUnknown_03000A10.unk7D = 0;
    gUnknown_03000A10.unk7B = 1;
}
void sub_0800F02C(void) {
    gUnknown_03000A10.unkD6 = 1;
    gUnknown_03000A10.unk120 = 0;
    gUnknown_03000A10.unk121 = 0;
    gUnknown_03000A10.unk122 = 0;
    gUnknown_03000A10.unk123 = 0;
    gUnknown_03000A10.unk124 = 0;
}
void sub_0800F060(void) {
	gUnknown_03000A10.unkD6 = 0;
}
