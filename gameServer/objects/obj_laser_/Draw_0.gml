//draw
/*
var len=room_width;

draw_line_width_color(x,y,
	x+lengthdir_x(len,direction),
	y+lengthdir_y(len,direction),
	10,image_blend,image_blend);
	
	
//draw collision

var inst=collision_line(x,y,
	x+lengthdir_x(len,direction),
	y+lengthdir_y(len,direction),
	obj_items,false,false);

if (inst!=noone){
	if (inst.typ==items.player and inst!=creator){
		with(inst){
			hp-=3;
		}
	}else if(inst.typ==items.asteroid){
		with(inst){
			hp-=3;
		}
	}
}
*/