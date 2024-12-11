if(player.y < y && player.ySpeed > 0){
	player.ySpeed = -21;
	player.xPush = choose(1,2,-1,-2);
	instance_create_depth(x,y,depth, objBallSpikeSpike);
	instance_create_depth(x,y-24,depth, effBallSpikeBall);
	player.y -= sprite_height/2;
	instance_destroy()
}