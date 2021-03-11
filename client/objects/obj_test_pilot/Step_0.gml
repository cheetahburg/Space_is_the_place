if (keyboard_check(ord("D")) or keyboard_check(ord("A")) or keyboard_check(ord("S")) or keyboard_check(ord("W"))){
		var move_angle=0;
		var move_speed=0;
		if (keyboard_check( ord("D"))){
			
			move_angle-=2;
		}
	
		if (keyboard_check(ord("A"))){
			
			move_angle+=2;
		}


		if (keyboard_check(ord("W"))){
			move_speed=2;
			//motion_add(image_angle,0.05);
			//x_add=sqrt(power(drive_speed,2)/power(tan(new_angle),2)+1);
			//new_x+=x_add;
			//new_y+=x_add*tan(new_angle);
			//x+=lengthdir_x(drive_speed,new_angle);
			//y+=lengthdir_y(drive_speed,new_angle);
		
		
		}

		if (keyboard_check(ord("S"))){
			move_speed=-2;
		}
		
		image_angle=image_angle+move_angle;
		var new_x=x+lengthdir_x(move_speed,image_angle)*7;
		var new_y=y+lengthdir_y(move_speed,image_angle)*7;
		
		var tmp_inst;
		tmp_inst=instance_position(new_x,new_y,obj_nonplayer_items);
		if tmp_inst != noone or tmp_inst==id
		  or new_x<=0 or new_x>=room_width
		  or new_y<=0 or new_y>=room_height
		{
			exit;
		}

		x=x+lengthdir_x(move_speed,image_angle);
		y=y+lengthdir_y(move_speed,image_angle);
	}