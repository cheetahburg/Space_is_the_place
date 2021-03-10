///@arg bullet
///@arg xx
///@arg yy
///@arg damage
///@arg spd
///@arg img_angle
function send_trajectory(argument0, argument1, argument2, argument3, argument4, argument5) {

	var bullet=argument0;
	var xx=argument1;
	var yy=argument2;
	var damage=argument3;
	var spd=argument4;
	var img_angle=argument5;

	buffer_seek(com_client.client_buffer,buffer_seek_start,0);
	buffer_write(com_client.client_buffer,buffer_u8,network.create);
	buffer_write(com_client.client_buffer,buffer_string,bullet);//
	buffer_write(com_client.client_buffer,buffer_u16,xx);
	buffer_write(com_client.client_buffer,buffer_u16,yy);
	buffer_write(com_client.client_buffer,buffer_u16,damage);
	buffer_write(com_client.client_buffer,buffer_u16,spd);
	buffer_write(com_client.client_buffer,buffer_s16,img_angle);
	network_send_packet(com_client.client,com_client.client_buffer,buffer_tell(com_client.client_buffer));


}