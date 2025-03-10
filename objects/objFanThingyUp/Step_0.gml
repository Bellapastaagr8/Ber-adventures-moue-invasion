if(player.state != "play"){
	return;
}
if(choose(true,false)){
	return;
}
if(player.x < x + sprite_width/2 && player.x > x-sprite_width/2){
	if(player.y<y){
//		player.ySpeed-=ySpeed;
		var d = abs(player.y-y);
		if(d<400){
			player.yPush -= 3;
			player.ySpeed = min(0,player.ySpeed)
			player.jumps = player.jumpsMax;
		}else if(d<600){
//			player.yPush -= 2;
			player.ySpeed = min(5,player.ySpeed)
			player.jumps = player.jumpsMax;
		}else if(d<800){
//			player.yPush -= 1;
			player.ySpeed = min(9,player.ySpeed)
			player.jumps = player.jumpsMax;
		}
	}
}
