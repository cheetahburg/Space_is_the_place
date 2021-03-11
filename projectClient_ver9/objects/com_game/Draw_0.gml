if room==rm_mainmenu{
	//room_goto(rm_justbeak);

	draw_set_halign(fa_center);
	draw_set_valign(fa_center);

	var c =c_white;

	draw_text_transformed_color(
				room_width/2,room_height/2,
	@"
	Controls
	
	WASD:move
	
	MOUSE LEFT PRESSED:shoot
	
	MOUSE SCROLL:change your weapon
	
	MOUSE RIGHT PRESSED:radar(to detect other players)
	
	SHIFT:speed boost

	>> PRESS SPACE TO START <<
	"
	,1.5,1.5,0,c,c,c,c,1
	);
}
else if (room==rm_choosePlane){
	draw_text_ext_transformed_color(500,200,"choose your plane",0,300,3,3,0,c_red,c_red,c_maroon,c_maroon,1);
}
else if (room==rm_chooseEquip){
	draw_text_transformed_color(300,250,
	@"
	click to choose
	click again to cancel
	",1.5,1.5,0,c_white,c_white,c_white,c_white,1);
}