if(player.mouseMoved){
		x = mouse_x;
		y = mouse_y;
}else{
	x += (player.rXIn*5);
	y += (player.rYIn*5);
}
if(x<camera_get_view_x(view_camera[0])){
	x=camera_get_view_x(view_camera[0]);
}
if(x>camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])){
	x=camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])
}
if(y<camera_get_view_y(view_camera[0])){
	y=camera_get_view_y(view_camera[0]);
}
if(y>camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])){
	y=camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])
}
//mouseMoves();
/*x = placementX;
y = placementY;*/