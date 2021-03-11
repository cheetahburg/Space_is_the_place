function s_asteroid(argument0, argument1, argument2, argument3, argument4, argument5, argument6) {
	var _target=argument0;
	var _oid=argument1;
	var _x=argument2;
	var _y=argument3;
	var _dir=argument4;
	var _speed=argument5;
	var _image_angle=argument6;


	buffer_seek(com_server.server_buffer,buffer_seek_start,0);
	buffer_write(com_server.server_buffer,buffer_u8,network.create);
	buffer_write(com_server.server_buffer,buffer_string,"asteroid");
	buffer_write(com_server.server_buffer,buffer_string,_oid);
	buffer_write(com_server.server_buffer,buffer_u16,_x);
	buffer_write(com_server.server_buffer,buffer_u16,_y);
	buffer_write(com_server.server_buffer,buffer_u16,_dir);
	buffer_write(com_server.server_buffer,buffer_u16,_speed);
	buffer_write(com_server.server_buffer,buffer_u16,_image_angle);

	network_send_packet(_target,com_server.server_buffer,buffer_tell(com_server.server_buffer));


}
