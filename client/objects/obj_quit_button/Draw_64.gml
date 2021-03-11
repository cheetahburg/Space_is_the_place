//draw_self();
//draw_sprite_ext(s_button,100,50,0,1,1,0,image_blend,1);
var leftX=viewWidth-115-consts.padding;
var leftY=30;
//var button_spr=spr_empty;
var button_spr=spr_empty;

x1=leftX-sprite_get_xoffset(button_spr);
y1=leftY-sprite_get_yoffset(button_spr);
x2=x1+sprite_get_width(button_spr);
y2=y1+sprite_get_height(button_spr);


if (displayX>=x1) &&(displayX<=x2) &&(displayY>=y1)&&(displayY<=y2){
	draw_set_color(c_lime);
	//draw_rectangle(x1,y1,x2,y2,false);
	//draw_sprite_pos(button_spr,0,x1,y1,x1+,,x2,y2,);
	draw_sprite_ext(button_spr,0,leftX,leftY,1,1,0,c_lime,1);
	
	if (mouse_check_button_pressed(mb_left)){
		with(obj_items) {instance_destroy();}
		//network_destroy(com_client.client);
		send_left();
		room_goto(roomUI);
	}
	
}else{
	draw_set_color(image_blend);
	draw_sprite(button_spr,0,leftX,leftY);
}

draw_text_ext_transformed_color(leftX+30,leftY+15,str,0,100,1.5,1.5,0,c_white,c_white,c_white,c_white,1);
//draw_text_ext_transformed_color(1000,800,string(leftX)+" "+string(leftY),0,100,1,1,0,c_white,c_white,c_white,c_white,1);
draw_set_color(c_white)
//draw_text(leftX-100,leftY+200,global.PlayerNumber);
if global.PlayerNumber==1{
	draw_text_transformed(consts.padding+120,30,"当前只有您一位玩家",1.5,1.5,0);
	draw_text_transformed(consts.padding+120,70,"请等待其他玩家加入",1.5,1.5,0);
}