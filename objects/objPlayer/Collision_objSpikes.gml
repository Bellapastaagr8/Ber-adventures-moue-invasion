if( mechTime > 0){
	other.HP = 0;
	return;
}
if(!other.hurtsToTouch){
	
	return;
}



if(hurtTime<1){
	var damger = other.damage;
	if(armorHits > 0){
		damger /= 2;
		armorHits-= 1;
		if(armorHits == 1){
			effect_create_above(ef_explosion, x, y, choose(2, 2, 3), choose(c_orange));
			effect_create_above(ef_cloud, x, y, choose(2, 2, 3), choose(c_gray));
			effect_create_above(ef_smokeup, x, y, choose(2, 2, 3), choose(c_grey));;
			armorHits = 0;
			purSkin = false;
			damger = other.damage;
			
		}
	}
	damger = damger - armor;
	if(damger<0){damger = 0;}
	hurtTime = hurtTimeMax;
	HP-= damger;
	yPush = other.yPush;
	
	if(other.doesPoison){
		poisonTime = other.poisonTime;
		poisonDamage = other.poisonDamage;
	}
	
	if(other.object_index == objThunderBolt){
		currentlyShocked = true;
	}
	if(other.burnOnHit > 0){
		currentlyBurned = true;
		hurtTime = other.burnOnHit;
		
	}
	//var xx = other.x + (other.sprite_width / 2);

    if(x < other.x){ 
        xPush = -other.xPush; 
    } else{ 
        xPush = other.xPush; 
    }
	
	if( other.destroyWhenTouched == true && other.explode == true ){
		effect_create_above(ef_explosion, x, y, choose(2, 2, 3), choose(c_orange));
		effect_create_above(ef_cloud, x, y, choose(2, 2, 3), choose(c_gray));
		effect_create_above(ef_smokeup, x, y, choose(2, 2, 3), choose(c_grey));
		instance_destroy(other);
	} 
if(other.destroyWhenTouched){
	instance_destroy(other)
}
}



