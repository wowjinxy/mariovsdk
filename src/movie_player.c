#include "gba/gba.h"
#include "global.h"
#include "arena.h"
#include "main.h"
#include "sound.h"

static inline void someinline(int flags, int songID, int nextState, int movieID)
{
    gMoviePlayerParams.flags = flags;
    gMoviePlayerParams.songID = songID;
    gMoviePlayerParams.nextMode = nextState;
    gMoviePlayerParams.movieID = movieID;
    gMoviePlayerParams.movieData = &gMovieDKBoss1End;
}

void movie_player_main(void)
{
    if (gUnknown_03000DCC != 0)
    {
        update_quick_fade_from_black();
        if (!gIsFadeInProgress)
            gUnknown_03000DCC = gIsFadeInProgress;
    }
    else
        update_fade_from_black();

    sub_0805739C(gMoviePlayerParams.movieData);
    update_level_background_0802BE50();
    process_input();
    gGeneralTimer++;

    if (gPreviousMainState == MAIN_STATE_OPTION_MENU)
    {
        if ((gMoviePlayerParams.flags & MOVIE_PLAYER_ALLOW_SKIP)
         && (gNewKeys & (B_BUTTON|START_BUTTON)))
            change_main_state(gMoviePlayerParams.nextMode, USE_FADE);
        if (!(gMoviePlayerParams.flags & MOVIE_PLAYER_FLAG_2))
            change_main_state(gMoviePlayerParams.nextMode, USE_FADE);
    }
    else if (gMoviePlayerParams.movieID == MOVIE_CREDITS_1)
    {
        if ((gMoviePlayerParams.flags & MOVIE_PLAYER_ALLOW_SKIP)
         && gGeneralTimer > 180 && (gNewKeys & (B_BUTTON | START_BUTTON)))
        {
            someinline(MOVIE_PLAYER_ALLOW_SKIP|MOVIE_PLAYER_FLAG_2, MOVIE4, MAIN_STATE_LEVEL_SELECT, MOVIE_DK_BOSS_1_END);
            change_main_state(MAIN_STATE_MOVIE, USE_FADE);
        }
        if (!(gMoviePlayerParams.flags & MOVIE_PLAYER_FLAG_2))
        {
            someinline(MOVIE_PLAYER_ALLOW_SKIP|MOVIE_PLAYER_FLAG_2, MOVIE4, MAIN_STATE_LEVEL_SELECT, MOVIE_DK_BOSS_1_END);
            change_main_state(MAIN_STATE_MOVIE, USE_FADE);
        }
    }
    else if (gMoviePlayerParams.movieID == MOVIE_DK_BOSS_1_END)
    {
        if ((gMoviePlayerParams.flags & MOVIE_PLAYER_ALLOW_SKIP)
         && gGeneralTimer > 180 && (gNewKeys & (B_BUTTON|START_BUTTON)))
        {
            if (sub_080148F0(0x400000))
                change_main_state(MAIN_STATE_LEVEL_SELECT, USE_FADE);
            else
            {
                sub_080148A4(0x400000, 1);
                change_main_state(MAIN_STATE_WORLD_INTRO, USE_FADE);
            }
        }
        if (!(gMoviePlayerParams.flags & MOVIE_PLAYER_FLAG_2))
        {
            if (sub_080148F0(0x400000))
                change_main_state(MAIN_STATE_LEVEL_SELECT, USE_FADE);
            else
            {
                sub_080148A4(0x400000, 1);
                change_main_state(MAIN_STATE_WORLD_INTRO, USE_FADE);
            }
        }
    }
    else if (gMoviePlayerParams.movieID == MOVIE_INTRO2)
    {
        if ((gMoviePlayerParams.flags & MOVIE_PLAYER_ALLOW_SKIP)
         && gGeneralTimer > 180 && (gNewKeys & (B_BUTTON|START_BUTTON)))
        {
            if (sub_08014BB4())
                change_main_state(MAIN_STATE_LEVEL_SELECT, USE_FADE);
            else
            {
                gCurrentWorld = 0;
                sub_080148A4(0x1000000, 1);
                change_main_state(MAIN_STATE_WORLD_INTRO, USE_FADE);
            }
        }
        if (!(gMoviePlayerParams.flags & MOVIE_PLAYER_FLAG_2))
        {
            if (sub_08014BB4())
                change_main_state(MAIN_STATE_LEVEL_SELECT, USE_FADE);
            else
            {
                gCurrentWorld = 0;
                sub_080148A4(0x1000000, 1);
                change_main_state(MAIN_STATE_WORLD_INTRO, USE_FADE);
            }
        }
    }
    else if (gMoviePlayerParams.movieID == MOVIE_INTRO)
    {
        if ((gMoviePlayerParams.flags & MOVIE_PLAYER_ALLOW_SKIP)
         && gGeneralTimer > 5 && (gNewKeys & (B_BUTTON|START_BUTTON)))
            change_main_state(gMoviePlayerParams.nextMode, USE_FADE);
        if (!(gMoviePlayerParams.flags & MOVIE_PLAYER_FLAG_2))
            change_main_state(gMoviePlayerParams.nextMode, USE_FADE);
    }
    else
    {
        if ((gMoviePlayerParams.flags & MOVIE_PLAYER_ALLOW_SKIP)
         && gGeneralTimer > 180 && (gNewKeys & (B_BUTTON|START_BUTTON)))
            change_main_state(gMoviePlayerParams.nextMode, USE_FADE);
        if (!(gMoviePlayerParams.flags & MOVIE_PLAYER_FLAG_2))
            change_main_state(gMoviePlayerParams.nextMode, USE_FADE);
    }

    sub_080082C8();
    sub_0801B310();
}

