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
	$(foreach n,$(shell seq 0 75), \
		assets/palettes/$(n)_bg.pal \
		assets/palettes/$(n)_bg_gbplayer.pal \
		assets/palettes/$(n)_obj.pal \
		assets/palettes/$(n)_obj_gbplayer.pal \
	) \
	assets/sprites/gUnknown_085FB3D4.png \
	assets/sprites/gUnknown_085FB7E4.png \
	assets/sprites/gUnknown_085FF274.png \
	assets/sprites/gUnknown_08601104.png \
	assets/sprites/gUnknown_08602F94.png \
	assets/sprites/gUnknown_08606A24.png \
	assets/sprites/gUnknown_0860A4B4.png \
	assets/sprites/gUnknown_0860C344.png \
	assets/sprites/gUnknown_0860FDD4.png \
	assets/sprites/gUnknown_08611A48.png \
	assets/sprites/gUnknown_086126BC.png \
	assets/sprites/EReaderLogo.png \
	assets/sprites/gUnknown_08614764.png \
	assets/sprites/gUnknown_08614BB4.png \
	assets/sprites/gUnknown_08615C04.png \
	assets/sprites/gUnknown_08617080.png \
	assets/sprites/gUnknown_086172F0.png \
	assets/sprites/gUnknown_086175C0.png \
	assets/sprites/gUnknown_08617830.png \
	assets/sprites/gUnknown_08617B04.png \
	assets/sprites/gUnknown_08617CB4.png \
	assets/sprites/gUnknown_08617F24.png \
	assets/sprites/gUnknown_086180B4.png

all: $(FILES)

clean:
	$(RM) -r $(FILES) $(TMPDIR)

# Predefined palettes
$(TMPDIR)/palettes/%_bg.gbapal:           baserom.gba ; $(call romextract,0x81D98+$**0x800+0x000+0x000,0x200)
$(TMPDIR)/palettes/%_obj.gbapal:          baserom.gba ; $(call romextract,0x81D98+$**0x800+0x000+0x200,0x200)
$(TMPDIR)/palettes/%_bg_gbplayer.gbapal:  baserom.gba ; $(call romextract,0x81D98+$**0x800+0x400+0x000,0x200)
$(TMPDIR)/palettes/%_obj_gbplayer.gbapal: baserom.gba ; $(call romextract,0x81D98+$**0x800+0x400+0x200,0x200)

# Calculates the offset of the specified OBJ sub-palette
obj_palette_addr = 0x81D98+$(1)*0x800+0x200+$(2)*0x20

assets/sprites/gUnknown_085FB3D4.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_085FB3D4.4bpp: baserom.gba ; $(call romextract,0x5FB3D4,0x80*3)
$(TMPDIR)/sprites/gUnknown_085FB3D4.gbapal: baserom.gba ; $(call romextract,$(call obj_palette_addr,1,4),0x20)

assets/sprites/gUnknown_085FB7E4.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_085FB7E4.4bpp: baserom.gba ; $(call romextract,0x5FB7E4,0x800*7)
$(TMPDIR)/sprites/gUnknown_085FB7E4.gbapal: baserom.gba ; $(call romextract,$(call obj_palette_addr,1,10),0x20)

assets/sprites/gUnknown_085FF274.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_085FF274.4bpp: baserom.gba ; $(call romextract,0x5FF274,0x400*7)
$(TMPDIR)/sprites/gUnknown_085FF274.gbapal: baserom.gba ; $(call romextract,$(call obj_palette_addr,1,4),0x20)

assets/sprites/gUnknown_08601104.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_08601104.4bpp: baserom.gba ; $(call romextract,0x601104,0x400*7)
$(TMPDIR)/sprites/gUnknown_08601104.gbapal: baserom.gba ; $(call romextract,$(call obj_palette_addr,1,4),0x20)

assets/sprites/gUnknown_08602F94.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_08602F94.4bpp: baserom.gba ; $(call romextract,0x602F94,0x800*7)
$(TMPDIR)/sprites/gUnknown_08602F94.gbapal: baserom.gba ; $(call romextract,$(call obj_palette_addr,1,4),0x20)

assets/sprites/gUnknown_08606A24.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_08606A24.4bpp: baserom.gba ; $(call romextract,0x606A24,0x800*7)
$(TMPDIR)/sprites/gUnknown_08606A24.gbapal: baserom.gba ; $(call romextract,$(call obj_palette_addr,1,10),0x20)

