function rs_laser(argument0) {
	buffer=argument0;

	var _x=buffer_read(buffer,buffer_u16);
	var _y=buffer_read(buffer,buffer_u16);
	var _dir=buffer_read(buffer,buffer_u16);
	var _speed=buffer_read(buffer,buffer_u16);
	//create rail twins
	var _inst=instance_create_depth(_x,_y,depth,obj_rail_bullet);
	var _player=ds_map_find_value(socket_to_instanceid,socket);
	if(is_undefined(_player))exit;
	_inst.image_angle=_dir;
	_inst.direction=_dir;
	_inst.speed=_speed;
	_inst.sock=socket;
	_inst.creator=_player;

	//create laser
				
	var _inst=instance_create_depth(_player.x,_player.y,depth,obj_laser);
	_inst.image_angle=image_angle;
	_inst.creator=_player;
	_inst.creator_username=_player.username;
	_inst.sock=socket;


	var i=0;
	repeat(ds_list_size(socket_list)){
		var _target=ds_list_find_value(socket_list,i);
		if(is_undefined(_target))exit;
		s_laser(_target,socket,_inst.oid,_inst.x,_inst.y,_dir);
		i++;
	}


}
