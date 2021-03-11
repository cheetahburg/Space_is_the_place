if(ds_list_size(consts.my_equip[?"weapon"])<2) or 
(ds_list_size(consts.my_equip[?"ship"])<1) or
(ds_list_size(consts.my_equip[?"engine"])<1){
	show_message("必须至少选择两个武器，一台引擎");
	exit;
}

room_goto(roomService);
//room_goto(rm_client);