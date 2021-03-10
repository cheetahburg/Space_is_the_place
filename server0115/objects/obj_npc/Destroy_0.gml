event_inherited();

if is_undefined(ds_map_find_value(com_server.socket_to_instanceid,sock))exit;

var _inst=instance_create_layer(
com_server.playerSpawn_x,
com_server.playerSpawn_y,
"Instances",obj_player
);
_inst.username=username;
_inst.sock=sock;
_inst.hp=com_server.socket_to_hp[?sock];
_inst.plane=plane;

//ds_map_replace(com_server.socket_to_instanceid,sock,_inst);
com_server.socket_to_instanceid[?sock]=_inst;
var i=0;
repeat(ds_list_size(com_server.socket_list)){
	var _sock=ds_list_find_value(com_server.socket_list,i);
	s_player(_sock,_inst.sock,_inst.username,_inst.oid,_inst.x,_inst.y,_inst.direction,_inst.speed,_inst.image_angle,_inst.plane,_inst.hp);
	
	i+=1;
}
