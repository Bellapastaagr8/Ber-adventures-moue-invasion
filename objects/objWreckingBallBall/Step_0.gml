if(player.state != "play"){
	return;
}
if(player.xIn != 0){
	dir = player.xIn;
}

angle += orbitSpeed * -dir;
if(angle >= 360){
	angle -= 360;
}
if(angle < 0){
	angle += 360;
}
x = target.x + lengthdir_x(orbitDistance, angle);
y = target.y - center + lengthdir_y(orbitDistance, angle);
time--;
if(time = 0){
	if(goAway = false){
		orbitDistance-= 0.5;
	}else{
	orbitDistance+= 0.5;
	}
	time = timeMax;
}
if(orbitDistance = orbitDistanceMax && goAway){
	goAway = false;
}