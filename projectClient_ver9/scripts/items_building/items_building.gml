function items_building(_item,buffer) {
	
	var _oid=buffer_read(buffer,buffer_string);
	var _x=buffer_read(buffer,buffer_u16);
	var _y=buffer_read(buffer,buffer_u16);
	//var _dir=buffer_read(buffer,buffer_u16);
	var _angle=buffer_read(buffer,buffer_u16);
	//var _spd=buffer_read(buffer,buffer_f16);
	var _rot_spd=buffer_read(buffer,buffer_u16);
	//var _alpha=buffer_read(buffer,buffer_f16);
	var _scale=buffer_read(buffer,buffer_u16);
	var _lower_brightness=buffer_read(buffer,buffer_u16);
	var _upper_brightness=buffer_read(buffer,buffer_u16);
	var _shiver=buffer_read(buffer,buffer_u16);
	var _flash=buffer_read(buffer,buffer_s16);
	var _flash_start=buffer_read(buffer,buffer_s16);
	var _lerp_spd=buffer_read(buffer,buffer_u16);	
	
	
	//return;
	var tmp_obj=consts.string_to_object[?_item];
	//var tmp_obj=obj_accomodation;
	var _inst=instance_create_layer(_x,_y,"Map_instances",tmp_obj);
	
	show_debug_message(_item+"  here");
	
	
	
	_inst.oid=_oid;
	
	_inst.x=_x;
	_inst.y=_y;
	
	_inst.image_angle=_angle;
	
	//_inst.speed=_spd;
	_inst.rot_spd=_rot_spd/100;
	
	//_inst.image_alpha=_alpha;
	
	_inst.scale=_scale/100;
	show_debug_message(":::::::");
	show_debug_message("scale:"+string(_inst.scale));
	_inst.lower_brightness=_lower_brightness/100;
	show_debug_message("_lower_brightness:"+string(_inst.lower_brightness));
	_inst.upper_brightness=_upper_brightness/100;
	show_debug_message("_upper_brightness:"+string(_inst.upper_brightness));
	_inst.shiver=_shiver/100;
	_inst.flash=_flash/100;
	_inst.flash_start=_flash_start/100;
	_inst.lerp_spd=_lerp_spd/100;
	
	show_debug_message(_inst.flash);
	
	show_debug_message(_item+"  here2");
	
	ds_map_add(com_game.omap,_oid,_inst);


}
