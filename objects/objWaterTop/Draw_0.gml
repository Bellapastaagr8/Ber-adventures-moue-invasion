if(bottom != noone){
	var waterdeepth = (player.y / room_height) / 2 + .5;
	
	
	
	draw_set_alpha(0.7*waterdeepth);
	draw_rectangle_color(x,y,bottom.x, bottom.y,ww.co_deepBlue,ww.co_deepBlue,ww.co_deepBlue,ww.co_deepBlue,false);
	draw_set_alpha(1);
}








