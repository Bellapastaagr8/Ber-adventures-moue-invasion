if(player.state != "play"){
	return;
}
spawnTimer1--;
spawnTimer2--;
spawnTimer3--;
spawnTimer4--;
spawnTimer5--;
if(spawnTimer1 <= 0){
	var s = spawns[0]
	instance_create_depth(irandom_range(0,room_width), irandom_range(room_height,room_height-50),depth,s)
	spawnTimer1 = spawnTimerMax1;
}
if(spawnTimer2 <= 0){
	var s = spawns[1]
	instance_create_depth(irandom_range(0,room_width), irandom_range(room_height,room_height-50),depth,s)
	spawnTimer2 = spawnTimerMax2;
}
if(spawnTimer3 <= 0){
	var s = spawns[2]
	instance_create_depth(irandom_range(0,room_width), irandom_range(room_height,room_height-50),depth,s)
	spawnTimer3 = spawnTimerMax3;
}
if(spawnTimer4 <= 0){
	var s = spawns[3]
	instance_create_depth(irandom_range(0,room_width), irandom_range(room_height,room_height-50),depth,s)
	spawnTimer4 = spawnTimerMax4;
}
if(spawnTimer5 <= 0){
	var s = spawns[4]
	instance_create_depth(irandom_range(0,room_width), irandom_range(room_height,room_height-50),depth,s)
	spawnTimer5 = spawnTimerMax5;
}