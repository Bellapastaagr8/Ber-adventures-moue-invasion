function playerDead(){
	if(player.state != States.dead){
		return;
	}
	if(gameOverTime > 0){
		gameOverTime--;
		repeat(2){
            var a = camera_get_view_x(view_camera[0]) + irandom_range(0,  camera_get_view_width(view_camera[0]));
            var b = camera_get_view_y(view_camera[0]) + irandom_range(0,  camera_get_view_height(view_camera[0]));
            effect_create_above(ef_explosion, a, b, choose(2, 2, 3, 4), choose(c_red, c_orange, c_black));
        }
        with(objBlock1){ x += choose(-2, 2); y += choose(2, -2); }
        with(objImageBlock1){ x += choose(-2, 2); y += choose(2, -2); }
	}else{
		waterLevel = room_height;
		waterTime = 0;
		player.state = "play"
		player.HP = player.HPMax;
//		room_goto(room);
		poisonTime = 0;
		instance_create_depth(0,0,depth-100,objDeadScreen)
	}
}