if(player.state != "play"){ return; }
if(touchedByMonster && y<room_height){
	y+=10;
}
