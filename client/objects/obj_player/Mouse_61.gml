shoot_gap=10000;
preparing_weapon=-1;send_preparing();
shoot_prepare=0;
consts.cur_weapon_pos=(consts.cur_weapon_pos-1+ds_list_size(consts.my_equip[?"weapon"]))%ds_list_size(consts.my_equip[?"weapon"]);
weapon=consts.my_equip[?"weapon"][|consts.cur_weapon_pos];