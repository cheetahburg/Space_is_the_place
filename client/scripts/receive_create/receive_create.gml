function receive_create(argument0) {
	buffer=argument0;

	var _item=buffer_read(buffer,buffer_string);
	
	if(_item=="player"){
		items_player(buffer);
	}else if( ds_list_find_index(consts.weapon_list,_item)>=0 ){
		//if (_item=="laser"){items_laser(buffer);}
		items_trajectory(_item,buffer);
	}else if(_item=="npc"){
		items_npc(buffer);
	}//else if(_item=="asteroid"){
	//	items_asteroid(buffer);
	//}
	else if(_item=="collision"){
		items_collision(buffer);
	}
	else{
		items_building(_item,buffer);
	}



}
