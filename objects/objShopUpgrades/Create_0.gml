camera_set_view_target(view_camera[0], id);
player.state = "shop";
text = "";
var s = instance_create_depth(1150, 660, depth-1, objStoreContainments);
s.cost = 0;
s.desc = "Forget it, I want some ice cream.";
s.sprite_index = imgExitShopUpgrades;
s.descMod = -100;
if(!player.hasCape){
	s = instance_create_depth(480, 430, depth-1, objStoreContainments);
	s.cost = 50;
	s.desc = "Makes you invisible!*";
	s.finePrint = "*Works best in forests, may smell."
	s.sprite_index = imgCapeOfInvisibilaty;
	s.image_xscale = 4; s.image_yscale = 6;
	s.priceMod = -170;
	s.descMod = 100;
}else{
	if(player.invisibleEnergy < player.invisibleEnergyMax){
		s = instance_create_depth(1111, 400, depth-1, objStoreContainments);
		s.cost = ceil((player.invisibleEnergyMax - player.invisibleEnergy ) / 3.1);
		s.desc = "";
		s.sprite_index = imgSpeechBubbleStore;
		s.image_xscale = 4; s.image_yscale = 6;
		s.priceMod = -170;
		s.descMod = 100;
	}
}

if(player.jumpsMax >= 2){
	if(player.jumpsMax == 2){
		s = instance_create_depth(129, 570, depth-1, objStoreContainments);
		s.cost = 800;
		s.desc = "Want more than a double jump? A triple jump? Behold- -the tri jumps!";
		s.sprite_index = imgPotionOfMoreJumps;
		s.image_xscale = 3; s.image_yscale = 3;
		s.priceMod = -100;
		s.descMod = 60;
	}
}else{
	if(player.jumpsMax == 1){
	s = instance_create_depth(129, 580, depth-1, objStoreContainments);
	s.cost = 501;
	s.desc = "Learn How To Jump Twice!*";
	s.finePrint = "*Confusion and brain damage may follow. No refunds."
	s.sprite_index = imgScrollOfTwinJumps;
	s.image_xscale = 3; s.image_yscale = 3;
	s.priceMod = -100;
	s.descMod = 60;
	}
}

s = instance_create_depth(118, 190, depth-1, objStoreContainments);
s.cost = 20;
s.desc = "Give yourself a new layer of armor!*";
s.finePrint = "*Skin may turn purple."
s.sprite_index = imgPotionOfDefense;
s.image_xscale = 3; s.image_yscale = 3;
s.priceMod = -75;

s = instance_create_depth(117, 270, depth-1, objStoreContainments);
s.cost = 25;
s.desc = "Get a cut you don't want to waste a Bandage on? Or a bruise that you don't have time for? Fear not! This potion will speed up the process of auto-healing!";
s.sprite_index = imgPotionOfQuickerHealing;
s.image_xscale = 3; s.image_yscale = 3;
s.priceMod = -75;

s = instance_create_depth(122, 362, depth-1, objStoreContainments);
s.cost = 21;
s.desc = "Tired of platforming? Take this elixer and up your jump height!";
s.sprite_index = imgPotionOfHigherJumping;
s.image_xscale = 4; s.image_yscale = 4;
s.priceMod = -75;

s = instance_create_depth(121, 435, depth-1, objStoreContainments);
s.cost = 29;
s.desc = "Ever wish you could run faster? Take this and run faster then ever before.";
s.sprite_index = imgPotionOfQuickerRunning;
s.image_xscale = 3; s.image_yscale = 3;
s.priceMod = -75;

s = instance_create_depth(121+323+600-89, 435+18+3, depth-1, objShopKeeperUpgrades);
