/// @description scr_get_loc_http(put this in http event);
/// @param put this in http event
function scr_get_loc_http() {

	//get answer from server
	var json = async_load[? "result"];   

	//convert jsoon do ds_map

	var info = json_decode(json);
	if info == -1 {
	                exit;
	                show_debug_message("invalid result");
	             }
	if (ds_map_exists(info, "countryCode")) //country code
	    {
	        countryCode = info[? "countryCode"];
	    }             

	if (ds_map_exists(info, "country"))
	    {
	        country = info[? "country"];
	    }  

	if (ds_map_exists(info, "regionName"))
	    {
	        regionName = info[? "regionName"];
	    }  
    
	if (ds_map_exists(info, "city"))
	    {
	        city = info[? "city"];
	    }

        
	if (ds_map_exists(info, "isp"))
	    {
	        isp = info[? "isp"];
	    }

	if (ds_map_exists(info, "lat"))
	    {
	        lat = info[? "lat"];
	    }
    
	if (ds_map_exists(info, "lon"))
	    {
	        lon = info[? "lon"];
	    }
	
	if (ds_map_exists(info, "query"))
	    {
	        query = info[? "query"];
	    }




}
