#include "gba/gba.h"
#include "global.h"

void movie_player_main(void) {
    u8 var1;
    u32 var2;

    if (gUnknown_03000DCC != 0) {
        sub_08029EB4();
        if (gUnknown_03000C28 == 0) {
            gUnknown_03000DCC = gUnknown_03000C28;
        }
    }
    else {
        sub_08029C20();    
    }
    
    sub_0805739C(gUnknown_030001A0.unk0);
    sub_0802BE50();
    sub_080331FC();
    gGeneralTimer++;

    if (gPreviousMainState == 4) {
        if ((gUnknown_030001A0.unk4 & 1) != 0) {
            if ((gUnknown_030012E8 & 10) != 0) {
                sub_080070E8(gUnknown_030001A0.unk6, 1);
            }
        }
        if ((gUnknown_030001A0.unk4 & 2) == 0) {
            sub_080070E8(gUnknown_030001A0.unk6, 1);
        }
    } else if (gUnknown_030001A0.unk7 == 3) {
        if (((gUnknown_030001A0.unk4 & 1) != 0) && (0xB4 < gGeneralTimer)) {
                if ((gUnknown_030012E8 & 10) != 0) {
                    // macro here?
                    u32 temp = 3;
                    u32 temp_1 = 0x2c; 
                    u32 temp_2 = 8;
                    u32 temp_3 = 4;
                    gUnknown_030001A0.unk4 = temp;
                    gUnknown_030001A0.unk5 = temp_1;
                    gUnknown_030001A0.unk6 = temp_2;
                    gUnknown_030001A0.unk7 = temp_3;
                    gUnknown_030001A0.unk0 = gUnknown_08B30768;
                    sub_080070E8(0x1E ,1);
            }
        }
            
        if ((gUnknown_030001A0.unk4 & 2) == 0) {
            // macro here?
            u32 temp = 3;
            u32 temp_1 = 0x2c; 
            u32 temp_2 = 8;
            u32 temp_3 = 4;
            gUnknown_030001A0.unk4 = temp;
            gUnknown_030001A0.unk5 = temp_1;
            gUnknown_030001A0.unk6 = temp_2;
            gUnknown_030001A0.unk7 = temp_3;
            gUnknown_030001A0.unk0 = gUnknown_08B30768;
            sub_080070E8(0x1E ,1);
        }
    }
    else if (gUnknown_030001A0.unk7 == 4)  {
        if ((((gUnknown_030001A0.unk4 & 1) != 0) && (0xb4 < gGeneralTimer)) && ((gUnknown_030012E8 & 10) != 0)
        ) {
            if (sub_080148F0(0x400000)) {
                sub_080070E8(8, 1);
            }
            else {
                sub_080148A4(0x400000, 1);
                sub_080070E8(0x20, 1);
            }
        }
        
        if ((gUnknown_030001A0.unk4 & 2) == 0) {
            if (sub_080148F0(0x400000)) {
                sub_080070E8(8, 1);
            }
            else {
                sub_080148A4(0x400000, 1);
                sub_080070E8(0x20, 1);
            }
        }
    }
    else if (gUnknown_030001A0.unk7 == 1) {
        if (((gUnknown_030001A0.unk4 & 1) != 0) && (0xb4 < gGeneralTimer) && ((gUnknown_030012E8 & 10) != 0)) {
            if (sub_08014BB4()) {
                sub_080070E8(8, 1);
            }
            else {
                gAfterTutorialWorld = 0;
                sub_080148A4(0x1000000, 1);
                sub_080070E8(0x20, 1);
            }
        }
        if ((gUnknown_030001A0.unk4 & 2) == 0) {
            if (sub_08014BB4()) {
                sub_080070E8(8, 1);
            }
            else {
                gAfterTutorialWorld = 0;
                sub_080148A4(0x1000000, 1);
                sub_080070E8(0x20, 1);
            }
        }
    }
    else if (gUnknown_030001A0.unk7 == 0) {
        if (((gUnknown_030001A0.unk4 & 1) != 0) && (0x5 < gGeneralTimer)) {
            if ((gUnknown_030012E8 & 10) != 0) {
                sub_080070E8(gUnknown_030001A0.unk6, 1);
            }
        }
        if ((gUnknown_030001A0.unk4 & 2) == 0) {
            sub_080070E8(gUnknown_030001A0.unk6, 1);
        }
    }
    else {
        if (((gUnknown_030001A0.unk4 & 1) != 0) && (0xb4 < gGeneralTimer)) {
            if ((gUnknown_030012E8 & 10) != 0) {
                sub_080070E8(gUnknown_030001A0.unk6, 1);
            }
        }
        
        if ((gUnknown_030001A0.unk4 & 2) == 0) {
            sub_080070E8(gUnknown_030001A0.unk6, 1);
        }
    }
    
    sub_080082C8();
    sub_0801B310();
}

