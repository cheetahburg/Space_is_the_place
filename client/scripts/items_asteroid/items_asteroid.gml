function items_asteroid(argument0) {
	buffer=argument0;

	var _oid=buffer_read(buffer,buffer_string);
	var _x=buffer_read(buffer,buffer_u16);
	var _y=buffer_read(buffer,buffer_u16);
	var _dir=buffer_read(buffer,buffer_u16);
	var _speed=buffer_read(buffer,buffer_u16);
	var _image_angle=buffer_read(buffer,buffer_u16);
	var _inst=instance_create_depth(_x,_y,depth,obj_asteroid);
				
	//ds_map_add(com_game.omap,_oid,_inst);
				
	_inst.oid=_oid;
	_inst.direction=_dir;
	_inst.speed=_speed;
	_inst.image_angle=_image_angle;
				
	ds_map_add(com_game.omap,_oid,_inst);


}
