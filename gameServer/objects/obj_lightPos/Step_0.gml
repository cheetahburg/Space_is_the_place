/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if flash<=0 exit;

if (not activated){
	alarm[0]=flash_start*room_speed;
	activated=true;
}



if flag="dark"{
	brightness=lerp(brightness,lower_brightness,lerp_spd);
}else if flag="bright"{
	brightness=lerp(brightness,upper_brightness,lerp_spd);
}




