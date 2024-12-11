function worfOnGround(){
	if(pointInBlock(x+sprite_width/2,y+1)){
		return true;
	}
	if(pointInBlock(x-sprite_width/2,y+1)){
		return true;
	}
	if(pointInBlock(x,y+1)){
		return true;
	}
	
	
	if(pointInPlatform(x+sprite_width/2,y+1)){
		return true;
	}
	if(pointInPlatform(x-sprite_width/2,y+1)){
		return true;
	}
	if(pointInPlatform(x,y+1)){
		return true;
	}
}