event_inherited();

if is_undefined(ds_map_find_value(com_server.socket_to_instanceid,sock))exit;

var i=irandom(3);
var _inst=instance_create_depth(
com_server.playerSpawn_x[i],
com_server.playerSpawn_y[i],
depth,obj_player
);
_inst.image_angle=com_server.playerSpawn_angle[i];
_inst.username=username;
_inst.sock=sock;
_inst.hp=com_server.socket_to_hp[?sock];
_inst.plane=plane;

com_server.socket_to_instanceid[?sock]=_inst;
var i=0;
repeat(ds_list_size(com_server.socket_list)){
	var _sock=ds_list_find_value(com_server.socket_list,i);
	s_player(_sock,_inst.sock,_inst.username,_inst.oid,_inst.x,_inst.y,_inst.direction,_inst.speed,_inst.image_angle,_inst.plane,_inst.hp);
	
	i+=1;
}
