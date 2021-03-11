/// @description Insert description here
// You can write your code in this editor

//refreshed = true;


if(imageNumber != 2){
	imageNumber += 1;
	alarm[0] = 2*room_speed;
}else if(imageNumber == 2){
	imageNumber = 0;
	alarm[0] = 2*room_speed;
}

if imageNumber == 0 {image_index = 0}
if imageNumber == 1 {image_index = 1}
if imageNumber == 2 {image_index = 2}

image_alpha = 0;