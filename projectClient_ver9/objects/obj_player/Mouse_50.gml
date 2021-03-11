var cd=obj_data.equipInfo[?weapon][?"weaponCD"]*room_speed;
var charge=obj_data.equipInfo[?weapon][?"weaponCharge"]*room_speed;
var damage=obj_data.equipInfo[?weapon][?"weaponDamage"];
var weapon_speed=obj_data.equipInfo[?weapon][?"weaponSpeed"];


switch(weapon){
	case "twins":///twins
		var _sep=8;
		if shoot_gap>=cd and shoot_prepare>=charge{
			var _sep=8;
			var xx=x+lengthdir_x(_sep,angle-90);
			var yy=y+lengthdir_y(_sep,angle-90);
			send_trajectory("twins",xx,yy,damage,weapon_speed,angle);

			var xx=x+lengthdir_x(_sep,angle+90);
			var yy=y+lengthdir_y(_sep,angle+90);
			send_trajectory("twins",xx,yy,damage,weapon_speed,angle);
			shoot_prepare=0;
			shoot_gap=0;
		}
		break;

	case "laser"://laser
		if shoot_gap>=1.5*room_speed
			shoot_prepare++;
		if shoot_gap>=1.5*room_speed and shoot_prepare<1*room_speed
			preparing_weapon=weapon;send_preparing();
		if shoot_gap>=cd and shoot_prepare>=charge{
			preparing_weapon=-1;send_preparing();
			//send_laser(x,y,128,image_angle);
			send_trajectory("laser",x,y,damage,weapon_speed,angle);
			shoot_gap=0;
			shoot_prepare=0;
			preparing_weapon=-1;send_preparing();
		}
		break;

	case "vulcan"://vulcan
		if shoot_gap>=cd and shoot_prepare>=charge{
			var _sep=9;
			vulcan_angle=(vulcan_angle+60)%180;
			var xx=x+lengthdir_x(_sep,angle+vulcan_angle-90);
			var yy=y+lengthdir_y(_sep,angle+vulcan_angle-90);
			//send_twins(xx,yy,10,image_angle);
			send_trajectory("vulcan",x,y,damage,weapon_speed,angle);

			shoot_prepare=0;
			shoot_gap=0;
		}
		break;
		 
	case"anti_matter_bomb"://anti_matter_bomb
		if shoot_gap>=cd
			shoot_prepare++;
		if shoot_gap>=cd and shoot_prepare<charge
			preparing_weapon=weapon;send_preparing();
		if shoot_gap>=cd and shoot_prepare>=charge{
			preparing_weapon=-1;send_preparing();
			//send_laser(x,y,128,image_angle);
			var _sep=128;
			var xx=x+lengthdir_x(_sep,image_angle-35);
			var yy=y+lengthdir_y(_sep,image_angle-35);
			send_trajectory("anti_matter_bomb",xx,yy,damage,weapon_speed,image_angle);

			var xx=x+lengthdir_x(_sep,image_angle+35);
			var yy=y+lengthdir_y(_sep,image_angle+35);
			send_trajectory("anti_matter_bomb",xx,yy,damage,weapon_speed,image_angle);
			shoot_prepare=0;
			shoot_gap=0;
			preparing_weapon=-1;send_preparing(); 
		}
		break;
	
}