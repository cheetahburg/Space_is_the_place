draw_sprite_ext(plane_spr,0,x,y,0.64,0.64,image_angle,image_blend,1);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);
draw_text(x,y-35,userName);

draw_text_color(x,y+28,string(hp),c_red,c_red,c_red,c_red,1);


if preparing_weapon!="None"{
	if(preparing_weapon=="laser"){
		var _xx=x+lengthdir_x(25,image_angle);
		var _yy=y+lengthdir_y(25,image_angle);
		draw_sprite_ext(spr_halo,0,_xx,_yy,0.45,0.45,halo_index,image_blend,1);
		halo_index+=5;
	}else if(preparing_weapon=="anti_matter_bomb"){
		draw_sprite_ext(spr_halo,0,x,y,0.5,0.5,halo_index,c_yellow,1);
		//draw_sprite_ext(spr_halo2,0,x,y,0.3,0.3,halo2_index,image_blend,1);
		//halo2_index=(halo2_index+1)%30;
	}	
}