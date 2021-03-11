if keyboard_check_pressed(vk_escape){
   if window_get_fullscreen(){
      window_set_fullscreen(false);
      }
   }


if (room==rm_client or room==roomUI) and global.client_ticker%20==0{
	var url="http://"+global.dbServerIp+":"+global.dbServerPort+"/api/v1/gameServer/servers/fetchStatus";
	var header_map = ds_map_create();
	ds_map_add(header_map, "Content-Type", "application/json");

	var send_map = ds_map_create();
	_string = json_encode(send_map);
	serverStatus_= http_request(url, "POST", header_map,_string);
}
