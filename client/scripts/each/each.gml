///@arg map
function each(argument0) {
	_map=argument0;

	for (var k = ds_map_find_first(_map); !is_undefined(k); k = ds_map_find_next(_map, k)) {
	  var v = _map[? k];
	  /* Use k, v here */
	}


}
