player.Money = player.Money + value;
with(objMoneyGiverBar){
	coinsCollected+=other.value;
}
with(objCoinGiver){
	coinsCollected+=other.value;
}
if(onlyOnce){
	if(room != Room15 && room != Room19){
		ds_list_add(player.coinsTaken,x)
	}
	if(object_index == objMaxHP5 || object_index == objMaxHP10 || object_index == objMaxHP20 || object_index == objMaxHP1){
		if(room == Room15 || room == Room19){
			ds_list_add(player.coinsTaken,x)
		}
	}
}
show_debug_message(ds_list_size(player.coinsTaken));
if(sprite_index == imgIceCubeHealing){
	soundScript(iceCubeFillLevelWater);
	player.waterTime = 4001;
	player.waterLevel = room_height;
}
if(sprite_index == imgMech){
	player.mechTime = player.mechTimeMax;
	soundScript(Mechsuitgrab);
}
if(sprite_index == imgWolfSummonerScroll){
	instance_create_depth(player.x,player.y,player.depth-1,objWolf);
}
if(sprite_index == imgHealth10){
	if(player.HP >= player.HPMax-9){
		player.HP = player.HPMax;
		instance_destroy();
	}else{
		player.HP += 10;
	}
}
if(sprite_index == imgMoneyGiver){
	effect_create_depth(depth,ef_explosion,x,y,2,c_orange);
	effect_create_depth(depth,ef_explosion,x,y,1,c_red);
}
if(sprite_index == imgHealth20){
	if(player.HP >= player.HPMax-19){
		player.HP = player.HPMax;
		instance_destroy();
	}else{
		player.HP += 20;
	}
}
if(sprite_index == imgMaxHP20){
	player.HPMax += 20;
	value = 0;
	player.HP = player.HPMax;
}
if(sprite_index == imgMaxHP10){
	player.HPMax += 10;
	player.HP = player.HPMax;
	value = 0;
}
if(sprite_index == imgMaxHP5){
	player.HPMax += 5;
	player.HP = player.HPMax;
	value = 0;
}
if(sprite_index == imgMaxHP1){
	player.HPMax += 1;
	value = 0;
	player.HP++;
}
if(sprite_index == imgHelmet){
	value = 0;
	player.armor += 5;
	player.hasHelmet = true;
	
}
if(sprite_index == imgStrengthPotionPerm){
	value = 0;
	player.armor += 5;
	
}
	soundScript(Collectcoin)
instance_destroy();




