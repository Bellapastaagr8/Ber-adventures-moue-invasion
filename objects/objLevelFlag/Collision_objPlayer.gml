if(player.state != "play"){
	return;
}
player.onBreakable = noone;
player.state = "next_room";
player.fireworksTime = 70;
player.next_room = next_room;
if(barrierFlagRoom2){
	player.room2notcheat = true;
}