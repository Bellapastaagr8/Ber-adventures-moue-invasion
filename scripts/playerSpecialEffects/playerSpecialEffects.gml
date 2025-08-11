function playerSpecialEffects(){
	if(playerInWater()){
		efPartOne = true;
	}else{
		efPartOne = false;
	}
	//zebra  fade
	zebraFade += zebraFadeDir * .020001;
	if(zebraFade > 1){
		zebraFadeDir = -1;
	}
	if(zebraFade < 0.50111111111){
		zebraFadeDir = 1;
	}
	if(waterLevel<y && efPartOne && !efPartOneLast){
	repeat(30){
		instance_create_depth(irandom_range(x+100,x-100), irandom_range(y-20,y-70),depth,effWaterDroplet,)
	}
}
efPartOneLast = efPartOne;
}