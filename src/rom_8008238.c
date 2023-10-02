#include "gba/gba.h"
#include "global.h"

void sub_08008238(void) {

    s32 hOff = gCameraHorizontalOffset >> 1; // gCameraHorizontalOffset / 2
    s32 vOff = gCameraVerticalOffset >> 1; // gCameraVerticalOffset / 2
    
    gBGLayerOffsets.bg1_x = hOff;
    gBGLayerOffsets.bg0_x = hOff;
    hOff += gBGHorizontalOffset;
    // >> 8 probably fixed point?
    gBGLayerOffsets.bg2_x = ((hOff * gUnknown_03000E70.unk8->unk22) >> 8) + gUnknown_03000E70.unk8->unk8;
    gBGLayerOffsets.bg3_x = ((hOff * gUnknown_03000E70.unkC->unk22) >> 8) + gUnknown_03000E70.unkC->unk8;

    gBGLayerOffsets.bg1_y = vOff;
    gBGLayerOffsets.bg0_y = vOff;
    vOff += gBGVerticalOffset;
    gBGLayerOffsets.bg2_y = ((vOff * gUnknown_03000E70.unk8->unk24) >> 8) + gUnknown_03000E70.unk8->unkC;
    gBGLayerOffsets.bg3_y = ((vOff * gUnknown_03000E70.unkC->unk24) >> 8) + gUnknown_03000E70.unkC->unkC;
}

void sub_080082C8(void) {
    gBGLayerOffsets.bg0_x = gUnknown_03001C04 >> 8;
    gBGLayerOffsets.bg1_x = gUnknown_03001BE4 >> 8;
    gBGLayerOffsets.bg2_x = gUnknown_03001BEC >> 8;
    gBGLayerOffsets.bg3_x = gUnknown_03001C0C >> 8;
    gBGLayerOffsets.bg0_y = gUnknown_03001C08 >> 8;
    gBGLayerOffsets.bg1_y = gUnknown_03001C1C >> 8;
    gBGLayerOffsets.bg2_y = gUnknown_03001C20 >> 8;
    gBGLayerOffsets.bg3_y = gUnknown_03001BF4 >> 8;
}

void sub_08008330(void) {

    s16 var1;
    s32 var2;
    s32 hOff = (gCameraHorizontalOffset >> 1); // gCameraHorizontalOffset / 2
    s32 vOff = (gCameraVerticalOffset >> 1); // gCameraVerticalOffset / 2

      if (gUnknown_03000D38 != 0x5a) {
        hOff += gUnknown_0807C118[gUnknown_03000D38][0];
        vOff += gUnknown_0807C118[gUnknown_03000D38][1];
        gUnknown_03000D38++;
        
        if (gUnknown_03000D38 == 0x5a) {
            gUnknown_030019A0 = gUnknown_030019A0 & 0xdfffffff;
        }
          if (hOff < 0) {
            hOff = 0;
        }
        if ((hOff + 0xf0) >= gCurrentLevelWidth) {
            hOff = gCurrentLevelWidth - 0xf0;
        }
        if (vOff < 0) {
            vOff = 0;
        }
        if (((vOff >> 1) + 0xa0) >= gCurrentLevelHeight) {
            vOff = gCurrentLevelHeight - 0xa0;
        }
    }
    

    if ((gUnknown_030009D0 & 0x18) != 0) {
        gBGLayerOffsets.bg0_x = gSpriteHorizontalOffset - (gUnknown_03000D60 >> 8);
        var2 = vOff - (gUnknown_03000D64 >> 8);
        if (var2 < -0xa0) {
            gBGLayerOffsets.bg0_y = -0xa0;
        }
        else {
            gBGLayerOffsets.bg0_y = var2;
        }
    } else {
        gBGLayerOffsets.bg0_x = hOff;
        gBGLayerOffsets.bg0_y = vOff;
    }
    gBGLayerOffsets.bg1_x = hOff;
    gBGLayerOffsets.bg1_y = vOff;

    hOff += gBGHorizontalOffset;

    gBGLayerOffsets.bg2_x = ((hOff * gUnknown_03000E70.unk8->unk22) >> 8) + gUnknown_03000E70.unk8->unk8;

    gBGLayerOffsets.bg3_x = ((hOff * gUnknown_03000E70.unkC->unk22) >> 8) + gUnknown_03000E70.unkC->unk8;

    var1 = vOff - (gUnknown_030009E0 - 0xa0);
    if (var1 < 1) { gBGLayerOffsets.bg2_y = 0; }
    
    else if (var1 > 0xb0) { 
        gBGLayerOffsets.bg2_y = 0xb0; 
    }  
    else {
        gBGLayerOffsets.bg2_y = (vOff + 0xa0) - gUnknown_030009E0;
    }
    
    vOff += gBGVerticalOffset;
    gBGLayerOffsets.bg3_y = ((vOff * gUnknown_03000E70.unkC->unk24) >> 8) + gUnknown_03000E70.unkC->unkC;
}

