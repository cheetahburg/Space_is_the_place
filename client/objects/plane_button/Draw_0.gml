draw_self();
draw_sprite_ext(consts.plane[plane_id,pl.spr],0,x,y,1.5,1.5,0,image_blend,1);
draw_text_ext_transformed_color(x,y-150,consts.plane[plane_id,pl.name],0,300,2,2,0,c_lime,c_lime,c_green,c_green,1);