#!/usr/bin/make -f

# This is a simple script to extract assets from baserom.gba

TMPDIR := .extract

GBAGFX := tools/gbagfx/gbagfx

# canned recipe to extract bytes from binary file
# parameters: offset, size
define romextract
	@mkdir -p $(@D)
	dd if=$< of=$@ bs=1 skip=$$(($(1))) count=$$(($(2))) status=none
endef

FILES := \
	$(foreach t,bg obj bg_gbplayer obj_gbplayer, \
		assets/palettes/0_title_screen_$(t).pal \
		assets/palettes/1_main_menu_$(t).pal \
		assets/palettes/2_expert_levels_$(t).pal \
		assets/palettes/3_options_menu_$(t).pal \
		assets/palettes/4_$(t).pal \
		assets/palettes/5_level_help_$(t).pal \
		assets/palettes/6_$(t).pal \
		assets/palettes/7_$(t).pal \
		assets/palettes/8_e_world_$(t).pal \
		assets/palettes/9_$(t).pal \
		assets/palettes/10_$(t).pal \
		assets/palettes/11_level_select_world_one_$(t).pal \
		assets/palettes/12_level_select_world_two_$(t).pal \
		assets/palettes/13_level_select_world_three_$(t).pal \
		assets/palettes/14_level_select_world_four_$(t).pal \
		assets/palettes/15_level_select_world_five_$(t).pal \
		assets/palettes/16_level_select_world_six_$(t).pal \
		assets/palettes/17_level_select_dk_boss_$(t).pal \
		assets/palettes/18_level_select_world_one_plus_$(t).pal \
		assets/palettes/19_level_select_world_two_plus_$(t).pal \
		assets/palettes/20_level_select_world_three_plus_$(t).pal \
		assets/palettes/21_level_select_world_four_plus_$(t).pal \
		assets/palettes/22_level_select_world_five_plus_$(t).pal \
		assets/palettes/23_level_select_world_six_plus_$(t).pal \
		assets/palettes/24_level_select_dk_boss_plus_$(t).pal \
		assets/palettes/25_world_one_boss_clear_$(t).pal \
		assets/palettes/26_world_two_boss_clear_$(t).pal \
		assets/palettes/27_world_three_boss_clear_$(t).pal \
		assets/palettes/28_world_four_boss_clear_$(t).pal \
		assets/palettes/29_world_five_boss_clear_$(t).pal \
		assets/palettes/30_world_six_boss_clear_$(t).pal \
		assets/palettes/31_world_one_plus_boss_clear_$(t).pal \
		assets/palettes/32_world_two_plus_boss_clear_$(t).pal \
		assets/palettes/33_world_three_plus_boss_clear_$(t).pal \
		assets/palettes/34_world_four_plus_boss_clear_$(t).pal \
		assets/palettes/35_world_five_plus_boss_clear_$(t).pal \
		assets/palettes/36_world_six_plus_boss_clear_$(t).pal \
		assets/palettes/37_world_one_$(t).pal \
		assets/palettes/38_world_two_$(t).pal \
		assets/palettes/39_world_three_$(t).pal \
		assets/palettes/40_world_four_$(t).pal \
		assets/palettes/41_world_five_$(t).pal \
		assets/palettes/42_world_six_$(t).pal \
		assets/palettes/43_world_one_plus_$(t).pal \
		assets/palettes/44_world_two_plus_$(t).pal \
		assets/palettes/45_world_three_plus_$(t).pal \
		assets/palettes/46_world_four_plus_$(t).pal \
		assets/palettes/47_world_five_plus_$(t).pal \
		assets/palettes/48_world_six_plus_$(t).pal \
		assets/palettes/49_expert_1_$(t).pal \
		assets/palettes/50_expert_2_$(t).pal \
		assets/palettes/51_expert_3_$(t).pal \
		assets/palettes/52_expert_4_$(t).pal \
		assets/palettes/53_expert_5_$(t).pal \
		assets/palettes/54_expert_6_$(t).pal \
		assets/palettes/55_expert_7_$(t).pal \
		assets/palettes/56_expert_8_$(t).pal \
		assets/palettes/57_expert_9_$(t).pal \
		assets/palettes/58_expert_unused_$(t).pal \
		assets/palettes/59_expert_10_$(t).pal \
		assets/palettes/60_expert_11_$(t).pal \
		assets/palettes/61_expert_12_$(t).pal \
		assets/palettes/62_dk_boss_$(t).pal \
		assets/palettes/63_dk_boss_plus_$(t).pal \
		assets/palettes/64_$(t).pal \
		assets/palettes/65_$(t).pal \
		assets/palettes/66_$(t).pal \
		assets/palettes/67_$(t).pal \
		assets/palettes/68_$(t).pal \
		assets/palettes/69_$(t).pal \
		assets/palettes/70_$(t).pal \
		assets/palettes/71_$(t).pal \
		assets/palettes/72_$(t).pal \
		assets/palettes/73_$(t).pal \
		assets/palettes/74_$(t).pal \
		assets/palettes/75_$(t).pal \
	) \
	assets/sprites/PressStart.png \
	assets/sprites/FileLetters.png \
	assets/sprites/gUnknown_085FB7E4.png \
	assets/sprites/gUnknown_085FF274.png \
	assets/sprites/FileFrameNewGameBottom.png \
	assets/sprites/FileFrameNewGameTop.png \
	assets/sprites/gUnknown_08606A24.png \
	assets/sprites/FileFrameNormalBottom.png \
	assets/sprites/FileFrameNormalTop.png \
	assets/sprites/gUnknown_0860FDD4.png \
	assets/sprites/gUnknown_08611A48.png \
	assets/sprites/FileInfoBox.png \
	assets/sprites/EReaderLogo.png \
	assets/sprites/Expert.png \
	assets/sprites/OptionMenuEraseDataButtons.png \
	assets/sprites/FileBackground.png \
	assets/sprites/gUnknown_08617080.png \
	assets/sprites/gUnknown_086172F0.png \
	assets/sprites/PlusMain.png \
	assets/sprites/gUnknown_08617830.png \
	assets/sprites/gUnknown_08617B04.png \
	assets/sprites/MMDK.png \
	assets/sprites/gUnknown_08617F24.png \
	assets/sprites/gUnknown_086180B4.png

