#include "gba/gba.h"
#include "global.h"
#include "main.h"

void normal_world_level_setup(u32 worldID, u32 levelID) {
    s16 var2;
    u8* var1;
    s32 i;
    
    gNextLevelInLevelTable.unk0 = &gUnknown_08B2CA5C[0].unk4[worldID].unk4[levelID];
    gNextLevelInLevelTable.unk4 = gUnknown_08B2CA5C[0].unk4[worldID].unk8;  
   
    gNextLevelInLevelTable.unk18 = sub_08071F64(gNextLevelInLevelTable.unk0->songID);
    gNextLevelInLevelTable.unk14 = sub_08071F78(gNextLevelInLevelTable.unk0->songID);

    var1 = (u8*)sub_08071F8C(gNextLevelInLevelTable.unk0->songID);
    
    for (i = 0; i < 3; i++) {
        gNextLevelInLevelTable.unk1D[i] = var1[i]; 
    }
    
    (u32*)gNextLevelInLevelTable.unkC = (u32*)sub_08008238;
    gNextLevelInLevelTable.unk10 = levelID;
    gNextLevelInLevelTable.unk12 = worldID;
    gNextLevelInLevelTable.levelType = 0;
    gNextLevelInLevelTable.unk8 = 0;

    if (levelID == 0xC) {
        gNextLevelInLevelTable.levelType = 1;
    } else if (levelID == 0xD) {
        gNextLevelInLevelTable.levelType = 2;
        if (worldID == 0x1) {
            (u32*)gNextLevelInLevelTable.unkC = sub_080086A4;
        } else {
            (u32*)gNextLevelInLevelTable.unkC = sub_08008600;
        }
    }
    else if ((levelID & 1) != 0) {
        gNextLevelInLevelTable.levelType = 8;
    }
    if (levelID == 0x0) {
        gNextLevelInLevelTable.levelType |= 0x20;
    } else if (levelID >= gUnknown_08B2CA5C[0].unk4[worldID].unk0 - 1) {
        gNextLevelInLevelTable.levelType |= 0x4;
    }
    
    if (worldID == 0x2) {
            (u32*)gNextLevelInLevelTable.unk8 = &gUnknown_0807C028[levelID];
        if (levelID == 0xD) {
            (u32*)gNextLevelInLevelTable.unkC = sub_080084A4;
        }
        else {
            (u32*)gNextLevelInLevelTable.unkC = sub_08008330;
        } 
    } 
}

void plus_world_level_setup(u32 worldID, u32 levelID) {
    s16 var2;
    u8* var1;
    s32 i;
    
    gNextLevelInLevelTable.unk0 = &gUnknown_08B2CDF4[0].unk4[worldID].unk4[levelID];
    gNextLevelInLevelTable.unk4 = gUnknown_08B2CDF4[0].unk4[worldID].unk8;  
   
    gNextLevelInLevelTable.unk18 = sub_08071F64(gNextLevelInLevelTable.unk0->songID);
    gNextLevelInLevelTable.unk14 = sub_08071F78(gNextLevelInLevelTable.unk0->songID);

    var1 = (u8*)sub_08071F8C(gNextLevelInLevelTable.unk0->songID);
    
    for (i = 0; i < 3; i++) {
        gNextLevelInLevelTable.unk1D[i] = var1[i]; 
    }
    
    (u32*)gNextLevelInLevelTable.unkC = (u32*)sub_08008238;
    gNextLevelInLevelTable.unk10 = levelID;
    gNextLevelInLevelTable.unk12 = worldID;
    gNextLevelInLevelTable.levelType = 0x40;
    gNextLevelInLevelTable.unk8 = 0;

    if (levelID == 6) {
        gNextLevelInLevelTable.levelType = 0x42;
        if (worldID == 0x1) {
            (u32*)gNextLevelInLevelTable.unkC = sub_080086A4;
        } else {
            (u32*)gNextLevelInLevelTable.unkC = sub_08008600;
        }
    }
    if (levelID == 0x0) {
        gNextLevelInLevelTable.levelType |= 0x20;
    } else if (levelID >= gUnknown_08B2CDF4[0].unk4[worldID].unk0 - 1) {
        gNextLevelInLevelTable.levelType |= 0x4;
    }
    
    if (worldID == 0x2) {
            (u32*)gNextLevelInLevelTable.unk8 = &gUnknown_0807C098[levelID];
        if (levelID == 0x6) {
            (u32*)gNextLevelInLevelTable.unkC = sub_080084A4;
        }
        else {
            (u32*)gNextLevelInLevelTable.unkC = sub_08008330;
        } 
    } 
}

