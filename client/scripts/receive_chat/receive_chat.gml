function receive_chat(argument0) {
	buffer=argument0;

	var _chat=buffer_read(buffer,buffer_string);
	var _color=buffer_read(buffer,buffer_u8);
	ds_list_insert(global.chat,0,_chat);
		
	if _color=1 //player color
		ds_list_insert(global.chat_color,0,c_white);
	else if _color=2 //server color
		ds_list_insert(global.chat_color,0,c_red);


}
