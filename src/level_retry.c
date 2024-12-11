#include "gba/gba.h"
#include "global.h"
#include "main.h"
#include "sound.h"
#include "sprites.h"

static u8 gUnknown_03000150;
static u8 gUnknown_03000151;
static s8 gUnknown_03000152;
static s8 gUnknown_03000153;
static s8 gUnknown_03000154;
static s8 gUnknown_03000155;
static s8 gUnknown_03000156;
static s8 gUnknown_03000157;

struct Struct0807A974
{
    u8 unk0;
    u8 unk1;
};

static struct Struct0807A974 gUnknown_0807A974[] =
{
    { 1, 11 },
    { 3,  7 },
    { 1, 11 },
    { 0, 11 },
    { 0, 11 },
    { 1, 11 },
    { 2,  7 },
    { 1, 11 },
    { 0, 11 },
    { 3,  7 },
    { 1, 11 },
    { 0, 11 },
    { 3,  7 },
    { 1, 11 },
    { 1, 11 },
    { 0, 11 },
    { 2,  7 },
    { 0, 11 },
    { 2,  7 },
    { 2,  7 },
    { 3,  8 },
    { 1, 11 },
    { 2,  7 },
    { 3,  7 },
    { 0, 11 },
    { 1, 11 },
    { 0, 11 },
    { 1, 11 },
    { 1, 11 },
    { 0, 11 },
    { 3,  8 },
    { 1, 11 },
    { 0, 11 },
    { 1, 11 },
    { 2,  7 },
    { 2,  7 },
    { 0, 11 },
    { 1, 11 },
    { 2,  7 },
    { 0, 11 },
    { 1, 11 },
    { 3,  7 },
};

void level_retry_init_callback(void)
{
    REG_DISPCNT |= DISPCNT_OBJWIN_ON;
    if (gMainState == MAIN_STATE_RESPAWN)
    {
        gUnknown_03000154 = 4;
        gUnknown_03000155 = 2;
        load_predefined_palette(PALETTE_4, LOAD_OBJ_PALETTE);
    }
    else
    {
        if (gMainState == MAIN_STATE_DEMO)
            sound_stop_music();
        switch (gUnknown_0807A974[(gNextLevelID >> 1) + gCurrentWorld * 7].unk0)
        {
        case 0:
            gUnknown_03000156 = gUnknown_03000152 = gUnknown_0807A974[(gNextLevelID >> 1) + gCurrentWorld * 7].unk1;
            gUnknown_03000157 = 20;
            gUnknown_03000153 = 0;
            gUnknown_03000154 = 30;
            gUnknown_03000155 = 20;
            break;
        case 1:
            gUnknown_03000156 = 30 - gUnknown_0807A974[(gNextLevelID >> 1) + gCurrentWorld * 7].unk1;
            gUnknown_03000157 = 20;
            gUnknown_03000152 = 0;
            gUnknown_03000153 = 0;
            gUnknown_03000154 = 30 - gUnknown_0807A974[(gNextLevelID >> 1) + gCurrentWorld * 7].unk1;
            gUnknown_03000155 = 20;
            break;
        case 2:
            gUnknown_03000156 = 30;
            gUnknown_03000157 = gUnknown_03000153 = gUnknown_0807A974[(gNextLevelID >> 1) + gCurrentWorld * 7].unk1;
            gUnknown_03000152 = 0;
            gUnknown_03000154 = 30;
            gUnknown_03000155 = 20;
            break;
        case 3:
            gUnknown_03000156 = 30;
            gUnknown_03000157 = 20 - gUnknown_0807A974[(gNextLevelID >> 1) + gCurrentWorld * 7].unk1;
            gUnknown_03000152 = 0;
            gUnknown_03000153 = 0;
            gUnknown_03000154 = 30;
            gUnknown_03000155 = 20 - gUnknown_0807A974[(gNextLevelID >> 1) + gCurrentWorld * 7].unk1;
            break;
        }
    }
    gUnknown_03000150 = 1;
}

