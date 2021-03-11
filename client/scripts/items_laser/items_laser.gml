function items_laser(argument0) {
	buffer=argument0;
	var _socket=buffer_read(buffer,buffer_u8);
	var _oid=buffer_read(buffer,buffer_string);
	var _x=buffer_read(buffer,buffer_u16);
	var _y=buffer_read(buffer,buffer_u16);
	var _image_angle=buffer_read(buffer,buffer_u16);
	var _inst=instance_create_depth(_x,_y,depth,obj_laser);

	var _player=ds_map_find_value(socket_to_instanceid,_socket);
	if is_undefined(_player)exit;	

	_inst.oid=_oid;
	_inst.direction=_image_angle;
	_inst.creator=_player;


	ds_map_add(com_game.omap,_oid,_inst);


}
