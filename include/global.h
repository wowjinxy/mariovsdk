#ifndef GUARD_GLOBAL_H
#define GUARD_GLOBAL_H

//------------------------------------------------------------------------------
// Macros
//------------------------------------------------------------------------------

// Both of these match so far
#define ABS(n) ((n) >= 0 ? (n) : -(n))
//#define ABS(n) ((n) < 0 ? -(n) : (n))

// TODO: find a way to control ordering of BSS symbols within an object file
// The compiler seems to always put global symbols before static symbols
#define GLOBAL_BSS __attribute__((section(".bss_global")))
#define BSS __attribute__((section(".bss")))

#define ARRAY_COUNT(arr) (sizeof(arr)/sizeof((arr)[0]))

//#if __STDC_VERSION__ >= 201112L
#if 0
// The C11 way
#define static_assert(cond, msg) _Static_assert(cond, #msg)
#else
// The old, hacky way
#define static_assert(cond, msg) typedef char static_assertion_##msg[(cond)?1:-1]
#endif

// Modern GNU assembler pads code sections with nop by default.
// Use this at the end of a file to pad with zero instead to match the
// original behavior.
#define FILE_PAD asm(".balign 4, 0");

//------------------------------------------------------------------------------
// Types
//------------------------------------------------------------------------------

// OamData, but with explicit bit fields for hflip and vflip
struct OamData_alt
{
    /*0x00*/ u32 y:8;
    /*0x01*/ u32 affineMode:2;
             u32 objMode:2;
             u32 mosaic:1;
             u32 bpp:1;
             u32 shape:2;

    /*0x02*/ u32 x:9;
             u32 matrixNum_b0_2:3;
             u32 matrixNum_hflip:1;
             u32 matrixNum_vflip:1;
             u32 size:2;

    /*0x04*/ u16 tileNum:10;
             u16 priority:2;
             u16 paletteNum:4;
    /*0x06*/ u16 affineParam;
};

struct Coords32
{
    s32 x;
    s32 y;
};

struct CmprHeader
{
    u32 reserved:4;
    u32 compressionType:4;  // 1 = LZ77, 3 = RLE
    u32 size:24;  // size of decompressed data
    // data follows this header
};

struct UnkStruct1_sub_child_data
{
    u8 filler0[4];
    u16 unk4;  // image width?
    u16 unk6;  // image height?
    union { s8 as_s8; s32 as_s32; } unk8;
    union { s8 as_s8; s32 as_s32; } unkC;
    void *unk10;  // pointer to BGxHOFS register?
    void *unk14;  // pointer to BGxVOFS register?
    u8 filler18[8];
    s16 unk20;
    s16 unk22;
    s16 unk24;
    u8 filler26[0x28-0x26];
    // tilemap (with CmprHeader) immediately follows this
};

struct UnkStruct1_sub_child_data68_sub
{
    u32 speed;
    u32 unk4;  // something to do with VRAM allocation?
    u16 scanline;
    u8 fillerA[2];
};  // size = 0xC

struct UnkStruct1_sub_child_data68
{
    u16 bgLayerScrolled;
    u16 scrollLayerCount;  // count of unk4 array
    struct UnkStruct1_sub_child_data68_sub unk4[1];
};

struct GraphicsConfig_WaterLayer
{
    u16 startScanline;
    u16 flags;
    u8 bgRepPal[0x200];
    u8 sprRepPal[0x200];
};

struct GraphicsConfig
{
    s32 unk0;  // size of this struct? bit 31 is some flag
	u32 dataSize; // includes unk0
    /*0x08*/ u32 gfxOffset;  // offset to CmprHeader containing graphics data. Actually 4 bytes ahead of this
    /*0x0C*/ s32 bgMapOffsets[4];  // offsets to UnkStruct1_sub_child_data structs from the beginning of this struct. Is this tilemap related?
    /*0x1C*/ u32 palOffset;  // offset from the beginning of this struct to palette. Palette is actually 4 bytes after the address.
    u8 filler20[0xC];
    u16 unk2C;
    u16 unk2E;
    /*0x30*/ u16 bldCnt;
    /*0x32*/ u16 bldAlpha;
    /*0x34*/ u16 bldY;
    u8 filler36[2];
    /*0x38*/ u16 bgCnt[4];  // bgcnt for BGs 0-3
    /*0x40*/ u8 *bgVramMapAddrs[4];  // VRAM tile map addresses for each BG?
    /*0x50*/ u8 *vramAddr50[4];  // VRAM addresses?
	u32 animTileDataOffset;
    u8 filler64[4];
    u32 bgScanlineScrollOffset;  // some offset
    u32 waterLayerOffset;  // offset to a GraphicsConfig_WaterLayer struct
	u32 tileObjectOffset; // offset to tile object data with a CmprHeader (how the tile objects for stuff like the options menu work)
};

struct UnkStruct1_sub
{
    struct GraphicsConfig *unk0;
    /*0x04*/ u16 bgNum;  // bgNum
    u8 unk6;
    u8 unk7;
};

struct UnkStruct1
{
    struct UnkStruct1_sub unk0[4];
    u8 unk20[4];  // some indices (0 to 3)?
    /*0x24*/ u8 bgPrio[4];  // priorities for each background
    /*0x28*/ void *levelData;
    u8 unk2C;
    u8 unk2D;
    s8 unk2E;
    u8 unk2F;
    u8 unk30;
    u8 unk31;
    u8 unk32;  // some index
    u8 unk33;  // flags: bit 0 = enable blending
};

struct KeyInput
{
    u16 keys:10;
    u16 dummy:6;
};

struct Struct30002B8
{
    s32 unk0;
    s32 unk4;
};

struct Struct30012D0
{
    u8 filler0[6];
    u16 unk6;
};

struct Struct30009B0
{
    s32 unk0;
    s32 unk4;
    u8 unk8;
    s16 unk10;
    s16 unk12;
};

struct Struct3000A10
{
    u32 *base;
    u8 unk4;
    u8 unk5;
    u8 unk6;
    u8 unk7;
    u8 pad4[0x28];
    u8 unk28;
    u8 unk29;
    u8 unk2A;
    u8 unk2B;
    u8 unk2C;
    u8 unk2D;
    u8 unk2E;
    u8 unk2F;
    u8 unk30;
    u8 unk39;
    u8 unk3A;
    u8 unk3B;
    u32 unk3C;
    u32 unk40;
    u8 unk44;
    u8 pad5[0x35];
    u8 unk7A;
    u8 unk7B;
    u8 unk7C;
    u8 unk7D;
    u8 pad2[0x12];
    u8 unk90;
    u8 unk91;
    u8 unk92;
    u8 filler93[0xB6-0x93];
    u8 unkB6;
    u8 fillerB7[0xD6-0xB7];
    //u8 pad6[0x43];
    u8 unkD6;
    u16 pad3[0x24];
    u8 unk120;
    u8 unk121;
    u8 unk122;
    u8 unk123;
    u8 unk124;
    u8 unk125;
};

struct UnknownStruct6
{
    u8 filler0[0x20];
    s32 unk20;
    s32 unk24;
};

