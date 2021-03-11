tte_ext_input_step();

// Below is an example of getting and setting
// the text in a programmatic way

if( !focus ) {
    if( keyboard_check_pressed( vk_space ) ) {
        show_message_async( tte_ext_input_get_text() );
        tte_ext_input_set_text( "Line 1 is a test\nLine 2 contains # and hopefully it works!\nLine 3 is quite dumb." );
    }
}