event_inherited();

headLight=instance_create_layer(x,y,"Instances",obj_headLight);
headLight.light_creator=id;
headLight.diameter=250;

image_speed=0;
userName="";
typ="player";

preparing_weapon="None";

shoot_gap=10000;
shoot_prepare=0;
radar_on=false;
phantom_flight=false;
halo_index=0;
halo2_index=0;
plane_spr=-1;
angle=0;


weapon=consts.my_equip[?"weapon"][|0];//consts.my_weapons[consts.cur_weapon_pos];
//
hp=consts.total_hp;
energy=consts.total_energy;
heat=0;
vulcan_angle=0;

//lighting
//Light_Type="Area Light"
//Light_Range=15000;