enum // spriteID
{
	LEVEL_SPRITE_MARIO                               = 0x0,
	LEVEL_SPRITE_HELP_BUBBLE                         = 0x1,
	LEVEL_SPRITE_KEY_DOOR                            = 0x2,
	LEVEL_SPRITE_UNK_3                               = 0x3,
	LEVEL_SPRITE_HAMMER                              = 0x4,
	LEVEL_SPRITE_MINI_MARIO_CRYSTAL                  = 0x5,
	LEVEL_SPRITE_UNK_6                               = 0x6,
	LEVEL_SPRITE_MINI_MARIO                          = 0x7,
	LEVEL_SPRITE_TOY_CHEST                           = 0x8,
	LEVEL_SPRITE_MINI_MARIO_NO_KEY                   = 0x9,
	LEVEL_SPRITE_TUTORIAL_INPUT_DISPLAY_HANDLER      = 0xa,
	LEVEL_SPRITE_DK_WORLD_1                          = 0xb,
	LEVEL_SPRITE_DK_WORLD_2                          = 0xc,
	LEVEL_SPRITE_DK_WORLD_3                          = 0xd,
	LEVEL_SPRITE_RED_TRASHBIN                        = 0xe,
	LEVEL_SPRITE_BLUE_TRASHBIN                       = 0xf,
	LEVEL_SPRITE_YELLOW_TRASHBIN                     = 0x10,
	LEVEL_SPRITE_MINI_MARIO_WITH_KEY                 = 0x11,
	LEVEL_SPRITE_KEY                                 = 0x12,
	LEVEL_SPRITE_UNUSED_FRUIT                        = 0x13,
	LEVEL_SPRITE_DK_WORLD_4                          = 0x14,
	LEVEL_SPRITE_DK_WORLD_5                          = 0x15,
	LEVEL_SPRITE_DK_WORLD_6                          = 0x16,
	LEVEL_SPRITE_MINI_MARIO_KEY_DOOR                 = 0x17,
	LEVEL_SPRITE_DK_MAIN_BOSS                        = 0x18,
	LEVEL_SPRITE_DK_MECH_BOSS                        = 0x19,
	LEVEL_SPRITE_RED_TOAD                            = 0x1a,
	LEVEL_SPRITE_BLUE_TOAD                           = 0x1b,
	LEVEL_SPRITE_YELLOW_TOAD                         = 0x1c,
	LEVEL_SPRITE_RED_KEY                             = 0x1d,
	LEVEL_SPRITE_BLUE_KEY                            = 0x1e,
	LEVEL_SPRITE_YELLOW_KEY                          = 0x1f,
	LEVEL_SPRITE_TOAD_CARRYING_BIG_BARREL            = 0x20,
	LEVEL_SPRITE_RED_TOAD_CAGE_CRYSTAL               = 0x21,
	LEVEL_SPRITE_BLUE_TOAD_CAGE_CRYSTAL              = 0x22,
	LEVEL_SPRITE_YELLOW_TOAD_CAGE_CRYSTAL            = 0x23,
	LEVEL_SPRITE_DK_MECH_NOSE_PLATFORM               = 0x26,
	LEVEL_SPRITE_DK_PLUS_MINI_MARIO                  = 0x27,
	LEVEL_SPRITE_B_SKIP                              = 0x31,
	LEVEL_SPRITE_SHY_GUY                             = 0x64,
	LEVEL_SPRITE_OIL_BARREL_CANDLE                   = 0x65,
	LEVEL_SPRITE_SPARKY                              = 0x67,
	LEVEL_SPRITE_BUCKETMAN                           = 0x69,
	LEVEL_SPRITE_MONCHEE                             = 0x6c,
	LEVEL_SPRITE_TANE_PAKKUN                         = 0x6d,
	LEVEL_SPRITE_BIRD_SPAWNER                        = 0x6e,
	LEVEL_SPRITE_RAMRAM                              = 0x6f,
	LEVEL_SPRITE_SNAPJAW                             = 0x70,
	LEVEL_SPRITE_TANE_PAKKUN_BULLET                  = 0x71,
	LEVEL_SPRITE_BIRD                                = 0x72,
	LEVEL_SPRITE_MONCHEE_TAIL_DOWN                   = 0x73,
	LEVEL_SPRITE_PODOBOO                             = 0x74,
	LEVEL_SPRITE_NINJI                               = 0x75,
	LEVEL_SPRITE_SHY_GUY_FIRE                        = 0x76,
	LEVEL_SPRITE_THWOMP_TUTORIAL                     = 0x78,
	LEVEL_SPRITE_THWIMP                              = 0x79,
	LEVEL_SPRITE_SIR_SHOVALOT                        = 0x7a,
	LEVEL_SPRITE_FALLING_SPIKE                       = 0x7b,
	LEVEL_SPRITE_DONUT_BLOCK                         = 0x7c,
	LEVEL_SPRITE_RED_POLTERGUY_BLOCK                 = 0x7d,
	LEVEL_SPRITE_BLUE_POLTERGUY_BLOCK                = 0x7e,
	LEVEL_SPRITE_YELLOW_POLTERGUY_BLOCK              = 0x7f,
	LEVEL_SPRITE_BOO                                 = 0x80,
	LEVEL_SPRITE_THWOMP_1                            = 0x81,
	LEVEL_SPRITE_THWOMP_2                            = 0x82,
	LEVEL_SPRITE_THWOMP_3                            = 0x83,
	LEVEL_SPRITE_THWOMP_4                            = 0x84,
	LEVEL_SPRITE_THWOMP_5                            = 0x85,
	LEVEL_SPRITE_THWOMP_6                            = 0x86,
	LEVEL_SPRITE_DK_MECH_LEFT_HAND                   = 0x87,
	LEVEL_SPRITE_DK_MECH_RIGHT_HAND                  = 0x88,
	LEVEL_SPRITE_TRASHBIN_BARREL                     = 0x96,
	LEVEL_SPRITE_NONMOVING_PLATFORM_WORLD_1          = 0x97,
	LEVEL_SPRITE_HORIZONTAL_MOVING_PLATFORM_WORLD_1  = 0x98,
	LEVEL_SPRITE_UNUSED_LONG_MOVING_PLATFORM_WORLD_1 = 0x9a,
	LEVEL_SPRITE_FALLING_BRICK                       = 0x9b,
	LEVEL_SPRITE_FALLING_DUMBELL                     = 0x9c,
	LEVEL_SPRITE_FALLING_WHEEL_RIM                   = 0x9d,
	LEVEL_SPRITE_RESPAWNING_BANANA_FRUIT             = 0x9e,
	LEVEL_SPRITE_RESPAWNING_APPLE_FRUIT              = 0x9f,
	LEVEL_SPRITE_DK_THROWN_SNAPJAW                   = 0xa0,
	LEVEL_SPRITE_MOVING_PLATFORM_WORLD_2             = 0xa2,
	LEVEL_SPRITE_UNUSED_LONG_MOVING_PLATFORM_WORLD_2 = 0xa3,
	LEVEL_SPRITE_APPLE_FRUIT                         = 0xa5,
	LEVEL_SPRITE_BANANA_FRUIT                        = 0xa6,
	LEVEL_SPRITE_NONMOVING_PLATFORM_WORLD_3          = 0xa8,
	LEVEL_SPRITE_MOVING_PLATFORM_WORLD_3             = 0xa9,
	LEVEL_SPRITE_RISING_PLATFORM_BLOCK               = 0xaa,
	LEVEL_SPRITE_MOVING_PLATFORM_WORLD_3_2           = 0xab,
	LEVEL_SPRITE_DK_THROWN_BARREL                    = 0xae,
	LEVEL_SPRITE_DK_THROWN_ROCK                      = 0xaf,
	LEVEL_SPRITE_DK_GRABABLE_BARREL                  = 0xb0,
	LEVEL_SPRITE_RED_POLTERGUY_GHOST_BOSS            = 0xb1,
	LEVEL_SPRITE_RED_POLTERGUY_BOSS                  = 0xb2,
	LEVEL_SPRITE_BLUE_POLTERGUY_GHOST_BOSS           = 0xb3,
	LEVEL_SPRITE_YELLOW_POLTERGUY_GHOST_BOSS         = 0xb4,
	LEVEL_SPRITE_BLUE_POLTERGUY_BOSS                 = 0xb5,
	LEVEL_SPRITE_YELLOW_POLTERGUY_BOSS               = 0xb6,
	LEVEL_SPRITE_MOVING_PLATFORM_WORLD_4             = 0xb8,
	LEVEL_SPRITE_BELT_SWITCH                         = 0xb9,
	LEVEL_SPRITE_SPEAR_GUY                           = 0xba,
	LEVEL_SPRITE_BAT_SPAWNER                         = 0xbb,
	LEVEL_SPRITE_BOBOMB_SPAWNER                      = 0xbc,
	LEVEL_SPRITE_CANNONBALL                          = 0xbe,
	LEVEL_SPRITE_MOVING_PLATFORM_WORLD_5             = 0xbf,
	LEVEL_SPRITE_DK_THROWN_BOBOMB                    = 0xc0,
	LEVEL_SPRITE_BOBOMB_EXPLOSION                    = 0xc1,
	LEVEL_SPRITE_ROBO_MONCHEE                        = 0xc4,
	LEVEL_SPRITE_ROBO_MONCHEE_TAIL_DOWN              = 0xc5,
	LEVEL_SPRITE_DK_BOSS_SPIKE_BARREL                = 0xc6,
	LEVEL_SPRITE_DK_BOSS_ROLLING_BIG_BARREL          = 0xc7,
	LEVEL_SPRITE_DK_BOSS_BIG_BARREL                  = 0xc8,
	LEVEL_SPRITE_DK_HIT_BARREL                       = 0xca,
};

enum // enum for backgroundType in the below
{
	BACKGROUND_TYPE_LEVEL_TILES = 0,
	BACKGROUND_TYPE_VERTICAL = 1,
	BACKGROUND_TYPE_HORIZONTAL = 2,
	BACKGROUND_TYPE_MM = 3,
	BACKGROUND_TYPE_BOSS = 4,
};

struct UnknownStruct5
{
    /*0x00*/ struct GraphicsConfig *backgroundData;
    /*0x04*/ u32 *levelData;
    /*0x08*/ u16 levelTimer;
    /*0x0A*/ u8 songID;
    /*0x0B*/ u8 backgroundType;
    /*0x0C*/ u32 levelFlags;
    /*0x10*/ u32 unk10;
};

struct Struct0807C0E0  // Is this supposed to be worldTableStruct?
{
    struct Struct168 *unk0;
    u16 unk4;
    u16 unk6;
//    u8 filler6[2];
};  // size = 0x8

struct UnknownStruct4_child
{
    u8 filler0[6];
    u16 unk6;
};

// These may be the same. Don't know yet.
struct UnknownStruct4
{
    struct UnknownStruct5 *unk0;
    struct GraphicsConfig *unk4;
    struct Struct0807C0E0 *unk8;
    void (*unkC)(void);  // camera callback? (for panning background)
    s16 unk10;
    s16 unk12;
    void *unk14;  // BGM data
    u32 unk18;  // BGM volume
    u8 filler1C;
    u8 unk1D[3];
    /*0x20*/ u32 levelFlags;
};


struct UnknownStruct7
{
    u8 filler0[0x34];
    s8 unk34;
};

