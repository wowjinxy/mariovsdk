#include "gba/gba.h"
#include "global.h"
#include "main.h"

// TODO: move this into e-card stuff when the rest of that is done.

void sub_0802D614(u32 param_1) {
    register u32 var1 asm ("r4");
    register u32 var2 asm ("r3");
    register u32 temp_r4 asm ("r4");
    change_main_state(0x1a, 0);

    gUnknown_030001C0 = param_1;
    gUnknown_030001B4 = 1;
    *gUnknown_030001BC = 0;
    var2 = gUnknown_030001C0;

    temp_r4 = gUnknown_030001C0;
    if (*(u16 *)(temp_r4 + 6) == 1) {
        if (sub_08031944(temp_r4) == 2) {
            var2 = 6;
        } else {
            if (sub_08031944(temp_r4) == 1) {
                var2 = 7;
            } else {
				sub_08031978(temp_r4);
                var2 = 5;
            }
        }
    } else {
        var1 = sub_0802F090(temp_r4 + 0x10);
        var2 = -1;
        if (var1 != 0) {
            var2 = 3;
        }
    }

    gUnknown_030001B8 = 0;
    if (var2 == -1) {
        gUnknown_030001A8 = 4;
    } else if (var2 == 3) {
        gUnknown_030001A8 = 5;
    } else {
        gUnknown_030001A8 = 6;
        gUnknown_030001AC = (u32)&gUnknown_0807C850[var2 * 10];
        gUnknown_030001B0 = 0;
    }
}
