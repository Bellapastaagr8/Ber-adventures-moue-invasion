if(player.clickMouse){
//	var xm = device_mouse_x_to_gui(0);
//	var ym = device_mouse_y_to_gui(0);
	var xm = Cursor.x - camera_get_view_x(view_camera[0]);
	var ym = Cursor.y - camera_get_view_y(view_camera[0]);
	if(xm >= x && xm < x+sprite_width){
		if(ym >= y && ym < y+sprite_height){
			if(player.music = true){
				player.music = false;
				audio_stop_all();
				image_index = 1;
			}else{
				player.music = true;
				image_index = 0;
				musicScript();
			}
		}
	}
}