enum // flags for UnknownStruct8.failType
{
    FAIL_TYPE_NONE = 0,
    FAIL_TYPE_UNK_1 = (1 << 0),
    FAIL_TYPE_UNK_2 = (1 << 1),
    FAIL_TYPE_UNK_3 = (1 << 2),
    FAIL_TYPE_UNK_4 = (1 << 3),
    FAIL_TYPE_UNK_TEXT = (1 << 4), // Draws "O  OB"
    FAIL_TYPE_TIME_UP = (1 << 5), // Draws "Time up!" text
    FAIL_TYPE_GET_TOY_CARDS = (1 << 6), // Draws "GET TOY CARDS!"
    FAIL_TYPE_LOST_ALL_MM = (1 << 7), // Draws "LOST ALL MINI MARIOS!"

    // Unused flags, fail type flags are 4 bytes big, reads all 4 bytes
    FAIL_TYPE_9 = (1 << 8),
    FAIL_TYPE_10 = (1 << 9),
    FAIL_TYPE_11 = (1 << 10),
    FAIL_TYPE_12 = (1 << 11),
    FAIL_TYPE_13 = (1 << 12),
    FAIL_TYPE_14 = (1 << 13),
    FAIL_TYPE_15 = (1 << 14),
    FAIL_TYPE_16 = (1 << 15),

    FAIL_TYPE_17 = (1 << 16),
    FAIL_TYPE_18 = (1 << 17),
    FAIL_TYPE_19 = (1 << 18),
    FAIL_TYPE_20 = (1 << 19),
    FAIL_TYPE_21 = (1 << 20),
    FAIL_TYPE_22 = (1 << 21),
    FAIL_TYPE_23 = (1 << 22),
    FAIL_TYPE_24 = (1 << 23),

    FAIL_TYPE_25 = (1 << 24),
    FAIL_TYPE_26 = (1 << 25),
    FAIL_TYPE_27 = (1 << 26),
    FAIL_TYPE_28 = (1 << 27),
    FAIL_TYPE_29 = (1 << 28),
    FAIL_TYPE_30 = (1 << 29),
    FAIL_TYPE_31 = (1 << 30),
    FAIL_TYPE_32 = (1 << 31),
};

struct UnknownStruct8
{
    u8 filler0[4];
    u32 unk4;
    u8 filler8[0x14-0x8];
    u32 failType;
};

struct UnknownStruct10
{
    u8 unk0[4];
    u16 unk4;
    u8 filler6[4];
    u8 unkA;
};

struct UnknownStruct9
{
    const struct UnknownStruct10 *unk0;
    u32 unk4;
    u32 unk8;
    u32 unkC;
    const void *unk10;
    u8 unk14;
    u8 unk15;
    u8 unk16;
    u8 unk17;
    u16 unk18;
    void *unk1C;
    u32 unk20;
    u32 unk24;
    u16 unk28;
};

struct UnknownStruct15_child
{
    u8 filler0[0xA];
    u8 unkA;
    u8 unkB;
    u8 unkC;
    u8 unkD;
};

struct UnknownStruct15
{
    u8 unk0[0x108];
    struct UnknownStruct15_child *unk108[(0x168-0x108)/4];
    u32 unk168;
    u8 filler16C[4];
    u32 unk170;
};

struct UnknownStruct17
{
    u8 unk0;
    u8 unk1;
};

struct MovieSoundEffect  // Movie sound effects
{
    /*0x00*/ u32 soundID;  // sound ID
    u8 filler4[2];
    u8 unk6;
    u8 unk7;  // maybe volume related?
    /*0x08*/ u32 startTime;  // start time?
    /*0x0C*/ u32 endTime;  // end time?
};  // size = 0x10

struct Movie_child
{
    u32 unk0;
    u16 spriteCount;
    struct MovieSpriteTable *movieSprite;
    u16 unkC;
    struct Movie_child_child10 *unk10;
    /*0x14*/ u16 soundEffectsCount;
    /*0x18*/ struct MovieSoundEffect *soundEffects;
    u16 unk1C;
    struct Movie_child_child20 *unk20;
    u16 textBankCount;
    struct MovieTextBank *textBank;
    u16 sceneCount;
    struct MovieSceneBank *sceneBank;  // video?
};  // size = 0x34

enum
{
    //Movies
    MOVIE_INTRO = 0,
    MOVIE_INTRO2 = 1,
    MOVIE_DK_BOSS_1 = 2,
    MOVIE_CREDITS_1 = 3,
    MOVIE_DK_BOSS_1_END = 4,
    MOVIE_DK_BOSS_2 = 5,
    MOVIE_DK_BOSS_2_END = 6,
    MOVIE_CREDITS_2 = 7,
    MOVIE_UNUSED_1 = 8,
    MOVIE_UNUSED_2 = 9,
};

enum  // Movie player flags
{
    MOVIE_PLAYER_ALLOW_SKIP = (1 << 0),
    MOVIE_PLAYER_FLAG_2 = (1 << 1),
};

struct Movie
{
    u16 unk0;
    struct Movie_child *unk4;
};

struct MoviePlayerParamaters
{
    struct Movie *movieData;
    u8 flags;
    u8 songID;
    u8 nextMode;
    u8 movieID;
};

enum // World IDs
{
	WORLD_1 = 0,
	WORLD_2 = 1,
	WORLD_3 = 2,
	WORLD_4 = 3,
	WORLD_5 = 4,
	WORLD_6 = 5,
};

enum  // Level flags
{
    LEVEL_FLAG_NONE = 0,
    LEVEL_FLAG_1 = (1 << 0),
    LEVEL_FLAG_2 = (1 << 1),
    LEVEL_FLAG_3 = (1 << 2),
    LEVEL_FLAG_4 = (1 << 3),
    LEVEL_FLAG_BG0_SPECIAL = (1 << 4), // Used for the lava geysers in level 3-1A, 3-1B, used for the lava in 3-DK, 3-DK+
    LEVEL_FLAG_ITEM_1 = (1 << 5), // Red present
    LEVEL_FLAG_ITEM_2 = (1 << 6), // Yellow present
    LEVEL_FLAG_ITEM_3 = (1 << 7), // Blue present

    // Unused flags, level flags are 4 bytes big, reads all 4 bytes
    LEVEL_FLAG_9 = (1 << 8), // used in dk_boss_level_setup as part of gNextLevelInLevelTable.levelFlags
    LEVEL_FLAG_10 = (1 << 9), // used in dk_boss_plus_level_setup as part of gNextLevelInLevelTable.levelFlags
    LEVEL_FLAG_11 = (1 << 10), // used in expert_7_12_level_setup as part of gNextLevelInLevelTable.levelFlags
    LEVEL_FLAG_12 = (1 << 11),
    LEVEL_FLAG_13 = (1 << 12),
    LEVEL_FLAG_14 = (1 << 13),
    LEVEL_FLAG_15 = (1 << 14),
    LEVEL_FLAG_16 = (1 << 15),

    LEVEL_FLAG_17 = (1 << 16),
    LEVEL_FLAG_18 = (1 << 17),
    LEVEL_FLAG_19 = (1 << 18),
    LEVEL_FLAG_20 = (1 << 19),
    LEVEL_FLAG_21 = (1 << 20),
    LEVEL_FLAG_22 = (1 << 21),
    LEVEL_FLAG_23 = (1 << 22),
    LEVEL_FLAG_24 = (1 << 23),

    LEVEL_FLAG_25 = (1 << 24),
    LEVEL_FLAG_26 = (1 << 25),
    LEVEL_FLAG_27 = (1 << 26),
    LEVEL_FLAG_28 = (1 << 27),
    LEVEL_FLAG_29 = (1 << 28),
    LEVEL_FLAG_30 = (1 << 29),
    LEVEL_FLAG_31 = (1 << 30),
    LEVEL_FLAG_32 = (1 << 31),
};

struct backgroundLayerOffset
{
    /*0x00*/ u16 bg0_x;
    /*0x02*/ u16 bg0_y;
    /*0x04*/ u16 bg1_x;
    /*0x06*/ u16 bg1_y;
    /*0x08*/ u16 bg2_x;
    /*0x0A*/ u16 bg2_y;
    /*0x0C*/ u16 bg3_x;
    /*0x0E*/ u16 bg3_y;
};

typedef struct test {
    s16 unk0;
    s16 unk2;
    s16 unk4;
    s16 unk6;
    s16 unk8;
    s16 unkA;
    s32 unkC;
} test;

typedef struct struct_030019AC {
    s32 unk0;
    s32 unk4;
    s32 unk8;
    s32 unkC;
    s32 unk10;
    s32 unk14;
    s32 unk18;
    s32 unk1C;
    s32 unk20;
    s32 unk24;
    s32 unk28;
    s32 unk2C;
    s32 unk30;
    s32 unk34;
    s32 unk38;
    s32 unk3C;
    //s32 unk40;
    u8 filler40[3];
    s8 unk43;
    s32 unk44;
    s32 unk48;
    s32 unk4C;
    s32 unk50;
    s16 unk54;
    s16 unk56;
    s32 unk58;
    s32 unk5C;
    s32 unk60;
    s32 unk64;
    s32 unk68;
    s32 unk6C;
    s32 unk70;
    s32 unk74;
    s32 unk78;
    s32 unk7C;
    s32 unk80;
    test* unk84;
} struct_030019AC;

typedef struct struct_03001BD0 {
    s16 unk0[4];
    s32 unk8;
    s32 unkC;
    s32 unk10;
    s32 unk14;
    s32 unk18;
    s32 unk1C;
    s32 unk20;
    s32 unk24;
    s32 unk28;
    s32 unk2C;
    s32 unk30;
    s32 unk34;
    s32 unk38;
    u8 unk3C;
    u8 unk3D;
} struct_03001BD0;

