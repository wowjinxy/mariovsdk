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
    u32 compressionType:4;  // 1 = LZ77
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
    u32 unk0;
    u32 unk4;  // something to do with VRAM allocation?
    u16 unk8;
    u8 fillerA[2];
};  // size = 0xC

struct UnkStruct1_sub_child_data68
{
    u16 unk0;
    u16 unk2;  // count of unk4 array
    struct UnkStruct1_sub_child_data68_sub unk4[1];
};

struct GraphicsConfig_6C
{
    u16 unk0;
    u16 unk2;
    u8 unk4[0x200];
    u8 unk204[0];
};

struct GraphicsConfig
{
    s32 unk0;  // size of this struct? bit 31 is some flag
    u8 filler4[4];
    /*0x08*/ u32 gfxOffset;  // offset to CmprHeader containing graphics data. Actually 4 bytes ahead of this
    /*0x0C*/ s32 unkOffsets[4];  // offsets to UnkStruct1_sub_child_data structs from the beginning of this struct. Is this tilemap related?
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
    u8 filler60[8];
    u32 unk68;  // some offset
    u32 unk6C;  // offset to a GraphicsConfig_6C struct
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

extern struct Struct3000A10 {
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
    u8 padA[0x3];
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
    u8 pad6[0x43];
    u8 unkD6;
    u16 pad3[0x24];
    u8 unk120;
    u8 unk121;
    u8 unk122;
    u8 unk123;
    u8 unk124;
    u8 unk125;
} unk1;

struct UnknownStruct6
{
    u8 filler0[0x20];
    s32 unk20;
    s32 unk24;
};

struct UnknownStruct5
{
    /*0x00*/ struct GraphicsConfig *backgroundData;
    /*0x04*/ u32 *levelData;
    /*0x08*/ u16 levelTimer;
    /*0x0A*/ u8 songID;
    /*0x0B*/ u8 levelType;
    /*0x0C*/ u32 levelFlags;
    /*0x10*/ u32 unk10;
};

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
    struct UnknownStruct4_child *unk8;
    u32 (*unkC)(void);
    s16 unk10;
    s16 unk12;
    u32 unk14;
    u32 unk18;
    u8 filler1C;
    u8 unk1D[3];
    /*0x20*/ u32 levelType;
};


struct UnknownStruct7
{
    u8 filler0[0x34];
    s8 unk34;
};

struct UnknownStruct8
{
    u8 filler0[0x14];
    u32 unk14;
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
    struct UnknownStruct15_child *unk108[0];
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
    u16 unk4;
    struct Movie_child_child8 *unk8;
    u16 unkC;
    struct Movie_child_child10 *unk10;
    /*0x14*/ u16 soundEffectsCount;
    /*0x18*/ struct MovieSoundEffect *soundEffects;
    u16 unk1C;
    struct Movie_child_child20 *unk20;
    u16 unk24;
    struct Movie_child_child28 *unk28;
    u16 unk2C;
    struct Movie_child_child30 *unk30;  // video?
};  // size = 0x34

struct Movie
{
    u16 unk0;
    u8 filler2[2];
    struct Movie_child *unk4;
};

struct MoviePlayerParamaters
{
    struct Movie *movieData;
    u8 unk4;
    u8 songID;
    u8 nextMode;
    u8 movieID;
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

struct levelCollectableFlags
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

struct Struct0807C0E0  // Is this supposed to be worldTableStruct?
{
    struct Struct168 *unk0;
    u16 unk4;
    u8 filler6[2];
};  // size = 0x8

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
    u16 unk8;
    u16 unkA;
    struct LevelObject unkC[1];
    u8 filler10[0x400C-0x10];
    u16 unk400C[0x1000];
    u16 unk600C[0x1000];
    u16 unk800C[0x2000];
    u32 unkC00C;
};

