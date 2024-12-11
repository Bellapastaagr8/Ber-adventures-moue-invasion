if(player.state != "play"){ return; }
if(player.onPlat != noone){
	if(player.onPlat == id){
		if(y > yMin){
			player.y -= movespeed;
			y -= movespeed;
		}
		return;
	}
}
if(y < yStart){
	y++
	
}




//Line 11: go's down one if not touching player and is higher then where it began//
/*if game is active,{if player is touching something{if player is touching me{if I am lower then
my highest position,{Player y goes up by movespeed. I go up by movespeed. Stop script.}}}

Player is touching a platform. Player is touching me. I have not finished going up yet. I send player up. 
I go up with player. If these are all false, if I am higher then my starting position,  I go down. I
did not change player. Player must be off me.

Oh! y might go up to far! Then it go's down, and then it goes up to high, and then back down,
and up and down and up and down.

*/
