if(buttonType!="ship" and ds_list_size(consts.my_equip[?"ship"])==0){
	show_message("请先选择飞船");
	exit;
}else if(buttonType=="ship" and ds_list_size(consts.my_equip[?"ship"])>0){
	show_message("重新选择飞船 会导致其他装备重置");
	
	
}



with(o_ui_stuff) {instance_destroy();}
with(o_ui_scrollBar){instance_destroy();}
var i =0;
//show_debug_message(obj_data.equipInfo);
var current_key = ds_map_find_first(obj_data.equipInfo);
var sum = ds_map_size(obj_data.equipInfo);


var cur_sum=0;
for (var i = 0; i < sum; i++){
	if (buttonType==obj_data.equipInfo[?current_key][?"itemType"]){
		var _inst=instance_create_layer(1300,420+(140*cur_sum),"majio",o_ui_stuff);
		_inst.equipId=current_key;//obj_data.equipInfo[?current_key][?"itemId"];
		_inst.itemType=obj_data.equipInfo[?current_key][?"itemType"];
		_inst.equipName=obj_data.equipInfo[?current_key][?"itemName"];
		
		cur_sum++;
	}
	current_key = ds_map_find_next(obj_data.equipInfo, current_key);
}

instance_create_depth(1800,420,-2,o_ui_scrollBar);