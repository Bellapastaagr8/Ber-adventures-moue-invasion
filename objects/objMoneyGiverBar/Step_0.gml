if(coinsCollected >= coinsCollectedMax){
	instance_create_depth(player.x-600,player.y,depth,objCoinGiver)
	instance_destroy()
}