all: $(FILES)

clean:
	$(RM) -r $(FILES) $(TMPDIR)

### Predefined palettes ###

$(TMPDIR)/palettes/0_%.gbapal: PALINDEX := 0
$(TMPDIR)/palettes/1_%.gbapal: PALINDEX := 1
$(TMPDIR)/palettes/2_%.gbapal: PALINDEX := 2
$(TMPDIR)/palettes/3_%.gbapal: PALINDEX := 3
$(TMPDIR)/palettes/4_%.gbapal: PALINDEX := 4
$(TMPDIR)/palettes/5_%.gbapal: PALINDEX := 5
$(TMPDIR)/palettes/6_%.gbapal: PALINDEX := 6
$(TMPDIR)/palettes/7_%.gbapal: PALINDEX := 7
$(TMPDIR)/palettes/8_%.gbapal: PALINDEX := 8
$(TMPDIR)/palettes/9_%.gbapal: PALINDEX := 9
$(TMPDIR)/palettes/10_%.gbapal: PALINDEX := 10
$(TMPDIR)/palettes/11_%.gbapal: PALINDEX := 11
$(TMPDIR)/palettes/12_%.gbapal: PALINDEX := 12
$(TMPDIR)/palettes/13_%.gbapal: PALINDEX := 13
$(TMPDIR)/palettes/14_%.gbapal: PALINDEX := 14
$(TMPDIR)/palettes/15_%.gbapal: PALINDEX := 15
$(TMPDIR)/palettes/16_%.gbapal: PALINDEX := 16
$(TMPDIR)/palettes/17_%.gbapal: PALINDEX := 17
$(TMPDIR)/palettes/18_%.gbapal: PALINDEX := 18
$(TMPDIR)/palettes/19_%.gbapal: PALINDEX := 19
$(TMPDIR)/palettes/20_%.gbapal: PALINDEX := 20
$(TMPDIR)/palettes/21_%.gbapal: PALINDEX := 21
$(TMPDIR)/palettes/22_%.gbapal: PALINDEX := 22
$(TMPDIR)/palettes/23_%.gbapal: PALINDEX := 23
$(TMPDIR)/palettes/24_%.gbapal: PALINDEX := 24
$(TMPDIR)/palettes/25_%.gbapal: PALINDEX := 25
$(TMPDIR)/palettes/26_%.gbapal: PALINDEX := 26
$(TMPDIR)/palettes/27_%.gbapal: PALINDEX := 27
$(TMPDIR)/palettes/28_%.gbapal: PALINDEX := 28
$(TMPDIR)/palettes/29_%.gbapal: PALINDEX := 29
$(TMPDIR)/palettes/30_%.gbapal: PALINDEX := 30
$(TMPDIR)/palettes/31_%.gbapal: PALINDEX := 31
$(TMPDIR)/palettes/32_%.gbapal: PALINDEX := 32
$(TMPDIR)/palettes/33_%.gbapal: PALINDEX := 33
$(TMPDIR)/palettes/34_%.gbapal: PALINDEX := 34
$(TMPDIR)/palettes/35_%.gbapal: PALINDEX := 35
$(TMPDIR)/palettes/36_%.gbapal: PALINDEX := 36
$(TMPDIR)/palettes/37_%.gbapal: PALINDEX := 37
$(TMPDIR)/palettes/38_%.gbapal: PALINDEX := 38
$(TMPDIR)/palettes/39_%.gbapal: PALINDEX := 39
$(TMPDIR)/palettes/40_%.gbapal: PALINDEX := 40
$(TMPDIR)/palettes/41_%.gbapal: PALINDEX := 41
$(TMPDIR)/palettes/42_%.gbapal: PALINDEX := 42
$(TMPDIR)/palettes/43_%.gbapal: PALINDEX := 43
$(TMPDIR)/palettes/44_%.gbapal: PALINDEX := 44
$(TMPDIR)/palettes/45_%.gbapal: PALINDEX := 45
$(TMPDIR)/palettes/46_%.gbapal: PALINDEX := 46
$(TMPDIR)/palettes/47_%.gbapal: PALINDEX := 47
$(TMPDIR)/palettes/48_%.gbapal: PALINDEX := 48
$(TMPDIR)/palettes/49_%.gbapal: PALINDEX := 49
$(TMPDIR)/palettes/50_%.gbapal: PALINDEX := 50
$(TMPDIR)/palettes/51_%.gbapal: PALINDEX := 51
$(TMPDIR)/palettes/52_%.gbapal: PALINDEX := 52
$(TMPDIR)/palettes/53_%.gbapal: PALINDEX := 53
$(TMPDIR)/palettes/54_%.gbapal: PALINDEX := 54
$(TMPDIR)/palettes/55_%.gbapal: PALINDEX := 55
$(TMPDIR)/palettes/56_%.gbapal: PALINDEX := 56
$(TMPDIR)/palettes/57_%.gbapal: PALINDEX := 57
$(TMPDIR)/palettes/58_%.gbapal: PALINDEX := 58
$(TMPDIR)/palettes/59_%.gbapal: PALINDEX := 59
$(TMPDIR)/palettes/60_%.gbapal: PALINDEX := 60
$(TMPDIR)/palettes/61_%.gbapal: PALINDEX := 61
$(TMPDIR)/palettes/62_%.gbapal: PALINDEX := 62
$(TMPDIR)/palettes/63_%.gbapal: PALINDEX := 63
$(TMPDIR)/palettes/64_%.gbapal: PALINDEX := 64
$(TMPDIR)/palettes/65_%.gbapal: PALINDEX := 65
$(TMPDIR)/palettes/66_%.gbapal: PALINDEX := 66
$(TMPDIR)/palettes/67_%.gbapal: PALINDEX := 67
$(TMPDIR)/palettes/68_%.gbapal: PALINDEX := 68
$(TMPDIR)/palettes/69_%.gbapal: PALINDEX := 69
$(TMPDIR)/palettes/70_%.gbapal: PALINDEX := 70
$(TMPDIR)/palettes/71_%.gbapal: PALINDEX := 71
$(TMPDIR)/palettes/72_%.gbapal: PALINDEX := 72
$(TMPDIR)/palettes/73_%.gbapal: PALINDEX := 73
$(TMPDIR)/palettes/74_%.gbapal: PALINDEX := 74
$(TMPDIR)/palettes/75_%.gbapal: PALINDEX := 75

