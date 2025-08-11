if(player.state != "play"){
	return;
}
if(isDonkey = true){
	sprite_index = imgDonkey;
}
if(!isDonkey){
	effect_create_depth(depth+1,ef_smoke,x,y,1,ww.co_dkbrown);
}else{
	effect_create_depth(depth-10,ef_spark,x,y,2,c_yellow);
}
if(dir = 1){
	x+=irandom_range(5,9);
}else{
	x-=irandom_range(5,9);
}
y+=irandom_range(-3,3)
if(dir = 1 && x>=room_width){
	instance_destroy();
}
if(dir = -1 && x<=0){
	instance_destroy();
}