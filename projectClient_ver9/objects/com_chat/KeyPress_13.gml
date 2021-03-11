if active=false{
	//turn the chat on
	active=true
	//clear it
	keyboard_string="";
	chat_text="";
}else{
	//turn the chat of
	active=false
	//send data to server
	buffer_seek(com_client.client_buffer,buffer_seek_start,0);

	buffer_write(com_client.client_buffer,buffer_u8,network.chat);
	buffer_write(com_client.client_buffer,buffer_string,chat_text);

	network_send_packet(com_client.client,com_client.client_buffer,buffer_tell(com_client.client_buffer));
}