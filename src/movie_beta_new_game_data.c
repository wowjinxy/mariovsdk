#include "gba/gba.h"
#include "global.h"

struct MovieSceneBank
{
struct GraphicsConfig *bg0GFXPtr;
u8 unk4;
u8 unk5;
u8 unk6;
u8 unk7;
struct GraphicsConfig *bg1GFXPtr;
u8 unkC;
u8 unkD;
u8 unkE;
u8 unkF;
struct GraphicsConfig *bg2GFXPtr;
u8 unk14;
u8 unk15;
u8 unk16;
u8 unk17;
struct GraphicsConfig *bg3GFXPtr;
u8 unk1C;
u8 unk1D;
u8 unk1E;
u8 unk1F;

u8 unk20;
u8 unk21;
u8 unk22;
u8 unk23;
u8 unk24;
u8 unk25;
u8 unk26;
u8 unk27;
u8 unk28;
u8 unk29;
u8 unk2A;
u8 unk2B;
u8 unk2C;
u8 unk2D;
u8 unk2E;
u8 unk2F;
u8 unk30;
u8 unk31;
u8 unk32;
u8 unk33;

u16 bg0PanCount;
struct moviePanning *bg0PanDataPtr;
u16 unk3C;
struct moviePanning *unk40;

u16 bg1PanCount;
struct moviePanning *bg1PanDataPtr;
u16 unk4A;
struct moviePanning *unk4D;

u16 bg2PanCount;
struct moviePanning *bg2PanDataPtr;
u16 unk58;
struct moviePanning *unk5C;

u16 bg3PanCount;
struct moviePanning *bg3PanDataPtr;
u16 unk68;
struct moviePanning *unk6C;

u16 bg0TimerCount;
struct movieTimer *bg0TimerPtr;

u16 bg1TimerCount;
struct movieTimer *bg1TimerPtr;

u16 bg2TimerCount;
struct movieTimer *bg2TimerPtr;

u16 bg3TimerCount;
struct movieTimer *bg3TimerPtr;

u16 unk90;
u32 endFrame;
};

struct movieTimer 
{
u32 startFrame;	
u32 endFrame;	
};

extern struct GraphicsConfig gUnusedToadDKCutscene;
extern struct GraphicsConfig gUnusedToadMarioCutscene;

extern struct Movie_child gUnknown_08B2E8D8;
extern struct MovieSoundEffect gUnknown_08B2DEBC;
extern struct MovieTextBank gUnknown_08B2DF2C;
extern struct MovieSceneBank gUnknown_08B2E7A0[];

extern struct moviePanning gUnknown_08B2E69C;
extern struct moviePanning gUnknown_08B2E6C0;
extern struct moviePanning gUnknown_08B2E6FC;
extern struct movieTimer gUnknown_08B2E768[];
extern struct movieTimer gUnknown_08B2E770[];
extern struct movieTimer gUnknown_08B2E778[];

extern struct moviePanning gUnknown_08B2E714;
extern struct moviePanning gUnknown_08B2E75C;
extern struct movieTimer gUnknown_08B2E780[];
extern struct movieTimer gUnknown_08B2E790[];



struct movieTimer gUnknown_08B2E768[] =
{
	{462, 576},
};

struct movieTimer gUnknown_08B2E770[] =
{
	{200, 462},
};

struct movieTimer gUnknown_08B2E778[] =
{
	{0, 200},
};

struct movieTimer gUnknown_08B2E780[] =
{
	{764, 980},
	{1250, 1467},
};

struct movieTimer gUnknown_08B2E790[] =
{
	{576, 764},
	{980, 1250},
};

