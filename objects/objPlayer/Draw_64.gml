var x1 = 931;
var y1 = 10;
var x2 = 1220;
var y2 = 49;
var b = 4;
draw_rectangle_color(x1 - b, y1 - b, x2 + b, y2 + b, c_black, c_black, c_black, c_black, false);
var md = x2 - x1;
var w = md * (player.HP / player.HPMax);
if(w <= 0){
	w = 0;
}
HP = clamp(HP,0,HPMax);
draw_rectangle_color(x1, y1, x1 + w, y2, c_red, c_red, c_red, c_red, false);
var h = string(floor(HP))
draw_text_transformed(x1,y1,h,2.1,2.21,0)
if(hasCape){
	var x1 = 20;
	var y1 = 711;
	var x2 = x1 + 205;
	var y2 = y1 + 25;
	var b = 4;
	draw_rectangle_color(x1 - b, y1 - b, x2 + b, y2 + b, c_black, c_black, c_black, c_black, false);
	var md = x2 - x1;
	var w = md * (invisibleEnergy / invisibleEnergyMax);
	draw_rectangle_color(x1, y1, x1 + w, y2, c_green, c_green, c_yellow, c_yellow, false);
}




try{

	if(!is_undefined(player.onBreakable)){
		if(player.onBreakable != noone){
			if(player.onBreakable.object_index == objZebraBlock){
				draw_set_alpha(zebraFade);
				draw_sprite(imglines, 0, 0, 0);
			}
		}
	}
}catch(e){}
draw_set_alpha(1)

if(state == "bribery"){
	draw_sprite(imgBriberyModeBackground,0,0,0);
	draw_sprite_stretched(imgbribetitle,0,600,50,230,201);
	draw_rectangle_color(1002,189,1254,478,c_black,c_fuchsia,c_purple,c_aqua,false);
	var s = bribeMonster.nameString +
	" says: Hey, kid! Pay me " 
	+ string(bribeMonster.price) + 
	" $$$ if you want me to stop chasing you!";
	draw_text_ext_transformed_color(1025,250,s,30,212.121,1,1,0,c_purple,c_aqua,c_black,c_fuchsia,1);
	draw_set_halign(fa_middle)
	draw_text_ext_transformed_color(1366/2,384,"$" + removeNumber,30,631,3.9,3.92,0,c_purple,c_black,c_lime,ww.co_deepBlue,1);
	draw_set_halign(fa_left)
}
draw_text_transformed(0, 0, "$ " + string(Money), 4, 4, 0);