/// @description 

//instance_destroy(rm_sign);
//instance_destroy(o_register_board);

if room==rm_sign{
	
	if(com_game.password!=global.password and (not com_game.logged_in) and (not com_game.waiting)){
		com_game.password=global.password;
		//s(lines[!0]);
		com_game.userName=o_tte_accout.lines[|0];
		com_game.password=o_tte_password.lines[|0];
		
		if(com_game.userName==""){
		show_message("账号或密码有误");
		exit;
		}
		
		//com_game.userName="newborn";
		//com_game.password="abc123";
		
		com_game.waiting=true;
		var url="http://"+global.dbServerIp+":"+global.dbServerPort+"/api/v1/person/login";
		show_debug_message(url);
		var header_map = ds_map_create();
		
		ds_map_add(header_map, "Content-Type", "application/json");

		var send_map = ds_map_create();
		ds_map_add(send_map,"userName",com_game.userName);
		ds_map_add(send_map,"password",com_game.password);
		com_game._string = json_encode(send_map);

		com_game.login_ = http_request(url, "POST", header_map,com_game._string);
		//com_game.login_ = http_request(url, "POST", header_map,send_map);//com_game._string);
		//show_debug_message(com_game._string);
	}
	

}

