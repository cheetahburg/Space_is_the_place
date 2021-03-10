event_inherited();
shoot_gap++;
if hp<=0 {
	instance_destroy();
}

var _inst=instance_nth_nearest(x,y,obj_player,1);
if(_inst!=noone){
	var _dir=point_direction(x,y,_inst.x,_inst.y);
	var _dis=point_distance(x,y,_inst.x,_inst.y);
	if(_dis<800 and _dis>100){
		_dir=direction-angle_difference(direction,_dir);
		direction = lerp(direction,_dir,1*abs(_dir-direction)/360);
		image_angle=direction;
	}

	if(_dis<400 and shoot_gap>1*room_speed){
		shoot_gap=0;
		var _inst=instance_create_depth(x,y,depth,consts.str_to_obj[?my_weapon]);
		_inst.speed=6;
		_inst.direction=image_angle;
		_inst.image_angle=_inst.direction;
		_inst.creator=id;
		var i=0;
		repeat(ds_list_size(com_server.socket_list)){
			var _target=ds_list_find_value(com_server.socket_list,i);
			if(is_undefined(_target))exit;
			s_trajectory(_target,0,_inst.oid,_inst.x,_inst.y,_inst.direction,_inst.speed,_inst.image_angle,my_weapon);
			i++;
		}
	}
}

s_move(oid,image_angle,x,y);
