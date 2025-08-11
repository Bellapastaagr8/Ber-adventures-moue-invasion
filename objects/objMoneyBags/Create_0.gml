value = irandom_range(50, 125);
spinDir = -1;
spin = false;
spinOther = false;
// dir == direction
xSpeed = 0;
ySpeed = 0;
grav = 0;
gravMax = 10;
bounce = 0;
onlyOnce = true;
spinOtherDir = -1;
if(ds_list_find_index(player.coinsTaken,x) != -1){
	instance_destroy();
}



