// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function s_collision(_target,_oid,_x,_y,_sprite_width,_sprite_height){
	buffer_seek(com_server.server_buffer,buffer_seek_start,0);
	buffer_write(com_server.server_buffer,buffer_u8,network.create);
	buffer_write(com_server.server_buffer,buffer_string,"collision");
	buffer_write(com_server.server_buffer,buffer_string,_oid);
	buffer_write(com_server.server_buffer,buffer_u16,_x);
	buffer_write(com_server.server_buffer,buffer_u16,_y);
	buffer_write(com_server.server_buffer,buffer_u16,_sprite_width);
	buffer_write(com_server.server_buffer,buffer_u16,_sprite_height);
	network_send_packet(_target,com_server.server_buffer,buffer_tell(com_server.server_buffer));
}
