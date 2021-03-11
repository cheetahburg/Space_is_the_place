function receive_destroy(argument0) {
	buffer=argument0;

	var _key=buffer_read(buffer,buffer_string);
	var _inst=ds_map_find_value(com_game.omap,_key);
	ds_map_delete(com_game.omap,_key);

	if(_inst!=undefined){
		with(_inst){
			instance_destroy();
		}
	}


}
