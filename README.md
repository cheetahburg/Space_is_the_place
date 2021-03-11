# Space_is_the_place
a multiplayer online game

GMS2中的文件结构：关注client和gameserver

SPACE_IS_THE_PLACE
├─client
│  ├─notes
│  │  └─compatibility_report_190121_2115321532
│  ├─objects
│  │  ├─com_chat
│  │  ├─com_client
│  │  ├─com_game
│  │  ├─consts
│  │  ├─http_client
│  │  ├─obj_alertLight
│  │  ├─obj_anti_matter
│  │  ├─obj_asteroid
│  │  ├─obj_asteroid_explosion
│  │  ├─obj_bomb_explosion
│  │  ├─obj_buildings
│  │  ├─obj_bullet
│  │  ├─obj_camera
│  │  ├─obj_collision
│  │  ├─obj_copper
│  │  ├─obj_data
│  │  ├─obj_debris
│  │  ├─obj_energyBar
│  │  ├─obj_fan
│  │  ├─obj_forest
│  │  ├─obj_gold_mine
│  │  ├─obj_grooves
│  │  ├─obj_headLight
│  │  ├─obj_healthBar
│  │  ├─obj_HUD
│  │  ├─obj_iron_mine
│  │  ├─obj_items
│  │  ├─obj_laser
│  │  ├─obj_light
│  │  ├─obj_lightHalo
│  │  ├─obj_lightPoint
│  │  ├─obj_lightPos
│  │  ├─obj_lightScope
│  │  ├─obj_lightTrace
│  │  ├─obj_mine_parent
│  │  ├─obj_mining_centre
│  │  ├─obj_npc
│  │  ├─obj_oil_deposit
│  │  ├─obj_planet
│  │  ├─obj_player
│  │  ├─obj_quit_button
│  │  ├─obj_rare_metal
│  │  ├─obj_redirect_button
│  │  ├─obj_salt
│  │  ├─obj_silicon_mine
│  │  ├─obj_slave
│  │  ├─obj_sulfur
│  │  ├─obj_swap_button
│  │  ├─obj_test_pilot
│  │  ├─obj_twins
│  │  ├─obj_vulcan
│  │  ├─obj_water
│  │  ├─oButton
│  │  ├─oFrame
│  │  ├─oManager
│  │  ├─oShowImage
│  │  ├─o_display_service
│  │  ├─o_display_stuff
│  │  ├─o_register_board
│  │  ├─o_register_login
│  │  ├─o_register_regis
│  │  ├─o_register_signup
│  │  ├─o_regis_acco
│  │  ├─o_regis_email
│  │  ├─o_regis_pass
│  │  ├─o_service_right
│  │  ├─o_service_servie
│  │  ├─o_tte_accout
│  │  ├─o_tte_email
│  │  ├─o_tte_password
│  │  ├─o_ui_board
│  │  ├─o_ui_left
│  │  ├─o_ui_right
│  │  ├─o_ui_scrollBar
│  │  ├─o_ui_scrollButton
│  │  ├─o_ui_stuff
│  │  ├─plane_button
│  │  └─tte_example_object
│  ├─rooms
│  │  ├─rm_client
│  │  └─rm_test_client
│  ├─scripts
│  │  ├─action_end_game
│  │  ├─array_init
│  │  ├─buy
│  │  ├─create_button
│  │  ├─d3d_set_culling
│  │  ├─d3d_set_projection_ext
│  │  ├─d3d_start
│  │  ├─draw_enable_alphablend
│  │  ├─each
│  │  ├─example_on_changed
│  │  ├─fetchEquip
│  │  ├─fetchUserInfo
│  │  ├─find_nearest_empty_mine
│  │  ├─get_hover
│  │  ├─GUIDE
│  │  ├─items_asteroid
│  │  ├─items_building
│  │  ├─items_collision
│  │  ├─items_laser
│  │  ├─items_npc
│  │  ├─items_player
│  │  ├─items_trajectory
│  │  ├─items_twins
│  │  ├─items_vulcan
│  │  ├─MANUAL
│  │  ├─on_click
│  │  ├─plane_add
│  │  ├─prop_add
│  │  ├─quit_game
│  │  ├─receive_chat
│  │  ├─receive_create
│  │  ├─receive_damage
│  │  ├─receive_destroy
│  │  ├─receive_disconnect
│  │  ├─receive_establish
│  │  ├─receive_info
│  │  ├─receive_move
│  │  ├─receive_packet
│  │  ├─receive_preparing_weapon
│  │  ├─revoke_buy_order
│  │  ├─revoke_sell_order
│  │  ├─room_to_sign
│  │  ├─Script8
│  │  ├─sell
│  │  ├─send_left
│  │  ├─send_preparing
│  │  ├─send_trajectory
│  │  ├─synth_init
│  │  ├─tte_ext_input_create
│  │  ├─tte_ext_input_draw
│  │  ├─tte_ext_input_step
│  │  ├─tte_ext__core
│  │  ├─tte_ext__internal
│  │  ├─__background_get_colour
│  │  ├─__background_get_colour_element
│  │  ├─__background_set_element
│  │  ├─__init_action
│  │  ├─__init_background
│  │  ├─__init_d3d
│  │  └─__init_global
│  └─shaders
│      ├─sh_generate_gradient_gaussian_splat
│      ├─sh_generate_gradient_linear
│      ├─sh_generate_gradient_raised_to_power
│      ├─sh_generate_gradient_sine
│      ├─sh_generate_gradient_sine_offset
│      ├─sh_generate_gradient_smootherstep
│      ├─sh_generate_gradient_smootherstep_offset
│      ├─sh_generate_gradient_smoothstep
│      ├─sh_generate_gradient_smoothstep_offset
│      ├─sh_generate_gradient_sphere
│      └─sh_generate_gradient_staircase
├─gameServer
│  ├─notes
│  │  └─compatibility_report_100121_1523182318
│  ├─objects
│  │  ├─com_gui
│  │  ├─com_server
│  │  ├─consts
│  │  ├─obj_alertLight
│  │  ├─obj_anti_matter
│  │  ├─obj_asteroid
│  │  ├─obj_buildings
│  │  ├─obj_collision
│  │  ├─obj_data
│  │  ├─obj_fan
│  │  ├─obj_game
│  │  ├─obj_headLight
│  │  ├─obj_items
│  │  ├─obj_laser
│  │  ├─obj_laser_
│  │  ├─obj_light
│  │  ├─obj_lightHalo
│  │  ├─obj_lightPoint
│  │  ├─obj_lightPos
│  │  ├─obj_lightScope
│  │  ├─obj_lightTrace
│  │  ├─obj_npc
│  │  ├─obj_planet
│  │  ├─obj_player
│  │  ├─obj_twins
│  │  ├─obj_vulcan
│  │  ├─oGetLoc
│  │  └─_obj_bullet
│  ├─rooms
│  │  └─rm_test_server
│  └─scripts
│      ├─draw_loc_all
│      ├─fetchEquip
│      ├─get_city
│      ├─get_country
│      ├─get_country_code
│      ├─get_isp
│      ├─get_lat
│      ├─get_lon
│      ├─get_region
│      ├─instance_nth_nearest
│      ├─network_player_join
│      ├─prop_add
│      ├─receivePacket
│      ├─receive_packet
│      ├─rs_chat
│      ├─rs_items
│      ├─rs_laser
│      ├─rs_left
│      ├─rs_move
│      ├─rs_preparing
│      ├─rs_trajectory
│      ├─rs_twins
│      ├─rs_vulcan
│      ├─scr_get_loc
│      ├─scr_get_loc_http
│      ├─scr_get_loc_init
│      ├─spawn
│      ├─s_asteroid
│      ├─s_building
│      ├─s_collision
│      ├─s_destroy
│      ├─s_disconnect
│      ├─s_infos
│      ├─s_laser
│      ├─s_move
│      ├─s_npc
│      ├─s_player
│      ├─s_preparing
│      ├─s_trajectory
│      ├─s_twins
│      ├─s_vulcan
│      └─tell_damage
└─Java_dbServer
    ├─src
    │  ├─main
    │  │  ├─java
    │  │  │  └─com
    │  │  │      └─example
    │  │  │          └─demo
    │  │  │              ├─api
    │  │  │              ├─dao
    │  │  │              ├─model
    │  │  │              └─service
    │  │  └─resources
    │  └─test
    │      └─java
    │          └─com
    │              └─example
    │                  └─demo
    └─target
        ├─classes
        │  └─com
        │      └─example
        │          └─demo
        │              ├─api
        │              ├─dao
        │              ├─model
        │              └─service
        ├─maven-archiver
        ├─maven-status
        │  └─maven-compiler-plugin
        │      ├─compile
        │      │  └─default-compile
        │      └─testCompile
        │          └─default-testCompile
        ├─surefire-reports
        └─test-classes
            └─com
                └─example
                    └─demo