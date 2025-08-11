if(isBroken){
	return;
}
if(sprite_index == imgMoueCar){
	soundScript(CarBroken);
	show_debug_message("hi")
}
isBroken = true;
image_index = 1;
objStuffBroken.brokenStuffCount += amount;
objStuffBroken.brokenStuffCost += cost;