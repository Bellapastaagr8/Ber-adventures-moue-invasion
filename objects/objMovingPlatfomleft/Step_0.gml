if(player.state != "play"){ return; }

x +=  dir*movespeed;

if(x>xMax){
dir *= -1;	
}

if(x < xStart){
	dir *= -1;
}