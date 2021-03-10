///@arg item
///@arg name
///@arg obj
///@arg size
///@arg reload
///@arg damage
///@arg spd
///@arg range
///@arg rot
///@arg guidance
///@arg prepare
function prop_add(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9, argument10) {

	var _item=argument0;
	var _name=argument1;
	var _obj=argument2;
	var _size=argument3;
	var _reload=argument4;
	var _damage=argument5;
	var _spd=argument6;
	var _range=argument7;
	var _rot=argument8;
	var _guidance=argument9;
	var _prepare=argument10;

	property[_item,prop.name]=_name;
	property[_item,prop.obj]=_obj;
	property[_item,prop.size]=_size;
	property[_item,prop.reload]=_reload*room_speed;
	property[_item,prop.damage]=_damage;
	property[_item,prop.spd]=_spd;
	property[_item,prop.range]=_range;
	property[_item,prop.rot]=_rot;
	property[_item,prop.guidance]=_guidance;
	property[_item,prop.prepare]=_prepare*room_speed;


}
