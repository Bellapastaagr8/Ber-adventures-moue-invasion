x+= xSpeed;
y+= ySpeed;
ySpeed += grav;
image_alpha -=fade;
image_xscale += grow;
image_yscale += grow;
image_angle += rotation;
timeCD--;
if(timeCD<1){
	instance_destroy();
}
if(fireworkCoins){
	sprite_index = fireworkCoinColors[irandom_range(0,array_length(fireworkCoinColors)-1)]
}