void level_retry_main(void)
{
    if (gUnknown_03000150 == 2)
    {
        if (++gUnknown_03000151 == 30)
        {
            gUnknown_03000150 = 3;
            if (gMainState == MAIN_STATE_RESPAWN)
            {
                sub_080072A4();
                sub_08040B28();
                gNextLevelInLevelTable.unkC();
                if (gNextLevelInLevelTable.unk12 == 2)
                    sub_0802BEA4(0);
                else
                    sub_0802BE50();
            }
            else
            {
                sub_0802C71C();
                gNextLevelInLevelTable.unkC();
            }
            gCurrentSwitchState = gPreviousSwitchState = 1;
            press_color_switch(1, 1);
        }
    }
    else if (gUnknown_03000150 == 0)
    {
        REG_DISPCNT &= ~DISPCNT_OBJWIN_ON;
        gUnknown_03001B98 = 1;
        if (gMainState == MAIN_STATE_RESPAWN)
            change_main_state(MAIN_STATE_UNKNOWN_15, NO_FADE);
        else
            change_main_state(MAIN_STATE_TUTORIAL_SETUP, NO_FADE);
    }
    else if (gUnknown_03000150 == 3)
    {
        if (gMainState == MAIN_STATE_RESPAWN)
        {
            gNextLevelInLevelTable.unkC();
            if (gNextLevelInLevelTable.unk12 == 2)
                sub_0802BEA4(0);
            else
                sub_0802BE50();
        }
    }
}

void sub_0802ADAC(s8 arg0)
{
    if (gUnknown_03000150 == 1)
    {
        gUnknown_03000156 += arg0;
        if (arg0 > 0)
        {
            if (gUnknown_03000156 >= gUnknown_03000154)
            {
                gUnknown_03000156 = gUnknown_03000154;
                gUnknown_03000150 = 2;
                gUnknown_03000151 = 0;
            }
        }
        else
        {
            if (gUnknown_03000156 <= gUnknown_03000152)
            {
                gUnknown_03000156 = gUnknown_03000152;
                gUnknown_03000150 = 2;
                gUnknown_03000151 = 0;
            }
        }
    }
    else if (gUnknown_03000150 == 3)
    {
        gUnknown_03000156 -= arg0;
        if (arg0 > 0)
        {
            if (gUnknown_03000156 <= gUnknown_03000152)
            {
                gUnknown_03000156 = gUnknown_03000152;
                gUnknown_03000150 = 0;
            }
        }
        else
        {
            if (gUnknown_03000156 >= gUnknown_03000154)
            {
                gUnknown_03000156 = gUnknown_03000154;
                gUnknown_03000150 = 0;
            }
        }
    }
}

void sub_0802AE68(s8 arg0)
{
    if (gUnknown_03000150 == 1)
    {
        gUnknown_03000157 += arg0;
        if (arg0 > 0)
        {
            if (gUnknown_03000157 >= gUnknown_03000155)
            {
                gUnknown_03000157 = gUnknown_03000155;
                gUnknown_03000150 = 2;
                gUnknown_03000151 = 0;
            }
        }
        else
        {
            if (gUnknown_03000157 <= gUnknown_03000153)
            {
                gUnknown_03000157 = gUnknown_03000153;
                gUnknown_03000150 = 2;
                gUnknown_03000151 = 0;
            }
        }
    }
    else if (gUnknown_03000150 == 3)
    {
        gUnknown_03000157 -= arg0;
        if (arg0 > 0)
        {
            if (gUnknown_03000157 <= gUnknown_03000153)
            {
                gUnknown_03000157 = gUnknown_03000153;
                gUnknown_03000150 = 0;
            }
        }
        else
        {
            if (gUnknown_03000157 >= gUnknown_03000155)
            {
                gUnknown_03000157 = gUnknown_03000155;
                gUnknown_03000150 = 0;
            }
        }
    }
}

