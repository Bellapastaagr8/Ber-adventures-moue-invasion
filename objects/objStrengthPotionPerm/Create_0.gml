event_inherited();
value = 0;
onlyOnce = true;
if(ds_list_find_index(player.coinsTaken,x) != -1){
	instance_destroy();
}