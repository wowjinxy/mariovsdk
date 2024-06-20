	.INCLUDE "macro.inc"

	.SECTION .data

	.GLOBAL gEWRAMBasePtr
gEWRAMBasePtr:
	.4byte 0x02000000

	.GLOBAL gObjectTileDataRAMPtr
gObjectTileDataRAMPtr:
	.4byte 0x0200C010

	.GLOBAL gCollectableScoreTable1
gCollectableScoreTable1:
	.2byte 2000

	.GLOBAL gCollectableScoreTable2
gCollectableScoreTable2:
	.2byte 2000
	.2byte 3000
	.2byte 3000
	.2byte 5000
	.2byte 5000
	.2byte 500
	.2byte 500
	.2byte 500
	.2byte 500
	.2byte 500
	.2byte 500

	.GLOBAL gUnknown_0807822C
gUnknown_0807822C:
	.4byte 0x00000000
	.4byte 0x00000000

	.GLOBAL gUnknown_08078234
gUnknown_08078234:
	.4byte 0x00000000
	.4byte 0x00000000

	.GLOBAL gMainStateInitCallbacks
gMainStateInitCallbacks:
	.4byte intro_init_callback @ sub_0801B9DC 		  (Mode 0x0)
	.4byte goto_credits_init_callback @ sub_080347DC      	  (Mode 0x1)
	.4byte level_demo_init_callback @ sub_08008B8C 		  (Mode 0x2)
	.4byte main_menu_init_callback @ sub_080114D4 		  (Mode 0x3)
	.4byte options_init_callback @ sub_0802895C		  (Mode 0x4)
	.4byte level_demo_init_callback @ sub_08008B8C 		  (Mode 0x5)
	.4byte level_demo_reset_init_callback @ sub_0800748C      (Mode 0x6)
	.4byte title_init_callback @ sub_0801B55C		  (Mode 0x7)
	.4byte level_select_init_callback @ sub_08015280 	  (Mode 0x8)
	.4byte expert_levels_init_callback @ sub_08035388 	  (Mode 0x9)
	.4byte unknown_0A_init_callback @ sub_08008C34 	          (Mode 0xA)
	.4byte level_editor_init_callback @ sub_08008C9C 	  (Mode 0xB)
	.4byte after_tutorial_init_callback @ sub_08008A9C 	  (Mode 0xC)
	.4byte level_play_init_callback @ sub_08008B14 	          (Mode 0xD)
	.4byte level_retry_init_callback @ sub_0802AAE8 	  (Mode 0xE)
	.4byte 0 @  						  (Mode 0xF)
	.4byte pause_menu_init_callback @ sub_0801BE34 		  (Mode 0x10)
	.4byte help_init_callback @ sub_0802A4B4 	          (Mode 0x11)
	.4byte level_retry_init_callback @ sub_0802AAE8 	  (Mode 0x12)
	.4byte 0 @						  (Mode 0x13)
	.4byte boss_clear_init_callback @ sub_0801BF14 		  (Mode 0x14)
	.4byte level_results_init_callback @ sub_0802935C         (Mode 0x15)
	.4byte bonus_stoparrow_init_callback @ sub_080215B4       (Mode 0x16)
	.4byte bonus_swapboxes_init_callback @ sub_08027068       (Mode 0x17)
	.4byte e_world_init_callback @ sub_0802EC34               (Mode 0x18)
	.4byte e_world_return_init_callback @ sub_0802DE08        (Mode 0x19)
	.4byte e_card_scan_init_callback @ sub_0802DD4C           (Mode 0x1A)
	.4byte e_card_scan_init_callback @ sub_0802DD4C           (Mode 0x1B)
	.4byte e_world_debug_init_callback @ sub_0802F590         (Mode 0x1C)
	.4byte e_world_from_menu_init_callback @ sub_0803218C 	  (Mode 0x1D)
	.4byte movie_player_init_callback @ sub_0802D510 	  (Mode 0x1E)
	.4byte fade_transition_init_callback @ sub_08029D48       (Mode 0x1F)
	.4byte world_start_init_callback @ sub_08037050           (Mode 0x20)
	.4byte level_view_init_callback @ sub_08032370            (Mode 0x21)
	.4byte game_init_callback @ sub_08032408                  (Mode 0x22)

	.GLOBAL gMainStateMainCallbacks
