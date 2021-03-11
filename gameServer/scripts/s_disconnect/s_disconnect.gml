// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function s_disconnect(){
	var i=0;
	repeat(ds_list_size(com_server.socket_list)){
		var _sock=ds_list_find_value(com_server.socket_list,i);
		buffer_seek(com_server.server_buffer,buffer_seek_start,0);
		buffer_write(com_server.server_buffer,buffer_u8,network.player_disconnect);
		buffer_write(com_server.server_buffer,buffer_u8,real_socket);
		network_send_packet(_sock,com_server.server_buffer,buffer_tell(com_server.server_buffer));
		i++;
	}
}