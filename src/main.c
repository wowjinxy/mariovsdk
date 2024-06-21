#include "gba/gba.h"
#include "global.h"
#include "level_view.h"
#include "main.h"
#include "main_menu.h"

static void (*gMainStateInitCallbacks[])(void) =
{
    intro_init_callback,
    goto_credits_init_callback,
    level_demo_init_callback,
    main_menu_init_callback,
    options_init_callback,
    level_demo_init_callback,
    level_demo_reset_init_callback,
    title_init_callback,
    level_select_init_callback,
    expert_levels_init_callback,
    unknown_0A_init_callback,
    level_editor_init_callback,
    after_tutorial_init_callback,
    level_play_init_callback,
    level_retry_init_callback,
    NULL,
    pause_menu_init_callback,
    help_init_callback,
    level_retry_init_callback,
    NULL,
    boss_clear_init_callback,
    level_results_init_callback,
    bonus_stoparrow_init_callback,
    bonus_swapboxes_init_callback,
    e_world_init_callback,
    e_world_return_init_callback,
    e_card_scan_init_callback,
    e_card_scan_init_callback,
    e_world_debug_init_callback,
    e_world_from_menu_init_callback,
    movie_player_init_callback,
    fade_transition_init_callback,
    world_start_init_callback,
    level_view_init_callback,
    game_init_callback,
};

static void (*gMainStateMainCallbacks[])(void) =
{
    intro_main,
    goto_credits_main,
    level_demo_main,
    main_menu_main,
    options_main,
    level_demo_main,
    level_demo_main,
    title_main,
    level_select_main,
    expert_levels_main,
    level_edit_main,
    level_edit_main,
    NULL,
    level_play_main,
    level_retry_main,
    level_play_main,
    pause_menu_main,
    help_main,
    level_retry_main,
    NULL,
    boss_clear_main,
    level_results_main,
    bonus_stoparrow_main,
    bonus_swapboxes_main,
    e_world_main,
    e_world_main,
    e_card_scan_main,
    e_card_scan_main,
    e_world_debug_main,
    e_world_from_menu_main,
    movie_player_main,
    fade_transition_main,
    world_start_main,
    level_view_main,
    game_init_main,
};

static void (*gMainStateLoopCallbacks[])(void) =
{
    intro_loop,
    goto_credits_loop,
    level_play_loop,
    main_menu_loop,
    options_loop,
    level_play_loop,
    level_play_loop,
    title_loop,
    level_select_loop,
    expert_levels_loop,
    NULL,
    level_play_loop,
    level_play_loop,
    level_play_loop,
    level_retry_loop,
    level_play_loop,
    pause_menu_loop,
    help_loop,
    level_retry_loop,
    NULL,
    boss_clear_loop,
    level_results_loop,
    bonus_stoparrow_loop,
    bonus_swapboxes_loop,
    e_world_loop,
    e_world_loop,
    e_card_scan_loop,
    e_card_scan_loop,
    e_world_debug_loop,
    e_world_from_menu_loop,
    movie_player_loop,
    NULL,
    world_start_loop,
    level_view_loop,
    game_init_loop,
};

static void (*gMainStateEndCallbacks[])(void) =
{
    intro_end,
    goto_credits_end,
    level_play_end,
    main_menu_end,
    options_end,
    level_play_end,
    level_play_end,
    title_end,
    level_select_end,
    expert_levels_end,
    level_editor_end,
    level_editor_end,
    NULL,
    level_play_end,
    level_retry_end,
    level_play_end,
    pause_menu_end,
    help_end,
    level_retry_end,
    NULL,
    boss_clear_end,
    level_results_end,
    bonus_stoparrow_end,
    bonus_swapboxes_end,
    e_world_end,
    e_world_end,
    e_card_scan_end,
    e_card_scan_end,
    e_world_debug_end,
    e_world_from_menu_end,
    movie_player_end,
    fade_transition_end,
    world_start_end,
    level_view_end,
    game_init_end,
};

static void (*gUnknown_0807846C[])(void) =
{
    sub_08015044,
    sub_08015044,
    sub_08015044,
    sub_08015044,
    sub_08015044,
    sub_08015044,
    sub_08015044,
    sub_08015044,
    sub_08015044,
    sub_08015044,
    sub_08015044,
    sub_08015044,
    sub_08015044,
    sub_08015044,
    sub_08015044,
    sub_08015044,
    sub_08015044,
    sub_08015044,
    sub_08015044,
    sub_08015044,
    sub_08015044,
    sub_08015044,
    sub_08015044,
    sub_08015044,
    sub_08015044,
    sub_08015044,
    sub_08015044,
    sub_08015044,
    sub_08015044,
    sub_08015044,
    sub_08015044,
    sub_08015044,
    sub_08015044,
    sub_08015044,
    sub_08015044,
};

static void main_loop(void);

// 0x08006DF8
void AgbMain(void)
{
    clear_ram();
    gUnknown_03000B64 = 0;
    gUnknown_03000B78 = 0;
    gNextMainState = MAIN_STATE_INIT;
    init_timer_regs();
    main_loop();
}