assets/sprites/gUnknown_0860A4B4.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_0860A4B4.4bpp: baserom.gba ; $(call romextract,0x60A4B4,0x400*7)
$(TMPDIR)/sprites/gUnknown_0860A4B4.gbapal: baserom.gba ; $(call romextract,$(call obj_palette_addr,1,4),0x20)

assets/sprites/gUnknown_0860C344.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_0860C344.4bpp: baserom.gba ; $(call romextract,0x60C344,0x800*7)
$(TMPDIR)/sprites/gUnknown_0860C344.gbapal: baserom.gba ; $(call romextract,$(call obj_palette_addr,1,4),0x20)

assets/sprites/gUnknown_0860FDD4.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_0860FDD4.4bpp: baserom.gba ; $(call romextract,0x60FDD4,0x400*7)
$(TMPDIR)/sprites/gUnknown_0860FDD4.gbapal: baserom.gba ; $(call romextract,$(call obj_palette_addr,1,4),0x20)

assets/sprites/gUnknown_08611A48.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_08611A48.4bpp: baserom.gba ; $(call romextract,0x611A48,0x400*3)
$(TMPDIR)/sprites/gUnknown_08611A48.gbapal: baserom.gba ; $(call romextract,$(call obj_palette_addr,1,4),0x20)

assets/sprites/gUnknown_086126BC.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_086126BC.4bpp: baserom.gba ; $(call romextract,0x6126BC,0x800*3)
$(TMPDIR)/sprites/gUnknown_086126BC.gbapal: baserom.gba ; $(call romextract,$(call obj_palette_addr,1,14),0x20)

assets/sprites/EReaderLogo.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/EReaderLogo.4bpp: baserom.gba ; $(call romextract,0x613F0C,0x200*2)
$(TMPDIR)/sprites/EReaderLogo.gbapal: baserom.gba ; $(call romextract,$(call obj_palette_addr,1,2),0x20)

assets/sprites/gUnknown_08614764.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_08614764.4bpp: baserom.gba ; $(call romextract,0x614764,0x400)
$(TMPDIR)/sprites/gUnknown_08614764.gbapal: baserom.gba ; $(call romextract,$(call obj_palette_addr,1,4),0x20)

assets/sprites/gUnknown_08614BB4.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_08614BB4.4bpp: baserom.gba ; $(call romextract,0x614BB4,0x800*2)
$(TMPDIR)/sprites/gUnknown_08614BB4.gbapal: baserom.gba ; $(call romextract,$(call obj_palette_addr,1,10),0x20)

assets/sprites/gUnknown_08615C04.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_08615C04.4bpp: baserom.gba ; $(call romextract,0x615C04,0x800*2)
$(TMPDIR)/sprites/gUnknown_08615C04.gbapal: baserom.gba ; $(call romextract,$(call obj_palette_addr,1,4),0x20)

assets/sprites/gUnknown_08617080.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_08617080.4bpp: baserom.gba ; $(call romextract,0x617080,0x80*2)
$(TMPDIR)/sprites/gUnknown_08617080.gbapal: baserom.gba ; $(call romextract,$(call obj_palette_addr,1,3),0x20)

assets/sprites/gUnknown_086172F0.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_086172F0.4bpp: baserom.gba ; $(call romextract,0x6172F0,0x40*10)
$(TMPDIR)/sprites/gUnknown_086172F0.gbapal: baserom.gba ; $(call romextract,$(call obj_palette_addr,1,4),0x20)

assets/sprites/gUnknown_086175C0.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_086175C0.4bpp: baserom.gba ; $(call romextract,0x6175C0,0x80*2)
$(TMPDIR)/sprites/gUnknown_086175C0.gbapal: baserom.gba ; $(call romextract,$(call obj_palette_addr,1,4),0x20)

assets/sprites/gUnknown_08617830.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_08617830.4bpp: baserom.gba ; $(call romextract,0x617830,0x20*10)
$(TMPDIR)/sprites/gUnknown_08617830.gbapal: baserom.gba ; $(call romextract,$(call obj_palette_addr,1,4),0x20)

assets/sprites/gUnknown_08617B04.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_08617B04.4bpp: baserom.gba ; $(call romextract,0x617B04,0x20*11)
$(TMPDIR)/sprites/gUnknown_08617B04.gbapal: baserom.gba ; $(call romextract,$(call obj_palette_addr,1,4),0x20)

assets/sprites/gUnknown_08617CB4.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08617CB4.4bpp: baserom.gba ; $(call romextract,0x617CB4,0x80*2)
$(TMPDIR)/sprites/gUnknown_08617CB4.gbapal: baserom.gba ; $(call romextract,$(call obj_palette_addr,1,4),0x20)

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
