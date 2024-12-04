#include "gba/gba.h"
#include "global.h"
#include "arena.h"
#include "main.h"
#include "sprites.h"

static enum PaletteID sMainPalettes[] =
{
    PALETTE_64,
    PALETTE_65,
    PALETTE_66,
    PALETTE_67,
    PALETTE_68,
    PALETTE_69,
};

static enum PaletteID sPlusPalettes[] =
{
    PALETTE_70,
    PALETTE_71,
    PALETTE_72,
    PALETTE_73,
    PALETTE_74,
    PALETTE_75,
};

static struct GraphicsConfig *sWorldStartTable[] =
{
    &gWorldOneStartData,
    &gWorldTwoStartData,
    &gWorldThreeStartData,
    &gWorldFourStartData,
    &gWorldFiveStartData,
    &gWorldSixStartData,
};

static struct GraphicsConfig *sWorldPlusStartTable[] =
{
    &gWorldOnePlusStartData,
    &gWorldTwoPlusStartData,
    &gWorldThreePlusStartData,
    &gWorldFourPlusStartData,
    &gWorldFivePlusStartData,
    &gWorldSixPlusStartData,
};

static s16 sMarioVoiceSoundEffects[][2] =
{
    // main           plus
    { SE_WORLD_START, SE_WORLD_START },
    { SE_MOVIE2_7,    SE_MOVIE5_07 },
    { SE_MOVIE5_01,   SE_MOVIE5_01 },
    { SE_MOVIE6_03,   SE_MOVIE6_03 },
    { SE_MOVIE4_09,   SE_MOVIE6_03 },
    { SE_MOVIE4_10,   SE_MOVIE4_10 },
};

static struct UnknownStruct15 *gUnknown_030002F0;
enum
{
    STATE_DK_RUN = 1,
    STATE_MARIO_RUN,
    STATE_TEXT_SCROLL,
    STATE_IDLE,
};
static u8 sWorldIntroState;
static u16 sOamIndex;
static s16 sWorldIntroTextYPos;

struct Struct2FC
{
    u8 timer;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u8 unk4;
    u8 unk5;
    u16 unk6;
};  // size = 0x8

static struct Struct2FC *gUnknown_030002FC;

struct WorldIntroCharacter
{
    s32 x;  // The real x coordinate is this value shifted right 8 bits
    s32 y;
    s16 spriteId;
    s16 speed;
    s16 subSpriteIndex;
    s16 frameTimer;
    u32 unk10;
};

static struct WorldIntroCharacter *sDonkeyKong;
static struct WorldIntroCharacter *sMario;

static void sub_08037230(void);
static void sub_080379BC(u8, u8);

