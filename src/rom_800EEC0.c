#include "gba/gba.h"
#include "global.h"
#include "main.h"



void sub_0800EEC0(void) {
	
	return;
}

void sub_0800EEC4(void) {
	
	return;
}

void sub_0800EEC8(u8 param1) {

    gUnknown_03000A10.padA[0x2] = param1 | gUnknown_03000A10.padA[0x2];
    if (gUnknown_03000A10.padA[0x3] == 0) {
        sub_08071990(0x1b,8,0x10,0x40,0,0x80,0);
    }
    gUnknown_03000A10.padA[0x3] = gUnknown_03000A10.padA[0x2];
}

void sub_0800EF0C(void) {
	
    gUnknown_03000A10.pad4[0x28] = 0;
}
void sub_0800EF1C(void) {
	
     gUnknown_03000A10.padA[0x2] = 0;
     gUnknown_03000A10.padA[0x3] = 0;
}

u8 sub_0800EF30() {

    u32 var1;
    u8 var2;
    
    gUnknown_03000A10.unk39 = 0;
    sub_0801B310();
    
    var1 = sub_08033658();

    if (var1 != 0) {
        gUnknown_03000A10.unk2C = 0;
        sub_08071E14(0x40);
        var2 = 3;
    }
    else {
        if (gUnknown_03000A10.pad2[0x38] == 0x1) {
         gUnknown_03000A10.pad2[0x38] = 0;
         sub_08071990(0x41,8,1,0x40,0,0x80,0);
        }
        var2 = 2;
}
    return var2;
}

u8 sub_0800EF8C() {

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
