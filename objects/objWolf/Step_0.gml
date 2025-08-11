if(player.state != "play"){
	return;
}
if(player.x > x){
	dir = 1;
}
if(player.x<x){
	dir = -1;
}
wolfTime--
if(wolfTime <= 0){
	instance_create_depth(x,y,depth,objSleepingWolf);
	instance_destroy();
}
thinkCD--;
if(thinkCD < 1){
	thinkCD = thinkCDMax;
	xTar = player.x + (player.image_xscale * 100);
	state = wolfState.stand;
}
//reset jumpsssssssssssssssssssss ____-__--'
if(worfOnGround()){
	if(ySpeed > 0){
		ySpeed = 0;
	}
	jumps = 1;
}else{
	ySpeed++;
}
if(y>player.y && jumps > 0){
	ySpeed = jumpPower;
	jumps--;
}

if(x < xTar){var xDir = 1}else{var xDir = -1}
if(abs(x-xTar) > moveSpeed){
	animationCD--
	image_xscale = xDir;
	for(var i = 0; i < moveSpeed; i++){
		x+=xDir;
		if(worfInBlock()){
			x-=xDir;
			break;//!!!!!!!!!!!!!!!!!
		}
	}
}
if(ySpeed > 0){  var yDir = 1;} else {var yDir = -1;};
for(var i = 0; i < abs(ySpeed); i++){
	y+=yDir;
	if(yDir<0){
		if(worfInBlock()){
			y-=yDir;
			break;
		}
	}else{
		if(worfOnGround()){
			break;
		}
	}
}