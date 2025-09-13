if(player.clickMouse or player.pressedEnter){
//	var xm = device_mouse_x_to_gui(0);
//	var ym = device_mouse_y_to_gui(0);
	var xm = Cursor.x - camera_get_view_x(view_camera[0]);
	var ym = Cursor.y - camera_get_view_y(view_camera[0]);
	if((player.pressedEnter) or xm >= continu.x && xm < continu.x+continu.sprite_width){
		if((player.pressedEnter) or ym >= continu.y && ym < continu.y+continu.sprite_height){
			player.state = "play";
			musicScript();
			instance_destroy(continu)
			instance_destroy()
			room_goto(room)
			return;
		}
	}	
}