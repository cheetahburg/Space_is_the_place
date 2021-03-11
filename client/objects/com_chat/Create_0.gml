//shift_x=room_width-420;
shift_x=view_wport[0]-380;
shift_y=view_hport[0]/3-100;

global.chat=ds_list_create();
global.chat_color=ds_list_create();

ds_list_add(global.chat,
"Q:change weapon",
"Z:radar",
"X:phantom flight",
"Space:shoot",
"Arrows:move",
"Welcome to the game",
"",
"",
);
ds_list_add(global.chat_color,c_aqua,c_aqua,c_aqua,c_aqua,
c_aqua,c_lime,c_white,c_white);

active=false;//on and off switch
chatSize=8;//how many chat message
chat_text="";//chat message

