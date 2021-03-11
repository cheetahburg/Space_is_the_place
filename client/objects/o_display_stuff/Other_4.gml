

buttonNames=array_create(5,"");
buttonNames[0]="ship"//"飞船"
buttonNames[1]="weapon"//"武器"
buttonNames[2]="engine"//"引擎"
buttonNames[3]="alt"//"工程"
buttonNames[4]="device"//"装置"

for (var i=0;i<5;i++){
	var _inst=instance_create_layer(800+i*200,200,"buttons",obj_swap_button);
	_inst.buttonType=buttonNames[i];
}
/*
/// @description camera setup


//camera
global.cameraX=0;
global.cameraY=0;
//target=obj_player;
target=obj_player;

//global.cameraWidth=750;
//global.cameraHeight=750;

global.cameraWidth=1000;
global.cameraHeight=800;

view_enabled=true;
view_visible[0]=true;

camera_set_view_size(view_camera[0],global.cameraWidth,global.cameraHeight);


if (instance_exists(target)){
	global.cameraX=target.x-global.cameraWidth/2;
	global.cameraY=target.y-global.cameraHeight/2;
	
	global.cameraX=clamp(global.cameraX,0,room_width-global.cameraWidth);
	global.cameraY=clamp(global.cameraY,0,room_height-global.cameraHeight );
}
camera_set_view_pos(view_camera[0],global.cameraX,global.cameraY);


//display
//displayScale=1200/global.cameraWidth;
displayScale=1;
displayWidth=global.cameraWidth*displayScale;
displayHeight=global.cameraHeight*displayScale;


window_set_size(displayWidth,displayHeight);

surface_resize(application_surface,displayWidth,displayHeight);

//GUI
display_set_gui_size(global.cameraWidth,global.cameraHeight);

alarm[0]=1;
*/