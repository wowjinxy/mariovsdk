#include "gba/gba.h"
#include "global.h"
#include "main.h"

static s8 sBldY;  // how dark the screen is. value from 0 to 31 (inclusive)
static s8 sInitialFadeDelay;  // Initial delay before doing fade
// saved registers to restore when fade is done
static s16 sSavedBLDCNT;
static s16 sSavedBLDALPHA;
static s16 sSavedBLDY;  // set but not used

int update_fade_from_black(void) {

  if (gIsFadeInProgress) {
    if (sInitialFadeDelay != 0) {
        sInitialFadeDelay--;
        return TRUE;
    }
    if (--sBldY > 0) {
        REG_BLDY = sBldY;
        return TRUE;
    }
    // end fade
    gIsFadeInProgress = FALSE;
    sBldY = 0;
    REG_BLDCNT = sSavedBLDCNT;
    REG_BLDALPHA = sSavedBLDALPHA;
    REG_BLDY = 0;
  }
  return FALSE;
}

void save_blend_regs_from_graphicsconfig(struct GraphicsConfig *param_1) {

    save_blend_regs(param_1->bldCnt, param_1->bldAlpha, param_1->bldY);
}

void sub_08029CB0(void) {
    // blacken screen
    sBldY = 31;
    gIsFadeInProgress = TRUE;
    REG_BLDCNT = BLDCNT_EFF_DARKEN | BLDCNT_ALL_FIRST;
    REG_BLDALPHA = 0;
    REG_BLDY = 31;
}

void save_blend_regs(u32 BldCnt, u32 BldAlpha, u32 BldY) {
    // Display only OBJ inside the windows
    REG_WININ = WININ_WIN0_OBJ | WININ_WIN1_OBJ;
    // Display everything and apply fading outside the windows
    // Display only OBJs inside the OBJ window
    REG_WINOUT = WINOUT_WIN01_ALL | WINOUT_WINOBJ_OBJ;
    sBldY = 31;
    gIsFadeInProgress = TRUE;
    sInitialFadeDelay = 5;
    sSavedBLDCNT = BldCnt;
    sSavedBLDALPHA = BldAlpha;
    sSavedBLDY = BldY;
    // blacken screen
    REG_BLDCNT = BLDCNT_EFF_DARKEN | BLDCNT_ALL_FIRST;
    REG_BLDALPHA = 0;
    REG_BLDY = 31;
}

void fade_transition_init_callback(void) {
    // reset fade
    sBldY = 0;
    sInitialFadeDelay = 4;
    REG_DISPCNT &= ~DISPCNT_OBJWIN_ON;
    REG_BLDCNT = BLDCNT_EFF_DARKEN | BLDCNT_ALL_FIRST;
    REG_BLDY = 0;
}

void sub_08029D80(void) {
    // blacken screen
    sBldY = 31;
    sInitialFadeDelay = 0;
    REG_DISPCNT &= ~DISPCNT_OBJWIN_ON;
    REG_BLDCNT = BLDCNT_EFF_DARKEN | BLDCNT_ALL_FIRST;
    REG_BLDY = 31;
}

void sub_08029DB8(void) {

    REG_DISPCNT |= DISPCNT_OBJWIN_ON;
    // Display only OBJ inside the windows
    REG_WININ = WININ_WIN0_OBJ | WININ_WIN1_OBJ;
    // Display everything and apply fading outside the windows
    // Display only OBJs inside the OBJ window
    REG_WINOUT = WINOUT_WIN01_ALL | WINOUT_WINOBJ_OBJ;
    REG_BLDCNT = BLDCNT_EFF_DARKEN | BLDCNT_ALL_FIRST;
    // blacken screen
    REG_BLDALPHA = 0;
    sBldY = 31;
    REG_BLDY = 31;
    gIsFadeInProgress = FALSE;
}

void sub_08029E14(void) {
    // like sub_08029CB0, but with delay
    sBldY = 31;
    gIsFadeInProgress = TRUE;
    sInitialFadeDelay = 5;
    REG_BLDCNT = BLDCNT_EFF_DARKEN | BLDCNT_ALL_FIRST;
    REG_BLDALPHA = 0;
    REG_BLDY = 31;
}

// unreferenced
void sub_08029E4C(void) {

    sBldY = 0;
    REG_BLDY = 0;
    REG_BLDCNT = sSavedBLDCNT;
}

void fade_transition_end(void) {

    sBldY = 31;
}

void end_fade_08029E7C(void) {

    // end fade
    gIsFadeInProgress = FALSE;
    sBldY = 0;
    REG_BLDCNT = sSavedBLDCNT;
    REG_BLDALPHA = sSavedBLDALPHA;
    REG_BLDY = 0;
}

u32 update_quick_fade_from_black(void) {
    if (gIsFadeInProgress) {
        if (sBldY <= 0) {
            // end fade
            gIsFadeInProgress = FALSE;
            sBldY = 0;
            REG_BLDCNT = sSavedBLDCNT;
            REG_BLDALPHA = sSavedBLDALPHA;
            REG_BLDY = 0;
            return FALSE;
        }
        sBldY -= 4;
        if (sBldY < 0) {
            sBldY = 0;
        }
        REG_BLDY = sBldY;
        return TRUE;
    }
    return FALSE;
}

void fade_transition_main(void) {
    // fade to black
    if (sBldY < 31) {
        sBldY++;
    }
    else {
        if (sInitialFadeDelay != 0) {
           sInitialFadeDelay--;
        } else {
           // screen completely black
           sBldY = 31;
           REG_DISPCNT = 0;
           sub_08007154();
       }
    }
    REG_BLDY = sBldY;
}

u32 update_fade_to_black_08029F7C(void) {

    // fade to black
    if (sBldY < 31) {
        sBldY++;
    } else {
        if (sInitialFadeDelay != 0) {
            sInitialFadeDelay--;
        } else {
            sBldY = 31;
            return TRUE;
        }
    }
    REG_BLDY = sBldY;
    return FALSE;
}

// unreferenced
void sub_08029FC8(void){

}

// unreferenced
static void sub_08029FCC(void){

}

FILE_PAD
