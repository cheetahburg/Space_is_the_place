
tte_ext_input_draw();

// Below is not needed, you only need the above script call

draw_set_color( c_gray );

//draw_text( 8, 8, "Click outside the input and press space to test 'tte_ext_input_get_text()' and 'tte_ext_input_set_text()'." );
//draw_sprite(s_tte_input, 0, x, y);

if( focus ) {
    draw_set_color( c_black );
	
    //draw_rectangle( x, y, x+width, y+height, true );
//	draw_rectangle(x, y, x+400, y+35, true);
}