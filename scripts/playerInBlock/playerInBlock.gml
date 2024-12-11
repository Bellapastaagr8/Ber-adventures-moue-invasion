function playerInBlock(){
if(player.y < 0 || player.x < 0 || player.y >= room_height || player.x >= room_width){
	return true
}

	 if(collision_rectangle(player.x-player.width, player.y, player.x + player.width, player.y - player.head,objBlock1,true,true)){
		return true;
	 }
	 
	 
	return false; 
}