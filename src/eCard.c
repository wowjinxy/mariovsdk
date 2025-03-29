#include "gba/gba.h"
#include "global.h"
#include "arena.h"
#include "main.h"
#include "sound.h"

extern struct Struct08031C54 gUnknown_0807DC9C;

extern struct Struct284
{
    u8 unk0;
    u8 filler1[0xA-0x1];
    u16 unkA;
} *gUnknown_03000284;

void sub_08031BF0(void)
{
    u8 unused[4];
    void *mem = arena_allocate(6 * sizeof(*gUnknown_03000284));
    gUnknown_03000284 = mem;
    CpuFill16(0, gUnknown_03000284, 6 * sizeof(*gUnknown_03000284));
}

void sub_08031C1C(void)
{
    int i;

    for (i = 0; i < 6; i++)
    {
        struct Struct284 *r1 = &gUnknown_03000284[i];

        if (r1->unk0 != 0)
        {
            r1->unk0--;
            if (!(r1->unk0 & 1))
                r1->unkA--;
        }
    }
}

int sub_08031C54(s32 *arg0, struct Struct08031C54 *arg1)
{
    if (arg1->unk0 == 0)
    {
        if (gUnknown_03001708 & 0x40)
        {
            if (*arg0 > 0)
            {
                *arg0 -= 1;
                play_sound_effect_08071990(SE_CURSOR_UP_DN, 8, 16, 64, 0, 128, 0);
            }
        }
        else if (gUnknown_03001708 & 0x80)
        {
            if (*arg0 < arg1->unk8 - 1)
            {
                *arg0 += 1;
                play_sound_effect_08071990(SE_CURSOR_UP_DN, 8, 16, 64, 0, 128, 0);
            }
        }
        else if (gNewKeys & (A_BUTTON|START_BUTTON))
        {
            play_sound_effect_08071990(SE_START, 8, 16, 64, 0, 128, 0);
            return arg1->unkC[*arg0].unk0;
        }
    }
    else
    {
        if (gNewKeys & (A_BUTTON|START_BUTTON))
        {
            play_sound_effect_08071990(SE_START, 8, 16, 64, 0, 128, 0);
            return arg1->unkC[0].unk0;
        }
        else if (gNewKeys & B_BUTTON)
        {
            play_sound_effect_08071990(SE_BACK, 8, 16, 64, 0, 128, 0);
            return arg1->unkC[1].unk0;
        }
    }
    return -1;
}

void sub_08031D44(int arg0, struct Struct08031C54 *arg1, int arg2, int arg3)
{
    int i;

    if (arg1->unk25 != 0)
        arg2 = draw_text_font(get_theme_card_name_08031A38(0), -0x7FFF, arg2, -1, 2);
    if (arg1->unk4 != 0)
        arg2 = draw_text_font(arg1->unk4, -0x7FFF, arg2, -1, 2);
    if (arg1->unk26 != 0)
        arg2 = draw_text_font(get_theme_card_name_08031A38(arg3), -0x7FFF, arg2, -1, 2);
    if (arg1->unk0 == 1)
        return;
    arg2 += 20;
    for (i = 0; i < arg1->unk8; i++)
    {
        if (arg1->unkC[i].unk4 != 0)
            arg2 = draw_text_font(arg1->unkC[i].unk4, -0x7FFF, arg2, -1, (i == arg0) ? 2 : 3);
    }
}

int sub_08031E04(void)
{
    struct EWorldLevelCount *r7;
    int i;
    u32 r6;
    int sectorNum;

    read_flash_sector_0802A430(gUnknown_03000290 + 2, gEWorldLevelCountPtr, 0x68);
    r7 = gEWorldLevelCountPtr;
    if (gEWorldLevelCountPtr->count > 12)
        return 0;
    sectorNum = 3;
    for (i = 0; i < 12; i++, sectorNum++)
        read_flash_sector_0802A430(sectorNum, &gEWorldLevelCountPtr->unk68[i], 0xC00);
    r6 = 0;
    for (i = 0; i < r7->count; i++)
    {
        u32 r1 = gEWorldLevelCountPtr->unk58[i];
        int r4 = gEWorldLevelCountPtr->unk4C[i];

        if (r1 > 11 || r4 < 0 || r4 > 11)
        {
            CpuFill16(0, gEWorldLevelCountPtr, 0x68);
            return 0;
        }
        if (sub_0802F12C(&gEWorldLevelCountPtr->unk68[r1]) == 0)
            r6 |= 1 << r4;
    }
    if (r6 == 0)
        return 1;
    for (i = 0; i < 12; i++)
    {
        if (r6 & (1 << i))
            sub_0802EEC8(i);
    }
    return 0;
}

