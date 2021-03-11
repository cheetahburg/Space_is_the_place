function receive_preparing_weapon(argument0) {
	buffer=argument0;

	var move_oid=buffer_read(buffer,buffer_string);
	var _preparing_weapon=buffer_read(buffer,buffer_string);

	var _inst=ds_map_find_value(com_game.omap,move_oid);
	if is_undefined(_inst)exit;
	if (move_oid==global.my_oid)exit;

	_inst.preparing_weapon=_preparing_weapon;



}
