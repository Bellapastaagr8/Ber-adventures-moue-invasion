y += ySpeed;

ySpeed = clamp(ySpeed + 1, -10, 5);


passWallTime--



if(y>room_height){
instance_destroy()	
}