if(player.state != "play"){
return
}

shotCD--

if(shotCD < 1){
	
shotCD = shotCDMax;
instance_create_depth(x, y - 2, -100, objThunderBolt);

}


if(shotCD < shotCDLow){
    image_index = floor(shotCD / 10) % 2;
} else {
    image_index = 0;
}



