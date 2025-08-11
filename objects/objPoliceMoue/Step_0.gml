if(player.state != "play"){
	return;
}
if(!active){
	return;
}
x+=xSpeed;
if(x>room_width){
	instance_destroy();
}