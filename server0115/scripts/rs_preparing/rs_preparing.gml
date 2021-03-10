function rs_preparing(argument0) {
	buffer=argument0;
	var move_oid=buffer_read(buffer,buffer_string);
	var _preparing_weapon=buffer_read(buffer,buffer_string);

	var _inst=ds_map_find_value(obj_game.omap,move_oid);
	if is_undefined(_inst)exit;
	_inst.preparing_weapon=_preparing_weapon;

	s_preparing(move_oid,_preparing_weapon);

}