void sub_080084A4(void) {

    s16 var1;
    s32 hOff = (gCameraHorizontalOffset >> 1); // gCameraHorizontalOffset / 2
    s32 vOff = (gCameraVerticalOffset >> 1); // gCameraVerticalOffset / 2

      if (gUnknown_03000D38 != 0x5a) {
        hOff += gUnknown_0807C118[gUnknown_03000D38][0];
        vOff += gUnknown_0807C118[gUnknown_03000D38][1];
        gUnknown_03000D38++;
        
        if (gUnknown_03000D38 == 0x5a) {
            gUnknown_030019A0 = gUnknown_030019A0 & 0xdfffffff;
        }
          if (hOff < 0) {
            hOff = 0;
        }
        if ((hOff + 0xf0) >= gCurrentLevelWidth) {
            hOff = gCurrentLevelWidth - 0xf0;
        }
        if (vOff < 0) {
            vOff = 0;
        }
        if (((vOff >> 1) + 0xa0) >= gCurrentLevelHeight) {
            vOff = gCurrentLevelHeight - 0xa0;
        }
    }

    gBGLayerOffsets.bg1_x = hOff;
    gBGLayerOffsets.bg1_y = vOff;
    hOff += gBGHorizontalOffset;
    gBGLayerOffsets.bg0_x = ((hOff * gUnknown_03000E70.unk0->unk22) >> 8) + gUnknown_03000E70.unk0->unk8; 

    
    gBGLayerOffsets.bg2_x = (((hOff * gUnknown_03000E70.unk8->unk22) >> 8) + gUnknown_03000E70.unk8->unk8) - gUnknown_03001C48; 
    
    gBGLayerOffsets.bg3_x = ((hOff * gUnknown_03000E70.unkC->unk22) >> 8) + gUnknown_03000E70.unkC->unk8; 

    var1 = vOff - (gUnknown_030009E0 - 0xa0);
    if (var1 < 1) { gBGLayerOffsets.bg0_y = 0; }
    
    else if (var1 > 0xa0) { 
        gBGLayerOffsets.bg0_y = 0xa0; 
    }  
    else {
        gBGLayerOffsets.bg0_y = (vOff + 0xa0) - gUnknown_030009E0;
    }
    
    vOff += gBGVerticalOffset;
    
    gBGLayerOffsets.bg2_y = ((vOff * gUnknown_03000E70.unk8->unk24) >> 8) + 
        (gUnknown_03000E70.unk8->unkC - 0x38) + gUnknown_03001C40; 
    gBGLayerOffsets.bg3_y = ((vOff * gUnknown_03000E70.unkC->unk24) >> 8) + gUnknown_03000E70.unkC->unkC;
}

void sub_08008600(void) {
	
    s32 hOff = (gCameraHorizontalOffset >> 1); // gCameraHorizontalOffset / 2
    s32 vOff = (gCameraVerticalOffset >> 1); // gCameraVerticalOffset / 2

    gBGLayerOffsets.bg1_x = hOff;
    gBGLayerOffsets.bg0_x = hOff;
    hOff += gBGHorizontalOffset;
    gBGLayerOffsets.bg2_x = ((hOff * gUnknown_03000E70.unk8->unk22) >> 8) + gUnknown_03000E70.unk8->unk8 - gUnknown_03001C48;  // couple extra things here

    
    
    gBGLayerOffsets.bg3_x = ((hOff * gUnknown_03000E70.unkC->unk22) >> 8) + gUnknown_03000E70.unkC->unk8; 
    gBGLayerOffsets.bg1_y = vOff;
    gBGLayerOffsets.bg0_y = vOff;
    vOff += gBGVerticalOffset;
    
    gBGLayerOffsets.bg2_y = ((vOff * gUnknown_03000E70.unk8->unk24) >> 8) + 
        (gUnknown_03000E70.unk8->unkC - 0x38) + gUnknown_03001C40; 
    gBGLayerOffsets.bg3_y = ((vOff * gUnknown_03000E70.unkC->unk24) >> 8) + gUnknown_03000E70.unkC->unkC;
}