struct MovieSceneBank gUnknown_08B2E7A0[] =
{
	// Scene bank 0
	{
	0x00000000, //  BG layer 0 GFX
	0x00,
	0x00,
	0x00,
	0x00,
	
	&gUnusedToadDKCutscene, //  BG layer 1 GFX
	0x00,
	0x00,
	0x01,
	0x01,
	
	&gUnusedToadDKCutscene, //  BG layer 2 GFX
	0x00,
	0x00,
	0x01,
	0x01,
	
	&gUnusedToadDKCutscene, //  BG layer 3 GFX
	0x00,
	0x00,
	0x01,
	0x01,
	
	0x00,
	0x01,
	0x02,
	0x03,
	0x03,
	0x02,
	0x01,
	0x00,
	0x00,
	0x00,
	0x00,
	0x00,
	0x04,
	0x00,
	0x01,
	0x02,
	0x03,
	0x01,
	0x00,
	0x01,
	
	0, //  Pan total
	0x00000000, //  BG 0 panning data pointer
	0, //  Unknown total
	0x00000000,
	
	3, //  Pan total
	&gUnknown_08B2E69C, //  BG 1 panning data pointer
	0, //  Unknown total
	0x00000000, //  Unknown pointer
	
	5, //  Pan total
	&gUnknown_08B2E6C0, //  BG 2 panning data pointer
	0, //  Unknown total
	0x00000000, //  Unknown pointer
	
	2, //  Pan total
	&gUnknown_08B2E6FC, //  BG 3 panning data pointer
	0, //  Unknown total
	0x00000000 ,//  Unknown pointer
	
	0, //  BG 0 timer count?
	0x00000000, //  Some timer pointer

	1, //  BG 1 timer count?
	*&gUnknown_08B2E768, //  Some timer pointer
	
	1, //  BG 2 timer count?
	*&gUnknown_08B2E770, //  Some timer pointer
	
	1, //  BG 3 timer count?
	*&gUnknown_08B2E778, //  Some timer pointer
	
	0x0001, //  Unknown count
	0x00000240
	}, //  end frame?
	
	// Scene bank 1

	{0x00000000, //  BG layer 0 GFX
	0x00,
	0x00,
	0x00,
	0x00,
	
	0x00000000, //  BG layer 1 GFX
	0x00,
	0x00,
	0x00,
	0x00,
	
	&gUnusedToadMarioCutscene, //  BG layer 2 GFX
	0x00,
	0x00,
	0x01,
	0x01,
	
	&gUnusedToadMarioCutscene, //  BG layer 3 GFX
	0x00,
	0x00,
	0x01,
	0x01,

	0x00,
	0x01,
	0x02,
	0x03,
	0x03,
	0x02,
	0x01,
	0x00,
	0x00,
	0x00,
	0x00,
	0x00,
	0x04,
	0x00,
	0x02,
	0x02,
	0x03,
	0x01,
	0x00,
	0x01,

	0, //  Pan total
	0x00000000, //  BG 0 panning data pointer
	0, //  Unknown total
	0x00000000, //  Unknown pointer

	0, //  Pan total
	0x00000000, //  BG 1 panning data pointer
	0, //  Unknown total
	0x00000000, //  Unknown pointer
	
	6, // Pan total
	&gUnknown_08B2E714, //  BG 2 panning data pointer
	0, //  Unknown total
	0x00000000, //  Unknown pointer

	2, //  Pan total
	&gUnknown_08B2E75C, //  BG 3 panning data pointer
	0, //  Unknown total
	0x00000000, //  Unknown pointer

	0, //  BG 0 timer count?
	0x00000000, //  Some timer pointer

	0, //  BG 1 timer count?
	0x00000000, //  Some timer pointer

	2, //  BG 2 timer count?
	*&gUnknown_08B2E780, //  Some timer pointer

	2, //  BG 3 timer count?
	*&gUnknown_08B2E790, //  Some timer pointer

	1, //  Unknown count
	0x000005BB,
	} //  end frame?	
};

struct Movie_child gUnknown_08B2E8D8 =
{
	0x5BB,
	0,
	0x00000000,
	0x0,
	0x00000000,
	7,
	&gUnknown_08B2DEBC,
	0x0,
	0x00000000,
	7,
	&gUnknown_08B2DF2C,
	2,
	*&gUnknown_08B2E7A0,
};

struct Movie gMovieBetaOpeningCutscene =
{
    0x0001,
	&gUnknown_08B2E8D8,
};