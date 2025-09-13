function clickingOnMonsters(){
if(!clickMouse){
	return;
}
with(objEnemy){
	if(isHibernating){
		continue;
	}
	if(!canBribe){
		return false;
	}
	var yy = y - floor(sprite_height/2);
	//var xm = Cursor.x - camera_get_view_x(view_camera[0]);
	//var ym = Cursor.y - camera_get_view_y(view_camera[0]);
	var d = point_distance(x,yy,Cursor.x,Cursor.y);
	var cr = clickRadius;
	if(player.difficulty == Difficlulty.easy){ cr += 20; }
	if(player.difficulty == Difficlulty.medium){ cr += 10; }
	if(d <= cr){
		player.state = "bribery";
		player.removeNumber = "";
//		instance_destroy();
		player.bribeMonster = id;
//		instance_create_depth(mouse_x,mouse_y,depth,effCoin)
		repeat(200){
			var a = camera_get_view_x(view_camera[0]) + irandom_range(0,camera_get_view_width(view_camera[0]));
			var b = camera_get_view_y(view_camera[0]) + irandom_range(0,camera_get_view_height(view_camera[0]));
			instance_create_depth(a,b,depth,effCoin);
		}
	}
}


}