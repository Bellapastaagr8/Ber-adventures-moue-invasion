if(player.clickMouse){
//	var xm = device_mouse_x_to_gui(0);
//	var ym = device_mouse_y_to_gui(0);
	var xm = Cursor.x;
	var xm = Cursor.y;
	if(xm >= continu.x && xm < continu.x+continu.sprite_width){
		if(ym >= continu.y && ym < continu.y+continu.sprite_height){
			player.state = "play";
			musicScript();
			instance_destroy(continu)
			instance_destroy()
			room_goto(room)
			return;
		}
	}	
}