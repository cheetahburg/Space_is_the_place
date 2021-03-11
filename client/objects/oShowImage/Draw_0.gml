/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_black);
draw_rectangle(x,y,x+960,y+540,false);
draw_set_color(c_white);
draw_self();



if(alarm[0] <= 2*room_speed*0.15){
	image_alpha -= 0.05;
}else if(alarm[0] >= 2*room_speed*0.85){
	image_alpha += 0.05;
}