function items_npc(argument0) {
	buffer=argument0;

	var _userName=buffer_read(buffer,buffer_string);
				
	var _oid=buffer_read(buffer,buffer_string);
	var _x=buffer_read(buffer,buffer_u16);
	var _y=buffer_read(buffer,buffer_u16);
	var _dir=buffer_read(buffer,buffer_u16);
	var _image_angle=buffer_read(buffer,buffer_u16);
	var _plane_spr=buffer_read(buffer,buffer_u16);
	var _hp=buffer_read(buffer,buffer_u16);


	var _inst=instance_create_depth(_x,_y,depth,obj_npc);
	_inst.plane_spr=consts.plane[_plane_spr,pl.spr];

	_inst.userName=_userName;
	_inst.oid=_oid;
				
	_inst.direction=_dir;
	_inst.image_angle=_image_angle;
	_inst.hp=_hp;
				
	ds_map_add(com_game.omap,_oid,_inst);


}
