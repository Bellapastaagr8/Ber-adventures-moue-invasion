draw_self();
draw_rectangle_color(x,y,x+sprite_width+200,y+sprite_height,c_black,c_black,c_black,c_black,false)
var md = x+sprite_width+200 - x;
var w = md * (coinsCollected / coinsCollectedMax);
draw_rectangle_color(x+5,y+5,x+w,y+sprite_height-5,ww.co_deepBlue,ww.co_deepBlue,ww.co_deepBlue,ww.co_deepBlue,false)