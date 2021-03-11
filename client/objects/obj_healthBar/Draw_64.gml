/// @description Insert description here
// You can write your code in this editor


drawx = viewWidth-1830;
drawy = viewHeight-50;

draw_sprite(spr_bar_bkg,0,drawx,drawy);
draw_text_colour(drawx,drawy+30,"能量",c_white,c_white,c_white,c_white,1);

draw_set_alpha(0.65);
draw_set_color(c_red);
draw_rectangle(drawx,drawy,drawx+55,drawy-490*health_/max_health_,false);
draw_set_color(c_white);
draw_set_alpha(1);