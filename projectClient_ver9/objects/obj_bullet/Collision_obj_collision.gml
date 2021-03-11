event_inherited();
repeat(5){
	var _inst=instance_create_layer(x,y,"Instances",obj_debris);
	var delta_angle=irandom_range(-75,75);
	_inst.direction=image_angle+180+delta_angle;
}
instance_destroy(id);