event_inherited();
exist++;
var _list = ds_list_create();
var _num = collision_circle_list(x, y,60,obj_items, false,true,_list, false);
if _num > 0{
    for (var i = 0; i < _num; ++i;)
        {
			var _inst=_list[|i];
			if(_inst!=creator)_inst.hp-=damage;
			if(_inst!=creator and (_inst.typ=="player" or _inst.typ=="npc")){
				//show_debug_message(string(exist)+" "+string(_inst.hp));
				tell_damage(_inst.oid,_inst.hp);
			}
			if(_inst!=creator and _inst.typ=="player" and _inst.hp<=0){
					
					var chat_text=creator_username+" destroyed "+_inst.username;
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
						i++;
					}
			
        }
    }
	
}
ds_list_destroy(_list);
instance_destroy(id);