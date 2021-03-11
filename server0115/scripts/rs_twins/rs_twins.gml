function rs_twins(argument0) {
	buffer=argument0;

	var _player=ds_map_find_value(socket_to_oid,socket);
				
	var _x=buffer_read(buffer,buffer_u16);
	var _y=buffer_read(buffer,buffer_u16);
	var _dir=buffer_read(buffer,buffer_u16);
	var _speed=buffer_read(buffer,buffer_u16);
	var _inst=instance_create_depth(_x,_y,depth,obj_twins);
	if is_undefined(_inst)exit;
				
	_inst.direction=_dir;
	_inst.speed=_speed;
	_inst.image_angle=_dir;
	_inst.creator=_player;
	_inst.creator_username=_player.username;
	_inst.sock=socket;
		

	var i=0;
	repeat(ds_list_size(socket_list)){
		var _target=ds_list_find_value(socket_list,i);
		if(is_undefined(_target))exit;
		s_twins(_target,socket,_inst.oid,_x,_y,_dir,_speed,_dir);
		i++;
	}


}
