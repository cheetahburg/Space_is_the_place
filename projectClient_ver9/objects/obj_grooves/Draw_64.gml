draw_self();


var cur_key=ds_map_find_first(consts.my_equip);
var size=ds_map_size(consts.my_equip);
var tmp_x=x+20;
var tmp_y=y+20;
var num=1;
draw_text_ext_transformed_color(tmp_x,tmp_y,consts.type_to_ch[?"ship"],0,10000,2,2,0,c_orange,c_orange,c_yellow,c_yellow,1);
tmp_y+=30;




if ds_list_size(consts.my_equip[?"ship"])>0{
	draw_text_ext_transformed_color(tmp_x,tmp_y,obj_data.equipInfo[?consts.my_equip[?"ship"][|0]][?"itemName"],0,10000,1.5,1.5,0,c_white,c_white,c_silver,c_silver,1);
	
}
tmp_y+=50;

keys_arr=array_create(5,noone);
keys_arr[0]="ship";
keys_arr[1]="weapon";
keys_arr[2]="engine";
keys_arr[3]="alt";
keys_arr[4]="device";

//cur_key="ship";
for(var i=1;i<5;i++){
	//show_message(consts.type_to_ch[?cur_key]+string(i));
	//if cur_key=="ship" continue;
	cur_key=keys_arr[i];
	var num=consts.max_num;
	
	draw_text_ext_transformed_color(tmp_x,tmp_y,consts.type_to_ch[?cur_key],0,10000,1.5,1.5,0,c_orange,c_orange,c_yellow,c_yellow,1);
	tmp_y+=25;
	for (var j=1;j<=num;j++){
		if j<=ds_list_size(consts.my_equip[?cur_key]){
			draw_text_ext_transformed_color(tmp_x,tmp_y,obj_data.equipInfo[?consts.my_equip[?cur_key][|j-1]][?"itemName"],0,10000,1.5,1.5,0,c_white,c_white,c_silver,c_silver,1);
		}
			tmp_y+=25;
	}
	tmp_y+=25;
	//cur_key=ds_map_find_next(consts.my_equip,cur_key);
	
	//show_message(cur_key+string(i));
}

draw_text_ext_transformed_color(1300,290,"单击选择装备，再次点击撤销选择",0,500,1.3,1.3,0,c_white,c_white,c_white,c_white,1);