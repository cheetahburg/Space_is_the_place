function send_preparing() {
	buffer_seek(com_client.client_buffer,buffer_seek_start,0);
	buffer_write(com_client.client_buffer,buffer_u8,network.preparing_weapon);
	buffer_write(com_client.client_buffer,buffer_string,global.my_oid);
	buffer_write(com_client.client_buffer,buffer_string,preparing_weapon);
	network_send_packet(com_client.client,com_client.client_buffer,buffer_tell(com_client.client_buffer));


}