void e_world_from_menu_main(void)
{
    int i;
    u32 r5;
    void *dest;
    int size;

    process_input();
    update_fade_from_black();
    if (sub_0802A458() == 0)
    {
        change_main_state(MAIN_STATE_UKNOWN_25, NO_FADE);
        return;
    }
    if (gUnknown_0300028C != gUnknown_03000288)
        gUnknown_03000288 = gUnknown_0300028C;
    switch (gUnknown_03000288)
    {
    case 0:
        if (gUnknown_03000290 == 0)
        {
            dest = gEWorldLevelCountPtr;
            size = 0x68;
        }
        else
        {
            dest = &gEWorldLevelCountPtr->unk68[gUnknown_03000290 - 1];
            size = 0xC00;
        }
        read_flash_sector_0802A430(gUnknown_03000290 + 2, dest, size);
        gUnknown_03000290++;
        if (gUnknown_03000290 > 12)
        {
            gUnknown_03000290 = 0;
            if (gEWorldLevelCountPtr->count > 12)
            {
                gUnknown_0300028C = 1;
                gUnknown_03000298 = &gUnknown_0807DC9C;
            }
            else
            {
                r5 = 0;
                for (i = 0; i < gEWorldLevelCountPtr->count; i++)
                {
                    if (sub_0802F12C(&gEWorldLevelCountPtr->unk68[gEWorldLevelCountPtr->unk58[i]]) == 0)
                        r5 |= 1 << gEWorldLevelCountPtr->unk4C[i];
                }
                if (r5 == 0)
                {
                    gUnknown_0300028C = 2;
                    break;
                }
                for (i = 0; i < 12; i++)
                {
                    if (r5 & (1 << i))
                        sub_0802EEC8(i);
                }
                gUnknown_0300028C = 1;
                gUnknown_03000298 = &gUnknown_0807DC9C;
            }
        }
        break;
    case 1:
        gUnknown_0300028C = sub_08031C54(&gUnknown_03000294, gUnknown_03000298);
        if (gUnknown_0300028C == -1)
            gUnknown_0300028C = gUnknown_03000288;
        break;
    case 2:
        sub_0802EE54();
        change_main_state(MAIN_STATE_UKNOWN_25, NO_FADE);
        break;
    case 3:
        CpuFill16(0, gEWorldLevelCountPtr, sizeof(*gEWorldLevelCountPtr));
        gUnknown_0300028C = 4;
        break;
    case 4:
        write_flash_sector_0802A290(2, gEWorldLevelCountPtr, 0x68);
        gUnknown_0300028C = 5;
        break;
    case 5:
        if (write_flash_sector_0802A290(-1, NULL, -1))
            gUnknown_0300028C = 0;
        break;
    }
    sub_0802ECC8();
}

void e_world_from_menu_loop(void)
{
    u16 temp2 = 0;

    DmaFill32(3, 0xA0, gOamBuffer, sizeof(gOamBuffer));
    sub_080351E0();

    switch (gUnknown_03000288)
    {
    case 1:
        sub_08031D44(gUnknown_03000294, gUnknown_03000298, 0x14, 0);
        break;
    case 3:
    case 4:
    case 5:
         draw_text_font(gTextErasing, -0x7FFF, 0x14, -1, 2);
         break;
    }

    sub_08035108(&temp2);
    DmaCopy16(3, gOamBuffer, 0x7000000, 0x400);
}

void e_world_from_menu_init_callback(void)
{
    arena_restore_head(0);
    gVRAMCurrTileNum_03001930 = gObjVRAMCopyOffset_0300192C = 0;
    e_world_init_callback();
    sub_08006968(&gEWorldMenuData2);
    if (sub_0802A458() != 0)
        sub_0802F06C();
    if (get_current_bgm() != TITLE)
        play_bgm(TITLE, 0x80, 1);
    gUnknown_0300028C = gUnknown_03000288 = 0;
    gUnknown_03000290 = 0;
    CpuFill16(0, &gBGLayerOffsets, sizeof(gBGLayerOffsets));
}

void e_world_from_menu_end(void)
{
}

FILE_PAD
