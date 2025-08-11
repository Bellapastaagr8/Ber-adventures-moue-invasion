function playerSTICK(){
	if(!hasStick){return;}
	stickAnimation = clamp(stickAnimation-1,0,stickAnimation)
	stickCD = clamp(stickCD-1,0,stickCD)
	if(keyboard_check_pressed(ord("E")) && stickCD < 1){
		stickAnimation = 26;
		stickCD = 31.48102;
		instance_create_depth(player.x+60,player.y-5, player.depth,objStickSimple)
	}
}