#include "gba/gba.h"
#include "global.h"
#include "main.h"

u8 sub_08029C20(void) {
  
  if (gUnknown_03000C28 != 0) {
    if (gUnknown_03000111 != 0) { 
        gUnknown_03000111--;
        return(1);
    }
    
    gUnknown_03000110--;
    if (0 < gUnknown_03000110) {
        REG_BLDY = gUnknown_03000110;
        return(1);
    }
    gUnknown_03000C28 = 0;
    gUnknown_03000110 = 0;
    REG_BLDCNT = gUnknown_03000112;
    REG_BLDALPHA = gUnknown_03000114;
    REG_BLDY = 0;
  }
  return(0);
}

void sub_08029C9C(u32 param_1) {

	set_blend_regs_08029CDC(*(u16 *)(param_1 + 0x30),*(u16 *)(param_1 + 0x32), *(u16 *)(param_1 + 0x34));
}

void sub_08029CB0(void) {
	
	gUnknown_03000110 = 0x1F;
	gUnknown_03000C28 = 1;
	REG_BLDCNT = 0xff;
	REG_BLDALPHA = 0;
	REG_BLDY = 0x1f;
}

void set_blend_regs_08029CDC(u32 BldCnt, u32 BldAlpha, u32 BldY) {
    
	REG_WININ = 0x1010;
	REG_WINOUT = 0x103f;
	gUnknown_03000110 = 0x1f;
	gUnknown_03000C28 = 1;
	gUnknown_03000111 = 5;
	gUnknown_03000112 = BldCnt;
	gUnknown_03000114 = BldAlpha;
	gUnknown_03000116 = BldY;
	REG_BLDCNT = 0xff;
	REG_BLDALPHA = 0;
	REG_BLDY = 0x1f;
}

void fade_transition_init_callback(void) {
	
	gUnknown_03000110 = 0;
	gUnknown_03000111 = 4;
	REG_DISPCNT = REG_DISPCNT & 0x7fff;
	REG_BLDCNT = 0xff;
	REG_BLDY = 0;
}

void sub_08029D80(void) {

	gUnknown_03000110 = 0x1f;
	gUnknown_03000111 = 0;
	REG_DISPCNT = REG_DISPCNT & 0x7fff;
	REG_BLDCNT = 0xff;
	REG_BLDY = 0x1f;
}

void sub_08029DB8(void) {

    REG_DISPCNT = REG_DISPCNT | 0x8000;
    REG_WININ = 0x1010;
    REG_WINOUT = 0x103f;
    REG_BLDCNT = 0xff;
    REG_BLDALPHA = 0;
    gUnknown_03000110 = 0x1f;
    REG_BLDY = 0x1f;
    gUnknown_03000C28 = 0;
}

void sub_08029E14(void) {
	
	gUnknown_03000110 = 0x1f;
	gUnknown_03000C28 = 1;
	gUnknown_03000111 = 5;
	REG_BLDCNT = 0xff;
	REG_BLDALPHA = 0;
	REG_BLDY = 0x1f;
}

void sub_08029E4C(void) {
	
	gUnknown_03000110 = 0;
	REG_BLDY = 0;
	REG_BLDCNT = gUnknown_03000112;
}

void fade_transition_end(void) {
	
	gUnknown_03000110 = 0x1f;
}

void sub_08029E7C(void) {

    gUnknown_03000C28 = 0;
    gUnknown_03000110 = 0;
    REG_BLDCNT = gUnknown_03000112;
    REG_BLDALPHA = gUnknown_03000114;
    REG_BLDY = 0;
}

u32 sub_08029EB4(void) {
    if (gUnknown_03000C28) {
        if (gUnknown_03000110 <= 0) {
            gUnknown_03000C28 = 0;
            gUnknown_03000110 = 0;
            REG_BLDCNT = gUnknown_03000112;
            REG_BLDALPHA = gUnknown_03000114;
            REG_BLDY = 0;
            return 0;
        }
        gUnknown_03000110 -= 4;
        if (gUnknown_03000110 < 0) {
            gUnknown_03000110 = 0;
        }
        REG_BLDY = gUnknown_03000110;
        return 1;
    }
    return 0;
} 

void fade_transition_main(void) {

    if (gUnknown_03000110 < 0x1F) {
        gUnknown_03000110++;
    } else if (gUnknown_03000111!= 0x0) {
       gUnknown_03000111--;
    } else {
       gUnknown_03000110 = 0x1F;
       REG_DISPCNT = 0;
       sub_08007154();
    }
    REG_BLDY = gUnknown_03000110;   
}

u32 sub_08029F7C(void) {

    u32 temp;
    
    if (gUnknown_03000110 < 0x1F) {
        gUnknown_03000110++;
    } else {
        if (gUnknown_03000111 == 0x0) {
            gUnknown_03000110 = 0x1F;
            temp = 1;
            return(temp);
        }
        gUnknown_03000111--;
    }
    REG_BLDY = gUnknown_03000110;   
    temp = 0;
    return(temp);
}

void sub_08029FC8(void){

}

void sub_08029FCC(void){

}

asm(".align 2, 0");