if(selected == true && player.clickMouse == true && player.Money >= cost){
	player.Money -= cost;
	if(sprite_index == imgExitShopUpgrades){
        player.state = "play";
		with(objShopUpgrades){ instance_destroy(); }
		with(objStoreContainments){ instance_destroy(); }
		with(objShopKeeperUpgrades){ instance_destroy(); }
		camera_set_view_target(view_camera[0], player);
    }
	if(sprite_index == imgScrollOfTwinJumps){
		player.jumpsMax = 2;
		player.confused = true;
	}
		
	if(sprite_index == imgPotionOfMoreJumps){
		player.jumpsMax++;
		player.confused = false;
	}
	
	if(sprite_index == imgPotionOfQuickerHealing){
		player.HPHealTime += .001
	}
	if(sprite_index == imgSpeechBubbleStore){
		player.invisibleEnergy = player.invisibleEnergyMax;
	}
	
	if(sprite_index == imgPotionOfHigherJumping){
		player.jumpPower -= 1;
	}
	if(sprite_index == imgCapeOfInvisibilaty){
		player.hasCape = true;
	}
	if(sprite_index == imgPotionOfDefense){
		player.armorHits = 21;
		player.purSkin = true;
		
	}
	player.onPlat = noone;
	instance_destroy();
	
}