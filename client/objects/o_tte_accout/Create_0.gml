tte_ext_input_create();
typ="account";
// The below is an example of script being called
// everytime the text has been changed

tte_ext_input_set_on_changed(example_on_changed);


/*
var url="http://"+global.dbServerIp+"/api/v1/person/login";
//var url="http://+global.dbServerIp+":"+global.dbServerPort+/api/v1/gmeServer/servers/fetchStatus"
var header_map = ds_map_create();
ds_map_add(header_map, "Content-Type", "application/json");
		
var send_map = ds_map_create();
ds_map_add(send_map,"userName","newborn");
ds_map_add(send_map,"password","abc123");
_string = json_encode(send_map);

login_ = http_request(url, "POST", header_map,_string);
//show_debug_message(login_)
*/