typedef struct unkst24 {
    u8 pad[0x24];
} unkst24;

struct LevelItems
{
    u8 redPresent;
    u8 yellowPresent;
    u8 bluePresent;
    u8 letterT;
    u8 letterO;
    u8 letterY;
    u8 unk6;
    u8 unk7;
};

struct worldTableStruct_unk_size_c {
    s32 unk0;
    struct UnknownStruct5 *unk4;
    struct GraphicsConfig *unk8;
};

struct worldTableStruct {
    s32 unk0;
    struct worldTableStruct_unk_size_c *unk4;
};

struct iwRAMBase {
u32 base[0];
};

struct struct_0807820C_sub8
{
    u32 objectID:16;
    u32 unk2_0:7;
    u32 filler2_7:1;
    u32 unk3:8;
};

struct LevelObject
{
    u16 objectID;
    u8 x;
    u8 y;
};

struct struct_0807820C
{
    u16 backgroundHorizontalShift;
    u16 backgroundVerticalShift;
    u16 levelWidthPixels;
    u16 levelHeightPixels;
    u16 deathPlane;
    u16 unkA;
    struct LevelObject levelObject[0x1000];
    u16 levelCollision[0x1000];
    u16 unk600C[0x1000];
    u16 unk800C[0x2000];
    u32 unkC00C;
};



enum SpriteID  // Index of sprites in gUncompressedGraphicsTable
{
    SPRITE_ID_DK_WORLD_INTRO  = 241,

    SPRITE_ID_MARIO_STAND     = 727,
    SPRITE_ID_MARIO_RUN       = 737,

    SPRITE_ID_MOVIE_ONE       = 892,
    SPRITE_ID_MOVIE_TWO       = 893,
    SPRITE_ID_MOVIE_THREE     = 894,
    SPRITE_ID_MOVIE_CREDITS_1 = 895,
    SPRITE_ID_MOVIE_FIVE      = 896,
    SPRITE_ID_MOVIE_SIX       = 897,
    SPRITE_ID_MOVIE_SEVEN     = 898,
    SPRITE_ID_MOVIE_CREDITS_2 = 899,
    SPRITE_ID_MOVIE_UNUSED    = 900,
    SPRITE_ID_MOVIE_UNUSED_2  = 901,
};

struct UnknownStruct13
{
    //u8 filler0[4];
    u32 unk0;
    u32 unk4;
};

struct UnknownStruct11
{
    u8 filler0[0x1000];
    u32 unk1000;
    u8 filler1004;
    struct UnknownStruct13 *unk1008;
};

struct UnknownStruct12
{
    u8 unk0_0:3;
    u8 unk0_3:2;
    u8 unk0_5:1;
};

enum LevelType
{
    LEVEL_TYPE_MAIN,
    LEVEL_TYPE_PLUS,
    LEVEL_TYPE_EXPERT_1_6,
    LEVEL_TYPE_EXPERT_7_12,
    LEVEL_TYPE_MAIN_BOSS,
    LEVEL_TYPE_PLUS_BOSS,
};

struct SubSpriteTemplate
{
    /*0x00*/ u8 index;  // index into sprite sheet?
    /*0x01*/ u8 duration;  // Anim frame duration
    /*0x02*/ s8 x_offset;  // x offset from sprite position
    /*0x03*/ s8 y_offset;  // y offset from sprite position
    /*0x04*/ u32 unk4;  // unknown/unused
    u32 unk8;  // some kind of flags?
    void *unkC;
    //u8 filler10[0x24-0x10];
    u8 filler10[0x1A-0x10];
    u16 unk1A;
    u16 unk1C;
    u16 unk1E;
    u16 unk20;
    u8 filler22[0x24-0x22];
};

struct SpriteTemplate
{
    /*0x00*/ u16 x;  // might actually be the number of subsprites instead?
    /*0x02*/ u16 y;
    u16 unk4;
    u16 unk6;  // number of tiles used? not sure...
    /*0x08*/ u16 subSpriteSize;  // size of each sprite's tile data
    /*0x0C*/ struct SubSpriteTemplate *subSprites;
    /*0x10*/ struct OamData *oamData;  // oam
    /*0x14*/ u8 *tileData;  // tile data
};  // size = 0x18

// header to some data
// full size is unkB * gUnknown_03000170.unk18
struct SomeUnknownHeader
{
    u8 filler0[0xB];
    u8 unkB;
    u8 unkC;
};

// header for UnknownListThing2 and StructC40_child
struct LinkedListHeaderMaybe
{
    u32 unk0;
    union
    {
        u32 as_u32;
        struct
        {
            u8 unk0;
            u16 unk2;
        } as_struct;
    } unk4;
    struct LinkedListHeaderMaybe *unk8;
};  // size = 0xC

struct LinkedListHeaderMaybe_alt  // should be LinkedListHeaderMaybe?
{
    s32 unk0;
    union
    {
        u32 as_u32;
        struct
        {
            u8 unk0;
            u16 unk2;
        } as_struct;
    } unk4;
    struct LinkedListHeaderMaybe *unk8;
};  // size = 0xC

struct UnknownListThing1
{
    struct LinkedListHeaderMaybe header;
    u8 unkC;
};  // size = 0x10

struct UnknownListThing2
{
    struct LinkedListHeaderMaybe header;
    void *unkC;
};  // size = 0x10

struct Struct170_sub
{
    struct SomeUnknownHeader *unk0;
    struct SomeUnknownHeader *unk4;  // next one after unk0
};  // size = 0x8

struct Struct170
{
    struct Struct170_sub unk0[3];
    u32 unk18;  // size of something
    struct LinkedListHeaderMaybe *unk1C;  // array of 12 LinkedListHeaderMaybe structs
    s32 unk20;
};

struct StructC30
{
    u32 unk0;
    struct UnknownListThing2 *unk4;
};

struct StructC40_sub
{
    void *unk0;
    u8 *unk4;
};

struct StructC40
{
    struct StructC40_sub unk0[1];
    u8 filler0[4];
    u8 fillerC[0x18-0xC];
    u32 unk18;
    u32 unk1C;
    struct LinkedListHeaderMaybe *unk20;  // array
};

struct TileData
{
	u8 tileID;
	u8 paletteLine;
	u8 unk2;
	u8 unk3;
	u16 tileX;
	u16 tileY;
};

struct AnimatedTileData
{
	u16 sizeX; //0x0
	u16 sizeY; //0x2
	u8 tileAction; // 0x4
	u8 u8_at_0x581; // 0x5
	u8 objectID; // 0x6
	u8 u8_at_0x583; // 0x7
	u8 array_at_0x584[16]; //0x8
	u16 tileCount; //0x18
	u16 u16_at_0x596;//0x1A
	u16 u16_at_0x598;//0x1C
	u16 u16_at_0x59A;//0x1E
	struct TileData *tiledata_at_0x2D60[0]; // 0x20
};

struct StructC70
{
    void *unk0;
    u32 unk4;
    void *unk8;
    void *unkC;
    u8 filler10[0x4];
    void *unk14;
    u32 unk18;
};

struct StructC90_child14
{
    u32 speed;
    u32 unk4;
    u8 filler8[4];
    u16 scanline;
    u8 fillerE[2];
};  // size = 0x10

struct StructC90
{
    /*0x00*/ void *copyDest;
    /*0x04*/ void *copySrc;
    u16 unk8;
    /*0x0A*/ u16 copyLength;
    void *unkC[2];
    struct StructC90_child14 *unk14;
    /*0x18*/ void (*armFunc)(struct StructC90 *, struct StructC70 *, void *, int);  // pointer to some ARM function loaded into RAM
};

struct Struct0802C1C0
{
    u8 filler0[8];
    /*0x08*/ void *bgPalSrc;
    /*0x0C*/ void *objPalSrc;
    u8 filler10[2];
    u16 unk12;
};

struct StructCB0_child
{
    void (*unk0)(struct Struct0802C1C0 *);
    u8 unk4;
    struct StructCB0_child *unk8;
    /*0x0C*/ struct StructCB0_child *next;
    struct Struct0802C1C0 *unk10;
};

struct StructCB0
{
    struct StructCB0_child unk0[5];
    u32 unk64;  // count of unk0 structs
    struct StructCB0_child *unk68;
    struct StructCB0_child *unk6C;
};

struct StructD20
{
    void *unk0[1][2];
    void *unk8;
    void *unkC;
    u16 unk10;
    u16 unk12;
};

struct StructD78
{
    s32 unk0;
    s32 unk4;
    s16 unk8;
    s16 unkA;
    u16 unkC;
    u16 unkE;
    u8 unk10[0x18-0x10];
};  // size = 0x18

struct StructD7C
{
    u8 filler0[0x20];
    s32 unk20;
    s32 unk24;
    u8 filler28[0xB0-0x28];
};  // size = 0xB0

struct Struct802C31C
{
    u32 unk0;
    u32 unk4;
};  // size = 0x8

struct Struct08078210_sub
{
    u16 unk0;
    u16 unk2;
    u8 unk4;
};

struct Struct168
{
    u16 unk0;
    u16 unk2;
    u16 unk4;
    u16 unk6;
};

