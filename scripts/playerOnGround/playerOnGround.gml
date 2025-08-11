function playerOnGround(tempWidth,tempHeight){
if(player.y > room_height){

	return true;
}
if(instance_number(objDrivableTruck) >= 1){
	var t = instance_find(objDrivableTruck,0);
	if(t.active && player.y > t.y-120){
		return true;
	}
}
if(pointInBlock(player.x, player.y + 1)){
	return true;
}

if(player.onLadder && player.yIn <= 0){ return true; }

if(pointInBlock(player.x-tempWidth+1, player.y + 1)){ return true; }
if(pointInBlock(player.x+tempWidth-1, player.y + 1)){ return true; }

if(player.downKeyPressed <= 0 && player.ySpeed>=0){
	if(pointInPlatform(player.x, player.y + 1)){ return true; }
	if(pointInPlatform(player.x-tempWidth+1, player.y + 1)){ return true; }
	if(pointInPlatform(player.x+tempWidth-1, player.y + 1)){ return true; }
}

if(coyoteTime > 0){
	return true;
}
return false;
}