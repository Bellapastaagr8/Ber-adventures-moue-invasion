function playerTimers(){
	if( mechTime > 0){
		mechTime--
	}

	if(coyoteTime > 0){
		coyoteTime--;
	
	}
	
	if(zebraTime>0){
		zebraTime--;
	}
	
	if(donutSpeedTime>0){
		donutSpeedTime--;
	}
	
	if(orangeTime>0){
		orangeTime--;
	}

	if(hurtTime>0){
		hurtTime--
		if(currentlyBurned && irandom_range(1,10) == 1){
			HP--;
		}
	}
	if(poisonTime > 0){
		poisonTime--;
		HP-= poisonDamage/60;
	}

	if(downKeyPressed>0){
		downKeyPressed--
	}


	if(waterTime > 0){
		waterTime--;
		if(waterLevel > 0){
			waterLevel--;
		}
	}else{
		if(waterLevel < room_height){
			waterLevel++
		}
	}




	

	if(pressedCape && hasCape){
		isInvisible = !isInvisible;
	}
	if(isInvisible){
		invisibleEnergy--;
		if(invisibleEnergy < 1){
			invisibleEnergy = 0;
			isInvisible = false;
		}
	}
}