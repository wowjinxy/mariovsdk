#include "gba/gba.h"
#include "global.h"
#include "main.h"
#include "sprites.h"

void sub_0804A8E8(void) {
    u8 var_0;
    s32 var_1;
    s32 var_2;
    
    switch(gUnknown_03000387){
        case 0:
            if ((2 < gLevelCollectableFlags.letterT + gLevelCollectableFlags.letterO + gLevelCollectableFlags.letterY)
        && ((gUnknown_030019AC->unk84->unkC & 0x4000) != 0))
        {
            if (gUnknown_03001B88 == gUnknown_030019AC->unk24 >> 8) {
                if ((gUnknown_03001BA4 - (gUnknown_030019AC->unk20 >> 8)) >= 0x0) {
                    if (((gUnknown_03001BA4 - (gUnknown_030019AC->unk20 >> 8)) <= 0x27)) {
                       goto  partB;
                    }
                } else {
                    if ((((gUnknown_030019AC->unk20 >> 8) - gUnknown_03001BA4) <= 0x27)) {
                        partB:
                        gUnknown_03000387 = 1;
                        sub_080410B4(gUnknown_03001BD0->unk3D, 0x47, 0);
                    }
                }
            }
        }
        break;
        case 1:
        if (gUnknown_0300038B != 0x0) {
            gUnknown_0300038C++;
            if (gUnknown_0300038C > 0x1C) {
                gUnknown_0300038B = 0x0;
            }
        }
        break;
        case 2:
        if ((gUnknown_03001B8C == 0x0) && (gUnknown_03001B84 == 0)) {
                gUnknown_03001B80 = gUnknown_03001B80 + 0x1;
                if ((gMiniMariosRescued_03001BA0 != 0x0) && (gUnknown_03001B80 == 0x1E)) {
                    gUnknown_03001B8C = 0x1;
                    gUnknown_03000389 = gUnknown_03001B84;
                    gUnknown_0300038A = gUnknown_0812E128[0].duration;
                }
            }
            else {
                var_0 = gUnknown_0300038A;
                gUnknown_0300038A = var_0-1;
                var_0--;
                if (var_0 == 0) {
                    gUnknown_03000389++;
                    if (1 < gUnknown_03000389) {
                        gUnknown_03000389 = var_0;
                    }
                    gUnknown_0300038A = gUnknown_0812E128[gUnknown_03000389].duration;
                }
            }
            
            if ((gUnknown_03001BD0->unk0[2] == 5) &&
            ((gUnknown_030019AC->unk84->unkC & 0x4000) != 0)) {
                gUnknown_030019A0 = gUnknown_030019A0 | 0x20000000;
                if (0x3c < gUnknown_030019AC->unk54) {
                    gUnknown_03001A1C = gUnknown_03001A1C | 0x4300;
                    gUnknown_03000387 = 3;
                    gUnknown_0300038B = 0x0;
                    gUnknown_03001B8C = 0x0;
                }
            }
        break;
    }
}

