function rs_move(argument0) {
	buffer=argument0;
	var move_oid=buffer_read(buffer,buffer_string);
	var _xx=buffer_read(buffer,buffer_s16);
	var _yy=buffer_read(buffer,buffer_s16);
	var _image_angle=buffer_read(buffer,buffer_s32);

	var _inst=ds_map_find_value(obj_game.omap,move_oid);
	if is_undefined(_inst)exit;

	_inst.x=_xx;
	_inst.y=_yy;
	_inst.image_angle=_image_angle;

	s_move(move_oid,_inst.image_angle,_inst.x,_inst.y);


}
