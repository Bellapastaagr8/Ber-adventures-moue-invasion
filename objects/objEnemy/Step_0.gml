if(player.state != "play"){
	return;
}
if(dir < 0 && image_xscale > 0){ image_xscale *= -1; }
if(dir > 0 && image_xscale < 0){ image_xscale *= -1; }
if(destroyThis){
	instance_destroy();
	return;
}
if(isHibernating && wakeWhenPlayerClose && point_distance(player.x,player.y,x,y) < wakeUpDis){
	isHibernating = false;
	image_index = choose(1,2);
	if(sprite_index == imgSeaweedGuy){
		sprite_index = imgSeaweedGuyAwake;
	}
}
if(bombWake != noone && point_distance(player.x,player.y,x,y) < wakeUpDis){
	if(sprite_index != bombWake){
		destroyWhenTouched = true;
		explode = true;
		moveSpeed = 5;
		moveSpeedMax = 10;
		moveSpeedMin = 4;
		sprite_index = bombWake;
	}
}
if(isHibernating){
	stunTime = 1;
	if(sprite_index != imgSeaweedGuy){
		image_index = 0;
	}
}

if(stunTime > 0){
	stunTime--;
	return;
}
vanishcd--;
if(vanishcd <= vanishcdmin && vanish = true && !ForeverAnt){
	instance_destroy(id);
}
thinkCD--;
if(thinkCD < 1){
	thinkCD = thinkCDMax;
	moveSpeed = irandom_range(moveSpeedMin, moveSpeedMax);
	if(isFollower && leader == noone){
		findLeader()
	}
	if(moveType == AI.dumb){
		xSpeed = moveSpeed*dir;
	}
	if(moveType == AI.agressive){
		if(x < player.x){
			dir = 1;
		}else{
			dir = -1;
		}
		if(player.isInvisible){
			dir = choose(1,-1, dir*-1)
			moveSpeed = 1;
			if(jumpLower){
				jumpPow = jumpPowerRemeber + 2;			
			}
		}else{
			jumpPow = jumpPowerRemeber
		}
		xSpeed = moveSpeed*dir;
	}
	if(moveType = AI.intimidatingIntimidated){
		if(x < player.x){
			dir = -1;
		}else{
			dir = 1;
		}
		xSpeed = moveSpeed*dir;
	}
	if(moveType == AI.flying){
		dir *= -1;
		xSpeed = moveSpeed*dir;
		ySpeed = irandom_range(-2,2);
		grav = 0;
	}
	if(moveType == AI.flyag){
		//irandom / random / choose\\
		if(x < player.x){
			dir = 1;
		}else{
			dir = -1;
		}
		if(player.y < y){
			ySpeed = irandom_range(-moveSpeed,-1);
		}else{
			ySpeed = irandom_range(1,moveSpeed);
		}
		grav = 0;
			if(player.isInvisible){
				dir = choose(1,-1, dir*-1)
				ySpeed = choose(1,-1,dir*-1)
				moveSpeed = 1;
			}
		xSpeed = moveSpeed*dir;
		
	}
	if(moveType == AI.still){
		return;
	}
	if(moveType == AI.bomb){
		return;
	}
	if(irandom_range(0,99) < jumpChanceOnThink){
		if(onGround || jumpFromAir){
			ySpeed += jumpPow;
		}
	}
	if(leader != noone){
		if(point_distance(x, y, leader.x, leader.y) > 200){
			var angle = arctan2(leader.y - y, leader.x - x);
			xSpeed = cos(angle) * moveSpeed;
			ySpeed = sin(angle) * moveSpeed;
		}
	}
}
var xs = xSpeed;
if(xPush != 0){
    xs = xPush;
    if(xPush < 0){ xPush ++; }
    if(xPush > 0){ xPush --; }
}
	for(var i = 0; i < abs(xs); i++){
		x += getDir(xs);
		blockingPlayer(dir,0);
		if((pointInBlock(x,y-1) || pointInBlock(x,y+tall)
		|| pointInBlock(x+fat*dir, y - 1)
		|| pointInBlock(x+fat*dir, y + tall)
		or ((turnNotFall && (!pointInBlock(x,y+1) && (StandOnPlatform && !pointInPlatform(x, y+1))) ))) && !ghost
	){
		x-= getDir(xs);
		blockingPlayer(-dir,0);
		if(irandom_range(0,99) < turnWhenBumpWallChance){
			dir *= -1;
			thinkCD = 0;
		}

		break;
	}
}
onGround = pointInBlock(x,y+1) || (StandOnPlatform && pointInPlatform(x,y+1));
if(onGround){
	if(ySpeed > 0){
		ySpeed = 0;
	}
}else{
	ySpeed += grav;
}

var yDir = 1;
if(ySpeed < 0){ yDir = -1; }
var ys = ceil(ySpeed) + yPush;
if(yPush != 0){
    xs = yPush;
	yDir = sign(xs);
    if(yPush < 0){ yPush ++; }
    if(yPush > 0){ yPush --; }
}
for(var i = 0; i < abs(ys); i++){
	y+=yDir;
	blockingPlayer(0,yDir);
	if(pointInBlock(x,y) 
	|| pointInBlock(x,y+tall)
	){
		y-=yDir;
		blockingPlayer(0,-yDir);
		if(irandom_range(0,99) < turnWhenBumpFloorChance){
			ySpeed *= -1;
			thinkCD = 25;
		}
		if(fallOnHeadBump && yDir < 0){
			ySpeed = 0;
		}
		break;
	}
}
if(doesShoot){
	shotCD--;
	if(shotCD < 1){
		shotCD = shotCDMax;
		if(shotType = objPorcupineSpike){
			var e = instance_create_depth(x+dir,y-head,depth-1,shotType);
			e.xt = e.x;       e.yt = e.y-100;
			var e = instance_create_depth(x+dir,y-head,depth-1,shotType);
			e.xt = e.x;       e.yt = e.y+100;
			var e = instance_create_depth(x+dir,y-head,depth-1,shotType);
			e.xt = e.x-100;       e.yt = e.y;
			var e = instance_create_depth(x+dir,y-head,depth-1,shotType);
			e.xt = e.x+100;       e.yt = e.y;
			
			
			var e = instance_create_depth(x+dir,y-head,depth-1,shotType);
			e.xt = e.x+100;       e.yt = e.y+100;
			var e = instance_create_depth(x+dir,y-head,depth-1,shotType);
			e.xt = e.x+100;       e.yt = e.y-100;
			var e = instance_create_depth(x+dir,y-head,depth-1,shotType);
			e.xt = e.x-100;       e.yt = e.y+100;
			var e = instance_create_depth(x+dir,y-head,depth-1,shotType);
			e.xt = e.x-100;       e.yt = e.y-100;
		}else{
			instance_create_depth(x+dir,y-head,depth-1,shotType)
		}
	}
	if(shotCD < shotCDLow){
		image_index = choose(0,1);
	}else{
		image_index = 0;
	}
}

if(backAndForth){
	backAndForthCD--
	if(backAndForthCD<1){
		backAndForthCD = backAndForthCDMax;
		if(moveType == AI.agressive){
			moveType = AI.intimidatingIntimidated;
		}else{
			moveType = AI.agressive;
		}
	}
}
if(HP<1){
	if(isMoue){
		soundScript(deadMoue);
	}
	instance_destroy();
}