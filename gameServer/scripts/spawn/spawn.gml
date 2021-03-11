///@description spawn at random pos
///@arg obj
///@arg number
function spawn(argument0, argument1) {

	var obj =argument0;
	var num =argument1;
	var _xx,_yy;


	repeat(num){
		_xx=random_range(0,room_width);
		_yy=random_range(0,room_height);
		var _inst=instance_create_depth(_xx,_yy,depth,obj);

	
		var i=0;
		repeat(ds_list_size(com_server.socket_list)){
			var _sock=ds_list_find_value(com_server.socket_list,i);
			switch(obj){
				case obj_asteroid:
					_inst.check_time=consts.check_time;
					consts.check_time=(consts.check_time+1)%room_speed;
					s_asteroid(_sock,_inst.oid,_inst.x,_inst.y,_inst.direction,_inst.speed,_inst.image_angle);
					break;
				case obj_npc:
					s_npc(_sock,_inst.username,_inst.oid,_inst.x,_inst.y,_inst.direction,_inst.image_angle,_inst.plane,_inst.hp);
			}
		
		
			i++;
		}
	
	}


}
