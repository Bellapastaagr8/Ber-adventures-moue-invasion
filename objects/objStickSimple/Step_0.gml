
if(player.dir = -1){x = player.x+20*player.stickDir}else if(player.dir = 1){x = player.x+25*player.stickDir}
y = player.y-38;
timeOut++;
image_angle = 0+timeOut*-player.stickDir*10.01;






if(timeOut>18){instance_destroy()}