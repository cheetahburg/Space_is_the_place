/// @get_response
// You can write your code in this editor
var _id=ds_map_find_value(async_load,"id");
var _http_status=ds_map_find_value(async_load,"http_status");
var _url=ds_map_find_value(async_load,"url");
var _status=ds_map_find_value(async_load,"status");
var _result=ds_map_find_value(async_load,"result");

//show_debug_message(_url);

if(_status==0){
	if _id==login_{
		waiting=false;
		
		//if typeof(_result)!=typeof(1) exit;
		if (_result<0) {
			//show error GUI message
			show_message("账号或密码有误");
			exit;
		}
		userId=_result;
		logged_in=true;
		fetchEquip();
		fetchUserInfo_=fetchUserInfo(userId);
		
	}else if _id==register_{
		waiting=false;
		_result=int64(_result);
		//show_message(_result);
		//show_message(typeof(_result));
		//if (typeof(_result)!=typeof(1))exit;
		
		if (_result<0){
			show_message("账号或密码不符合要求");
			exit;
		}
		registered=true;
		show_message("注册成功");
		room_goto(rm_sign);
		
	}else if _id==fetchUserInfo_{	
		fetchedUserInfo=true;
		waiting=false;
		obj_data.userInfo=json_decode(_result);
		
	}else if _id==fetchEquip_{
		fetchedEquip=true;
		waiting=false;
		obj_data.equipInfo=json_decode(_result);
		
		
    }else if _id==serverStatus_{
		obj_data.serverInfo=json_decode(_result);
		
	}
}else{
	password="";
}