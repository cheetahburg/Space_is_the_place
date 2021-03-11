draw_self();
if(is_undefined(owner))exit;

var c=c_black;
draw_text_transformed_color(x,y,owner.name,3,3,0,c,c,c,c,1);