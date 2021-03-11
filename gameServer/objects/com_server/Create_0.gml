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
	railgun,
	vulcan,
}
//connect to Database
//
//
global.server_ticker=0;

randomize();
//global.serverId="testServer";
global.serverId="test server "+string(int64(random_range(1,100000)));
global.status=0;//0 for "up"
global.capacity=20;
global.playerNumber=0;
port=64198;



/*
dbc=network_create_socket(network_socket_tcp);

connected=network_connect_raw(dbc,"127.0.0.1",12345);

dbc_buffer=buffer_create(1024,buffer_fixed,1);
buffer_seek(dbc_buffer,buffer_seek_start,0);
buffer_write(dbc_buffer,buffer_string,"hello?\n");
network_send_raw(dbc,dbc_buffer,buffer_tell(dbc_buffer));
*/

game_server=network_create_server(network_socket_ws,port,global.capacity);
server_buffer=buffer_create(1024,buffer_fixed,1);

socket_list=ds_list_create();
socket_map=ds_map_create();


socket_to_instanceid=ds_map_create();
socket_to_oid=ds_map_create();
socket_to_hp=ds_map_create();
socket_to_plane=ds_map_create();

/*
dbc_buffer=buffer_create(1024,buffer_fixed,1);
buffer_seek(dbc_buffer,buffer_seek_start,0);
buffer_write(dbc_buffer,buffer_string,"goodbye!\n");
network_send_raw(dbc,dbc_buffer,buffer_tell(dbc_buffer));
*/


playerSpawn_x=[100,100,room_width-100,room_width-100];
for (var i=0;i<array_length(playerSpawn_x);i++){
	playerSpawn_x[i]+=consts.padding;
}

playerSpawn_y=[100,room_height-100,room_height-100,100];
playerSpawn_angle=[315,45,135,225];