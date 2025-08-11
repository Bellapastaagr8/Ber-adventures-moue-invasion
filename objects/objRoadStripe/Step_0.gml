if(player.state != "play"){
	return;
}
if(!active){
	return;
}
x-=40;
if(x<0){
	x = room_width+150;
}