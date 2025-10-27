if(player.state != "play"){ return; }
if(ready == false){ return; }

//if we don't have a nextrail set, find one
if(nextRail == noone){
    nextRail = findClosestRail(objPlatformRail, seekDis, lastRail, skipFirstRail);



    //if no close rails were unchosen, reset
    if(nextRail == noone){
        lastRail = [];
        nextRail = findClosestRail(objPlatformRail, seekDis, lastRail, false);
    }


    //set speed so that palt moves towards nextRail
    var angle = arctan2(nextRail.y - y, nextRail.x - x);
    xSpeed = cos(angle) * moveSpeed;
    ySpeed = sin(angle) * moveSpeed;

}




//if we're close to nextRail, need to forget it so we'll look for another one next frame
if(nextRail != noone && point_distance(x,y,nextRail.x,nextRail.y) <= moveSpeed ){
    lastRail[array_length(lastRail)] = nextRail;
      nextRail = noone;

}


//if other direction chance was rolled
if(nextRail != noone && skipFirstRail){
    image_xscale *= -1;
    skipFirstRail = false;
    lastRail[array_length(lastRail)] = nextRail;
    nextRail = noone;
    return;
}



//movement
x += xSpeed;
y += ySpeed;
if(player.onPlat == id){
    player.x += xSpeed;
    player.y += ySpeed;
}