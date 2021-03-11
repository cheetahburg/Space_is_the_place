function rs_items(argument0) {
	buffer=argument0;

	var _item=buffer_read(buffer,buffer_string);
	if(ds_list_find_index(consts.weapon_list,_item)>=0 ){
		rs_trajectory(_item,buffer);
	}
	/*
	switch (_item){
		case items.twins:
			rs_twins(buffer);
			break;
		case items.laser:
			rs_laser(buffer);				
			break;
		case items.vulcan:
			rs_vulcan(buffer);				
			break;
	}
	*/
		



}
