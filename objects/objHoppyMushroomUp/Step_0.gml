if(player.state != "play"){
	return;
}
y-=4.5;
if(y<0){
	instance_destroy();
}