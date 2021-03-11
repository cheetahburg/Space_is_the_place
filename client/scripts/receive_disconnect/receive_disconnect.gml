function receive_disconnect(argument0) {
	buffer=argument0;
	var _socket=buffer_read(buffer,buffer_u8);
	ds_map_delete(socket_to_instanceid,_socket);


}
