tte_ext_input_draw();

// Below is not needed, you only need the above script call

draw_set_color( c_aqua );
draw_text( 8, 8, "Click outside the input and press space to test 'tte_ext_input_get_text()' and 'tte_ext_input_set_text()'." );


if( focus ) {
    draw_set_color( c_white );
    draw_rectangle( x, y, x+width, y+height, true );
}