enum SoundID
{
    SE_CLIMB          = 0,
    SE_SKID           = 1,
    SE_POUND          = 2,
    SE_TUMBLE1        = 3,
    SE_STUN           = 4,
    SE_BURN1          = 5,
    SE_JUMP_1         = 6,
    SE_GRUNT2         = 7,
    SE_JUMP_4         = 8,
    SE_JUMP_3         = 9,
    SE_PICKUP         = 10,
    SE_JUMP_5         = 11,
    SE_COUNTER        = 12,
    SE_ITEM1          = 13,
    SE_STEPS2         = 14,
    SE_KEY1           = 15,
    SE_CRASH          = 16,
    SE_THROW          = 17,
    SE_WALK           = 18,
    SE_PICKUP_CRYSTAL = 19,
    SE_HERE_WEGO      = 20,  // "Okey-dokey! Let's a-go!"
    SE_LETS_GO        = 21,  // "Let's a-go, you guys!"
    SE_BACK           = 22,
    SE_CURSOR_E       = 23,
    SE_CURSOR_M       = 24,
    SE_CURSOR_S       = 25,
    SE_ERASE          = 26,
    SE_ERROR          = 27,
    SE_EXIT_ED        = 28,
    SE_FIELD          = 29,
    SE_GRID           = 30,
    SE_ITEM           = 31,
    SE_SELECT_M       = 32,
    SE_SELECT_S       = 33,
    SE_STAMP          = 34,
    SE_START          = 35,
    SE_BEAM           = 36,
    SE_BURN2          = 37,
    SE_BLOCK          = 38,
    SE_EXIT           = 39,
    SE_HURT           = 40,
    SE_ITEMLAST       = 41,
    SE_POUND2         = 42,
    SE_SCUFF          = 43,
    SE_SHOCK          = 44,
    SE_KEY_DOOR       = 45,
    SE_SPIN           = 46,
    SE_SPLAT          = 47,
    SE_SQUEAK         = 48,
    SE_UNLOCK         = 49,
    SE_WIREJUMP       = 50,
    SE_SPIN_1         = 51,
    SE_ONE_UP         = 52,
    SE_HELP           = 53,
    SE_SILENCE        = 54,
    SE_SKIDSHORT      = 55,
    SE_SWITCH1        = 56,
    SE_SWITCH2        = 57,
    SE_SWITCH3        = 58,
    SE_BOING          = 59,
    SE_JUMP_6         = 60,
    SE_ROPE_UP        = 61,
    SE_ROPE_DOWN      = 62,
    SE_DOOR           = 63,
    SE_SCROLL         = 64,
    SE_RETURN         = 65,
    SE_BLANK          = 66,
    SE_LOOK_UP        = 67,
    SE_MM_DIE         = 68,
    SE_MM_BOING       = 69,
    SE_MM_PROTECT     = 70,
    SE_CHEST_OPEN     = 71,
    SE_CHEST_CLOSE    = 72,
    SE_OOF            = 73,
    SE_DK_HURT        = 74,
    SE_DK_BELLOW      = 75,
    SE_SLAM2          = 76,
    SE_FRUIT_FALL     = 77,
    SE_POINTER        = 78,
    SE_CHOOSE         = 79,
    SE_EMPTY          = 80,
    SE_TOY1           = 81,
    SE_TOYLAST        = 82,
    SE_WARP_OUT       = 83,
    SE_WARP_IN        = 84,
    SE_SQUEEZE        = 85,
    SE_GLASS          = 86,
    SE_LIFT           = 87,
    SE_MM_OH_NO       = 88,
    SE_JUMP_7         = 89,
    SE_LEVEL_START    = 90,
    SE_ELEV_GO        = 91,
    SE_ELEV_STOP      = 92,
    SE_EGG_FALL       = 93,
    SE_DK_EXIT1       = 94,
    SE_DK_BLUBBER     = 95,
    SE_MOVIE_02       = 96,
    SE_MOVIE_03       = 97,
    SE_MOVIE_04       = 98,
    SE_MOVIE_05       = 99,
    SE_MOVIE_06       = 100,
    SE_KEY2           = 101,
    SE_KEY3           = 102,
    SE_GRAB_WIRE      = 103,
    SE_GRAB_ROPE      = 104,
    SE_GRAB_LADDER    = 105,
    SE_CRUSH          = 106,
    SE_SPITFIRE       = 107,
    SE_NINJI          = 108,
    SE_CRUMBLE        = 109,
    SE_LAVA           = 110,
    SE_BUBBLE         = 111,
    SE_FOUNTAIN       = 112,
    SE_OUCH           = 113,
    SE_RESTART        = 114,
    SE_METALROLL      = 115,
    SE_SHWING         = 116,
    SE_KICK           = 117,
    SE_BRICKMAN       = 118,
    SE_SPIT           = 119,
    SE_POP            = 120,
    SE_GROWL          = 121,
    SE_GROWL2         = 122,
    SE_GHOST          = 123,
    SE_SHY_WAKE       = 124,
    SE_SHY_RUN        = 125,
    SE_BOMB_PEEP      = 126,
    SE_BOMB_JUMP      = 127,
    SE_BOMB_FLASH     = 128,
    SE_BOMB_BLOW      = 129,
    SE_VAPORIZE       = 130,
    SE_BAT            = 131,
    SE_CANNON         = 132,
    SE_CROUCH         = 133,
    SE_SCATTER        = 134,
    SE_REACH          = 135,
    SE_DK_HEAD        = 136,
    SE_GOTCHA         = 137,
    SE_TOAD_WALK      = 138,
    SE_TOAD_TOSS      = 139,
    SE_BOX_FALL       = 140,
    SE_SPARKY_LOOP    = 141,
    SE_DK_BLUB        = 142,
    SE_YANK           = 143,
    SE_SPIKE          = 144,
    SE_BONE           = 145,
    SE_MM_BOINGUP     = 146,
    SE_LASER          = 147,
    SE_DK_JUMP        = 148,
    SE_JUMP_8         = 149,
    SE_TRASHCAN       = 150,
    SE_KEY_TOAD       = 151,
    SE_SHATTER        = 152,
    SE_TOAD_CARRY     = 153,
    SE_TOAD_SET       = 154,
    SE_JUMP_A         = 155,
    SE_JUMP_B         = 156,
    SE_JUMP_C         = 157,
    SE_JUMP_D         = 158,
    SE_SHUFFLE        = 159,
    SE_MOVIE_07       = 160,
    SE_MOVIE_01       = 161,
    SE_MINI_KEY       = 162,
    SE_MOVIE2_1       = 163,
    SE_MOVIE2_2       = 164,
    SE_MOVIE2_3       = 165,
    SE_MOVIE2_4       = 166,
    SE_MOVIE2_5       = 167,
    SE_MOVIE2_6       = 168,
    SE_MOVIE2_7       = 169,  // "Hey! Come back here!"
    SE_MOVIE2_8       = 170,
    SE_BOSS_ARM       = 171,
    SE_BOSS_ARM2      = 172,
    SE_BOSS_ARM3      = 173,
    SE_BOSS_ARM4      = 174,
    SE_BOSS_ARM5      = 175,
    SE_BOSS_SWITCH    = 176,
    SE_CURSOR_WORLD   = 177,
    SE_CURSOR_UP_DN   = 178,
    SE_BOSS_DIE1      = 179,
    SE_BOSS_DIE2      = 180,
    SE_BOSS_INTRO1    = 181,
    SE_BOSS_INTRO3    = 182,
    SE_PLUS_MAIN      = 183,
    SE_BARREL         = 184,
    SE_SPIKE_HIT      = 185,
    SE_BIGBARREL_HIT  = 186,
    SE_BIGBARREL_FALL = 187,
    SE_TOADS_JUMP     = 188,
    SE_TOADS_GRAB     = 189,
    SE_MOVIE3_01      = 190,
    SE_MOVIE3_02      = 191,
    SE_MOVIE3_03      = 192,
    SE_MOVIE3_04      = 193,
    SE_MOVIE3_05      = 194,
    SE_MOVIE3_06      = 195,
    SE_MOVIE3_07      = 196,
    SE_MOVIE3_08      = 197,
    SE_MOVIE3_09      = 198,
    SE_MOVIE3_10      = 199,
    SE_MOVIE3_11      = 200,
    SE_MOVIE3_12      = 201,
    SE_MOVIE3_13      = 202,
    SE_MOVIE3_14      = 203,
    SE_MOVIE4_01      = 204,
    SE_MOVIE4_02      = 205,
    SE_MOVIE4_03      = 206,
    SE_MOVIE4_04      = 207,
    SE_MOVIE4_06      = 208,
    SE_MOVIE4_07      = 209,
    SE_MOVIE4_08      = 210,
    SE_MOVIE4_09      = 211,  // "Stop! Not again?"
    SE_MOVIE4_10      = 212,  // "Here we go again! Hoo-hooo!"
    SE_MOVIE5_01      = 213,  // "Come back here, you big monkey!"
    SE_MOVIE5_05      = 214,  // "Oh?"
    SE_MOVIE5_07      = 215,  // "Here we go! Again? Again?"
    SE_MOVIE6_01      = 216,  // DK crying
    SE_MOVIE6_02      = 217,
    SE_MOVIE6_03      = 218,  // "Ohh you mum-mummy, you (Italian gibberish)!"
    SE_MOVIE6_04      = 219,
    SE_MOVIE6_05      = 220,  // "Hey, it's okay. Don't cry."
    SE_MOVIE6_06      = 221,  // "Here, you like?"
    SE_MOVIE6_07      = 222,  // "It's a mini Mario."
    SE_MOVIE6_08      = 223,
    SE_MOVIE6_09      = 224,
    SE_MOVIE6_10      = 225,
    SE_MOVIE2_9       = 226,
    SE_MOVIE2_10      = 227,
    SE_MOVIE_08       = 228,
    SE_TITLE          = 229,  // "Mario vs. Donkey Kong!"
    SE_YOU_WON1       = 230,
    SE_YOU_WON2       = 231,
    SE_YOU_WON3       = 232,
    SE_STAR           = 233,
    SE_DK_WALK        = 234,
    SE_SCUFF2         = 235,
    SE_WORLD_START    = 236,  // "Let's a-get going!"
    SE_MM_WAKEUP      = 237,
    SE_MM_FREE        = 238,
    SE_MM_MAMAMIAS    = 239,
    SE_SPIKE_VANISH   = 240,
    SE_SPIKE_APPEAR   = 241,
    SE_BOSS_DIE3      = 242,
    SE_BARREL_BOUNCE  = 243,
    SE_ROCK_BOUNCE    = 244,
    SE_MM_WALK        = 245,
    SE_DK_GRUNT       = 246,
    SE_RIBBON         = 247,
    SE_WON_TEXT       = 248,
    SE_DK_FALL        = 249,
};

