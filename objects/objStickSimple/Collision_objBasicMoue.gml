if(arrayContains(creaturesHit,other)){
	return;
}
other.HP-=5;
if(other.HP <= 0){effect_create_depth(depth,ef_explosion,x,y,1,c_orange)}

if(other.x > player.x){
    other.xPush = 20;
} else {
    other.xPush = -20;
}





creaturesHit[array_length(creaturesHit)] = other;