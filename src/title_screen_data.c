#include "gba/gba.h"
#include "global.h"

enum
{
	WORLD_1_DEMO = 0,
	WORLD_2_DEMO = 1,
	WORLD_3_DEMO = 2,
	WORLD_4_DEMO = 3,
	WORLD_5_DEMO = 4,
	WORLD_6_DEMO = 5,
	TITLE_INTRO = 1,
};

// If first one is set to anything, it ignores the second one and plays the title demo
struct UnknownStruct17 gUnknown_0807954C[] =
{
    0,           WORLD_1_DEMO, // title demo world 1
    0,           WORLD_2_DEMO, // title demo world 2
    0,           WORLD_3_DEMO, // title demo world 3
    TITLE_INTRO, 0,            // title demo plays intro cutscene
    0,           WORLD_4_DEMO, // title demo world 4
    0,           WORLD_5_DEMO, // title demo world 5
    0,           WORLD_6_DEMO, // title demo world 6
    TITLE_INTRO, 0,            // title demo plays intro cutscene
};


// 1 number is one frame for these
u8 gTitleMarioEyesAnimData[] =
{
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, // 30 zeros
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
    1, 1, 1, 1, 
    2, 2, 2, 2, 2, 2,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, // 200 zeros
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
    1, 1, 1, 
    2, 2, 2, 2, 
    0, 0, 0, 0, 0, 0, 
    1, 1, 1, 
    2, 2, 2, 2, 
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, // 40 zeros
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
};

u8 gTitleDKEyesAnimData[] = 
{
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, // 80 zeros
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    1, 1, 1, 1,
    2, 2, 2, 2, 2, 2,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, // 70 zeros
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
    1, 1,
    2, 2, 2, 
    0, 0, 0, 0, 0, 
    1, 1, 
    2, 2, 2, 
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, // 37 zeros
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
    0, 0, 0, 0, 0, 0, 0,
}; 