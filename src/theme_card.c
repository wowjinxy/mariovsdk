#include "gba/gba.h"
#include "global.h"
#include "arena.h"
#include "main.h"
#include "savefile.h"
#include "sound.h"

extern u32 gThemeCardExists_03000280;
extern char gTextBlank2[];

extern struct CardSomething *gThemeCardPtr;  // pointer to some struct

char *get_theme_card_name_08031A38(struct CardSomething *cardData) {
    if (cardData == NULL){
        if (gThemeCardExists_03000280 == 0) {
            return gTextBlank2;
        }
        cardData = gThemeCardPtr;
    }
    return cardData->name;
}
