draw_set_halign(fa_left);
draw_set_valign(fa_middle);


//draw chat room
for(var i=0;i<chatSize;i++){
	draw_set_color(ds_list_find_value(global.chat_color,i));
	draw_text_ext_transformed(100,1200-(64*i),ds_list_find_value(global.chat,i),30,600,4,4,0);
}

if active==true{
	draw_set_color(c_lime);
	draw_text_ext_transformed(100,400,"> "+chat_text,30,600,4,4,0);
}else{
	draw_set_color(c_gray);
	draw_text_ext_transformed(100,400,"> "+chat_text,30,600,4,4,0);
}

draw_set_color(c_silver);
var size=ds_list_size(com_server.socket_list);
var _str="";
for(var i=0;i<size;i++){
	_str+=(" "+string(com_server.socket_list[|i]));
}
draw_text_ext_transformed(1600,2000,_str,40,400,5,5,0);

