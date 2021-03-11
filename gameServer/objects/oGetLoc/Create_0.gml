/// @description init
//scr_get_loc_init();

global.ipAddress="";
if global.ipAddress!=undefined
	room_goto(rm_test_server);



///get location via IP
//scr_get_loc();
/*
try{
	fetchIp=http_get("http://ip-api.com/json");
}catch( _exception)
    {
    show_debug_message(_exception.message);
    show_debug_message(_exception.longMessage);
    show_debug_message(_exception.script);
    show_debug_message(_exception.stacktrace);
}finally{
	show_debug_message(fetchIp);
}

*/
//room_goto(rm_test_server);

//fetchIp=http_get("https://baidu.com");


