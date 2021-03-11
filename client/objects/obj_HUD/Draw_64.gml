/// @description Insert description here
// You can write your code in this editor


draw_sprite(spr_HUD,0,0,0);

draw_sprite(spr_HUD,0,viewWidth-420,0);

var device_num=ds_list_size(consts.my_equip[?"device"]);
var weapon_num=ds_list_size(consts.my_equip[?"weapon"]);
//property
for(i=0;i<device_num;i++){
	draw_sprite(spr_property,0,viewWidth-1910,viewHeight-1050+i*200);
	
	var _tmp= consts.my_equip[?"device"][|i]
	var _name=obj_data.equipInfo[?_tmp][?"itemName"];
	draw_text_colour(viewWidth-1850,viewHeight-1000+i*200,_name,c_white,c_white,c_white,c_white,1);
	
}

//weapon
for(i=0;i<weapon_num;i++){
/*	if(consts.cur_weapon_pos==i){
		var col=c_red;
		var scale=0.8;
	}else{
		var col=image_blend;
		var scale=0.6;
	}
*/
	var _tmp= consts.my_equip[?"weapon"][|i]
	var _name=obj_data.equipInfo[?_tmp][?"itemName"];
	if(consts.cur_weapon_pos==i){
		draw_sprite_ext(spr_weapon,1,viewWidth-410,viewHeight-630+i*200,0.8,0.8,0,image_blend,0.9);
		//draw_text_colour(viewWidth-350,viewHeight-500+i*200,_name,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(viewWidth-330,viewHeight-550+i*200,_name,2.5,2.5,0,c_black,c_black,c_black,c_black,1);
	}else{
		draw_sprite_ext(spr_weapon,0,viewWidth-410,viewHeight-630+i*200,0.6,0.6,0,image_blend,0.9);
		//draw_text_colour(viewWidth-350,viewHeight-500+i*200,_name,c_black,c_black,c_black,c_black,1);
		draw_text_transformed_color(viewWidth-330,viewHeight-570+i*200,_name,1.5,1.5,0,c_white,c_white,c_white,c_white,1);
	}

	//draw_sprite_ext(spr_weapon,0,viewWidth-410,viewHeight-630+i*200,scale,scale,0,col,0.5);
	//draw_sprite(spr_weapon,0,viewWidth-410,viewHeight-630+i*200);

}
//draw_text_colour(viewWidth-410,viewHeight-650,"武器",c_white,c_white,c_white,c_white,1);
draw_text_colour(viewWidth-300,viewHeight-200,"使用鼠标滚轮切换武器",c_white,c_white,c_white,c_white,1);

draw_sprite(spr_littleMap,0,viewWidth-400,viewHeight-1070);
//draw_sprite(spr_circle_fill,0,130,900);
//draw_sprite(spr_circle_fill,0,1650,900);