#include "gba/gba.h"
#include "global.h"
#include "arena.h"
#include "main.h"
#include "sound.h"
#include "sprites.h"

enum
{
    FADE_UP,
    FADE_DOWN,
};

static struct UnknownStruct15 *gUnknown_030000A4;
static u8 gPressStartFadeDir;
static u8 gTitleScreenFrameCounter;
static u16 gPressStartOpacity;

void title_init_callback(void)
{
    struct GraphicsConfig *arr[4];
    struct UnknownStruct15 *var;

    arena_restore_head(0);
    sub_08071CD4();
    gUnknown_03001740 = 0;
    gDemoTimer_03000BE0 = 0;
    gUnknown_030000B0 = -1;
    gCameraHorizontalOffset = 0;
    gCameraVerticalOffset = 0;
    arr[0] = &gTitleScreenLeftData;
    arr[1] = &gTitleScreenRightData;
    arr[2] = &gTitleMarioDKEyes;
    arr[3] = NULL;
    load_graphics_config_08032F24(arr, 0);
    var = repoint_tile_objects_08006968(&gTitleMarioDKEyes);
    gUnknown_030000A4 = var;
    DmaFill16(3, 0xA0, (void *)OAM, 0x200);
    gMarioEyesTimer = 0;
    gDKEyesTimer = 0;
    gGeneralTimer = 0;
    if (get_current_bgm() != TITLE)
        play_bgm(TITLE, 128, 1);
    sub_08033C74();
    save_blend_regs(gTitleScreenLeftData.bldCnt, gTitleScreenLeftData.bldAlpha, gTitleScreenLeftData.bldY);
    load_predefined_palette(PALETTE_0_TITLE_SCREEN, LOAD_BG_PALETTE|LOAD_OBJ_PALETTE);
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
    if (gDemoTimer_03000BE0 > 5)
        REG_DISPCNT = 0x1740;
    arr[0] = 0;
    arr[1] = 13;
    sub_080064D4(arr, gUnknown_030000A4->unk108[gTitleMarioEyesAnimData[gMarioEyesTimer]], gTitleMarioDKEyes.bgVramMapAddrs[2], 5);
    arr[0] = 22;
    arr[1] = 0;
    sub_080064D4(arr, gUnknown_030000A4->unk108[gTitleDKEyesAnimData[gDKEyesTimer] + 3], gTitleMarioDKEyes.bgVramMapAddrs[2], 5);
    if (gMarioEyesTimer < 299)
        gMarioEyesTimer++;
    else
        gMarioEyesTimer = 0;
    if (gDKEyesTimer < 209)
        gDKEyesTimer++;
    else
        gDKEyesTimer = 0;
    if (gDemoTimer_03000BE0 > 1280)
    {
        if (gTitleScreenAttractCount > 7 || gTitleScreenAttractCount < 0)
            gTitleScreenAttractCount = 0;
        sub_08071E14(229);
        if (gUnknown_0807954C[gTitleScreenAttractCount].unk0 != 0)
        {
            movie_player_setup_data(MOVIE_PLAYER_ALLOW_SKIP|MOVIE_PLAYER_FLAG_2, MOVIE, MAIN_STATE_TITLE_SCREEN, MOVIE_INTRO);
            change_main_state(MAIN_STATE_MOVIE, USE_FADE);
        }
        else
        {
            gLevelType = LEVEL_TYPE_MAIN;
            gCurrentWorld = gUnknown_0807954C[gTitleScreenAttractCount].unk1;
            title_demo_setup(gCurrentWorld);
            decompress_level_data_08004428(gNextLevelInLevelTable.unk0->levelData);
            change_main_state(MAIN_STATE_DEMO, USE_FADE);
            gUnknown_030012F8 = 0;
        }
        gTitleScreenAttractCount++;
        gTitleScreenAttractCount = (gTitleScreenAttractCount < 8) ? gTitleScreenAttractCount : 0;
    }
    if (!gIsFadeInProgress && sub_080721A8(gUnknown_030000B0) != 0)
    {
        if (pressed_a_or_start_08034004() && !(gNewKeys & B_BUTTON) && !(gHeldKeys & B_BUTTON))
        {
            play_sound_effect_08071990(SE_START, 8, 16, 64, 0, 128, 0);
            change_main_state(MAIN_STATE_FILE_SELECT, USE_FADE);
            gUnknown_03000BD0 = 1;
        }
        sub_0801B88C();
    }
    level_callback_08008238();
    gDemoTimer_03000BE0++;
    gDemoTimer_03000BE0 &= 0xFFFF;
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

        DmaCopy32(3, &gfxTitleScreenPressStartOAM, gOamBuffer, sizeof(struct OamData));
        DmaCopy32(3, gfxTitleScreenPressStart4bpp, OBJ_VRAM0, 0x200);
        gOamBuffer[0].tileNum = 0;
        gOamBuffer[0].x = 204;
        gOamBuffer[0].y = 124;
        gOamBuffer[0].paletteNum = 0;
        gOamBuffer[0].objMode = 1;
        gOamBuffer[0].priority = 1;
    }
    DmaCopy32(3, gOamBuffer, (void *)OAM, sizeof(gOamBuffer));
}
