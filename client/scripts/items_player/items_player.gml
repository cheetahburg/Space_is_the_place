function items_player(argument0) {
	buffer=argument0;


	var _sock=buffer_read(buffer,buffer_u8);
	var _userName=buffer_read(buffer,buffer_string);
				
	var _oid=buffer_read(buffer,buffer_string);
	var _x=buffer_read(buffer,buffer_u16);
	var _y=buffer_read(buffer,buffer_u16);
	var _dir=buffer_read(buffer,buffer_u16);
	var _speed=buffer_read(buffer,buffer_u16);
	var _image_angle=buffer_read(buffer,buffer_u16);
	var _plane=buffer_read(buffer,buffer_string);
	var _hp=buffer_read(buffer,buffer_u16);
				
	if _sock==global.mysocket{
		var _inst=instance_create_layer(_x,_y,"Instances",obj_player);
		global.my_oid=_oid;
		_inst.shipName=obj_data.equipInfo[?_plane][?"itemName"];
		_inst.plane_spr=consts.spr_map[?_inst.shipName];

	}else{
		var _inst=instance_create_layer(_x,_y,"Instances",obj_slave);
		_inst.shipName=obj_data.equipInfo[?_plane][?"itemName"];
		_inst.plane_spr=consts.spr_map[?_inst.shipName];
	}
				
	//ds_map_replace(socket_to_instanceid,_sock,_inst);
	socket_to_instanceid[?_sock]=_inst;
				
	_inst.userName=_userName;
	_inst.oid=_oid;

	_inst.direction=_dir;
	_inst.speed=_speed;
	_inst.image_angle=_image_angle;
	_inst.hp=_hp;
				
	ds_map_add(com_game.omap,_oid,_inst);


}
