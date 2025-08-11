if(player.pressedPause){
	player.state = "play";
	player.pressedPause = false;
	musicScript();
	instance_destroy();
}
