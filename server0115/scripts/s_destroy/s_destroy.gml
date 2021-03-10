function s_destroy(argument0, argument1) {
	var _target=argument0;
	var _oid=argument1;

	buffer_seek(com_server.server_buffer,buffer_seek_start,0);
	buffer_write(com_server.server_buffer,buffer_u8,network.destroy);
	buffer_write(com_server.server_buffer,buffer_string,oid);
	network_send_packet(_target,com_server.server_buffer,buffer_tell(com_server.server_buffer));


}
