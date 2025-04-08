#include "gba/gba.h"
#include "global.h"
#include "arena.h"
#include "main.h"
#include "sound.h"
#include "sprites.h"
#include "savefile.h"
#include "gba/io_reg.h"
#include <assert.h>

// TODO: move this into e-card stuff when the rest of that is done.
extern u8 gUnknown_0807DC90[];

void load_debug_card_e_0802D614(struct LevelCardHeader *cardDataPtr)
{
    u32 var2;
    struct LevelCardHeader *cardData;

    change_main_state(MAIN_STATE_CONNECT_EREADER, FALSE);
    gUnknown_030001C0 = cardDataPtr;
    gUnknown_030001B4 = 1;
    *gUnknown_030001BC = 0;

    cardData = gUnknown_030001C0;
    if (cardData->cardType == CARD_TYPE_THEME) {
        if (check_if_theme_card_exists_08031944((struct ThemeCardHeader *)cardData) == 2)
            var2 = 6;
        else if (check_if_theme_card_exists_08031944((struct ThemeCardHeader *)cardData) == 1)
            var2 = 7;
        else
        {
            load_theme_card_08031978((struct ThemeCardHeader *)cardData);
            var2 = 5;
        }
    } else {
        if (sub_0802F090(&cardData->cardName) != 0)
            var2 = 3;
        else
            var2 = -1;
    }

    gUnknown_030001B8 = 0;
    if (var2 == -1) {
        gECardMenuState_030001A8 = 4;
    } else if (var2 == 3) {
        gECardMenuState_030001A8 = 5;
    } else {
        gECardMenuState_030001A8 = 6;
        gCardReadFailReason_030001AC = (u32)&gUnknown_0807C850[var2 * 10];
        gUnknown_030001B0 = 0;
    }
}
