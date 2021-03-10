function receive_packet(argument0, argument1) {
	buffer=argument0;
	//socket=argument1;
	msgid=buffer_read(buffer,buffer_u8);
	switch(msgid){
		case 100:
			var _dbmess=buffer_read(buffer,buffer_string);
			show_debug_message(_dbmess);
			break;
			
		case network.player_establish:
			var _username=buffer_read(buffer,buffer_string);
			var _hp=buffer_read(buffer,buffer_u16);
			var _plane=buffer_read(buffer,buffer_string);
			chat_text="establish: "+string(real_socket);
			ds_list_insert(global.chat,0,chat_text);
			ds_list_insert(global.chat_color,0,c_white);
			
			network_player_join(_username,_hp,_plane);
			break;
		
		case network.move:
			//bjnote
			//network_destroy(socket);
			rs_move(buffer);
			break; 
		
		case network.preparing_weapon:
			rs_preparing(buffer);
			break; 
	
		case network.chat:
			rs_chat(buffer);			
			break;
			
		case network.create:
			rs_items(buffer);
			break;
			
		case network.left:
			rs_left();
			break;
	}


}
