#include "gba/gba.h"
#include "global.h"
#include "level_data.h"
#include "main.h"


struct UnknownStruct5 gBossLevelTable[] = 
{
	{&gDKBossBG,     &gLevelDKBoss,     300, DK_BOSS01, 4, 0x00000000, 0},
	{&gDKBossPlusBG, &gLevelDKBossPlus, 300, BOSS2,     4, 0x00000024, 0},
};
	
struct worldTableStruct_unk_size_c gBossWorldTable[] =
{
	{2, gBossLevelTable, &gBossLevelData},
};

struct worldTableStruct gUnknown_08B2CFC0[] = 
{
	{1, gBossWorldTable},
};
