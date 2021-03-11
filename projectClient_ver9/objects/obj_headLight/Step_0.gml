if (instance_exists(light_creator)){
	x=light_creator.x;
	y=light_creator.y;
}else{
	instance_destroy(id);
}