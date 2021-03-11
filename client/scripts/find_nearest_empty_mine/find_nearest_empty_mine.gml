///@arg x
///@arg y
function find_nearest_empty_mine(argument0, argument1) {

	// instance_nth_nearest(x,y,obj,n)
	//
	//  Returns the id of the nth nearest instance of an object
	//  to a given point or noone if none is found.
	//
	//      x,y       point coordinates, real
	//      obj       object index (or all), real
	//      n         proximity, real
	//
	// GMLscripts.com/license
	{
	    var pointx,pointy,object,n,list,nearest;
	    pointx = argument0;
	    pointy = argument1;
	    object = obj_mine_parent;
    
	    n = instance_number(object);
	    list = ds_priority_create();
	    nearest = noone;
	    with (object) ds_priority_add(list,id,distance_to_point(pointx,pointy));
		while(n>0){
			nearest = ds_priority_delete_min(list);
			if(is_undefined(nearest.owner)){
				ds_priority_destroy(list);
				return nearest;
			}
			n--;
		}
		return undefined;
    
    
    
	}


}
