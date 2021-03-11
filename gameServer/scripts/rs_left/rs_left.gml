// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function rs_left(){
	global.playerNumber--;
	
	var _oid=ds_map_find_value(socket_to_oid,real_socket);
	var _inst=ds_map_find_value(socket_to_instanceid,real_socket)
	show_debug_message("--------------left"+string(current_time));
	show_debug_message(_inst);
	if is_undefined(_inst)exit;
	
	ds_map_delete(socket_to_oid,real_socket);
	ds_map_delete(socket_to_instanceid,real_socket);
	
	if(real_socket!=undefined)network_destroy(real_socket);
	
	var i=0;
	repeat(ds_list_size(socket_list)){
		var _sock=ds_list_find_value(socket_list,i);
		buffer_seek(server_buffer,buffer_seek_start,0);
		buffer_write(server_buffer,buffer_u8,network.destroy);
		buffer_write(server_buffer,buffer_string,_oid);
		network_send_packet(_sock,server_buffer,buffer_tell(server_buffer));

		i++;
	}
	chat_text="delete pos= "+string(ds_list_find_index(socket_list,real_socket));
	ds_list_insert(global.chat,0,chat_text);
	ds_list_insert(global.chat_color,0,c_red);
	
	ds_list_delete(socket_list,ds_list_find_index(socket_list,real_socket));
		
	chat_text=_inst.username+" left the game !"
	chat_text="SERVER: "+chat_text;
	ds_list_insert(global.chat,0,chat_text);
	ds_list_insert(global.chat_color,0,c_red);
	
	//send data to clients
	var i=0;
	repeat(ds_list_size(com_server.socket_list)){
		var _sock=ds_list_find_value(com_server.socket_list,i);
			
		buffer_seek(com_server.server_buffer,buffer_seek_start,0);
		buffer_write(com_server.server_buffer,buffer_u8,network.chat);
		buffer_write(com_server.server_buffer,buffer_string,chat_text);
		buffer_write(com_server.server_buffer,buffer_u8,2);

		network_send_packet(_sock,com_server.server_buffer,buffer_tell(com_server.server_buffer));
		
		s_disconnect();
		i++;
	}
		
	with(_inst){
		instance_destroy();
	}
		
	
}