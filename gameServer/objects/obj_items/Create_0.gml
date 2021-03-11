var rand=irandom_range(100000,999999);
oid=string(rand)+string(global.server_ticker)+string(id);
typ=undefined;
ds_map_add(obj_game.omap,oid,id);
age=0;
hp=1;
sock=undefined;

scale=1;
rot_spd=0;
lower_brightness=1;
upper_brightness=1;
shiver=0.2;
flash=-1;
flash_start=1;
lerp_spd=0.1;
name="";//
