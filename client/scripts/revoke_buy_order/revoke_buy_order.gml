///@arg id
///@arg good
///@arg amount
function revoke_buy_order(argument0, argument1, argument2) {

	var _id=argument0;
	var _good=argument1;
	var _amount=argument2;

	var tmp_bid_list=obj_market.goods_bid_array[_good];
	var get=0;
	var still_buy=0;

	for(var i=0;i<ds_list_size(tmp_bid_list);i++){
		var tmp_order=ds_list_find_value(tmp_bid_list,i);
		if(tmp_order[0]==_id){
			if(get<_amount){
				var tmp_amount=min(tmp_order[2],_amount-get);
				tmp_order[2]-=tmp_amount;
				get+=tmp_amount;
				if(tmp_order[2]<=0) ds_list_delete(tmp_bid_list,i);
			}
			if(get>=_amount){
				var tmp_amount=tmp_order[2];
				still_buy+=tmp_amount;
				ds_list_delete(tmp_bid_list,i);
			}
			i--;	
		}
	}
	if(still_buy>0)
		buy(_id,_good,still_buy);
	return get;



}