$(TMPDIR)/palettes/%_bg.gbapal:           baserom.gba ; $(call romextract,0x81D98+$(PALINDEX)*0x800+0x000+0x000,0x200)
$(TMPDIR)/palettes/%_obj.gbapal:          baserom.gba ; $(call romextract,0x81D98+$(PALINDEX)*0x800+0x000+0x200,0x200)
$(TMPDIR)/palettes/%_bg_gbplayer.gbapal:  baserom.gba ; $(call romextract,0x81D98+$(PALINDEX)*0x800+0x400+0x000,0x200)
$(TMPDIR)/palettes/%_obj_gbplayer.gbapal: baserom.gba ; $(call romextract,0x81D98+$(PALINDEX)*0x800+0x400+0x200,0x200)

### Sprites ###

# Calculates the offset of the specified OBJ sub-palette
obj_palette_addr = 0x81D98+$(1)*0x800+0x200+$(2)*0x20

assets/sprites/PressStart.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/PressStart.4bpp: baserom.gba ; $(call romextract,0x5F49D8,0x200)
$(TMPDIR)/sprites/PressStart.gbapal: baserom.gba ; $(call romextract,$(call obj_palette_addr,0,0),0x20)

assets/sprites/FileLetters.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/FileLetters.4bpp: baserom.gba ; $(call romextract,0x5FB3D4,0x80*3)
$(TMPDIR)/sprites/FileLetters.gbapal: baserom.gba ; $(call romextract,$(call obj_palette_addr,1,4),0x20)

