if(player.state != "play"){
	return;
}
if(nextRail == noone){
	nextRail = findClosestRail(objPlatformRail, 150, lastRail);
	if(nextRail == noone){
		lastRail[0] = noone;
		lastRail[1] = noone;
		lastRail[2] = noone;
		lastRail[3] = noone;
		lastRail[4] = noone;
		lastRail[5] = noone;
		lastRail[6] = noone;
		nextRail = findClosestRail(objPlatformRail, 150, lastRail);
	}
	var angle = arctan2(nextRail.y - y, nextRail.x - x);
    xSpeed = cos(angle) * moveSpeed;
    ySpeed = sin(angle) * moveSpeed;
}
if(nextRail != noone && point_distance(x,y,nextRail.x,nextRail.y) <= moveSpeed){
	lastRail[6] = lastRail[5];
	lastRail[5] = lastRail[4];
	lastRail[4] = lastRail[3];
	lastRail[3] = lastRail[2];
	lastRail[2] = lastRail[1];
    lastRail[1] = lastRail[0];
    lastRail[0] = nextRail;
    nextRail = noone;
}
x += xSpeed;
y += ySpeed;

if(player.onPlat == id){
	player.x += xSpeed;
	player.y += ySpeed;
}

