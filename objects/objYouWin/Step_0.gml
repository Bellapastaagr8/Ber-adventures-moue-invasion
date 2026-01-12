if(image_index >= 15){
	image_speed = 0;
	show_debug_message("aidwi");
	timerActive = true;
}
	if(timerActive){
		timer--;
	}
	if(timer<=0){
		instance_create_depth(0,0,-1000,objEndGame);
		instance_destroy();
	}
/*if(image_index >= 16){
	image_speed = 0;
	if(player.getPresent == true){
		instance_create_depth(933, 62, depth, objMouePlush);
		show_debug_message(player.getPresent);
		player.getPresent = false;
	}
}