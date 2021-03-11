object_set_sprite(obj_player, plane_spr);
consts.plane_id=plane_id;
consts.total_hp=consts.plane[plane_id,pl.hp];
consts.total_energy=consts.plane[plane_id,pl.energy];
consts.drive_turn=consts.plane[plane_id,pl.turn];
consts.drive_speed=consts.plane[plane_id,pl.spd];

consts.weapon_cnt=0;
var size_num=consts.plane[plane_id,pl.weap_size];
var tmp_num=size_num;
//count number of weapons
while(tmp_num!=0){
	tmp_num=floor(tmp_num/10);
	consts.weapon_cnt++;
}

for(var i=0;i<10;i++){
	var tmp_size=size_num%10;
	size_num=floor(size_num/10);
	consts.my_weapons_size[i]=tmp_size;
}

consts.cur_weapon_pos=consts.weapon_cnt-1;

room_goto(rm_chooseEquip);