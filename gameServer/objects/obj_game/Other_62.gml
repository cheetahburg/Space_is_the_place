var _id=ds_map_find_value(async_load,"id");
var _http_status=ds_map_find_value(async_load,"http_status");
result=ds_map_find_value(async_load,"result");
if _id==fetchEquip_{
	obj_data.equipInfo=json_decode(result);
	
	show_debug_message(result);
	show_debug_message(_http_status);
	
}