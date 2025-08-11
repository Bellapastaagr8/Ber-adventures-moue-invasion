function blockingPlayer(a,b){
	if(blocksPlayer){
		if(player.onBreakable == id){
			player.x += a;
			player.y += b;
			if(playerInBlock()){
				player.x -= a;
				player.y -= b;
				player.onBreakable = noone;
			}
		}
	}
}