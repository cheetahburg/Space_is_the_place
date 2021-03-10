function receive_packet(argument0) {
	buffer=argument0;
	msgid=buffer_read(buffer,buffer_u8);
	switch(msgid){
		case network.info:
			receive_info(buffer);
			break;
	
		case network.player_establish:
			receive_establish(buffer);
			break;
	
		case network.player_disconnect:
			receive_disconnect(buffer);
			break;
		case network.left:
			receive_disconnect(buffer);
			break;
	
		case network.move://hello world
			receive_move(buffer);
			break;
		
		case network.preparing_weapon:
			receive_preparing_weapon(buffer);
			break; 

		case network.chat:
			receive_chat(buffer);
			break;

		case network.damage:
			receive_damage(buffer);
			break;
	
		case network.destroy:
			receive_destroy(buffer);
			break;
	
		case network.create:
			receive_create(buffer);
			break;
		
		
		
	}


}
