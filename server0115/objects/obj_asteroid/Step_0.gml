event_inherited();
image_angle++;

ticker++;
if (hp<=0){
	instance_destroy();
}

if(ticker%room_speed==check_time)
	s_move(oid,image_angle,x,y);