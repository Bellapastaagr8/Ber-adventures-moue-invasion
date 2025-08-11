if(player.state!="play"){
	return;
}
if(!active){
	return;
}
player.HP = 0;
player.timesWallCrushedMe++;