///@arg item
///@arg name
///@arg hp
///@arg energy
///@arg turn
///@arg spd
///@arg weap_size
///@arg eng_size
///@arg dev_size
function plane_add(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9) {
	var _item=argument0;
	var _name=argument1;
	var _hp=argument2;
	var _energy=argument3;
	var _turn=argument4;
	var _spd=argument5;
	var _weap_size=argument6;
	var _eng_size=argument7;
	var _dev_size=argument8;
	var _spr=argument9;

	plane[_item,pl.name]=_name;
	plane[_item,pl.hp]=_hp;
	plane[_item,pl.energy]=_energy;
	plane[_item,pl.turn]=_turn;
	plane[_item,pl.spd]=_spd;
	plane[_item,pl.weap_size]=_weap_size;
	plane[_item,pl.eng_size]=_eng_size;
	plane[_item,pl.dev_size]=_dev_size;
	plane[_item,pl.spr]=_spr;


}
