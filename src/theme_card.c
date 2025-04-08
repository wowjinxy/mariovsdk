#include "gba/gba.h"
#include "global.h"
#include "arena.h"
#include "main.h"
#include "savefile.h"
#include "sound.h"

extern u32 gThemeCardExists_03000280;
extern char gTextBlank2[];
extern struct ThemeCardHeader *gThemeCardPtr;  // pointer to some struct
void load_theme_card_data_08031804(struct GraphicsConfig *, u32, u32);


int check_if_theme_card_exists_08031944(struct ThemeCardHeader *cardData)
{
	if (gThemeCardExists_03000280 == 0){
        return 0;
	} 
    else if ((cardData != 0) && (gThemeCardPtr->cardChecksum == cardData->cardChecksum)){
		return 2;
	}
	return 1;
}

void load_theme_card_08031978(struct ThemeCardHeader * cardData)
{

    if (cardData == NULL) {
        gThemeCardExists_03000280 = 0;
    } 
    else {
        gThemeCardExists_03000280 = 1;
        CpuSet(cardData, gThemeCardPtr, 0x14);
        load_compressed_data(*&cardData->cardData, gThemeCardPtr->cardData, 0);
    }
}

void load_level_with_theme_card_080319BC(struct GraphicsConfig *worldData, struct UnknownStruct5 *levelInWorld, u32 worldID) {
    u16 bgCnt;
    u16 *pvar2;
    u32 dataLeft;
    u16* dataSize;
    u16* pvar5;
    u32 themeCardPalPtr;

    if ((gThemeCardExists_03000280 != 0) && (worldID == gThemeCardPtr->worldType)){
        load_theme_card_data_08031804(worldData, BACKGROUND_TYPE_LEVEL_TILES, 1);
        load_theme_card_data_08031804(levelInWorld->backgroundData, levelInWorld->backgroundType, 2);
        themeCardPalPtr = gThemeCardPtr->palPtr;
        if (themeCardPalPtr != 0) {
            register u16* p asm("r0") = (u16*)((u8*)gThemeCardPtr + themeCardPalPtr);
            u16 r6;
            bgCnt = p[0];
            r6 = p[1];
            dataSize = p + 2;
            
            if(bgCnt != 0) {
                pvar5 = (u16*)((u32)dataSize + bgCnt);
                while (dataSize < pvar5) {
                    u32 dataLeft, temp4;
                    dataLeft = *dataSize;
                    dataLeft *= r6;
                    dataSize++;
                    temp4 = *dataSize++;
                    temp4 *= r6;
                    if (dataLeft != 0) {
                        CpuSet(dataSize, ((u32*)(BG_PLTT + temp4)), (dataLeft * 1024) >> 0xB);
                    }

                    (u32)dataSize += dataLeft;
                }
            }
        }
    }
}

char *get_theme_card_name_08031A38(struct ThemeCardHeader *cardData) 
{
    if (cardData == NULL){
        if (gThemeCardExists_03000280 == 0) {
            return gTextBlank2;
        }
        cardData = gThemeCardPtr;
    }
    return cardData->name;
}
