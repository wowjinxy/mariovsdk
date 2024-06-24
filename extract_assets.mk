#!/usr/bin/make -f

# This is a simple script to extract assets from baserom.gba

TMPDIR := .extract

GBAGFX := tools/gbagfx/gbagfx

# canned recipe to extract bytes from binary file
# parameters: offset, size
define dump_data
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
	assets/sprites/DKHurt.png \
	assets/sprites/MainLevelIconPics.png \
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
	assets/sprites/gUnknown_086180B4.png \
	assets/sprites/gUnknown_0861E0B8.png \
	assets/sprites/gUnknown_086201E0.png \
	assets/sprites/gUnknown_08621308.png \
	assets/sprites/gUnknown_086576C8.png \
	assets/sprites/gUnknown_080B88A4.png \
	assets/sprites/gUnknown_080B92EC.png \
	assets/sprites/gUnknown_080B9B84.png \
	assets/sprites/gUnknown_080B9DAC.png \
	assets/sprites/gUnknown_080BA1AC.png \
	assets/sprites/gUnknown_080BA9D4.png \
	assets/sprites/DKPack.png \
	assets/sprites/gUnknown_080BF044.png \
	assets/sprites/gUnknown_080C0148.png \
	assets/sprites/gUnknown_080C0A00.png \
	assets/sprites/gUnknown_080C2328.png \
	assets/sprites/gUnknown_080C2808.png \
	assets/sprites/gUnknown_080C3650.png \
	assets/sprites/gUnknown_080C56E8.png \
	assets/sprites/gUnknown_080C6010.png \
	assets/sprites/gUnknown_080C70F0.png \
	assets/sprites/gUnknown_080C777C.png \
	assets/sprites/gUnknown_080C7C5C.png \
	assets/sprites/gUnknown_080C803C.png \
	assets/sprites/gUnknown_080C83B0.png \
	assets/sprites/gUnknown_080C8E30.png \
	assets/sprites/gUnknown_080CABB0.png \
	assets/sprites/gUnknown_080CB7F0.png \
	assets/sprites/MarioBurn.png \
	assets/sprites/gUnknown_080D46C0.png \
	assets/sprites/MarioFlail.png \
	assets/sprites/gUnknown_080E4C70.png \
	assets/sprites/gUnknown_080E6EB8.png \
	assets/sprites/MarioElectrocute.png \
	assets/sprites/MarioLand.png \
	assets/sprites/gUnknown_080EF798.png \
	assets/sprites/gUnknown_080F2020.png \
	assets/sprites/gUnknown_080F4808.png \
	assets/sprites/gUnknown_080F7250.png \
	assets/sprites/gUnknown_080F8378.png \
	assets/sprites/gUnknown_080F8CA0.png \
	assets/sprites/gUnknown_080F96E8.png \
	assets/sprites/gUnknown_080FA82C.png \
	assets/sprites/gUnknown_080FDD30.png \
	assets/sprites/gUnknown_080FE1D8.png \
	assets/sprites/gUnknown_080FE700.png \
	assets/sprites/gUnknown_080FED48.png \
	assets/sprites/gUnknown_080FF574.png \
	assets/sprites/gUnknown_080FF860.png \
	assets/sprites/gUnknown_080FFE28.png \
	assets/sprites/gUnknown_081002C0.png \
	assets/sprites/gUnknown_08100708.png \
	assets/sprites/gUnknown_08100CC0.png \
	assets/sprites/gUnknown_08100F88.png \
	assets/sprites/gUnknown_081018B0.png \
	assets/sprites/gUnknown_08101A58.png \
	assets/sprites/gUnknown_08101CD8.png \
	assets/sprites/gUnknown_08102438.png \
	assets/sprites/gUnknown_08102860.png \
	assets/sprites/gUnknown_08103CA0.png \
	assets/sprites/gUnknown_081054CC.png \
	assets/sprites/gUnknown_08105674.png \
	assets/sprites/gUnknown_08105B0C.png \
	assets/sprites/gUnknown_08105E34.png \
	assets/sprites/gUnknown_08106458.png \
	assets/sprites/gUnknown_08106C04.png \
	assets/sprites/gUnknown_08106E2C.png \
	assets/sprites/gUnknown_08107474.png \
	assets/sprites/gUnknown_081084A0.png \
	assets/sprites/gUnknown_081088E8.png \
	assets/sprites/gUnknown_0810CAE8.png \
	assets/sprites/gUnknown_0810E714.png \
	assets/sprites/gUnknown_0810EA3C.png \
	assets/sprites/gUnknown_0810F364.png \
	assets/sprites/gUnknown_0810F790.png \
	assets/sprites/gUnknown_0810F970.png \
	assets/sprites/gUnknown_0810FD50.png \
	assets/sprites/gUnknown_081100E8.png \
	assets/sprites/gUnknown_081104E8.png \
	assets/sprites/gUnknown_08110CEC.png \
	assets/sprites/gUnknown_08111224.png \
	assets/sprites/gUnknown_08112B4C.png \
	assets/sprites/gUnknown_08112D2C.png \
	assets/sprites/gUnknown_08113AE4.png \
	assets/sprites/gUnknown_0811540C.png \
	assets/sprites/gUnknown_081164A4.png \
	assets/sprites/gUnknown_08116E5C.png \
	assets/sprites/gUnknown_08118688.png \
	assets/sprites/gUnknown_08118950.png \
	assets/sprites/gUnknown_08118D7C.png \
	assets/sprites/gUnknown_08118EB8.png \
	assets/sprites/gUnknown_08119458.png \
	assets/sprites/gUnknown_081196F0.png \
	assets/sprites/gUnknown_08119940.png \
	assets/sprites/gUnknown_08119A90.png \
	assets/sprites/gUnknown_08119CB8.png \
	assets/sprites/gUnknown_0811A1F0.png \
	assets/sprites/gUnknown_0811A608.png \
	assets/sprites/gUnknown_0811A720.png \
	assets/sprites/gUnknown_0811A838.png \
	assets/sprites/gUnknown_0811AA28.png \
	assets/sprites/gUnknown_0811AE98.png \
	assets/sprites/gUnknown_0811B3E0.png \
	assets/sprites/gUnknown_0811BC0C.png \
	assets/sprites/gUnknown_0811BCB8.png \
	assets/sprites/gUnknown_0811BD64.png \
	assets/sprites/gUnknown_0811BE10.png \
	assets/sprites/gUnknown_0811C1C8.png \
	assets/sprites/gUnknown_0811F1F4.png \
	assets/sprites/gUnknown_0811F7AC.png \
	assets/sprites/gUnknown_081257D8.png \
	assets/sprites/gUnknown_08125884.png \
	assets/sprites/gUnknown_08125930.png \
	assets/sprites/gUnknown_08125A48.png \
	assets/sprites/gUnknown_08125E00.png \
	assets/sprites/gUnknown_08126AC8.png \
	assets/sprites/gUnknown_08128BF0.png \
	assets/sprites/gUnknown_08129118.png \
	assets/sprites/gUnknown_08129544.png \
	assets/sprites/gUnknown_0812980C.png \
	assets/sprites/gUnknown_0812A958.png \
	assets/sprites/gUnknown_0812BA70.png \
	assets/sprites/gUnknown_0812CA9C.png \
	assets/sprites/gUnknown_0812CB48.png \
	assets/sprites/gUnknown_0812CBF4.png \
	assets/sprites/gUnknown_0812CCA0.png \
	assets/sprites/gUnknown_0812CD0C.png \
	assets/sprites/gUnknown_0812CD58.png \
	assets/sprites/gUnknown_0812CE04.png \
	assets/sprites/gUnknown_0812D030.png \
	assets/sprites/gUnknown_0812D15C.png \
	assets/sprites/gUnknown_0812D208.png \
	assets/sprites/gUnknown_0812D2B4.png \
	assets/sprites/gUnknown_0812D360.png \
	assets/sprites/gUnknown_0812D40C.png \
	assets/sprites/gUnknown_0812D4B8.png \
	assets/sprites/gUnknown_0812D564.png \
	assets/sprites/gUnknown_0812D610.png \
	assets/sprites/gUnknown_0812D6BC.png \
	assets/sprites/gUnknown_0812D768.png \
	assets/sprites/gUnknown_0812D814.png \
	assets/sprites/gUnknown_0812D8C0.png \
	assets/sprites/gUnknown_0812D96C.png \
	assets/sprites/gUnknown_0812DA18.png \
	assets/sprites/gUnknown_0812DAC4.png \
	assets/sprites/gUnknown_0812DB70.png \
	assets/sprites/gUnknown_0812DC1C.png \
	assets/sprites/gUnknown_0812DCC8.png \
	assets/sprites/gUnknown_0812DE28.png \
	assets/sprites/gUnknown_0812E178.png \
	assets/sprites/gUnknown_0812E3A4.png \
	assets/sprites/gUnknown_0812E5D0.png \
	assets/sprites/gUnknown_0812EA18.png \
	assets/sprites/gUnknown_0812FA8C.png \
	assets/sprites/gUnknown_0812FC00.png \
	assets/sprites/gUnknown_0812FD74.png \
	assets/sprites/gUnknown_0812FEC4.png \
	assets/sprites/gUnknown_08130FC8.png \
	assets/sprites/gUnknown_081312A8.png \
	assets/sprites/gUnknown_08131F40.png \
	assets/sprites/gUnknown_08132868.png \
	assets/sprites/gUnknown_08133A68.png \
	assets/sprites/gUnknown_08135790.png \
	assets/sprites/gUnknown_08135C28.png \
	assets/sprites/gUnknown_08135F50.png \
	assets/sprites/gUnknown_08136508.png \
	assets/sprites/gUnknown_08136C30.png \
	assets/sprites/gUnknown_08137158.png \
	assets/sprites/gUnknown_081375F0.png \
	assets/sprites/gUnknown_081379A8.png \
	assets/sprites/gUnknown_081381F0.png \
	assets/sprites/gUnknown_08138B18.png \
	assets/sprites/gUnknown_08139040.png \
	assets/sprites/gUnknown_081394D8.png \
	assets/sprites/gUnknown_08139920.png \
	assets/sprites/gUnknown_0813A170.png \
	assets/sprites/gUnknown_0813B3B8.png \
	assets/sprites/gUnknown_0813EC08.png \
	assets/sprites/gUnknown_0813FE74.png \
	assets/sprites/gUnknown_08145F30.png \
	assets/sprites/gUnknown_081461D8.png \
	assets/sprites/gUnknown_0814E348.png \
	assets/sprites/gUnknown_08150BE0.png \
	assets/sprites/gUnknown_08159634.png \
	assets/sprites/gUnknown_0815FFEC.png \
	assets/sprites/gUnknown_08163138.png \
	assets/sprites/gUnknown_08167964.png \
	assets/sprites/gUnknown_0816855C.png \
	assets/sprites/gUnknown_08175714.png \
	assets/sprites/gUnknown_081817F4.png \
	assets/sprites/gUnknown_08187ACC.png \
	assets/sprites/gUnknown_0818ADC8.png \
	assets/sprites/gUnknown_0819EE60.png \
	assets/sprites/gUnknown_081A2180.png \
	assets/sprites/gUnknown_081B6380.png \
	assets/sprites/gUnknown_081B90A8.png \
	assets/sprites/gUnknown_081BD1F4.png \
	assets/sprites/gUnknown_081C1A20.png \
	assets/sprites/gUnknown_081C1C70.png \
	assets/sprites/gUnknown_081C209C.png \
	assets/sprites/gUnknown_081C216C.png \
	assets/sprites/gUnknown_081C22BC.png \
	assets/sprites/gUnknown_081C330C.png \
	assets/sprites/gUnknown_081C4380.png \
	assets/sprites/gUnknown_081C7418.png \
	assets/sprites/gUnknown_081CB540.png \
	assets/sprites/gUnknown_081CD56C.png \
	assets/sprites/gUnknown_081CDA94.png \
	assets/sprites/gUnknown_081CFAC0.png \
	assets/sprites/gUnknown_081CFFE8.png \
	assets/sprites/gUnknown_081D220C.png \
	assets/sprites/gUnknown_081D3854.png \
	assets/sprites/gUnknown_081D4A9C.png \
	assets/sprites/gUnknown_081D5CC0.png \
	assets/sprites/gUnknown_081D71E8.png \
	assets/sprites/gUnknown_081D9214.png \
	assets/sprites/gUnknown_081D96F4.png \
	assets/sprites/gUnknown_081DF720.png \
	assets/sprites/gUnknown_081DFF70.png \
	assets/sprites/gUnknown_081E009C.png \
	assets/sprites/gUnknown_081E027C.png \
	assets/sprites/gUnknown_081E3380.png \
	assets/sprites/gUnknown_081E6DC8.png \
	assets/sprites/gUnknown_081EAEF0.png \
	assets/sprites/gUnknown_081F31EC.png \
	assets/sprites/gUnknown_082034E8.png \
	assets/sprites/gUnknown_08208514.png \
	assets/sprites/gUnknown_08208A3C.png \
	assets/sprites/gUnknown_08210AD4.png \
	assets/sprites/gUnknown_08213D1C.png \
	assets/sprites/gUnknown_08223D48.png \
	assets/sprites/gUnknown_08223D94.png \
	assets/sprites/gUnknown_08223E40.png \
	assets/sprites/gUnknown_08223EEC.png \
	assets/sprites/gUnknown_08223F98.png \
	assets/sprites/gUnknown_08224044.png \
	assets/sprites/gUnknown_08224090.png \
	assets/sprites/gUnknown_0822451C.png \
	assets/sprites/gUnknown_08227D48.png \
	assets/sprites/gUnknown_08228EDC.png \
	assets/sprites/gUnknown_082310DC.png \
	assets/sprites/gUnknown_082382DC.png \
	assets/sprites/gUnknown_0823F404.png \
	assets/sprites/gUnknown_08243574.png \
	assets/sprites/gUnknown_0824D6C0.png \
	assets/sprites/gUnknown_08251FE8.png \
	assets/sprites/gUnknown_0825A014.png \
	assets/sprites/gUnknown_0825AA80.png \
	assets/sprites/gUnknown_0826BAAC.png \
	assets/sprites/gUnknown_0826C344.png \
	assets/sprites/gUnknown_082705F8.png \
	assets/sprites/gUnknown_08275E90.png \
	assets/sprites/gUnknown_08277F4C.png \
	assets/sprites/gUnknown_0827CF78.png \
	assets/sprites/gUnknown_0827D8A0.png \
	assets/sprites/gUnknown_0827E9EC.png \
	assets/sprites/gUnknown_0827FDEC.png \
	assets/sprites/gUnknown_08280DEC.png \
	assets/sprites/gUnknown_08281D5C.png \
	assets/sprites/gUnknown_082833A4.png \
	assets/sprites/gUnknown_0828555C.png \
	assets/sprites/gUnknown_0828863C.png \
	assets/sprites/gUnknown_0828B764.png \
	assets/sprites/gUnknown_0828C844.png \
	assets/sprites/gUnknown_0828D08C.png \
	assets/sprites/gUnknown_0828D324.png \
	assets/sprites/gUnknown_0828DD6C.png \
	assets/sprites/gUnknown_0828E6B4.png \
	assets/sprites/gUnknown_0828F11C.png \
	assets/sprites/gUnknown_0828FF64.png \
	assets/sprites/gUnknown_0829022C.png \
	assets/sprites/gUnknown_082904F4.png \
	assets/sprites/gUnknown_082907BC.png \
	assets/sprites/gUnknown_08290BA4.png \
	assets/sprites/gUnknown_082925EC.png \
	assets/sprites/gUnknown_08293834.png \
	assets/sprites/gUnknown_08293F9C.png \
	assets/sprites/gUnknown_082944E4.png \
	assets/sprites/gUnknown_08295510.png \
	assets/sprites/gUnknown_0829555C.png \
	assets/sprites/gUnknown_082955A8.png \
	assets/sprites/gUnknown_082955F4.png \
	assets/sprites/gUnknown_08295640.png \
	assets/sprites/gUnknown_0829568C.png \
	assets/sprites/gUnknown_082957B8.png \
	assets/sprites/gUnknown_08295FE4.png \
	assets/sprites/gUnknown_08296810.png \
	assets/sprites/gUnknown_0829703C.png \
	assets/sprites/gUnknown_08297168.png \
	assets/sprites/gUnknown_08297294.png \
	assets/sprites/gUnknown_082973C0.png \
	assets/sprites/gUnknown_082974EC.png \
	assets/sprites/gUnknown_08297618.png \
	assets/sprites/gUnknown_08297744.png \
	assets/sprites/gUnknown_08297870.png \
	assets/sprites/gUnknown_0829799C.png \
	assets/sprites/gUnknown_08297AC8.png \
	assets/sprites/gUnknown_08297BF4.png \
	assets/sprites/gUnknown_08297D20.png \
	assets/sprites/gUnknown_08297E4C.png \
	assets/sprites/gUnknown_08297F78.png \
	assets/sprites/gUnknown_082980A4.png \
	assets/sprites/gUnknown_082981D0.png \
	assets/sprites/gUnknown_082982FC.png \
	assets/sprites/gUnknown_08298428.png \
	assets/sprites/gUnknown_08298554.png \
	assets/sprites/gUnknown_08298680.png \
	assets/sprites/gUnknown_082987AC.png \
	assets/sprites/gUnknown_082988D8.png \
	assets/sprites/gUnknown_08298A04.png \
	assets/sprites/gUnknown_08298B30.png \
	assets/sprites/gUnknown_08298C5C.png \
	assets/sprites/gUnknown_08298D88.png \
	assets/sprites/gUnknown_08298EB4.png \
	assets/sprites/gUnknown_08298FE0.png \
	assets/sprites/gUnknown_0829910C.png \
	assets/sprites/gUnknown_08299238.png \
	assets/sprites/gUnknown_08299364.png \
	assets/sprites/gUnknown_08299490.png \
	assets/sprites/gUnknown_082995BC.png \
	assets/sprites/gUnknown_082996E8.png \
	assets/sprites/gUnknown_08299814.png \
	assets/sprites/gUnknown_08299940.png \
	assets/sprites/gUnknown_08299BF8.png \
	assets/sprites/gUnknown_0829A824.png \
	assets/sprites/gUnknown_0829BA6C.png \
	assets/sprites/gUnknown_0829C4B4.png \
	assets/sprites/gUnknown_0829CEFC.png \
	assets/sprites/gUnknown_0829D1C4.png \
	assets/sprites/gUnknown_0829D9F0.png \
	assets/sprites/gUnknown_0829DCB8.png \
	assets/sprites/gUnknown_0829EDBC.png \
	assets/sprites/gUnknown_0829F674.png \
	assets/sprites/gUnknown_082A0F9C.png \
	assets/sprites/gUnknown_082A147C.png \
	assets/sprites/gUnknown_082A22C4.png \
	assets/sprites/gUnknown_082A435C.png \
	assets/sprites/gUnknown_082A4C84.png \
	assets/sprites/gUnknown_082A5D64.png \
	assets/sprites/gUnknown_082A618C.png \
	assets/sprites/gUnknown_082A6918.png \
	assets/sprites/gUnknown_082A6CF8.png \
	assets/sprites/gUnknown_082A70B4.png \
	assets/sprites/gUnknown_082A745C.png \
	assets/sprites/gUnknown_082A793C.png \
	assets/sprites/gUnknown_082A7DF4.png \
	assets/sprites/gUnknown_082A983C.png \
	assets/sprites/gUnknown_082AB8D4.png \
	assets/sprites/gUnknown_082AC2B0.png \
	assets/sprites/gUnknown_082ADADC.png \
	assets/sprites/gUnknown_082ADE24.png \
	assets/sprites/gUnknown_082AEE50.png \
	assets/sprites/gUnknown_082AEF7C.png \
	assets/sprites/BonusPresent.png \
	assets/sprites/BonusPresentSquish.png \
	assets/sprites/gUnknown_082B30B4.png \
	assets/sprites/gUnknown_082B354C.png \
	assets/sprites/gUnknown_082B45E4.png \
	assets/sprites/gUnknown_082B567C.png \
	assets/sprites/gUnknown_082B6714.png \
	assets/sprites/gUnknown_082B7884.png \
	assets/sprites/gUnknown_082B8F5C.png \
	assets/sprites/gUnknown_082C32C4.png \
	assets/sprites/gUnknown_082C37C8.png \
	assets/sprites/gUnknown_082C4714.png \
	assets/sprites/gUnknown_082C6B40.png \
	assets/sprites/gUnknown_082C6C6C.png \
	assets/sprites/gUnknown_082C6D98.png \
	assets/sprites/gUnknown_082C6EC4.png \
	assets/sprites/gUnknown_082C72F0.png \
	assets/sprites/gUnknown_082C735C.png \
	assets/sprites/gUnknown_082C7788.png \
	assets/sprites/gUnknown_082C7BB4.png \
	assets/sprites/gUnknown_082C7FE0.png \
	assets/sprites/gUnknown_082C810C.png \
	assets/sprites/gUnknown_082C8238.png \
	assets/sprites/gUnknown_082C82E4.png \
	assets/sprites/gUnknown_082C8510.png \
	assets/sprites/gUnknown_082C873C.png \
	assets/sprites/gUnknown_082C9768.png \
	assets/sprites/gUnknown_082CA794.png \
	assets/sprites/gUnknown_082CA9C0.png \
	assets/sprites/gUnknown_082CABEC.png \
	assets/sprites/gUnknown_082CAD18.png \
	assets/sprites/gUnknown_082CB144.png \
	assets/sprites/gUnknown_082CB570.png \
	assets/sprites/gUnknown_082CB5DC.png \
	assets/sprites/gUnknown_082CB708.png \
	assets/sprites/gUnknown_082CB834.png \
	assets/sprites/gUnknown_082CB960.png \
	assets/sprites/gUnknown_082CBB8C.png \
	assets/sprites/gUnknown_082CBDB8.png \
	assets/sprites/gUnknown_082CBFE4.png \
	assets/sprites/gUnknown_082CC090.png \
	assets/sprites/gUnknown_082CC4BC.png \
	assets/sprites/gUnknown_082CC8E8.png \
	assets/sprites/gUnknown_082CD914.png \
	assets/sprites/gUnknown_082CDA40.png \
	assets/sprites/gUnknown_082CDB6C.png \
	assets/sprites/gUnknown_082CDC98.png \
	assets/sprites/gUnknown_082CDDC4.png \
	assets/sprites/gUnknown_082CDEF0.png \
	assets/sprites/gUnknown_082CE31C.png \
	assets/sprites/gUnknown_082CE748.png \
	assets/sprites/gUnknown_082CE7F4.png \
	assets/sprites/gUnknown_082CE920.png \
	assets/sprites/gUnknown_082CE9CC.png \
	assets/sprites/gUnknown_082CEDF8.png \
	assets/sprites/gUnknown_082CF224.png \
	assets/sprites/gUnknown_082CFA50.png \
	assets/sprites/gUnknown_082D0A7C.png \
	assets/sprites/gUnknown_082D0BA8.png \
	assets/sprites/gUnknown_082D0CD4.png \
	assets/sprites/gUnknown_082D0E00.png \
	assets/sprites/gUnknown_082D122C.png \
	assets/sprites/gUnknown_082D1358.png \
	assets/sprites/gUnknown_082D1404.png \
	assets/sprites/gUnknown_082D2430.png \
	assets/sprites/gUnknown_082D345C.png \
	assets/sprites/gUnknown_082D3588.png \
	assets/sprites/gUnknown_082D36B4.png \
	assets/sprites/gUnknown_082D37E0.png \
	assets/sprites/gUnknown_082D390C.png \
	assets/sprites/gUnknown_082D3D38.png \
	assets/sprites/gUnknown_082D4D64.png \
	assets/sprites/gUnknown_082D5D90.png \
	assets/sprites/gUnknown_082D6DBC.png \
	assets/sprites/gUnknown_082D6EE8.png \
	assets/sprites/gUnknown_082D7014.png \
	assets/sprites/gUnknown_082D7140.png \
	assets/sprites/gUnknown_082D726C.png \
	assets/sprites/gUnknown_082D7698.png \
	assets/sprites/gUnknown_082D78C4.png \
	assets/sprites/gUnknown_082D79F0.png \
	assets/sprites/gUnknown_082D8A1C.png \
	assets/sprites/gUnknown_082D9A48.png \
	assets/sprites/gUnknown_082DAA74.png \
	assets/sprites/gUnknown_082DAEA0.png \
	assets/sprites/gUnknown_082DB2CC.png \
	assets/sprites/gUnknown_082DB3F8.png \
	assets/sprites/gUnknown_082DB524.png \
	assets/sprites/gUnknown_082DB650.png \
	assets/sprites/gUnknown_082DB77C.png \
	assets/sprites/gUnknown_082DB9A8.png \
	assets/sprites/gUnknown_082DBBD4.png \
	assets/sprites/gUnknown_082DBD00.png \
	assets/sprites/gUnknown_082DC52C.png \
	assets/sprites/gUnknown_082DCD58.png \
	assets/sprites/gUnknown_082DCE04.png \
	assets/sprites/gUnknown_082DD030.png \
	assets/sprites/gUnknown_082DD25C.png \
	assets/sprites/gUnknown_082DD488.png \
	assets/sprites/gUnknown_082DD6B4.png \
	assets/sprites/gUnknown_082DDAE0.png \
	assets/sprites/gUnknown_082DDF0C.png \
	assets/sprites/gUnknown_082DE338.png \
	assets/sprites/gUnknown_082DE464.png \
	assets/sprites/gUnknown_082DE590.png \
	assets/sprites/gUnknown_082DE6BC.png \
	assets/sprites/gUnknown_082DE7E8.png \
	assets/sprites/gUnknown_082DEC14.png \
	assets/sprites/gUnknown_082DF040.png \
	assets/sprites/gUnknown_082DF46C.png \
	assets/sprites/gUnknown_082E0498.png \
	assets/sprites/gUnknown_082E14C4.png \
	assets/sprites/gUnknown_082E1CF0.png \
	assets/sprites/gUnknown_082E211C.png \
	assets/sprites/gUnknown_082E2948.png \
	assets/sprites/gUnknown_082E29F4.png \
	assets/sprites/gUnknown_082E2E20.png \
	assets/sprites/gUnknown_082E2F4C.png \
	assets/sprites/gUnknown_082E3078.png \
	assets/sprites/gUnknown_082E32A4.png \
	assets/sprites/gUnknown_082E33D0.png \
	assets/sprites/gUnknown_082E343C.png \
	assets/sprites/gUnknown_082E3668.png \
	assets/sprites/gUnknown_082E3894.png \
	assets/sprites/gUnknown_082E3AC0.png \
	assets/sprites/gUnknown_082E3CEC.png \
	assets/sprites/gUnknown_082E3F18.png \
	assets/sprites/gUnknown_082E4044.png \
	assets/sprites/gUnknown_082E4270.png \
	assets/sprites/gUnknown_082E449C.png \
	assets/sprites/gUnknown_082E46C8.png \
	assets/sprites/gUnknown_082E48F4.png \
	assets/sprites/gUnknown_082E4B20.png \
	assets/sprites/gUnknown_082E4C4C.png \
	assets/sprites/gUnknown_082E4E78.png \
	assets/sprites/gUnknown_082E4FA4.png \
	assets/sprites/gUnknown_082E53D0.png \
	assets/sprites/gUnknown_082E57FC.png \
	assets/sprites/gUnknown_082E5C28.png \
	assets/sprites/gUnknown_082E6054.png \
	assets/sprites/gUnknown_082E6480.png \
	assets/sprites/gUnknown_082E65AC.png \
	assets/sprites/gUnknown_082E66D8.png \
	assets/sprites/gUnknown_082E6768.png \
	assets/sprites/gUnknown_082E6948.png \
	assets/sprites/gUnknown_082E8198.png \
	assets/sprites/gUnknown_082E830C.png \
	assets/sprites/gUnknown_082E84DC.png \
	assets/sprites/gUnknown_082E8908.png \
	assets/sprites/gUnknown_082E8A58.png \
	assets/sprites/gUnknown_082E8EA8.png \
	assets/sprites/gUnknown_082E911C.png \
	assets/sprites/gUnknown_082E92C8.png \
	assets/sprites/gUnknown_082E94F4.png \
	assets/sprites/gUnknown_082E9654.png \
	assets/sprites/gUnknown_082EAE80.png \
	assets/sprites/gUnknown_082EAF98.png \
	assets/sprites/gUnknown_082EB1C4.png \
	assets/sprites/gUnknown_082EB2B8.png \
	assets/sprites/gUnknown_082EBB08.png \
	assets/sprites/gUnknown_082EBC34.png \
	assets/sprites/gUnknown_082EBE60.png \
	assets/sprites/gUnknown_082EC0D4.png \
	assets/sprites/gUnknown_082EC1EC.png \
	assets/sprites/gUnknown_082EC2E0.png \
	assets/sprites/gUnknown_082EC750.png \
	assets/sprites/gUnknown_082ECB40.png \
	assets/sprites/gUnknown_082ECF9C.png \
	assets/sprites/gUnknown_082ED288.png \
	assets/sprites/gUnknown_082ED4F4.png \
	assets/sprites/gUnknown_082ED5C4.png \
	assets/sprites/gUnknown_082ED670.png \
	assets/sprites/gUnknown_082ED79C.png \
	assets/sprites/gUnknown_082ED8C8.png \
	assets/sprites/gUnknown_082ED9F4.png \
	assets/sprites/gUnknown_082EDB20.png \
	assets/sprites/gUnknown_082EDC4C.png \
	assets/sprites/gUnknown_082EDCF8.png \
	assets/sprites/gUnknown_082EDE24.png \
	assets/sprites/gUnknown_082EDF50.png \
	assets/sprites/gUnknown_082EE07C.png \
	assets/sprites/gUnknown_082EE128.png \
	assets/sprites/gUnknown_082EE194.png \
	assets/sprites/gUnknown_082EE264.png \
	assets/sprites/gUnknown_082EE4B4.png \
	assets/sprites/gUnknown_082EE704.png \
	assets/sprites/gUnknown_082EE954.png \
	assets/sprites/gUnknown_082EEBA4.png \
	assets/sprites/gUnknown_082EEDF4.png \
	assets/sprites/gUnknown_082EEF44.png \
	assets/sprites/gUnknown_082EF194.png \
	assets/sprites/gUnknown_082EF3E4.png \
	assets/sprites/gUnknown_082EF634.png \
	assets/sprites/gUnknown_082EF784.png \
	assets/sprites/gUnknown_082EF92C.png \
	assets/sprites/gUnknown_082EFB58.png \
	assets/sprites/gUnknown_082EFC04.png \
	assets/sprites/gUnknown_082EFC70.png \
	assets/sprites/gUnknown_082EFCBC.png \
	assets/sprites/gUnknown_082EFD08.png \
	assets/sprites/gUnknown_082EFDB4.png \
	assets/sprites/gUnknown_082EFE00.png \
	assets/sprites/gUnknown_082EFE4C.png \
	assets/sprites/gUnknown_082EFE98.png \
	assets/sprites/gUnknown_082EFF2C.png \
	assets/sprites/gUnknown_082EFFB8.png \
	assets/sprites/gUnknown_082F0004.png \
	assets/sprites/gUnknown_082F01B8.png \
	assets/sprites/gUnknown_082F0344.png \
	assets/sprites/gUnknown_082F0444.png \
	assets/sprites/gUnknown_082F0770.png \
	assets/sprites/gUnknown_082F07BC.png \
	assets/sprites/gUnknown_082F0808.png \
	assets/sprites/gUnknown_082F0854.png \
	assets/sprites/gUnknown_082F08A0.png \
	assets/sprites/gUnknown_082F094C.png \
	assets/sprites/gUnknown_082F0998.png \
	assets/sprites/gUnknown_082F0A68.png \
	assets/sprites/gUnknown_082F0B38.png \
	assets/sprites/gUnknown_082F0BE4.png \
	assets/sprites/gUnknown_082F0C90.png \
	assets/sprites/gUnknown_082F0CFC.png \
	assets/sprites/gUnknown_082F0DA8.png \
	assets/sprites/gUnknown_082F11D4.png \
	assets/sprites/gUnknown_082F1600.png \
	assets/sprites/gUnknown_082F1718.png \
	assets/sprites/gUnknown_082F1930.png \
	assets/sprites/gUnknown_082F1B48.png \
	assets/sprites/gUnknown_082F1CF4.png \
	assets/sprites/gUnknown_082F1E68.png \
	assets/sprites/gUnknown_082F2014.png \
	assets/sprites/gUnknown_082F20C0.png \
	assets/sprites/gUnknown_082F216C.png \
	assets/sprites/gUnknown_082F2218.png \
	assets/sprites/gUnknown_082F22C4.png \
	assets/sprites/gUnknown_082F2370.png \
	assets/sprites/gUnknown_082F241C.png \
	assets/sprites/gUnknown_082F2648.png \
	assets/sprites/gUnknown_082F2874.png \
	assets/sprites/gUnknown_082F2AA0.png \
	assets/sprites/gUnknown_082F2CCC.png \
	assets/sprites/gUnknown_082F2EF8.png \
	assets/sprites/gUnknown_082F3124.png \
	assets/sprites/gUnknown_082F3350.png \
	assets/sprites/gUnknown_082F357C.png \
	assets/sprites/gUnknown_082F37A8.png \
	assets/sprites/gUnknown_082F37F4.png \
	assets/sprites/gUnknown_082F39F8.png \
	assets/sprites/gUnknown_082F3FC0.png \
	assets/sprites/gUnknown_082F4B18.png \
	assets/sprites/gUnknown_082F4F3C.png \
	assets/sprites/gUnknown_082F52AC.png \
	assets/sprites/gUnknown_082F5BA4.png \
	assets/sprites/gUnknown_082F67D0.png \
	assets/sprites/gUnknown_082F6AE0.png \
	assets/sprites/gUnknown_082F8F0C.png \
	assets/sprites/gUnknown_082F8FB8.png \
	assets/sprites/gUnknown_082F9184.png \
	assets/sprites/gUnknown_082F9B1C.png \
	assets/sprites/gUnknown_082F9E54.png \
	assets/sprites/gUnknown_082FA5C4.png \
	assets/sprites/gUnknown_082FD174.png \
	assets/sprites/gUnknown_08303A9C.png \
	assets/sprites/gUnknown_083060B0.png \
	assets/sprites/gUnknown_0830E8E0.png \
	assets/sprites/gUnknown_0833EE88.png \
	assets/sprites/gUnknown_08342EB4.png \
	assets/sprites/gUnknown_08343268.png \
	assets/sprites/gUnknown_0834811C.png \
	assets/sprites/gUnknown_0834CD48.png \
	assets/sprites/gUnknown_0834D24C.png \
	assets/sprites/gUnknown_0834EF50.png \
	assets/sprites/gUnknown_08350DBC.png \
	assets/sprites/gUnknown_08355644.png \
	assets/sprites/gUnknown_0835DACC.png \
	assets/sprites/gUnknown_08365AF8.png \
	assets/sprites/gUnknown_08366380.png \
	assets/sprites/gUnknown_0836E4A8.png \
	assets/sprites/gUnknown_083706F0.png \
	assets/sprites/gUnknown_08374938.png \
	assets/sprites/gUnknown_08376B80.png \
	assets/sprites/gUnknown_0837ACA8.png \
	assets/sprites/gUnknown_0837CEF0.png \
	assets/sprites/gUnknown_08381018.png \
	assets/sprites/gUnknown_0838374C.png \
	assets/sprites/gUnknown_08384504.png \
	assets/sprites/gUnknown_0838786C.png \
	assets/sprites/gUnknown_0838DB44.png \
	assets/sprites/gUnknown_08392C6C.png \
	assets/sprites/gUnknown_08394EB4.png \
	assets/sprites/gUnknown_083A52AC.png \
	assets/sprites/gUnknown_083C1710.png \
	assets/sprites/gUnknown_083DE8A4.png \
	assets/sprites/gUnknown_083E17C4.png \
	assets/sprites/gUnknown_083E7134.png \
	assets/sprites/gUnknown_083E8A38.png \
	assets/sprites/gUnknown_083EA73C.png \
	assets/sprites/gUnknown_083ECC44.png \
	assets/sprites/gUnknown_083F4E8C.png \
	assets/sprites/gUnknown_083F9824.png \
	assets/sprites/gUnknown_083FE4F4.png \
	assets/sprites/gUnknown_084068EC.png \
	assets/sprites/gUnknown_0840A9F0.png \
	assets/sprites/gUnknown_0840C73C.png \
	assets/sprites/gUnknown_0840D9B0.png \
	assets/sprites/gUnknown_0840E6FC.png \
	assets/sprites/gUnknown_0840FC64.png \
	assets/sprites/gUnknown_08415EAC.png \
	assets/sprites/gUnknown_0841A0F4.png \
	assets/sprites/gUnknown_0841E45C.png \
	assets/sprites/gUnknown_08424560.png \
	assets/sprites/gUnknown_08426510.png \
	assets/sprites/gUnknown_0842D00C.png \
	assets/sprites/gUnknown_084325C4.png \
	assets/sprites/gUnknown_0843580C.png \
	assets/sprites/gUnknown_08439A54.png \
	assets/sprites/gUnknown_0843DEDC.png \
	assets/sprites/gUnknown_0844631C.png \
	assets/sprites/gUnknown_0844DE60.png \
	assets/sprites/gUnknown_08453CA8.png \
	assets/sprites/gUnknown_08457D40.png \
	assets/sprites/gUnknown_08458F1C.png \
	assets/sprites/gUnknown_0845C444.png \
	assets/sprites/gUnknown_0845E56C.png \
	assets/sprites/gUnknown_084608D4.png \
	assets/sprites/gUnknown_08466B1C.png \
	assets/sprites/gUnknown_0846ACD4.png \
	assets/sprites/gUnknown_0846DEB0.png \
	assets/sprites/gUnknown_084714F8.png \
	assets/sprites/gUnknown_08475A10.png \
	assets/sprites/gUnknown_0847EB80.png \
	assets/sprites/gUnknown_084816E8.png \
	assets/sprites/gUnknown_08487810.png \
	assets/sprites/gUnknown_08489B78.png \
	assets/sprites/gUnknown_0848FBA4.png \
	assets/sprites/gUnknown_084900A8.png \
	assets/sprites/gUnknown_08491EF0.png \
	assets/sprites/gUnknown_084960A8.png \
	assets/sprites/gUnknown_084992F0.png \
	assets/sprites/gUnknown_0849D388.png \
	assets/sprites/gUnknown_0849E4B0.png \
	assets/sprites/gUnknown_084A05D8.png \
	assets/sprites/gUnknown_084A27FC.png \
	assets/sprites/gUnknown_084A668C.png \
	assets/sprites/gUnknown_084AB314.png \
	assets/sprites/gUnknown_084AB8CC.png \
	assets/sprites/gUnknown_084ABE3C.png \
	assets/sprites/gUnknown_084ADF64.png \
	assets/sprites/gUnknown_084B0068.png \
	assets/sprites/gUnknown_084B1EB0.png \
	assets/sprites/gUnknown_084B61F4.png \
	assets/sprites/gUnknown_084BC27C.png \
	assets/sprites/gUnknown_084C462C.png \
	assets/sprites/gUnknown_084DE7E4.png \
	assets/sprites/gUnknown_084E190C.png \
	assets/sprites/gUnknown_084E3B54.png \
	assets/sprites/gUnknown_084E7C58.png \
	assets/sprites/gUnknown_084E995C.png \
	assets/sprites/gUnknown_084EB7EC.png \
	assets/sprites/gUnknown_084F0114.png \
	assets/sprites/gUnknown_084F2218.png \
	assets/sprites/gUnknown_084F3F40.png \
	assets/sprites/gUnknown_084F61D0.png \
	assets/sprites/gUnknown_084FAAD4.png \
	assets/sprites/gUnknown_084FC7D8.png \
	assets/sprites/gUnknown_084FE668.png \
	assets/sprites/gUnknown_08502F6C.png \
	assets/sprites/gUnknown_08504C70.png \
	assets/sprites/gUnknown_08506AB8.png \
	assets/sprites/gUnknown_0850AB98.png \
	assets/sprites/gUnknown_0850C5E0.png \
	assets/sprites/gUnknown_085106E4.png \
	assets/sprites/gUnknown_085123E8.png \
	assets/sprites/gUnknown_08514014.png \
	assets/sprites/gUnknown_08514480.png \
	assets/sprites/gUnknown_085188D0.png \
	assets/sprites/gUnknown_085191F8.png \
	assets/sprites/gUnknown_0851B440.png \
	assets/sprites/gUnknown_0851F568.png \
	assets/sprites/gUnknown_08521690.png \
	assets/sprites/gUnknown_085238D8.png \
	assets/sprites/gUnknown_08527B20.png \
	assets/sprites/gUnknown_0852BD68.png \
	assets/sprites/gUnknown_0852FFB0.png \
	assets/sprites/gUnknown_085341F8.png \
	assets/sprites/gUnknown_08538040.png \
	assets/sprites/gUnknown_0853C3A8.png \
	assets/sprites/gUnknown_0854241C.png \
	assets/sprites/gUnknown_08543384.png \
	assets/sprites/gUnknown_0854953C.png \
	assets/sprites/gUnknown_0854C784.png \
	assets/sprites/gUnknown_085509CC.png \
	assets/sprites/gUnknown_08554D7C.png \
	assets/sprites/gUnknown_0855B854.png \
	assets/sprites/gUnknown_08560AE4.png \
	assets/sprites/gUnknown_0856552C.png \
	assets/sprites/gUnknown_08569774.png \
	assets/sprites/gUnknown_0856D92C.png \
	assets/sprites/gUnknown_08570AC0.png \
	assets/sprites/gUnknown_085737E8.png \
	assets/sprites/gUnknown_08575910.png \
	assets/sprites/gUnknown_08577A38.png \
	assets/sprites/gUnknown_08579C80.png \
	assets/sprites/gUnknown_0857A5A8.png \
	assets/sprites/gUnknown_0857AFF0.png \
	assets/sprites/gUnknown_0857C358.png \
	assets/sprites/gUnknown_0857E094.png \
	assets/sprites/gUnknown_085809C0.png \
	assets/sprites/gUnknown_08582FB0.png \
	assets/sprites/gUnknown_08583E88.png \
	assets/sprites/gUnknown_085852D0.png \
	assets/sprites/gUnknown_08586638.png \
	assets/sprites/gUnknown_085882C0.png \
	assets/sprites/gUnknown_08590748.png \
	assets/sprites/gUnknown_08592F30.png \
	assets/sprites/gUnknown_08595978.png \
	assets/sprites/gUnknown_08596AA0.png \
	assets/sprites/gUnknown_085973C8.png \
	assets/sprites/gUnknown_08597E10.png \
	assets/sprites/gUnknown_08599098.png \
	assets/sprites/gUnknown_0859B400.png \
	assets/sprites/gUnknown_0859CE48.png \
	assets/sprites/gUnknown_0859E11C.png \
	assets/sprites/gUnknown_0859FD44.png \
	assets/sprites/gUnknown_085A0570.png \
	assets/sprites/gUnknown_085A079C.png \
	assets/sprites/gUnknown_085A09C8.png \
	assets/sprites/gUnknown_085A0C60.png \
	assets/sprites/gUnknown_085A10B0.png \
	assets/sprites/gUnknown_085A1224.png \
	assets/sprites/gUnknown_085A1F4C.png \
	assets/sprites/gUnknown_085A2994.png \
	assets/sprites/gUnknown_085A3BDC.png \
	assets/sprites/gUnknown_085A5CC4.png \
	assets/sprites/gUnknown_085A767C.png \
	assets/sprites/gUnknown_085A8434.png \
	assets/sprites/gUnknown_085A8BEC.png \
	assets/sprites/gUnknown_085A9314.png \
	assets/sprites/gUnknown_085A9CF0.png \
	assets/sprites/gUnknown_085AA228.png \
	assets/sprites/gUnknown_085AB070.png \
	assets/sprites/gUnknown_085AC1B8.png \
	assets/sprites/gUnknown_085AD22C.png \
	assets/sprites/gUnknown_085AD684.png \
	assets/sprites/gUnknown_085AE0B0.png \
	assets/sprites/gUnknown_085AE518.png \
	assets/sprites/gUnknown_085B0080.png \
	assets/sprites/gUnknown_085B18AC.png \
	assets/sprites/gUnknown_085B1A54.png \
	assets/sprites/gUnknown_085B276C.png \
	assets/sprites/gUnknown_085B4CB0.png \
	assets/sprites/gUnknown_085B61D8.png \
	assets/sprites/gUnknown_085B836C.png \
	assets/sprites/gUnknown_085B8F4C.png \
	assets/sprites/gUnknown_085BA190.png \
	assets/sprites/gUnknown_085BC3D8.png \
	assets/sprites/gUnknown_085BD590.png \
	assets/sprites/gUnknown_085BE2B8.png \
	assets/sprites/gUnknown_085BF3BC.png \
	assets/sprites/gUnknown_085C02E4.png \
	assets/sprites/gUnknown_085C140C.png \
	assets/sprites/gUnknown_085C245C.png \
	assets/sprites/gUnknown_085C2588.png \
	assets/sprites/gUnknown_085C2634.png \
	assets/sprites/gUnknown_085C26E0.png \
	assets/sprites/gUnknown_085C278C.png \
	assets/sprites/gUnknown_085C2838.png \
	assets/sprites/gUnknown_085C28A8.png \
	assets/sprites/gUnknown_085C29F8.png \
	assets/sprites/gUnknown_085C2BB4.png \
	assets/sprites/gUnknown_085C2EF0.png \
	assets/sprites/gUnknown_085C3220.png \
	assets/sprites/gUnknown_085C724C.png \
	assets/sprites/gUnknown_085C7678.png \
	assets/sprites/gUnknown_085C7D08.png \
	assets/sprites/gUnknown_085CBD34.png \
	assets/sprites/gUnknown_085CC160.png \
	assets/sprites/gUnknown_085CC98C.png \
	assets/sprites/gUnknown_085CD41C.png \
	assets/sprites/gUnknown_085CD848.png \
	assets/sprites/gUnknown_085CE074.png \
	assets/sprites/gUnknown_085CE8A0.png \
	assets/sprites/gUnknown_085CF0CC.png \
	assets/sprites/gUnknown_085CF9D0.png \
	assets/sprites/gUnknown_085D01D4.png \
	assets/sprites/gUnknown_085D0900.png \
	assets/sprites/gUnknown_085D76B8.png \
	assets/sprites/gUnknown_085DCB74.png \
	assets/sprites/gUnknown_085DCCCC.png \
	assets/sprites/gUnknown_085DCF88.png \
	assets/sprites/gUnknown_085DD158.png \
	assets/sprites/gUnknown_085DD74C.png \
	assets/sprites/gUnknown_085DDE2C.png \
	assets/sprites/gUnknown_085DE4AC.png \
	assets/sprites/gUnknown_085DEA9C.png \
	assets/sprites/gUnknown_085DEFAC.png \
	assets/sprites/gUnknown_085DF63C.png \
	assets/sprites/gUnknown_085DFCCC.png \
	assets/sprites/gUnknown_085E0164.png \
	assets/sprites/gUnknown_085E05FC.png \
	assets/sprites/gUnknown_085E068C.png \
	assets/sprites/gUnknown_085E07DC.png \
	assets/sprites/gUnknown_085E0908.png \
	assets/sprites/gUnknown_085E09B4.png \
	assets/sprites/gUnknown_085E0A84.png \
	assets/sprites/gUnknown_085E0B14.png \
	assets/sprites/gUnknown_085E0C64.png \
	assets/sprites/gUnknown_085E0D90.png \
	assets/sprites/gUnknown_085E0E3C.png \
	assets/sprites/gUnknown_085E0F0C.png \
	assets/sprites/gUnknown_085E105C.png \
	assets/sprites/gUnknown_085E1188.png \
	assets/sprites/gUnknown_085E1234.png \
	assets/sprites/gUnknown_085E134C.png \
	assets/sprites/gUnknown_085E1C2C.png \
	assets/sprites/gUnknown_085E200C.png \
	assets/sprites/gUnknown_085E2338.png \
	assets/sprites/gUnknown_085E2464.png \
	assets/sprites/gUnknown_085E24D0.png \
	assets/sprites/gUnknown_085E253C.png \
	assets/sprites/gUnknown_085E25A8.png \
	assets/sprites/gUnknown_085E2614.png \
	assets/sprites/gUnknown_085E2680.png \
	assets/sprites/gUnknown_085E26EC.png \
	assets/sprites/gUnknown_085E2758.png \
	assets/sprites/gUnknown_085E27C4.png \
	assets/sprites/gUnknown_085E2830.png \
	assets/sprites/gUnknown_085E2B00.png \
	assets/sprites/gUnknown_085E3190.png \
	assets/sprites/gUnknown_085E3820.png \
	assets/sprites/gUnknown_085E804C.png \
	assets/sprites/gUnknown_085E8478.png \
	assets/sprites/gUnknown_085E88A4.png \
	assets/sprites/gUnknown_085E8CD0.png \
	assets/sprites/gUnknown_085E9360.png \
	assets/sprites/gUnknown_085EAB8C.png \
	assets/sprites/gUnknown_085EAD24.png \
	assets/sprites/gUnknown_085EAF50.png \
	assets/sprites/gUnknown_085EB0B0.png \
	assets/sprites/gUnknown_085EB490.png \
	assets/sprites/gUnknown_085EB828.png \
	assets/sprites/gUnknown_085EBC70.png \
	assets/sprites/gUnknown_085ECC9C.png \
	assets/sprites/gUnknown_085ED4C8.png \
	assets/sprites/gUnknown_085EDCF4.png \
	assets/sprites/gUnknown_085EE520.png \
	assets/sprites/gUnknown_085EED4C.png \
	assets/sprites/gUnknown_085EF578.png \
	assets/sprites/gUnknown_085EFDA4.png \
	assets/sprites/gUnknown_085F05D0.png \
	assets/sprites/gUnknown_085F0DFC.png \
	assets/sprites/gUnknown_085F1628.png \
	assets/sprites/gUnknown_085F1E78.png \
	assets/sprites/gUnknown_085F22A4.png \
	assets/sprites/gUnknown_085F2350.png \
	assets/sprites/gUnknown_085F24B0.png \
	assets/sprites/gUnknown_085F2D88.png \
	assets/sprites/gUnknown_085F3140.png \
	assets/sprites/gUnknown_085F3C84.png \
	assets/sprites/gUnknown_085F41AC.png \
	assets/sprites/gUnknown_085F4CDC.png \
	assets/sprites/gUnknown_085F4F74.png \
	assets/sprites/gUnknown_085F529C.png \
	assets/sprites/gUnknown_085F58E4.png \
	assets/sprites/gUnknown_085F6134.png \
	assets/sprites/gUnknown_085F6390.png \
	assets/sprites/gUnknown_085F6B58.png \
	assets/sprites/gUnknown_085F73F0.png \
	assets/sprites/gUnknown_085F79A8.png \
	assets/sprites/gUnknown_085F86D0.png \
	assets/sprites/gUnknown_085F9118.png \
	assets/sprites/gUnknown_085FA360.png \
	assets/sprites/gUnknown_085FB7E4.png \
	assets/sprites/gUnknown_085FF274.png \
	assets/sprites/gUnknown_08606A24.png \
	assets/sprites/gUnknown_0860FDD4.png \
	assets/sprites/gUnknown_08611A48.png \
	assets/sprites/gUnknown_08614338.png \
	assets/sprites/gUnknown_08616C30.png \
	assets/sprites/gUnknown_08617080.png \
	assets/sprites/gUnknown_086172F0.png \
	assets/sprites/gUnknown_08617830.png \
	assets/sprites/gUnknown_08617B04.png \
	assets/sprites/gUnknown_08617F24.png \
	assets/sprites/gUnknown_086180B4.png \
	assets/sprites/gUnknown_086183FC.png \
	assets/sprites/gUnknown_08618900.png \
	assets/sprites/gUnknown_08619104.png \
	assets/sprites/gUnknown_08619974.png \
	assets/sprites/gUnknown_08619AE0.png \
	assets/sprites/gUnknown_08619C88.png \
	assets/sprites/gUnknown_0861ADB0.png \
	assets/sprites/gUnknown_0861AF10.png \
	assets/sprites/gUnknown_0861B2A8.png \
	assets/sprites/gUnknown_0861B564.png \
	assets/sprites/gUnknown_0861BA2C.png \
	assets/sprites/gUnknown_0861BEC4.png \
	assets/sprites/gUnknown_0861C15C.png \
	assets/sprites/gUnknown_0861C484.png \
	assets/sprites/gUnknown_0861C964.png \
	assets/sprites/gUnknown_0861CE1C.png \
	assets/sprites/gUnknown_0861D490.png \
	assets/sprites/gUnknown_0861D684.png \
	assets/sprites/gUnknown_0861DA70.png \
	assets/sprites/gUnknown_0861E0B8.png \
	assets/sprites/gUnknown_086201E0.png \
	assets/sprites/gUnknown_08621308.png \
	assets/sprites/gUnknown_08622550.png \
	assets/sprites/gUnknown_0862297C.png \
	assets/sprites/gUnknown_08622C68.png \
	assets/sprites/gUnknown_08624F00.png \
	assets/sprites/gUnknown_08625348.png \
	assets/sprites/gUnknown_08625900.png \
	assets/sprites/gUnknown_08626148.png \
	assets/sprites/gUnknown_086269E0.png \
	assets/sprites/gUnknown_08626D08.png \
	assets/sprites/gUnknown_08627308.png \
	assets/sprites/gUnknown_08627668.png \
	assets/sprites/gUnknown_08627BB0.png \
	assets/sprites/gUnknown_086280D8.png \
	assets/sprites/gUnknown_086283F0.png \
	assets/sprites/gUnknown_08628718.png \
	assets/sprites/gUnknown_08628CAC.png \
	assets/sprites/gUnknown_0862930C.png \
	assets/sprites/gUnknown_086297C4.png \
	assets/sprites/gUnknown_08629EEC.png \
	assets/sprites/gUnknown_0862A068.png \
	assets/sprites/gUnknown_0862A350.png \
	assets/sprites/gUnknown_0862A7E8.png \
	assets/sprites/gUnknown_0862AB10.png \
	assets/sprites/gUnknown_0862AFF0.png \
	assets/sprites/gUnknown_0862B4A8.png \
	assets/sprites/gUnknown_0862BBD0.png \
	assets/sprites/gUnknown_0862CCF8.png \
	assets/sprites/gUnknown_0862D124.png \
	assets/sprites/gUnknown_0862D1D0.png \
	assets/sprites/gUnknown_0862D2C4.png \
	assets/sprites/gUnknown_0862D4B8.png \
	assets/sprites/gUnknown_0862D664.png \
	assets/sprites/gUnknown_0862D8FC.png \
	assets/sprites/gUnknown_0862DD94.png \
	assets/sprites/gUnknown_0862E2BC.png \
	assets/sprites/gUnknown_0862E554.png \
	assets/sprites/gUnknown_0862E780.png \
	assets/sprites/gUnknown_0862E9D0.png \
	assets/sprites/gUnknown_0862F010.png \
	assets/sprites/gUnknown_0862FE58.png \
	assets/sprites/gUnknown_086400E8.png \
	assets/sprites/gUnknown_08640F34.png \
	assets/sprites/gUnknown_086421F0.png \
	assets/sprites/gUnknown_08642D3C.png \
	assets/sprites/gUnknown_0864BF60.png \
	assets/sprites/gUnknown_0864CF38.png \
	assets/sprites/gUnknown_0864D2F0.png \
	assets/sprites/gUnknown_0864DC18.png \
	assets/sprites/gUnknown_0864ED40.png \
	assets/sprites/gUnknown_0864FE68.png \
	assets/sprites/gUnknown_08650F90.png \
	assets/sprites/gUnknown_08652004.png \
	assets/sprites/gUnknown_086521F8.png \
	assets/sprites/gUnknown_08652728.png \
	assets/sprites/gUnknown_08654BE4.png \
	assets/sprites/gUnknown_0865562C.png \
	assets/sprites/gUnknown_08656A58.png \
	assets/sprites/gUnknown_08656C84.png \
	assets/sprites/gUnknown_08656EB0.png \
	assets/sprites/gUnknown_086570DC.png \
	assets/sprites/gUnknown_0865732C.png \
	assets/sprites/gUnknown_08657458.png \
	assets/sprites/gUnknown_08657504.png \
	assets/sprites/gUnknown_086575B0.png \
	assets/sprites/gUnknown_086576C8.png \
	assets/sprites/gUnknown_08657AF4.png \
	assets/sprites/gUnknown_08657BA0.png \
	assets/sprites/gUnknown_08657CDC.png \
	assets/sprites/gUnknown_08657FD0.png \
	assets/sprites/gUnknown_086581E8.png \
	assets/sprites/gUnknown_08658294.png \
	assets/sprites/gUnknown_086583AC.png \
	assets/sprites/gUnknown_086588A8.png \
	assets/sprites/gUnknown_08658CC0.png \
	assets/sprites/gUnknown_08658F58.png \
	assets/sprites/gUnknown_08659004.png \
	assets/sprites/gUnknown_0865911C.png \
	assets/sprites/gUnknown_086591C8.png \
	assets/sprites/gUnknown_08659274.png \
	assets/sprites/gUnknown_08659320.png

