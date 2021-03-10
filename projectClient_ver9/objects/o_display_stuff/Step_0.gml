view_enabled=true;
view_visible[0]=true;
window_set_size(room_width,room_height);

camera_set_view_pos(view_camera[0],0,0);
camera_set_view_size(view_camera[0],room_width,room_height);
surface_resize(application_surface,room_width,room_height);
display_set_gui_size(room_width,room_height);


if global.client_ticker%10==0{
	
	if ds_list_size(consts.my_equip[?"ship"])>0{
		var shipId=consts.my_equip[?"ship"][|0];
		_total_weight=obj_data.equipInfo[?shipId][?"itemWeight"];
		_total_hp=obj_data.equipInfo[?shipId][?"shipHP"];
		_total_speed=0;//巡航推力
		_total_power=0;//加速推力
		_total_turn=0;//转向推力
		_total_energy=obj_data.equipInfo[?shipId][?"shipEnergy"];//总能量
		_total_refuel=obj_data.equipInfo[?shipId][?"shipRefuel"];//能量回复

		var sum = ds_map_size(consts.my_equip);
		var cur_key=ds_map_find_first(consts.my_equip);
		
		for(var i=0;i<sum;i++){
			if cur_key=="ship"{
				cur_key=ds_map_find_next(consts.my_equip,cur_key);
				continue;
			} 
			var list_size=ds_list_size(consts.my_equip[?cur_key]);
			for(var j=0;j<list_size;j++){
				var _itemId=consts.my_equip[?cur_key][|j];
				
				if _itemId==noone continue;
				//weight
				var _itemWeight=obj_data.equipInfo[?_itemId][?"itemWeight"]
				if _itemWeight>0 _total_weight+=_itemWeight;
				//speed
				var _itemSpeed=obj_data.equipInfo[?_itemId][?"engineSpeed"]					
				if _itemSpeed>0 _total_speed+=_itemSpeed;
				
				//power
				var _itemPower=obj_data.equipInfo[?_itemId][?"enginePower"]
				if _itemPower>0 _total_power+=_itemPower;
				//turn
				var _itemTurn=obj_data.equipInfo[?_itemId][?"engineGrad"]
				if _itemTurn>0 _total_turn+=_itemTurn;
				//Energy
				var _shipEnergy=obj_data.equipInfo[?_itemId][?"shipEnergy"]
				if _shipEnergy>0 _total_energy+=_shipEnergy;
				//Refuel
				var _shipRefuel=obj_data.equipInfo[?_itemId][?"shipRefuel"]
				if _shipRefuel>0 _total_energy+=_shipRefuel;
				
				
			}
			cur_key=ds_map_find_next(consts.my_equip,cur_key);
		}
		consts.total_hp=_total_hp;
		consts.drive_speed=_total_speed/_total_weight;
		consts.drive_power=_total_power/_total_weight;
		consts.drive_turn=_total_turn/_total_weight;
		consts.total_energy=_total_energy;
		consts.total_refuel=_total_refuel;
	}
	/*
	for (var i=1;i<consts.max_num;i++){
		if consts.my_equip[""];
	}
	*/
}