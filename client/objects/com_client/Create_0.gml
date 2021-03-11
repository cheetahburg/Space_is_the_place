enum network{
	player_establish,
	player_connect,
	player_login,
	player_joined,
	player_disconnect,
	move,
	preparing_weapon,
	chat,
	create,
	change,
	damage,
	destroy,
	die,
	info,
	left,
	change_outfit
}

enum prop{
	name,
	obj,
	size,
	reload,
	damage,
	spd,
	range,
	rot,
	guidance,
	prepare,
}

enum pl{
	name,
	hp,
	energy,
	turn,
	spd,
	weap_size,
	eng_size,
	dev_size,
	spr,
}

enum items{
	player,
	npc,
	weapon_start,
	twins,
	laser,
	vulcan,
	anti_matter,
	weapon_end,
	plane_start,
	blackBird,
	racoon,
	predator,
	plane_end,
	asteroid,
	end_pt,
}

enum weapons{
	twins,
	laser,
	vulcan,
}


//show_message(global.serverIp);
//show_message(global.port);
client=network_create_socket(network_socket_ws);

//connected=network_connect(client,global.serverIp,global.port);
connected=network_connect_async(client,global.serverIp,global.port);

//show_message(2);


client_buffer=buffer_create(1024,buffer_fixed,1);
socket_to_instanceid=ds_map_create();