/// @description Insert description here
// You can write your code in this editor

draw_self();

//draw_text(x+290,y+50,"my info");
//draw_text_ext_transformed(x+sprite_width/3, y+ 50, "my info",20 ,20 , 2, 2, 0);
draw_text_transformed_color(x+290, y+50, "我的信息", 2, 2, 0,c_white,c_white,c_white,c_white,1);


draw_text_transformed_color(x+180, y+150,"当前玩家:"+com_game.userName, 2, 2, 0,c_white,c_white,c_white,c_white,1);
//draw_text_transformed(x+230, y+230, "resource α", 2, 2, 0);

//draw_radar_chart
var center_x=x+sprite_width/3+75;
var center_y=y+650;
for(var i=0;i<6;i++){
	switch(i){
			case 0:
				tmp_x=center_x+Xs[i]-30;
				tmp_y=center_y+Ys[i];
				break;
			case 3:
				tmp_x=center_x+Xs[i];
				tmp_y=center_y+Ys[i]-50;
				break;				
			case 4:
				tmp_x=center_x+Xs[i]-50;
				tmp_y=center_y+Ys[i]-50;
				break;
			case 5:
				tmp_x=center_x+Xs[i]-60;
				tmp_y=center_y+Ys[i];
				break;
			case 6:
				tmp_x=center_x+Xs[i];
				tmp_y=center_y+Ys[i];
				break;
			default:
				tmp_x=center_x+Xs[i];
				tmp_y=center_y+Ys[i];
				break;
	}
	draw_text_transformed_color(tmp_x,tmp_y,Props[i],2,2,0,c_white,c_white,c_white,c_white,1);
	next_i=(i+1)%6;
	draw_triangle_color(center_x,center_y,center_x+Xs[i],center_y+Ys[i],
	center_x+Xs[next_i],center_y+Ys[next_i],c_dkgrey,c_grey,c_ltgrey,false);
}


if consts.plane_spr!=-1{
	draw_sprite_ext(consts.plane_spr,0,x+sprite_width/3+125,y+320,2.5,2.5,0,image_blend,1);
	
	var atk=0;//火力,等于武器重量之和/90
	var weapon_num=ds_list_size(consts.my_equip[?"weapon"]);
	for (var i=0;i<weapon_num;i++){
		atk+=obj_data.equipInfo[?consts.my_equip[?"weapon"][|i]][?"itemWeight"]; 
	}
	Weights[0]=atk/90;
	Weights[1]=consts.total_hp/300;//防护,等于consts.total_hp/300
	Weights[2]=(consts.total_energy+consts.total_refuel*10)/600;//能量,等于(consts.total_energy+consts.total_refuel*10)/600
	Weights[3]=consts.drive_speed/4//速度,等于consts.drive_speed/4
	Weights[4]=(consts.drive_power+consts.drive_turn)/6;//操控性,等于(consts.drive_power+consts.drive_turn)/6
	var special=0;//特殊,等于特殊装置重量之和/80
	var special_num=ds_list_size(consts.my_equip[?"device"]);
	for (var i=0;i<special_num;i++){
		special+=obj_data.equipInfo[?consts.my_equip[?"device"][|i]][?"itemWeight"]; 
	}
	Weights[5]=special/90;
	
	
	

	//draw_triangle_color(center_x,center_y,center_x+Xs[0],center_x+Ys[0],center_x+Xs[1],center_x+Ys[1],c_orange,c_orange,c_orange,false);
	var tmp_x=0;
	var tmp_y=0;
	for(var i=0;i<6;i++){
		
		
		next_i=(i+1)%6;
		//draw_line_color(center_x,center_y,center_x+Xs[i]*Weights[i],center_y+Ys[i]*Weights[i],c_red,c_red);
		
		
		draw_triangle_color(center_x,center_y,center_x+Xs[i]*Weights[i],center_y+Ys[i]*Weights[i],
		center_x+Xs[next_i]*Weights[next_i],center_y+Ys[next_i]*Weights[next_i],c_orange,c_orange,c_yellow,false);
	}
	
}


