value = 0;
spinDir = -1;
spin = false;
spinOther = false;
// dir == direction
xSpeed = 0;
ySpeed = 0;
grav = 0;
gravMax = 10;
bounce = 0;
spinOtherDir = -1;
onlyOnce = true;





if(ds_list_find_index(player.coinsTaken,x) != -1){
	instance_destroy();
}


