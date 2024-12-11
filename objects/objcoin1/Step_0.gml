if(player.state != "play"){
	return;
}
if(spin){
	image_xscale += spinDir * .02;
	if(image_xscale < -1 && spinDir < 0){ spinDir *= -1; }
	if(image_xscale > 1 && spinDir > 0){ spinDir *= -1; }
}
if(spinOther){
	image_yscale += spinOtherDir * .02;
	if(image_yscale < -1 && spinOtherDir < 0){
		spinOtherDir *= -1; 
	}
	if(image_yscale > 1 && spinOtherDir > 0){
		spinOtherDir *= -1;
		}
} 

//	y += ySpeed;
//	x += xSpeed;
	
var dir = 0;
if(ySpeed < 0){
	dir = -1;
}
if(ySpeed > 0){
	dir = 1;
}
for(var i = 0; i < abs(ySpeed); i++){
	y += dir;
	var yy = y + (floor(sprite_height / 2) * dir)
	if(pointInBlock(x,yy) || pointInBlock(x,y)){
		y-=dir;
		ySpeed = 0;
		break;
	}
}

while(y>=room_height-5){
	y--;
	ySpeed = 0;
	grav = 0;
}

if( y < 0 || x > room_width || x < -100.5 ){
	instance_destroy();
}
