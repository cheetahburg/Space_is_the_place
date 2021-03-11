with(other){
	
}
var xx=x+lengthdir_x(10,image_angle);
var yy=y+lengthdir_y(10,image_angle);
repeat(5){
	var _inst=instance_create_depth(xx,yy,depth,obj_debris);
	var delta_angle=irandom_range(-75,75);
	_inst.direction=image_angle+180+delta_angle;
	}
//instance_destroy();