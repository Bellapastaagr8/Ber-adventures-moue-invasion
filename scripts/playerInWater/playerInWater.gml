function playerInWater(){
	if(y > waterLevel){
		return true;
	}
	with(objWaterTop){
		if(bottom != noone){
			if(collision_rectangle(x,y,bottom.x,bottom.y,player,false,false)){
				return true;
			}
		}
	}

	return false;
}