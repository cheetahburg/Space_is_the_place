///@arg item_oid
///@arg hp
function tell_damage(argument0, argument1) {

	var _oid=argument0;
	var _hp=argument1;

	var i=0;
	repeat(ds_list_size(com_server.socket_list)){
		var _sock=ds_list_find_value(com_server.socket_list,i);
			
		buffer_seek(com_server.server_buffer,buffer_seek_start,0);
		buffer_write(com_server.server_buffer,buffer_u8,network.damage);
		buffer_write(com_server.server_buffer,buffer_string,_oid);
		buffer_write(com_server.server_buffer,buffer_s32,_hp);
		network_send_packet(_sock,com_server.server_buffer,buffer_tell(com_server.server_buffer));
		i++;
	}


}
