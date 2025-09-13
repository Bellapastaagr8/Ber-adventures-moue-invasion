function playerInput(){
	gamepadID = 0;
    var gp_num = gamepad_get_device_count();
    for (var i = 0; i < gp_num; i++;) {
        if gamepad_is_connected(i) {
            gamepadID = i;
        }
    }
xIn = 0;
yIn = 0;
rXIn = 0;
rYIn = 0;
mouseMoved = (window_mouse_get_x() != mouseLastX) || (window_mouse_get_y() != mouseLastY);
mouseLastX = window_mouse_get_x();
mouseLastY = window_mouse_get_y();
//In = Input;
pressedJump = false;
holdingJump = false;
releasedJump = false;
pressedCape = keyboard_check_pressed(ord("Q"))
if(keyboard_check(vk_left) or keyboard_check(ord("A")) or
gamepad_button_check(gamepadID, gp_padl) or
gamepad_axis_value(gamepadID, gp_axislh) < -.5){
	xIn = xIn - 1;

}
if(gamepad_axis_value(gamepadID, gp_axisrh) < -.5){
	rXIn = rXIn - 1;
}
if(keyboard_check(vk_right) || keyboard_check(ord("D")) or
gamepad_button_check(gamepadID, gp_padr) or
gamepad_axis_value(gamepadID, gp_axislh) > .5){
	xIn = xIn + 1;
}
if(gamepad_axis_value(gamepadID, gp_axisrh) > .5){
	rXIn = rXIn + 1;
}
if(keyboard_check(vk_down) || keyboard_check(ord("S")) or
gamepad_button_check(gamepadID, gp_padd) or
gamepad_axis_value(gamepadID, gp_axislv) > .5){

	yIn = yIn + 1;
}
if(gamepad_axis_value(gamepadID, gp_axisrv) > .5){
	rYIn = rYIn + 1;
}
if(keyboard_check(vk_up) || keyboard_check(ord("W")) or
gamepad_button_check(gamepadID, gp_padu) or
gamepad_axis_value(gamepadID, gp_axislv) < -.5){

	yIn = yIn - 1;
}
if(gamepad_axis_value(gamepadID, gp_axisrv) < -.5){
	rYIn = rYIn - 1;
}
if(confused){
	xIn*=-1;
}
pressedNumber = ""
if(keyboard_check_pressed(ord("1"))){ pressedNumber = "1";}
if(keyboard_check_pressed(ord("3"))){ pressedNumber = "3";}
if(keyboard_check_pressed(ord("2"))){ pressedNumber = "2";}
if(keyboard_check_pressed(ord("4"))){ pressedNumber = "4";}
if(keyboard_check_pressed(ord("5"))){ pressedNumber = "5";}
if(keyboard_check_pressed(ord("6"))){ pressedNumber = "6";}
if(keyboard_check_pressed(ord("7"))){ pressedNumber = "7";}
if(keyboard_check_pressed(ord("8"))){ pressedNumber = "8";}
if(keyboard_check_pressed(ord("9"))){ pressedNumber = "9";}
if(keyboard_check_pressed(ord("0"))){ pressedNumber = "0";}
if(keyboard_check_pressed(ord("P"))){objBossMoue.image_index = 7;}
if(keyboard_check_pressed(vk_backspace)){ pressedNumber = "-";}

holdingJump = keyboard_check(vk_space) or gamepad_button_check(gamepadID, gp_face1);
pressedJump = keyboard_check_pressed(vk_space) or gamepad_button_check_pressed(gamepadID, gp_face1);
pressedEnter = keyboard_check_pressed(vk_enter) or gamepad_button_check_pressed(gamepadID, gp_start);
clickMouse = mouse_check_button_pressed(mb_left) || 
		gamepad_button_check_pressed(gamepadID,gp_shoulderr) || 
		gamepad_button_check_pressed(gamepadID,gp_shoulderrb) || 
		gamepad_button_check_pressed(gamepadID,gp_shoulderl);
clickRightMouse = mouse_check_button_pressed(mb_right);
pressedPause = keyboard_check_pressed(vk_escape);
pressedDebug = keyboard_check_pressed(ord("K"))
killEnemy = keyboard_check_pressed(ord("M"))

pressedStick = (keyboard_check_pressed(ord("E")) or gamepad_button_check(gamepadID, gp_face3));
}



