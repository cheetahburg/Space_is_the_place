function s_npc(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8) {
	var _target=argument0;
	var _username=argument1;
	var _oid=argument2;
	var _x=argument3;
	var _y=argument4;
	var _dir=argument5;
	var _image_angle=argument6;
	var _plane=argument7;
	var _hp=argument8;


	buffer_seek(com_server.server_buffer,buffer_seek_start,0);
	buffer_write(com_server.server_buffer,buffer_u8,network.create);
	buffer_write(com_server.server_buffer,buffer_string,"npc");
	buffer_write(com_server.server_buffer,buffer_string,_username);
	buffer_write(com_server.server_buffer,buffer_string,_oid);
	buffer_write(com_server.server_buffer,buffer_u16,_x);
	buffer_write(com_server.server_buffer,buffer_u16,_y);
	buffer_write(com_server.server_buffer,buffer_u16,_dir);
	buffer_write(com_server.server_buffer,buffer_u16,_image_angle);
	buffer_write(com_server.server_buffer,buffer_u16,_plane);
	buffer_write(com_server.server_buffer,buffer_u16,_hp);

	network_send_packet(_target,com_server.server_buffer,buffer_tell(com_server.server_buffer));


}
