if(player.state == "play"){
	birdTime--
	if(birdTime < 1){
		numberOfDrops--
		birdTime = birdTimeMax;	
		var m = instance_create_depth(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0])+100, player.depth+1, spawnBirdThing)
		if(thingOfHeal != noone){
			m.thingOfHeal = thingOfHeal;
			if(moreDrops){
				birdTime = birdTimeMax;
			}
		}
		if(numberOfDrops < 1){
			instance_destroy()
		}
	}

}