function playerInput(){
xIn = 0;
yIn = 0;
//In = Input;
pressedJump = false;
holdingJump = false;
releasedJump = false;
pressedCape = keyboard_check_pressed(ord("Q"))
if(keyboard_check(vk_left) || keyboard_check(ord("A"))){
	xIn = xIn - 1;

}

if(keyboard_check(vk_right) || keyboard_check(ord("D"))){
	xIn = xIn + 1;
}

if(keyboard_check(vk_down) || keyboard_check(ord("S"))){

	yIn = yIn + 1;
}

if(keyboard_check(vk_up) || keyboard_check(ord("W"))){

	yIn = yIn - 1;
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

holdingJump = keyboard_check(vk_space);
pressedJump = keyboard_check_pressed(vk_space);
pressedEnter = keyboard_check_pressed(vk_enter);
clickMouse = mouse_check_button_pressed(mb_left);
clickRightMouse = mouse_check_button_pressed(mb_right);
pressedPause = keyboard_check_pressed(vk_escape);
pressedDebug = keyboard_check_pressed(ord("K"))
killEnemy = keyboard_check_pressed(ord("M"))
}

