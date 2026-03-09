var xm = Cursor.x - camera_get_view_x(view_camera[0]);
var ym = Cursor.y - camera_get_view_y(view_camera[0]);
/* if(ym > y-sprite_height/2 && ym < y+sprite_height/2){
	if(xm > x-sprite_width/2 && xm < x+sprite_width/2){
		onBar = true;
//		show_debug_message("hi")
	}else{
		onBar = false;
//		show_debug_message("fail")
	}
}else{
//	show_debug_message("fail2")
	onBar = false;
} */


if(ym > y-player.Slider.sprite_height/2 && ym < y+player.Slider.sprite_height/2){
	if(xm > x-player.Slider.sprite_width/2 && xm < x+player.Slider.sprite_width/2){
		onBar = true;
//		show_debug_message("hi")
	}else{
		onBar = false;
//		show_debug_message("fail")
	}
}else{
//	show_debug_message("fail2")
	onBar = false;
}

if(onBar == true && player.holdingMouse){
	clickingBar = true;
//	show_debug_message("works")
}else{
//	show_debug_message("Imoutofnames")
	clickingBar = false;
}
if(clickingBar){
	show_debug_message("move")
	x += sign(xm - x) * 3;
	x = clamp(x,player.Slider.x-(player.Slider.sprite_width)/2,player.Slider.x+(player.Slider.sprite_width)/2);
}

position = x-positionMin;
show_debug_message(position)
player.volume = position/100;
player.audioX = x;