void sub_08006E28(void)
{
    u32 arr[4];

    if ((gHeldKeys & 1) && gUnknown_030009B0.unk8 != 0)
        gUnknown_030009B0.unk10 = 0xFD80;

    gUnknown_030009B0.unk10 = 0;  // wat?
    gUnknown_030009B0.unk12 = 0;

    if (gHeldKeys & 0x10)
        gUnknown_030009B0.unk12 = 0x100;
    else if (gHeldKeys & 0x20)
        gUnknown_030009B0.unk12 = 0xFF00;

    if (gHeldKeys & 0x40)
        gUnknown_030009B0.unk10 = 0xFF00;
    else if (gHeldKeys & 0x80)
        gUnknown_030009B0.unk10 = 0x100;

    if (gHeldKeys & 0x200)
    {
        gUnknown_030009B0.unk12 = 0xFF00;
        gUnknown_030009B0.unk10 = 0xFF00;
    }
    else if (gHeldKeys & 0x100)
    {
        gUnknown_030009B0.unk12 = 0x100;
        gUnknown_030009B0.unk10 = 0x100;
    }

    arr[0] = gUnknown_030009B0.unk0;
    arr[1] = gUnknown_030009B0.unk4;
    arr[2] = gUnknown_030009B0.unk0 + 0x800;
    arr[3] = gUnknown_030009B0.unk4 + 0x1000;

    if (gUnknown_030009B0.unk12 != 0)
    {
        if (sub_080066FC(arr, gUnknown_030009B0.unk12, 0, 0) != 0)
            gUnknown_030009B0.unk12 = 0;
    }

    gUnknown_030009B0.unk0 += gUnknown_030009B0.unk12;
    arr[0] += gUnknown_030009B0.unk12;
    arr[2] += gUnknown_030009B0.unk12;
    gUnknown_030009B0.unk8 = 0;

    if (gUnknown_030009B0.unk10 != 0)
    {
        if (sub_080066FC(arr, 0, gUnknown_030009B0.unk10, 0) != 0)
            gUnknown_030009B0.unk10 = 0;
    }

    gUnknown_030009B0.unk4 += gUnknown_030009B0.unk10;
    if (gUnknown_030009B0.unk10 > 0x200)
        gUnknown_030009B0.unk10 = 0x200;
    if ((gUnknown_030009B0.unk4 >> 8) > 159)
    {
        gUnknown_030009B0.unk4 = 0;
        gUnknown_030009B0.unk10 = 0;
    }
}

void sub_08006F5C(u32 a, u32 b)
{
    CpuFill16(0, &gUnknown_030009B0, 4);
    gUnknown_030009B0.unk0 = a << 8;
    gUnknown_030009B0.unk4 = b << 8;
}

void sub_08006F90(void)
{
    struct OamData *oam = &gOamBuffer[0];
    s32 x;
    s32 y;

    x = ((gUnknown_030009B0.unk0 >> 8) - gSpriteHorizontalOffset - 4) & 0xFF;
    oam->x = x;
    y = (gUnknown_030009B0.unk4 >> 8) - (u8)gUnknown_030012F4;
    oam->y = y;
    oam->affineMode = 0;
    oam->tileNum = 0;
}

// 0x08006FF0
static void main_loop(void)
{
    gMainState = gNextMainState;
    gUnknown_03000B70 = 0;

    while (1)
    {
        gUnknown_03000020 = gMainState;

        if (gMainStateInitCallbacks[gUnknown_03000020] != NULL)
            gMainStateInitCallbacks[gUnknown_03000020]();

        if (gMainState == MAIN_STATE_UNKNOWN_19 || gMainState == MAIN_STATE_UNKNOWN_15)
        {
            gMainState = MAIN_STATE_LEVEL_PLAY;
            gUnknown_03000020 = MAIN_STATE_LEVEL_PLAY;
            gNextMainState = MAIN_STATE_LEVEL_PLAY;
        }
        else if (gMainState == MAIN_STATE_TUTORIAL_SETUP)
        {
            gMainState = MAIN_STATE_TUTORIAL;
            gUnknown_03000020 = MAIN_STATE_TUTORIAL;
            gNextMainState = MAIN_STATE_TUTORIAL;
        }

        sub_0801500C(gUnknown_0807846C[gUnknown_03000020]);
        sub_08033EA0(gMainStateLoopCallbacks[gUnknown_03000020]);

        while (gNextMainState == gUnknown_03000020 && gUnknown_03000024 == 0)
        {
            if (gMainStateMainCallbacks[gUnknown_03000020] != NULL)
                gMainStateMainCallbacks[gUnknown_03000020]();
            sub_08033EE0();
        }

        gUnknown_03000024 = 0;

        if (gMainStateEndCallbacks[gUnknown_03000020] != NULL)
            gMainStateEndCallbacks[gUnknown_03000020]();

        gMainState = gNextMainState;
    }
}

void change_main_state(s32 mainState, s32 useFadeFlag)
{
    if (gNextMainState != MAIN_STATE_FADETRANSITION)
    {
        if (gLevelEWorldFlag != 0 && mainState == MAIN_STATE_LEVEL_SELECT)
            mainState = MAIN_STATE_EWORLD_LEVEL_SELECT;
        if (useFadeFlag == 0)
        {
            gNextMainState = mainState;
        }
        else
        {
            gNextStateFromFade = mainState;
            gPreviousMainState = gNextMainState;
            gNextMainState = MAIN_STATE_FADETRANSITION;
        }

        gUnknown_03000024 = 1;
        gSomeKeys_030012E8 = gUnknown_03001708 = 0;
    }
}
