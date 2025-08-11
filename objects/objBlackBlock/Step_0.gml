if(player.state != "play"){
	return;
}
if(room = Room15 && !hasStolenCoins){
	player.Money = 0;
	hasStolenCoins = true;
}
if(id == moveRightBlock || id == moveRightBlock2){
	moveCoolDown--;
	if(moveCoolDown <= 0){
		x+= xSpeed/2;
		x+= xSpeed/2;
		x += ( player.Money / (2000) ) * 12;
		moveCoolDown = moveCoolDownMax;
	}
} 
if(x>=room_width){
	instance_destroy();
}