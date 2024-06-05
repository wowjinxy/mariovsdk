#include "gba/gba.h"
#include "global.h"
#include "main.h"

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