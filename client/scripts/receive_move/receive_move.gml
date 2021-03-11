function receive_move(argument0) {
	buffer=argument0;

	var move_oid=buffer_read(buffer,buffer_string);
	var move_angle=buffer_read(buffer,buffer_s16);
	var move_x=buffer_read(buffer,buffer_u16);
	var move_y=buffer_read(buffer,buffer_u16);

	var _inst=ds_map_find_value(com_game.omap,move_oid);
	//show_message(_inst);
	if is_undefined(_inst)exit;
	if(move_oid==global.my_oid)exit;


	_inst.x=move_x;
	_inst.y=move_y;
	_inst.image_angle=move_angle;



}