all: $(FILES)

clean:
	$(RM) -r $(FILES) $(TMPDIR) assets/sprites/*

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

$(TMPDIR)/palettes/%_bg.gbapal:           baserom.gba ; $(call dump_data,0x81D98+$(PALINDEX)*0x800+0x000+0x000,0x200)
$(TMPDIR)/palettes/%_obj.gbapal:          baserom.gba ; $(call dump_data,0x81D98+$(PALINDEX)*0x800+0x000+0x200,0x200)
$(TMPDIR)/palettes/%_bg_gbplayer.gbapal:  baserom.gba ; $(call dump_data,0x81D98+$(PALINDEX)*0x800+0x400+0x000,0x200)
$(TMPDIR)/palettes/%_obj_gbplayer.gbapal: baserom.gba ; $(call dump_data,0x81D98+$(PALINDEX)*0x800+0x400+0x200,0x200)

# Sub-Palette splitting (for 16-color sprites)
%.0.gbapal:  %.gbapal ; $(call dump_data,0x000,0x20)
%.1.gbapal:  %.gbapal ; $(call dump_data,0x020,0x20)
%.2.gbapal:  %.gbapal ; $(call dump_data,0x040,0x20)
%.3.gbapal:  %.gbapal ; $(call dump_data,0x060,0x20)
%.4.gbapal:  %.gbapal ; $(call dump_data,0x080,0x20)
%.5.gbapal:  %.gbapal ; $(call dump_data,0x0A0,0x20)
%.6.gbapal:  %.gbapal ; $(call dump_data,0x0C0,0x20)
%.7.gbapal:  %.gbapal ; $(call dump_data,0x0E0,0x20)
%.8.gbapal:  %.gbapal ; $(call dump_data,0x100,0x20)
%.9.gbapal:  %.gbapal ; $(call dump_data,0x120,0x20)
%.10.gbapal: %.gbapal ; $(call dump_data,0x140,0x20)
%.11.gbapal: %.gbapal ; $(call dump_data,0x160,0x20)
%.12.gbapal: %.gbapal ; $(call dump_data,0x180,0x20)
%.13.gbapal: %.gbapal ; $(call dump_data,0x1A0,0x20)
%.14.gbapal: %.gbapal ; $(call dump_data,0x1C0,0x20)
%.15.gbapal: %.gbapal ; $(call dump_data,0x1E0,0x20)

### Sprites ###

assets/sprites/test.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/test.8bpp: baserom.gba ; $(call dump_data,0x153188,0x800*12)

assets/sprites/DKHurt.png: GBAGFX_FLAGS := -width 8
assets/sprites/DKHurt.png: $(TMPDIR)/palettes/62_dk_boss_obj.gbapal
$(TMPDIR)/sprites/DKHurt.8bpp: baserom.gba ; $(call dump_data,0x153188,0x800*12)

assets/sprites/MainLevelIconPics.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/MainLevelIconPics.4bpp: baserom.gba ; $(call dump_data,0x5D10C8,0x200*48)
assets/sprites/MainLevelIconPics.png: $(TMPDIR)/palettes/11_level_select_world_one_obj.13.gbapal

assets/sprites/PressStart.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/PressStart.4bpp: baserom.gba ; $(call dump_data,0x5F49D8,0x200)
assets/sprites/PressStart.png: $(TMPDIR)/palettes/0_title_screen_obj.0.gbapal

assets/sprites/FileLetters.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/FileLetters.4bpp: baserom.gba ; $(call dump_data,0x5FB3D4,0x80*3)
assets/sprites/FileLetters.png: $(TMPDIR)/palettes/1_main_menu_obj.4.gbapal

assets/sprites/gUnknown_085FB7E4.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_085FB7E4.4bpp: baserom.gba ; $(call dump_data,0x5FB7E4,0x800*7)
assets/sprites/gUnknown_085FB7E4.png: $(TMPDIR)/palettes/1_main_menu_obj.10.gbapal

assets/sprites/gUnknown_085FF274.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_085FF274.4bpp: baserom.gba ; $(call dump_data,0x5FF274,0x400*7)
assets/sprites/gUnknown_085FF274.png: $(TMPDIR)/palettes/1_main_menu_obj.4.gbapal

assets/sprites/FileFrameNewGameBottom.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/FileFrameNewGameBottom.4bpp: baserom.gba ; $(call dump_data,0x601104,0x400*7)
assets/sprites/FileFrameNewGameBottom.png: $(TMPDIR)/palettes/1_main_menu_obj.4.gbapal

assets/sprites/FileFrameNewGameTop.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/FileFrameNewGameTop.4bpp: baserom.gba ; $(call dump_data,0x602F94,0x800*7)
assets/sprites/FileFrameNewGameTop.png: $(TMPDIR)/palettes/1_main_menu_obj.4.gbapal

assets/sprites/gUnknown_08606A24.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_08606A24.4bpp: baserom.gba ; $(call dump_data,0x606A24,0x800*7)
assets/sprites/gUnknown_08606A24.png: $(TMPDIR)/palettes/1_main_menu_obj.10.gbapal

assets/sprites/FileFrameNormalBottom.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/FileFrameNormalBottom.4bpp: baserom.gba ; $(call dump_data,0x60A4B4,0x400*7)
assets/sprites/FileFrameNormalBottom.png: $(TMPDIR)/palettes/1_main_menu_obj.4.gbapal

assets/sprites/FileFrameNormalTop.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/FileFrameNormalTop.4bpp: baserom.gba ; $(call dump_data,0x60C344,0x800*7)
assets/sprites/FileFrameNormalTop.png: $(TMPDIR)/palettes/1_main_menu_obj.4.gbapal

assets/sprites/gUnknown_0860FDD4.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_0860FDD4.4bpp: baserom.gba ; $(call dump_data,0x60FDD4,0x400*7)
assets/sprites/gUnknown_0860FDD4.png: $(TMPDIR)/palettes/1_main_menu_obj.4.gbapal

assets/sprites/gUnknown_08611A48.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_08611A48.4bpp: baserom.gba ; $(call dump_data,0x611A48,0x400*3)
assets/sprites/gUnknown_08611A48.png: $(TMPDIR)/palettes/1_main_menu_obj.4.gbapal

assets/sprites/FileInfoBox.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/FileInfoBox.4bpp: baserom.gba ; $(call dump_data,0x6126BC,0x800*3)
assets/sprites/FileInfoBox.png: $(TMPDIR)/palettes/1_main_menu_obj.14.gbapal

assets/sprites/EReaderLogo.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/EReaderLogo.4bpp: baserom.gba ; $(call dump_data,0x613F0C,0x200*2)
assets/sprites/EReaderLogo.png: $(TMPDIR)/palettes/1_main_menu_obj.2.gbapal

assets/sprites/Expert.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/Expert.4bpp: baserom.gba ; $(call dump_data,0x614764,0x400)
assets/sprites/Expert.png: $(TMPDIR)/palettes/1_main_menu_obj.4.gbapal

assets/sprites/OptionMenuEraseDataButtons.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/OptionMenuEraseDataButtons.4bpp: baserom.gba ; $(call dump_data,0x614BB4,0x800*2)
assets/sprites/OptionMenuEraseDataButtons.png: $(TMPDIR)/palettes/1_main_menu_obj.10.gbapal

assets/sprites/FileBackground.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/FileBackground.4bpp: baserom.gba ; $(call dump_data,0x615C04,0x800*2)
assets/sprites/FileBackground.png: $(TMPDIR)/palettes/1_main_menu_obj.4.gbapal

assets/sprites/gUnknown_08617080.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_08617080.4bpp: baserom.gba ; $(call dump_data,0x617080,0x80*2)
assets/sprites/gUnknown_08617080.png: $(TMPDIR)/palettes/1_main_menu_obj.3.gbapal

assets/sprites/gUnknown_086172F0.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_086172F0.4bpp: baserom.gba ; $(call dump_data,0x6172F0,0x40*10)
assets/sprites/gUnknown_086172F0.png: $(TMPDIR)/palettes/1_main_menu_obj.4.gbapal

assets/sprites/PlusMain.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/PlusMain.4bpp: baserom.gba ; $(call dump_data,0x6175C0,0x80*2)
assets/sprites/PlusMain.png: $(TMPDIR)/palettes/1_main_menu_obj.4.gbapal

assets/sprites/gUnknown_08617830.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_08617830.4bpp: baserom.gba ; $(call dump_data,0x617830,0x20*10)
assets/sprites/gUnknown_08617830.png: $(TMPDIR)/palettes/1_main_menu_obj.4.gbapal

assets/sprites/gUnknown_08617B04.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_08617B04.4bpp: baserom.gba ; $(call dump_data,0x617B04,0x20*11)
assets/sprites/gUnknown_08617B04.png: $(TMPDIR)/palettes/1_main_menu_obj.4.gbapal

assets/sprites/MMDK.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/MMDK.4bpp: baserom.gba ; $(call dump_data,0x617CB4,0x80*2)
assets/sprites/MMDK.png: $(TMPDIR)/palettes/1_main_menu_obj.4.gbapal

assets/sprites/gUnknown_08617F24.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_08617F24.4bpp: baserom.gba ; $(call dump_data,0x617F24,0x20*10)
assets/sprites/gUnknown_08617F24.png: $(TMPDIR)/palettes/1_main_menu_obj.4.gbapal

assets/sprites/gUnknown_086180B4.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_086180B4.4bpp: baserom.gba ; $(call dump_data,0x6180B4,0x80*2)
assets/sprites/gUnknown_086180B4.png: $(TMPDIR)/palettes/1_main_menu_obj.1.gbapal

assets/sprites/gUnknown_0861E0B8.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_0861E0B8.4bpp: baserom.gba ; $(call dump_data,0x61E0B8,0x200*16)

assets/sprites/gUnknown_086201E0.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_086201E0.4bpp: baserom.gba ; $(call dump_data,0x6201E0,0x200*8)

assets/sprites/gUnknown_08621308.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08621308.4bpp: baserom.gba ; $(call dump_data,0x621308,0x200*8)

assets/sprites/gUnknown_086576C8.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_086576C8.4bpp: baserom.gba ; $(call dump_data,0x6576C8,0x400)

assets/sprites/gUnknown_080B88A4.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_080B88A4.4bpp: baserom.gba ; $(call dump_data,0xB88A4,0x800)

assets/sprites/gUnknown_080B92EC.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_080B92EC.4bpp: baserom.gba ; $(call dump_data,0xB92EC,0x800)

assets/sprites/gUnknown_080B9B84.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_080B9B84.4bpp: baserom.gba ; $(call dump_data,0xB9B84,0x100)

assets/sprites/gUnknown_080B9DAC.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_080B9DAC.4bpp: baserom.gba ; $(call dump_data,0xB9DAC,0x200)

assets/sprites/gUnknown_080BA1AC.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_080BA1AC.4bpp: baserom.gba ; $(call dump_data,0xBA1AC,0x700)

assets/sprites/gUnknown_080BA9D4.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_080BA9D4.4bpp: baserom.gba ; $(call dump_data,0xBA9D4,0x300)

assets/sprites/DKPack.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/DKPack.4bpp: baserom.gba ; $(call dump_data,0xBADFC,0x4000)
assets/sprites/DKPack.png: $(TMPDIR)/palettes/64_obj.3.gbapal

assets/sprites/gUnknown_080BF044.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_080BF044.4bpp: baserom.gba ; $(call dump_data,0xBF044,0x1000)
assets/sprites/gUnknown_080BF044.png: $(TMPDIR)/palettes/37_world_one_obj.2.gbapal

assets/sprites/gUnknown_080C0148.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_080C0148.4bpp: baserom.gba ; $(call dump_data,0xC0148,0x700)
assets/sprites/gUnknown_080C0148.png: $(TMPDIR)/palettes/37_world_one_obj.2.gbapal

assets/sprites/gUnknown_080C0A00.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_080C0A00.4bpp: baserom.gba ; $(call dump_data,0xC0A00,0x1800)

assets/sprites/gUnknown_080C2328.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_080C2328.4bpp: baserom.gba ; $(call dump_data,0xC2328,0x400)

assets/sprites/gUnknown_080C2808.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_080C2808.4bpp: baserom.gba ; $(call dump_data,0xC2808,0xC00)

assets/sprites/gUnknown_080C3650.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_080C3650.4bpp: baserom.gba ; $(call dump_data,0xC3650,0x2000)

assets/sprites/gUnknown_080C56E8.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_080C56E8.4bpp: baserom.gba ; $(call dump_data,0xC56E8,0x800)

assets/sprites/gUnknown_080C6010.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_080C6010.4bpp: baserom.gba ; $(call dump_data,0xC6010,0x1000)

assets/sprites/gUnknown_080C70F0.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_080C70F0.4bpp: baserom.gba ; $(call dump_data,0xC70F0,0x300)

assets/sprites/gUnknown_080C777C.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_080C777C.4bpp: baserom.gba ; $(call dump_data,0xC777C,0x400)

assets/sprites/gUnknown_080C7C5C.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_080C7C5C.4bpp: baserom.gba ; $(call dump_data,0xC7C5C,0x300)

assets/sprites/gUnknown_080C803C.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_080C803C.4bpp: baserom.gba ; $(call dump_data,0xC803C,0x300)

assets/sprites/gUnknown_080C83B0.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_080C83B0.4bpp: baserom.gba ; $(call dump_data,0xC83B0,0x400)

assets/sprites/gUnknown_080C8E30.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_080C8E30.4bpp: baserom.gba ; $(call dump_data,0xC8E30,0xD00)

assets/sprites/gUnknown_080CABB0.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_080CABB0.4bpp: baserom.gba ; $(call dump_data,0xCABB0,0x5C0)
assets/sprites/gUnknown_080CABB0.png: $(TMPDIR)/palettes/37_world_one_obj.0.gbapal

assets/sprites/gUnknown_080CB7F0.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_080CB7F0.4bpp: baserom.gba ; $(call dump_data,0xCB7F0,0x5C0)

assets/sprites/MarioBurn.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/MarioBurn.8bpp: baserom.gba ; $(call dump_data,0xCC238,0x8000)
assets/sprites/MarioBurn.png: $(TMPDIR)/palettes/37_world_one_obj.gbapal

assets/sprites/gUnknown_080D46C0.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_080D46C0.8bpp: baserom.gba ; $(call dump_data,0xD46C0,0x8000)
assets/sprites/gUnknown_080D46C0.png: $(TMPDIR)/palettes/37_world_one_obj.gbapal

assets/sprites/MarioFlail.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/MarioFlail.8bpp: baserom.gba ; $(call dump_data,0xDCB48,0x8000)
assets/sprites/MarioFlail.png: $(TMPDIR)/palettes/37_world_one_obj.gbapal

assets/sprites/gUnknown_080E4C70.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_080E4C70.8bpp: baserom.gba ; $(call dump_data,0xE4C70,0x2000)
assets/sprites/gUnknown_080E4C70.png: $(TMPDIR)/palettes/37_world_one_obj.gbapal

assets/sprites/gUnknown_080E6EB8.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_080E6EB8.8bpp: baserom.gba ; $(call dump_data,0xE6EB8,0x4000)
assets/sprites/gUnknown_080E6EB8.png: $(TMPDIR)/palettes/37_world_one_obj.gbapal

assets/sprites/MarioElectrocute.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/MarioElectrocute.8bpp: baserom.gba ; $(call dump_data,0xEB100,0x2000)
assets/sprites/MarioElectrocute.png: $(TMPDIR)/palettes/37_world_one_obj.gbapal

assets/sprites/MarioLand.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/MarioLand.8bpp: baserom.gba ; $(call dump_data,0xED24C,0x2400)
assets/sprites/MarioLand.png: $(TMPDIR)/palettes/37_world_one_obj.gbapal

assets/sprites/gUnknown_080EF798.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_080EF798.8bpp: baserom.gba ; $(call dump_data,0xEF798,0x2400)
assets/sprites/gUnknown_080EF798.png: $(TMPDIR)/palettes/37_world_one_obj.gbapal

assets/sprites/gUnknown_080F2020.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_080F2020.8bpp: baserom.gba ; $(call dump_data,0xF2020,0x2000)
assets/sprites/gUnknown_080F2020.png: $(TMPDIR)/palettes/37_world_one_obj.gbapal

assets/sprites/gUnknown_080F4808.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_080F4808.8bpp: baserom.gba ; $(call dump_data,0xF4808,0x2800)
assets/sprites/gUnknown_080F4808.png: $(TMPDIR)/palettes/37_world_one_obj.gbapal

assets/sprites/gUnknown_080F7250.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_080F7250.8bpp: baserom.gba ; $(call dump_data,0xF7250,0x1000)
assets/sprites/gUnknown_080F7250.png: $(TMPDIR)/palettes/37_world_one_obj.gbapal

assets/sprites/gUnknown_080F8378.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_080F8378.8bpp: baserom.gba ; $(call dump_data,0xF8378,0x800)
assets/sprites/gUnknown_080F8378.png: $(TMPDIR)/palettes/37_world_one_obj.gbapal

assets/sprites/gUnknown_080F8CA0.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_080F8CA0.8bpp: baserom.gba ; $(call dump_data,0xF8CA0,0x800)
assets/sprites/gUnknown_080F8CA0.png: $(TMPDIR)/palettes/37_world_one_obj.gbapal

assets/sprites/gUnknown_080F96E8.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_080F96E8.8bpp: baserom.gba ; $(call dump_data,0xF96E8,0xE00)
assets/sprites/gUnknown_080F96E8.png: $(TMPDIR)/palettes/37_world_one_obj.gbapal

assets/sprites/gUnknown_080FA82C.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_080FA82C.8bpp: baserom.gba ; $(call dump_data,0xFA82C,0x3400)

assets/sprites/gUnknown_080FDD30.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_080FDD30.4bpp: baserom.gba ; $(call dump_data,0xFDD30,0x380)

assets/sprites/gUnknown_080FE1D8.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_080FE1D8.4bpp: baserom.gba ; $(call dump_data,0xFE1D8,0x400)

assets/sprites/gUnknown_080FE700.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_080FE700.4bpp: baserom.gba ; $(call dump_data,0xFE700,0x400)

assets/sprites/gUnknown_080FED48.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_080FED48.4bpp: baserom.gba ; $(call dump_data,0xFED48,0x800)

assets/sprites/gUnknown_080FF574.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_080FF574.4bpp: baserom.gba ; $(call dump_data,0xFF574,0x80)

assets/sprites/gUnknown_080FF860.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_080FF860.4bpp: baserom.gba ; $(call dump_data,0xFF860,0x380)

assets/sprites/gUnknown_080FFE28.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_080FFE28.4bpp: baserom.gba ; $(call dump_data,0xFFE28,0x400)

assets/sprites/gUnknown_081002C0.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_081002C0.4bpp: baserom.gba ; $(call dump_data,0x1002C0,0x200)

assets/sprites/gUnknown_08100708.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_08100708.4bpp: baserom.gba ; $(call dump_data,0x100708,0x400)

assets/sprites/gUnknown_08100CC0.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_08100CC0.4bpp: baserom.gba ; $(call dump_data,0x100CC0,0x80)

assets/sprites/gUnknown_08100F88.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_08100F88.4bpp: baserom.gba ; $(call dump_data,0x100F88,0x800)

assets/sprites/gUnknown_081018B0.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_081018B0.4bpp: baserom.gba ; $(call dump_data,0x1018B0,0x80)

assets/sprites/gUnknown_08101A58.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_08101A58.4bpp: baserom.gba ; $(call dump_data,0x101A58,0x80)

assets/sprites/gUnknown_08101CD8.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_08101CD8.4bpp: baserom.gba ; $(call dump_data,0x101CD8,0x680)

assets/sprites/gUnknown_08102438.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_08102438.4bpp: baserom.gba ; $(call dump_data,0x102438,0x300)

assets/sprites/gUnknown_08102860.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08102860.4bpp: baserom.gba ; $(call dump_data,0x102860,0x1000)

assets/sprites/gUnknown_08103CA0.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08103CA0.4bpp: baserom.gba ; $(call dump_data,0x103CA0,0x1800)

assets/sprites/gUnknown_081054CC.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_081054CC.4bpp: baserom.gba ; $(call dump_data,0x1054CC,0x80)

assets/sprites/gUnknown_08105674.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_08105674.4bpp: baserom.gba ; $(call dump_data,0x105674,0x400)

assets/sprites/gUnknown_08105B0C.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_08105B0C.4bpp: baserom.gba ; $(call dump_data,0x105B0C,0x200)

assets/sprites/gUnknown_08105E34.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_08105E34.4bpp: baserom.gba ; $(call dump_data,0x105E34,0x400)

assets/sprites/gUnknown_08106458.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_08106458.4bpp: baserom.gba ; $(call dump_data,0x106458,0x780)

assets/sprites/gUnknown_08106C04.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_08106C04.4bpp: baserom.gba ; $(call dump_data,0x106C04,0x100)

assets/sprites/gUnknown_08106E2C.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_08106E2C.4bpp: baserom.gba ; $(call dump_data,0x106E2C,0x400)

assets/sprites/gUnknown_08107474.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_08107474.4bpp: baserom.gba ; $(call dump_data,0x107474,0x1000)

assets/sprites/gUnknown_081084A0.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_081084A0.4bpp: baserom.gba ; $(call dump_data,0x1084A0,0x200)

assets/sprites/gUnknown_081088E8.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_081088E8.4bpp: baserom.gba ; $(call dump_data,0x1088E8,0x4000)

assets/sprites/gUnknown_0810CAE8.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_0810CAE8.4bpp: baserom.gba ; $(call dump_data,0x10CAE8,0x1C00)

assets/sprites/gUnknown_0810E714.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_0810E714.4bpp: baserom.gba ; $(call dump_data,0x10E714,0x200)

assets/sprites/gUnknown_0810EA3C.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0810EA3C.4bpp: baserom.gba ; $(call dump_data,0x10EA3C,0x800)

assets/sprites/gUnknown_0810F364.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0810F364.4bpp: baserom.gba ; $(call dump_data,0x10F364,0x400)

assets/sprites/gUnknown_0810F790.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0810F790.4bpp: baserom.gba ; $(call dump_data,0x10F790,0x100)

assets/sprites/gUnknown_0810F970.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0810F970.4bpp: baserom.gba ; $(call dump_data,0x10F970,0x300)

assets/sprites/gUnknown_0810FD50.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0810FD50.4bpp: baserom.gba ; $(call dump_data,0x10FD50,0x300)

assets/sprites/gUnknown_081100E8.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_081100E8.4bpp: baserom.gba ; $(call dump_data,0x1100E8,0x200)

assets/sprites/gUnknown_081104E8.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_081104E8.4bpp: baserom.gba ; $(call dump_data,0x1104E8,0x700)

assets/sprites/gUnknown_08110CEC.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_08110CEC.4bpp: baserom.gba ; $(call dump_data,0x110CEC,0x380)

assets/sprites/gUnknown_08111224.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08111224.4bpp: baserom.gba ; $(call dump_data,0x111224,0x1800)

assets/sprites/gUnknown_08112B4C.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_08112B4C.4bpp: baserom.gba ; $(call dump_data,0x112B4C,0x100)

assets/sprites/gUnknown_08112D2C.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08112D2C.4bpp: baserom.gba ; $(call dump_data,0x112D2C,0xC00)

assets/sprites/gUnknown_08113AE4.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08113AE4.4bpp: baserom.gba ; $(call dump_data,0x113AE4,0x1800)

assets/sprites/gUnknown_0811540C.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_0811540C.4bpp: baserom.gba ; $(call dump_data,0x11540C,0x1000)

assets/sprites/gUnknown_081164A4.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_081164A4.4bpp: baserom.gba ; $(call dump_data,0x1164A4,0x800)

assets/sprites/gUnknown_08116E5C.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08116E5C.4bpp: baserom.gba ; $(call dump_data,0x116E5C,0x1800)

assets/sprites/gUnknown_08118688.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_08118688.4bpp: baserom.gba ; $(call dump_data,0x118688,0x80)

assets/sprites/gUnknown_08118950.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_08118950.4bpp: baserom.gba ; $(call dump_data,0x118950,0x400)

assets/sprites/gUnknown_08118D7C.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_08118D7C.4bpp: baserom.gba ; $(call dump_data,0x118D7C,0x80)

assets/sprites/gUnknown_08118EB8.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_08118EB8.4bpp: baserom.gba ; $(call dump_data,0x118EB8,0x280)

assets/sprites/gUnknown_08119458.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08119458.4bpp: baserom.gba ; $(call dump_data,0x119458,0x200)

assets/sprites/gUnknown_081196F0.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_081196F0.4bpp: baserom.gba ; $(call dump_data,0x1196F0,0x200)

assets/sprites/gUnknown_08119940.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_08119940.4bpp: baserom.gba ; $(call dump_data,0x119940,0x100)

assets/sprites/gUnknown_08119A90.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_08119A90.4bpp: baserom.gba ; $(call dump_data,0x119A90,0x100)

assets/sprites/gUnknown_08119CB8.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_08119CB8.4bpp: baserom.gba ; $(call dump_data,0x119CB8,0x380)

assets/sprites/gUnknown_0811A1F0.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0811A1F0.4bpp: baserom.gba ; $(call dump_data,0x11A1F0,0x380)

assets/sprites/gUnknown_0811A608.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0811A608.4bpp: baserom.gba ; $(call dump_data,0x11A608,0x80)

assets/sprites/gUnknown_0811A720.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0811A720.4bpp: baserom.gba ; $(call dump_data,0x11A720,0x80)

assets/sprites/gUnknown_0811A838.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_0811A838.4bpp: baserom.gba ; $(call dump_data,0x11A838,0x80)

assets/sprites/gUnknown_0811AA28.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0811AA28.4bpp: baserom.gba ; $(call dump_data,0x11AA28,0x300)

assets/sprites/gUnknown_0811AE98.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0811AE98.4bpp: baserom.gba ; $(call dump_data,0x11AE98,0x300)

assets/sprites/gUnknown_0811B3E0.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0811B3E0.4bpp: baserom.gba ; $(call dump_data,0x11B3E0,0x800)

assets/sprites/gUnknown_0811BC0C.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_0811BC0C.4bpp: baserom.gba ; $(call dump_data,0x11BC0C,0x80)

assets/sprites/gUnknown_0811BCB8.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_0811BCB8.4bpp: baserom.gba ; $(call dump_data,0x11BCB8,0x80)

assets/sprites/gUnknown_0811BD64.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_0811BD64.4bpp: baserom.gba ; $(call dump_data,0x11BD64,0x80)

assets/sprites/gUnknown_0811BE10.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_0811BE10.4bpp: baserom.gba ; $(call dump_data,0x11BE10,0x200)

assets/sprites/gUnknown_0811C1C8.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_0811C1C8.4bpp: baserom.gba ; $(call dump_data,0x11C1C8,0x3000)

assets/sprites/gUnknown_0811F1F4.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_0811F1F4.8bpp: baserom.gba ; $(call dump_data,0x11F1F4,0x400)

assets/sprites/gUnknown_0811F7AC.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_0811F7AC.8bpp: baserom.gba ; $(call dump_data,0x11F7AC,0x6000)

assets/sprites/gUnknown_081257D8.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_081257D8.4bpp: baserom.gba ; $(call dump_data,0x1257D8,0x80)

assets/sprites/gUnknown_08125884.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08125884.4bpp: baserom.gba ; $(call dump_data,0x125884,0x80)

assets/sprites/gUnknown_08125930.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08125930.4bpp: baserom.gba ; $(call dump_data,0x125930,0x80)

assets/sprites/gUnknown_08125A48.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_08125A48.4bpp: baserom.gba ; $(call dump_data,0x125A48,0x200)

assets/sprites/gUnknown_08125E00.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_08125E00.4bpp: baserom.gba ; $(call dump_data,0x125E00,0x600)

assets/sprites/gUnknown_08126AC8.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08126AC8.4bpp: baserom.gba ; $(call dump_data,0x126AC8,0x2000)

assets/sprites/gUnknown_08128BF0.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_08128BF0.4bpp: baserom.gba ; $(call dump_data,0x128BF0,0x400)

assets/sprites/gUnknown_08129118.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_08129118.4bpp: baserom.gba ; $(call dump_data,0x129118,0x400)

assets/sprites/gUnknown_08129544.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_08129544.4bpp: baserom.gba ; $(call dump_data,0x129544,0x80)

assets/sprites/gUnknown_0812980C.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_0812980C.4bpp: baserom.gba ; $(call dump_data,0x12980C,0x1000)

assets/sprites/gUnknown_0812A958.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_0812A958.4bpp: baserom.gba ; $(call dump_data,0x12A958,0xC00)

assets/sprites/gUnknown_0812BA70.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_0812BA70.4bpp: baserom.gba ; $(call dump_data,0x12BA70,0x1000)

assets/sprites/gUnknown_0812CA9C.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0812CA9C.4bpp: baserom.gba ; $(call dump_data,0x12CA9C,0x80)

assets/sprites/gUnknown_0812CB48.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0812CB48.4bpp: baserom.gba ; $(call dump_data,0x12CB48,0x80)

assets/sprites/gUnknown_0812CBF4.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0812CBF4.4bpp: baserom.gba ; $(call dump_data,0x12CBF4,0x80)

assets/sprites/gUnknown_0812CCA0.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0812CCA0.4bpp: baserom.gba ; $(call dump_data,0x12CCA0,0x40)

assets/sprites/gUnknown_0812CD0C.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_0812CD0C.4bpp: baserom.gba ; $(call dump_data,0x12CD0C,0x20)

assets/sprites/gUnknown_0812CD58.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0812CD58.4bpp: baserom.gba ; $(call dump_data,0x12CD58,0x80)

assets/sprites/gUnknown_0812CE04.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_0812CE04.4bpp: baserom.gba ; $(call dump_data,0x12CE04,0x200)

assets/sprites/gUnknown_0812D030.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0812D030.4bpp: baserom.gba ; $(call dump_data,0x12D030,0x100)

assets/sprites/gUnknown_0812D15C.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_0812D15C.4bpp: baserom.gba ; $(call dump_data,0x12D15C,0x80)

assets/sprites/gUnknown_0812D208.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0812D208.4bpp: baserom.gba ; $(call dump_data,0x12D208,0x80)

assets/sprites/gUnknown_0812D2B4.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0812D2B4.4bpp: baserom.gba ; $(call dump_data,0x12D2B4,0x80)

assets/sprites/gUnknown_0812D360.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0812D360.4bpp: baserom.gba ; $(call dump_data,0x12D360,0x80)

assets/sprites/gUnknown_0812D40C.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0812D40C.4bpp: baserom.gba ; $(call dump_data,0x12D40C,0x80)

assets/sprites/gUnknown_0812D4B8.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0812D4B8.4bpp: baserom.gba ; $(call dump_data,0x12D4B8,0x80)

assets/sprites/gUnknown_0812D564.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0812D564.4bpp: baserom.gba ; $(call dump_data,0x12D564,0x80)

assets/sprites/gUnknown_0812D610.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0812D610.4bpp: baserom.gba ; $(call dump_data,0x12D610,0x80)

assets/sprites/gUnknown_0812D6BC.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0812D6BC.4bpp: baserom.gba ; $(call dump_data,0x12D6BC,0x80)

assets/sprites/gUnknown_0812D768.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0812D768.4bpp: baserom.gba ; $(call dump_data,0x12D768,0x80)

assets/sprites/gUnknown_0812D814.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0812D814.4bpp: baserom.gba ; $(call dump_data,0x12D814,0x80)

assets/sprites/gUnknown_0812D8C0.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0812D8C0.4bpp: baserom.gba ; $(call dump_data,0x12D8C0,0x80)

assets/sprites/gUnknown_0812D96C.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0812D96C.4bpp: baserom.gba ; $(call dump_data,0x12D96C,0x80)

assets/sprites/gUnknown_0812DA18.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0812DA18.4bpp: baserom.gba ; $(call dump_data,0x12DA18,0x80)

assets/sprites/gUnknown_0812DAC4.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0812DAC4.4bpp: baserom.gba ; $(call dump_data,0x12DAC4,0x80)

assets/sprites/gUnknown_0812DB70.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0812DB70.4bpp: baserom.gba ; $(call dump_data,0x12DB70,0x80)

assets/sprites/gUnknown_0812DC1C.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0812DC1C.4bpp: baserom.gba ; $(call dump_data,0x12DC1C,0x80)

assets/sprites/gUnknown_0812DCC8.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0812DCC8.4bpp: baserom.gba ; $(call dump_data,0x12DCC8,0x80)

assets/sprites/gUnknown_0812DE28.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0812DE28.4bpp: baserom.gba ; $(call dump_data,0x12DE28,0x300)

assets/sprites/gUnknown_0812E178.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0812E178.4bpp: baserom.gba ; $(call dump_data,0x12E178,0x200)

assets/sprites/gUnknown_0812E3A4.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_0812E3A4.4bpp: baserom.gba ; $(call dump_data,0x12E3A4,0x200)

assets/sprites/gUnknown_0812E5D0.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_0812E5D0.4bpp: baserom.gba ; $(call dump_data,0x12E5D0,0x200)

assets/sprites/gUnknown_0812EA18.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0812EA18.4bpp: baserom.gba ; $(call dump_data,0x12EA18,0x1000)

assets/sprites/gUnknown_0812FA8C.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0812FA8C.4bpp: baserom.gba ; $(call dump_data,0x12FA8C,0x100)

assets/sprites/gUnknown_0812FC00.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0812FC00.4bpp: baserom.gba ; $(call dump_data,0x12FC00,0x100)

assets/sprites/gUnknown_0812FD74.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0812FD74.4bpp: baserom.gba ; $(call dump_data,0x12FD74,0x100)

assets/sprites/gUnknown_0812FEC4.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_0812FEC4.4bpp: baserom.gba ; $(call dump_data,0x12FEC4,0x1000)

assets/sprites/gUnknown_08130FC8.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_08130FC8.4bpp: baserom.gba ; $(call dump_data,0x130FC8,0x200)

assets/sprites/gUnknown_081312A8.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_081312A8.4bpp: baserom.gba ; $(call dump_data,0x1312A8,0xC00)

assets/sprites/gUnknown_08131F40.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08131F40.4bpp: baserom.gba ; $(call dump_data,0x131F40,0x800)

assets/sprites/gUnknown_08132868.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08132868.4bpp: baserom.gba ; $(call dump_data,0x132868,0x1000)

assets/sprites/gUnknown_08133A68.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08133A68.4bpp: baserom.gba ; $(call dump_data,0x133A68,0x1C00)

assets/sprites/gUnknown_08135790.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_08135790.4bpp: baserom.gba ; $(call dump_data,0x135790,0x400)

assets/sprites/gUnknown_08135C28.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_08135C28.4bpp: baserom.gba ; $(call dump_data,0x135C28,0x200)

assets/sprites/gUnknown_08135F50.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_08135F50.4bpp: baserom.gba ; $(call dump_data,0x135F50,0x400)

assets/sprites/gUnknown_08136508.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_08136508.4bpp: baserom.gba ; $(call dump_data,0x136508,0x600)

assets/sprites/gUnknown_08136C30.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_08136C30.4bpp: baserom.gba ; $(call dump_data,0x136C30,0x400)

assets/sprites/gUnknown_08137158.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_08137158.4bpp: baserom.gba ; $(call dump_data,0x137158,0x400)

assets/sprites/gUnknown_081375F0.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_081375F0.4bpp: baserom.gba ; $(call dump_data,0x1375F0,0x200)

assets/sprites/gUnknown_081379A8.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_081379A8.4bpp: baserom.gba ; $(call dump_data,0x1379A8,0x600)

assets/sprites/gUnknown_081381F0.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_081381F0.4bpp: baserom.gba ; $(call dump_data,0x1381F0,0x800)

assets/sprites/gUnknown_08138B18.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_08138B18.4bpp: baserom.gba ; $(call dump_data,0x138B18,0x400)

assets/sprites/gUnknown_08139040.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_08139040.4bpp: baserom.gba ; $(call dump_data,0x139040,0x400)

assets/sprites/gUnknown_081394D8.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_081394D8.4bpp: baserom.gba ; $(call dump_data,0x1394D8,0x200)

assets/sprites/gUnknown_08139920.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_08139920.4bpp: baserom.gba ; $(call dump_data,0x139920,0x800)

assets/sprites/gUnknown_0813A170.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_0813A170.8bpp: baserom.gba ; $(call dump_data,0x13A170,0x1000)

assets/sprites/gUnknown_0813B3B8.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_0813B3B8.8bpp: baserom.gba ; $(call dump_data,0x13B3B8,0x3800)

assets/sprites/gUnknown_0813EC08.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_0813EC08.8bpp: baserom.gba ; $(call dump_data,0x13EC08,0x1000)

assets/sprites/gUnknown_0813FE74.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_0813FE74.8bpp: baserom.gba ; $(call dump_data,0x13FE74,0x6000)

assets/sprites/gUnknown_08145F30.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_08145F30.4bpp: baserom.gba ; $(call dump_data,0x145F30,0x180)

assets/sprites/gUnknown_081461D8.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_081461D8.8bpp: baserom.gba ; $(call dump_data,0x1461D8,0x8000)

assets/sprites/gUnknown_0814E348.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_0814E348.8bpp: baserom.gba ; $(call dump_data,0x14E348,0x2800)

assets/sprites/gUnknown_08150BE0.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08150BE0.8bpp: baserom.gba ; $(call dump_data,0x150BE0,0x2000)

assets/sprites/gUnknown_08159634.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_08159634.8bpp: baserom.gba ; $(call dump_data,0x159634,0x6800)

assets/sprites/gUnknown_0815FFEC.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_0815FFEC.8bpp: baserom.gba ; $(call dump_data,0x15FFEC,0x3000)

assets/sprites/gUnknown_08163138.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_08163138.8bpp: baserom.gba ; $(call dump_data,0x163138,0x4800)

assets/sprites/gUnknown_08167964.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_08167964.8bpp: baserom.gba ; $(call dump_data,0x167964,0x800)

assets/sprites/gUnknown_0816855C.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_0816855C.8bpp: baserom.gba ; $(call dump_data,0x16855C,0xD000)

assets/sprites/gUnknown_08175714.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_08175714.8bpp: baserom.gba ; $(call dump_data,0x175714,0xC000)

assets/sprites/gUnknown_081817F4.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_081817F4.8bpp: baserom.gba ; $(call dump_data,0x1817F4,0x6000)

assets/sprites/gUnknown_08187ACC.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_08187ACC.8bpp: baserom.gba ; $(call dump_data,0x187ACC,0x3000)

assets/sprites/gUnknown_0818ADC8.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_0818ADC8.8bpp: baserom.gba ; $(call dump_data,0x18ADC8,0x14000)

assets/sprites/gUnknown_0819EE60.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_0819EE60.8bpp: baserom.gba ; $(call dump_data,0x19EE60,0x3000)

assets/sprites/gUnknown_081A2180.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_081A2180.8bpp: baserom.gba ; $(call dump_data,0x1A2180,0x14000)

assets/sprites/gUnknown_081B6380.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_081B6380.8bpp: baserom.gba ; $(call dump_data,0x1B6380,0x2C00)

assets/sprites/gUnknown_081B90A8.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_081B90A8.8bpp: baserom.gba ; $(call dump_data,0x1B90A8,0x4000)

assets/sprites/gUnknown_081BD1F4.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_081BD1F4.8bpp: baserom.gba ; $(call dump_data,0x1BD1F4,0x4800)

assets/sprites/gUnknown_081C1A20.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_081C1A20.4bpp: baserom.gba ; $(call dump_data,0x1C1A20,0x200)

assets/sprites/gUnknown_081C1C70.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_081C1C70.4bpp: baserom.gba ; $(call dump_data,0x1C1C70,0x400)

assets/sprites/gUnknown_081C209C.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_081C209C.4bpp: baserom.gba ; $(call dump_data,0x1C209C,0x80)

assets/sprites/gUnknown_081C216C.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_081C216C.4bpp: baserom.gba ; $(call dump_data,0x1C216C,0x100)

assets/sprites/gUnknown_081C22BC.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_081C22BC.8bpp: baserom.gba ; $(call dump_data,0x1C22BC,0x1000)

assets/sprites/gUnknown_081C330C.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_081C330C.8bpp: baserom.gba ; $(call dump_data,0x1C330C,0x1000)

assets/sprites/gUnknown_081C4380.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_081C4380.8bpp: baserom.gba ; $(call dump_data,0x1C4380,0x3000)

assets/sprites/gUnknown_081C7418.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_081C7418.8bpp: baserom.gba ; $(call dump_data,0x1C7418,0x4000)

assets/sprites/gUnknown_081CB540.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_081CB540.8bpp: baserom.gba ; $(call dump_data,0x1CB540,0x2000)

assets/sprites/gUnknown_081CD56C.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_081CD56C.8bpp: baserom.gba ; $(call dump_data,0x1CD56C,0x400)

assets/sprites/gUnknown_081CDA94.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_081CDA94.8bpp: baserom.gba ; $(call dump_data,0x1CDA94,0x2000)

assets/sprites/gUnknown_081CFAC0.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_081CFAC0.8bpp: baserom.gba ; $(call dump_data,0x1CFAC0,0x400)

assets/sprites/gUnknown_081CFFE8.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_081CFFE8.8bpp: baserom.gba ; $(call dump_data,0x1CFFE8,0x2000)

assets/sprites/gUnknown_081D220C.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_081D220C.8bpp: baserom.gba ; $(call dump_data,0x1D220C,0x1400)

assets/sprites/gUnknown_081D3854.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_081D3854.8bpp: baserom.gba ; $(call dump_data,0x1D3854,0x1000)

assets/sprites/gUnknown_081D4A9C.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_081D4A9C.8bpp: baserom.gba ; $(call dump_data,0x1D4A9C,0x1000)

assets/sprites/gUnknown_081D5CC0.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_081D5CC0.8bpp: baserom.gba ; $(call dump_data,0x1D5CC0,0x1400)

assets/sprites/gUnknown_081D71E8.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_081D71E8.8bpp: baserom.gba ; $(call dump_data,0x1D71E8,0x2000)

assets/sprites/gUnknown_081D9214.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_081D9214.8bpp: baserom.gba ; $(call dump_data,0x1D9214,0x400)

assets/sprites/gUnknown_081D96F4.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_081D96F4.8bpp: baserom.gba ; $(call dump_data,0x1D96F4,0x6000)

assets/sprites/gUnknown_081DF720.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_081DF720.8bpp: baserom.gba ; $(call dump_data,0x1DF720,0x800)

assets/sprites/gUnknown_081DFF70.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_081DFF70.8bpp: baserom.gba ; $(call dump_data,0x1DFF70,0x100)

assets/sprites/gUnknown_081E009C.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_081E009C.8bpp: baserom.gba ; $(call dump_data,0x1E009C,0x100)

assets/sprites/gUnknown_081E027C.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_081E027C.4bpp: baserom.gba ; $(call dump_data,0x1E027C,0x3000)

assets/sprites/gUnknown_081E3380.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_081E3380.4bpp: baserom.gba ; $(call dump_data,0x1E3380,0x3800)

assets/sprites/gUnknown_081E6DC8.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_081E6DC8.8bpp: baserom.gba ; $(call dump_data,0x1E6DC8,0x4000)

assets/sprites/gUnknown_081EAEF0.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_081EAEF0.8bpp: baserom.gba ; $(call dump_data,0x1EAEF0,0x8000)

assets/sprites/gUnknown_081F31EC.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_081F31EC.8bpp: baserom.gba ; $(call dump_data,0x1F31EC,0x10000)

assets/sprites/gUnknown_082034E8.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_082034E8.8bpp: baserom.gba ; $(call dump_data,0x2034E8,0x5000)

assets/sprites/gUnknown_08208514.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08208514.4bpp: baserom.gba ; $(call dump_data,0x208514,0x400)

assets/sprites/gUnknown_08208A3C.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_08208A3C.8bpp: baserom.gba ; $(call dump_data,0x208A3C,0x8000)

assets/sprites/gUnknown_08210AD4.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_08210AD4.8bpp: baserom.gba ; $(call dump_data,0x210AD4,0x3000)

assets/sprites/gUnknown_08213D1C.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_08213D1C.8bpp: baserom.gba ; $(call dump_data,0x213D1C,0x10000)

assets/sprites/gUnknown_08223D48.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_08223D48.4bpp: baserom.gba ; $(call dump_data,0x223D48,0x20)

assets/sprites/gUnknown_08223D94.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_08223D94.4bpp: baserom.gba ; $(call dump_data,0x223D94,0x80)

assets/sprites/gUnknown_08223E40.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_08223E40.4bpp: baserom.gba ; $(call dump_data,0x223E40,0x80)

assets/sprites/gUnknown_08223EEC.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_08223EEC.4bpp: baserom.gba ; $(call dump_data,0x223EEC,0x80)

assets/sprites/gUnknown_08223F98.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_08223F98.4bpp: baserom.gba ; $(call dump_data,0x223F98,0x80)

assets/sprites/gUnknown_08224044.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_08224044.4bpp: baserom.gba ; $(call dump_data,0x224044,0x20)

assets/sprites/gUnknown_08224090.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08224090.4bpp: baserom.gba ; $(call dump_data,0x224090,0x100)

assets/sprites/gUnknown_0822451C.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_0822451C.8bpp: baserom.gba ; $(call dump_data,0x22451C,0x3800)

assets/sprites/gUnknown_08227D48.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_08227D48.8bpp: baserom.gba ; $(call dump_data,0x227D48,0x1000)

assets/sprites/gUnknown_08228EDC.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_08228EDC.8bpp: baserom.gba ; $(call dump_data,0x228EDC,0x8000)

assets/sprites/gUnknown_082310DC.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_082310DC.8bpp: baserom.gba ; $(call dump_data,0x2310DC,0x7000)

assets/sprites/gUnknown_082382DC.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_082382DC.8bpp: baserom.gba ; $(call dump_data,0x2382DC,0x7000)

assets/sprites/gUnknown_0823F404.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_0823F404.8bpp: baserom.gba ; $(call dump_data,0x23F404,0x4000)

assets/sprites/gUnknown_08243574.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_08243574.8bpp: baserom.gba ; $(call dump_data,0x243574,0xA000)

assets/sprites/gUnknown_0824D6C0.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_0824D6C0.8bpp: baserom.gba ; $(call dump_data,0x24D6C0,0x4800)

assets/sprites/gUnknown_08251FE8.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_08251FE8.8bpp: baserom.gba ; $(call dump_data,0x251FE8,0x8000)

assets/sprites/gUnknown_0825A014.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_0825A014.8bpp: baserom.gba ; $(call dump_data,0x25A014,0x800)
assets/sprites/gUnknown_0825A014.png: $(TMPDIR)/palettes/37_world_one_obj.gbapal

assets/sprites/gUnknown_0825AA80.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_0825AA80.8bpp: baserom.gba ; $(call dump_data,0x25AA80,0x11000)
assets/sprites/gUnknown_0825AA80.png: $(TMPDIR)/palettes/37_world_one_obj.gbapal

assets/sprites/gUnknown_0826BAAC.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_0826BAAC.8bpp: baserom.gba ; $(call dump_data,0x26BAAC,0x800)
assets/sprites/gUnknown_0826BAAC.png: $(TMPDIR)/palettes/37_world_one_obj.gbapal

assets/sprites/gUnknown_0826C344.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_0826C344.8bpp: baserom.gba ; $(call dump_data,0x26C344,0x4000)
assets/sprites/gUnknown_0826C344.png: $(TMPDIR)/palettes/37_world_one_obj.gbapal

assets/sprites/gUnknown_082705F8.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_082705F8.8bpp: baserom.gba ; $(call dump_data,0x2705F8,0x5800)

assets/sprites/gUnknown_08275E90.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_08275E90.8bpp: baserom.gba ; $(call dump_data,0x275E90,0x2000)

assets/sprites/gUnknown_08277F4C.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_08277F4C.8bpp: baserom.gba ; $(call dump_data,0x277F4C,0x5000)

assets/sprites/gUnknown_0827CF78.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_0827CF78.8bpp: baserom.gba ; $(call dump_data,0x27CF78,0x800)
assets/sprites/gUnknown_0827CF78.png: $(TMPDIR)/palettes/37_world_one_obj.gbapal

assets/sprites/gUnknown_0827D8A0.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_0827D8A0.4bpp: baserom.gba ; $(call dump_data,0x27D8A0,0x1000)

assets/sprites/gUnknown_0827E9EC.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_0827E9EC.4bpp: baserom.gba ; $(call dump_data,0x27E9EC,0x1200)

assets/sprites/gUnknown_0827FDEC.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_0827FDEC.4bpp: baserom.gba ; $(call dump_data,0x27FDEC,0xE00)

assets/sprites/gUnknown_08280DEC.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08280DEC.4bpp: baserom.gba ; $(call dump_data,0x280DEC,0xE00)

assets/sprites/gUnknown_08281D5C.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08281D5C.4bpp: baserom.gba ; $(call dump_data,0x281D5C,0x1400)

assets/sprites/gUnknown_082833A4.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082833A4.4bpp: baserom.gba ; $(call dump_data,0x2833A4,0x2000)

assets/sprites/gUnknown_0828555C.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_0828555C.8bpp: baserom.gba ; $(call dump_data,0x28555C,0x3000)

assets/sprites/gUnknown_0828863C.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_0828863C.4bpp: baserom.gba ; $(call dump_data,0x28863C,0x3000)

assets/sprites/gUnknown_0828B764.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_0828B764.4bpp: baserom.gba ; $(call dump_data,0x28B764,0x1000)

assets/sprites/gUnknown_0828C844.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_0828C844.4bpp: baserom.gba ; $(call dump_data,0x28C844,0x600)

assets/sprites/gUnknown_0828D08C.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_0828D08C.4bpp: baserom.gba ; $(call dump_data,0x28D08C,0x200)

assets/sprites/gUnknown_0828D324.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_0828D324.4bpp: baserom.gba ; $(call dump_data,0x28D324,0x800)

assets/sprites/gUnknown_0828DD6C.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0828DD6C.4bpp: baserom.gba ; $(call dump_data,0x28DD6C,0x700)

assets/sprites/gUnknown_0828E6B4.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0828E6B4.4bpp: baserom.gba ; $(call dump_data,0x28E6B4,0x700)

assets/sprites/gUnknown_0828F11C.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0828F11C.4bpp: baserom.gba ; $(call dump_data,0x28F11C,0xC00)

assets/sprites/gUnknown_0828FF64.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0828FF64.4bpp: baserom.gba ; $(call dump_data,0x28FF64,0x80)

assets/sprites/gUnknown_0829022C.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0829022C.4bpp: baserom.gba ; $(call dump_data,0x29022C,0x80)

assets/sprites/gUnknown_082904F4.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_082904F4.4bpp: baserom.gba ; $(call dump_data,0x2904F4,0x80)

assets/sprites/gUnknown_082907BC.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_082907BC.4bpp: baserom.gba ; $(call dump_data,0x2907BC,0x80)

assets/sprites/gUnknown_08290BA4.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08290BA4.4bpp: baserom.gba ; $(call dump_data,0x290BA4,0x1800)

assets/sprites/gUnknown_082925EC.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082925EC.4bpp: baserom.gba ; $(call dump_data,0x2925EC,0x1000)

assets/sprites/gUnknown_08293834.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_08293834.4bpp: baserom.gba ; $(call dump_data,0x293834,0x400)

assets/sprites/gUnknown_08293F9C.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_08293F9C.4bpp: baserom.gba ; $(call dump_data,0x293F9C,0x300)

assets/sprites/gUnknown_082944E4.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082944E4.4bpp: baserom.gba ; $(call dump_data,0x2944E4,0x1000)

assets/sprites/gUnknown_08295510.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_08295510.4bpp: baserom.gba ; $(call dump_data,0x295510,0x20)

assets/sprites/gUnknown_0829555C.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_0829555C.4bpp: baserom.gba ; $(call dump_data,0x29555C,0x20)

assets/sprites/gUnknown_082955A8.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_082955A8.4bpp: baserom.gba ; $(call dump_data,0x2955A8,0x20)

assets/sprites/gUnknown_082955F4.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_082955F4.4bpp: baserom.gba ; $(call dump_data,0x2955F4,0x20)

assets/sprites/gUnknown_08295640.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_08295640.4bpp: baserom.gba ; $(call dump_data,0x295640,0x20)

assets/sprites/gUnknown_0829568C.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_0829568C.4bpp: baserom.gba ; $(call dump_data,0x29568C,0x100)

assets/sprites/gUnknown_082957B8.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_082957B8.4bpp: baserom.gba ; $(call dump_data,0x2957B8,0x800)

assets/sprites/gUnknown_08295FE4.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_08295FE4.4bpp: baserom.gba ; $(call dump_data,0x295FE4,0x800)

assets/sprites/gUnknown_08296810.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_08296810.4bpp: baserom.gba ; $(call dump_data,0x296810,0x800)

assets/sprites/gUnknown_0829703C.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_0829703C.4bpp: baserom.gba ; $(call dump_data,0x29703C,0x100)

assets/sprites/gUnknown_08297168.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08297168.4bpp: baserom.gba ; $(call dump_data,0x297168,0x100)

assets/sprites/gUnknown_08297294.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08297294.4bpp: baserom.gba ; $(call dump_data,0x297294,0x100)

assets/sprites/gUnknown_082973C0.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082973C0.4bpp: baserom.gba ; $(call dump_data,0x2973C0,0x100)

assets/sprites/gUnknown_082974EC.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082974EC.4bpp: baserom.gba ; $(call dump_data,0x2974EC,0x100)

assets/sprites/gUnknown_08297618.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08297618.4bpp: baserom.gba ; $(call dump_data,0x297618,0x100)

assets/sprites/gUnknown_08297744.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08297744.4bpp: baserom.gba ; $(call dump_data,0x297744,0x100)

assets/sprites/gUnknown_08297870.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08297870.4bpp: baserom.gba ; $(call dump_data,0x297870,0x100)

assets/sprites/gUnknown_0829799C.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_0829799C.4bpp: baserom.gba ; $(call dump_data,0x29799C,0x100)

assets/sprites/gUnknown_08297AC8.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08297AC8.4bpp: baserom.gba ; $(call dump_data,0x297AC8,0x100)

assets/sprites/gUnknown_08297BF4.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08297BF4.4bpp: baserom.gba ; $(call dump_data,0x297BF4,0x100)

assets/sprites/gUnknown_08297D20.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08297D20.4bpp: baserom.gba ; $(call dump_data,0x297D20,0x100)

assets/sprites/gUnknown_08297E4C.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08297E4C.4bpp: baserom.gba ; $(call dump_data,0x297E4C,0x100)

assets/sprites/gUnknown_08297F78.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08297F78.4bpp: baserom.gba ; $(call dump_data,0x297F78,0x100)

assets/sprites/gUnknown_082980A4.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082980A4.4bpp: baserom.gba ; $(call dump_data,0x2980A4,0x100)

assets/sprites/gUnknown_082981D0.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082981D0.4bpp: baserom.gba ; $(call dump_data,0x2981D0,0x100)

assets/sprites/gUnknown_082982FC.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082982FC.4bpp: baserom.gba ; $(call dump_data,0x2982FC,0x100)

assets/sprites/gUnknown_08298428.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08298428.4bpp: baserom.gba ; $(call dump_data,0x298428,0x100)

assets/sprites/gUnknown_08298554.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08298554.4bpp: baserom.gba ; $(call dump_data,0x298554,0x100)

assets/sprites/gUnknown_08298680.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08298680.4bpp: baserom.gba ; $(call dump_data,0x298680,0x100)

assets/sprites/gUnknown_082987AC.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082987AC.4bpp: baserom.gba ; $(call dump_data,0x2987AC,0x100)

assets/sprites/gUnknown_082988D8.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082988D8.4bpp: baserom.gba ; $(call dump_data,0x2988D8,0x100)

assets/sprites/gUnknown_08298A04.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08298A04.4bpp: baserom.gba ; $(call dump_data,0x298A04,0x100)

assets/sprites/gUnknown_08298B30.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08298B30.4bpp: baserom.gba ; $(call dump_data,0x298B30,0x100)

assets/sprites/gUnknown_08298C5C.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08298C5C.4bpp: baserom.gba ; $(call dump_data,0x298C5C,0x100)

assets/sprites/gUnknown_08298D88.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08298D88.4bpp: baserom.gba ; $(call dump_data,0x298D88,0x100)

assets/sprites/gUnknown_08298EB4.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08298EB4.4bpp: baserom.gba ; $(call dump_data,0x298EB4,0x100)

assets/sprites/gUnknown_08298FE0.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08298FE0.4bpp: baserom.gba ; $(call dump_data,0x298FE0,0x100)

assets/sprites/gUnknown_0829910C.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_0829910C.4bpp: baserom.gba ; $(call dump_data,0x29910C,0x100)

assets/sprites/gUnknown_08299238.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08299238.4bpp: baserom.gba ; $(call dump_data,0x299238,0x100)

assets/sprites/gUnknown_08299364.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08299364.4bpp: baserom.gba ; $(call dump_data,0x299364,0x100)

assets/sprites/gUnknown_08299490.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08299490.4bpp: baserom.gba ; $(call dump_data,0x299490,0x100)

assets/sprites/gUnknown_082995BC.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082995BC.4bpp: baserom.gba ; $(call dump_data,0x2995BC,0x100)

assets/sprites/gUnknown_082996E8.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082996E8.4bpp: baserom.gba ; $(call dump_data,0x2996E8,0x100)

assets/sprites/gUnknown_08299814.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08299814.4bpp: baserom.gba ; $(call dump_data,0x299814,0x100)

assets/sprites/gUnknown_08299940.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08299940.4bpp: baserom.gba ; $(call dump_data,0x299940,0x100)

assets/sprites/gUnknown_08299BF8.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08299BF8.4bpp: baserom.gba ; $(call dump_data,0x299BF8,0xC00)

assets/sprites/gUnknown_0829A824.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_0829A824.8bpp: baserom.gba ; $(call dump_data,0x29A824,0x1000)

assets/sprites/gUnknown_0829BA6C.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0829BA6C.4bpp: baserom.gba ; $(call dump_data,0x29BA6C,0x800)

assets/sprites/gUnknown_0829C4B4.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0829C4B4.4bpp: baserom.gba ; $(call dump_data,0x29C4B4,0x800)

assets/sprites/gUnknown_0829CEFC.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0829CEFC.4bpp: baserom.gba ; $(call dump_data,0x29CEFC,0x80)

assets/sprites/gUnknown_0829D1C4.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0829D1C4.4bpp: baserom.gba ; $(call dump_data,0x29D1C4,0x800)

assets/sprites/gUnknown_0829D9F0.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0829D9F0.4bpp: baserom.gba ; $(call dump_data,0x29D9F0,0x80)

assets/sprites/gUnknown_0829DCB8.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0829DCB8.4bpp: baserom.gba ; $(call dump_data,0x29DCB8,0x1000)

assets/sprites/gUnknown_0829EDBC.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0829EDBC.4bpp: baserom.gba ; $(call dump_data,0x29EDBC,0x700)

assets/sprites/gUnknown_0829F674.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_0829F674.4bpp: baserom.gba ; $(call dump_data,0x29F674,0x1800)

assets/sprites/gUnknown_082A0F9C.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_082A0F9C.4bpp: baserom.gba ; $(call dump_data,0x2A0F9C,0x400)

assets/sprites/gUnknown_082A147C.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082A147C.4bpp: baserom.gba ; $(call dump_data,0x2A147C,0xC00)

assets/sprites/gUnknown_082A22C4.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082A22C4.4bpp: baserom.gba ; $(call dump_data,0x2A22C4,0x2000)

assets/sprites/gUnknown_082A435C.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082A435C.4bpp: baserom.gba ; $(call dump_data,0x2A435C,0x800)

assets/sprites/gUnknown_082A4C84.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082A4C84.4bpp: baserom.gba ; $(call dump_data,0x2A4C84,0x1000)

assets/sprites/gUnknown_082A5D64.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_082A5D64.4bpp: baserom.gba ; $(call dump_data,0x2A5D64,0x300)

assets/sprites/gUnknown_082A618C.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_082A618C.4bpp: baserom.gba ; $(call dump_data,0x2A618C,0x400)

assets/sprites/gUnknown_082A6918.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_082A6918.4bpp: baserom.gba ; $(call dump_data,0x2A6918,0x300)

assets/sprites/gUnknown_082A6CF8.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_082A6CF8.4bpp: baserom.gba ; $(call dump_data,0x2A6CF8,0x300)

assets/sprites/gUnknown_082A70B4.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_082A70B4.4bpp: baserom.gba ; $(call dump_data,0x2A70B4,0x280)

assets/sprites/gUnknown_082A745C.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_082A745C.4bpp: baserom.gba ; $(call dump_data,0x2A745C,0x400)

assets/sprites/gUnknown_082A793C.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_082A793C.4bpp: baserom.gba ; $(call dump_data,0x2A793C,0x300)

assets/sprites/gUnknown_082A7DF4.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082A7DF4.4bpp: baserom.gba ; $(call dump_data,0x2A7DF4,0x1800)

assets/sprites/gUnknown_082A983C.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082A983C.4bpp: baserom.gba ; $(call dump_data,0x2A983C,0x2000)

assets/sprites/gUnknown_082AB8D4.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082AB8D4.4bpp: baserom.gba ; $(call dump_data,0x2AB8D4,0x800)

assets/sprites/gUnknown_082AC2B0.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082AC2B0.4bpp: baserom.gba ; $(call dump_data,0x2AC2B0,0x1800)

assets/sprites/gUnknown_082ADADC.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_082ADADC.4bpp: baserom.gba ; $(call dump_data,0x2ADADC,0x100)
assets/sprites/gUnknown_082ADADC.png: $(TMPDIR)/palettes/37_world_one_obj.5.gbapal

assets/sprites/gUnknown_082ADE24.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_082ADE24.4bpp: baserom.gba ; $(call dump_data,0x2ADE24,0x1000)
assets/sprites/gUnknown_082ADE24.png: $(TMPDIR)/palettes/37_world_one_obj.5.gbapal

assets/sprites/gUnknown_082AEE50.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_082AEE50.4bpp: baserom.gba ; $(call dump_data,0x2AEE50,0x100)
assets/sprites/gUnknown_082AEE50.png: $(TMPDIR)/palettes/37_world_one_obj.5.gbapal

assets/sprites/gUnknown_082AEF7C.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_082AEF7C.4bpp: baserom.gba ; $(call dump_data,0x2AEF7C,0x800)
assets/sprites/gUnknown_082AEF7C.png: $(TMPDIR)/palettes/9_obj.8.gbapal

assets/sprites/BonusPresent.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/BonusPresent.4bpp: baserom.gba ; $(call dump_data,0x2AF7A8,0x800)
assets/sprites/BonusPresent.png: $(TMPDIR)/palettes/9_obj.8.gbapal

assets/sprites/BonusPresentSquish.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/BonusPresentSquish.4bpp: baserom.gba ; $(call dump_data,0x2B0088,0x3000)
assets/sprites/BonusPresentSquish.png: $(TMPDIR)/palettes/9_obj.8.gbapal

assets/sprites/gUnknown_082B30B4.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_082B30B4.4bpp: baserom.gba ; $(call dump_data,0x2B30B4,0x400)
assets/sprites/gUnknown_082B30B4.png: $(TMPDIR)/palettes/9_obj.8.gbapal

assets/sprites/gUnknown_082B354C.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082B354C.4bpp: baserom.gba ; $(call dump_data,0x2B354C,0x1000)
assets/sprites/gUnknown_082B354C.png: $(TMPDIR)/palettes/9_obj.8.gbapal

assets/sprites/gUnknown_082B45E4.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082B45E4.4bpp: baserom.gba ; $(call dump_data,0x2B45E4,0x1000)
assets/sprites/gUnknown_082B45E4.png: $(TMPDIR)/palettes/9_obj.8.gbapal

assets/sprites/gUnknown_082B567C.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_082B567C.4bpp: baserom.gba ; $(call dump_data,0x2B567C,0x1000)
assets/sprites/gUnknown_082B567C.png: $(TMPDIR)/palettes/9_obj.8.gbapal

assets/sprites/gUnknown_082B6714.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_082B6714.4bpp: baserom.gba ; $(call dump_data,0x2B6714,0x1000)
assets/sprites/gUnknown_082B6714.png: $(TMPDIR)/palettes/9_obj.8.gbapal

assets/sprites/gUnknown_082B7884.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082B7884.4bpp: baserom.gba ; $(call dump_data,0x2B7884,0x1400)

assets/sprites/gUnknown_082B8F5C.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_082B8F5C.4bpp: baserom.gba ; $(call dump_data,0x2B8F5C,0xA000)

assets/sprites/gUnknown_082C32C4.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082C32C4.8bpp: baserom.gba ; $(call dump_data,0x2C32C4,0x400)
assets/sprites/gUnknown_082C32C4.png: $(TMPDIR)/palettes/37_world_one_obj.gbapal

assets/sprites/gUnknown_082C37C8.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082C37C8.4bpp: baserom.gba ; $(call dump_data,0x2C37C8,0xE00)
assets/sprites/gUnknown_082C37C8.png: $(TMPDIR)/palettes/37_world_one_obj.2.gbapal

assets/sprites/gUnknown_082C4714.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082C4714.8bpp: baserom.gba ; $(call dump_data,0x2C4714,0x2400)

assets/sprites/gUnknown_082C6B40.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082C6B40.4bpp: baserom.gba ; $(call dump_data,0x2C6B40,0x100)

assets/sprites/gUnknown_082C6C6C.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082C6C6C.4bpp: baserom.gba ; $(call dump_data,0x2C6C6C,0x100)

assets/sprites/gUnknown_082C6D98.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082C6D98.4bpp: baserom.gba ; $(call dump_data,0x2C6D98,0x100)

assets/sprites/gUnknown_082C6EC4.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_082C6EC4.4bpp: baserom.gba ; $(call dump_data,0x2C6EC4,0x400)

assets/sprites/gUnknown_082C72F0.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_082C72F0.4bpp: baserom.gba ; $(call dump_data,0x2C72F0,0x40)

assets/sprites/gUnknown_082C735C.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_082C735C.4bpp: baserom.gba ; $(call dump_data,0x2C735C,0x400)

assets/sprites/gUnknown_082C7788.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_082C7788.4bpp: baserom.gba ; $(call dump_data,0x2C7788,0x400)

assets/sprites/gUnknown_082C7BB4.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_082C7BB4.4bpp: baserom.gba ; $(call dump_data,0x2C7BB4,0x400)

assets/sprites/gUnknown_082C7FE0.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082C7FE0.4bpp: baserom.gba ; $(call dump_data,0x2C7FE0,0x100)

assets/sprites/gUnknown_082C810C.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082C810C.4bpp: baserom.gba ; $(call dump_data,0x2C810C,0x100)

assets/sprites/gUnknown_082C8238.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_082C8238.4bpp: baserom.gba ; $(call dump_data,0x2C8238,0x80)

assets/sprites/gUnknown_082C82E4.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082C82E4.4bpp: baserom.gba ; $(call dump_data,0x2C82E4,0x200)

assets/sprites/gUnknown_082C8510.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_082C8510.8bpp: baserom.gba ; $(call dump_data,0x2C8510,0x200)

assets/sprites/gUnknown_082C873C.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_082C873C.8bpp: baserom.gba ; $(call dump_data,0x2C873C,0x1000)
assets/sprites/gUnknown_082C873C.png: $(TMPDIR)/palettes/5_level_help_obj.gbapal

assets/sprites/gUnknown_082C9768.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_082C9768.8bpp: baserom.gba ; $(call dump_data,0x2C9768,0x1000)
assets/sprites/gUnknown_082C9768.png: $(TMPDIR)/palettes/5_level_help_obj.gbapal

assets/sprites/gUnknown_082CA794.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082CA794.8bpp: baserom.gba ; $(call dump_data,0x2CA794,0x200)
assets/sprites/gUnknown_082CA794.png: $(TMPDIR)/palettes/5_level_help_obj.gbapal

assets/sprites/gUnknown_082CA9C0.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082CA9C0.8bpp: baserom.gba ; $(call dump_data,0x2CA9C0,0x200)
assets/sprites/gUnknown_082CA9C0.png: $(TMPDIR)/palettes/5_level_help_obj.gbapal

assets/sprites/gUnknown_082CABEC.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_082CABEC.8bpp: baserom.gba ; $(call dump_data,0x2CABEC,0x100)

assets/sprites/gUnknown_082CAD18.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082CAD18.8bpp: baserom.gba ; $(call dump_data,0x2CAD18,0x400)

assets/sprites/gUnknown_082CB144.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082CB144.8bpp: baserom.gba ; $(call dump_data,0x2CB144,0x400)

assets/sprites/gUnknown_082CB570.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_082CB570.4bpp: baserom.gba ; $(call dump_data,0x2CB570,0x40)

assets/sprites/gUnknown_082CB5DC.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082CB5DC.4bpp: baserom.gba ; $(call dump_data,0x2CB5DC,0x100)

assets/sprites/gUnknown_082CB708.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082CB708.4bpp: baserom.gba ; $(call dump_data,0x2CB708,0x100)

assets/sprites/gUnknown_082CB834.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082CB834.4bpp: baserom.gba ; $(call dump_data,0x2CB834,0x100)

assets/sprites/gUnknown_082CB960.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082CB960.4bpp: baserom.gba ; $(call dump_data,0x2CB960,0x200)

assets/sprites/gUnknown_082CBB8C.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082CBB8C.4bpp: baserom.gba ; $(call dump_data,0x2CBB8C,0x200)

assets/sprites/gUnknown_082CBDB8.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082CBDB8.4bpp: baserom.gba ; $(call dump_data,0x2CBDB8,0x200)

assets/sprites/gUnknown_082CBFE4.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_082CBFE4.4bpp: baserom.gba ; $(call dump_data,0x2CBFE4,0x80)

assets/sprites/gUnknown_082CC090.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082CC090.8bpp: baserom.gba ; $(call dump_data,0x2CC090,0x400)
assets/sprites/gUnknown_082CC090.png: $(TMPDIR)/palettes/5_level_help_obj.gbapal

assets/sprites/gUnknown_082CC4BC.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082CC4BC.8bpp: baserom.gba ; $(call dump_data,0x2CC4BC,0x400)
assets/sprites/gUnknown_082CC4BC.png: $(TMPDIR)/palettes/5_level_help_obj.gbapal

assets/sprites/gUnknown_082CC8E8.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_082CC8E8.8bpp: baserom.gba ; $(call dump_data,0x2CC8E8,0x1000)
assets/sprites/gUnknown_082CC8E8.png: $(TMPDIR)/palettes/5_level_help_obj.gbapal

assets/sprites/gUnknown_082CD914.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082CD914.4bpp: baserom.gba ; $(call dump_data,0x2CD914,0x100)

assets/sprites/gUnknown_082CDA40.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082CDA40.4bpp: baserom.gba ; $(call dump_data,0x2CDA40,0x100)

assets/sprites/gUnknown_082CDB6C.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082CDB6C.4bpp: baserom.gba ; $(call dump_data,0x2CDB6C,0x100)

assets/sprites/gUnknown_082CDC98.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082CDC98.4bpp: baserom.gba ; $(call dump_data,0x2CDC98,0x100)

assets/sprites/gUnknown_082CDDC4.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082CDDC4.4bpp: baserom.gba ; $(call dump_data,0x2CDDC4,0x100)

assets/sprites/gUnknown_082CDEF0.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_082CDEF0.4bpp: baserom.gba ; $(call dump_data,0x2CDEF0,0x400)

assets/sprites/gUnknown_082CE31C.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_082CE31C.4bpp: baserom.gba ; $(call dump_data,0x2CE31C,0x400)

assets/sprites/gUnknown_082CE748.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_082CE748.4bpp: baserom.gba ; $(call dump_data,0x2CE748,0x80)

assets/sprites/gUnknown_082CE7F4.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_082CE7F4.4bpp: baserom.gba ; $(call dump_data,0x2CE7F4,0x100)

assets/sprites/gUnknown_082CE920.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_082CE920.8bpp: baserom.gba ; $(call dump_data,0x2CE920,0x80)

assets/sprites/gUnknown_082CE9CC.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082CE9CC.8bpp: baserom.gba ; $(call dump_data,0x2CE9CC,0x400)

assets/sprites/gUnknown_082CEDF8.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082CEDF8.8bpp: baserom.gba ; $(call dump_data,0x2CEDF8,0x400)

assets/sprites/gUnknown_082CF224.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082CF224.8bpp: baserom.gba ; $(call dump_data,0x2CF224,0x800)
assets/sprites/gUnknown_082CF224.png: $(TMPDIR)/palettes/5_level_help_obj.gbapal

assets/sprites/gUnknown_082CFA50.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_082CFA50.8bpp: baserom.gba ; $(call dump_data,0x2CFA50,0x1000)
assets/sprites/gUnknown_082CFA50.png: $(TMPDIR)/palettes/5_level_help_obj.gbapal

assets/sprites/gUnknown_082D0A7C.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082D0A7C.8bpp: baserom.gba ; $(call dump_data,0x2D0A7C,0x100)
assets/sprites/gUnknown_082D0A7C.png: $(TMPDIR)/palettes/5_level_help_obj.gbapal

assets/sprites/gUnknown_082D0BA8.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082D0BA8.4bpp: baserom.gba ; $(call dump_data,0x2D0BA8,0x100)

assets/sprites/gUnknown_082D0CD4.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082D0CD4.4bpp: baserom.gba ; $(call dump_data,0x2D0CD4,0x100)

assets/sprites/gUnknown_082D0E00.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_082D0E00.4bpp: baserom.gba ; $(call dump_data,0x2D0E00,0x400)

assets/sprites/gUnknown_082D122C.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_082D122C.8bpp: baserom.gba ; $(call dump_data,0x2D122C,0x100)

assets/sprites/gUnknown_082D1358.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_082D1358.8bpp: baserom.gba ; $(call dump_data,0x2D1358,0x80)

assets/sprites/gUnknown_082D1404.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_082D1404.8bpp: baserom.gba ; $(call dump_data,0x2D1404,0x1000)
assets/sprites/gUnknown_082D1404.png: $(TMPDIR)/palettes/5_level_help_obj.gbapal

assets/sprites/gUnknown_082D2430.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_082D2430.8bpp: baserom.gba ; $(call dump_data,0x2D2430,0x1000)
assets/sprites/gUnknown_082D2430.png: $(TMPDIR)/palettes/5_level_help_obj.gbapal

assets/sprites/gUnknown_082D345C.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082D345C.4bpp: baserom.gba ; $(call dump_data,0x2D345C,0x100)

assets/sprites/gUnknown_082D3588.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082D3588.4bpp: baserom.gba ; $(call dump_data,0x2D3588,0x100)

assets/sprites/gUnknown_082D36B4.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082D36B4.4bpp: baserom.gba ; $(call dump_data,0x2D36B4,0x100)

assets/sprites/gUnknown_082D37E0.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082D37E0.4bpp: baserom.gba ; $(call dump_data,0x2D37E0,0x100)

assets/sprites/gUnknown_082D390C.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_082D390C.4bpp: baserom.gba ; $(call dump_data,0x2D390C,0x400)

assets/sprites/gUnknown_082D3D38.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_082D3D38.8bpp: baserom.gba ; $(call dump_data,0x2D3D38,0x1000)
assets/sprites/gUnknown_082D3D38.png: $(TMPDIR)/palettes/5_level_help_obj.gbapal

assets/sprites/gUnknown_082D4D64.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_082D4D64.8bpp: baserom.gba ; $(call dump_data,0x2D4D64,0x1000)
assets/sprites/gUnknown_082D4D64.png: $(TMPDIR)/palettes/5_level_help_obj.gbapal

assets/sprites/gUnknown_082D5D90.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_082D5D90.8bpp: baserom.gba ; $(call dump_data,0x2D5D90,0x1000)
assets/sprites/gUnknown_082D5D90.png: $(TMPDIR)/palettes/5_level_help_obj.gbapal

assets/sprites/gUnknown_082D6DBC.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082D6DBC.4bpp: baserom.gba ; $(call dump_data,0x2D6DBC,0x100)

assets/sprites/gUnknown_082D6EE8.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082D6EE8.4bpp: baserom.gba ; $(call dump_data,0x2D6EE8,0x100)

assets/sprites/gUnknown_082D7014.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082D7014.4bpp: baserom.gba ; $(call dump_data,0x2D7014,0x100)

assets/sprites/gUnknown_082D7140.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082D7140.4bpp: baserom.gba ; $(call dump_data,0x2D7140,0x100)

assets/sprites/gUnknown_082D726C.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_082D726C.4bpp: baserom.gba ; $(call dump_data,0x2D726C,0x400)

assets/sprites/gUnknown_082D7698.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082D7698.4bpp: baserom.gba ; $(call dump_data,0x2D7698,0x200)

assets/sprites/gUnknown_082D78C4.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_082D78C4.8bpp: baserom.gba ; $(call dump_data,0x2D78C4,0x100)

assets/sprites/gUnknown_082D79F0.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_082D79F0.8bpp: baserom.gba ; $(call dump_data,0x2D79F0,0x1000)
assets/sprites/gUnknown_082D79F0.png: $(TMPDIR)/palettes/5_level_help_obj.gbapal

assets/sprites/gUnknown_082D8A1C.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_082D8A1C.8bpp: baserom.gba ; $(call dump_data,0x2D8A1C,0x1000)
assets/sprites/gUnknown_082D8A1C.png: $(TMPDIR)/palettes/5_level_help_obj.gbapal

assets/sprites/gUnknown_082D9A48.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_082D9A48.8bpp: baserom.gba ; $(call dump_data,0x2D9A48,0x1000)
assets/sprites/gUnknown_082D9A48.png: $(TMPDIR)/palettes/5_level_help_obj.gbapal

assets/sprites/gUnknown_082DAA74.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_082DAA74.4bpp: baserom.gba ; $(call dump_data,0x2DAA74,0x400)

assets/sprites/gUnknown_082DAEA0.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_082DAEA0.4bpp: baserom.gba ; $(call dump_data,0x2DAEA0,0x400)

assets/sprites/gUnknown_082DB2CC.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082DB2CC.4bpp: baserom.gba ; $(call dump_data,0x2DB2CC,0x100)

assets/sprites/gUnknown_082DB3F8.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082DB3F8.4bpp: baserom.gba ; $(call dump_data,0x2DB3F8,0x100)

assets/sprites/gUnknown_082DB524.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082DB524.4bpp: baserom.gba ; $(call dump_data,0x2DB524,0x100)

assets/sprites/gUnknown_082DB650.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082DB650.4bpp: baserom.gba ; $(call dump_data,0x2DB650,0x100)

assets/sprites/gUnknown_082DB77C.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082DB77C.4bpp: baserom.gba ; $(call dump_data,0x2DB77C,0x200)

assets/sprites/gUnknown_082DB9A8.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082DB9A8.8bpp: baserom.gba ; $(call dump_data,0x2DB9A8,0x200)

assets/sprites/gUnknown_082DBBD4.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082DBBD4.8bpp: baserom.gba ; $(call dump_data,0x2DBBD4,0x100)
assets/sprites/gUnknown_082DBBD4.png: $(TMPDIR)/palettes/5_level_help_obj.gbapal

assets/sprites/gUnknown_082DBD00.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_082DBD00.8bpp: baserom.gba ; $(call dump_data,0x2DBD00,0x800)
assets/sprites/gUnknown_082DBD00.png: $(TMPDIR)/palettes/5_level_help_obj.gbapal

assets/sprites/gUnknown_082DC52C.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_082DC52C.8bpp: baserom.gba ; $(call dump_data,0x2DC52C,0x800)
assets/sprites/gUnknown_082DC52C.png: $(TMPDIR)/palettes/5_level_help_obj.gbapal

assets/sprites/gUnknown_082DCD58.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_082DCD58.8bpp: baserom.gba ; $(call dump_data,0x2DCD58,0x80)
assets/sprites/gUnknown_082DCD58.png: $(TMPDIR)/palettes/5_level_help_obj.gbapal

assets/sprites/gUnknown_082DCE04.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082DCE04.8bpp: baserom.gba ; $(call dump_data,0x2DCE04,0x200)

assets/sprites/gUnknown_082DD030.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082DD030.8bpp: baserom.gba ; $(call dump_data,0x2DD030,0x200)

assets/sprites/gUnknown_082DD25C.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082DD25C.8bpp: baserom.gba ; $(call dump_data,0x2DD25C,0x200)

assets/sprites/gUnknown_082DD488.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082DD488.8bpp: baserom.gba ; $(call dump_data,0x2DD488,0x200)

assets/sprites/gUnknown_082DD6B4.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082DD6B4.8bpp: baserom.gba ; $(call dump_data,0x2DD6B4,0x400)

assets/sprites/gUnknown_082DDAE0.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082DDAE0.8bpp: baserom.gba ; $(call dump_data,0x2DDAE0,0x400)

assets/sprites/gUnknown_082DDF0C.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082DDF0C.8bpp: baserom.gba ; $(call dump_data,0x2DDF0C,0x400)

assets/sprites/gUnknown_082DE338.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082DE338.4bpp: baserom.gba ; $(call dump_data,0x2DE338,0x100)

assets/sprites/gUnknown_082DE464.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082DE464.4bpp: baserom.gba ; $(call dump_data,0x2DE464,0x100)

assets/sprites/gUnknown_082DE590.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082DE590.4bpp: baserom.gba ; $(call dump_data,0x2DE590,0x100)

assets/sprites/gUnknown_082DE6BC.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082DE6BC.4bpp: baserom.gba ; $(call dump_data,0x2DE6BC,0x100)

assets/sprites/gUnknown_082DE7E8.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_082DE7E8.4bpp: baserom.gba ; $(call dump_data,0x2DE7E8,0x400)
assets/sprites/gUnknown_082DE7E8.png: $(TMPDIR)/palettes/5_level_help_obj.13.gbapal

assets/sprites/gUnknown_082DEC14.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_082DEC14.4bpp: baserom.gba ; $(call dump_data,0x2DEC14,0x400)
assets/sprites/gUnknown_082DEC14.png: $(TMPDIR)/palettes/5_level_help_obj.13.gbapal

assets/sprites/gUnknown_082DF040.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082DF040.8bpp: baserom.gba ; $(call dump_data,0x2DF040,0x400)
assets/sprites/gUnknown_082DF040.png: $(TMPDIR)/palettes/5_level_help_obj.gbapal

assets/sprites/gUnknown_082DF46C.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_082DF46C.8bpp: baserom.gba ; $(call dump_data,0x2DF46C,0x1000)
assets/sprites/gUnknown_082DF46C.png: $(TMPDIR)/palettes/5_level_help_obj.gbapal

assets/sprites/gUnknown_082E0498.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_082E0498.8bpp: baserom.gba ; $(call dump_data,0x2E0498,0x1000)
assets/sprites/gUnknown_082E0498.png: $(TMPDIR)/palettes/5_level_help_obj.gbapal

assets/sprites/gUnknown_082E14C4.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_082E14C4.8bpp: baserom.gba ; $(call dump_data,0x2E14C4,0x800)
assets/sprites/gUnknown_082E14C4.png: $(TMPDIR)/palettes/5_level_help_obj.gbapal

assets/sprites/gUnknown_082E1CF0.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_082E1CF0.4bpp: baserom.gba ; $(call dump_data,0x2E1CF0,0x400)
assets/sprites/gUnknown_082E1CF0.png: $(TMPDIR)/palettes/5_level_help_obj.13.gbapal

assets/sprites/gUnknown_082E211C.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082E211C.8bpp: baserom.gba ; $(call dump_data,0x2E211C,0x800)
assets/sprites/gUnknown_082E211C.png: $(TMPDIR)/palettes/5_level_help_obj.gbapal

assets/sprites/gUnknown_082E2948.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_082E2948.8bpp: baserom.gba ; $(call dump_data,0x2E2948,0x80)

assets/sprites/gUnknown_082E29F4.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082E29F4.8bpp: baserom.gba ; $(call dump_data,0x2E29F4,0x400)

assets/sprites/gUnknown_082E2E20.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_082E2E20.8bpp: baserom.gba ; $(call dump_data,0x2E2E20,0x100)

assets/sprites/gUnknown_082E2F4C.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_082E2F4C.8bpp: baserom.gba ; $(call dump_data,0x2E2F4C,0x100)

assets/sprites/gUnknown_082E3078.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082E3078.8bpp: baserom.gba ; $(call dump_data,0x2E3078,0x200)

assets/sprites/gUnknown_082E32A4.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082E32A4.8bpp: baserom.gba ; $(call dump_data,0x2E32A4,0x100)

assets/sprites/gUnknown_082E33D0.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_082E33D0.8bpp: baserom.gba ; $(call dump_data,0x2E33D0,0x40)

assets/sprites/gUnknown_082E343C.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082E343C.4bpp: baserom.gba ; $(call dump_data,0x2E343C,0x200)
assets/sprites/gUnknown_082E343C.png: $(TMPDIR)/palettes/5_level_help_bg.15.gbapal

assets/sprites/gUnknown_082E3668.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082E3668.4bpp: baserom.gba ; $(call dump_data,0x2E3668,0x200)

assets/sprites/gUnknown_082E3894.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082E3894.4bpp: baserom.gba ; $(call dump_data,0x2E3894,0x200)

assets/sprites/gUnknown_082E3AC0.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082E3AC0.8bpp: baserom.gba ; $(call dump_data,0x2E3AC0,0x200)

assets/sprites/gUnknown_082E3CEC.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082E3CEC.4bpp: baserom.gba ; $(call dump_data,0x2E3CEC,0x200)

assets/sprites/gUnknown_082E3F18.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082E3F18.4bpp: baserom.gba ; $(call dump_data,0x2E3F18,0x100)

assets/sprites/gUnknown_082E4044.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082E4044.4bpp: baserom.gba ; $(call dump_data,0x2E4044,0x200)

assets/sprites/gUnknown_082E4270.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082E4270.4bpp: baserom.gba ; $(call dump_data,0x2E4270,0x200)

assets/sprites/gUnknown_082E449C.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082E449C.4bpp: baserom.gba ; $(call dump_data,0x2E449C,0x200)
assets/sprites/gUnknown_082E449C.png: $(TMPDIR)/palettes/5_level_help_bg.15.gbapal

assets/sprites/gUnknown_082E46C8.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082E46C8.4bpp: baserom.gba ; $(call dump_data,0x2E46C8,0x200)
assets/sprites/gUnknown_082E46C8.png: $(TMPDIR)/palettes/5_level_help_bg.15.gbapal

assets/sprites/gUnknown_082E48F4.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082E48F4.4bpp: baserom.gba ; $(call dump_data,0x2E48F4,0x200)
assets/sprites/gUnknown_082E48F4.png: $(TMPDIR)/palettes/5_level_help_bg.15.gbapal

assets/sprites/gUnknown_082E4B20.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_082E4B20.4bpp: baserom.gba ; $(call dump_data,0x2E4B20,0x100)

assets/sprites/gUnknown_082E4C4C.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082E4C4C.4bpp: baserom.gba ; $(call dump_data,0x2E4C4C,0x200)

assets/sprites/gUnknown_082E4E78.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082E4E78.8bpp: baserom.gba ; $(call dump_data,0x2E4E78,0x100)

assets/sprites/gUnknown_082E4FA4.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082E4FA4.8bpp: baserom.gba ; $(call dump_data,0x2E4FA4,0x400)

assets/sprites/gUnknown_082E53D0.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082E53D0.8bpp: baserom.gba ; $(call dump_data,0x2E53D0,0x400)

assets/sprites/gUnknown_082E57FC.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082E57FC.8bpp: baserom.gba ; $(call dump_data,0x2E57FC,0x400)

assets/sprites/gUnknown_082E5C28.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082E5C28.8bpp: baserom.gba ; $(call dump_data,0x2E5C28,0x400)

assets/sprites/gUnknown_082E6054.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082E6054.8bpp: baserom.gba ; $(call dump_data,0x2E6054,0x400)

assets/sprites/gUnknown_082E6480.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_082E6480.8bpp: baserom.gba ; $(call dump_data,0x2E6480,0x100)

assets/sprites/gUnknown_082E65AC.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082E65AC.8bpp: baserom.gba ; $(call dump_data,0x2E65AC,0x100)

assets/sprites/gUnknown_082E66D8.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_082E66D8.8bpp: baserom.gba ; $(call dump_data,0x2E66D8,0x40)

assets/sprites/gUnknown_082E6768.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_082E6768.4bpp: baserom.gba ; $(call dump_data,0x2E6768,0x100)

assets/sprites/gUnknown_082E6948.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082E6948.8bpp: baserom.gba ; $(call dump_data,0x2E6948,0x1800)

assets/sprites/gUnknown_082E8198.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_082E8198.4bpp: baserom.gba ; $(call dump_data,0x2E8198,0x100)

assets/sprites/gUnknown_082E830C.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_082E830C.4bpp: baserom.gba ; $(call dump_data,0x2E830C,0x180)

assets/sprites/gUnknown_082E84DC.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082E84DC.4bpp: baserom.gba ; $(call dump_data,0x2E84DC,0x400)

assets/sprites/gUnknown_082E8908.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082E8908.4bpp: baserom.gba ; $(call dump_data,0x2E8908,0x100)

assets/sprites/gUnknown_082E8A58.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082E8A58.4bpp: baserom.gba ; $(call dump_data,0x2E8A58,0x400)

assets/sprites/gUnknown_082E8EA8.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_082E8EA8.8bpp: baserom.gba ; $(call dump_data,0x2E8EA8,0x200)

assets/sprites/gUnknown_082E911C.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_082E911C.8bpp: baserom.gba ; $(call dump_data,0x2E911C,0x180)

assets/sprites/gUnknown_082E92C8.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082E92C8.8bpp: baserom.gba ; $(call dump_data,0x2E92C8,0x200)

assets/sprites/gUnknown_082E94F4.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_082E94F4.4bpp: baserom.gba ; $(call dump_data,0x2E94F4,0x80)

assets/sprites/gUnknown_082E9654.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082E9654.8bpp: baserom.gba ; $(call dump_data,0x2E9654,0x1800)

assets/sprites/gUnknown_082EAE80.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_082EAE80.4bpp: baserom.gba ; $(call dump_data,0x2EAE80,0x80)

assets/sprites/gUnknown_082EAF98.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_082EAF98.4bpp: baserom.gba ; $(call dump_data,0x2EAF98,0x180)

assets/sprites/gUnknown_082EB1C4.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_082EB1C4.4bpp: baserom.gba ; $(call dump_data,0x2EB1C4,0x80)

assets/sprites/gUnknown_082EB2B8.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_082EB2B8.4bpp: baserom.gba ; $(call dump_data,0x2EB2B8,0x800)

assets/sprites/gUnknown_082EBB08.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_082EBB08.4bpp: baserom.gba ; $(call dump_data,0x2EBB08,0x100)

assets/sprites/gUnknown_082EBC34.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082EBC34.8bpp: baserom.gba ; $(call dump_data,0x2EBC34,0x200)

assets/sprites/gUnknown_082EBE60.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082EBE60.8bpp: baserom.gba ; $(call dump_data,0x2EBE60,0x200)

assets/sprites/gUnknown_082EC0D4.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_082EC0D4.4bpp: baserom.gba ; $(call dump_data,0x2EC0D4,0x80)

assets/sprites/gUnknown_082EC1EC.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_082EC1EC.4bpp: baserom.gba ; $(call dump_data,0x2EC1EC,0x80)

assets/sprites/gUnknown_082EC2E0.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_082EC2E0.8bpp: baserom.gba ; $(call dump_data,0x2EC2E0,0x300)

assets/sprites/gUnknown_082EC750.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_082EC750.4bpp: baserom.gba ; $(call dump_data,0x2EC750,0x280)

assets/sprites/gUnknown_082ECB40.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_082ECB40.4bpp: baserom.gba ; $(call dump_data,0x2ECB40,0x280)

assets/sprites/gUnknown_082ECF9C.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_082ECF9C.4bpp: baserom.gba ; $(call dump_data,0x2ECF9C,0x1A0)

assets/sprites/gUnknown_082ED288.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_082ED288.4bpp: baserom.gba ; $(call dump_data,0x2ED288,0x240)

assets/sprites/gUnknown_082ED4F4.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_082ED4F4.4bpp: baserom.gba ; $(call dump_data,0x2ED4F4,0x80)

assets/sprites/gUnknown_082ED5C4.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_082ED5C4.8bpp: baserom.gba ; $(call dump_data,0x2ED5C4,0x80)

assets/sprites/gUnknown_082ED670.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082ED670.4bpp: baserom.gba ; $(call dump_data,0x2ED670,0x100)

assets/sprites/gUnknown_082ED79C.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082ED79C.4bpp: baserom.gba ; $(call dump_data,0x2ED79C,0x100)

assets/sprites/gUnknown_082ED8C8.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082ED8C8.4bpp: baserom.gba ; $(call dump_data,0x2ED8C8,0x100)

assets/sprites/gUnknown_082ED9F4.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082ED9F4.4bpp: baserom.gba ; $(call dump_data,0x2ED9F4,0x100)

assets/sprites/gUnknown_082EDB20.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082EDB20.4bpp: baserom.gba ; $(call dump_data,0x2EDB20,0x100)

assets/sprites/gUnknown_082EDC4C.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_082EDC4C.4bpp: baserom.gba ; $(call dump_data,0x2EDC4C,0x80)

assets/sprites/gUnknown_082EDCF8.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082EDCF8.4bpp: baserom.gba ; $(call dump_data,0x2EDCF8,0x100)

assets/sprites/gUnknown_082EDE24.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082EDE24.4bpp: baserom.gba ; $(call dump_data,0x2EDE24,0x100)

assets/sprites/gUnknown_082EDF50.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082EDF50.4bpp: baserom.gba ; $(call dump_data,0x2EDF50,0x100)

assets/sprites/gUnknown_082EE07C.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082EE07C.4bpp: baserom.gba ; $(call dump_data,0x2EE07C,0x80)

assets/sprites/gUnknown_082EE128.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_082EE128.4bpp: baserom.gba ; $(call dump_data,0x2EE128,0x40)

assets/sprites/gUnknown_082EE194.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082EE194.4bpp: baserom.gba ; $(call dump_data,0x2EE194,0x80)

assets/sprites/gUnknown_082EE264.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082EE264.4bpp: baserom.gba ; $(call dump_data,0x2EE264,0x200)

assets/sprites/gUnknown_082EE4B4.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082EE4B4.4bpp: baserom.gba ; $(call dump_data,0x2EE4B4,0x200)

assets/sprites/gUnknown_082EE704.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082EE704.4bpp: baserom.gba ; $(call dump_data,0x2EE704,0x200)

assets/sprites/gUnknown_082EE954.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082EE954.4bpp: baserom.gba ; $(call dump_data,0x2EE954,0x200)

assets/sprites/gUnknown_082EEBA4.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082EEBA4.4bpp: baserom.gba ; $(call dump_data,0x2EEBA4,0x200)

assets/sprites/gUnknown_082EEDF4.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_082EEDF4.4bpp: baserom.gba ; $(call dump_data,0x2EEDF4,0x100)

assets/sprites/gUnknown_082EEF44.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082EEF44.4bpp: baserom.gba ; $(call dump_data,0x2EEF44,0x200)

assets/sprites/gUnknown_082EF194.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082EF194.4bpp: baserom.gba ; $(call dump_data,0x2EF194,0x200)

assets/sprites/gUnknown_082EF3E4.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082EF3E4.4bpp: baserom.gba ; $(call dump_data,0x2EF3E4,0x200)

assets/sprites/gUnknown_082EF634.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082EF634.4bpp: baserom.gba ; $(call dump_data,0x2EF634,0x100)

assets/sprites/gUnknown_082EF784.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_082EF784.4bpp: baserom.gba ; $(call dump_data,0x2EF784,0x80)

assets/sprites/gUnknown_082EF92C.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_082EF92C.4bpp: baserom.gba ; $(call dump_data,0x2EF92C,0x200)

assets/sprites/gUnknown_082EFB58.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082EFB58.4bpp: baserom.gba ; $(call dump_data,0x2EFB58,0x80)

assets/sprites/gUnknown_082EFC04.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_082EFC04.4bpp: baserom.gba ; $(call dump_data,0x2EFC04,0x40)

assets/sprites/gUnknown_082EFC70.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_082EFC70.4bpp: baserom.gba ; $(call dump_data,0x2EFC70,0x20)

assets/sprites/gUnknown_082EFCBC.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_082EFCBC.4bpp: baserom.gba ; $(call dump_data,0x2EFCBC,0x20)

assets/sprites/gUnknown_082EFD08.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_082EFD08.4bpp: baserom.gba ; $(call dump_data,0x2EFD08,0x80)

assets/sprites/gUnknown_082EFDB4.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_082EFDB4.4bpp: baserom.gba ; $(call dump_data,0x2EFDB4,0x20)

assets/sprites/gUnknown_082EFE00.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_082EFE00.4bpp: baserom.gba ; $(call dump_data,0x2EFE00,0x20)

assets/sprites/gUnknown_082EFE4C.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_082EFE4C.4bpp: baserom.gba ; $(call dump_data,0x2EFE4C,0x20)

assets/sprites/gUnknown_082EFE98.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_082EFE98.4bpp: baserom.gba ; $(call dump_data,0x2EFE98,0x20)

assets/sprites/gUnknown_082EFF2C.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_082EFF2C.4bpp: baserom.gba ; $(call dump_data,0x2EFF2C,0x20)

assets/sprites/gUnknown_082EFFB8.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_082EFFB8.4bpp: baserom.gba ; $(call dump_data,0x2EFFB8,0x20)

assets/sprites/gUnknown_082F0004.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_082F0004.4bpp: baserom.gba ; $(call dump_data,0x2F0004,0x20)

assets/sprites/gUnknown_082F01B8.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_082F01B8.4bpp: baserom.gba ; $(call dump_data,0x2F01B8,0x160)

assets/sprites/gUnknown_082F0344.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_082F0344.4bpp: baserom.gba ; $(call dump_data,0x2F0344,0x20)

assets/sprites/gUnknown_082F0444.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_082F0444.4bpp: baserom.gba ; $(call dump_data,0x2F0444,0x300)

assets/sprites/gUnknown_082F0770.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_082F0770.4bpp: baserom.gba ; $(call dump_data,0x2F0770,0x20)

assets/sprites/gUnknown_082F07BC.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_082F07BC.4bpp: baserom.gba ; $(call dump_data,0x2F07BC,0x20)

assets/sprites/gUnknown_082F0808.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_082F0808.4bpp: baserom.gba ; $(call dump_data,0x2F0808,0x20)

assets/sprites/gUnknown_082F0854.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_082F0854.4bpp: baserom.gba ; $(call dump_data,0x2F0854,0x20)

assets/sprites/gUnknown_082F08A0.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_082F08A0.4bpp: baserom.gba ; $(call dump_data,0x2F08A0,0x80)

assets/sprites/gUnknown_082F094C.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_082F094C.4bpp: baserom.gba ; $(call dump_data,0x2F094C,0x20)

assets/sprites/gUnknown_082F0998.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_082F0998.4bpp: baserom.gba ; $(call dump_data,0x2F0998,0x80)

assets/sprites/gUnknown_082F0A68.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_082F0A68.4bpp: baserom.gba ; $(call dump_data,0x2F0A68,0x80)

assets/sprites/gUnknown_082F0B38.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_082F0B38.4bpp: baserom.gba ; $(call dump_data,0x2F0B38,0x80)

assets/sprites/gUnknown_082F0BE4.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082F0BE4.4bpp: baserom.gba ; $(call dump_data,0x2F0BE4,0x80)

assets/sprites/gUnknown_082F0C90.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_082F0C90.4bpp: baserom.gba ; $(call dump_data,0x2F0C90,0x40)

assets/sprites/gUnknown_082F0CFC.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082F0CFC.4bpp: baserom.gba ; $(call dump_data,0x2F0CFC,0x80)

assets/sprites/gUnknown_082F0DA8.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_082F0DA8.4bpp: baserom.gba ; $(call dump_data,0x2F0DA8,0x400)

assets/sprites/gUnknown_082F11D4.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_082F11D4.4bpp: baserom.gba ; $(call dump_data,0x2F11D4,0x400)

assets/sprites/gUnknown_082F1600.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_082F1600.4bpp: baserom.gba ; $(call dump_data,0x2F1600,0x80)

assets/sprites/gUnknown_082F1718.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_082F1718.4bpp: baserom.gba ; $(call dump_data,0x2F1718,0x180)

assets/sprites/gUnknown_082F1930.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_082F1930.4bpp: baserom.gba ; $(call dump_data,0x2F1930,0x180)

assets/sprites/gUnknown_082F1B48.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_082F1B48.4bpp: baserom.gba ; $(call dump_data,0x2F1B48,0x180)

assets/sprites/gUnknown_082F1CF4.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082F1CF4.4bpp: baserom.gba ; $(call dump_data,0x2F1CF4,0x100)

assets/sprites/gUnknown_082F1E68.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_082F1E68.4bpp: baserom.gba ; $(call dump_data,0x2F1E68,0x180)

assets/sprites/gUnknown_082F2014.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_082F2014.4bpp: baserom.gba ; $(call dump_data,0x2F2014,0x80)

assets/sprites/gUnknown_082F20C0.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_082F20C0.4bpp: baserom.gba ; $(call dump_data,0x2F20C0,0x80)

assets/sprites/gUnknown_082F216C.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_082F216C.4bpp: baserom.gba ; $(call dump_data,0x2F216C,0x80)

assets/sprites/gUnknown_082F2218.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_082F2218.4bpp: baserom.gba ; $(call dump_data,0x2F2218,0x80)

assets/sprites/gUnknown_082F22C4.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_082F22C4.4bpp: baserom.gba ; $(call dump_data,0x2F22C4,0x80)

assets/sprites/gUnknown_082F2370.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_082F2370.4bpp: baserom.gba ; $(call dump_data,0x2F2370,0x80)

assets/sprites/gUnknown_082F241C.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082F241C.4bpp: baserom.gba ; $(call dump_data,0x2F241C,0x200)

assets/sprites/gUnknown_082F2648.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082F2648.4bpp: baserom.gba ; $(call dump_data,0x2F2648,0x200)

assets/sprites/gUnknown_082F2874.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082F2874.4bpp: baserom.gba ; $(call dump_data,0x2F2874,0x200)

assets/sprites/gUnknown_082F2AA0.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082F2AA0.4bpp: baserom.gba ; $(call dump_data,0x2F2AA0,0x200)

assets/sprites/gUnknown_082F2CCC.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082F2CCC.4bpp: baserom.gba ; $(call dump_data,0x2F2CCC,0x200)

assets/sprites/gUnknown_082F2EF8.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082F2EF8.4bpp: baserom.gba ; $(call dump_data,0x2F2EF8,0x200)

assets/sprites/gUnknown_082F3124.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082F3124.4bpp: baserom.gba ; $(call dump_data,0x2F3124,0x200)

assets/sprites/gUnknown_082F3350.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082F3350.4bpp: baserom.gba ; $(call dump_data,0x2F3350,0x200)

assets/sprites/gUnknown_082F357C.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082F357C.4bpp: baserom.gba ; $(call dump_data,0x2F357C,0x200)

assets/sprites/gUnknown_082F37A8.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_082F37A8.4bpp: baserom.gba ; $(call dump_data,0x2F37A8,0x20)

assets/sprites/gUnknown_082F37F4.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082F37F4.4bpp: baserom.gba ; $(call dump_data,0x2F37F4,0x100)

assets/sprites/gUnknown_082F39F8.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_082F39F8.4bpp: baserom.gba ; $(call dump_data,0x2F39F8,0x380)

assets/sprites/gUnknown_082F3FC0.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_082F3FC0.4bpp: baserom.gba ; $(call dump_data,0x2F3FC0,0x400)
assets/sprites/gUnknown_082F3FC0.png: $(TMPDIR)/palettes/37_world_one_obj.2.gbapal

assets/sprites/gUnknown_082F4B18.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_082F4B18.8bpp: baserom.gba ; $(call dump_data,0x2F4B18,0x200)
assets/sprites/gUnknown_082F4B18.png: $(TMPDIR)/palettes/37_world_one_obj.gbapal

assets/sprites/gUnknown_082F4F3C.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_082F4F3C.8bpp: baserom.gba ; $(call dump_data,0x2F4F3C,0x200)
assets/sprites/gUnknown_082F4F3C.png: $(TMPDIR)/palettes/37_world_one_obj.gbapal

assets/sprites/gUnknown_082F52AC.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_082F52AC.4bpp: baserom.gba ; $(call dump_data,0x2F52AC,0x500)

assets/sprites/gUnknown_082F5BA4.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_082F5BA4.4bpp: baserom.gba ; $(call dump_data,0x2F5BA4,0xC00)

assets/sprites/gUnknown_082F67D0.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_082F67D0.4bpp: baserom.gba ; $(call dump_data,0x2F67D0,0x80)

assets/sprites/gUnknown_082F6AE0.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082F6AE0.4bpp: baserom.gba ; $(call dump_data,0x2F6AE0,0x2400)

assets/sprites/gUnknown_082F8F0C.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_082F8F0C.4bpp: baserom.gba ; $(call dump_data,0x2F8F0C,0x80)

assets/sprites/gUnknown_082F8FB8.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_082F8FB8.4bpp: baserom.gba ; $(call dump_data,0x2F8FB8,0x80)

assets/sprites/gUnknown_082F9184.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082F9184.4bpp: baserom.gba ; $(call dump_data,0x2F9184,0x900)

assets/sprites/gUnknown_082F9B1C.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_082F9B1C.4bpp: baserom.gba ; $(call dump_data,0x2F9B1C,0x180)

assets/sprites/gUnknown_082F9E54.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_082F9E54.4bpp: baserom.gba ; $(call dump_data,0x2F9E54,0x600)

assets/sprites/gUnknown_082FA5C4.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082FA5C4.8bpp: baserom.gba ; $(call dump_data,0x2FA5C4,0x2800)

assets/sprites/gUnknown_082FD174.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_082FD174.8bpp: baserom.gba ; $(call dump_data,0x2FD174,0x6800)

assets/sprites/gUnknown_08303A9C.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08303A9C.8bpp: baserom.gba ; $(call dump_data,0x303A9C,0x2000)

assets/sprites/gUnknown_083060B0.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_083060B0.8bpp: baserom.gba ; $(call dump_data,0x3060B0,0x8000)

assets/sprites/gUnknown_0830E8E0.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_0830E8E0.8bpp: baserom.gba ; $(call dump_data,0x30E8E0,0x30000)

assets/sprites/gUnknown_0833EE88.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_0833EE88.8bpp: baserom.gba ; $(call dump_data,0x33EE88,0x4000)

assets/sprites/gUnknown_08342EB4.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_08342EB4.8bpp: baserom.gba ; $(call dump_data,0x342EB4,0x100)

assets/sprites/gUnknown_08343268.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08343268.8bpp: baserom.gba ; $(call dump_data,0x343268,0x4C00)

assets/sprites/gUnknown_0834811C.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_0834811C.8bpp: baserom.gba ; $(call dump_data,0x34811C,0x4C00)

assets/sprites/gUnknown_0834CD48.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_0834CD48.8bpp: baserom.gba ; $(call dump_data,0x34CD48,0x400)

assets/sprites/gUnknown_0834D24C.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_0834D24C.8bpp: baserom.gba ; $(call dump_data,0x34D24C,0x1C00)

assets/sprites/gUnknown_0834EF50.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_0834EF50.8bpp: baserom.gba ; $(call dump_data,0x34EF50,0x1C00)

assets/sprites/gUnknown_08350DBC.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08350DBC.8bpp: baserom.gba ; $(call dump_data,0x350DBC,0x4400)

assets/sprites/gUnknown_08355644.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08355644.8bpp: baserom.gba ; $(call dump_data,0x355644,0x8000)

assets/sprites/gUnknown_0835DACC.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_0835DACC.8bpp: baserom.gba ; $(call dump_data,0x35DACC,0x8000)

assets/sprites/gUnknown_08365AF8.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08365AF8.8bpp: baserom.gba ; $(call dump_data,0x365AF8,0x400)

assets/sprites/gUnknown_08366380.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08366380.8bpp: baserom.gba ; $(call dump_data,0x366380,0x8000)

assets/sprites/gUnknown_0836E4A8.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_0836E4A8.8bpp: baserom.gba ; $(call dump_data,0x36E4A8,0x2000)

assets/sprites/gUnknown_083706F0.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_083706F0.8bpp: baserom.gba ; $(call dump_data,0x3706F0,0x4000)

assets/sprites/gUnknown_08374938.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08374938.8bpp: baserom.gba ; $(call dump_data,0x374938,0x2000)

assets/sprites/gUnknown_08376B80.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08376B80.8bpp: baserom.gba ; $(call dump_data,0x376B80,0x4000)

assets/sprites/gUnknown_0837ACA8.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_0837ACA8.8bpp: baserom.gba ; $(call dump_data,0x37ACA8,0x2000)

assets/sprites/gUnknown_0837CEF0.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_0837CEF0.8bpp: baserom.gba ; $(call dump_data,0x37CEF0,0x4000)

assets/sprites/gUnknown_08381018.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08381018.8bpp: baserom.gba ; $(call dump_data,0x381018,0x2000)

assets/sprites/gUnknown_0838374C.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_0838374C.8bpp: baserom.gba ; $(call dump_data,0x38374C,0xC00)

assets/sprites/gUnknown_08384504.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08384504.8bpp: baserom.gba ; $(call dump_data,0x384504,0x3000)

assets/sprites/gUnknown_0838786C.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_0838786C.8bpp: baserom.gba ; $(call dump_data,0x38786C,0x6000)

assets/sprites/gUnknown_0838DB44.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_0838DB44.8bpp: baserom.gba ; $(call dump_data,0x38DB44,0x5000)

assets/sprites/gUnknown_08392C6C.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08392C6C.8bpp: baserom.gba ; $(call dump_data,0x392C6C,0x2000)

assets/sprites/gUnknown_08394EB4.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_08394EB4.8bpp: baserom.gba ; $(call dump_data,0x394EB4,0x10000)

assets/sprites/gUnknown_083A52AC.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_083A52AC.8bpp: baserom.gba ; $(call dump_data,0x3A52AC,0x1C000)

assets/sprites/gUnknown_083C1710.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_083C1710.8bpp: baserom.gba ; $(call dump_data,0x3C1710,0x1D000)

assets/sprites/gUnknown_083DE8A4.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_083DE8A4.8bpp: baserom.gba ; $(call dump_data,0x3DE8A4,0x2C00)

assets/sprites/gUnknown_083E17C4.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_083E17C4.8bpp: baserom.gba ; $(call dump_data,0x3E17C4,0x5800)

assets/sprites/gUnknown_083E7134.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_083E7134.8bpp: baserom.gba ; $(call dump_data,0x3E7134,0x1800)

assets/sprites/gUnknown_083E8A38.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_083E8A38.8bpp: baserom.gba ; $(call dump_data,0x3E8A38,0x1C00)

assets/sprites/gUnknown_083EA73C.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_083EA73C.8bpp: baserom.gba ; $(call dump_data,0x3EA73C,0x1C00)

assets/sprites/gUnknown_083ECC44.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_083ECC44.8bpp: baserom.gba ; $(call dump_data,0x3ECC44,0x8000)

assets/sprites/gUnknown_083F4E8C.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_083F4E8C.8bpp: baserom.gba ; $(call dump_data,0x3F4E8C,0x4000)

assets/sprites/gUnknown_083F9824.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_083F9824.8bpp: baserom.gba ; $(call dump_data,0x3F9824,0x4800)

assets/sprites/gUnknown_083FE4F4.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_083FE4F4.8bpp: baserom.gba ; $(call dump_data,0x3FE4F4,0x8000)

assets/sprites/gUnknown_084068EC.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_084068EC.8bpp: baserom.gba ; $(call dump_data,0x4068EC,0x4000)

assets/sprites/gUnknown_0840A9F0.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_0840A9F0.8bpp: baserom.gba ; $(call dump_data,0x40A9F0,0x1C00)

assets/sprites/gUnknown_0840C73C.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_0840C73C.8bpp: baserom.gba ; $(call dump_data,0x40C73C,0x1200)

assets/sprites/gUnknown_0840D9B0.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_0840D9B0.8bpp: baserom.gba ; $(call dump_data,0x40D9B0,0xC00)

assets/sprites/gUnknown_0840E6FC.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_0840E6FC.8bpp: baserom.gba ; $(call dump_data,0x40E6FC,0x1200)

assets/sprites/gUnknown_0840FC64.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_0840FC64.8bpp: baserom.gba ; $(call dump_data,0x40FC64,0x6000)

assets/sprites/gUnknown_08415EAC.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08415EAC.8bpp: baserom.gba ; $(call dump_data,0x415EAC,0x4000)

assets/sprites/gUnknown_0841A0F4.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_0841A0F4.8bpp: baserom.gba ; $(call dump_data,0x41A0F4,0x4000)

assets/sprites/gUnknown_0841E45C.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_0841E45C.8bpp: baserom.gba ; $(call dump_data,0x41E45C,0x6000)

assets/sprites/gUnknown_08424560.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08424560.8bpp: baserom.gba ; $(call dump_data,0x424560,0x1C00)

assets/sprites/gUnknown_08426510.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08426510.8bpp: baserom.gba ; $(call dump_data,0x426510,0x6800)

assets/sprites/gUnknown_0842D00C.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_0842D00C.8bpp: baserom.gba ; $(call dump_data,0x42D00C,0x5400)

assets/sprites/gUnknown_084325C4.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_084325C4.8bpp: baserom.gba ; $(call dump_data,0x4325C4,0x3000)

assets/sprites/gUnknown_0843580C.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_0843580C.8bpp: baserom.gba ; $(call dump_data,0x43580C,0x4000)

assets/sprites/gUnknown_08439A54.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08439A54.8bpp: baserom.gba ; $(call dump_data,0x439A54,0x4000)

assets/sprites/gUnknown_0843DEDC.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_0843DEDC.8bpp: baserom.gba ; $(call dump_data,0x43DEDC,0x8000)

assets/sprites/gUnknown_0844631C.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_0844631C.8bpp: baserom.gba ; $(call dump_data,0x44631C,0x7800)

assets/sprites/gUnknown_0844DE60.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_0844DE60.8bpp: baserom.gba ; $(call dump_data,0x44DE60,0x5C00)

assets/sprites/gUnknown_08453CA8.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08453CA8.8bpp: baserom.gba ; $(call dump_data,0x453CA8,0x4000)

assets/sprites/gUnknown_08457D40.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08457D40.8bpp: baserom.gba ; $(call dump_data,0x457D40,0x1000)

assets/sprites/gUnknown_08458F1C.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08458F1C.8bpp: baserom.gba ; $(call dump_data,0x458F1C,0x3400)

assets/sprites/gUnknown_0845C444.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_0845C444.8bpp: baserom.gba ; $(call dump_data,0x45C444,0x2000)

assets/sprites/gUnknown_0845E56C.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_0845E56C.8bpp: baserom.gba ; $(call dump_data,0x45E56C,0x2000)

assets/sprites/gUnknown_084608D4.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_084608D4.8bpp: baserom.gba ; $(call dump_data,0x4608D4,0x6000)

assets/sprites/gUnknown_08466B1C.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08466B1C.8bpp: baserom.gba ; $(call dump_data,0x466B1C,0x4000)

assets/sprites/gUnknown_0846ACD4.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_0846ACD4.8bpp: baserom.gba ; $(call dump_data,0x46ACD4,0x3000)

assets/sprites/gUnknown_0846DEB0.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_0846DEB0.8bpp: baserom.gba ; $(call dump_data,0x46DEB0,0x3400)

assets/sprites/gUnknown_084714F8.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_084714F8.8bpp: baserom.gba ; $(call dump_data,0x4714F8,0x4000)

assets/sprites/gUnknown_08475A10.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08475A10.8bpp: baserom.gba ; $(call dump_data,0x475A10,0x9000)

assets/sprites/gUnknown_0847EB80.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_0847EB80.8bpp: baserom.gba ; $(call dump_data,0x47EB80,0x2800)

assets/sprites/gUnknown_084816E8.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_084816E8.8bpp: baserom.gba ; $(call dump_data,0x4816E8,0x6000)

assets/sprites/gUnknown_08487810.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08487810.8bpp: baserom.gba ; $(call dump_data,0x487810,0x2000)

assets/sprites/gUnknown_08489B78.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08489B78.8bpp: baserom.gba ; $(call dump_data,0x489B78,0x6000)

assets/sprites/gUnknown_0848FBA4.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_0848FBA4.8bpp: baserom.gba ; $(call dump_data,0x48FBA4,0x400)

assets/sprites/gUnknown_084900A8.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_084900A8.8bpp: baserom.gba ; $(call dump_data,0x4900A8,0x1C00)

assets/sprites/gUnknown_08491EF0.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08491EF0.8bpp: baserom.gba ; $(call dump_data,0x491EF0,0x4000)

assets/sprites/gUnknown_084960A8.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_084960A8.8bpp: baserom.gba ; $(call dump_data,0x4960A8,0x3000)

assets/sprites/gUnknown_084992F0.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_084992F0.8bpp: baserom.gba ; $(call dump_data,0x4992F0,0x4000)

assets/sprites/gUnknown_0849D388.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_0849D388.8bpp: baserom.gba ; $(call dump_data,0x49D388,0x1000)

assets/sprites/gUnknown_0849E4B0.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_0849E4B0.8bpp: baserom.gba ; $(call dump_data,0x49E4B0,0x2000)

assets/sprites/gUnknown_084A05D8.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_084A05D8.8bpp: baserom.gba ; $(call dump_data,0x4A05D8,0x2000)

assets/sprites/gUnknown_084A27FC.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_084A27FC.8bpp: baserom.gba ; $(call dump_data,0x4A27FC,0x3C00)

assets/sprites/gUnknown_084A668C.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_084A668C.8bpp: baserom.gba ; $(call dump_data,0x4A668C,0x4800)

assets/sprites/gUnknown_084AB314.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_084AB314.8bpp: baserom.gba ; $(call dump_data,0x4AB314,0x400)

assets/sprites/gUnknown_084AB8CC.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_084AB8CC.8bpp: baserom.gba ; $(call dump_data,0x4AB8CC,0x400)

assets/sprites/gUnknown_084ABE3C.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_084ABE3C.8bpp: baserom.gba ; $(call dump_data,0x4ABE3C,0x2000)

assets/sprites/gUnknown_084ADF64.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_084ADF64.8bpp: baserom.gba ; $(call dump_data,0x4ADF64,0x2000)

assets/sprites/gUnknown_084B0068.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_084B0068.8bpp: baserom.gba ; $(call dump_data,0x4B0068,0x1C00)

assets/sprites/gUnknown_084B1EB0.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_084B1EB0.8bpp: baserom.gba ; $(call dump_data,0x4B1EB0,0x4000)

assets/sprites/gUnknown_084B61F4.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_084B61F4.8bpp: baserom.gba ; $(call dump_data,0x4B61F4,0x5C00)

assets/sprites/gUnknown_084BC27C.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_084BC27C.8bpp: baserom.gba ; $(call dump_data,0x4BC27C,0x8000)

assets/sprites/gUnknown_084C462C.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_084C462C.8bpp: baserom.gba ; $(call dump_data,0x4C462C,0x1A000)

assets/sprites/gUnknown_084DE7E4.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_084DE7E4.8bpp: baserom.gba ; $(call dump_data,0x4DE7E4,0x3000)

assets/sprites/gUnknown_084E190C.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_084E190C.8bpp: baserom.gba ; $(call dump_data,0x4E190C,0x2000)

assets/sprites/gUnknown_084E3B54.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_084E3B54.8bpp: baserom.gba ; $(call dump_data,0x4E3B54,0x4000)

assets/sprites/gUnknown_084E7C58.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_084E7C58.8bpp: baserom.gba ; $(call dump_data,0x4E7C58,0x1C00)

assets/sprites/gUnknown_084E995C.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_084E995C.8bpp: baserom.gba ; $(call dump_data,0x4E995C,0x1C00)

assets/sprites/gUnknown_084EB7EC.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_084EB7EC.8bpp: baserom.gba ; $(call dump_data,0x4EB7EC,0x4800)

assets/sprites/gUnknown_084F0114.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_084F0114.8bpp: baserom.gba ; $(call dump_data,0x4F0114,0x2000)

assets/sprites/gUnknown_084F2218.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_084F2218.8bpp: baserom.gba ; $(call dump_data,0x4F2218,0x1C00)

assets/sprites/gUnknown_084F3F40.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_084F3F40.8bpp: baserom.gba ; $(call dump_data,0x4F3F40,0x2000)

assets/sprites/gUnknown_084F61D0.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_084F61D0.8bpp: baserom.gba ; $(call dump_data,0x4F61D0,0x4800)

assets/sprites/gUnknown_084FAAD4.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_084FAAD4.8bpp: baserom.gba ; $(call dump_data,0x4FAAD4,0x1C00)

assets/sprites/gUnknown_084FC7D8.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_084FC7D8.8bpp: baserom.gba ; $(call dump_data,0x4FC7D8,0x1C00)

assets/sprites/gUnknown_084FE668.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_084FE668.8bpp: baserom.gba ; $(call dump_data,0x4FE668,0x4800)

assets/sprites/gUnknown_08502F6C.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08502F6C.8bpp: baserom.gba ; $(call dump_data,0x502F6C,0x1C00)

assets/sprites/gUnknown_08504C70.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08504C70.8bpp: baserom.gba ; $(call dump_data,0x504C70,0x1C00)

assets/sprites/gUnknown_08506AB8.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08506AB8.8bpp: baserom.gba ; $(call dump_data,0x506AB8,0x4000)

assets/sprites/gUnknown_0850AB98.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_0850AB98.8bpp: baserom.gba ; $(call dump_data,0x50AB98,0x1800)

assets/sprites/gUnknown_0850C5E0.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_0850C5E0.8bpp: baserom.gba ; $(call dump_data,0x50C5E0,0x4000)

assets/sprites/gUnknown_085106E4.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_085106E4.8bpp: baserom.gba ; $(call dump_data,0x5106E4,0x1C00)

assets/sprites/gUnknown_085123E8.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_085123E8.8bpp: baserom.gba ; $(call dump_data,0x5123E8,0x1C00)

assets/sprites/gUnknown_08514014.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08514014.4bpp: baserom.gba ; $(call dump_data,0x514014,0x200)

assets/sprites/gUnknown_08514480.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08514480.8bpp: baserom.gba ; $(call dump_data,0x514480,0x4400)

assets/sprites/gUnknown_085188D0.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_085188D0.8bpp: baserom.gba ; $(call dump_data,0x5188D0,0x800)

assets/sprites/gUnknown_085191F8.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_085191F8.8bpp: baserom.gba ; $(call dump_data,0x5191F8,0x2000)

assets/sprites/gUnknown_0851B440.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_0851B440.8bpp: baserom.gba ; $(call dump_data,0x51B440,0x4000)

assets/sprites/gUnknown_0851F568.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_0851F568.8bpp: baserom.gba ; $(call dump_data,0x51F568,0x2000)

assets/sprites/gUnknown_08521690.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08521690.8bpp: baserom.gba ; $(call dump_data,0x521690,0x2000)

assets/sprites/gUnknown_085238D8.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_085238D8.8bpp: baserom.gba ; $(call dump_data,0x5238D8,0x4000)

assets/sprites/gUnknown_08527B20.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08527B20.8bpp: baserom.gba ; $(call dump_data,0x527B20,0x4000)

assets/sprites/gUnknown_0852BD68.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_0852BD68.8bpp: baserom.gba ; $(call dump_data,0x52BD68,0x4000)

assets/sprites/gUnknown_0852FFB0.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_0852FFB0.8bpp: baserom.gba ; $(call dump_data,0x52FFB0,0x4000)

assets/sprites/gUnknown_085341F8.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_085341F8.8bpp: baserom.gba ; $(call dump_data,0x5341F8,0x3C00)

assets/sprites/gUnknown_08538040.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08538040.8bpp: baserom.gba ; $(call dump_data,0x538040,0x4000)

assets/sprites/gUnknown_0853C3A8.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_0853C3A8.8bpp: baserom.gba ; $(call dump_data,0x53C3A8,0x6000)

assets/sprites/gUnknown_0854241C.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_0854241C.8bpp: baserom.gba ; $(call dump_data,0x54241C,0xC00)

assets/sprites/gUnknown_08543384.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08543384.8bpp: baserom.gba ; $(call dump_data,0x543384,0x6000)

assets/sprites/gUnknown_0854953C.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_0854953C.8bpp: baserom.gba ; $(call dump_data,0x54953C,0x3000)

assets/sprites/gUnknown_0854C784.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_0854C784.8bpp: baserom.gba ; $(call dump_data,0x54C784,0x4000)

assets/sprites/gUnknown_085509CC.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_085509CC.8bpp: baserom.gba ; $(call dump_data,0x5509CC,0x4000)

assets/sprites/gUnknown_08554D7C.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08554D7C.8bpp: baserom.gba ; $(call dump_data,0x554D7C,0x6800)

assets/sprites/gUnknown_0855B854.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_0855B854.8bpp: baserom.gba ; $(call dump_data,0x55B854,0x5000)

assets/sprites/gUnknown_08560AE4.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08560AE4.8bpp: baserom.gba ; $(call dump_data,0x560AE4,0x4800)

assets/sprites/gUnknown_0856552C.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_0856552C.8bpp: baserom.gba ; $(call dump_data,0x56552C,0x4000)

assets/sprites/gUnknown_08569774.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08569774.8bpp: baserom.gba ; $(call dump_data,0x569774,0x4000)

assets/sprites/gUnknown_0856D92C.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_0856D92C.8bpp: baserom.gba ; $(call dump_data,0x56D92C,0x3000)

assets/sprites/gUnknown_08570AC0.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08570AC0.8bpp: baserom.gba ; $(call dump_data,0x570AC0,0x2C00)

assets/sprites/gUnknown_085737E8.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_085737E8.8bpp: baserom.gba ; $(call dump_data,0x5737E8,0x2000)

assets/sprites/gUnknown_08575910.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08575910.8bpp: baserom.gba ; $(call dump_data,0x575910,0x2000)

assets/sprites/gUnknown_08577A38.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08577A38.8bpp: baserom.gba ; $(call dump_data,0x577A38,0x2000)

assets/sprites/gUnknown_08579C80.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_08579C80.8bpp: baserom.gba ; $(call dump_data,0x579C80,0x800)

assets/sprites/gUnknown_0857A5A8.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0857A5A8.8bpp: baserom.gba ; $(call dump_data,0x57A5A8,0x800)

assets/sprites/gUnknown_0857AFF0.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0857AFF0.8bpp: baserom.gba ; $(call dump_data,0x57AFF0,0x1000)

assets/sprites/gUnknown_0857C358.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0857C358.8bpp: baserom.gba ; $(call dump_data,0x57C358,0x1800)

assets/sprites/gUnknown_0857E094.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0857E094.8bpp: baserom.gba ; $(call dump_data,0x57E094,0x2000)

assets/sprites/gUnknown_085809C0.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_085809C0.8bpp: baserom.gba ; $(call dump_data,0x5809C0,0x2000)

assets/sprites/gUnknown_08582FB0.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_08582FB0.8bpp: baserom.gba ; $(call dump_data,0x582FB0,0xC00)

assets/sprites/gUnknown_08583E88.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_08583E88.8bpp: baserom.gba ; $(call dump_data,0x583E88,0x1200)

assets/sprites/gUnknown_085852D0.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_085852D0.8bpp: baserom.gba ; $(call dump_data,0x5852D0,0x1000)

assets/sprites/gUnknown_08586638.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_08586638.8bpp: baserom.gba ; $(call dump_data,0x586638,0x1800)

assets/sprites/gUnknown_085882C0.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_085882C0.8bpp: baserom.gba ; $(call dump_data,0x5882C0,0x8000)

assets/sprites/gUnknown_08590748.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_08590748.8bpp: baserom.gba ; $(call dump_data,0x590748,0x2000)

assets/sprites/gUnknown_08592F30.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_08592F30.8bpp: baserom.gba ; $(call dump_data,0x592F30,0x2800)

assets/sprites/gUnknown_08595978.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_08595978.8bpp: baserom.gba ; $(call dump_data,0x595978,0x1000)

assets/sprites/gUnknown_08596AA0.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_08596AA0.8bpp: baserom.gba ; $(call dump_data,0x596AA0,0x800)

assets/sprites/gUnknown_085973C8.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_085973C8.8bpp: baserom.gba ; $(call dump_data,0x5973C8,0x800)

assets/sprites/gUnknown_08597E10.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_08597E10.8bpp: baserom.gba ; $(call dump_data,0x597E10,0xE00)

assets/sprites/gUnknown_08599098.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_08599098.8bpp: baserom.gba ; $(call dump_data,0x599098,0x2000)

assets/sprites/gUnknown_0859B400.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0859B400.8bpp: baserom.gba ; $(call dump_data,0x59B400,0x1800)

assets/sprites/gUnknown_0859CE48.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0859CE48.8bpp: baserom.gba ; $(call dump_data,0x59CE48,0xF00)

assets/sprites/gUnknown_0859E11C.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0859E11C.8bpp: baserom.gba ; $(call dump_data,0x59E11C,0x1B00)

assets/sprites/gUnknown_0859FD44.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0859FD44.8bpp: baserom.gba ; $(call dump_data,0x59FD44,0x800)

assets/sprites/gUnknown_085A0570.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_085A0570.8bpp: baserom.gba ; $(call dump_data,0x5A0570,0x200)

assets/sprites/gUnknown_085A079C.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_085A079C.8bpp: baserom.gba ; $(call dump_data,0x5A079C,0x200)

assets/sprites/gUnknown_085A09C8.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_085A09C8.8bpp: baserom.gba ; $(call dump_data,0x5A09C8,0x200)

assets/sprites/gUnknown_085A0C60.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_085A0C60.8bpp: baserom.gba ; $(call dump_data,0x5A0C60,0x400)

assets/sprites/gUnknown_085A10B0.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_085A10B0.4bpp: baserom.gba ; $(call dump_data,0x5A10B0,0x100)

assets/sprites/gUnknown_085A1224.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_085A1224.8bpp: baserom.gba ; $(call dump_data,0x5A1224,0xC00)

assets/sprites/gUnknown_085A1F4C.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_085A1F4C.8bpp: baserom.gba ; $(call dump_data,0x5A1F4C,0x800)

assets/sprites/gUnknown_085A2994.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_085A2994.8bpp: baserom.gba ; $(call dump_data,0x5A2994,0x1000)

assets/sprites/gUnknown_085A3BDC.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_085A3BDC.8bpp: baserom.gba ; $(call dump_data,0x5A3BDC,0x1000)

assets/sprites/gUnknown_085A5CC4.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_085A5CC4.8bpp: baserom.gba ; $(call dump_data,0x5A5CC4,0x1800)

assets/sprites/gUnknown_085A767C.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_085A767C.8bpp: baserom.gba ; $(call dump_data,0x5A767C,0xC00)

assets/sprites/gUnknown_085A8434.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_085A8434.4bpp: baserom.gba ; $(call dump_data,0x5A8434,0x600)

assets/sprites/gUnknown_085A8BEC.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_085A8BEC.4bpp: baserom.gba ; $(call dump_data,0x5A8BEC,0x600)

assets/sprites/gUnknown_085A9314.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_085A9314.8bpp: baserom.gba ; $(call dump_data,0x5A9314,0x800)

assets/sprites/gUnknown_085A9CF0.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_085A9CF0.4bpp: baserom.gba ; $(call dump_data,0x5A9CF0,0x380)

assets/sprites/gUnknown_085AA228.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_085AA228.8bpp: baserom.gba ; $(call dump_data,0x5AA228,0xC00)

assets/sprites/gUnknown_085AB070.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_085AB070.8bpp: baserom.gba ; $(call dump_data,0x5AB070,0xF00)

assets/sprites/gUnknown_085AC1B8.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_085AC1B8.8bpp: baserom.gba ; $(call dump_data,0x5AC1B8,0x1000)

assets/sprites/gUnknown_085AD22C.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_085AD22C.4bpp: baserom.gba ; $(call dump_data,0x5AD22C,0x180)

assets/sprites/gUnknown_085AD684.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_085AD684.4bpp: baserom.gba ; $(call dump_data,0x5AD684,0xA00)

assets/sprites/gUnknown_085AE0B0.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_085AE0B0.8bpp: baserom.gba ; $(call dump_data,0x5AE0B0,0x100)

assets/sprites/gUnknown_085AE518.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_085AE518.8bpp: baserom.gba ; $(call dump_data,0x5AE518,0x1800)

assets/sprites/gUnknown_085B0080.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_085B0080.8bpp: baserom.gba ; $(call dump_data,0x5B0080,0x1800)

assets/sprites/gUnknown_085B18AC.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_085B18AC.4bpp: baserom.gba ; $(call dump_data,0x5B18AC,0x80)

assets/sprites/gUnknown_085B1A54.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_085B1A54.8bpp: baserom.gba ; $(call dump_data,0x5B1A54,0x800)

assets/sprites/gUnknown_085B276C.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_085B276C.8bpp: baserom.gba ; $(call dump_data,0x5B276C,0x2200)

assets/sprites/gUnknown_085B4CB0.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_085B4CB0.8bpp: baserom.gba ; $(call dump_data,0x5B4CB0,0x1400)

assets/sprites/gUnknown_085B61D8.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_085B61D8.8bpp: baserom.gba ; $(call dump_data,0x5B61D8,0x2000)

assets/sprites/gUnknown_085B836C.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_085B836C.8bpp: baserom.gba ; $(call dump_data,0x5B836C,0xB00)

assets/sprites/gUnknown_085B8F4C.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_085B8F4C.8bpp: baserom.gba ; $(call dump_data,0x5B8F4C,0x600)

assets/sprites/gUnknown_085BA190.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_085BA190.8bpp: baserom.gba ; $(call dump_data,0x5BA190,0x2000)

assets/sprites/gUnknown_085BC3D8.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_085BC3D8.8bpp: baserom.gba ; $(call dump_data,0x5BC3D8,0x1000)

assets/sprites/gUnknown_085BD590.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_085BD590.8bpp: baserom.gba ; $(call dump_data,0x5BD590,0xC00)

assets/sprites/gUnknown_085BE2B8.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_085BE2B8.4bpp: baserom.gba ; $(call dump_data,0x5BE2B8,0x1000)

assets/sprites/gUnknown_085BF3BC.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_085BF3BC.4bpp: baserom.gba ; $(call dump_data,0x5BF3BC,0xE00)

assets/sprites/gUnknown_085C02E4.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_085C02E4.4bpp: baserom.gba ; $(call dump_data,0x5C02E4,0x1000)

assets/sprites/gUnknown_085C140C.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_085C140C.4bpp: baserom.gba ; $(call dump_data,0x5C140C,0x1000)

assets/sprites/gUnknown_085C245C.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_085C245C.4bpp: baserom.gba ; $(call dump_data,0x5C245C,0x100)

assets/sprites/gUnknown_085C2588.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_085C2588.4bpp: baserom.gba ; $(call dump_data,0x5C2588,0x80)

assets/sprites/gUnknown_085C2634.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_085C2634.4bpp: baserom.gba ; $(call dump_data,0x5C2634,0x80)

assets/sprites/gUnknown_085C26E0.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_085C26E0.4bpp: baserom.gba ; $(call dump_data,0x5C26E0,0x80)

assets/sprites/gUnknown_085C278C.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_085C278C.4bpp: baserom.gba ; $(call dump_data,0x5C278C,0x80)

assets/sprites/gUnknown_085C2838.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_085C2838.4bpp: baserom.gba ; $(call dump_data,0x5C2838,0x20)

assets/sprites/gUnknown_085C28A8.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_085C28A8.4bpp: baserom.gba ; $(call dump_data,0x5C28A8,0x100)

assets/sprites/gUnknown_085C29F8.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_085C29F8.4bpp: baserom.gba ; $(call dump_data,0x5C29F8,0x100)

assets/sprites/gUnknown_085C2BB4.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_085C2BB4.4bpp: baserom.gba ; $(call dump_data,0x5C2BB4,0x280)

assets/sprites/gUnknown_085C2EF0.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_085C2EF0.4bpp: baserom.gba ; $(call dump_data,0x5C2EF0,0xA0)

assets/sprites/gUnknown_085C3220.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_085C3220.4bpp: baserom.gba ; $(call dump_data,0x5C3220,0x4000)

assets/sprites/gUnknown_085C724C.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_085C724C.4bpp: baserom.gba ; $(call dump_data,0x5C724C,0x400)

assets/sprites/gUnknown_085C7678.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_085C7678.4bpp: baserom.gba ; $(call dump_data,0x5C7678,0x400)

assets/sprites/gUnknown_085C7D08.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_085C7D08.4bpp: baserom.gba ; $(call dump_data,0x5C7D08,0x4000)

assets/sprites/gUnknown_085CBD34.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_085CBD34.4bpp: baserom.gba ; $(call dump_data,0x5CBD34,0x400)

assets/sprites/gUnknown_085CC160.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_085CC160.4bpp: baserom.gba ; $(call dump_data,0x5CC160,0x800)

assets/sprites/gUnknown_085CC98C.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_085CC98C.4bpp: baserom.gba ; $(call dump_data,0x5CC98C,0x800)

assets/sprites/gUnknown_085CD41C.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_085CD41C.4bpp: baserom.gba ; $(call dump_data,0x5CD41C,0x400)

assets/sprites/gUnknown_085CD848.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_085CD848.4bpp: baserom.gba ; $(call dump_data,0x5CD848,0x800)

assets/sprites/gUnknown_085CE074.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_085CE074.4bpp: baserom.gba ; $(call dump_data,0x5CE074,0x800)

assets/sprites/gUnknown_085CE8A0.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_085CE8A0.4bpp: baserom.gba ; $(call dump_data,0x5CE8A0,0x800)

assets/sprites/gUnknown_085CF0CC.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_085CF0CC.4bpp: baserom.gba ; $(call dump_data,0x5CF0CC,0x800)

assets/sprites/gUnknown_085CF9D0.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_085CF9D0.4bpp: baserom.gba ; $(call dump_data,0x5CF9D0,0x700)

assets/sprites/gUnknown_085D01D4.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_085D01D4.4bpp: baserom.gba ; $(call dump_data,0x5D01D4,0x700)

assets/sprites/gUnknown_085D0900.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_085D0900.4bpp: baserom.gba ; $(call dump_data,0x5D0900,0x100)

assets/sprites/gUnknown_085D76B8.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_085D76B8.4bpp: baserom.gba ; $(call dump_data,0x5D76B8,0x5400)

assets/sprites/gUnknown_085DCB74.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_085DCB74.4bpp: baserom.gba ; $(call dump_data,0x5DCB74,0xC0)

assets/sprites/gUnknown_085DCCCC.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_085DCCCC.4bpp: baserom.gba ; $(call dump_data,0x5DCCCC,0x200)

assets/sprites/gUnknown_085DCF88.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_085DCF88.4bpp: baserom.gba ; $(call dump_data,0x5DCF88,0x180)

assets/sprites/gUnknown_085DD158.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_085DD158.4bpp: baserom.gba ; $(call dump_data,0x5DD158,0x100)

assets/sprites/gUnknown_085DD74C.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_085DD74C.4bpp: baserom.gba ; $(call dump_data,0x5DD74C,0x2A0)

assets/sprites/gUnknown_085DDE2C.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_085DDE2C.4bpp: baserom.gba ; $(call dump_data,0x5DDE2C,0x240)

assets/sprites/gUnknown_085DE4AC.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_085DE4AC.4bpp: baserom.gba ; $(call dump_data,0x5DE4AC,0x480)

assets/sprites/gUnknown_085DEA9C.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_085DEA9C.4bpp: baserom.gba ; $(call dump_data,0x5DEA9C,0x280)

assets/sprites/gUnknown_085DEFAC.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_085DEFAC.4bpp: baserom.gba ; $(call dump_data,0x5DEFAC,0x400)

assets/sprites/gUnknown_085DF63C.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_085DF63C.4bpp: baserom.gba ; $(call dump_data,0x5DF63C,0x400)

assets/sprites/gUnknown_085DFCCC.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_085DFCCC.4bpp: baserom.gba ; $(call dump_data,0x5DFCCC,0x400)

assets/sprites/gUnknown_085E0164.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_085E0164.4bpp: baserom.gba ; $(call dump_data,0x5E0164,0x400)

assets/sprites/gUnknown_085E05FC.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_085E05FC.4bpp: baserom.gba ; $(call dump_data,0x5E05FC,0x40)

assets/sprites/gUnknown_085E068C.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_085E068C.4bpp: baserom.gba ; $(call dump_data,0x5E068C,0x100)

assets/sprites/gUnknown_085E07DC.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_085E07DC.4bpp: baserom.gba ; $(call dump_data,0x5E07DC,0x100)

assets/sprites/gUnknown_085E0908.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_085E0908.4bpp: baserom.gba ; $(call dump_data,0x5E0908,0x80)

assets/sprites/gUnknown_085E09B4.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_085E09B4.4bpp: baserom.gba ; $(call dump_data,0x5E09B4,0x80)

assets/sprites/gUnknown_085E0A84.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_085E0A84.4bpp: baserom.gba ; $(call dump_data,0x5E0A84,0x40)

assets/sprites/gUnknown_085E0B14.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_085E0B14.4bpp: baserom.gba ; $(call dump_data,0x5E0B14,0x100)

assets/sprites/gUnknown_085E0C64.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_085E0C64.4bpp: baserom.gba ; $(call dump_data,0x5E0C64,0x100)

assets/sprites/gUnknown_085E0D90.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_085E0D90.4bpp: baserom.gba ; $(call dump_data,0x5E0D90,0x80)

assets/sprites/gUnknown_085E0E3C.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_085E0E3C.4bpp: baserom.gba ; $(call dump_data,0x5E0E3C,0x80)

assets/sprites/gUnknown_085E0F0C.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_085E0F0C.4bpp: baserom.gba ; $(call dump_data,0x5E0F0C,0x100)

assets/sprites/gUnknown_085E105C.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_085E105C.4bpp: baserom.gba ; $(call dump_data,0x5E105C,0x100)

assets/sprites/gUnknown_085E1188.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_085E1188.4bpp: baserom.gba ; $(call dump_data,0x5E1188,0x80)

assets/sprites/gUnknown_085E1234.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_085E1234.4bpp: baserom.gba ; $(call dump_data,0x5E1234,0x80)

assets/sprites/gUnknown_085E134C.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_085E134C.4bpp: baserom.gba ; $(call dump_data,0x5E134C,0x800)

assets/sprites/gUnknown_085E1C2C.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_085E1C2C.4bpp: baserom.gba ; $(call dump_data,0x5E1C2C,0x300)

assets/sprites/gUnknown_085E200C.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_085E200C.4bpp: baserom.gba ; $(call dump_data,0x5E200C,0x300)

assets/sprites/gUnknown_085E2338.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_085E2338.4bpp: baserom.gba ; $(call dump_data,0x5E2338,0x100)

assets/sprites/gUnknown_085E2464.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_085E2464.4bpp: baserom.gba ; $(call dump_data,0x5E2464,0x40)

assets/sprites/gUnknown_085E24D0.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_085E24D0.4bpp: baserom.gba ; $(call dump_data,0x5E24D0,0x40)

assets/sprites/gUnknown_085E253C.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_085E253C.4bpp: baserom.gba ; $(call dump_data,0x5E253C,0x40)

assets/sprites/gUnknown_085E25A8.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_085E25A8.4bpp: baserom.gba ; $(call dump_data,0x5E25A8,0x40)

assets/sprites/gUnknown_085E2614.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_085E2614.4bpp: baserom.gba ; $(call dump_data,0x5E2614,0x40)

assets/sprites/gUnknown_085E2680.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_085E2680.4bpp: baserom.gba ; $(call dump_data,0x5E2680,0x40)

assets/sprites/gUnknown_085E26EC.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_085E26EC.4bpp: baserom.gba ; $(call dump_data,0x5E26EC,0x40)

assets/sprites/gUnknown_085E2758.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_085E2758.4bpp: baserom.gba ; $(call dump_data,0x5E2758,0x40)

assets/sprites/gUnknown_085E27C4.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_085E27C4.4bpp: baserom.gba ; $(call dump_data,0x5E27C4,0x40)

assets/sprites/gUnknown_085E2830.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_085E2830.4bpp: baserom.gba ; $(call dump_data,0x5E2830,0x40)

assets/sprites/gUnknown_085E2B00.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_085E2B00.4bpp: baserom.gba ; $(call dump_data,0x5E2B00,0x400)

assets/sprites/gUnknown_085E3190.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_085E3190.4bpp: baserom.gba ; $(call dump_data,0x5E3190,0x400)

assets/sprites/gUnknown_085E3820.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_085E3820.4bpp: baserom.gba ; $(call dump_data,0x5E3820,0x4800)

assets/sprites/gUnknown_085E804C.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_085E804C.4bpp: baserom.gba ; $(call dump_data,0x5E804C,0x400)

assets/sprites/gUnknown_085E8478.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_085E8478.4bpp: baserom.gba ; $(call dump_data,0x5E8478,0x400)

assets/sprites/gUnknown_085E88A4.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_085E88A4.4bpp: baserom.gba ; $(call dump_data,0x5E88A4,0x400)

assets/sprites/gUnknown_085E8CD0.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_085E8CD0.4bpp: baserom.gba ; $(call dump_data,0x5E8CD0,0x400)

assets/sprites/gUnknown_085E9360.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_085E9360.4bpp: baserom.gba ; $(call dump_data,0x5E9360,0x1800)

assets/sprites/gUnknown_085EAB8C.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_085EAB8C.4bpp: baserom.gba ; $(call dump_data,0x5EAB8C,0x100)

assets/sprites/gUnknown_085EAD24.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_085EAD24.4bpp: baserom.gba ; $(call dump_data,0x5EAD24,0x200)

assets/sprites/gUnknown_085EAF50.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_085EAF50.4bpp: baserom.gba ; $(call dump_data,0x5EAF50,0x80)

assets/sprites/gUnknown_085EB0B0.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_085EB0B0.4bpp: baserom.gba ; $(call dump_data,0x5EB0B0,0x300)

assets/sprites/gUnknown_085EB490.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_085EB490.4bpp: baserom.gba ; $(call dump_data,0x5EB490,0x300)

assets/sprites/gUnknown_085EB828.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_085EB828.4bpp: baserom.gba ; $(call dump_data,0x5EB828,0x200)

assets/sprites/gUnknown_085EBC70.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_085EBC70.4bpp: baserom.gba ; $(call dump_data,0x5EBC70,0x1000)

assets/sprites/gUnknown_085ECC9C.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_085ECC9C.8bpp: baserom.gba ; $(call dump_data,0x5ECC9C,0x800)

assets/sprites/gUnknown_085ED4C8.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_085ED4C8.8bpp: baserom.gba ; $(call dump_data,0x5ED4C8,0x800)

assets/sprites/gUnknown_085EDCF4.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_085EDCF4.8bpp: baserom.gba ; $(call dump_data,0x5EDCF4,0x800)

assets/sprites/gUnknown_085EE520.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_085EE520.8bpp: baserom.gba ; $(call dump_data,0x5EE520,0x800)

assets/sprites/gUnknown_085EED4C.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_085EED4C.8bpp: baserom.gba ; $(call dump_data,0x5EED4C,0x800)

assets/sprites/gUnknown_085EF578.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_085EF578.8bpp: baserom.gba ; $(call dump_data,0x5EF578,0x800)

assets/sprites/gUnknown_085EFDA4.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_085EFDA4.8bpp: baserom.gba ; $(call dump_data,0x5EFDA4,0x800)

assets/sprites/gUnknown_085F05D0.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_085F05D0.8bpp: baserom.gba ; $(call dump_data,0x5F05D0,0x800)

assets/sprites/gUnknown_085F0DFC.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_085F0DFC.8bpp: baserom.gba ; $(call dump_data,0x5F0DFC,0x800)

assets/sprites/gUnknown_085F1628.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_085F1628.8bpp: baserom.gba ; $(call dump_data,0x5F1628,0x800)

assets/sprites/gUnknown_085F1E78.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_085F1E78.4bpp: baserom.gba ; $(call dump_data,0x5F1E78,0x400)

assets/sprites/gUnknown_085F22A4.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_085F22A4.4bpp: baserom.gba ; $(call dump_data,0x5F22A4,0x80)

assets/sprites/gUnknown_085F2350.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_085F2350.4bpp: baserom.gba ; $(call dump_data,0x5F2350,0x80)

assets/sprites/gUnknown_085F24B0.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_085F24B0.4bpp: baserom.gba ; $(call dump_data,0x5F24B0,0x600)

assets/sprites/gUnknown_085F2D88.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_085F2D88.4bpp: baserom.gba ; $(call dump_data,0x5F2D88,0x200)

assets/sprites/gUnknown_085F3140.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_085F3140.4bpp: baserom.gba ; $(call dump_data,0x5F3140,0x800)

assets/sprites/gUnknown_085F3C84.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_085F3C84.4bpp: baserom.gba ; $(call dump_data,0x5F3C84,0x400)

assets/sprites/gUnknown_085F41AC.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_085F41AC.4bpp: baserom.gba ; $(call dump_data,0x5F41AC,0x800)

assets/sprites/gUnknown_085F4CDC.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_085F4CDC.4bpp: baserom.gba ; $(call dump_data,0x5F4CDC,0x200)

assets/sprites/gUnknown_085F4F74.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_085F4F74.4bpp: baserom.gba ; $(call dump_data,0x5F4F74,0x200)

assets/sprites/gUnknown_085F529C.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_085F529C.4bpp: baserom.gba ; $(call dump_data,0x5F529C,0x400)

assets/sprites/gUnknown_085F58E4.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_085F58E4.4bpp: baserom.gba ; $(call dump_data,0x5F58E4,0x800)

assets/sprites/gUnknown_085F6134.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_085F6134.4bpp: baserom.gba ; $(call dump_data,0x5F6134,0x80)

assets/sprites/gUnknown_085F6390.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_085F6390.4bpp: baserom.gba ; $(call dump_data,0x5F6390,0x580)

assets/sprites/gUnknown_085F6B58.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_085F6B58.4bpp: baserom.gba ; $(call dump_data,0x5F6B58,0x800)

assets/sprites/gUnknown_085F73F0.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_085F73F0.4bpp: baserom.gba ; $(call dump_data,0x5F73F0,0x400)

assets/sprites/gUnknown_085F79A8.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_085F79A8.4bpp: baserom.gba ; $(call dump_data,0x5F79A8,0xC00)

assets/sprites/gUnknown_085F86D0.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_085F86D0.4bpp: baserom.gba ; $(call dump_data,0x5F86D0,0x800)

assets/sprites/gUnknown_085F9118.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_085F9118.4bpp: baserom.gba ; $(call dump_data,0x5F9118,0x1000)

assets/sprites/gUnknown_085FA360.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_085FA360.4bpp: baserom.gba ; $(call dump_data,0x5FA360,0x1000)

assets/sprites/gUnknown_08614338.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_08614338.4bpp: baserom.gba ; $(call dump_data,0x614338,0x400)

assets/sprites/gUnknown_08616C30.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_08616C30.4bpp: baserom.gba ; $(call dump_data,0x616C30,0x400)

assets/sprites/gUnknown_086183FC.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_086183FC.4bpp: baserom.gba ; $(call dump_data,0x6183FC,0x400)

assets/sprites/gUnknown_08618900.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_08618900.8bpp: baserom.gba ; $(call dump_data,0x618900,0x700)

assets/sprites/gUnknown_08619104.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_08619104.8bpp: baserom.gba ; $(call dump_data,0x619104,0x700)

assets/sprites/gUnknown_08619974.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_08619974.4bpp: baserom.gba ; $(call dump_data,0x619974,0x140)

assets/sprites/gUnknown_08619AE0.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_08619AE0.4bpp: baserom.gba ; $(call dump_data,0x619AE0,0x80)

assets/sprites/gUnknown_08619C88.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08619C88.4bpp: baserom.gba ; $(call dump_data,0x619C88,0x1000)

assets/sprites/gUnknown_0861ADB0.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_0861ADB0.4bpp: baserom.gba ; $(call dump_data,0x61ADB0,0x80)

assets/sprites/gUnknown_0861AF10.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0861AF10.4bpp: baserom.gba ; $(call dump_data,0x61AF10,0x300)

assets/sprites/gUnknown_0861B2A8.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0861B2A8.4bpp: baserom.gba ; $(call dump_data,0x61B2A8,0x200)

assets/sprites/gUnknown_0861B564.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0861B564.4bpp: baserom.gba ; $(call dump_data,0x61B564,0x280)

assets/sprites/gUnknown_0861BA2C.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0861BA2C.4bpp: baserom.gba ; $(call dump_data,0x61BA2C,0x400)

assets/sprites/gUnknown_0861BEC4.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0861BEC4.4bpp: baserom.gba ; $(call dump_data,0x61BEC4,0x200)

assets/sprites/gUnknown_0861C15C.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0861C15C.4bpp: baserom.gba ; $(call dump_data,0x61C15C,0x200)

assets/sprites/gUnknown_0861C484.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0861C484.4bpp: baserom.gba ; $(call dump_data,0x61C484,0x400)

assets/sprites/gUnknown_0861C964.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0861C964.4bpp: baserom.gba ; $(call dump_data,0x61C964,0x300)

assets/sprites/gUnknown_0861CE1C.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0861CE1C.4bpp: baserom.gba ; $(call dump_data,0x61CE1C,0x600)

assets/sprites/gUnknown_0861D490.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0861D490.4bpp: baserom.gba ; $(call dump_data,0x61D490,0x180)

assets/sprites/gUnknown_0861D684.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0861D684.4bpp: baserom.gba ; $(call dump_data,0x61D684,0x180)

assets/sprites/gUnknown_0861DA70.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0861DA70.4bpp: baserom.gba ; $(call dump_data,0x61DA70,0x400)

assets/sprites/gUnknown_08622550.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_08622550.4bpp: baserom.gba ; $(call dump_data,0x622550,0x400)

assets/sprites/gUnknown_0862297C.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0862297C.4bpp: baserom.gba ; $(call dump_data,0x62297C,0x80)

assets/sprites/gUnknown_08622C68.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08622C68.4bpp: baserom.gba ; $(call dump_data,0x622C68,0x2200)

assets/sprites/gUnknown_08624F00.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_08624F00.4bpp: baserom.gba ; $(call dump_data,0x624F00,0x200)

assets/sprites/gUnknown_08625348.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_08625348.4bpp: baserom.gba ; $(call dump_data,0x625348,0x400)

assets/sprites/gUnknown_08625900.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_08625900.4bpp: baserom.gba ; $(call dump_data,0x625900,0x600)

assets/sprites/gUnknown_08626148.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_08626148.4bpp: baserom.gba ; $(call dump_data,0x626148,0x800)

assets/sprites/gUnknown_086269E0.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_086269E0.4bpp: baserom.gba ; $(call dump_data,0x6269E0,0x200)

assets/sprites/gUnknown_08626D08.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_08626D08.4bpp: baserom.gba ; $(call dump_data,0x626D08,0x400)

assets/sprites/gUnknown_08627308.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_08627308.4bpp: baserom.gba ; $(call dump_data,0x627308,0x280)

assets/sprites/gUnknown_08627668.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_08627668.4bpp: baserom.gba ; $(call dump_data,0x627668,0x300)

assets/sprites/gUnknown_08627BB0.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_08627BB0.4bpp: baserom.gba ; $(call dump_data,0x627BB0,0x400)

assets/sprites/gUnknown_086280D8.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_086280D8.4bpp: baserom.gba ; $(call dump_data,0x6280D8,0x280)

assets/sprites/gUnknown_086283F0.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_086283F0.4bpp: baserom.gba ; $(call dump_data,0x6283F0,0x200)

assets/sprites/gUnknown_08628718.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_08628718.4bpp: baserom.gba ; $(call dump_data,0x628718,0x400)

assets/sprites/gUnknown_08628CAC.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_08628CAC.4bpp: baserom.gba ; $(call dump_data,0x628CAC,0x580)

assets/sprites/gUnknown_0862930C.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0862930C.4bpp: baserom.gba ; $(call dump_data,0x62930C,0x300)

assets/sprites/gUnknown_086297C4.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_086297C4.4bpp: baserom.gba ; $(call dump_data,0x6297C4,0x600)

assets/sprites/gUnknown_08629EEC.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_08629EEC.4bpp: baserom.gba ; $(call dump_data,0x629EEC,0xC0)

assets/sprites/gUnknown_0862A068.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_0862A068.4bpp: baserom.gba ; $(call dump_data,0x62A068,0xA0)

assets/sprites/gUnknown_0862A350.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0862A350.4bpp: baserom.gba ; $(call dump_data,0x62A350,0x400)

assets/sprites/gUnknown_0862A7E8.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0862A7E8.4bpp: baserom.gba ; $(call dump_data,0x62A7E8,0x200)

assets/sprites/gUnknown_0862AB10.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0862AB10.4bpp: baserom.gba ; $(call dump_data,0x62AB10,0x400)

assets/sprites/gUnknown_0862AFF0.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0862AFF0.4bpp: baserom.gba ; $(call dump_data,0x62AFF0,0x300)

assets/sprites/gUnknown_0862B4A8.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0862B4A8.4bpp: baserom.gba ; $(call dump_data,0x62B4A8,0x600)

assets/sprites/gUnknown_0862BBD0.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_0862BBD0.4bpp: baserom.gba ; $(call dump_data,0x62BBD0,0x1000)

assets/sprites/gUnknown_0862CCF8.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0862CCF8.4bpp: baserom.gba ; $(call dump_data,0x62CCF8,0x400)

assets/sprites/gUnknown_0862D124.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0862D124.4bpp: baserom.gba ; $(call dump_data,0x62D124,0x80)

assets/sprites/gUnknown_0862D1D0.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0862D1D0.4bpp: baserom.gba ; $(call dump_data,0x62D1D0,0x80)

assets/sprites/gUnknown_0862D2C4.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0862D2C4.4bpp: baserom.gba ; $(call dump_data,0x62D2C4,0x180)

assets/sprites/gUnknown_0862D4B8.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0862D4B8.4bpp: baserom.gba ; $(call dump_data,0x62D4B8,0x180)

assets/sprites/gUnknown_0862D664.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_0862D664.4bpp: baserom.gba ; $(call dump_data,0x62D664,0x200)

assets/sprites/gUnknown_0862D8FC.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_0862D8FC.4bpp: baserom.gba ; $(call dump_data,0x62D8FC,0x400)

assets/sprites/gUnknown_0862DD94.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_0862DD94.4bpp: baserom.gba ; $(call dump_data,0x62DD94,0x400)

assets/sprites/gUnknown_0862E2BC.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_0862E2BC.4bpp: baserom.gba ; $(call dump_data,0x62E2BC,0x200)

assets/sprites/gUnknown_0862E554.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_0862E554.4bpp: baserom.gba ; $(call dump_data,0x62E554,0x200)

assets/sprites/gUnknown_0862E780.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_0862E780.4bpp: baserom.gba ; $(call dump_data,0x62E780,0x200)

assets/sprites/gUnknown_0862E9D0.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0862E9D0.4bpp: baserom.gba ; $(call dump_data,0x62E9D0,0x200)

assets/sprites/gUnknown_0862F010.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_0862F010.4bpp: baserom.gba ; $(call dump_data,0x62F010,0xC00)

assets/sprites/gUnknown_0862FE58.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_0862FE58.8bpp: baserom.gba ; $(call dump_data,0x62FE58,0x10000)

assets/sprites/gUnknown_086400E8.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_086400E8.4bpp: baserom.gba ; $(call dump_data,0x6400E8,0xD00)

assets/sprites/gUnknown_08640F34.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08640F34.4bpp: baserom.gba ; $(call dump_data,0x640F34,0x1200)

assets/sprites/gUnknown_086421F0.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_086421F0.4bpp: baserom.gba ; $(call dump_data,0x6421F0,0xA00)

assets/sprites/gUnknown_08642D3C.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_08642D3C.8bpp: baserom.gba ; $(call dump_data,0x642D3C,0x9000)

assets/sprites/gUnknown_0864BF60.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0864BF60.4bpp: baserom.gba ; $(call dump_data,0x64BF60,0xD00)

assets/sprites/gUnknown_0864CF38.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0864CF38.4bpp: baserom.gba ; $(call dump_data,0x64CF38,0x200)

assets/sprites/gUnknown_0864D2F0.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0864D2F0.4bpp: baserom.gba ; $(call dump_data,0x64D2F0,0x800)

assets/sprites/gUnknown_0864DC18.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0864DC18.8bpp: baserom.gba ; $(call dump_data,0x64DC18,0x1000)

assets/sprites/gUnknown_0864ED40.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0864ED40.8bpp: baserom.gba ; $(call dump_data,0x64ED40,0x1000)

assets/sprites/gUnknown_0864FE68.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_0864FE68.8bpp: baserom.gba ; $(call dump_data,0x64FE68,0x1000)

assets/sprites/gUnknown_08650F90.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_08650F90.8bpp: baserom.gba ; $(call dump_data,0x650F90,0x1000)

assets/sprites/gUnknown_08652004.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_08652004.4bpp: baserom.gba ; $(call dump_data,0x652004,0x180)

assets/sprites/gUnknown_086521F8.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_086521F8.4bpp: baserom.gba ; $(call dump_data,0x6521F8,0x180)

assets/sprites/gUnknown_08652728.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/sprites/gUnknown_08652728.4bpp: baserom.gba ; $(call dump_data,0x652728,0x2400)

assets/sprites/gUnknown_08654BE4.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08654BE4.4bpp: baserom.gba ; $(call dump_data,0x654BE4,0x800)

assets/sprites/gUnknown_0865562C.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_0865562C.4bpp: baserom.gba ; $(call dump_data,0x65562C,0x1400)

assets/sprites/gUnknown_08656A58.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08656A58.4bpp: baserom.gba ; $(call dump_data,0x656A58,0x200)

assets/sprites/gUnknown_08656C84.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08656C84.4bpp: baserom.gba ; $(call dump_data,0x656C84,0x200)

assets/sprites/gUnknown_08656EB0.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08656EB0.4bpp: baserom.gba ; $(call dump_data,0x656EB0,0x200)

assets/sprites/gUnknown_086570DC.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_086570DC.4bpp: baserom.gba ; $(call dump_data,0x6570DC,0x200)

assets/sprites/gUnknown_0865732C.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_0865732C.4bpp: baserom.gba ; $(call dump_data,0x65732C,0x80)

assets/sprites/gUnknown_08657458.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08657458.4bpp: baserom.gba ; $(call dump_data,0x657458,0x80)

assets/sprites/gUnknown_08657504.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08657504.4bpp: baserom.gba ; $(call dump_data,0x657504,0x80)

assets/sprites/gUnknown_086575B0.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_086575B0.4bpp: baserom.gba ; $(call dump_data,0x6575B0,0x80)

assets/sprites/gUnknown_08657AF4.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08657AF4.4bpp: baserom.gba ; $(call dump_data,0x657AF4,0x80)

assets/sprites/gUnknown_08657BA0.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_08657BA0.4bpp: baserom.gba ; $(call dump_data,0x657BA0,0x80)

assets/sprites/gUnknown_08657CDC.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_08657CDC.4bpp: baserom.gba ; $(call dump_data,0x657CDC,0x280)

assets/sprites/gUnknown_08657FD0.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_08657FD0.4bpp: baserom.gba ; $(call dump_data,0x657FD0,0x180)

assets/sprites/gUnknown_086581E8.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_086581E8.4bpp: baserom.gba ; $(call dump_data,0x6581E8,0x80)

assets/sprites/gUnknown_08658294.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/sprites/gUnknown_08658294.4bpp: baserom.gba ; $(call dump_data,0x658294,0x80)

assets/sprites/gUnknown_086583AC.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_086583AC.4bpp: baserom.gba ; $(call dump_data,0x6583AC,0x200)

assets/sprites/gUnknown_086588A8.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_086588A8.4bpp: baserom.gba ; $(call dump_data,0x6588A8,0x380)

assets/sprites/gUnknown_08658CC0.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_08658CC0.4bpp: baserom.gba ; $(call dump_data,0x658CC0,0x200)

assets/sprites/gUnknown_08658F58.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_08658F58.4bpp: baserom.gba ; $(call dump_data,0x658F58,0x80)

assets/sprites/gUnknown_08659004.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_08659004.4bpp: baserom.gba ; $(call dump_data,0x659004,0x80)

assets/sprites/gUnknown_0865911C.png: GBAGFX_FLAGS := -width 1
$(TMPDIR)/sprites/gUnknown_0865911C.4bpp: baserom.gba ; $(call dump_data,0x65911C,0x80)

assets/sprites/gUnknown_086591C8.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_086591C8.4bpp: baserom.gba ; $(call dump_data,0x6591C8,0x80)

assets/sprites/gUnknown_08659274.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08659274.4bpp: baserom.gba ; $(call dump_data,0x659274,0x80)

assets/sprites/gUnknown_08659320.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/sprites/gUnknown_08659320.4bpp: baserom.gba ; $(call dump_data,0x659320,0x80)

# convert files to PNG (with optional palette)
#assets/%.png: $(TMPDIR)/%.4bpp $(TMPDIR)/%.gbapal $(GBAGFX)
#	@mkdir -p $(@D)
#	$(GBAGFX) $< $@ $(GBAGFX_FLAGS) -palette $(filter %.gbapal,$^)
#assets/%.png: $(TMPDIR)/%.8bpp $(TMPDIR)/%.gbapal $(GBAGFX)
#	@mkdir -p $(@D)
#	$(GBAGFX) $< $@ $(GBAGFX_FLAGS) -palette $(filter %.gbapal,$^)
assets/%.png: $(TMPDIR)/%.4bpp $(GBAGFX)
	@mkdir -p $(@D)
	$(GBAGFX) $< $@ $(GBAGFX_FLAGS) $(addprefix -palette ,$(filter %.gbapal,$^))
assets/%.png: $(TMPDIR)/%.8bpp $(GBAGFX)
	@mkdir -p $(@D)
	$(GBAGFX) $< $@ $(GBAGFX_FLAGS) $(addprefix -palette ,$(filter %.gbapal,$^))

assets/%.pal: $(TMPDIR)/%.gbapal $(GBAGFX)
	@mkdir -p $(@D)
	$(GBAGFX) $< $@ $(GBAGFX_FLAGS)

# build tools
$(GBAGFX):
	$(MAKE) -C $(@D)
