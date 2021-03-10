if(!instance_exists(creator)){
	instance_destroy();
	exit;
}



if (other==creator) or (other.faction==creator.faction){
	exit;
}
var my_damage=damage;
//if( ds_list_find_index(consts.weapon_list,other.typ)>0 )
//	instance_destroy();

//
var chat_text="creator "+string(creator.oid)+"other "+string(other.oid);
ds_list_insert(global.chat,0,chat_text);
ds_list_insert(global.chat_color,0,c_red);


with(other){
	hp-=my_damage;
	tell_damage(oid,hp);
}
instance_destroy();

if other.typ!="player" exit;

if other.hp<=0{
		var chat_text=creator_username+" destroyed "+other.username;
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