enum PaletteID
{
    PALETTE_0_TITLE_SCREEN,
    PALETTE_1_MAIN_MENU,
    PALETTE_2_EXPERT_LEVELS,
    PALETTE_3_OPTIONS_MENU,
    PALETTE_4,
    PALETTE_5_LEVEL_HELP,

    PALETTE_11 = 11,
    PALETTE_12,
    PALETTE_13,
    PALETTE_14,
    PALETTE_15,
    PALETTE_16,
    PALETTE_17,
    PALETTE_18,
    PALETTE_19,
    PALETTE_20,
    PALETTE_21,
    PALETTE_22,
    PALETTE_23,
    PALETTE_24,

    PALETTE_25_WORLD_ONE_BOSS_CLEAR,
    PALETTE_26_WORLD_TWO_BOSS_CLEAR,
    PALETTE_27_WORLD_THREE_BOSS_CLEAR,
    PALETTE_28_WORLD_FOUR_BOSS_CLEAR,
    PALETTE_29_WORLD_FIVE_BOSS_CLEAR,
    PALETTE_30_WORLD_SIX_BOSS_CLEAR,

    PALETTE_31_WORLD_ONE_PLUS_BOSS_CLEAR,
    PALETTE_32_WORLD_TWO_PLUS_BOSS_CLEAR,
    PALETTE_33_WORLD_THREE_PLUS_BOSS_CLEAR,
    PALETTE_34_WORLD_FOUR_PLUS_BOSS_CLEAR,
    PALETTE_35_WORLD_FIVE_PLUS_BOSS_CLEAR,
    PALETTE_36_WORLD_SIX_PLUS_BOSS_CLEAR,

    PALETTE_58 = 58,
    PALETTE_59,
    PALETTE_60,
    PALETTE_61,
    PALETTE_62,
    PALETTE_63,
    PALETTE_64,
    PALETTE_65,
    PALETTE_66,
    PALETTE_67,
    PALETTE_68,
    PALETTE_69,
    PALETTE_70,
    PALETTE_71,
    PALETTE_72,
    PALETTE_73,
    PALETTE_74,
    PALETTE_75,
};

enum
{
    LOAD_BG_PALETTE = (1 << 0),
    LOAD_OBJ_PALETTE = (1 << 1),
};

enum CardType
{
	CARD_TYPE_LEVEL = 0,
	CARD_TYPE_THEME = 1,
};

struct LevelCardHeader
{
	u32 cardChecksum;
    u16 cardSize;
    u16 cardType;
    u8 worldID;
    u8 unk9;
    u8 unkA;
    u8 songID;
	u16 cardSize2;
	u16 unkE;
    char cardName[16];
};

struct Struct03000008
{
	void *unk0;  // copy src?
    void *unk4;  // copy src?
	s32 unk8;  // timer?
	u32 unkC;
	void *unk10;  // copy dest?
	u32 unk14;
};

//------------------------------------------------------------------------------
// Variables
//------------------------------------------------------------------------------

#define gUnknown_02032000 ((u8 *)0x02032000)
#define gUnknown_02032FF8 ((u8 *)0x02032FF8)
#define gUnknown_02032FFA ((u8 *)0x02032FFA)
#define gUnknown_02032FFC ((u8 *)0x02032FFC)
#define gUnknown_02032FFE ((u8 *)0x02032FFE)
#define gUnknown_02032FFF ((u8 *)0x02032FFF)

extern u32 gUnknown_03000004;
extern struct Struct03000008 gUnknown_03000008;
extern u32 gUnknown_03000020;
extern u32 gUnknown_03000024;
extern u8 gUnknown_03000028;
extern u8 gUnknown_03000029;
extern s32 gLevelEndTimer;
extern u8 gUnknown_03000030;
extern u8 gUnknown_03000031;
extern u8 gUnknown_03000032;
extern u8 gUnknown_03000033;
extern u32 gUnknown_03000034;
extern u32 gUnknown_03000038;
extern u32 gUnknown_0300003C;

extern u8 gFileSelectMenuSel;
extern u8 gPrevFileSelectMenuSel;
extern u8 gMainMenuState;

extern u8 gUnknown_0300005C;
extern u8 gIsEWorldVisible_0300005D;
extern u8 gMainMenuSpriteFrameNum;
extern u8 gMainMenuSpriteFrameTimer;
extern u8 gMainMenuCrownFrameNum;
extern u8 gMainMenuCrownFrameTimer;
extern u8 gUnknown_03000062;
extern u8 gUnknown_03000063;
extern u8 gMainMenuInitDelayTimer;
extern u8 gUnlockEverythingProgress;
extern u8 gUnknown_03000066[];

extern u8 gUnknown_030000AC;
extern s32 gUnknown_030000B0;
extern s8 gUnknown_030000B4;
extern s16 gUnknown_030000B6;
extern u8 *gUnknown_030000E8;
extern struct StructF4
{
    u8 filler0[0x17];
    u8 unk17;
    u8 filler18[0x28-0x18];
    u16 unk28;
} *gUnknown_030000F4;
extern u16 gPreviousMovieOption;

extern s16 gUnknown_0300015A;
extern u32 gUnknown_0300015C;
extern u8 gUnknown_03000160;
extern u8 gUnknown_03000161;
extern u16 gUnknown_03000162;
extern u16 gUnknown_03000164;
extern struct Struct168 *gUnknown_03000168;
extern struct Struct170 gUnknown_03000170;
extern struct MoviePlayerParamaters gMoviePlayerParams;
extern u32 gECardMenuState_030001A8;
extern u32 gCardReadFailReason_030001AC;
extern u32 gUnknown_030001B0;
extern u32 gUnknown_030001B4;
extern u32 gUnknown_030001B8;
extern u8 *gUnknown_030001BC;
extern struct LevelCardHeader *gUnknown_030001C0;
extern u8 gUnknown_030002A0[];
extern u16 gUnknown_030002AA;
extern struct Struct30002B8 gUnknown_030002B0;
extern struct Struct30002B8 gUnknown_030002B8;
extern struct Struct30002B8 gUnknown_030002C0;
extern struct Struct30002B8 gUnknown_030002C8;
extern struct UnknownStruct11 *gUnknown_0300029C;

//new for sub_0804A794
extern u8 gUnknown_03000368;
extern u8 gUnknown_03000374;
extern u8 gUnknown_03000378;
extern u8 gUnknown_03000380;
extern u8 gUnknown_03000387;
extern u8 gUnknown_0300038B;
extern u8 gUnknown_0300038C;
extern u8 gUnknown_03000394;
extern u8 gUnknown_03000395;
extern u8 gUnknown_03000396;
extern u8 gUnknown_030008C4;
extern u8 gUnknown_030008D4;
extern u8 gUnknown_030008D8;
extern u8 gUnknown_030008E8;
extern u8 gUnknown_03000924;
extern int (*gUnknown_03000964)(u32 *, int, int, int);
extern int (*gUnknown_03000968)(struct Struct03000008 *);
extern void *gUnknown_03000970[];
extern struct Struct30009B0 gUnknown_030009B0;
extern u8 gUnknown_030009D0;
extern u8 gUnknown_030009D4;
extern u16 gUnknown_030009D8;
extern u32 gUnknown_030009DC;
extern u16 gUnknown_030009E0;
extern struct LevelItems gCollectedLevelItemsBackup;
extern u8 gLevelTimerOnOffFlag;
extern u8 gUnknown_030009EC;
extern u8 gUnknown_030009FC;
extern u32 gUnknown_03000A00;
extern u16 gBG1CNT_03000A0C;
extern struct Struct3000A10 gUnknown_03000A10;
extern s32 gUnknown_03000B44;
extern u32 gPreviousPresentScore;
extern u32 gCurrentPresentScore;
extern u8 gUnknown_03000B50;
extern s32 gGeneralTimer;
extern s8 gCurrentWorld;
extern u8 gUnknown_03000B5C;
extern u8 gUnknown_03000B60;
extern s8 gTitleScreenAttractCount;
extern u8 gUnknown_03000B68;
extern u32 gCurrentEnemyScore;
extern u32 gUnknown_03000B70;
extern s8 gNextLevelID;
extern u8 gIsLevelViewActive;
extern s8 gLevelType;
extern struct UnknownStruct4 gNextLevelInLevelTable;
extern s8 gLevelEWorldFlag;
extern u32 gUnknown_03000BB8;
extern s8 gLivesCount;
extern u8 gUnknown_03000BD0;
extern u32 gDemoTimer_03000BE0;
extern u16 gMarioEyesTimer;
extern u16 gDKEyesTimer;
extern u8 gUnknown_03000BEC;
extern u8 gUnknown_03000BF0;
extern u8 gUnknown_03000BF8;
extern s8 gUnknown_03000BFC;
extern s8 gUnknown_03000C00;
extern u16 gUnknown_03000C04;
extern void (*gUnknown_03000C08)(/*5 args*/);
extern u16 gUnknown_03000C0C;
extern void (*gUnknown_03000C10)(void);
extern u8 gUnknown_03000C1C;
extern u8 gDKLevelMarioLivesLeft_03000C20;
extern u8 gIsFadeInProgress;
extern void *gUnknown_03000C2C;
extern struct StructC30 gUnknown_03000C30;
extern struct StructC40 gUnknown_03000C40;
extern struct StructC70 gUnknown_03000C70;
extern struct StructC90 gUnknown_03000C90;
extern struct StructCB0 gUnknown_03000CB0;
extern struct StructD20 gCurrentPalette;
extern u32 gUnknown_03000D34;
extern u16 gUnknown_03000D38;
extern u8 gUnknown_03000D3C;
extern s16 gUnknown_03000D40;
extern s32 gUnknown_03000D50;
extern s32 gUnknown_03000D54;
extern u8 gUnknown_03000D58[];
extern s32 gUnknown_03000D60;
extern s32 gUnknown_03000D64;
extern u16 gUnknown_03000D68;
extern u32 gUnknown_03000D6C;
extern s32 gUnknown_03000D70;
extern u8 gUnknown_03000D74;
extern struct StructD78 *gUnknown_03000D78;
extern struct StructD7C *gUnknown_03000D7C;
extern u8 gUnknown_03000D80;
extern u8 gUnknown_03000D84;
extern u8 *gUnknown_03000D88;
extern u8 gUnknown_03000D90[];
extern struct StructD7C *gUnknown_03000DA0[];
extern u16 gUnknown_03000DC8;
extern u8 gUnknown_03000DCC;

