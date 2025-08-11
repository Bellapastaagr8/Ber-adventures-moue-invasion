if(x <= 180){
	return;
}
if(player.state != "play"){
	return;
}
if(!active){
	return;
}
x-=xSpeed;
if(x<0){
	instance_destroy();
}