if(player.state != "play"){
	return;
}
player.onBreakable = noone;
player.state = "next_room";
musicScript();
player.fireworksTime = 70;
player.next_room = next_room;
if(barrierFlagRoom2){
	player.room2notcheat = true;
}
ds_list_destroy(player.coinsTaken);
player.coinsTaken = ds_list_create()
musicScript();
