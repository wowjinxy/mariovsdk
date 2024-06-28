#include "gba/gba.h"
#include "global.h"
#include "arena.h"
#include "main.h"

extern const u8 gfxTitleScreenPressStartOAM[];
extern const u8 gfxTitleScreenPressStart4bpp[];

enum
{
    FADE_UP,
    FADE_DOWN,
};

void title_init_callback(void)
{
    struct GraphicsConfig *arr[4];
    struct UnknownStruct15 *var;

    arena_restore_head(0);
    sub_08071CD4();
    gUnknown_03001740 = 0;
    gUnknown_03000BE0 = 0;
    gUnknown_030000B0 = -1;
    gCameraHorizontalOffset = 0;
    gCameraVerticalOffset = 0;
    arr[0] = &gTitleScreenLeftData;
    arr[1] = &gTitleScreenRightData;
    arr[2] = &gTitleMarioDKEyes;
    arr[3] = NULL;
    load_graphics_config_08032F24(arr, 0);
    var = sub_08006968(&gTitleMarioDKEyes);
    gUnknown_030000A4 = var;
    DmaFill16(3, 0xA0, (void *)OAM, 0x200);
    gUnknown_03000BE4 = 0;
    gUnknown_03000BE8 = 0;
    gGeneralTimer = 0;
    if (sub_08071FE4() != 10)
        sub_0807204C(10, 128, 1);
    sub_08033C74();
    save_blend_regs(gTitleScreenLeftData.bldCnt, gTitleScreenLeftData.bldAlpha, gTitleScreenLeftData.bldY);
    load_predefined_palette(0, 3);
    gPressStartFadeDir = FADE_UP;
    gTitleScreenFrameCounter = 3;
    gPressStartOpacity = 0;
}

void title_main(void)
{
    u32 arr[2];  // could possibly be a struct?
    u32 r0;
    u32 r6;

    process_input();
    update_fade_from_black();
    if (gUnknown_030000AC == 0 && gIsFadeInProgress == 0 && gUnknown_030000B0 == -1)
        gUnknown_030000B0 = play_sound_effect_08071990(SE_TITLE, 8, 16, 64, 0, 128, 0);
    if (gUnknown_03000BE0 > 5)
        REG_DISPCNT = 0x1740;
    arr[0] = 0;
    arr[1] = 13;
    sub_080064D4(arr, gUnknown_030000A4->unk108[gTitleMarioEyesAnimationData[gUnknown_03000BE4]], gTitleMarioDKEyes.bgVramMapAddrs[2], 5);
    arr[0] = 22;
    arr[1] = 0;
    sub_080064D4(arr, gUnknown_030000A4->unk108[gTitleDKEyesAnimationData[gUnknown_03000BE8] + 3], gTitleMarioDKEyes.bgVramMapAddrs[2], 5);
    if (gUnknown_03000BE4 < 299)
        gUnknown_03000BE4++;
    else
        gUnknown_03000BE4 = 0;
    if (gUnknown_03000BE8 < 209)
        gUnknown_03000BE8++;
    else
        gUnknown_03000BE8 = 0;
    if (gUnknown_03000BE0 > 1280)
    {
        if (gUnknown_03000B64 > 7 || gUnknown_03000B64 < 0)
            gUnknown_03000B64 = 0;
        sub_08071E14(229);
        if (gUnknown_0807954C[gUnknown_03000B64].unk0 != 0)
        {
            movie_player_setup_data(3, 23, MAIN_STATE_TITLE_SCREEN, MOVIE_INTRO);
            change_main_state(MAIN_STATE_MOVIE, USE_FADE);
        }
        else
        {
            gLevelType = 0;
            gCurrentWorld = gUnknown_0807954C[gUnknown_03000B64].unk1;
            title_demo_setup(gCurrentWorld);
            sub_08004428(gNextLevelInLevelTable.unk0->levelData);
            change_main_state(MAIN_STATE_DEMO, USE_FADE);
            gUnknown_030012F8 = 0;
        }
        gUnknown_03000B64++;
        gUnknown_03000B64 = (gUnknown_03000B64 < 8) ? gUnknown_03000B64 : 0;
    }
    if (gIsFadeInProgress == 0 && sub_080721A8(gUnknown_030000B0) != 0)
    {
        if (pressed_a_or_start_08034004() != 0 && !(gNewKeys & 2) && !(gHeldKeys & 2))
        {
            play_sound_effect_08071990(SE_START, 8, 16, 64, 0, 128, 0);
            change_main_state(MAIN_STATE_FILE_SELECT, USE_FADE);
            gUnknown_03000BD0 = 1;
        }
        sub_0801B88C();
    }
    sub_08008238();
    gUnknown_03000BE0++;
    gUnknown_03000BE0 &= 0xFFFF;
}

void sub_0801B88C(void)
{
    REG_BLDCNT = BLDCNT_BG0_FIRST | BLDCNT_OBJ_FIRST
               | BLDCNT_BG0_SECOND | BLDCNT_BG1_SECOND | BLDCNT_BG2_SECOND | BLDCNT_BG3_SECOND
               | BLDCNT_EFF_ALPHA;
    REG_BLDALPHA = ((15 - gPressStartOpacity) << 8) | gPressStartOpacity;

    if (gTitleScreenFrameCounter > 0)
    {
        gTitleScreenFrameCounter--;
    }
    else
    {
        gTitleScreenFrameCounter = 3;
        if (gPressStartFadeDir == FADE_DOWN)
        {
            gPressStartOpacity--;
            if (gPressStartOpacity == 0)
            {
                gPressStartFadeDir = FADE_UP;
                gPressStartOpacity = 0;  // It's already zero
            }
        }
        else if (gPressStartFadeDir == FADE_UP)
        {
            gPressStartOpacity++;
            if (gPressStartOpacity >= 11)
            {
                gPressStartOpacity = 11;
                gPressStartFadeDir = 2;
            }
        }
        else
        {
            gPressStartFadeDir = FADE_DOWN;
        }
    }
}

void title_loop(void)
{
    gGeneralTimer++;
    DmaFill32(3, 0xA0, gOamBuffer, 0x400);
    if (gIsFadeInProgress == 0 && sub_080721A8(gUnknown_030000B0) != 0)
    {
        u8 var;

        DmaCopy32(3, gfxTitleScreenPressStartOAM, gOamBuffer, 8);
        DmaCopy32(3, gfxTitleScreenPressStart4bpp, (void *)(VRAM + 0x10000), 0x200);
        gOamBuffer[0].tileNum = 0;
        gOamBuffer[0].x = 204;
        gOamBuffer[0].y = 124;
        gOamBuffer[0].paletteNum = 0;
        gOamBuffer[0].objMode = 1;
        gOamBuffer[0].priority = 1;
    }
    DmaCopy32(3, gOamBuffer, (void *)OAM, 0x400);
}
