//draw
var len=room_width;

draw_line_width_color(x,y,
	x+lengthdir_x(len,image_angle),
	y+lengthdir_y(len,image_angle),
	4,c_white,c_white);


var _sep=3;
var xx=x+lengthdir_x(_sep,image_angle-90);
var yy=y+lengthdir_y(_sep,image_angle-90);




draw_line_width_color(xx,yy,
	xx+lengthdir_x(len,image_angle),
	yy+lengthdir_y(len,image_angle),
	4,global.aqua1,global.aqua1);

var xx=x+lengthdir_x(_sep,image_angle+90);
var yy=y+lengthdir_y(_sep,image_angle+90);

draw_line_width_color(xx,yy,
	xx+lengthdir_x(len,image_angle),
	yy+lengthdir_y(len,image_angle),
	4,global.aqua1,global.aqua1);
	

var _sep=5;
var xx=x+lengthdir_x(_sep,image_angle-90);
var yy=y+lengthdir_y(_sep,image_angle-90);

draw_line_width_color(xx,yy,
	xx+lengthdir_x(len,image_angle),
	yy+lengthdir_y(len,image_angle),
	3,global.aqua2,global.aqua2);
	
var xx=x+lengthdir_x(_sep,image_angle+90);
var yy=y+lengthdir_y(_sep,image_angle+90);

draw_line_width_color(xx,yy,
	xx+lengthdir_x(len,image_angle),
	yy+lengthdir_y(len,image_angle),
	3,global.aqua2,global.aqua2);
	
	

var _sep=7;
var xx=x+lengthdir_x(_sep,image_angle-90);
var yy=y+lengthdir_y(_sep,image_angle-90);

draw_line_width_color(xx,yy,
	xx+lengthdir_x(len,image_angle),
	yy+lengthdir_y(len,image_angle),
	3,c_aqua,c_aqua);
	
var xx=x+lengthdir_x(_sep,image_angle+90);
var yy=y+lengthdir_y(_sep,image_angle+90);

draw_line_width_color(xx,yy,
	xx+lengthdir_x(len,image_angle),
	yy+lengthdir_y(len,image_angle),
	3,c_aqua,c_aqua);