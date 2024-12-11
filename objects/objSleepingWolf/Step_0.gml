if(player.state != "play"){
	return;
}
if(!pointInBlock(x,y) && !pointInPlatform(x,y)){
	y+= ySpeed;
	ySpeed += grav;
}