function playerAnimations(){
	if(hurtTime>0){
	image_alpha = random_range(0,1);
		if(currentlyBurned){
			image_alpha = 1;
		}
	}
	else{
		image_alpha = 1;
		currentlyShocked = false;
		currentlyBurned = false;
	
	}
	if(isInvisible){
		image_alpha = 0.5;
	}

	sprite_index = imgPlayerStanding;
	if(hasHelmet){
		sprite_index = imgPlayerStandingHelmet;
	}
	if(yIn > 0 && !onLadder && !hasHelmet){
		sprite_index = imgPlayerDucking;
	}
	if(yIn > 0 && !onLadder && hasHelmet){
		sprite_index = imgPlayerDuckingHelmet;
	}

	if(currentlyShocked){
		sprite_index = imgPlayerShocked;
	}
	if(currentlyBurned){
		sprite_index = imgPlayerFlaming;
		effect_create_above(ef_cloud, x+choose(sprite_width/3, -sprite_width/3), y-sprite_height, 1, choose(c_gray, c_dkgray, c_orange));
	}

	if(onLadder = true){
		sprite_index = imgPlayerClimbing;
	}
	if(onLadder){
	    sprite_index = imgPlayerClimbing;
	    if(yIn == 0){ 
			image_index = climbing;
		}else{
			climbing = image_index;
		}
	}

}