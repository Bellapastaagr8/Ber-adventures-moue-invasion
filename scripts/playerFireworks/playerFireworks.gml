function playerFireworks(){
	if(player.state == "next_room"){
		isInvisible = false;
		onPlat = noone;
		onBreakable = noone
	    if(fireworksTime > 0){
	        fireworksTime --;
	        if(fireworksTime % 3 == 0){
	            var a = camera_get_view_x(view_camera[0]) + irandom_range(0,  camera_get_view_width(view_camera[0]));
	            var b = camera_get_view_y(view_camera[0]) + irandom_range(0,  camera_get_view_height(view_camera[0]));


	            effect_create_above(ef_firework, a, b, choose(2, 2, 3), choose(c_aqua, c_white));
	        }
	    } else {
			onBreakable = noone;
			waterTime = 0; 
			mechTime = 0;
	        if(next_room == noone){
	            room_goto_next();
	        } else {
	            room_goto(next_room);
	        }
			playerEnterRoom();
	        player.state = "play";
	        //player.x = 96; player.y = 520;
			var startSpot = instance_find(objStartSpawn, 1);
			if(startSpot != noone){
				x = startSpot.x;
				y = startSpot.y;
			}
			openShop = true;
		
	    }

	}
}