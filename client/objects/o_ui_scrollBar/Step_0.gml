/// @description Insert description here
// You can write your code in this editor
global.scroll_perc = button_y / bar_height;

if(mouse_wheel_up()) {
	if (mouse_x<=x && mouse_x >720){
		button_y -= scroll_amount;
	}
	
}

if(mouse_wheel_down()) {
	if (mouse_x<=x && mouse_x >720){
		button_y += scroll_amount;
	}
	
}

button_y = clamp(button_y, 0, bar_height);