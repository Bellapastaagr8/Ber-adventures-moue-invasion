function pointInBlock(a, b){
if(a < 0 || a > room_width || b > room_height){
	return true;
}

if(object_index == objPlayer && player.state == "play"){
	player.onBreakable = collision_point(a, b, objCrumbleBlock, true, true);
	
	if(player.onBreakable == noone && collision_point(a, b, objZebraBlock, true, true)){
		player.onBreakable = collision_point(a, b, objZebraBlock, true, true);
		return true;
	}
	if(player.onBreakable == noone && collision_point(a, b, objCoinBlock, true, true)){
		player.onBreakable = collision_point(a, b, objCoinBlock, true, true);
		return true;
	}
	if(player.onBreakable == noone && collision_point(a, b, objHoneyBlockFast, true, true)){
		player.onBreakable = collision_point(a, b, objHoneyBlockFast, true, true);
		return true;
	}
	if(player.onBreakable == noone && collision_point(a, b, objHoneyBlockMimic, true, true)){
		player.onBreakable = collision_point(a, b, objHoneyBlockMimic, true, true);
		return true;
	}
	if(player.onBreakable != noone && player.y >= player.onBreakable.y){
		player.onBreakable = noone;
		return true;
	}
	
}
/*if(leader != noone){
	if(point_distance(a, b, leader.x, leader.y) > 200){
		return true;
	}
}
*/

return collision_point(a, b, objBlock1, true, true);
}