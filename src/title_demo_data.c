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
	level_1A = 0,
	level_1B = 1,

	level_2A = 2,
	level_2B = 3,

	level_3A = 4,
	level_3B = 5,

	level_4A = 6,
	level_4B = 7,

	level_5A = 8,
	level_5B = 9,

	level_6A = 10,
	level_6B = 11,

	level_MM = 12,
	level_DK = 13
};


u8 gTitleDemoLevelIDs[] =
{
	level_1B, level_6B, level_3A, level_4B, level_2A, level_3B, level_1A, level_1A
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