void movie_player_setup_data(u8 flags, u8 songID, u8 nextMode, u8 movieID)
{
    gMoviePlayerParams.flags = flags;
    gMoviePlayerParams.songID = songID;
    gMoviePlayerParams.nextMode = nextMode;
    gMoviePlayerParams.movieID = movieID;

    switch(movieID)
    {
    case MOVIE_INTRO: //Movie ID 0 (Intro)
        gMoviePlayerParams.movieData = &gMovieIntro;
        break;
    case MOVIE_INTRO2: //Movie ID 1 (New Game)
        gMoviePlayerParams.movieData = &gMovieNewGame;
        break;
    case MOVIE_DK_BOSS_1: //Movie ID 2 (Main levels final boss intro)
        gMoviePlayerParams.movieData = &gMovieDKBoss1Intro;
        break;
    case MOVIE_DK_BOSS_1_END: //Movie ID 4 (Plus worlds intro)
        gMoviePlayerParams.movieData = &gMovieDKBoss1End;
        break;
    case MOVIE_DK_BOSS_2: //Movie ID 5 (Plus levels final boss intro)
        gMoviePlayerParams.movieData = &gMovieDKBoss2Intro;
        break;
    case MOVIE_DK_BOSS_2_END: //Movie ID 6 (Plus final boss ending cutscene)
        gMoviePlayerParams.movieData = &gMovieDKBoss2End;
        break;
    case MOVIE_CREDITS_2: //Movie ID 7 (Credits 2)
        gMoviePlayerParams.movieData = &gMovieCredits2;
        break;
    case MOVIE_CREDITS_1: //Movie ID 3 (Credits 1)
        gMoviePlayerParams.movieData = &gMovieCredits1;
        break;
    case MOVIE_UNUSED_1: //Movie ID 8 (Unused -- DK Falling)
        gMoviePlayerParams.movieData = &gMovieUnusedDKFalling;
        break;
    case MOVIE_UNUSED_2: //Movie ID 9 (Unused -- "Plus Worlds Unlocked!" message)
        gMoviePlayerParams.movieData = &gMovieUnusedPlusWorldsUnlocked;
        break;
    }
}

void movie_player_init_callback(void)
{
    arena_restore_head(0);
    play_bgm(gMoviePlayerParams.songID, 0x80, 1);
    sub_0805727C();
    sub_08057420((u32)gMoviePlayerParams.movieData);
    gUnknown_030009EC = 0;
    gObjVRAMCopyOffset_0300192C = 0;
    gVRAMCurrTileNum_03001930 = 0;
    gGeneralTimer = 0;
    gUnknown_03000DCC = 0;
    gUnknown_03000A00 = (u32)&sub_0802D608;
    sub_08038B18();
    REG_DISPCNT &= ~DISPCNT_FORCED_BLANK;
}

void movie_player_loop(void)
{
	u16 temp, temp_1, temp_2, temp_3;

    temp = 0;
    temp_1 = gVRAMCurrTileNum_03001930;
    temp_2 = gObjVRAMCopyOffset_0300192C;
    temp_3 = 0;

    DmaFill32(3, 0xa0, gOamBuffer, 0x400);
    move_player_update_sprites(&temp, &temp_1, &temp_2, &temp_3, gMoviePlayerParams.movieData);
    DmaCopy32(3, gOamBuffer, 0x7000000, 0x400);
}

void movie_player_end(void)
{
	sub_08071C24();
}

void sub_0802D608(void)
{
	gMoviePlayerParams.flags = 0;
}
