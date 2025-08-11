if(player.pressedPause){
	player.state = "play";
	player.pressedPause = false;
	instance_destroy();
}
