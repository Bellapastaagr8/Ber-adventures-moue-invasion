if(player.state != "play"){ return; }

y +=  dir*movespeed;

if(y<yMax){
dir *= -1;	
}

if(y > yStart){
	dir *= -1;
}



if(player.onPlat != noone){

	if(player.onPlat == id){
		
		//player.ySpeed += onPlat.dir * onPlat.movespeed;
		player.y += movespeed * dir;
	}

}


