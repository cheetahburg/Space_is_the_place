if itemType=="ship" and ds_list_size(consts.my_equip[?"ship"])>0{
	ds_list_clear(consts.my_equip[?"ship"]);
	ds_list_clear(consts.my_equip[?"weapon"]);
	ds_list_clear(consts.my_equip[?"engine"]);
	ds_list_clear(consts.my_equip[?"alt"]);
	ds_list_clear(consts.my_equip[?"device"]);
}


var pos=ds_list_find_index(consts.my_equip[?itemType],equipId);
if pos>=0{
	ds_list_delete(consts.my_equip[?itemType],pos);
	if itemType=="ship"{
	consts.plane_spr=Sprite9;
	//consts.total_hp=obj_data.equipInfo[?equipId][?"shipHP"];
	}
}else if ds_list_size(consts.my_equip[?itemType])<consts.max_num{
	ds_list_add(consts.my_equip[?itemType],equipId);
	
	if itemType=="ship"{
	ds_list_add(consts.my_equip[?itemType],equipId);
	var shipName=obj_data.equipInfo[?equipId][?"itemName"];
	consts.plane_spr=consts.spr_map[?shipName];
	//consts.total_hp=obj_data.equipInfo[?equipId][?"shipHP"];
	}
	
}