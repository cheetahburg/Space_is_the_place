// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function fetchUserInfo(_userId){
	waiting=true;
	var url="http://"+global.dbServerIp+":"+global.dbServerPort+"/api/v1/person/fetchUserInfo";
	
	var header_map = ds_map_create();
	ds_map_add(header_map, "Content-Type", "application/json");
		
	var send_map = ds_map_create();
	ds_map_add(send_map,"userId",_userId);
	_string = json_encode(send_map);

	fetchUserInfo_= http_request(url, "POST", header_map,_string);
}