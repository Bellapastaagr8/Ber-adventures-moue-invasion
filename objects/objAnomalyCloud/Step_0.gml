if(player.state != "play"){
	return
}
if(player.y > y + 100){
	if(player.x >= x - 20 && player.x <= x + sprite_width + 20){
		shotCD--
	}
}

if(shotCD < 1){
	
shotCD = shotCDMax;
var m = instance_create_depth(x+sprite_width/2, y + 6 + sprite_height, -100, objFlamingFireAntOfDoom);
m.ForeverAnt = ForeverAnt;
}


if(shotCD < shotCDLow){
    image_index = floor(shotCD / 10) % 2;
} else {
    image_index = 0;
}



