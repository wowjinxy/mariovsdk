#include "gba/gba.h"
#include "global.h"

void sub_08038414(u16 newKeys, u16 heldKeys)
{
   if ((gUnknown_03001A1C & 0x81100) != 0x80000
    || gUnknown_030019D8 == 5
    || (gUnknown_03001A1C & 0x200000)
    || (gUnknown_030019A0 & 0x20000000)) {
        s16 i = 0;
        for (i = 0; i < 10; i++) {
              gUnknown_03001A10[i] = gUnknown_030019C0[i] = 0;
        }
        gUnknown_03001944 = gUnknown_03001990 = gUnknown_030019F4 = 0;  
    } else {
        gUnknown_03001A4C = gUnknown_03001990;
        gUnknown_03001A10[gUnknown_03001944] = gUnknown_03001990;
        gUnknown_030019C0[gUnknown_03001944] = gUnknown_03001990 | gUnknown_030019F4;
        gUnknown_03001944 = (gUnknown_03001944 < 9) ? (gUnknown_03001944 + 1) : 0;
        gUnknown_030019F4 = gUnknown_030019A4;
        gUnknown_03001990 = gUnknown_030019A4;
        if (newKeys & A_BUTTON) {
            gUnknown_03001990 |= 0x10;
        } 
        if (newKeys & B_BUTTON) {
            gUnknown_03001990 |= 0x20;
        } 
        if (heldKeys & A_BUTTON) {
            gUnknown_030019F4 |= 0x10;
        }
        if (heldKeys & B_BUTTON) {
            gUnknown_030019F4 |= 0x20;
        }
        if (heldKeys & DPAD_ANY) {
            if (heldKeys & DPAD_UP) {
                gUnknown_03001990 |= 1;
                gUnknown_030019F4 |= 1;
            }
            if (heldKeys & DPAD_DOWN) {
                gUnknown_03001990 |= 2;
                gUnknown_030019F4 |= 2;
            }
            if (heldKeys & DPAD_LEFT) {
                gUnknown_03001990 |= 4;
                gUnknown_030019F4 |= 4;
            }
            if (heldKeys & DPAD_RIGHT) {
                gUnknown_03001990 |= 8;
                gUnknown_030019F4 |= 8;
            }
        }
        if (gUnknown_03001990 != 0) {
            gMarioIdleTimer = 0;
        } else {
            gMarioIdleTimer = (gMarioIdleTimer + 1) & 0x7fff;
        }
        if (gUnknown_03001990 != gUnknown_03001A4C) {
            gUnknown_03001A3C = 0;
        }
        else {
            gUnknown_03001A3C++;
        } 
    }
}
