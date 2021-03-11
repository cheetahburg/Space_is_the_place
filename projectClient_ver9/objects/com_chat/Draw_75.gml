draw_set_halign(fa_left);
draw_set_valign(fa_middle);


for(var i=0;i<chatSize;i++){
	draw_set_color(ds_list_find_value(global.chat_color,i));
	draw_text(shift_x,shift_y-(16*i),ds_list_find_value(global.chat,i));
}

if active==true{
	draw_set_color(c_lime);
	draw_text_transformed(shift_x,shift_y+50,"> "+chat_text,1.5,1.5,0);
}else{
	draw_set_color(c_gray);
	draw_text_ext_transformed(shift_x,shift_y+50,"> 按回车键输入聊天信息(仅支持英文)",20,250,1.5,1.5,0);
}