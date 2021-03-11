function rs_chat(argument0) {
	buffer=argument0;
	var _chat=buffer_read(buffer,buffer_string);
	var _player=ds_map_find_value(socket_to_instanceid,real_socket);
	_chat=_player.username+": "+_chat;
			
	ds_list_insert(global.chat,0,_chat);
	ds_list_insert(global.chat_color,0,c_white);
			
	//send to other players
	var i=0;
	repeat(ds_list_size(socket_list)){
		var _sock=ds_list_find_value(socket_list,i);
			
		buffer_seek(server_buffer,buffer_seek_start,0);
		buffer_write(server_buffer,buffer_u8,network.chat);
		buffer_write(server_buffer,buffer_string,_chat);
		buffer_write(server_buffer,buffer_u8,1);

		network_send_packet(_sock,server_buffer,buffer_tell(server_buffer));
		i++;
	}


}
