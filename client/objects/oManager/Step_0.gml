/// @description 


/*
if (keyboard_check_pressed(ord("M"))) {
	menuOpen = !menuOpen;
	
	if (menuOpen)
		event_user(0);
	else
		event_user(1);
}

这些代码可以用于调出游戏内的UI 因此可以作为HUD使用
*/
//show_debug_message(window_get_width());

//show_debug_message(window_get_height());
if(flag==false){
	flag=true;
	//show_message("使用ctrl+鼠标滚轮 来缩放页面至合适大小");
}
//window_set_size(1920*2/3,1080*2/3);
	
window_center();
