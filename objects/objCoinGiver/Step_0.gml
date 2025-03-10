if(player.state != "play"){
	return;
}

moveSpeed = coinsCollected/2;
increase = coinsCollected  * 10;
value = baseValue + increase;
if(dir < 0 && image_xscale > 0){ image_xscale *= -1; }
if(dir > 0 && image_xscale < 0){ image_xscale *= -1; }
if(x < player.x){
		dir = 1;
	}else{
		dir = -1;
	}
if(player.y < y){
	ySpeed = irandom_range(-moveSpeed,-moveSpeed);
}else{
	ySpeed = irandom_range(moveSpeed,moveSpeed);
}
xSpeed = moveSpeed*dir;
x+=xSpeed;
y+=ySpeed;