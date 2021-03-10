function receive_damage(argument0) {
	buffer=argument0;

	var _oid=buffer_read(buffer,buffer_string);
	var _hp=buffer_read(buffer,buffer_s32);
	var _inst=ds_map_find_value(com_game.omap,_oid);
	if is_undefined(_inst)exit;
	_inst.hp=_hp;


}
