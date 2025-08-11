if(player.state != "play"){
	return;
}
y-=7;
if(y<0){
	instance_destroy();
}