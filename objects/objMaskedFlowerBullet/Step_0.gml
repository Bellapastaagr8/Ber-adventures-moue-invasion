
if(firstFrame){
	firstFrame = false;
	if(moveType == "custom"){
		
	}else{
		xt = x;
		yt = y;
	}
	if(moveType == "playerx"){
		xt = player.x;
	}
	if(moveType == "playery"){
		yt = player.y;
	}
	if(moveType == "playeryx"){
		yt = player.y;
		xt = player.x;
	}
	if(moveType == "playerHoming"){
		yt = player.y;
		xt = player.x;
		homing = true;
	}
	var angle = arctan2(yt - y, xt - x);
	xSpeed = cos(angle) * moveSpeed;
	ySpeed = sin(angle) * moveSpeed;
	if(pointAtTarget){
		image_angle = point_direction(x,y,xt,yt)
	}
}
if(homing){
	yt = player.y;
	xt = player.x;
	var angle = arctan2(yt - y, xt - x);
	xSpeed = cos(angle) * moveSpeed;
	ySpeed = sin(angle) * moveSpeed;
	if(homingTime<1){
		instance_destroy()
	}
	homingTime--
}
x += xSpeed;
y += ySpeed;


if(x < 0 ||	y < 0 || x > room_width || y > room_height || pointInBlock(x, y)){
	instance_destroy();
}
if(HP < 1){
	instance_destroy();
}