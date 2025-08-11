dir = choose(-1,1);
if(dir = 1){
	x = 0;
}else{
	x = room_width;
	image_xscale=-1;
}
y = irandom_range(0,room_height);
isDonkey = irandom_range(-50,3);
if(isDonkey){
	depth-=1;
}