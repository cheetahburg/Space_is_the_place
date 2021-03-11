//spr_circular_gradient_gaussian_splat_transparent_outside

if (surface_exists(surface)){
	var _cw=camera_get_view_width(view_camera[0]);
	var _ch=camera_get_view_height(view_camera[0]);
	var _cx=camera_get_view_x(view_camera[0]);
	var _cy=camera_get_view_y(view_camera[0]);
	
	//target
	surface_set_target(surface);
	
	//drawing
	draw_set_color(c_black);
	draw_set_alpha(0.65);
	draw_rectangle(0,0,_cw,_ch,0);
	
	gpu_set_blendmode(bm_subtract);
	
	with(obj_lightPos){
		var _sprite=my_sprite;
		var _initial_portion=diameter/sprite_get_width(_sprite);
		var _portion=_initial_portion*(1+random_range(0,0.2));
		
		var _brightness=brightness//random_range(lower_brightness,upper_brightness)
		gpu_set_blendmode(bm_subtract);
		//draw_sprite_ext(spr_circular_gradient_gaussian_splat_transparent_outside,
		draw_sprite_ext(_sprite,
		0,x-_cx,y-_cy,_portion,_portion,image_angle,c_white,
		_brightness);
		
	}
	
	
	gpu_set_blendmode(bm_normal);
	draw_set_alpha(1);
	surface_reset_target();
	draw_surface(surface,_cx,_cy);
	
	
}
if (!surface_exists(surface)){
	var _cw=camera_get_view_width(view_camera[0]);
	var _ch=camera_get_view_height(view_camera[0]);
	
	surface=surface_create(_cw,_ch);
	surface_set_target(surface);
	draw_set_color(c_black)
	draw_set_alpha(0.65);
	draw_rectangle(0,0,_cw,_ch,0);
	surface_reset_target();
	
}
