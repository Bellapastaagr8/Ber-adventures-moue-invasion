if(state == wolfState.bite){
	image_index = 2;
}
if(state == wolfState.stand){
	image_index = 1;
}
if(state == wolfState.jump){
	image_index = 3;
}
if(state == wolfState.stand && ySpeed >= 0){
	if(animationCD<1){
		animationCD = animationCDMax;
		frame++;
		if(frame > 1){
			frame = 0;
		}
	}
	image_index = 5+frame;
}

draw_self()


