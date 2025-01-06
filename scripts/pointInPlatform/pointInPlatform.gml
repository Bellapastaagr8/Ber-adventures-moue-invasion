function pointInPlatform(a,b){
if(object_index == objPlayer){
	
	player.onPlat = collision_point(a, b, objMovingPlatfomleft, true, true);
	
	if(player.onPlat != noone){
//		show_debug_message("test 1 successful")
		return true;
	}
}

if(object_index == objPlayer){
	player.onPlat = collision_point(a, b, objMovingPlatfomup, true, true);
	
	if(player.onPlat == noone){
		player.onPlat = collision_point(a, b, objMovingPlatfomup, true, true);
	}
	if(player.onPlat == noone){
		player.onPlat = collision_point(a, b, objMovingPlatformRail, true, true);
	}
	if(player.onPlat == noone){
		player.onPlat = collision_point(a, b, objMovingPlatfomupForever, true, true);
	}	
		
	
	if(player.onPlat != noone){
		return true;
	}
}

return collision_point(a, b, objPlatform1, true, true)
}