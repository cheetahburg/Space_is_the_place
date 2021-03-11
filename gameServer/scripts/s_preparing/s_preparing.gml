function s_preparing(argument0, argument1) {
	var _move_oid=argument0;
	var _preparing_weapon=argument1;

	var i=0;
	repeat(ds_list_size(com_server.socket_list)){
		var _sock=ds_list_find_value(com_server.socket_list,i);
			
		buffer_seek(com_server.server_buffer,buffer_seek_start,0);
		buffer_write(com_server.server_buffer,buffer_u8,network.preparing_weapon);
		buffer_write(com_server.server_buffer,buffer_string,_move_oid);
		buffer_write(com_server.server_buffer,buffer_string,_preparing_weapon);
		network_send_packet(_sock,com_server.server_buffer,buffer_tell(com_server.server_buffer));
		i++;
	}


}