assets/sprites/gUnknown_085FB7E4.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_085FB7E4.4bpp: baserom.gba ; $(call romextract,0x5FB7E4,0x800*7)
$(TMPDIR)/sprites/gUnknown_085FB7E4.gbapal: baserom.gba ; $(call romextract,$(call obj_palette_addr,1,10),0x20)

assets/sprites/gUnknown_085FF274.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_085FF274.4bpp: baserom.gba ; $(call romextract,0x5FF274,0x400*7)
$(TMPDIR)/sprites/gUnknown_085FF274.gbapal: baserom.gba ; $(call romextract,$(call obj_palette_addr,1,4),0x20)

assets/sprites/FileFrameNewGameBottom.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/FileFrameNewGameBottom.4bpp: baserom.gba ; $(call romextract,0x601104,0x400*7)
$(TMPDIR)/sprites/FileFrameNewGameBottom.gbapal: baserom.gba ; $(call romextract,$(call obj_palette_addr,1,4),0x20)

assets/sprites/FileFrameNewGameTop.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/FileFrameNewGameTop.4bpp: baserom.gba ; $(call romextract,0x602F94,0x800*7)
$(TMPDIR)/sprites/FileFrameNewGameTop.gbapal: baserom.gba ; $(call romextract,$(call obj_palette_addr,1,4),0x20)

assets/sprites/gUnknown_08606A24.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_08606A24.4bpp: baserom.gba ; $(call romextract,0x606A24,0x800*7)
$(TMPDIR)/sprites/gUnknown_08606A24.gbapal: baserom.gba ; $(call romextract,$(call obj_palette_addr,1,10),0x20)

assets/sprites/FileFrameNormalBottom.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/FileFrameNormalBottom.4bpp: baserom.gba ; $(call romextract,0x60A4B4,0x400*7)
$(TMPDIR)/sprites/FileFrameNormalBottom.gbapal: baserom.gba ; $(call romextract,$(call obj_palette_addr,1,4),0x20)

assets/sprites/FileFrameNormalTop.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/FileFrameNormalTop.4bpp: baserom.gba ; $(call romextract,0x60C344,0x800*7)
$(TMPDIR)/sprites/FileFrameNormalTop.gbapal: baserom.gba ; $(call romextract,$(call obj_palette_addr,1,4),0x20)

assets/sprites/gUnknown_0860FDD4.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_0860FDD4.4bpp: baserom.gba ; $(call romextract,0x60FDD4,0x400*7)
$(TMPDIR)/sprites/gUnknown_0860FDD4.gbapal: baserom.gba ; $(call romextract,$(call obj_palette_addr,1,4),0x20)

assets/sprites/gUnknown_08611A48.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_08611A48.4bpp: baserom.gba ; $(call romextract,0x611A48,0x400*3)
$(TMPDIR)/sprites/gUnknown_08611A48.gbapal: baserom.gba ; $(call romextract,$(call obj_palette_addr,1,4),0x20)

assets/sprites/FileInfoBox.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/FileInfoBox.4bpp: baserom.gba ; $(call romextract,0x6126BC,0x800*3)
$(TMPDIR)/sprites/FileInfoBox.gbapal: baserom.gba ; $(call romextract,$(call obj_palette_addr,1,14),0x20)

assets/sprites/EReaderLogo.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/EReaderLogo.4bpp: baserom.gba ; $(call romextract,0x613F0C,0x200*2)
$(TMPDIR)/sprites/EReaderLogo.gbapal: baserom.gba ; $(call romextract,$(call obj_palette_addr,1,2),0x20)