struct Struct03000E00_sub
{
    u32 unk0;
    u32 unk4;
    u8 filler8[0x14-8];
};  // size = 0x14
extern struct
{
    //u8 filler0[4];
    struct Struct03000E00_sub unk0[2];
    u8 filler2C[0x50-0x2C+4];
    u32 *unk50;
} gUnknown_03000E00;
extern u16 gUnknown_03000E60;
extern struct UnkStruct1_sub_child_data *gUnknown_03000E70[];
extern u8 *gUnknown_03000E88;
extern u8 *gPaletteData_03000E8C;
extern void *gUnknown_03000E94;
extern struct OamData gOamBuffer[128];
extern s16 gCameraHorizontalOffset;
extern s16 gBGHorizontalOffset;
extern void (*gUnknown_030012A8)(void);
extern u8 gUnknown_030012B0[];
extern void (*gLoopCallback_030012C0)(void);
extern struct Struct30012D0 gUnknown_030012D0;
extern u16 gHeldKeys;  // keys that are currently held down
extern u16 gUnknown_030012E4;
extern u16 gNewKeys;  // keys that were newly pressed on this frame
extern s16 gBGVerticalOffset;
extern s16 gUnknown_030012F4;
extern s16 gUnknown_030012F8;
extern void (*gUnknown_030012FC)(void);
extern u8 gIntrMainBuffer[];
extern volatile u16 gUnknown_03001700;  // vblank counter, to run at 30 FPS?
extern u8 gUnknown_03001704;
extern u16 gCurrentInput; // keys currently pressed
extern s16 gCurrentLevelHeight;
extern s16 gCameraVerticalOffset;
extern u32 gUnknown_03001714;
extern u32 gUnknown_03001718;
extern u16 gUnknown_0300171C;
extern s16 gCurrentLevelWidth;
extern s16 gSpriteHorizontalOffset;
extern struct backgroundLayerOffset gBGLayerOffsets;
extern u8 gUnknown_03001740;
extern u8 gUnknown_03001744;
extern u16 gUnknown_03001748;
extern struct UnknownStruct9 gUnknown_03001770;
extern u16 gObjVRAMCopyOffset_0300192C;  // unknown type
extern u16 gVRAMCurrTileNum_03001930; // unknown type
extern u32 gUnknown_03001938;
extern struct StructD7C *gUnknown_03001940;
extern u8 gCurrentSwitchState;
extern u16 gMarioIdleTimer;
extern u8 gUnknown_03001994;
extern u8 gUnknown_0300199C;
extern struct_030019AC* gUnknown_030019AC;
extern u8 gUnknown_030019B0;
extern u8 gPreviousSwitchState;
extern u8 gUnknown_030019E4;
extern u8 gUnknown_030019E8;
extern struct LevelItems gCollectedLevelItems;
extern u8 gUnknown_03001A38;
extern struct UnknownStruct8 gUnknown_03001B30;
extern s32 gUnknown_03001B88;
extern u8 gUnknown_03001B98;
extern s32 gUnknown_03001BA4;
extern struct_03001BD0* gUnknown_03001BD0;
extern u8 gUnknown_03001B8C;
extern u8 gUnknown_03001B84;
extern u8 gUnknown_03001B80;
extern u8 gMiniMariosRescued_03001BA0;
extern u8 gUnknown_03000389;
extern u8 gUnknown_0300038A;
extern u8 gUnknown_03001B90;
extern u8 gUnknown_03001BB0;
extern u8 gMiniMariosAliveInLevel_03001BC8;
extern u8 gMiniMariosLost_03001BCC;
extern u8 gUnknown_03001BDC;
extern s32 gUnknown_03001BE4;
extern s32 gUnknown_03001BEC;
extern s32 gUnknown_03001BF4;
extern s32 gUnknown_03001C04;
extern s32 gUnknown_03001C08;
extern s32 gUnknown_03001C0C;
extern s32 gUnknown_03001C1C;
extern s32 gUnknown_03001C20;
extern u16 gUnknown_03001C40;
extern u16 gUnknown_03001C48;
extern s8 gUnknown_03001C80;
extern s8 gUnknown_03001C84;
extern s16 gUnknown_03001D60;
extern u8 gUnknown_03001A00;
extern u32 gUnknown_03001A1C;
extern u16 gUnknown_03001A3C;
extern u8 gUnknown_03001A4C;
extern u8 gUnknown_03001A10[];
extern u8 gUnknown_03001990; // current input? no clue on this but it does stuff relating to inputs looking at memory
extern u32 gUnknown_030019A0;
extern u8 gUnknown_030019C0[];
extern s8 gUnknown_030019D8;
extern u8 gUnknown_03001944;
extern u8 gUnknown_030019F4;
extern u8 gUnknown_030019A4;
extern struct UnknownStruct7 *gUnknown_03001C78;

struct struct_03001D70{
    u16 somePosition[21]; // unk0, 1D70
    u16 someCounter; // unk2A, 1D9A
    u32 vramTileOffsets[16]; // unk2C, 1D9C
    u32 vramTileOffsetDpad; // 1DDC
    struct OamData *InputDisplayOAMDpad; // 1DE3
    u32 vramTileOffsetABtn; // 1DE4
    struct OamData *InputDisplayOAMABtn; // 1DEB
    u32 vramTileOffsetBBtn; // 1DEC
    struct OamData *InputDisplayOAMBBtn; //1DF3
    u16 unk84; // 1DF4
    u16 unk86; // 1DF6
    u16 unk88; // 1DF8
    u16 unk8A; // 1DFA
    u16 unk8C; // 1DFC
    u16 unk8E; // 1DFE
    u32 currentDemoInputFrame; //unk90, 1E00
    u16 unk94; // 1E04
    u16 unk96; // 1E06
    u16 unk98; // 1E08
    u16 unk9A; // 1E0A
    u16 unk9C; // 1E0C
    u16 unk9E; // 1E0E
    u8 unkA0; // 1E10
    u8 padA1[15]; // 1E11-1E1F
};

extern struct struct_03001D70 gUnknown_03001D70;

extern u32 gUnknown_03001E20[6];

extern u8 gUnknown_03001E38;
extern u8 gUnknown_03001E3C;
extern u8 gUnknown_03001F50[];  // unknown type
extern u8 gUnknown_03007AB0[];  // unknown type
extern void *gUnknown_03007FFC;

extern struct Struct08078210
{
    u8 filler0[0x108];
    struct Struct08078210_sub *unk108[1];
} *gObjectTileDataRAMPtr;
extern u32 *gLastLevelEWorld;
extern u8 *gSelectedSaveFileNumPtr;
extern u16 gUnlockEverythingButtonCode[];
extern struct UnknownStruct12 *gScreenModeRelatedPtr;
struct EWorldLevelCount_sub
{
    u8 filler0[0xC00];
};

extern struct EWorldLevelCount
{
    u32 count;
    u8 filler4[0x4C-0x4];
    u8 unk4C[0x58-0x4C];
    u8 unk58[0x68-0x58];
    struct EWorldLevelCount_sub unk68[12];
} *gEWorldLevelCountPtr;
extern struct UnknownStruct17 gUnknown_0807954C[];
extern u8 gTitleMarioEyesAnimData[];
extern u8 gTitleDKEyesAnimData[];
extern struct
{
    void *unk0;
    void *unk4;
    void *unk8;
    void *unkC;
} gUnknown_08079DA0;
extern void *gUnknown_0807AA1C[];
extern struct UnkStruct1_sub_child_data68 gUnknown_0807BA58;
extern u16 gUnknown_0807BA68[];
extern void *gUnknown_0807BB30[];
extern s16 gUnknown_0807C83A[];
extern const u32 gUnknown_0807C850[];
extern u32 gPaletteIndicesMain1_6_0807DD34[];
extern u32 gPaletteIndicesPlus1_6_0807DD4C[];
extern u32 gPaletteIndicesExpert1_6_0807DD64[];
extern u32 gPaletteIndicesExpert7_12_0807DD7C[];
extern u16 *const gUnknown_0807DD94;
extern struct GraphicsConfig gNintendoSoftwareTechnologyLogo;
extern struct GraphicsConfig gTitleScreenLeftData;
extern struct GraphicsConfig gTitleScreenRightData;
extern struct GraphicsConfig gTitleMarioDKEyes;  // non-const (likely in .data instead of .rodata)
extern struct Movie gMovieDKBoss1End; // Movie player uses the below
extern struct Movie gMovieIntro;
extern struct Movie gMovieNewGame;
extern struct Movie gMovieDKBoss1Intro;
extern struct Movie gMovieCredits1;
extern struct Movie gMovieDKBoss2Intro;
extern struct Movie gMovieDKBoss2End;
extern struct Movie gMovieCredits2;
extern struct Movie gMovieUnusedDKFalling;
extern struct Movie gMovieUnusedPlusWorldsUnlocked;