void world_start_init_callback(void)
{
    struct GraphicsConfig *gfxConfig[4];

    arena_restore_head(0);
    if (get_current_bgm() != 11)
        play_bgm(11, 128, 1);
    gUnknown_030002FC = arena_allocate(2 * sizeof(*gUnknown_030002FC));
    gUnknown_03000BE0 = 0;
    gfxConfig[0] = NULL;
    gfxConfig[1] = NULL;
    if (gLevelType == LEVEL_TYPE_MAIN || gLevelType == LEVEL_TYPE_MAIN_BOSS)
    {
        gfxConfig[2] = sWorldStartTable[gCurrentWorld];
        gfxConfig[3] = sWorldStartTable[gCurrentWorld];
    }
    else
    {
        gfxConfig[2] = sWorldPlusStartTable[gCurrentWorld];
        gfxConfig[3] = sWorldPlusStartTable[gCurrentWorld];
    }
    load_graphics_config_08032F24(gfxConfig, 3);
    sub_08037230();
    REG_DISPCNT = DISPCNT_MODE_0 | DISPCNT_BG3_ON | DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP;
    if (gLevelType == LEVEL_TYPE_MAIN || gLevelType == LEVEL_TYPE_MAIN_BOSS)
    {
        gUnknown_030002F0 = sub_08006968(sWorldStartTable[gCurrentWorld]);
        load_predefined_palette(sMainPalettes[gCurrentWorld], LOAD_BG_PALETTE|LOAD_OBJ_PALETTE);
    }
    else
    {
        gUnknown_030002F0 = sub_08006968(sWorldPlusStartTable[gCurrentWorld]);
        load_predefined_palette(sPlusPalettes[gCurrentWorld], LOAD_BG_PALETTE);
        load_predefined_palette(sMainPalettes[gCurrentWorld], LOAD_OBJ_PALETTE);
    }
    if (gCurrentWorld == 0)
    {
        sWorldIntroState = STATE_DK_RUN;
        sDonkeyKong->unk10 = play_sound_effect_08071990(SE_DK_WALK, 12, 16, 64, 0, 128, 0);
        sub_08040FC0(sDonkeyKong->unk10, sDonkeyKong->x);
        play_sound_effect_08071990(SE_MOVIE2_6, 8, 16, 64, 0, 128, 0);
        sub_080379BC(1, 0);
    }
    else
    {
        sWorldIntroState = 0;
        sub_080379BC(1, 0);
        sub_080379BC(0, 22);
    }
    save_blend_regs(gWorldOneStartData.bldCnt, gWorldOneStartData.bldAlpha, gWorldOneStartData.bldY);
    CpuFill16(0, &gBGLayerOffsets, sizeof(gBGLayerOffsets));
    sWorldIntroTextYPos = -50 << 8;
    gBGLayerOffsets.bg2_y = sWorldIntroTextYPos >> 8;
}

static void sub_08037230(void)
{
    sDonkeyKong = arena_allocate(sizeof(*sDonkeyKong));
    sDonkeyKong->subSpriteIndex = 0;
    sDonkeyKong->frameTimer = gUnknown_08251EC0[0].duration;
    sDonkeyKong->x = -63 << 8;
    sDonkeyKong->y = 56;
    sDonkeyKong->spriteId = SPRITE_ID_DK_WORLD_INTRO;
    sDonkeyKong->speed = 512;

    sMario = arena_allocate(sizeof(*sMario));
    sMario->subSpriteIndex = 0;
    sMario->frameTimer = gUnknown_0854301C[0].duration;
    sMario->x = -32 << 8;
    sMario->y = 88;
    sMario->spriteId = SPRITE_ID_MARIO_RUN;
    sMario->speed = 336;
}