void expert_1_6_level_setup(u32 worldID, u32 levelID) {
    s16 var2;
    u8* var1;
    s32 i;
    
    gNextLevelInLevelTable.unk0 = &gUnknown_08B2CEBC[0].unk4[worldID].unk4[levelID];
    gNextLevelInLevelTable.unk4 = gUnknown_08B2CEBC[0].unk4[worldID].unk8;  
   
    gNextLevelInLevelTable.unk18 = sub_08071F64(gNextLevelInLevelTable.unk0->songID);
    gNextLevelInLevelTable.unk14 = sub_08071F78(gNextLevelInLevelTable.unk0->songID);

    var1 = (u8*)sub_08071F8C(gNextLevelInLevelTable.unk0->songID);
    
    for (i = 0; i < 3; i++) {
        gNextLevelInLevelTable.unk1D[i] = var1[i]; 
    }
    
    (u32*)gNextLevelInLevelTable.unkC = sub_08008238;
    gNextLevelInLevelTable.unk10 = levelID;
    gNextLevelInLevelTable.unk12 = worldID;
    gNextLevelInLevelTable.levelType = 0x80;
    gNextLevelInLevelTable.unk8 = 0;

    if (levelID == 0) {
       gNextLevelInLevelTable.levelType = 0xA0;
    } else {
        if (levelID <  *(u32 *)(&gUnknown_08B2CEBC[0].unk4[worldID]) - 1U)  goto test;
            gNextLevelInLevelTable.levelType = 0x84;      
    }

    test:
    if (worldID == 0x2) {
        (u32*)gNextLevelInLevelTable.unk8 = &gUnknown_0807C0D0;
        if (levelID == 0xD) {
        (u32*)gNextLevelInLevelTable.unkC = sub_080084A4;
        } else {
        (u32*)gNextLevelInLevelTable.unkC = sub_08008330;
        }
    } 
}

void expert_7_12_level_setup(u32 worldID, u32 levelID) {
    s16 var2;
    u8* var1;
    s32 i;
    
    gNextLevelInLevelTable.unk0 = &gUnknown_08B2CF84[0].unk4[worldID].unk4[levelID];
    gNextLevelInLevelTable.unk4 = gUnknown_08B2CF84[0].unk4[worldID].unk8;  
   
    gNextLevelInLevelTable.unk18 = sub_08071F64(gNextLevelInLevelTable.unk0->songID);
    gNextLevelInLevelTable.unk14 = sub_08071F78(gNextLevelInLevelTable.unk0->songID);

    var1 = (u8*)sub_08071F8C(gNextLevelInLevelTable.unk0->songID);
    
    for (i = 0; i < 3; i++) {
        gNextLevelInLevelTable.unk1D[i] = var1[i]; 
    }
    
    (u32*)gNextLevelInLevelTable.unkC = (u32*)sub_08008238;
    gNextLevelInLevelTable.unk10 = levelID;
    gNextLevelInLevelTable.unk12 = worldID;
    gNextLevelInLevelTable.levelType = 0x400;
    gNextLevelInLevelTable.unk8 = 0;

    if (levelID == 0) {
        gNextLevelInLevelTable.levelType |= 0x20;
    } else if (levelID >= gUnknown_08B2CEBC[0].unk4[worldID].unk0 - 1)  {
        gNextLevelInLevelTable.levelType |= 0x4;
    }
    
    if (worldID == 0x2) {
            (u32*)gNextLevelInLevelTable.unk8 = &gUnknown_0807C0D8;
        if (levelID == 0xD) {
            (u32*)gNextLevelInLevelTable.unkC = sub_080084A4;
        }
        else {
            (u32*)gNextLevelInLevelTable.unkC = sub_08008330;
        } 
    } 
}

void dk_boss_level_setup(u32 worldID, u32 levelID) {
	
    u8* var1;
    s32 i;
    
    gNextLevelInLevelTable.unk0 = &gUnknown_08B2CFC0[0].unk4[worldID].unk4[levelID];
    gNextLevelInLevelTable.unk4 = gUnknown_08B2CFC0[0].unk4[worldID].unk8;  
   
    gNextLevelInLevelTable.unk18 = sub_08071F64(gNextLevelInLevelTable.unk0->songID);
    gNextLevelInLevelTable.unk14 = sub_08071F78(gNextLevelInLevelTable.unk0->songID);

    var1 = (u8*)sub_08071F8C(gNextLevelInLevelTable.unk0->songID);
    
    for (i = 0; i < 3; i++) {
        gNextLevelInLevelTable.unk1D[i] = var1[i]; 
    }
    
    (u32*)gNextLevelInLevelTable.unkC = (u32*)sub_08008238;
    gNextLevelInLevelTable.unk10 = levelID;
    gNextLevelInLevelTable.unk12 = worldID;
    gNextLevelInLevelTable.levelType = 0x100;
    gNextLevelInLevelTable.unk8 = 0;
}

