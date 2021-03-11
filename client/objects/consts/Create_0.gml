

padding=420;

global.PlayerNumber=0;
//gameServer
global.serverIp="121.4.173.42";
//global.serverIp="127.0.0.1";
global.port="64198";

//dbServer
global.dbServerIp="121.4.173.42";
//global.dbServerIp="127.0.0.1";
global.dbServerPort="8080";

//show_message(global.serverIp);
//show_message(global.port);


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

//by default, size=2
my_equip=ds_map_create();
my_equip[?"ship"]=ds_list_create();
my_equip[?"weapon"]=ds_list_create();
my_equip[?"engine"]=ds_list_create();
my_equip[?"alt"]=ds_list_create();
my_equip[?"device"]=ds_list_create();


spr_map=ds_map_create();
ds_map_add(spr_map,"杜鹃",spr_predator);
ds_map_add(spr_map,"晨星",spr_racoon);
ds_map_add(spr_map,"主教",spr_bishop);
ds_map_add(spr_map,"黑骑士",spr_blackKnight);
ds_map_add(spr_map,"水母",spr_jellyFish);
ds_map_add(spr_map,"拦截者",spr_interceptor);
plane_spr=-1;

cur_weapon_pos=0;

plane_id=-1;

total_capacity=0;
total_hp=0;
total_energy=0;
total_refuel=0;
total_weight=0;

drive_speed=0;
drive_power=0;
drive_turn=0;

//number of grooves
max_num=2;

type_to_ch=ds_map_create();
type_to_ch[?"ship"]="飞船";
type_to_ch[?"weapon"]="武器";
type_to_ch[?"engine"]="引擎";
type_to_ch[?"alt"]="工程";
type_to_ch[?"device"]="装置";


string_to_object=ds_map_create();
string_to_object[?"obj_accomodation"]=obj_accomodation;
string_to_object[?"obj_core"]=obj_core
string_to_object[?"obj_extract_factory"]=obj_extract_factory;
string_to_object[?"obj_mining_centre"]=obj_mining_centre;
string_to_object[?"obj_port"]=obj_port;
string_to_object[?"obj_purify_factory"]=obj_purify_factory;

string_to_object[?"obj_fan"]=obj_fan;

string_to_object[?"obj_alertLight"]=obj_alertLight;
string_to_object[?"obj_headLight"]=obj_headLight;
string_to_object[?"obj_lightHalo"]=obj_lightHalo;
string_to_object[?"obj_lightPoint"]=obj_lightPoint;
string_to_object[?"obj_lightScope"]=obj_lightScope;
string_to_object[?"obj_lightTrace"]=obj_lightTrace;

string_to_object[?"twins"]=obj_twins;
string_to_object[?"laser"]=obj_laser;
string_to_object[?"vulcan"]=obj_vulcan;
string_to_object[?"anti_matter_bomb"]=obj_anti_matter;
