function playerJumping(){
	if(pressedJump and jumps > 0){
		jumps--;
		if(playerInWater()){
			jumps++;
		}
		ySpeed = jumpPower;
		if(mechTime > 0){
			ySpeed = jumpPower * 1.7;
			jumps = 0;
		}
		coyoteTime = 0;
		onLadder = false;
	}
	if(!holdingJump && ySpeed < 0){
		ySpeed = 0;
	}
}