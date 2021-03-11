//follow the target
if (instance_exists(target)){
	global.cameraX=target.x-global.cameraWidth/2;
	global.cameraY=target.y-global.cameraHeight/2;
	
	global.cameraX=clamp(global.cameraX,0,room_width-global.cameraWidth);
	global.cameraY=clamp(global.cameraY,0,room_height-global.cameraHeight );
}
camera_set_view_pos(view_camera[0],global.cameraX,global.cameraY);

//layer_x("Backgrounds_1",global.cameraX*.1);
//layer_y("Backgrounds_1",global.cameraY*.1);

layer_x("Backgrounds",global.cameraX*.0);
layer_y("Backgrounds",global.cameraY*.0);

layer_x("Parallex_1",global.cameraX*.2);
layer_y("Parallex_1",global.cameraY*.2);

layer_x("Parallex_2",global.cameraX*.5);
layer_y("Parallex_2",global.cameraY*.5);

layer_x("Parallex_3",global.cameraX*.4);
layer_y("Parallex_3",global.cameraY*.4);

//var a=object_is_ancestor(obj_player,obj_player);
//var b=object_is_ancestor(obj_asteroid,obj_items);
//show_message(string(a)+string(b));
