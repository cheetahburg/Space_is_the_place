/// @description get location via IP (http part);
/// @param http part
var _id=ds_map_find_value(async_load,"id");
var _url=ds_map_find_value(async_load,"url");
var _status=ds_map_find_value(async_load,"status");
var _http_status=ds_map_find_value(async_load,"http_status");
var _result=async_load[?"result"];
/*
if _id==fetchIp{
	
	_result=json_decode(_result);
	global.ipAddress=_result[?"query"];
	if global.ipAddress!=undefined
		room_goto(rm_test_server);
	

}
*/


/*
scr_get_loc_http();

var _id=ds_map_find_value(async_load,"id");
var _result=ds_map_find_value(async_load,"result");

if (_id==_ipGetter){
	_result=json_decode(_result);
	//var _ipAddress=ds_map_find_value(_result,"query");
	
	global.ipAddress=_ipAddress;
	show_debug_message(_ipAddress);
	
	room_goto(rm_server);
}
*/