function send_left() {
	buffer_seek(com_client.client_buffer,buffer_seek_start,0);
	buffer_write(com_client.client_buffer,buffer_u8,network.left);
	network_send_packet(com_client.client,com_client.client_buffer,buffer_tell(com_client.client_buffer));

}
