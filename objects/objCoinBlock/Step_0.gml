if(player.state != "play"){
	return;
}
if(player.onBreakable == id){
	if(player.yIn > 0){
//		y++;
		if(coins > 0 && irandom_range(0,30) == 1){
			coins--;
			instance_create_depth(x+sprite_width/2, y+64, depth-1,objCoinFall1)
		}
		if(coins < 1){
			image_index = 1;
		}
	}else{
		if(y>yStart){
			
		}
	}
}else{
	
}





