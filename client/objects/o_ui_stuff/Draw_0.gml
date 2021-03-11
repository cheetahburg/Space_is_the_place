/// @description Insert description here
// You can write your code in this editor
txt_=obj_data.equipInfo[?equipId][?"itemName"];
draw_self();

if(y>=1100 or y<=250){
	image_alpha = 0;
}else{
	image_alpha = 1;
	draw_set_font(Font2)
	
	draw_text_transformed_color(x+20,y-10,txt_,2,2,0,c_white,c_white,c_white,c_white,1);
}