if active=false{
	//turn the chat on
	active=true
	//clear it
	keyboard_string="";
	chat_text="";
}else{
	//turn the chat off
	active=false
	
	chat_text="SERVER: "+chat_text;
	ds_list_insert(global.chat,0,chat_text);
	ds_list_insert(global.chat_color,0,c_red);
	
	//send data to clients
	var i=0;
	repeat(ds_list_size(com_server.socket_list)){
		var _sock=ds_list_find_value(com_server.socket_list,i);
			
		buffer_seek(com_server.server_buffer,buffer_seek_start,0);
		buffer_write(com_server.server_buffer,buffer_u8,network.chat);
		buffer_write(com_server.server_buffer,buffer_string,chat_text);
		buffer_write(com_server.server_buffer,buffer_u8,2);

		network_send_packet(_sock,com_server.server_buffer,buffer_tell(com_server.server_buffer));
		i++;
	}
	
	
	
}