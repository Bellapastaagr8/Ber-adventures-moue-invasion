if(player.clickMouse){
//	var xm = device_mouse_x_to_gui(0);
//	var ym = device_mouse_y_to_gui(0);
	var xm = Cursor.x;
	var ym = Cursor.y;
	if(xm >= startButton.x && xm < startButton.x+startButton.sprite_width){
		if(ym >= startButton.y && ym < startButton.y+startButton.sprite_height){
			player.state = "play";
			instance_destroy(startButton);
			instance_destroy(EasyButton);
			instance_destroy(MediumButton);
			instance_destroy(HardButton);
			player.difficulty = difficulty;
			musicScript();
			instance_destroy()
			return;
		}
	}	
	if(xm >= EasyButton.x && xm < EasyButton.x+EasyButton.sprite_width){
		if(ym >= EasyButton.y && ym < EasyButton.y+EasyButton.sprite_height){
			difficulty = Difficlulty.easy;
			player.Money = 500;
			player.HPMax = 99;
			EasyButton.image_index = 1;
			HardButton.image_index = 0;
			MediumButton.image_index = 0;
		}
	}
	if(xm >= MediumButton.x && xm < MediumButton.x+MediumButton.sprite_width){
		if(ym >= MediumButton.y && ym < MediumButton.y+MediumButton.sprite_height){
			difficulty = Difficlulty.medium;
			player.Money = 250;
			player.HPMax = 74;
			MediumButton.image_index = 1;
			EasyButton.image_index = 0;
			HardButton.image_index = 0;
		}
	}
	if(xm >= HardButton.x && xm < HardButton.x+HardButton.sprite_width){
		if(ym >= HardButton.y && ym < HardButton.y+HardButton.sprite_height){
			difficulty = Difficlulty.hard;
			player.Money = 0;
			player.HPMax = 49;
			HardButton.image_index = 1;
			EasyButton.image_index = 0;
			MediumButton.image_index = 0;
		}
	}
	player.HP = player.HPMax;
}