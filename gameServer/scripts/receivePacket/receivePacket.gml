/// Client Script: HandlePacketClient
function receivePacket(argument0, argument1) {
	var buffer = argument0;
	//var msg_id = buffer_read( buffer, buffer_u8 );
	//show_debug_message("Received packet id : " + string(msg_id))
	var time = buffer_read( buffer, buffer_string );
	/*switch( msg_id ) {
	    case 0:
	        // Ping Feedback from Server
	        var time = buffer_read( buffer, buffer_string );
	        show_debug_message("Received time: " + string(time));
	        ping = current_time - time - room_speed;
	        break;
	}
	*/
}