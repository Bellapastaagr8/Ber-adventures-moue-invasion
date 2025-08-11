if(player.state != "play"){
	return;
}
y-=6;
if(y<0){
	instance_destroy();
}