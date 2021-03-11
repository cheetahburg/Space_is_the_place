// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function items_collision(buffer){
	var _oid=buffer_read(buffer,buffer_string);
	var _x=buffer_read(buffer,buffer_u16);
	var _y=buffer_read(buffer,buffer_u16);
	var _sprite_width=buffer_read(buffer,buffer_u16);
	var _sprite_height=buffer_read(buffer,buffer_u16);
	//var _dir=buffer_read(buffer,buffer_u16);
	
	var _inst=instance_create_layer(_x,_y,"collision",obj_collision);
				
	_inst.oid=_oid;
	_inst.x=_x;
	_inst.y=_y;
	_inst.image_xscale=_sprite_width/100;
	_inst.image_yscale=_sprite_height/100;
				
	ds_map_add(com_game.omap,_oid,_inst);

}