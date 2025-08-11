playerInput();
if(difficulty == Difficlulty.easy){confused = false;}
if(openShop){
	HP = HPMax;
}
if(HP < HPMax){
	HP += HPHealTime;
}
if(openShop == true){
	waterLevel = room_height;
	instance_create_depth(0,0,-1000,objShopUpgrades)
	openShop = false;
	
}
if(pressedDebug){
	debugMode = !debugMode;
}
if(debugMode){
	HP = HPMax;
	Money = 100000;
	if(killEnemy){
		instance_destroy(objEnemy);
		killEnemy = false;
	}
}
playerFireworks();
playerbriberymode();
playerDead();
if(state != "play"){
	return;
	
}
if(pressedPause){
	instance_create_depth(0,0,depth-100,objPause)
	player.pressedPause = false;
}
if(player.HP<1){
	soundScript(youDead);
	state = States.dead;
	gameOverTime = 180;
}
var tempWidth = width;
var tempHeight = head;
if(mechTime > 0){
//	tempWidth = mechWidth;
//	tempHeight = mechHeight;
}
//iuyib
//Walking code//
var eSpeed = walkSpeed;
if(mechTime > 0){
	eSpeed -= 3;
}
try{
	if(onBreakable != noone && onBreakable.object_index == objHoneyBlockFast){
		eSpeed += onBreakable.speedUpBy;
	}
}catch(e){};
if(donutSpeedTime > 0){
	eSpeed += 10;
}
xSpeed = xIn * eSpeed;
if(xIn != 0){stickDir = xIn}
clickingOnMonsters();
playerJumping();
playerSpecialEffects();
//pushPlayer
if(xPush != 0){
    xSpeed = xPush;
    if(xPush > 0){ xPush --; }
    if(xPush < 0){ xPush ++; }
}
if(yPush != 0){
	ySpeed = yPush;
    if(yPush > 0){ yPush --; }
    if(yPush < 0){ yPush ++; }
}
//Moveplayeronplatmorm



if(onPlat != noone){

	if(onPlat.object_index == objMovingPlatfomleft){
//		show_debug_message("Test 2 successful")
		xSpeed += onPlat.dir * onPlat.movespeed;
	}

}

if(ySpeed > 0 && playerInWater() && jumps < jumpsMax){
	jumps++;
}







//Fall >/< //

onBreakable = noone;
onPlat = noone;


if(collision_rectangle(x-tempWidth, y+tempHeight, x+tempWidth, y, objLadder, true, true)  || 
collision_rectangle(x-tempWidth, y+tempHeight, x+tempWidth, y, objLadderTop, true, true)){

	if(yIn != 0 && (!mechTime > 0)){
		onLadder = true;
	}

}else{
	onLadder = false;
}


if(onLadder == true){
	if(yIn < 0){
		ySpeed = -3;
	}else if(yIn > 0){
		ySpeed = 1;
	}else{
		ySpeed = 0
	}
}

if(yIn == 1){
	downKeyPressed  =  5;
}

//yIn == 1 = downkeyPressed




if(playerOnGround(tempWidth,tempHeight)){
	
	jumps = jumpsMax;
	if(ySpeed > 0){
		ySpeed = 0;
	}
} else{
	ySpeed++;
	if(jumps == jumpsMax){
		jumps--;
		if(playerInWater()){
			jumps++;
		}
	}
}


//The Falling code//

if(ySpeed > 0){
    for(var i=0; i<abs(ySpeed); i++){
        y++;
        if(playerOnGround(tempWidth,tempHeight)){
            ySpeed = 0;
            break;
        }
    }
}
//abs = absulute value//
//Jumping code//
if(ySpeed < 0){
    for(var i=0; i<abs(ySpeed); i++){
        y --;
        if(    pointInBlock(x, y+tempHeight)     ||pointInBlock(x+tempWidth-1, y+tempHeight)||  pointInBlock(x-tempWidth+1, y+tempHeight)    ){
            y ++;
            break;
        }
    }
}
if(xSpeed != 0){
    dir = sign(xSpeed);
    for(var i=0; i<abs(xSpeed); i++){
        var moveBy = dir;
        if(i + 1 > abs(xSpeed)){
            moveBy = (abs(xSpeed) - floor(abs(xSpeed)) ) * dir;
        }
        x += moveBy;
        if(collision_rectangle(x, y+tempHeight, x + (tempWidth * dir), y, objBlock1, true, true) or x < 0 or x > room_width){
            x -= moveBy;
            break;
        }
    }
}
playerSTICK();
playerTimers();
playerAnimations();