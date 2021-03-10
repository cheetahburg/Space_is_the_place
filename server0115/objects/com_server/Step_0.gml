if(global.server_ticker%10==0){
	//var url="http://192.168.43.47:8080/api/v1/gameServer/servers/updateStatus";
	var url="http://127.0.0.1:8080/api/v1/gameServer/servers/updateStatus";


	var header_map = ds_map_create();
	ds_map_add(header_map, "Content-Type", "application/json");
		
	var send_map = ds_map_create();

	//show_debug_message(global.ipAddress);
	
	ds_map_add(send_map,"serverId",global.serverId);
	ds_map_add(send_map,"status",global.status);
	ds_map_add(send_map,"capacity",global.capacity);
	ds_map_add(send_map,"playerNumber",global.playerNumber);
	ds_map_add(send_map,"ipAddress",global.ipAddress);
	ds_map_add(send_map,"port",port);
	_string = json_encode(send_map);
	//show_mesage(_string)
	_result = http_request(url, "POST", header_map,_string);
	
	//show_debug_message(global.server_ticker);
	//show_debug_message(_result);
}

if(global.server_ticker%20==0){
	//show_debug_message(global.server_ticker);	
	s_infos();
}
