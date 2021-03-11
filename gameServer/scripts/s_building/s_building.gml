function s_building(_target,_typ,_oid,_x,_y,_angle,_spd,_scale,_rot_spd,_alpha,
_lower_brightness,_upper_brightness,_shiver,_flash,_flash_start,_lerp_spd) {
	buffer_seek(com_server.server_buffer,buffer_seek_start,0);
	buffer_write(com_server.server_buffer,buffer_u8,network.create);
	buffer_write(com_server.server_buffer,buffer_string,_typ);
	buffer_write(com_server.server_buffer,buffer_string,_oid);
	buffer_write(com_server.server_buffer,buffer_u16,_x);
	buffer_write(com_server.server_buffer,buffer_u16,_y);
	buffer_write(com_server.server_buffer,buffer_u16,_angle);
	//buffer_write(com_server.server_buffer,buffer_f16,_spd);//
	buffer_write(com_server.server_buffer,buffer_u16,int64(_rot_spd*100));
	//buffer_write(com_server.server_buffer,buffer_f16,_alpha);
	buffer_write(com_server.server_buffer,buffer_u16,int64(_scale*100));
	buffer_write(com_server.server_buffer,buffer_u16,int64(_lower_brightness*100));
	buffer_write(com_server.server_buffer,buffer_u16,int64(_upper_brightness*100));
	buffer_write(com_server.server_buffer,buffer_u16,int64(_shiver*100));
	buffer_write(com_server.server_buffer,buffer_s16,int64(_flash*100));
	buffer_write(com_server.server_buffer,buffer_s16,int64(_flash_start*100));
	buffer_write(com_server.server_buffer,buffer_u16,int64(_lerp_spd*100));
	
	network_send_packet(_target,com_server.server_buffer,buffer_tell(com_server.server_buffer));


}
