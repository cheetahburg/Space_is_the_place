function s_move(argument0, argument1, argument2, argument3) {
	var _move_oid=argument0;
	var _image_angle=argument1;
	var _x=argument2;
	var _y=argument3;

	var i=0;
	repeat(ds_list_size(com_server.socket_list)){
		var _sock=ds_list_find_value(com_server.socket_list,i);
			
		buffer_seek(com_server.server_buffer,buffer_seek_start,0);
		buffer_write(com_server.server_buffer,buffer_u8,network.move);
		buffer_write(com_server.server_buffer,buffer_string,_move_oid);
		buffer_write(com_server.server_buffer,buffer_s16,_image_angle);
		buffer_write(com_server.server_buffer,buffer_u16,_x);
		buffer_write(com_server.server_buffer,buffer_u16,_y);
		network_send_packet(_sock,com_server.server_buffer,buffer_tell(com_server.server_buffer));
		i++;
	}


}
