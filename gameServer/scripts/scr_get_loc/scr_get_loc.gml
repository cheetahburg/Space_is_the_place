/// @description scr_get_loc();
function scr_get_loc() {

	//init variables
	globalvar country,city,countryCode,regionName,isp,lat,lon,query;

	country = "";
	city = "";
	countryCode = "";
	regionName = "";
	isp = "";
	lat = "";
	lon = "";
	query="";

	//send request
	_ipGetter=http_get("http://ip-api.com/json");



}
