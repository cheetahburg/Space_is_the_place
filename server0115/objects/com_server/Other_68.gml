type_event=ds_map_find_value(async_load,"type");

switch(type_event){
	case network_type_connect:
		socket=ds_map_find_value(async_load,"socket");
		//chat_text=string(socket)+"   "+string(real_socket);
		//ds_list_insert(global.chat,0,chat_text);
		//ds_list_insert(global.chat_color,0,c_aqua);
		global.playerNumber++;
		ds_list_add(socket_list,socket);
		
		//join
		buffer_seek(server_buffer,buffer_seek_start,0);
		buffer_write(server_buffer,buffer_u8,network.player_establish);
		buffer_write(server_buffer,buffer_u8,socket);
		network_send_packet(socket,server_buffer,buffer_tell(server_buffer));
		
		break;

	case network_type_disconnect:
		real_socket=ds_map_find_value(async_load,"socket");
		chat_text="disconnect socket= "+string(real_socket);
		ds_list_insert(global.chat,0,chat_text);
		ds_list_insert(global.chat_color,0,c_yellow);
		//real_socket=ds_map_find_value(async_load,"id");
		rs_left();
		break;
	
	case network_type_data:
		//show_message("!!");	
		buffer=ds_map_find_value(async_load,"buffer");
		socket=ds_map_find_value(async_load,"socket");
		real_socket=ds_map_find_value(async_load,"id");
		
		//socket=ds_map_find_value(async_load,"id");
		//real_socket=ds_map_find_value(async_load,"socket");

		buffer_seek(buffer,buffer_seek_start,0);
		receive_packet(buffer,real_socket);
		break;
	
}