void movie_player_setup_data(u8 param_1, u8 param_2, u8 param_3, u8 movieID) {

  gUnknown_030001A0.unk4 = param_1;
  gUnknown_030001A0.unk5 = param_2;
  gUnknown_030001A0.unk6 = param_3;
  gUnknown_030001A0.unk7 = movieID;

  switch(movieID) {
  case 0: //Movie ID 0 (Intro)
    (u32)gUnknown_030001A0.unk0 = (u32*)&gUnknown_08B32118;
    break;
  case 1: //Movie ID 1 (New Game)
    (u32)gUnknown_030001A0.unk0 = (u32*)&gUnknown_08B30F94;
    break;
  case 2: //Movie ID 2 (Main levels final boss intro)
    (u32)gUnknown_030001A0.unk0 = (u32*)&gUnknown_08B2FFDC;
    break;
  case 4: //Movie ID 4 (Plus worlds intro)
    (u32)gUnknown_030001A0.unk0 = (u32*)&gUnknown_08B30768;
    break;
  case 5: //Movie ID 5 (Plus levels final boss intro)
    (u32)gUnknown_030001A0.unk0 = (u32*)&gUnknown_08B2F5B8;
    break;
  case 6: //Movie ID 6 (Plus final boss ending cutscene)
    (u32)gUnknown_030001A0.unk0 = (u32*)&gUnknown_08B2F070;
    break;
  case 7: //Movie ID 7 (Credits 2)
    (u32)gUnknown_030001A0.unk0 = (u32*)&gUnknown_08B35FC0;
    break;
  case 3: //Movie ID 3 (Credits 1)
    (u32)gUnknown_030001A0.unk0 = (u32*)&gUnknown_08B37168;
    break;
  case 8: //Movie ID 8 (Unused)
    (u32)gUnknown_030001A0.unk0 = (u32*)&gUnknown_08B3732C;
    break;
  case 9: //Movie ID 9 (Unused)
    (u32)gUnknown_030001A0.unk0 = (u32*)&gUnknown_08B37424;
  }
    
}

void movie_player_init_callback(void) {

    sub_08034898(0);
    sub_0807204C(gUnknown_030001A0.unk5, 0x80, 1);
    sub_0805727C();
    sub_08057420((u32)gUnknown_030001A0.unk0);
    gUnknown_030009EC = 0;
    gUnknown_0300192C = 0;
    gUnknown_03001930 = 0;
    gGeneralTimer = 0;
    gUnknown_03000DCC = 0;
    gUnknown_03000A00 = (u32)&sub_0802D608;
    sub_08038B18();
    REG_DISPCNT &= ~DISPCNT_FORCED_BLANK;
}

void movie_player_loop(void) {
	
	u16 temp, temp_1, temp_2, temp_3;

    temp = 0;
    temp_1 = gUnknown_03001930;
    temp_2 = gUnknown_0300192C;
    temp_3 = 0;

    DmaFill32(3, 0xa0, gOamData, 0x400);
    sub_080573FC(&temp, &temp_1, &temp_2, &temp_3, gUnknown_030001A0.unk0);
    DmaCopy32(3, gOamData, 0x7000000, 0x400);
}

void movie_player_end(void) {
	sub_08071C24();
}

void sub_0802D608(void) {
	gUnknown_030001A0.unk4 = 0;	
}
