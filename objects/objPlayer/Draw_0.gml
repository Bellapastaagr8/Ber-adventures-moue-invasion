/*var s = string(mouse_x) + ", " + string(mouse_y);

draw_text(x,y-100,s);
*/
if(mechTime > 0){
	var c = 1
	if(mechTime < 60*5){
		c = choose(1,0);
	}
	draw_sprite_ext(imgMech, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, c);
	
}else if(purSkin){
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, ww.co_deepPurple, image_alpha);
}else{
	draw_self();
}

if(poisonTime > 0){
	draw_sprite(imgPoisonEffect,0,x-irandom_range(-30,30),y-irandom_range(0,30))
	draw_sprite(imgPoisonEffect,0,x-irandom_range(-30,30),y-irandom_range(0,30))
}
draw_set_alpha(0.5);

if(waterLevel < room_height){
	draw_rectangle_color(x-5000,waterLevel,x+5000,room_height,ww.co_deepBlue,c_aqua,c_blue,ww.co_deepBlue,false)
}

draw_set_alpha(1);