assets/sprites/Expert.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/Expert.4bpp: baserom.gba ; $(call romextract,0x614764,0x400)
$(TMPDIR)/sprites/Expert.gbapal: baserom.gba ; $(call romextract,$(call obj_palette_addr,1,4),0x20)

assets/sprites/OptionMenuEraseDataButtons.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/OptionMenuEraseDataButtons.4bpp: baserom.gba ; $(call romextract,0x614BB4,0x800*2)
$(TMPDIR)/sprites/OptionMenuEraseDataButtons.gbapal: baserom.gba ; $(call romextract,$(call obj_palette_addr,1,10),0x20)

assets/sprites/FileBackground.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/FileBackground.4bpp: baserom.gba ; $(call romextract,0x615C04,0x800*2)
$(TMPDIR)/sprites/FileBackground.gbapal: baserom.gba ; $(call romextract,$(call obj_palette_addr,1,4),0x20)

assets/sprites/gUnknown_08617080.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_08617080.4bpp: baserom.gba ; $(call romextract,0x617080,0x80*2)
$(TMPDIR)/sprites/gUnknown_08617080.gbapal: baserom.gba ; $(call romextract,$(call obj_palette_addr,1,3),0x20)

assets/sprites/gUnknown_086172F0.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_086172F0.4bpp: baserom.gba ; $(call romextract,0x6172F0,0x40*10)
$(TMPDIR)/sprites/gUnknown_086172F0.gbapal: baserom.gba ; $(call romextract,$(call obj_palette_addr,1,4),0x20)

assets/sprites/PlusMain.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/PlusMain.4bpp: baserom.gba ; $(call romextract,0x6175C0,0x80*2)
$(TMPDIR)/sprites/PlusMain.gbapal: baserom.gba ; $(call romextract,$(call obj_palette_addr,1,4),0x20)

assets/sprites/gUnknown_08617830.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_08617830.4bpp: baserom.gba ; $(call romextract,0x617830,0x20*10)
$(TMPDIR)/sprites/gUnknown_08617830.gbapal: baserom.gba ; $(call romextract,$(call obj_palette_addr,1,4),0x20)

assets/sprites/gUnknown_08617B04.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_08617B04.4bpp: baserom.gba ; $(call romextract,0x617B04,0x20*11)
$(TMPDIR)/sprites/gUnknown_08617B04.gbapal: baserom.gba ; $(call romextract,$(call obj_palette_addr,1,4),0x20)

assets/sprites/MMDK.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/MMDK.4bpp: baserom.gba ; $(call romextract,0x617CB4,0x80*2)
$(TMPDIR)/sprites/MMDK.gbapal: baserom.gba ; $(call romextract,$(call obj_palette_addr,1,4),0x20)

assets/sprites/gUnknown_08617F24.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_08617F24.4bpp: baserom.gba ; $(call romextract,0x617F24,0x20*10)
$(TMPDIR)/sprites/gUnknown_08617F24.gbapal: baserom.gba ; $(call romextract,$(call obj_palette_addr,1,4),0x20)

assets/sprites/gUnknown_086180B4.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_086180B4.4bpp: baserom.gba ; $(call romextract,0x6180B4,0x80*2)
$(TMPDIR)/sprites/gUnknown_086180B4.gbapal: baserom.gba ; $(call romextract,$(call obj_palette_addr,1,1),0x20)

# convert files to PNG (with or without palette)
assets/%.png: $(TMPDIR)/%.4bpp $(TMPDIR)/%.gbapal $(GBAGFX)
	@mkdir -p $(@D)
	$(GBAGFX) $< $@ $(GBAGFX_FLAGS) -palette $(filter %.gbapal,$^)
assets/%.png: $(TMPDIR)/%.8bpp $(TMPDIR)/%.gbapal $(GBAGFX)
	@mkdir -p $(@D)
	$(GBAGFX) $< $@ $(GBAGFX_FLAGS) -palette $(filter %.gbapal,$^)
assets/%.png: $(TMPDIR)/%.4bpp $(GBAGFX)
	@mkdir -p $(@D)
	$(GBAGFX) $< $@ $(GBAGFX_FLAGS)
assets/%.png: $(TMPDIR)/%.8bpp $(GBAGFX)
	@mkdir -p $(@D)
	$(GBAGFX) $< $@ $(GBAGFX_FLAGS)

assets/%.pal: $(TMPDIR)/%.gbapal $(GBAGFX)
	@mkdir -p $(@D)
	$(GBAGFX) $< $@ $(GBAGFX_FLAGS)

# build tools
$(GBAGFX):
	$(MAKE) -C $(@D)