static void sub_080372A0(void)
{
    struct Struct2FC *r4;
    int isPlus;

    switch (sWorldIntroState)
    {
    case 0:
        r4 = &gUnknown_030002FC[0];
        if (--r4->unk1 == 0)
        {
            if (r4->timer < r4->unk5 - 1)
            {
                r4->timer++;
                r4->unk1 = gUnknown_030002F0->unk108[r4->timer + r4->unk4]->unkB;
            }
            else
            {
                r4->unk6 = 1;
                sWorldIntroState = 1;
                sDonkeyKong->unk10 = play_sound_effect_08071990(SE_DK_WALK, 12, 16, 64, 0, 128, 0);
                sub_08040FC0(sDonkeyKong->unk10, sDonkeyKong->x);
                play_sound_effect_08071990(SE_MOVIE2_6, 8, 16, 64, 0, 128, 0);
            }
        }
        break;
    case STATE_DK_RUN:  // DK running
        r4 = &gUnknown_030002FC[1];
        if (sDonkeyKong->x < (240 << 8))
        {
            sDonkeyKong->x += sDonkeyKong->speed;
            sub_08040FC0(sDonkeyKong->unk10, sDonkeyKong->x);
        }
        else
        {
            sWorldIntroState = STATE_MARIO_RUN;
            sub_08071E14(234);
            sMario->unk10 = play_sound_effect_08071990(SE_WALK, 12, 16, 64, 0, 128, 0);
            sub_08040FC0(sMario->unk10, sMario->x);
        }
        if (--r4->unk1 == 0)
        {
            if (r4->timer < r4->unk5 - 1)
            {
                if (r4->timer == 0 || r4->timer == 8 || r4->timer == 16)
                    play_sound_effect_08071990(SE_CURSOR_WORLD, 8, 16, 64, 0, 128, 0);
                r4->timer++;
                r4->unk1 = gUnknown_030002F0->unk108[r4->timer + r4->unk4]->unkB;
            }
            else
                r4->unk6 = 1;
        }
        break;
    case STATE_MARIO_RUN:  // Mario running
        if (sMario->x < (100 << 8))
        {
            sMario->x += sMario->speed;
            sub_08040FC0(sMario->unk10, sMario->x);
        }
        else
        {
            sMario->spriteId = SPRITE_ID_MARIO_STAND;
            sWorldIntroTextYPos = -50 << 8;
            gBGLayerOffsets.bg2_y = sWorldIntroTextYPos >> 8;
            sWorldIntroState = STATE_TEXT_SCROLL;
            sub_08071E14(18);
            if (gLevelType == LEVEL_TYPE_MAIN || gLevelType == LEVEL_TYPE_MAIN_BOSS)
                isPlus = 0;
            else
                isPlus = 1;
            play_sound_effect_08071990(sMarioVoiceSoundEffects[gCurrentWorld][isPlus], 8, 16, 64, 0, 128, 0);
            REG_DISPCNT |= DISPCNT_BG2_ON;  // Enable BG2 for text
        }
        break;
    case STATE_TEXT_SCROLL:  // scroll text up
        sWorldIntroTextYPos += 0x80;
        if (sWorldIntroTextYPos >= 0)
        {
            sWorldIntroTextYPos = 0;
            sWorldIntroState = STATE_IDLE;
        }
        gBGLayerOffsets.bg2_y = sWorldIntroTextYPos >> 8;
        break;
    }
}

static inline void update_sprite_animation(struct WorldIntroCharacter *character)
{
    struct SpriteTemplate *r2 = &gUncompressedGraphicsTable[character->spriteId];

    if (--character->frameTimer <= 0)
    {
        character->subSpriteIndex++;
        if (character->subSpriteIndex >= r2->x)
            character->subSpriteIndex = 0;
        character->frameTimer = r2->subSprites[character->subSpriteIndex].duration;
    }
}

void world_start_main(void)
{
    update_fade_from_black();
    process_input();
    if (sWorldIntroState == STATE_IDLE && (gNewKeys & (A_BUTTON | START_BUTTON)))
    {
        play_sound_effect_08071990(SE_START, 8, 16, 64, 0, 128, 0);
        if (gPreviousMainState == MAIN_STATE_FILE_SELECT)
        {
            movie_player_setup_data(MOVIE_PLAYER_ALLOW_SKIP|MOVIE_PLAYER_FLAG_2, 41, MAIN_STATE_LEVEL_SELECT, MOVIE_INTRO2);
            change_main_state(MAIN_STATE_MOVIE, TRUE);
            sub_080148A4(1, 1);
        }
        else
            change_main_state(MAIN_STATE_LEVEL_SELECT, TRUE);
    }
    update_sprite_animation(sMario);
    update_sprite_animation(sDonkeyKong);
}

struct SubSpriteTemplate2
{
    /*0x00*/ u8 index;  // index into sprite sheet?
    /*0x01*/ u8 duration;  // animation frame duration
    /*0x02*/ s8 x_offset;  // x offset from sprite position
    /*0x03*/ s8 y_offset;  // y offset from sprite position
    u8 filler4[4];
    u32 unk8;  // some kind of flags?
    struct SubSpriteTemplate_child *unkC;
    u8 filler10[0x24-0x10];
};

