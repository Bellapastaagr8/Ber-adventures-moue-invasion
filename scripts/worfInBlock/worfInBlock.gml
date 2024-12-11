function worfInBlock(yMod){
	if(is_undefined(yMod)){
		yMod = 0;
	}
	if(pointInBlock(x+sprite_width/2,y+yMod)){
		return true;
	}
	if(pointInBlock(x-sprite_width/2,y+yMod)){
		return true;
	}
	if(pointInBlock(x+sprite_width/2,y-sprite_height+yMod)){
		return true;
	}
	if(pointInBlock(x-sprite_width/2,y-sprite_height+yMod)){
		return true;
	}
	
	
	if(pointInBlock(x+sprite_width/2,y+yMod)){
		return true;
	}
	if(pointInBlock(x-sprite_width/2,y+yMod)){
		return true;
	}
	if(pointInBlock(x,y+yMod)){
		return true;
	}
	if(pointInBlock(x,y-sprite_height+yMod)){
		return true;
	}
	return false;
}