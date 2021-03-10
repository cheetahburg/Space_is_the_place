//draw_self();


draw_sprite_ext(plane_spr,0,x,y,0.64,0.64,image_angle,image_blend,1);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);
draw_text(x,y-35,userName);
draw_text_color(x,y+28,string(hp)+"    ",c_red,c_red,c_red,c_red,1);
draw_text_color(x,y+28,"    "+string(int64(energy)),c_yellow,c_yellow,c_yellow,c_yellow,1);

//var _dis=point_distance(x,y,mouse_x,mouse_y);
var _dis=150
var _xx=x+lengthdir_x(_dis,angle);
var _yy=y+lengthdir_y(_dis,angle);
draw_sprite_ext(spr_arrow,0,_xx,_yy,1,1,angle,c_white,1);

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
	
if radar_on==true{
	
	for (var i = 0; i < instance_number(obj_slave); i += 1){
		var _inst = instance_find(obj_slave,i);
		draw_line_color(x,y,_inst.x,_inst.y,c_red,c_red);
		draw_text(
			x+lengthdir_x(100,point_direction(x,y,_inst.x,_inst.y)),
			y+lengthdir_y(100,point_direction(x,y,_inst.x,_inst.y)),
			point_distance(x,y,_inst.x,_inst.y)
		)
	}
	
	for (var i = 0; i < instance_number(obj_npc); i += 1){
		var _inst = instance_find(obj_npc,i);
		draw_line_color(x,y,_inst.x,_inst.y,c_orange,c_orange);
		draw_text(
			x+lengthdir_x(100,point_direction(x,y,_inst.x,_inst.y)),
			y+lengthdir_y(100,point_direction(x,y,_inst.x,_inst.y)),
			point_distance(x,y,_inst.x,_inst.y)
		)
	}
}

if phantom_flight==true{
	draw_sprite_ext(flame,0,x,y,
image_xscale,image_yscale,image_angle,image_blend,image_alpha);
}



//draw_sprite(spr_circular_gradient_gaussian_splat_transparent_outside,0,x-512,y-512);