enum SpriteID  // Index of sprites in gUncompressedGraphicsTable
{
    SPRITE_ID_DK_WORLD_INTRO = 241,
    SPRITE_ID_MARIO_STAND    = 727,
    SPRITE_ID_MARIO_RUN      = 737,
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
    u32 unk0_0:5;
    //u32 unk0_3:2;
    u32 unk0_5:1;
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

enum
{
    LOAD_BG_PALETTE = (1 << 0),
    LOAD_OBJ_PALETTE = (1 << 1),
};

struct SubSpriteTemplate
{
    /*0x00*/ u8 index;  // index into sprite sheet?
    /*0x01*/ u8 duration;  // animation frame duration
    /*0x02*/ s8 x_offset;  // x offset from sprite position
    /*0x03*/ s8 y_offset;  // y offset from sprite position
    u8 filler4[4];
    u32 unk8;  // some kind of flags?
    void *unkC;
    u8 filler10[0x24-0x10];
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
    u32 unk0;
    u32 unk4;
    u8 filler8[4];
    u16 unkC;
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
    u8 filler0[2];
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
    
    PALETTE_64 = 64,
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

struct Struct1C0
{
    u8 filler0[6];
    u16 unk6;
    u8 filler8[0x10-0x8];
    u8 unk10;  // unknown type
};

struct Struct03000008 {
	u32 unk0;
    u32 unk4;
	s32 unk8;
	u32 unkC;
	u32 unk10;
	u32 unk14;
};

//------------------------------------------------------------------------------
// Variables
//------------------------------------------------------------------------------

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
extern u8 gUnknown_03000065;
extern u8 gUnknown_03000066[];
extern struct UnknownStruct15 *gUnknown_030000A4;
extern u8 gPressStartFadeDir;
extern u8 gTitleScreenFrameCounter;
extern u16 gPressStartOpacity;
extern u8 gUnknown_030000AC;
extern s32 gUnknown_030000B0;
extern s8 gUnknown_030000B4;
extern s16 gUnknown_030000B6;

extern s16 gUnknown_0300015A;
extern u32 gUnknown_0300015C;
extern u8 gUnknown_03000160;
extern u8 gUnknown_03000161;
extern u16 gUnknown_03000162;
extern u16 gUnknown_03000164;
extern struct Struct168 *gUnknown_03000168;
extern struct Struct170 gUnknown_03000170;
extern struct MoviePlayerParamaters gMoviePlayerParams;
extern u32 gUnknown_030001A8;
extern u32 gUnknown_030001AC;
extern u32 gUnknown_030001B0;
extern u32 gUnknown_030001B4;
extern u32 gUnknown_030001B8;
extern u8 *gUnknown_030001BC;
extern struct Struct1C0 *gUnknown_030001C0;
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
extern int (*gUnknown_03000968)(u32 *);
extern void *gUnknown_03000970[];
extern struct Struct30009B0 gUnknown_030009B0;
extern u8 gUnknown_030009D0;
extern u8 gUnknown_030009D4;
extern u16 gUnknown_030009D8;
extern u32 gUnknown_030009DC;
extern u16 gUnknown_030009E0;
extern u8 gUnknown_030009E4[];  // unknown type
extern u8 gLevelTimerOnOffFlag;
extern u8 gUnknown_030009EC;
extern u8 gUnknown_030009FC;
extern u32 gUnknown_03000A00;
extern u16 gUnknown_03000A0C;
extern struct Struct3000A10 gUnknown_03000A10;
extern s32 gUnknown_03000B44;
extern u32 gPreviousPresentScore;
extern u32 gCurrentPresentScore;
extern u8 gUnknown_03000B50;
extern s32 gGeneralTimer;
extern s8 gCurrentWorld;
extern u8 gUnknown_03000B5C;
extern u8 gUnknown_03000B60;
extern s8 gUnknown_03000B64;
extern u8 gUnknown_03000B68;
extern u32 gCurrentEnemyScore;
extern u32 gUnknown_03000B70;
extern s8 gNextLevelID;
extern u8 gUnknown_03000B78;
extern s8 gLevelType;
extern struct UnknownStruct4 gNextLevelInLevelTable;
extern s8 gLevelEWorldFlag;
extern u32 gUnknown_03000BB8;
extern s8 gLivesCount;
extern u8 gUnknown_03000BD0;
extern u32 gUnknown_03000BE0;
extern u16 gUnknown_03000BE4;
extern u16 gUnknown_03000BE8;
extern u8 gUnknown_03000BEC;
extern u8 gUnknown_03000BF0;
extern u8 gUnknown_03000BF8;
extern s8 gUnknown_03000BFC;
extern s8 gUnknown_03000C00;
extern u16 gUnknown_03000C04;
extern u16 gUnknown_03000C0C;
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
extern u32 gUnknown_03000E00;
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
extern u16 gUnknown_03001708;
extern s16 gCurrentLevelHeight;
extern s16 gCameraVerticalOffset;
extern u32 gUnknown_03001714;
extern u32 gUnknown_03001718;
extern u16 gUnknown_0300171C;
extern s16 gCurrentLevelWidth;
extern s16 gSpriteHorizontalOffset;
extern struct backgroundLayerOffset gBGLayerOffsets;  // no idea what type this is
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
extern struct levelCollectableFlags gLevelCollectableFlags;
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
extern u8 gUnknown_03001BC8;
extern u8 gUnknown_03001BCC;
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
extern u32 *gUnknown_080788F8;
extern u8 *gSelectedSaveFileNumPtr;
extern u16 gUnknown_080788E0[];
extern struct UnknownStruct12 *gScreenModeRelatedPtr;
extern u32 *gEWorldLevelCountPtr;
extern const struct UnknownStruct17 gUnknown_0807954C[];
extern const u8 gTitleMarioEyesAnimationData[];
extern const u8 gTitleDKEyesAnimationData[];
extern void *gUnknown_0807AA1C[];
extern struct UnkStruct1_sub_child_data68 gUnknown_0807BA58;
extern u8 gUnknown_0807BA68[];
extern void *gUnknown_0807BB30[];
extern s16 gUnknown_0807C83A[];
extern const u32 gUnknown_0807C850[];
extern u32 gPaletteIndices_0807DD34[];
extern u32 gPaletteIndices_0807DD4C[];
extern u32 gPaletteIndices_0807DD64[];
extern u32 gPaletteIndices_0807DD7C[];
extern u16 *const gUnknown_0807DD94;
extern struct GraphicsConfig gNintendoSoftwareTechnologyLogo;
extern struct GraphicsConfig gTitleScreenLeftData;
extern struct GraphicsConfig gTitleScreenRightData;
extern struct GraphicsConfig gTitleMarioDKEyes;  // non-const (likely in .data instead of .rodata)
extern struct Movie gMovie4; // Movie player uses the below
extern struct Movie gMovie0;
extern struct Movie gMovie1;
extern struct Movie gMovie2;
extern struct Movie gMovie3;
extern struct Movie gMovie5;
extern struct Movie gMovie6;
extern struct Movie gMovie7;
extern struct Movie gMovie8;
extern struct Movie gMovie9;

extern const s16 gUnknown_0807C118[][2];
extern unkst24 gUnknown_0812E128[1];

extern u8 gUnknown_082E8908[];
extern u8 gUnknown_082E8900[];

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

extern struct OamData gUnknown_082E4C44;
extern u8 gUnknown_082E4C4C[];
extern struct SubSpriteTemplate gUnknown_085FB360;
extern struct OamData gfxFileLettersOAM;
extern u8 gfxFileLetters4bpp[];
extern struct SubSpriteTemplate gUnknown_085FB554[];
extern struct OamData gUnknown_085FB7DC;
extern u8 gUnknown_085FB7E4[];
extern struct SubSpriteTemplate gUnknown_085FEFE4[];
extern struct OamData gUnknown_085FF26C;
extern u8 gUnknown_085FF274[];
extern struct SubSpriteTemplate gUnknown_08600E74[];
extern struct OamData gfxFileFrameNewGameBottomOAM;
extern u8 gfxFileFrameNewGameBottom4bpp[];
extern struct SubSpriteTemplate gUnknown_08602D04[];
extern struct OamData gfxFileFrameNewGameTopOAM;
extern u8 gfxFileFrameNewGameTop4bpp[];
extern struct OamData gUnknown_08606A1C;
extern u8 gUnknown_08606A24[];
extern struct SubSpriteTemplate gUnknown_08606794[];
extern struct SubSpriteTemplate gUnknown_0860A224[];
extern struct OamData gfxFileFrameNormalBottomOAM;
extern u8 gfxFileFrameNormalBottom4bpp[];
extern struct SubSpriteTemplate gUnknown_0860C0B4[];
extern struct OamData gfxFileFrameNormalTopOAM;
extern u8 gfxFileFrameNormalTop4bpp[];
extern struct SubSpriteTemplate gUnknown_0860FB44[];
extern struct OamData gUnknown_0860FDCC;
extern u8 gUnknown_0860FDD4[];
extern struct SubSpriteTemplate gUnknown_086119D4;
extern struct OamData gUnknown_08611A40;
extern u8 gUnknown_08611A48[];
extern struct SubSpriteTemplate gUnknown_08612648;
extern struct OamData gfxFileInfoBoxOAM;
extern u8 gfxFileInfoBox4bpp[];
extern struct SubSpriteTemplate gUnknown_08613EBC;
extern struct OamData gfxEReaderLogoOAM;
extern u8 gfxEReaderLogo4bpp[];
extern struct SubSpriteTemplate gUnknown_08614738;
extern struct OamData gfxExpertOAM;
extern u8 gfxExpert4bpp[];
extern struct SubSpriteTemplate gUnknown_08614B64;
extern struct OamData gfxOptionMenuEraseDataButtonsOAM;
extern u8 gfxOptionMenuEraseDataButtons4bpp[];
extern struct SubSpriteTemplate gUnknown_08615BB4[];
extern struct OamData gfxFileBackgroundOAM;
extern u8 gfxFileBackground4bpp[];
extern struct SubSpriteTemplate gUnknown_08617030[];
extern struct OamData gfxGoldCrownOAM;
extern u8 gfxGoldCrown4bpp[];
extern struct OamData gfxMainMenuDigitsLargeOAM;
extern u8 gfxMainMenuDigitsLarge4bpp[];
extern struct SubSpriteTemplate gUnknown_08617570;
extern struct OamData gfxPlusMainOAM;
extern u8 gfxPlusMain4bpp[];
extern struct OamData gfxUnusedDigitsOAM;
extern u8 gfxUnusedDigits4bpp[];
extern struct SubSpriteTemplate gUnknown_08617970;
extern struct OamData gfxMainMenuDigitsMediumOAM;
extern u8 gfxMainMenuDigitsMedium4bpp[];
extern struct SubSpriteTemplate sMMDKSpriteTemplate;
extern u8 gfxMMDK4bpp[];
extern struct OamData gfxMMDKOAM;
extern struct OamData gfxMainMenuDigitsSmallOAM;
extern u8 gfxMainMenuDigitsSmall4bpp[];
extern struct SubSpriteTemplate gUnknown_08618064[];
extern struct OamData gfxBronzeCrownOAM;
extern u8 gfxBronzeCrown4bpp[];
extern struct Struct0807C0E0 gUnknown_0807C0D8;
extern u8 gUnknown_080A8668;
extern struct SpriteTemplate gUncompressedGraphicsTable[];

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

extern struct { u8 filler0; u8 unk1; } gUnknown_08251EC0;
extern struct { u8 filler0; u8 unk1; } gUnknown_0854301C;
extern const struct iwRAMBase *gUnknown_0807CA98;

extern struct UnknownStruct16 gEWorldMenuData2;
extern s32 gUnknown_03000288;
extern u32 gUnknown_0300028C;
extern u8 gUnknown_03000290;

extern struct struct_0807820C *gEWRAMBasePtr;

extern void *gSomeVRAMAddr_03000E90;
extern void *gSomeVRAMAddr_03000E80;

extern u32 gUnknown_03000294;
extern u32 gUnknown_03000298;
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

void sub_08001BA4(void *, void *);
void level_edit_delete_object(struct Struct802C31C *);
void press_color_switch(int, int);
void sub_08004428();
void sub_08004634();
void sub_08006388(void);
void sub_080064D4();
void sub_08006548();
int sub_080066FC(u32 *, int, int, int);
struct UnknownStruct15 *sub_08006968();
void sub_08006D44(void);
void sub_080063E4(struct Struct802C31C *, int, void *);

void sub_08007170(void);
void level_play_main(void);
void level_demo_main(void);
void sub_08008238(void);
void level_play_loop(void);
void after_tutorial_init_callback(void);
void level_play_init_callback(void);
void level_demo_init_callback(void);
void level_play_end(void);
void unknown_0A_init_callback(void);
void level_editor_init_callback(void);
void level_edit_main(void);
void level_editor_end(void);
void sub_0800EE70(void);
void title_demo_setup(u32 titleDemoID);
void sub_08014A58();
void sub_08014B78(int, s8 *, u8 *, s8 *);
void sub_08014D08(void);
void sub_0801500C();
void sub_08015044(void);
void level_select_init_callback(void);
void level_select_main(void);
void level_select_loop(void);
void level_select_end(void);
void sub_0801B2CC();
void reset_some_array_0801B3C0(void);
void sub_0801B3DC(struct GraphicsConfig *, int, int);
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
void bonus_swapboxes_init_callback(void);
void bonus_swapboxes_main(void);
void bonus_swapboxes_loop(void);
void bonus_swapboxes_end(void);
void options_init_callback(void);
void options_main(void);
void options_loop(void);
void options_end(void);
void sub_08029080(void);
void sub_0802919C();
void level_results_init_callback(void);
void level_results_main(void);
void level_results_loop(void);
void level_results_end(void);
u8 update_fade_from_black(void);
void save_blend_regs();
void fade_transition_init_callback(void);
void fade_transition_end(void);
void fade_transition_main(void);
int sub_08029FD0(void);
int sub_0802A0A8(void);
void sub_0802A164(void);
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
void sub_0802F060(void);
int sub_0802F090(void *);
void sub_0802F168(int, u8 *);
void sub_0802F1AC(int, int);
int sub_0802F1C0(int);
void sub_0802F1D4(void);
void e_world_debug_main(void);
void e_world_debug_loop(void);
void e_world_debug_init_callback(void);
void e_world_debug_end(void);
int sub_0802F5C0();
void sub_0802F890(u32 *, u16 *, u16 *, u16 *);
void sub_08030C84(u16 *, u16 *, u16 *);
void sub_0803109C(void);
void sub_080317F8(void);
int sub_08031944(void *);
void sub_08031978(void *);
int sub_080319BC(struct GraphicsConfig *, struct UnknownStruct5 *, int);
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
void sub_08034CCC();
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
void sub_080382A8(void);
void sub_080386DC(void);
extern u8 sub_08038DF4(u8, u8, int, u16, u16, int);
s8 sub_08040EE8();
struct UnknownStruct6 *sub_08040F30(s8);
void sub_08040FC0(int, int);
extern void sub_08041F2C(s8);
void sub_0804138C(int, int, u32, u32);
u16 sub_0806C2C4(void);
void sub_0806D1AC(u16, u16);
void sub_080714A8(void);
void sub_0807166C();
void sub_08071800(void);
void sub_0807194C(void);
int play_sound_effect_08071990(int, u8, u8, u8, u8, u8, u8);
void sub_08071C24(void);
void sub_08071CD4(void);
void sub_08071D9C(void);
void sub_08071E14(u8);
void sub_08071FA0();
int sub_08071FE4(void);
int sub_08072038(void);
void sub_0807204C();
void sub_080720AC(void);
int sub_08072144(void);
int sub_080721A8();
void sub_0807220C();
void sub_080082C8();

// Sort these later - Movie player uses these.

u8 sub_0805727C();
u8 sub_080573FC();
u8 sub_08057420(u32);
u8 sub_08038B18();
void sub_0802D608(void);

u8 sub_0805739C(struct Movie *);
void sub_0802BE50(void);
u8 sub_0801B310();
u32 update_quick_fade_from_black();
u8 sub_080148A4(u32, u8);
s32 sub_08014BB4();
s32 sub_080148F0(u32);


void sub_080410B4(u8, u8,u8);

u32 sub_08033658();
void sub_08071E14(u8);

u8 sub_0800EF30();
u8 sub_0800EF8C();

void level_play_loop();
void sub_0800F060(void);
void sub_08040F54();
void sub_080720E4();

void sub_0800CC6C();
void sub_08041F70();
u8 sub_0800C5A4();
u8 sub_08072118();
void sub_0802BEA4(u8);

void sub_08008764();

u32 sub_08071F64(u32);
u32 sub_08071F78(u32);
u32 sub_08071F8C(u32);
void sub_080084A4();
void sub_08008330();
void sub_08008600();
void sub_080086A4();


void update_level_08039C44();
void sub_08038414(u16, u16);
void sub_08007544();
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
void sub_0800F6EC();
void sub_0802EDAC();
void sub_08040D50();
void load_arm_code_0802B998();
void sub_080069BC();
int sub_08032C44(struct UnknownStruct4 *arg0);
void sub_080041B8();
void sub_080072A4();
void level_demo_reset_init_callback();
void level_editor_init_callback();
void sub_08071BE0();
void sub_08071C00();
void sub_08033F80(s16, s16);
void sub_08071C6C();
void sub_08008CE4();
void sub_080069E8();
void sub_080040D8();
void sub_0800EF0C();
void sub_08004FBC();
void sub_08005FA0();
u32 sub_08006A34();
void e_world_init_callback();
u32 sub_0802A458();
void sub_0802F06C();
void sub_080062D0();
void sub_08006A00();
void sub_0801B4BC();
void sub_08031AD4();
void sub_0802BA38();
void sub_0801B4BC();
void sub_0803D248();
void sub_08031D44();
void sub_0806E594(u32, u32, u32);
void sub_0800F0A8(u32);
u32 update_fade_to_black_08029F7C(void);
void sub_08007154(void);

#endif  // GUARD_GLOBAL_H