extern const s16 gUnknown_0807C118[][2];

extern struct worldTableStruct gUnknown_08B2CFC0[0];
extern struct worldTableStruct gUnknown_08B2CF84[0];
extern struct worldTableStruct gUnknown_08B2CEBC[0];
extern struct Struct0807C0E0 /*worldTableStruct*/ gUnknown_0807C0D0;
extern struct Struct0807C0E0 /*worldTableStruct*/ gUnknown_0807C098[0];
extern struct worldTableStruct gUnknown_08B2CDF4[0];
extern struct Struct0807C0E0 /*worldTableStruct*/ gUnknown_0807C028[0];
extern struct worldTableStruct gUnknown_08B2CA5C[0];
extern struct Struct0807C0E0 /*worldTableStruct*/ gUnknown_0807C0E0[0];
extern struct worldTableStruct gUnknown_08B2D378[0];
extern u8 gTitleDemoLevelIDs[0];
extern void *gUnknown_0807C7A8[];
extern u8 gUnknown_0807C7C4[];
extern void *gUnknown_0807C7CC[];
extern u8 gUnknown_0807C804[];
extern void *gUnknown_0807C814[];
extern u8 gUnknown_0807C82C[];
extern struct StructD78 *gUnknown_0807C834;
extern u8 gUnknown_0807C838[];

extern struct GraphicsConfig gMainMenuData;
extern struct GraphicsConfig gOptionsMenuBGConfig;

extern struct Struct0807C0E0 gUnknown_0807C0D8;
extern u8 gExpertLevelsStarsNeeded[];

extern struct GraphicsConfig gWorldOneStartData;
extern struct GraphicsConfig gWorldTwoStartData;
extern struct GraphicsConfig gWorldThreeStartData;
extern struct GraphicsConfig gWorldFourStartData;
extern struct GraphicsConfig gWorldFiveStartData;
extern struct GraphicsConfig gWorldSixStartData;
extern struct GraphicsConfig gWorldOnePlusStartData;
extern struct GraphicsConfig gWorldTwoPlusStartData;
extern struct GraphicsConfig gWorldThreePlusStartData;
extern struct GraphicsConfig gWorldFourPlusStartData;
extern struct GraphicsConfig gWorldFivePlusStartData;
extern struct GraphicsConfig gWorldSixPlusStartData;

extern struct GraphicsConfig gLevelResultsData;

extern struct GraphicsConfig gLevelSelectWorldOneBG;
extern struct GraphicsConfig gLevelSelectWorldTwoBG;
extern struct GraphicsConfig gLevelSelectWorldThreeBG;
extern struct GraphicsConfig gLevelSelectWorldFourBG;
extern struct GraphicsConfig gLevelSelectWorldFiveBG;
extern struct GraphicsConfig gLevelSelectWorldSixBG;
extern struct GraphicsConfig gLevelSelectWorldOnePlusBG;
extern struct GraphicsConfig gLevelSelectWorldTwoPlusBG;
extern struct GraphicsConfig gLevelSelectWorldThreePlusBG;
extern struct GraphicsConfig gLevelSelectWorldFourPlusBG;
extern struct GraphicsConfig gLevelSelectWorldFivePlusBG;
extern struct GraphicsConfig gLevelSelectWorldSixPlusBG;

extern const struct iwRAMBase *gUnknown_0807CA98;

extern struct GraphicsConfig gEWorldMenuData2;
extern s32 gUnknown_03000288;
extern u32 gUnknown_0300028C;
extern u8 gUnknown_03000290;

extern struct struct_0807820C *gEWRAMBasePtr;

extern void *gSomeVRAMAddr_03000E90;
extern void *gSomeVRAMAddr_03000E80;

struct Struct08031C54_sub
{
    u32 unk0;
    u32 unk4;
};

struct Struct08031C54
{
    u32 unk0;
    u32 unk4;
    s32 unk8;
    struct Struct08031C54_sub unkC[3];
    u8 filler24[0x25-0x24];
    u8 unk25;
    u8 unk26;
};


struct ThemeCardHeader
{
	u32 cardChecksum;
	u32 *unk4;
	u16 worldType;
	u16 unkA;
    char name[15];
    u16 dataPtrs[5];
    u16 palPtr;
    struct CmprHeader cardData[0];
};

extern u32 gUnknown_03000294;
extern struct Struct08031C54 *gUnknown_03000298;
extern s32 gUnknown_03000288;
extern const u32 gTextErasing[];

//------------------------------------------------------------------------------
// Functions
//------------------------------------------------------------------------------

// crt0.s
void irq_enable_t(void);
void irq_disable_t(void);
void interrupt_main(void);

// ARM code (copied to RAM)
extern u8 sub_080003D0[];
extern u8 sub_080006D8[];
extern u8 sub_0800169C[]; extern u8 sub_0800169C_end[];
extern u8 sub_08001760[]; extern u8 sub_08001760_end[];

void sub_08001668();
void sub_080012BC();
void sub_08001514();
void sub_080014B0();
void sub_080013C4();
void sub_08001458();
void sub_08001478();
void sub_080014EC();
void sub_08001344();
void sub_080012D0();
void sub_0800125C();
void sub_08001284();
void sub_0800124C();
void sub_08001378();
void sub_0800142C();

void sub_08001BA4(void *, void *);
void level_edit_delete_object(struct Struct802C31C *);
void press_color_switch(int, int);
void decompress_level_data_08004428();
void load_level_data_08004634();
void sub_08006388(void);
void sub_080064D4();
void sub_08006548();
void sub_080065B4();
void sub_0800667C();
int sub_080066FC(u32 *, int, int, int);
struct UnknownStruct15 *repoint_tile_objects_08006968(struct GraphicsConfig *);
void sub_08006D44(void);
void sub_080063E4(struct Struct802C31C *, int, void *);

