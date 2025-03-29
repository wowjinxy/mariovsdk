#include "gba/gba.h"
#include "global.h"
#include "main.h"

// TODO: move this into e-card stuff when the rest of that is done.

void sub_0802D614(struct Struct1C0 *param_1)
{
    u32 var2;
    struct Struct1C0 *temp_r4;

    change_main_state(MAIN_STATE_CONNECT_EREADER, FALSE);
    gUnknown_030001C0 = param_1;
    gUnknown_030001B4 = 1;
    *gUnknown_030001BC = 0;

    temp_r4 = gUnknown_030001C0;
    if (temp_r4->unk6 == 1) {
        if (check_if_theme_card_exists_08031944(temp_r4) == 2)
            var2 = 6;
        else if (check_if_theme_card_exists_08031944(temp_r4) == 1)
            var2 = 7;
        else
        {
            load_theme_card_08031978(temp_r4);
            var2 = 5;
        }
    } else {
        if (sub_0802F090(&temp_r4->unk10) != 0)
            var2 = 3;
        else
            var2 = -1;
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
