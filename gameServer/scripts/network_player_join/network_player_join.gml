function network_player_join(argument0, argument1, argument2) {
	var _username=argument0;
	var _hp=argument1;
	var _plane=argument2;

	//create player obj in server
	var i=irandom(3);
	//var _player=instance_create_depth(playerSpawn_x[i],playerSpawn_y[i],depth,obj_player);
	var _player=instance_create_layer(playerSpawn_x[i],playerSpawn_y[i],"Instances",obj_player);
	_player.image_angle=playerSpawn_angle[i];
	_player.hp=_hp;
	_player.username=_username;
	_player.sock=real_socket;
	_player.plane=_plane;

	///add instance id to socket_list
	ds_map_add(socket_to_instanceid,real_socket,_player);
	ds_map_add(socket_to_oid,real_socket,_player.oid);
	ds_map_add(socket_to_hp,real_socket,_player.hp);
	ds_map_add(socket_to_hp,real_socket,_player.plane);


#region //send all items to the new client

	var key = ds_map_find_first(obj_game.omap);
	for(var i=0;i<ds_map_size(obj_game.omap);i++){
		var _inst=ds_map_find_value(obj_game.omap,key);
		if is_undefined(_inst)continue;	
		
		with(_inst){
			var _socket=com_server.real_socket;
			if(typ=="player"){
					com_server.chat_text="establish: "+string(com_server.real_socket);
					ds_list_insert(global.chat,0,com_server.chat_text);
					ds_list_insert(global.chat_color,0,c_green);
				s_player(_socket,sock,username,oid,x,y,direction,speed,image_angle,plane,hp);
			}else if( ds_list_find_index(consts.weapon_list,typ)>=0 ){
				s_trajectory(_socket,sock,oid,x,y,direction,speed,direction,typ);
			}else if(typ="collision"){
				s_collision(_socket,oid,x,y,sprite_width,sprite_height);
			}else if(object_is_ancestor(object_index,obj_buildings)==true){
				s_building(_socket,object_get_name(object_index),oid,x,y,image_angle,speed,rot_spd,image_alpha,
				scale,lower_brightness,upper_brightness,shiver,flash,flash_start,lerp_spd);
			}
			else if(typ=="npc"){
				s_npc(_socket,username,oid,x,y,direction,image_angle,plane,hp);
			}
		
			key = ds_map_find_next(obj_game.omap, key);
		}
		
	}
	

#endregion


#region Send clients already in game, the clilent just joined
	var _inst=_player;
	
	var _size=ds_list_size(socket_list);
	

	chat_text=_player.username+" joined the game !"
	chat_text="SERVER: "+chat_text;
	ds_list_insert(global.chat,0,chat_text);
	ds_list_insert(global.chat_color,0,c_red);
	
	var last_socket=-100;
	for(var i=0;i<_size;i++){
		var _sock=socket_list[|i];
		
		if (_sock!=last_socket){
			last_socket=_sock;
			buffer_seek(com_server.server_buffer,buffer_seek_start,0);
			buffer_write(com_server.server_buffer,buffer_u8,network.chat);
			buffer_write(com_server.server_buffer,buffer_string,chat_text);
			buffer_write(com_server.server_buffer,buffer_u8,2);
			network_send_packet(_sock,com_server.server_buffer,buffer_tell(com_server.server_buffer));
			
			if(_sock!=real_socket){
				com_server.chat_text=string(_sock)+"  "+string(com_server.real_socket);
				ds_list_insert(global.chat,0,com_server.chat_text);
				ds_list_insert(global.chat_color,0,c_lime);
				
				s_player(_sock,_inst.sock,_inst.username,_inst.oid,_inst.x,_inst.y,_inst.direction,_inst.speed,_inst.image_angle,_inst.plane,_inst.hp);
			}
			
			
		}
	}
	

		
		
	/*
		//send data to clients
	var i=0;
	repeat(ds_list_size(com_server.socket_list)){
		var _sock=ds_list_find_value(com_server.socket_list,i);
			
		
	}
	*/

#endregion



}