void dk_boss_plus_level_setup(u32 worldID, u32 levelID) {
	
    u8* var1;
    s32 i;
    
    gNextLevelInLevelTable.unk0 = &gUnknown_08B2CFC0[0].unk4[worldID].unk4[levelID];
    gNextLevelInLevelTable.unk4 = gUnknown_08B2CFC0[0].unk4[worldID].unk8;  
   
    gNextLevelInLevelTable.unk18 = sub_08071F64(gNextLevelInLevelTable.unk0->songID);
    gNextLevelInLevelTable.unk14 = sub_08071F78(gNextLevelInLevelTable.unk0->songID);

    var1 = (u8*)sub_08071F8C(gNextLevelInLevelTable.unk0->songID);
    
    for (i = 0; i < 3; i++) {
        gNextLevelInLevelTable.unk1D[i] = var1[i]; 
    }
    
    (u32*)gNextLevelInLevelTable.unkC = sub_08008764;
    gNextLevelInLevelTable.unk10 = levelID;
    gNextLevelInLevelTable.unk12 = worldID;
    gNextLevelInLevelTable.levelType = 0x200;
    gNextLevelInLevelTable.unk8  = 0;
}

void tutorial_level_setup(u32 worldID, u32 levelID) {
    s16 var2;
    u8* var1;
    s32 i;
    
    gNextLevelInLevelTable.unk0 = &gUnknown_08B2D378[0].unk4[worldID].unk4[levelID];
    gNextLevelInLevelTable.unk4 = gUnknown_08B2D378[0].unk4[worldID].unk8;  
   
    gNextLevelInLevelTable.unk18 = sub_08071F64(gNextLevelInLevelTable.unk0->songID);
    gNextLevelInLevelTable.unk14 = sub_08071F78(gNextLevelInLevelTable.unk0->songID);

    var1 = (u8*)sub_08071F8C(gNextLevelInLevelTable.unk0->songID);
    
    for (i = 0; i < 3; i++) {
        gNextLevelInLevelTable.unk1D[i] = var1[i]; 
    }
    
    gNextLevelInLevelTable.unk12 = worldID;
    gNextLevelInLevelTable.unk10 = levelID;
    gNextLevelInLevelTable.levelType = 0;
    gNextLevelInLevelTable.unk8 = 0;
    (u32*)gNextLevelInLevelTable.unkC = (u32*)sub_08008238;

    if (levelID == 6) {
        gNextLevelInLevelTable.levelType = 0x1;
    } else if (levelID == 7) {
        gNextLevelInLevelTable.levelType = 0x2;
        if (worldID == 0x1) {
            (u32*)gNextLevelInLevelTable.unkC = sub_080086A4;
        } else {
            (u32*)gNextLevelInLevelTable.unkC = sub_08008600;
        }
    }    
    if (worldID == 0x2) {
        (u32*)gNextLevelInLevelTable.unk8 = &gUnknown_0807C0E0[levelID];
        (u32*)gNextLevelInLevelTable.unkC = sub_08008330;
    }
}

void sub_0800F6EC(u32 worldID, u32 levelID) {
   if (gLevelType == 0x0) {
        normal_world_level_setup(worldID, levelID);
   } 
   else if (gLevelType == 0x1) {
        plus_world_level_setup(worldID, levelID);    
   }
   else if (gLevelType == 0x2) {
        expert_1_6_level_setup(worldID, levelID);
   }
   else if (gLevelType == 0x3) {
        expert_7_12_level_setup(worldID, levelID);
   }
   else if (gLevelType == 0x4) {
        dk_boss_level_setup(worldID, levelID);
   } 
   else {
       dk_boss_plus_level_setup(worldID, levelID);
   }
}
void title_demo_setup(u32 titleDemoID) {
  
    normal_world_level_setup(titleDemoID, *(u8*)&gTitleDemoLevelIDs[titleDemoID]);
    gNextLevelID = gNextLevelInLevelTable.unk10 = *(u8*)&gTitleDemoLevelIDs[titleDemoID];

}