///@args neighborhood
///@args good
///@args amount
function sell(argument0, argument1, argument2) {

	var neigh=argument0;
	var good=argument1;
	var amount=argument2;

	var my_cargo=neigh.warehouse[good];
	if my_cargo<amount exit;

	//get current market info
	var tmp_ask_list=obj_market.goods_ask_array[good];
	var tmp_bid_list=obj_market.goods_bid_array[good];

	while(amount>0){
		//if there are no buying orders in the market,be a maker.
		if (ds_list_empty(tmp_bid_list)){
			var market_price=global.goods_price[good];
			if (ds_list_empty(tmp_ask_list)){
				var tmp_price=market_price;
			}
			else{
				var tmp_order=ds_list_find_value(tmp_ask_list,0);
				tmp_price=tmp_order[1];
			}
	
			var my_price=tmp_price-1;
			if my_price<=0
				my_price=1;
			//global.goods_price[good]=my_price;
	
	
			order_detail=array_init(neigh,my_price,amount);
	
			ds_list_insert(tmp_ask_list,0,order_detail);
	
			neigh.warehouse[good]-=amount;
			amount=0;
		
		}
		//if there are buying orders in the market,be a taker.
		else{	
				var tmp_detail=ds_list_find_value(tmp_bid_list,0);
				var tmp_buyer=tmp_detail[0];
				var tmp_price=tmp_detail[1];
				var tmp_amount=min(amount,tmp_detail[2]);
				var tmp_amount=min(amount,tmp_detail[2]);
				amount-=tmp_amount;
				tmp_detail[2]-=tmp_amount;
		
		
				tmp_buyer.gold-=tmp_price*tmp_amount;
				neigh.gold+=tmp_price*tmp_amount;
	
			
				tmp_buyer.warehouse[good]+=tmp_amount;
				neigh.warehouse[good]-=tmp_amount;
	
				if (tmp_detail[2]==0)
					ds_list_delete(tmp_bid_list,0);
				//change market price
				global.goods_price[good]=tmp_price;	
			
				tmp_buyer.my_orders[good]-=tmp_amount;
		}
	
	}




}
