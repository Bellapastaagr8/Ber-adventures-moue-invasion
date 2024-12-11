moveSpeed = 6;
dir = 1;
xTar = x;
thinkCD  = 0;
thinkCDMax = 20;
ySpeed = 0;
jumps = 1;
wolfTime = 60*10;
jumpPower = -24;
fat = sprite_width/2;
animationCD = 5;
animationCDMax = 5;
frame = 0;
head = sprite_height - 4;
effect_create_above(ef_smoke,x,y,2,c_black)
enum wolfState{
	runOne,
	runTwo,
	bite,
	howl,
	sleep,
	jump,
	stand,
}
state = wolfState.stand;




