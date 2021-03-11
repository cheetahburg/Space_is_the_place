global.chat=ds_list_create();
global.chat_color=ds_list_create();

ds_list_add(global.chat,"Welcome to the game","","","","","","","",
"","","","","","","","",
"","","","");
ds_list_add(global.chat_color,c_white,c_white,c_white,c_white,c_white,c_white,c_white,c_white,
c_white,c_white,c_white,c_white,c_white,
c_white,c_white,c_white,c_white,c_white,
c_white,c_white);

active=false;//on and off switch
chatSize=20;//how many chat message
chat_text="";//chat message