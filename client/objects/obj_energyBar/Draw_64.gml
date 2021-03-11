/// @description Insert description here
// You can write your code in this editor

//draw_self();
drawx = viewWidth-1640;
drawy = viewHeight-50;

draw_sprite(spr_bar_bkg,0,drawx,drawy);

draw_text_ext_color(drawx+30,drawy-550,"能量",0,300,c_yellow,c_yellow,c_silver,c_silver,1);

draw_set_color(c_blue);
draw_set_alpha(0.65);
draw_rectangle(drawx,drawy,drawx+55,drawy-490*energy_/max_energy_,false);
draw_set_color(c_white);
draw_set_alpha(1);