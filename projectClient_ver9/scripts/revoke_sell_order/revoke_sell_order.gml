///@arg id
///@arg good
///@arg amount
function revoke_sell_order(argument0, argument1, argument2) {

	var _id=argument0;
	var _good=argument1;
	var _amount=argument2;

	var tmp_ask_list=obj_market.goods_ask_array[_good];
	var get=0;
	//the amount that we still want to sell,but at a higher price
	var still_sell=0;

	for(var i=0;i<ds_list_size(tmp_ask_list);i++){
		var tmp_order=ds_list_find_value(tmp_ask_list,i);
		if(tmp_order[0]==_id){
			if(get<_amount){
				var tmp_amount=min(tmp_order[2],_amount-get);
				tmp_order[2]-=tmp_amount;
				_id.warehouse[_good]+=tmp_amount;
				get+=tmp_amount;
				if(tmp_order[2]<=0) ds_list_delete(tmp_ask_list,i);
			}
			if(get>=_amount){
				var tmp_amount=tmp_order[2];
				_id.warehouse[_good]+=tmp_amount;
				still_sell+=tmp_amount;
				ds_list_delete(tmp_ask_list,i);
			}
			i--;
		}
	}

	if(still_sell>0)
		sell(_id,_good,still_sell);

	return get;


}
