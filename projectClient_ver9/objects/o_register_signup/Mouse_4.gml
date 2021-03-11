/// @description 

//instance_destroy(rm_sign);
//instance_destroy(o_register_board);
/// @description 

//instance_destroy(rm_sign);
//instance_destroy(o_register_board);
/// @description 

//instance_destroy(rm_sign);
//instance_destroy(o_register_board);

if room==rm_regis{

	if(com_game.password!=global.password and (not com_game.logged_in) and (not com_game.waiting)){
		com_game.password=global.password;
		//s(lines[!0]);
		com_game.userName=o_tte_accout.lines[|0];
		com_game.password=o_tte_password.lines[|0];
		com_game.email=o_tte_email.lines[|0];
		
		if(com_game.userName==""){
			show_message("账号或密码有误");
			exit;
		}
		
		com_game.waiting=true;
		var url="http://"+global.dbServerIp+":"+global.dbServerPort+"/api/v1/person/register";
		var header_map = ds_map_create();
		ds_map_add(header_map, "Content-Type", "application/json");

		var send_map = ds_map_create();
		ds_map_add(send_map,"userName",com_game.userName);
		ds_map_add(send_map,"password",com_game.password);
		ds_map_add(send_map,"email",com_game.email);
		com_game._string = json_encode(send_map);
		com_game.register_ = http_request(url, "POST", header_map,com_game._string);
		//show_debug_message(_result);
	}
}