void sub_08007170(void);
void level_play_main(void);
void level_demo_main(void);
void level_callback_08008238(void);
void level_play_loop(void);
void after_tutorial_init_callback(void);
void level_play_init_callback(void);
void level_demo_init_callback(void);
void level_play_end(void);
void unknown_0A_init_callback(void);
void level_editor_init_callback(void);
void level_edit_main(void);
void level_editor_end(void);
void sub_080091A8(void *, void *);
void sub_0800A2B8(int, int, u16 *oamIndex, u16 *tileNum, u16 *vramOffset);
void sub_0800EE70(void);
void tutorial_level_setup(u32 worldID, u32 levelID);
void title_demo_setup(u32 titleDemoID);
int sub_08014950();
void sub_08014A58();
u8 sub_08014AB8(void);
void sub_08014B78(int, s8 *, u8 *, s8 *);
u8 sub_08014BD0(void);
void sub_08014D08(void);
void sub_0801500C();
void sub_08015044(void);
void level_select_init_callback(void);
void level_select_main(void);
void level_select_loop(void);
void level_select_end(void);
void sub_0801B2CC();
void reset_some_array_0801B3C0(void);
void setup_animated_tiles_0801B3DC(struct GraphicsConfig *, int, int);
void sub_0801B50C(int);
void title_init_callback(void);
void title_main(void);
void sub_0801B88C(void);
void title_loop(void);
void intro_init_callback(void);
void title_end(void);
void intro_main(void);
void intro_loop(void);
void intro_end(void);
void pause_menu_init_callback(void);
void pause_menu_main(void);
void pause_menu_loop(void);
void pause_menu_end(void);
void boss_clear_init_callback(void);
void boss_clear_main(void);
void boss_clear_loop(void);
void boss_clear_end(void);
void bonus_stoparrow_init_callback(void);
void bonus_stoparrow_main(void);
void bonus_stoparrow_loop(void);
void bonus_stoparrow_end(void);
void sub_0802200C(/*5 args*/);
void sub_08022340(/*5 args*/);
void sub_08022890(/*5 args*/);
void sub_0802363C(/*5 args*/);
void sub_08023C08(/*5 args*/);
void sub_080240D0(/*5 args*/);
void sub_08024404(/*5 args*/);
void sub_08024A04(/*5 args*/);
void sub_08024E5C(/*5 args*/);
void sub_080251A0(/*5 args*/);
void bonus_swapboxes_init_callback(void);
void bonus_swapboxes_main(void);
void bonus_swapboxes_loop(void);
void bonus_swapboxes_end(void);
void options_init_callback(void);
void options_main(void);
void options_loop(void);
void options_end(void);
void sub_08029080(void);
void sub_0802919C(int arg0, int arg1);
void level_results_init_callback(void);
void black_screen_08029D80(void);
void level_results_main(void);
void level_results_loop(void);
void level_results_end(void);
int update_fade_from_black(void);
void save_blend_regs_from_graphicsconfig(struct GraphicsConfig *param_1);
void save_blend_regs();
void fade_transition_init_callback(void);
void fade_transition_end(void);
void fade_transition_main(void);
int sub_08029FD0(void);
int sub_0802A0A8(void);
int write_flash_sector_0802A164(void);
int write_flash_sector_0802A290(int sectorNum, void *data, int size);
int write_flash_sector_0802A370(u32 sectorNum, const u8 *data, int size);
void read_flash_sector_0802A430(int sector, void *buffer, int size);
int sub_0802A464(void);
void help_init_callback(void);
void help_end(void);
void help_main(void);
void help_loop(void);
void level_retry_init_callback(void);
void level_retry_main(void);
void level_retry_end(void);
void level_retry_loop(void);
void sub_0802BA94(void);
extern void sub_0802BC64(u8, int);
void sub_0802BC98(void);
void sub_0802BCA4(struct GraphicsConfig *, int);
void sub_0802BE74(void);
void set_bg_offset_regs_0802BEEC();
void sub_0802BF1C(void);
void enable_vcount_interrupt_0802BF28(void);
void sub_0802BFA4(void);
void sub_0802C20C(void);
void sub_0802C058(void);
void sub_0802C080(struct Struct0802C1C0 *);
void gfx_related_0802C0B8(struct GraphicsConfig *);
void sub_0802C104();
void sub_0802C144();
void sub_0802C1B0(void);
void load_some_palettes_0802C1C0(struct Struct0802C1C0 *arg0);
void sub_0802C71C(void);
void sub_0802C7A4(void);
void sub_0802C938(void);
void sub_0802CF08(void);
void sub_0802D1D0(void);
void sub_0802D1DC(struct LinkedListHeaderMaybe *arg0, int arg1);
void movie_player_main(void);
void movie_player_setup_data(u8, u8, u8, u8);
void movie_player_init_callback(void);
void movie_player_loop(void);
void movie_player_end(void);
void e_card_scan_main(void);
void e_card_scan_loop(void);
void e_card_scan_init_callback(void);
void e_card_scan_end(void);
void e_world_return_init_callback(void);
void e_world_main(void);
void e_world_loop(void);
void e_world_init_callback(void);
void e_world_end(void);
void sub_0802ECC8(void);
void sub_0802EE54(void);
void sub_0802EEC8(int);
int sub_0802EF70();
void sub_0802F060(void);
int sub_0802F090(void *);
int check_card_checksum_0802F12C(void *);
void sub_0802F168(int, u8 *);
void sub_0802F1AC(int, int);
int sub_0802F1C0(int);
void sub_0802F1D4(void);
void e_world_debug_main(void);
void e_world_debug_loop(void);
void e_world_debug_init_callback(void);
void e_world_debug_end(void);
int sub_0802F5C0();
void sub_0802F648(void *, void *);
int sub_0802F7B8(void *, int);
void sub_0802F890(u32 *, u16 *, u16 *, u16 *);
void sub_0802FC24(int, int);
int sub_0802FC88(void);
void sub_0802FCA4(void);
void sub_080300CC(int);
void sub_08030408(int);
void sub_08030C84(u16 *, u16 *, u16 *);
void sub_08030DA0(int);
int sub_08030DE8(void);
void sub_0803109C(void);
void sub_080317F8(void);
int check_if_theme_card_exists_08031944(struct ThemeCardHeader *);
void load_theme_card_08031978(struct ThemeCardHeader *);
void load_level_with_theme_card_080319BC(struct GraphicsConfig *, struct UnknownStruct5 *, u32);
char *get_theme_card_name_08031A38(struct ThemeCardHeader *);
int sub_08031C54();
void sub_08031BF0();
int sub_08031E04(void);
void e_world_from_menu_main(void);
void e_world_from_menu_loop(void);
void e_world_from_menu_init_callback(void);
void e_world_from_menu_end(void);
void game_init_callback(void);
void game_init_main(void);
void game_init_loop(void);
void game_init_end(void);
void load_predefined_palette(enum PaletteID paletteNum, u32 flags);
u32 load_bg_tilemap_08032E24(struct GraphicsConfig *arg0, int arg1, int arg2);
void copy_some_palette_08032E80(struct GraphicsConfig *arg0);
u16 load_graphics_config_bg2_08032EB8(struct GraphicsConfig *arg0);
u16 load_graphics_config_08032F24(struct GraphicsConfig *arg0[4], int arg1);
void sub_08032F68(void);
void load_some_oam(void);
void process_input(void);
void sub_08033440(void);
void init_timer_regs(void);
void sub_08033C74(void);
void clear_ram(void);
void clear_graphics_memory(void);
void sub_08033D30(void);
void sub_08033D58(void);
void set_loop_callback_08033EA0();
void sub_08033EBC(void);
void sub_08033EC8(void);
void wait_for_some_counter_08033EE0(void);
void sub_08033FAC(s16, s16);
void sub_08033FC8(void);
extern u8 pressed_a_or_start_08034004(void);
void dummy_loop_callback(void);
void *load_compressed_data(struct CmprHeader *src, void *dest, int toVram);
void goto_credits_init_callback(void);
void goto_credits_main(void);
void goto_credits_loop(void);
void goto_credits_end(void);
void sub_080348C8(const struct UnknownStruct10 *, u32, u32, u32);
int draw_text_font();
void sub_08035108();
void sub_080351E0();
void expert_levels_init_callback(void);
void expert_levels_main(void);
void expert_levels_loop(void);
void expert_levels_loop(void);
void expert_levels_end(void);
void world_start_init_callback(void);

void world_start_main(void);
void world_start_loop(void);
void world_start_end(void);

void print_error_message(char *);
void sub_08038130(int);
void sub_080381E4(int, int);
int sub_08038228(int);
void sub_08038280(void);
int sub_08038264(void);
void sub_080382A8(void);
void sub_080386DC(void);
extern u8 spawn_sprite_08038DF4(u8, u8, int, u16, u16, int);
void sub_08040B28(void);
s8 sub_08040EE8();
struct UnknownStruct6 *sub_08040F30(s8);
void sub_08040FC0(int, int);
void sub_0804138C(int, int, u32, u32);
extern void sub_08041F2C(s8);
void sub_08042FB0(void *, void *);
u16 sub_0806C2C4(void);
void update_tutorial_button_display_0806D1AC(u16, u16);
void sub_080714A8(void);

void sub_080082C8();

// Sort these later - Movie player uses these.

u8 sub_0805727C();
u8 move_player_update_sprites();
u8 sub_08057420(u32);
u8 sub_08038B18();
void sub_0802D608(void);

u8 sub_0805739C(struct Movie *);
void update_level_background_0802BE50(void);
u8 sub_0801B310();
u32 update_quick_fade_from_black();
u8 sub_080148A4(u32, u8);
s32 sub_08014BB4();
s32 sub_080148F0(u32);


void sub_080410B4(u8, u8,u8);

u32 sub_08033658();

u8 sub_0800EF30();
u8 sub_0800EF8C();

void level_play_loop();
void sub_0800F060(void);
void sub_08040F54();
void sound_pause_music();

void sub_0800CC6C();
void sub_08041F70();
u8 sub_0800C5A4();
void sound_resume_music(void);
void update_level_background_waves_0802BEA4(u8);

void level_callback_08008764();

u32 get_bgm_volume(u32);
void *get_bgm_data(u32);
u8 *sub_08071F8C(u32);
void level_callback_080084A4(void);
void level_callback_08008330(void);
void level_callback_08008600();
void level_callback_080086A4();


void update_level_08039C44();
void sub_08038414(u16, u16);
void sub_080149F8(u32);

void sub_0802BAA0();
void sub_0802CF78();
void sub_08030F50();
void sub_0802C540();
void sub_0802C9D8();
void sub_080315A4();
void sub_08031C1C();

s8 sub_0801BAD8(void);
void sub_0800F02C();
void sub_0800F070(u8);
void level_setup();
void sub_0802EDAC();
void sub_08040D50();
void load_arm_code_0802B998();
void sub_080069BC();
int sub_08032C44(struct UnknownStruct4 *arg0);
void sub_080041B8();
void sub_080072A4();
void level_demo_reset_init_callback();
void level_editor_init_callback();
void sound_disable_dma_transfer();
void sound_enable_dma_transfer();
void sub_08033F80(s16, s16);
void sub_08071C6C();
void sub_08008CE4();
void sub_080069E8();
void sub_080040D8();
void sub_0800EF0C();
void level_edit_process_input_08004FBC();
void sub_08005FA0();
u32 sub_08006A34();
void e_world_init_callback();
u32 sub_0802A458(void);
void sub_0802F06C();
void sub_080062D0();
void sub_08006A00();
void update_animated_tiles_0801B4BC();
void sub_08031AD4();
void update_level_springs_0802BA38();
void sub_0803D248();
void sub_08031D44();
void update_level_tutorial_thought_bubble_OAM_0806E594(u16 *oamIndex, u16 *tileNum, u16 *vramOffset);
void sub_0800F0A8(u16 *oamIndex, u16 *tileNum, u16 *vramOffset);
u8 update_fade_to_black_08029F7C(void);
void sub_08007154(void);
u32 setup_sprite_gfx_tiles_vram_0800F0C4(const void *, u16 *, u16 *, u16);

u32 VerifyFlashSector(u16 sectorNum, u8 *src);

#endif  // GUARD_GLOBAL_H
