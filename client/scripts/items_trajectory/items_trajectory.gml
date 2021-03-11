function items_trajectory(argument0, argument1) {
	var _item=argument0;
	
	
	
	buffer=argument1;

	var _obj=consts.string_to_object[?_item];

	var _socket=buffer_read(buffer,buffer_u8);
	var _oid=buffer_read(buffer,buffer_string);
	var _x=buffer_read(buffer,buffer_u16);
	var _y=buffer_read(buffer,buffer_u16);
	var _dir=buffer_read(buffer,buffer_s16);
	var _speed=buffer_read(buffer,buffer_u16);
	var _image_angle=buffer_read(buffer,buffer_s16);
				

	var _player=ds_map_find_value(socket_to_instanceid,_socket);
	//if(_socket!=0 and is_undefined(_player))exit;
	if(is_undefined(_player))exit;

	var _inst=instance_create_layer(_x,_y,"Instances",_obj);
	
	show_debug_message("hello?"+string(_obj)+" "+string(_x)+" "+string(_y));
	//ds_map_add(com_game.omap,_oid,_inst);
	

	_inst.oid=_oid;
	_inst.direction=_dir;
	_inst.speed=_speed;
	if(_item=="laser"){_inst.speed=0;}
	_inst.image_angle=_image_angle;
	_inst.creator=_player;

	ds_map_add(com_game.omap,_oid,_inst);



}
