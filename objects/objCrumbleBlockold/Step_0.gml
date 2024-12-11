if(id == player.onBreakable){
	damage = damage + 1.5;
	wTime = 120
}

image_index = floor(damage / 30);
if(damage > 120){
	y = y + 10
	

}


if(y > room_height){
	

	
	waitTime--

	
	if(waitTime < 1){
		damage = 0;
		x = xStart;
		y = yStart;
		waitTime = 120;
		image_index = 0;
	}

}
	
if(damage > 0){

	wTime--;

	if(wTime < 1){
		damage--;
		image_index = floor(damage / 30);
		
		//show_debug_message(image_index)
		
		if(damage == 0){
			wTime = 120;
		}
	}

}