void sub_0802AF24(u16 *oamIndex, u16 *tileNum, u16 *vramOffset)
{
    u16 tNum;
    u16 x, y;

    DmaCopy32(3, gUnknown_08342EB4, OBJ_VRAM0 + *vramOffset, 0x100);
    tNum = *tileNum;
    *tileNum += 8;
    *vramOffset += 0x100;
    for (y = gUnknown_03000153; y < gUnknown_03000155; y += 2)
    {
        for (x = gUnknown_03000152; x < gUnknown_03000156; x += 2)
        {
            DmaCopy32(3, &gUnknown_08342EAC, &gOamBuffer[*oamIndex], sizeof(struct OamData));
            gOamBuffer[*oamIndex].tileNum = tNum;
            gOamBuffer[*oamIndex].x = x * 8;
            gOamBuffer[*oamIndex].y = y * 8;
            gOamBuffer[*oamIndex].paletteNum = 0;
            gOamBuffer[*oamIndex].priority = 1;
            *oamIndex += 1;
        }
    }
}

void sub_0802B078(u16 *oamIndex, u16 *tileNum, u16 *vramOffset)
{
    u16 tNum;
    u16 x, y;

    DmaCopy32(3, gUnknown_08342EB4, OBJ_VRAM0 + *vramOffset, 0x100);
    tNum = *tileNum;
    *tileNum += 8;
    *vramOffset += 0x100;
    for (y = gUnknown_03000153; y < gUnknown_03000155; y += 2)
    {
        for (x = gUnknown_03000156; x < gUnknown_03000154; x += 2)
        {
            DmaCopy32(3, &gUnknown_08342EAC, &gOamBuffer[*oamIndex], sizeof(struct OamData));
            gOamBuffer[*oamIndex].tileNum = tNum;
            gOamBuffer[*oamIndex].x = x * 8;
            gOamBuffer[*oamIndex].y = y * 8;
            gOamBuffer[*oamIndex].paletteNum = 0;
            gOamBuffer[*oamIndex].priority = 1;
            *oamIndex += 1;
        }
    }
}

void sub_0802B1CC(u16 *oamIndex, u16 *tileNum, u16 *vramOffset)
{
    u16 tNum;
    u16 x, y;

    DmaCopy32(3, gUnknown_08342EB4, OBJ_VRAM0 + *vramOffset, 0x100);
    tNum = *tileNum;
    *tileNum += 8;
    *vramOffset += 0x100;
    for (y = gUnknown_03000153; y < gUnknown_03000157; y += 2)
    {
        for (x = gUnknown_03000152; x < gUnknown_03000154; x += 2)
        {
            DmaCopy32(3, &gUnknown_08342EAC, &gOamBuffer[*oamIndex], sizeof(struct OamData));
            gOamBuffer[*oamIndex].tileNum = tNum;
            gOamBuffer[*oamIndex].x = x * 8;
            gOamBuffer[*oamIndex].y = y * 8;
            gOamBuffer[*oamIndex].paletteNum = 0;
            gOamBuffer[*oamIndex].priority = 0;
            *oamIndex += 1;
        }
    }
}

void sub_0802B31C(u16 *oamIndex, u16 *tileNum, u16 *vramOffset)
{
    u16 tNum;
    u16 x, y;

    DmaCopy32(3, gUnknown_08342EB4, OBJ_VRAM0 + *vramOffset, 0x100);
    tNum = *tileNum;
    *tileNum += 8;
    *vramOffset += 0x100;
    for (y = gUnknown_03000157; y < gUnknown_03000155; y += 2)
    {
        for (x = gUnknown_03000152; x < gUnknown_03000154; x += 2)
        {
            DmaCopy32(3, &gUnknown_08342EAC, &gOamBuffer[*oamIndex], sizeof(struct OamData));
            gOamBuffer[*oamIndex].tileNum = tNum;
            gOamBuffer[*oamIndex].x = x * 8;
            gOamBuffer[*oamIndex].y = y * 8;
            gOamBuffer[*oamIndex].paletteNum = 0;
            gOamBuffer[*oamIndex].priority = 1;
            *oamIndex += 1;
        }
    }
}

