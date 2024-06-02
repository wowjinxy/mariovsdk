#ifndef GUARD_GLOBAL_H
#define GUARD_GLOBAL_H

//------------------------------------------------------------------------------
// Macros
//------------------------------------------------------------------------------

// Both of these match so far
#define ABS(n) ((n) >= 0 ? (n) : -(n))
//#define ABS(n) ((n) < 0 ? -(n) : (n))


//------------------------------------------------------------------------------
// Types
//------------------------------------------------------------------------------

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

struct Struct3000A10 {
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


struct UnknownStruct3
{
    void *unk0;
    void *unk4;
    void *unk8;
    u32 unkC;
    void *unk10[4];
};

struct CompressionHeader
{
    u32 unk0_0:4;
    u32 compressionType:4;
    u32 size:24;
};

struct UnknownStruct2
{
    struct CompressionHeader header;
    u8 data[0];
};

struct UnknownStruct6
{
    u8 filler0[0x20];
    s32 unk20;
    s32 unk24;
};

struct UnknownStruct5
{
    u32 *backgroundData;
    u32 *levelData;
    u16 levelTimer;
    u8 songID;
    u8 levelType;
    u32 levelFlags;
    u32 unk10;
};

// These may be the same. Don't know yet.
struct UnknownStruct4
{
    struct UnknownStruct5 *unk0;
    u32 unk4;
    u32 unk8;
    u32 (*unkC)();    
    s16 unk10;
    s16 unk12;
    u32 unk14;
    u32 unk18;
    u8 filler1C;
    u8 unk1D[3];
    u32 levelType;
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

struct UnknownStruct14
{
    u8 filler0[0x30];
    u16 bldCnt;
    u16 bldAlpha;
    u16 bldY;
};

struct UnknownStruct15
{
    u8 unk0[0x108];
    u32 unk108[0];
};

struct UnknownStruct16
{
    u8 filler0[0x48];
    u32 unk48;
};

struct UnknownStruct17
{
    u8 unk0;
    u8 unk1;
};

struct MoviePlayerParamaters
{
    const u32 *movieData;
    u8 unk4;
    u8 songID;
	u8 nextMode;
	u8 movieID;
};

struct backgroundLayerOffset
{
	u16 bg0_x;
	u16 bg0_y;
	u16 bg1_x;
	u16 bg1_y;
	u16 bg2_x;
	u16 bg2_y;
	u16 bg3_x;
	u16 bg3_y;
};
struct struct_03000E70_sub {
    char pad0[8];
    s32 unk8;
    s32 unkC;
    char pad10[0x10];
    s16 unk20;
    s16 unk22;
    s16 unk24;
};

struct struct_03000E70 {
    struct struct_03000E70_sub *unk0;
    s32 unk4; // probably struct struct_03000E70_sub * too
    struct struct_03000E70_sub *unk8;
    struct struct_03000E70_sub *unkC;
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
    s32 unk40;
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
    struct UnknownStruct5* unk4;
    s32 unk8;
};

struct worldTableStruct {
    s32 unk0;
    struct worldTableStruct_unk_size_c *unk4;
};

struct iwRAMBase {
u32 base[0];
};

struct struct_0807820C {
    u8 bigpad[0x800c];
    u16 unk800C[0x2000];
    u32 unkC00C;
};

//------------------------------------------------------------------------------
// Variables
//------------------------------------------------------------------------------

extern u32 gUnknown_03000004;
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
extern struct UnknownStruct15 *gUnknown_030000A4;
extern u8 gPressStartFadeDir;
extern u8 gTitleScreenFrameCounter;
extern u16 gPressStartOpacity;
extern u8 gUnknown_030000AC;
extern s32 gUnknown_030000B0;
extern s8 gUnknown_030000B4;
extern s16 gUnknown_030000B6;
extern struct MoviePlayerParamaters gMoviePlayerParams;
extern u8 gUnknown_030002A0[];
extern u16 gUnknown_030002AA;
extern struct Struct30002B8 gUnknown_030002B0;
extern struct Struct30002B8 gUnknown_030002B8;
extern struct Struct30002B8 gUnknown_030002C0;
extern struct Struct30002B8 gUnknown_030002C8;


//new for sub_0804A794
extern u8 gUnknown_03000368;
extern u8 gUnknown_03000374;
extern u8 gUnknown_03000378;
extern u8 gUnknown_03000380;

extern u8 gUnknown_03000394;
extern u8 gUnknown_03000395;
extern u8 gUnknown_03000396;

extern u8 gUnknown_030008C4;
extern u8 gUnknown_030008D4;
extern u8 gUnknown_030008D8;
extern u8 gUnknown_030008E8;

extern u8 gUnknown_03000924;
extern int (*gUnknown_03000964)(u32 *, int, int, int);
extern struct Struct30009B0 gUnknown_030009B0;
extern u32 gNextMainState;
extern u32 gPreviousMainState;
extern u32 gUnknown_030009CC;
extern u8 gUnknown_030009D0;
extern u8 gUnknown_030009D4;
extern u16 gUnknown_030009D8;
extern u32 gUnknown_030009DC;
extern u16 gUnknown_030009E0;
extern u8 gUnknown_030009E4[];  // unknown type
extern u8 gLevelTimerOnOffFlag;
extern u8 gUnknown_030009EC;
extern u32 gUnknown_03000A00;
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
extern u8 gUnknown_03000C28;
extern u16 gUnknown_03000D38;
extern s32 gUnknown_03000D60;
extern s32 gUnknown_03000D64;
extern u8 gUnknown_03000DCC;

extern u8 gUnknown_03000E60;

extern struct struct_03000E70 gUnknown_03000E70;
extern struct OamData gOamData[];
extern s16 gCameraHorizontalOffset;
extern s16 gBGHorizontalOffset;
extern void (*gUnknown_030012A8)(void);
extern u8 gUnknown_030012B0[];
extern void (*gUnknown_030012C0)(void);
extern struct Struct30012D0 gUnknown_030012D0;
extern u16 gUnknown_030012E0;
extern u16 gUnknown_030012E4;
extern u16 gUnknown_030012E8;
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
extern struct UnknownStruct3 gUnknown_03001750;
extern struct UnknownStruct9 gUnknown_03001770;
extern u16 gUnknown_0300192C;  // unknown type
extern u16 gUnknown_03001930; // unknown type
extern u32 gUnknown_03001938;
extern u16 gMarioIdleTimer;

extern u8 gUnknown_03001994;
extern u8 gUnknown_0300199C;

//extern u32 gUnknown_030019A0;

extern u8 gUnknown_030019B0;
extern u8 gUnknown_030019E8;

// extern u32 gUnknown_03001A1C;

extern struct levelCollectableFlags gLevelCollectableFlags;

extern u8 gUnknown_03001A38;
extern struct UnknownStruct8 gUnknown_03001B30;

//new -- unknown type


extern u8 gUnknown_03000387;

extern struct_030019AC* gUnknown_030019AC;
extern s32 gUnknown_03001B88;
extern s32 gUnknown_03001BA4;
extern struct_03001BD0* gUnknown_03001BD0;
extern u8 gUnknown_0300038B;
extern u8 gUnknown_0300038C;
extern u8 gUnknown_03001B8C;
extern u8 gUnknown_03001B84;
extern u8 gUnknown_03001B80;
extern u8 gUnknown_03001BA0;
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
extern u8 gUnknown_03000B78;

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

extern void *gUnknown_03007FFC;

extern const u8 gUnknown_08076D94[];

extern void (*const gMainStateInitCallbacks[])(void);
extern void (*const gMainStateMainCallbacks[])(void);
extern void (*const gMainStateLoopCallbacks[])(void);
extern void (*const gMainStateEndCallbacks[])(void);
extern const u32 gUnknown_0807846C[];
extern const struct UnknownStruct17 gUnknown_0807954C[];
extern const u8 gUnknown_0807956C[];
extern const u8 gUnknown_08079698[];
extern u16 *const gUnknown_0807DD94;
extern const struct UnknownStruct14 gNintendoSoftwareTechnologyLogo;
extern const struct UnknownStruct14 gTitleScreenLeftData;
extern const u8 gTitleScreenRightData[];
extern struct UnknownStruct16 gTitleMarioDKEyes;  // non-const (likely in .data instead of .rodata)
extern const u32 gUnknown_08B30768[]; // Movie player uses the below
extern const u8 gUnknown_08B32118[];
extern const u8 gUnknown_08B30F94[];
extern const u8 gUnknown_08B2FFDC[];
extern const u8 gUnknown_08B37168[];
extern const u8 gUnknown_08B2F5B8[];
extern const u8 gUnknown_08B2F070[];
extern const u8 gUnknown_08B35FC0[];
extern const u8 gUnknown_08B3732C[];
extern const u8 gUnknown_08B37424[];

extern const s16 gUnknown_0807C118[][2];
extern unkst24 gUnknown_0812E128[1]; 

extern u8 gUnknown_03000EA0[30];
extern u8 gUnknown_03000EA0[30];
extern u8 gUnknown_082E8908[];
extern u8 gUnknown_082E8900[];

struct worldTableStruct gUnknown_08B2CFC0[0];
struct worldTableStruct gUnknown_08B2CF84[0];
struct worldTableStruct gUnknown_08B2CEBC[0];
struct worldTableStruct gUnknown_0807C0D0[0];
struct worldTableStruct gUnknown_0807C098[0];
struct worldTableStruct gUnknown_08B2CDF4[0];
struct worldTableStruct gUnknown_0807C028[0];
struct worldTableStruct gUnknown_08B2CA5C[0];
struct worldTableStruct gUnknown_0807C0E0[0];
struct worldTableStruct gUnknown_08B2D378[0];
extern u8 gTitleDemoLevelIDs[0];

extern u8 gUnknown_0807C0D8;

extern u8 gUnknown_03001B98;
extern u16 gUnknown_03000A0C;
extern u8 gUnknown_030009FC;

extern const struct iwRAMBase *gUnknown_0807CA98;

extern struct UnknownStruct16 gEWorldMenuData2;
s32 gUnknown_03000288;
u32 gUnknown_0300028C;
u8 gUnknown_03000290;

extern struct struct_0807820C *gUnknown_0807820C;
u32 gMainState;

u16 *gUnknown_03000E90;
u16 *gUnknown_03000E80;

extern u32 gUnknown_03000294;
extern u32 gUnknown_03000298;
extern s32 gUnknown_03000288;
extern const u32 gUnknown_080769F4[];

//------------------------------------------------------------------------------
// Functions
//------------------------------------------------------------------------------

// crt0.s
void irq_enable_t(void);
void irq_disable_t(void);
void interrupt_main(void);

void sub_08004428();
void sub_08004634();
void sub_080064D4();
int sub_080066FC(u32 *, int, int, int);
struct UnknownStruct15 *sub_08006968();
void sub_08006D44(void);
void change_main_state(s32, s32);
void sub_08007170(void);
void sub_08008238(void);
void sub_0800EE70(void);
void title_demo_setup(u32 titleDemoID);
void sub_08011428();
void sub_08014A58();
void sub_0801500C();
void sub_0801B88C(void);
void sub_0802919C();
void sub_08029C20(void);
void sub_08029CDC();
int sub_08029FD0(void);
int sub_0802A0A8(void);
void sub_0802A164(void);
int sub_0802A464(void);
void sub_0802BA94(void);
void sub_0802BC98(void);
void sub_0802BE74(void);
void sub_0802BEEC();
void sub_0802BF1C(void);
void sub_0802BFA4(void);
void sub_0802C20C(void);
void sub_0802C058(void);
void sub_0802C104();
void sub_0802C144();
void sub_0802C7A4(void);
void sub_0802C938(void);
void sub_0802CF08(void);
void sub_0802D1D0(void);
void movie_player_setup_data(u8, u8, u8, u8);
void sub_0802F060(void);
void sub_0802F1D4(void);
int sub_0802F5C0();
void sub_0803109C(void);
void sub_080317F8(void);
void sub_08031BF0();
int sub_08031E04(void);
void sub_08032788();
void sub_08032F24();
void sub_08032F68(void);
void load_some_oam(void);
void sub_080331FC(void);
void sub_08033440(void);
void init_timer_regs(void);
void sub_08033C74(void);
void clear_ram(void);
void sub_08033D1C(void);
void sub_08033D30(void);
void sub_08033D58(void);
void sub_08033EA0();
void sub_08033EBC(void);
void sub_08033EC8(void);
void sub_08033EE0(void);
void sub_08033FAC(s16, s16);
void sub_08033FC8(void);
extern u8 sub_08034004(void);
void sub_08034138(void);
void sub_0803482C();
void *sub_08034854();
void sub_08034884(u32);
void sub_08034898();
void sub_080348C8(const struct UnknownStruct10 *, u32, u32, u32);
void sub_08034CCC();
void sub_08035108();
void sub_080351E0();
void sub_08037A04();
void sub_080386DC(void);
s8 sub_08040EE8();
struct UnknownStruct6 *sub_08040F30(s8);
u16 sub_0806C2C4(void);
void sub_0806D1AC(u16, u16);
void sub_080714A8(void);
void sub_0807166C();
void sub_08071800(void);
void sub_0807194C(void);
int sub_08071990(u8, u8, u8, u8, u8, u8, u8);
void sub_08071C24(void);
void sub_08071CD4(void);
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

u8 sub_0805739C(const u32 *);
u8 sub_0802BE50();
u8 sub_0801B310();
u8 sub_08029EB4();
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
u8 sub_0802BEA4(u8);
u32 sub_080322A8(u16 *param1, u16 *param2, u16 *param3);

void sub_08008764();

u32 sub_08071F64(u32);
u32 sub_08071F78(u32);
u32 sub_08071F8C(u32);	
void sub_080084A4();
void sub_08008330();
void sub_08008600();
void sub_080086A4();


void sub_08039C44();
void sub_08038414(u16, u16);
void sub_08007544();
void sub_080149F8(u32);
void sub_08010534(u32, u32, u8*);
void sub_08010BE0(u32, u32);

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
void sub_0802B998();
void sub_080069BC();
void sub_08032C44();
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
void sub_080107E8();
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

#endif  // GUARD_GLOBAL_H