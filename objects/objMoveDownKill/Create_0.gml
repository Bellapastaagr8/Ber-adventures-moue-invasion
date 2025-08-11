moveSpeed = 0.005;
moveSpeed = clamp(.01 - (.001 * player.timesWallCrushedMe), .001, 1);
if(player.timesWallCrushedMe=0){
	moveSpeed = 1;
}
active = false;