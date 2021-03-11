global.server_ticker=0;
check_time=0;

padding=420;

item_list=ds_list_create();
ds_list_add(item_list,"player");
ds_list_add(item_list,"npc");
ds_list_add(item_list,"twins");
ds_list_add(item_list,"laser");
ds_list_add(item_list,"vulcan");
ds_list_add(item_list,"anti_matter_bomb");
ds_list_add(item_list,"black_bird");
ds_list_add(item_list,"racoon");
ds_list_add(item_list,"predator");
ds_list_add(item_list,"asteroid");


weapon_list=ds_list_create();
ds_list_add(weapon_list,"twins");
ds_list_add(weapon_list,"laser");
ds_list_add(weapon_list,"vulcan");
ds_list_add(weapon_list,"anti_matter_bomb");


str_to_obj=ds_map_create();
str_to_obj[?"twins"]=obj_twins;
str_to_obj[?"laser"]=obj_laser;
str_to_obj[?"vulcan"]=obj_vulcan;
str_to_obj[?"anti_matter_bomb"]=obj_anti_matter;
/*
property=array_create(items.end_pt,noone);
prop_add("twins","twins",obj_twins,2,0.25,20,10,500,45,0,0);
prop_add("railgun","railgun",obj_laser,3,1.5,120,128,1500,0,0,1);
prop_add("vulcan","vulcan",obj_vulcan,1,0.15,12,20,300,180,0,0);
prop_add("anti_matter_bomb","anti matter bomb",obj_anti_matter,2,2,90,0,0,0,0,1);
*/
string_to_object=ds_map_create();
string_to_object[?"accomodation"]=obj_accomodation;
string_to_object[?"core"]=obj_core
string_to_object[?"extract_factory"]=obj_extract_factory;
string_to_object[?"mining_centre"]=obj_mining_centre;
string_to_object[?"port"]=obj_port;
string_to_object[?"purify_factory"]=obj_purify_factory;

string_to_object[?"fan"]=obj_fan;

string_to_object[?"alertLight"]=obj_alertLight;
string_to_object[?"headLight"]=obj_headLight;
string_to_object[?"lightHalo"]=obj_lightHalo;
string_to_object[?"lightPoint"]=obj_lightPoint;
string_to_object[?"lightScope"]=obj_lightScope;
string_to_object[?"lightTrace"]=obj_lightTrace;

string_to_object[?"twins"]=obj_twins;
string_to_object[?"laser"]=obj_laser;
string_to_object[?"vulcan"]=obj_vulcan;
string_to_object[?"anti_matter_bomb"]=obj_anti_matter;