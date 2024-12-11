draw_self();

if(cost > 0 && selected){
	draw_set_halign(fa_center);
	//draw_text_transformed(x, y, "$ " + string(cost), 3, 3, 0);
	draw_text_transformed_color(x, y + priceMod, "$ " + string(cost), 3, 3, 0, c_blue, c_aqua, c_teal, c_fuchsia, 1);
	draw_set_halign(fa_left);
}

if(selected){
//	draw_set_halign(fa_center);
	var maxwidth = 1200/3;
	var linedown = 0;
	var w = (string_width(desc) * 1.5)/2;
	if(w > maxwidth){
		w = maxwidth;
	}
	while(x-w + linedown < 0){
		linedown++;
	}
	draw_text_ext_transformed_color(x-w+linedown, y + descMod, desc, 36/2, maxwidth, 1.5, 1.5, 0, ww.co_magenta,ww.co_magenta,ww.co_magenta,ww.co_magenta,1);
	
	draw_text_transformed(1366/2, 751, finePrint, .5, .5, 0);
	
	draw_set_halign(fa_left);
}

//\\//\\ //\\ |||
//\\/\\