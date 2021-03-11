//globalvar Font;
//Font =font_add(Font2,32,0, 0, 0, 65535);
//font_add("你内含文件里面的字体名字",设定字体大小,0,0,0,65535)

window_set_fullscreen(true);
randomize();

//audio_play_sound(water,2,true);

window_set_caption("nameless window");

//userName=get_string("Please enter a userName","");
userName="";
password="fake_password";
logged_in=false;
registered=false;
fetchedEquip=false;
fetchedUserInfo=false;
userId=-1

waiting=false;

login_=pointer_null;
register_=pointer_null;
fetchEquip_=pointer_null;
fetchUserInfo_=pointer_null;

serverStatus_=noone;

omap=ds_map_create();
global.client_ticker=0;

//global.serverIp="";
//global.port=-1;


global.userName="";
global.password="";


global.my_oid="";
global.outdated=0;

global.aqua1=make_color_rgb(187, 255, 255 );
global.aqua2=make_color_rgb(174, 238, 238 );



enum buttons{
	shipButton,
	engineButton,
	weaponButton,
	altButton,
	deviceButton
}


enum goods{
	//final products
	clothes,
	daily_suppies,
	energy,
	//
	product_mine,
	//mines
	oil,
	iron,
	silicon,
	rubber,
	water,
	salt,
	copper,
	sulfur,
	rare_metal,
	//
	mine_middle,
	//middle
	NaOH,
	Cl2,
	H2SO4,
	CH,
	plastic,
	transistor,
	refined_copper,
	steel,
	//
	last
}


global.goods_breed=goods.last;
//global.goods_price[5]=array_create(5,[5,20,10,15,15]);
//array_init(5,20,10,15,15);
global.goods_price=array_create(global.goods_breed,100);


synth=array_create(global.goods_breed,noone);

synth_init();