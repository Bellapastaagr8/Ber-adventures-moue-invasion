function mouseMoves(){
//	if(player.rXIn < 0){
		x += (player.rXIn*5);
		y += (player.rYIn*5);
//	}
	if(player.rXIn != 0){
		return;
	}
	if(player.rYIn != 0){
		return;
	}
	show_debug_message(placementX)
	if(placementX != mouse_x){
		placementX = mouse_x;
		x = mouse_x;
	}
	if(placementY != mouse_y){
		placementY = mouse_y;
		y = mouse_y;
	}
}