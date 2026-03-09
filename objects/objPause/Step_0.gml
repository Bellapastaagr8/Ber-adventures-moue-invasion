if(player.pressedPause){
	player.state = "play";
	player.pressedPause = false;
	musicScript();
	instance_destroy(objSlider);
	instance_destroy(objSliderBar);
	instance_destroy();
}
