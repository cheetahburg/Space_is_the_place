if global.client_ticker%20==0{
	if(obj_data.serverInfo==pointer_null)exit;
	instance_destroy(o_service_servie);
	
	var sum = ds_map_size(obj_data.serverInfo);

	var i =0;

	cur_key=ds_map_find_first(obj_data.serverInfo);
	for(i=0; i<sum; i++){
		var _inst=instance_create_depth(800,240+180*i,-2,o_service_servie)
	
		_inst.serverId=obj_data.serverInfo[?cur_key][?"serverId"];
		_inst.serverPlayerNumber=obj_data.serverInfo[?cur_key][?"playerNumber"];
		_inst.serverCapacity=obj_data.serverInfo[?cur_key][?"capacity"];
		_inst.serverIp=obj_data.serverInfo[?cur_key][?"ipAddress"];
		_inst.serverPort=obj_data.serverInfo[?cur_key][?"port"];
		cur_key=ds_map_find_next(obj_data.serverInfo,cur_key);
	}
}