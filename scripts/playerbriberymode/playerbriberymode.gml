function playerbriberymode(){
	if(player.state != "bribery"){
		return;
	}
	if(player.clickRightMouse){
		player.state = "play";
		return;
	}
	instance_create_depth(mouse_x,mouse_y,depth,effCoin)
	if(player.pressedNumber == "-"){
		if(string_length(player.removeNumber)> 0){
			player.removeNumber = string_delete(player.removeNumber, string_length(player.removeNumber), 1);
		}
	}else if(player.pressedNumber != ""){
		player.removeNumber = player.removeNumber + player.pressedNumber;
	}
	if(player.pressedEnter && player.removeNumber != ""){
		var cost = real(player.removeNumber);
		show_debug_message(cost)
		if(cost <= player.Money){
			player.Money -= cost;
			bribeMonster.price -= cost;
			if(bribeMonster.price <= 0){
				var t = instance_create_depth(bribeMonster.x,bribeMonster.y,bribeMonster.depth,effMonsterGone);
				t.sprite_index = bribeMonster.sprite_index;
				instance_destroy(bribeMonster);
			}
			player.state = "play";
			return;
		}
	}
}
//\\ //\\ \|'$'|/