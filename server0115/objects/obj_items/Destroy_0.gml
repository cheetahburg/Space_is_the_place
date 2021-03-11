
var i=0;
repeat(ds_list_size(com_server.socket_list)){
	var _sock=ds_list_find_value(com_server.socket_list,i);
	s_destroy(_sock,oid);
	i++;
}
ds_map_delete(obj_game.omap,oid);