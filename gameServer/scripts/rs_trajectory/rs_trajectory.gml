function rs_trajectory(argument0, argument1) {
	var _item=argument0;
	buffer=argument1;

	var _player=ds_map_find_value(socket_to_instanceid,real_socket);

	var _x=buffer_read(buffer,buffer_u16);
	var _y=buffer_read(buffer,buffer_u16);
	var _damage=buffer_read(buffer,buffer_u16);
	var _speed=buffer_read(buffer,buffer_u16);
	var _dir=buffer_read(buffer,buffer_s16);
	var _obj=consts.string_to_object[?_item];
	
	var _inst=instance_create_layer(_x,_y,"Instances",_obj);
	if is_undefined(_inst)exit;
				
	_inst.direction=_dir;
	_inst.damage=_damage;
	_inst.speed=_speed;
	_inst.image_angle=_dir;
	_inst.creator=_player;
	_inst.creator_username=_player.username;
	_inst.sock=real_socket;
	
	//----
var chat_text=_inst.creator.oid;
ds_list_insert(global.chat,0,chat_text);
ds_list_insert(global.chat_color,0,c_yellow);
	//----

	var i=0;
	repeat(ds_list_size(socket_list)){
		var _target=ds_list_find_value(socket_list,i);
		if(is_undefined(_target))exit;
		s_trajectory(_target,real_socket,_inst.oid,_x,_y,_dir,_speed,_dir,_item);
		i++;
	}


}