void sub_080086A4(void) {

    s32 hOff = (gCameraHorizontalOffset >> 1); // gCameraHorizontalOffset / 2
    s32 vOff = (gCameraVerticalOffset >> 1); // gCameraVerticalOffset / 2

    gBGLayerOffsets.bg1_x = hOff;
    gBGLayerOffsets.bg0_x = hOff;
    hOff += gBGHorizontalOffset;
    gBGLayerOffsets.bg2_x = (((hOff * gUnknown_03000E70.unk8->unk22) >> 8) + gUnknown_03000E70.unk8->unk8 
        + gUnknown_03001C80) - gUnknown_03001C48; 

    gBGLayerOffsets.bg3_x = ((hOff * gUnknown_03000E70.unkC->unk22) >> 8) + gUnknown_03000E70.unkC->unk8; 
    gBGLayerOffsets.bg1_y = vOff;
    gBGLayerOffsets.bg0_y = vOff;
    vOff += gBGVerticalOffset;
    
    gBGLayerOffsets.bg2_y = (((vOff * gUnknown_03000E70.unk8->unk24) >> 8) + gUnknown_03000E70.unk8->unkC
        + (gUnknown_03001C84 - 8)) + gUnknown_03001C40; 
    
    gBGLayerOffsets.bg3_y = ((vOff * gUnknown_03000E70.unkC->unk24) >> 8) + gUnknown_03000E70.unkC->unkC;
}	

void sub_08008764(void) {

    s32 hOff = (gCameraHorizontalOffset >> 1); // gCameraHorizontalOffset / 2
    
    s32 vOff = (gCameraVerticalOffset >> 1);
        
    vOff += gUnknown_03001D60; // gCameraVerticalOffset / 2
    
  if (vOff < 0) {
    vOff = 0;
  }
if ((vOff >> 1) + 0xA0 >= gCurrentLevelHeight) {
    vOff = gCurrentLevelHeight - 0xA0;
}

    gBGLayerOffsets.bg1_x = hOff;
    gBGLayerOffsets.bg0_x = hOff;
    
    hOff += gBGHorizontalOffset;
    gBGLayerOffsets.bg2_x = ((( hOff * gUnknown_03000E70.unk8->unk22) >> 8)+ gUnknown_03000E70.unk8->unk8); 
    
    gBGLayerOffsets.bg3_x = ((hOff * gUnknown_03000E70.unkC->unk22) >> 8) + gUnknown_03000E70.unkC->unk8;  
    gBGLayerOffsets.bg1_y = vOff;
    gBGLayerOffsets.bg0_y = vOff;
    vOff += gBGVerticalOffset;
    
    gBGLayerOffsets.bg2_y = (((vOff * gUnknown_03000E70.unk8->unk24) >> 8) + gUnknown_03000E70.unk8->unkC); 
    
    gBGLayerOffsets.bg3_y = ((vOff * gUnknown_03000E70.unkC->unk24) >> 8) + gUnknown_03000E70.unkC->unkC;
}

void sub_0800881C(void) {
    
    s32 hOff = gCameraHorizontalOffset >> 1; // gCameraHorizontalOffset / 2
    s32 vOff = gCameraVerticalOffset >> 1; // gCameraVerticalOffset / 2
    
    gBGLayerOffsets.bg1_x = hOff;
    gBGLayerOffsets.bg0_x = hOff;
    hOff += gBGHorizontalOffset;

    gBGLayerOffsets.bg2_x = ((hOff * gUnknown_03000E70.unk8->unk22) >> 8) + gUnknown_03000E70.unk8->unk8;
    gBGLayerOffsets.bg3_x = ((hOff * gUnknown_03000E70.unkC->unk22) >> 8) + gUnknown_03000E70.unkC->unk8;

    gBGLayerOffsets.bg1_y = vOff;
    gBGLayerOffsets.bg0_y = vOff+ gUnknown_03000C00;
    vOff += gBGVerticalOffset;
    gBGLayerOffsets.bg2_y = ((vOff * gUnknown_03000E70.unk8->unk24) >> 8) + gUnknown_03000BFC;
    gBGLayerOffsets.bg3_y = ((vOff * gUnknown_03000E70.unkC->unk24) >> 8) + gUnknown_03000E70.unkC->unkC;
}

void sub_080088C4(void) {
  gBGLayerOffsets.bg1_x = 0;
  gBGLayerOffsets.bg0_x = 0;
  gBGLayerOffsets.bg2_x = gUnknown_03000C04;
  gBGLayerOffsets.bg3_x = 0;
  gBGLayerOffsets.bg1_y = 0;
  gBGLayerOffsets.bg0_y = 0;
  gBGLayerOffsets.bg2_y = gUnknown_03000C0C;
  gBGLayerOffsets.bg3_y = 0;
}
