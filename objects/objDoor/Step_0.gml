if(player.state != "play"){
	return;
}
if(player.y <= y && player.y >= y-80){
	if(player.x>x-60 && player.x<x){
		image_index = 2;
	}else if(player.x<x+60 && player.x>x){
		image_index = 1;
	}else{
		image_index = 0;
	}
}