/// @description Insert description here
// You can write your code in this editor


drawx = viewWidth-1790;
drawy = viewHeight-50;

draw_sprite(spr_bar_bkg,0,drawx,drawy);
draw_text_ext_color(drawx+30,drawy-550,"耐久",0,300,c_yellow,c_yellow,c_silver,c_silver,1);

draw_set_alpha(0.65);
draw_set_color(c_red);
show_debug_message(health_);
show_debug_message(max_health_);
show_debug_message(health_/max_health_);
draw_rectangle(drawx,drawy,drawx+55,drawy-490*health_/max_health_,false);
draw_set_color(c_white);
draw_set_alpha(1);