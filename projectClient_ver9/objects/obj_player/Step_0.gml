event_inherited();

if room==rm_client{//consts.property[weapon,prop.rot])
	angle=point_direction(x,y,mouse_x,mouse_y);
	//show_debug_message(weapon);
	var rot=obj_data.equipInfo[?weapon][?"weaponArea"]/2;
	if(angle_difference(angle,image_angle)>rot)
		angle=image_angle+rot;
	else if(angle_difference(angle,image_angle)<-rot)
		angle=image_angle-rot;
	//
	if energy<consts.total_energy and (keyboard_check( ord("Z"))==false and keyboard_check( ord("X"))=false)
		energy+=0.15;
	

	shoot_gap++;
	if (keyboard_check(ord("D")) or keyboard_check(ord("A")) or keyboard_check(ord("S")) or keyboard_check(ord("W"))){
		var move_angle=0;
		var move_speed=0;
		if (keyboard_check( ord("D"))){
			if phantom_flight move_angle-=consts.drive_turn*1.4;
			else 
			move_angle-=consts.drive_turn;
		}
	
		if (keyboard_check(ord("A"))){
			if phantom_flight move_angle+=consts.drive_turn*1.4;
			else
			move_angle+=consts.drive_turn;
		}


		if (keyboard_check(ord("W"))){
			if phantom_flight move_speed=consts.drive_speed*2;
			else move_speed=consts.drive_speed;
			//motion_add(image_angle,0.05);
			//x_add=sqrt(power(drive_speed,2)/power(tan(new_angle),2)+1);
			//new_x+=x_add;
			//new_y+=x_add*tan(new_angle);
			//x+=lengthdir_x(drive_speed,new_angle);
			//y+=lengthdir_y(drive_speed,new_angle);
		
		
		}

		if (keyboard_check(ord("S"))){
			if phantom_flight move_speed=-consts.drive_speed;
			else move_speed=-consts.drive_speed/2;
		}
		
		image_angle=image_angle+move_angle;
		var new_x=x+lengthdir_x(move_speed,image_angle)*7;
		var new_y=y+lengthdir_y(move_speed,image_angle)*7;
		
		var tmp_inst;
		tmp_inst=instance_position(new_x,new_y,obj_nonplayer_items);
		if tmp_inst != noone or tmp_inst==id
		  or new_x<=consts.padding or new_x>=room_width-consts.padding
		  or new_y<=0 or new_y>=room_height
		{
			exit;
		}

		x=x+lengthdir_x(move_speed,image_angle);
		y=y+lengthdir_y(move_speed,image_angle);
		buffer_seek(com_client.client_buffer,buffer_seek_start,0);
		buffer_write(com_client.client_buffer,buffer_u8,network.move);
		buffer_write(com_client.client_buffer,buffer_string,global.my_oid);
		buffer_write(com_client.client_buffer,buffer_s16,x);
		buffer_write(com_client.client_buffer,buffer_s16,y);
		buffer_write(com_client.client_buffer,buffer_s32,image_angle);

		network_send_packet(com_client.client,com_client.client_buffer,buffer_tell(com_client.client_buffer));
	}

		
	//light[| eLight.X]=x;
	//light[| eLight.Y]=y;
}