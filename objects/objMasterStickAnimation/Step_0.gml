if(player.state != "play"){
	return;
}
frameCD--;
if(frameCD < 0){
	frameCD = frameCDMax;
	image_index++;
	if(image_index >= 7){
		room_goto(bossRoom);
	}
}









