/// @description draw_loc_all(x,y,space between lines);
/// @param x
/// @param y
/// @param space between lines
function draw_loc_all(argument0, argument1, argument2) {

	draw_text(argument0,argument1,string_hash_to_newline("Country code : "+string(get_country_code())));
	draw_text(argument0,argument1+argument2,string_hash_to_newline("Country : "+string(get_country())));
	draw_text(argument0,argument1+argument2*2,string_hash_to_newline("Region : "+string(get_region())));
	draw_text(argument0,argument1+argument2*3,string_hash_to_newline("City : "+string(get_city())));
	draw_text(argument0,argument1+argument2*4,string_hash_to_newline("ISP : "+string(get_isp())));
	draw_text(argument0,argument1+argument2*5,string_hash_to_newline("Latitude : "+string(get_lat())));
	draw_text(argument0,argument1+argument2*6,string_hash_to_newline("Longitude : "+string(get_lon())));



}
