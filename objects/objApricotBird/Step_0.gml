if(player.state != "play"){
	return; 
	}
x+= xSpeed;
if(choose(true, false, false)){
	y += irandom_range(-1, 1); 
	}
if(x > player.x && xSpeed > 0){
	image_xscale *= -1;
	xSpeed *= -1.1;
	instance_create_depth(x,y,depth, thingOfHeal)
}
if(x<-500){
	instance_destroy();
}