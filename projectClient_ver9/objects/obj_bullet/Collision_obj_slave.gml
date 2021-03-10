event_inherited();
if (creator==undefined){
	instance_destroy(id);
	exit;
}
if (creator.oid!=other.oid){
	instance_destroy(id);
}