static void update_oam(struct WorldIntroCharacter *character, u8 hflip)
{
    struct SpriteTemplate *r7 = &gUncompressedGraphicsTable[character->spriteId];

    if ((s32)r7->subSprites[0].unk8 < 0)
    {
        struct SpriteTemplate *r5 = (struct SpriteTemplate *)&r7->subSprites[0];  // WTF?
        u32 r1 = r5->subSprites[0].unk8;
        u8 r2 = r1 >> 24;
        u8 r0 = r1 >> 16;
        s16 r9 = r2 * r0;
        s16 r0_ = (r1 & 0x40) ? r9 >> 2 : r9 >> 3;

        // Copy sprite tiles
        DmaCopy32(3,
            r5->tileData + ((struct SubSpriteTemplate2 *)r5->subSprites)[character->subSpriteIndex].index * r0_ * 4,
            (void *)(OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C),
            r9);
        // Copy OAM
        DmaCopy32(3, ((struct SpriteTemplate *)r5)->oamData, &gOamBuffer[sOamIndex], 8);
        gOamBuffer[sOamIndex].tileNum += gVRAMCurrTileNum_03001930;
        gOamBuffer[sOamIndex].x = character->x >> 8;
        gOamBuffer[sOamIndex].y = character->y;
        ((struct OamData_alt *)&gOamBuffer[sOamIndex])->matrixNum_hflip = hflip;
        gOamBuffer[sOamIndex].priority = 3;
        gVRAMCurrTileNum_03001930 += r9 >> 5;
        gObjVRAMCopyOffset_0300192C += r9;
        sOamIndex++;
    }
    // Copy sprite tiles
    DmaCopy32(3,
        r7->tileData + ((struct SubSpriteTemplate2 *)r7->subSprites)[character->subSpriteIndex].index * r7->unk6 * 4,
        (void *)(OBJ_VRAM0 + gObjVRAMCopyOffset_0300192C),
        r7->y);
    // Copy OAM
    DmaCopy32(3, r7->oamData, &gOamBuffer[sOamIndex], 8);
    gOamBuffer[sOamIndex].tileNum += gVRAMCurrTileNum_03001930;
    gOamBuffer[sOamIndex].x = character->x >> 8;
    gOamBuffer[sOamIndex].y = character->y;
    ((struct OamData_alt *)&gOamBuffer[sOamIndex])->matrixNum_hflip = hflip;
    gOamBuffer[sOamIndex].priority = 3;
    gVRAMCurrTileNum_03001930 += r7->unk4;
    gObjVRAMCopyOffset_0300192C += r7->y;
    sOamIndex++;
}

static inline void inlinefunc(struct Struct2FC *ptr)
{
    sub_08006548(
        ptr->unk2,
        ptr->unk3,
        gUnknown_030002F0->unk108[ptr->timer + ptr->unk4],
        gWorldOneStartData.bgVramMapAddrs[3], 5);
}

void world_start_loop(void)
{
    DmaFill16(3, 0xA0, (void *)OAM, 0x200);
    DmaFill32(3, 0xA0, gOamBuffer, sizeof(gOamBuffer));
    { u8 unused[0xB84]; }
    gVRAMCurrTileNum_03001930 = gObjVRAMCopyOffset_0300192C = sOamIndex = 0;
    switch (sWorldIntroState)
    {
    case 0:
        inlinefunc(&gUnknown_030002FC[0]);
        inlinefunc(&gUnknown_030002FC[1]);
        break;
    case STATE_DK_RUN:
        inlinefunc(&gUnknown_030002FC[1]);
        update_oam(sDonkeyKong, FALSE);
        break;
    default:
        update_oam(sMario, TRUE);
        break;
    }
    DmaCopy32(3, gOamBuffer, (void *)OAM, OAM_SIZE);
    if (gIsFadeInProgress == 0)
        sub_080372A0();
}

void world_start_end(void)
{
}

static void sub_080379BC(u8 arg0, u8 arg1)
{
    struct Struct2FC *r2 = &gUnknown_030002FC[arg0];
    struct UnknownStruct15_child *r3;

    r2->timer = 0;
    r3 = gUnknown_030002F0->unk108[arg1];
    r2->unk1 = r3->unkB;
    r2->unk5 = r3->unkA;
    r2->unk4 = arg1;
    r2->unk6 = 0;
    r2->unk2 = r3->unkC;
    r2->unk3 = r3->unkD;
}