void sub_0802B470(void)
{
    u8 r3 = 0;

    if (gUnknown_03000150 == 1)
    {
        gUnknown_03000154++;
        gUnknown_03000155++;
        if (gUnknown_03000154 > 8)
        {
            gUnknown_03000154 = 8;
            r3++;
        }
        if (gUnknown_03000155 > 5)
        {
            gUnknown_03000155 = 5;
            r3++;
        }
        if (r3 == 2)
        {
            gUnknown_03000150 = 2;
            gUnknown_03000151 = 0;
        }
    }
    else if (gUnknown_03000150 == 3)
    {
        gUnknown_03000154--;
        gUnknown_03000155--;
        if (gUnknown_03000154 < 4)
        {
            gUnknown_03000154 = 4;
            r3++;
        }
        if (gUnknown_03000155 < 2)
        {
            gUnknown_03000155 = 2;
            r3++;
        }
        if (r3 == 2)
            gUnknown_03000150 = 0;
    }
}

void sub_0802B518(u16 *oamIndex, u16 *tileNum, u16 *vramOffset)
{
    u16 tNum;
    u16 x, y;
    u16 xOffset, yOffset;

    DmaCopy32(3, gUnknown_082E29F4, OBJ_VRAM0 + *vramOffset, 0x400);
    tNum = *tileNum;
    *tileNum += 32;
    *vramOffset += 0x400;

    xOffset = (240 - gUnknown_03000154 * 32) >> 1;
    yOffset = (160 - gUnknown_03000155 * 32) >> 1;
    for (y = 0; y < gUnknown_03000155; y++)
    {
        for (x = 0; x < gUnknown_03000154; x++)
        {
            DmaCopy32(3, &gUnknown_082E29EC, &gOamBuffer[*oamIndex], sizeof(struct OamData));
            gOamBuffer[*oamIndex].tileNum = tNum;
            gOamBuffer[*oamIndex].x = x * 32 + xOffset;
            gOamBuffer[*oamIndex].y = y * 32 + yOffset;
            gOamBuffer[*oamIndex].paletteNum = 0;
            gOamBuffer[*oamIndex].priority = 0;
            *oamIndex += 1;
        }
    }
}

void sub_0802B674(u16 *oamIndex, u16 *tileNum, u16 *vramOffset)
{
    if (gMainState == MAIN_STATE_RESPAWN)
    {
        if (gUnknown_03000150 == 0)
            return;
        if (gUnknown_03000150 != 2)
            sub_0802B470();
        sub_0802B518(oamIndex, tileNum, vramOffset);
    }
    else
    {
        sub_0806E594(oamIndex, tileNum, vramOffset);
        sub_0800A2B8(8, 0, oamIndex, tileNum, vramOffset);
        if (gMainState != MAIN_STATE_UNKNOWN_18 || gUnknown_03000150 == 0)
            return;
        switch (gUnknown_0807A974[(gNextLevelID >> 1) + gCurrentWorld * 7].unk0)
        {
        case 0:
            sub_0802AF24(oamIndex, tileNum, vramOffset);
            if (gUnknown_03000150 != 2)
                sub_0802ADAC(2);
            break;
        case 1:
            sub_0802B078(oamIndex, tileNum, vramOffset);
            if (gUnknown_03000150 != 2)
                sub_0802ADAC(-2);
            break;
        case 2:
            sub_0802B1CC(oamIndex, tileNum, vramOffset);
            if (gUnknown_03000150 != 2)
                sub_0802AE68(2);
            break;
        case 3:
            sub_0802B31C(oamIndex, tileNum, vramOffset);
            if (gUnknown_03000150 != 2)
                sub_0802AE68(-2);
            break;
        }
    }
}

void level_retry_end(void)
{
    sub_08038B18();
}

void level_retry_loop(void)
{
    level_play_loop();
}

FILE_PAD
