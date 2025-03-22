#include "gba/gba.h"
#include "global.h"

extern u32 g11BTitleDemo;
extern u32 g26BTitleDemo;
extern u32 g33ATitleDemo;
extern u32 g44BTitleDemo;
extern u32 g52ATitleDemo;
extern u32 g63BTitleDemo;

enum 
{
	//Level IDs
	LEVEL_1A = 0,
	LEVEL_1B = 1,

	LEVEL_2A = 2,
	LEVEL_2B = 3,

	LEVEL_3A = 4,
	LEVEL_3B = 5,

	LEVEL_4A = 6,
	LEVEL_4B = 7,

	LEVEL_5A = 8,
	LEVEL_5B = 9,

	LEVEL_6A = 10,
	LEVEL_6B = 11,

	LEVEL_MM = 12,
	LEVEL_DK = 13
};


u8 gTitleDemoLevelIDs[] =
{
	LEVEL_1B, LEVEL_6B, LEVEL_3A, LEVEL_4B, LEVEL_2A, LEVEL_3B, LEVEL_1A, LEVEL_1A
};

// not a struct, but silences "initialization makes integer from pointer without a cast" warnings
struct tempStruct4 {
	u32 *demoInputs[0];
};

struct tempStruct4 gTitleDemoInputTable[] =
{
	{
		&g11BTitleDemo, &g26BTitleDemo, &g33ATitleDemo, &g44BTitleDemo, &g52ATitleDemo, &g63BTitleDemo
	}
};
