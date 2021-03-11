function receive_establish(argument0) {
	buffer=argument0;

	var _socket=buffer_read(buffer,buffer_u8);
	global.mysocket=_socket;

	buffer_seek(client_buffer,buffer_seek_start,0);
	buffer_write(client_buffer,buffer_u8,network.player_establish);
	buffer_write(client_buffer,buffer_string,com_game.userName);
	buffer_write(client_buffer,buffer_u16,consts.total_hp);
	buffer_write(client_buffer,buffer_string,consts.my_equip[?"ship"][|0]);

	//show_message(consts.my_equip[?"ship"][|0])
	network_send_packet(client,client_buffer,buffer_tell(client_buffer));
}