gMainStateMainCallbacks:
	.4byte intro_main @ sub_0801ba88			  (Mode 0x0)
	.4byte goto_credits_main @ sub_08034820			  (Mode 0x1)
	.4byte level_demo_main @ sub_080080F8			  (Mode 0x2)
	.4byte main_menu_main @ sub_080123B8			  (Mode 0x3)
	.4byte options_main @ sub_08028C08			  (Mode 0x4)
	.4byte level_demo_main @ sub_080080F8			  (Mode 0x5)
	.4byte level_demo_main @ sub_080080F8			  (Mode 0x6)
	.4byte title_main @ sub_0801B64C			  (Mode 0x7)
	.4byte level_select_main @ sub_08016BEC			  (Mode 0x8)
	.4byte expert_levels_main @ sub_08035908		  (Mode 0x9)
	.4byte level_edit_main @ sub_08008CF0			  (Mode 0xA)
	.4byte level_edit_main @ sub_08008CF0			  (Mode 0xB)
	.4byte 0 @ 					  	  (Mode 0xC)
	.4byte level_play_main @ sub_08007B58			  (Mode 0xD)
	.4byte level_retry_main @ sub_0802ACAC			  (Mode 0xE)
	.4byte level_play_main @ sub_08007B58			  (Mode 0xF)
	.4byte pause_menu_main @ sub_0801BE7C			  (Mode 0x10)
	.4byte help_main @ sub_0802AA28				  (Mode 0x11)
	.4byte level_retry_main @ sub_0802ACAC			  (Mode 0x12)
	.4byte 0 @ 					  	  (Mode 0x13)
	.4byte boss_clear_main @ sub_0801C278			  (Mode 0x14)
	.4byte level_results_main @ sub_080296A4		  (Mode 0x15)
	.4byte bonus_stoparrow_main @ sub_08021924		  (Mode 0x16)
	.4byte bonus_swapboxes_main @ sub_08027900		  (Mode 0x17)
	.4byte e_world_main @ sub_0802DF50			  (Mode 0x18)
	.4byte e_world_main @ sub_0802DF50			  (Mode 0x19)
	.4byte e_card_scan_main @ sub_0802D6DC			  (Mode 0x1A)
	.4byte e_card_scan_main @ sub_0802D6DC			  (Mode 0x1B)
	.4byte e_world_debug_main @ sub_0802F1EC		  (Mode 0x1C)
	.4byte e_world_from_menu_main @ sub_08031EE8		  (Mode 0x1D)
	.4byte movie_player_main @ sub_0802D208			  (Mode 0x1E)
	.4byte fade_transition_main @ sub_08029F24		  (Mode 0x1F)
	.4byte world_start_main @ sub_080374E0			  (Mode 0x20)
	.4byte level_view_main @ sub_08032210			  (Mode 0x21)
	.4byte game_init_main @ sub_080324DC			  (Mode 0x22)

	.GLOBAL gMainStateLoopCallbacks
gMainStateLoopCallbacks:
	.4byte intro_loop
	.4byte goto_credits_loop
	.4byte level_play_loop
	.4byte main_menu_loop
	.4byte options_loop
	.4byte level_play_loop
	.4byte level_play_loop
	.4byte title_loop
	.4byte level_select_loop
	.4byte expert_levels_loop
	.4byte 0
	.4byte level_play_loop
	.4byte level_play_loop
	.4byte level_play_loop
	.4byte level_retry_loop
	.4byte level_play_loop
	.4byte pause_menu_loop
	.4byte help_loop
	.4byte level_retry_loop
	.4byte 0
	.4byte boss_clear_loop
	.4byte level_results_loop
	.4byte bonus_stoparrow_loop
	.4byte bonus_swapboxes_loop
	.4byte e_world_loop
	.4byte e_world_loop
	.4byte e_card_scan_loop
	.4byte e_card_scan_loop
	.4byte e_world_debug_loop
	.4byte e_world_from_menu_loop
	.4byte movie_player_loop
	.4byte 0
	.4byte world_start_loop
	.4byte level_view_loop
	.4byte game_init_loop

	.GLOBAL gMainStateEndCallbacks
gMainStateEndCallbacks:
	.4byte intro_end
	.4byte goto_credits_end
	.4byte level_play_end
	.4byte main_menu_end
	.4byte options_end
	.4byte level_play_end
	.4byte level_play_end
	.4byte title_end
	.4byte level_select_end
	.4byte expert_levels_end
	.4byte level_editor_end
	.4byte level_editor_end
	.4byte 0
	.4byte level_play_end
	.4byte level_retry_end
	.4byte level_play_end
	.4byte pause_menu_end
	.4byte help_end
	.4byte level_retry_end
	.4byte 0
	.4byte boss_clear_end
	.4byte level_results_end
	.4byte bonus_stoparrow_end
	.4byte bonus_swapboxes_end
	.4byte e_world_end
	.4byte e_world_end
	.4byte e_card_scan_end
	.4byte e_card_scan_end
	.4byte e_world_debug_end
	.4byte e_world_from_menu_end
	.4byte movie_player_end
	.4byte fade_transition_end
	.4byte world_start_end
	.4byte level_view_end
	.4byte game_init_end

	.GLOBAL gUnknown_0807846C
gUnknown_0807846C:
	.4byte sub_08015044
	.4byte sub_08015044
	.4byte sub_08015044
	.4byte sub_08015044
	.4byte sub_08015044
	.4byte sub_08015044
	.4byte sub_08015044
	.4byte sub_08015044
	.4byte sub_08015044
	.4byte sub_08015044
	.4byte sub_08015044
	.4byte sub_08015044
	.4byte sub_08015044
	.4byte sub_08015044
	.4byte sub_08015044
	.4byte sub_08015044
	.4byte sub_08015044
	.4byte sub_08015044
	.4byte sub_08015044
	.4byte sub_08015044
	.4byte sub_08015044
	.4byte sub_08015044
	.4byte sub_08015044
	.4byte sub_08015044
	.4byte sub_08015044
	.4byte sub_08015044
	.4byte sub_08015044
	.4byte sub_08015044
	.4byte sub_08015044
	.4byte sub_08015044
	.4byte sub_08015044
	.4byte sub_08015044
	.4byte sub_08015044
	.4byte sub_08015044
	.4byte sub_08015044
