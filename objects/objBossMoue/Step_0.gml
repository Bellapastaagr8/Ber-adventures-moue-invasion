if(player.state != "play"){
	return;
}
if(wave == 0){
	animationCD--;
	if(animationCD < 1){
		animationCD = 80;
		image_index++;
		if(image_index >= 7){
			wave = 1;
			floatyMessy("Moue King:Ah... You made it all the out here? I suppose I must give credit to that...Player: I am here to defeat you, Mouse King!",room_width/2,300,c_black,300)
			visible = false;
			instance_create_depth(lane1spawn1.x,lane1spawn1.y,player.depth,objBasicMoue)
			instance_create_depth(lane2spawn1.x,lane2spawn1.y,player.depth,objBasicMoue)
			instance_create_depth(lane3spawn1.x,lane3spawn1.y,player.depth,objBasicMoue)
			instance_create_depth(lane4spawn1.x,lane4spawn1.y,player.depth,objBasicMoue)
			instance_create_depth(lane5spawn1.x,lane5spawn1.y,player.depth,objZebraMoue)
			return;
		}
	}
}


if(wave > 0){
	if(instance_number(objBasicMoue) < 1){
		wave++;
		if(noMoreWaves){
			instance_create_depth(0,0,depth-1000,objYouWin)
			noMoreWaves = false;
		}
		if(wave = 2){
			floatyMessy("Moue King: It's MOUE King, thank you very much. Player: Wow, So polite.  *eyeroll*",room_width/2,300,c_black,280)
			instance_create_depth(lane1spawn1.x,lane1spawn1.y,player.depth,objBasicMoue)
			instance_create_depth(lane2spawn1.x,lane2spawn1.y,player.depth,objBasicMoue)
			instance_create_depth(lane3spawn1.x,lane3spawn1.y,player.depth,objTankMoue)
			instance_create_depth(lane4spawn1.x,lane4spawn1.y,player.depth,objBasicMoue)
		}
		if(wave = 3){
			floatyMessy("Moue King:You're putting up a good fight against my Moue, but I can keep sending stronger ones... MORE MOUE! Player: You know, I don't actually see the difference between Moue and Mouse... Moue King: Moue are deadly, Mice are weak.",room_width/2,300,c_black,280)
			instance_create_depth(lane1spawn1.x,lane1spawn1.y,player.depth,objBasicMoue)
			instance_create_depth(lane2spawn1.x,lane2spawn1.y,player.depth,objBasicMoue)
			instance_create_depth(lane3spawn1.x,lane3spawn1.y,player.depth,objTankMoue)
			instance_create_depth(lane4spawn1.x,lane4spawn1.y,player.depth,objTankMoue)
			instance_create_depth(lane5spawn1.x,lane5spawn1.y,player.depth,objTankMoue)
		}
		if(wave = 4){
			floatyMessy("Moue King: *sigh* your health is getting low already? :o Here... Take some health before I destroy you.  Player: Wait, are you helping me?",room_width/2,300,c_black,300)
			instance_create_depth(lane1spawn1.x,lane1spawn1.y,player.depth,objTankMoue)
			instance_create_depth(lane2spawn1.x,lane2spawn1.y,player.depth,objTankMoue)
			instance_create_depth(lane3spawn1.x,lane3spawn1.y,player.depth,objTankMoue)
			instance_create_depth(lane4spawn1.x,lane4spawn1.y,player.depth,objTankMoue)
			instance_create_depth(lane4spawn1.x,lane4spawn1.y,player.depth,objTankMoue)
			instance_create_depth(lane5spawn1.x,lane5spawn1.y,player.depth,objTankMoue)
			instance_create_depth(lane1spawn1.x,lane1spawn1.y,player.depth,objTankMoue)
			instance_create_depth(HP2_1.x,HP2_1.y,player.depth,objHealth10)
			instance_create_depth(HP1_1.x,HP1_1.y,player.depth,objHealth10)
		}
		if(wave = 5){
			floatyMessy("Moue King: Standard Colosseum rules. Player: Colosseum rules? I'M IN A COLOSSEUM!?! o_O Moue King: And on full record too! :p",room_width/2,300,c_black,280)
			instance_create_depth(lane1spawn1.x,lane1spawn1.y,player.depth,objBasicMoue)
			instance_create_depth(lane2spawn1.x,lane2spawn1.y,player.depth,objBasicMoue)
			instance_create_depth(lane3spawn1.x,lane3spawn1.y,player.depth,objTankMoue)
			instance_create_depth(lane4spawn1.x,lane4spawn1.y,player.depth,objTankMoue)
			instance_create_depth(lane5spawn1.x,lane5spawn1.y,player.depth,objTankMoue)
			instance_create_depth(HP2_1.x,HP2_1.y,player.depth,objHealth20)
			instance_create_depth(HP1_1.x,HP1_1.y,player.depth,objHealth20)
		}
		if(wave = 6){
			floatyMessy("Moue King: check out my awesome Wizard Moue! Player: It's shooting scribbles at me- OW THAT HURTS!",room_width/2,300,c_black,280)
			instance_create_depth(lane1spawn1.x,lane1spawn1.y,player.depth,objWizardMoue)
			instance_create_depth(lane2spawn1.x,lane2spawn1.y,player.depth,objBasicMoue)
			instance_create_depth(lane3spawn1.x,lane3spawn1.y,player.depth,objTankMoue)
			instance_create_depth(lane4spawn1.x,lane4spawn1.y,player.depth,objBasicMoue)
			instance_create_depth(lane5spawn1.x,lane5spawn1.y,player.depth,objTankMoue)
			instance_create_depth(HP2_1.x,HP2_1.y,player.depth,objHealth20)
			instance_create_depth(HP1_1.x,HP1_1.y,player.depth,objHealth20)
		}
		if(wave = 7){
			floatyMessy(" Player: I know you said giving health is 'Standard Colosseum Rules', but this is a lot of health. Moue King: I can stop if you want... Player: Please don't.",room_width/2,300,c_black,280)
			instance_create_depth(lane1spawn1.x,lane1spawn1.y,player.depth,objTankMoue)
			instance_create_depth(lane1spawn1.x,lane1spawn1.y,player.depth,objTankMoue)
			instance_create_depth(lane2spawn1.x,lane2spawn1.y,player.depth,objTankMoue)
			instance_create_depth(lane2spawn1.x,lane2spawn1.y,player.depth,objTankMoue)
			instance_create_depth(lane3spawn1.x,lane3spawn1.y,player.depth,objTankMoue)
			instance_create_depth(lane3spawn1.x,lane3spawn1.y,player.depth,objTankMoue)
			instance_create_depth(lane4spawn1.x,lane4spawn1.y,player.depth,objTankMoue)
			instance_create_depth(lane4spawn1.x,lane4spawn1.y,player.depth,objTankMoue)
			instance_create_depth(HP2_1.x,HP2_1.y,player.depth,objHealth20)
			instance_create_depth(HP1_1.x,HP1_1.y,player.depth,objHealth20)
		}
		if(wave = 8){
			floatyMessy("Player: What's that yellow heal? Moue King: It  ups your max HP. Player: *gasp* Wow, is it my birthday or something?",room_width/2,300,c_black,300)
			instance_create_depth(lane1spawn1.x,lane1spawn1.y,player.depth,objTankMoue)
			instance_create_depth(lane2spawn1.x,lane2spawn1.y,player.depth,objTankMoue)
			instance_create_depth(lane3spawn1.x,lane3spawn1.y,player.depth,objTankMoue)
			instance_create_depth(lane4spawn1.x,lane4spawn1.y,player.depth,objTankMoue)
			instance_create_depth(lane4spawn1.x,lane4spawn1.y,player.depth,objTankMoue)
			instance_create_depth(lane5spawn1.x,lane5spawn1.y,player.depth,objTankMoue)
			instance_create_depth(lane1spawn1.x,lane1spawn1.y,player.depth,objTankMoue)
			instance_create_depth(lane2spawn1.x,lane2spawn1.y,player.depth,objTankMoue)
			instance_create_depth(lane2spawn1.x,lane2spawn1.y,player.depth,objTankMoue)
			instance_create_depth(lane3spawn1.x,lane3spawn1.y,player.depth,objTankMoue)
			instance_create_depth(lane3spawn1.x,lane3spawn1.y,player.depth,objTankMoue)
			instance_create_depth(lane4spawn1.x,lane4spawn1.y,player.depth,objTankMoue)
			instance_create_depth(lane4spawn1.x,lane4spawn1.y,player.depth,objTankMoue)
			instance_create_depth(HP1_1.x,HP1_1.y,player.depth,objHealth20)
			instance_create_depth(HP1_1.x,HP1_1.y,player.depth,objHealth20)
			instance_create_depth(HP1_1.x,HP1_1.y,player.depth,objHealth20)
			instance_create_depth(HP1_1.x,HP1_1.y,player.depth,objHealth20)
			instance_create_depth(HP1_1.x,HP1_1.y,player.depth,objHealth20)
			instance_create_depth(HP1_1.x,HP1_1.y,player.depth,objHealth20)
			instance_create_depth(HP1_1.x,HP1_1.y,player.depth,objMaxHP20)
			player.HP = player.HPMax;
		}
		if(wave = 9){
			floatyMessy("Player: How many moue do you even have?!? Moue King: You'll know if you beat them all! ;)",room_width/2,300,c_black,300)
			instance_create_depth(lane1spawn1.x,lane1spawn1.y,player.depth,objTankMoue)
			instance_create_depth(lane2spawn1.x,lane2spawn1.y,player.depth,objTankMoue)
			instance_create_depth(lane3spawn1.x,lane3spawn1.y,player.depth,objTankMoue)
			instance_create_depth(lane4spawn1.x,lane4spawn1.y,player.depth,objTankMoue)
			instance_create_depth(lane4spawn1.x,lane4spawn1.y,player.depth,objTankMoue)
			instance_create_depth(lane5spawn1.x,lane5spawn1.y,player.depth,objTankMoue)
			instance_create_depth(lane1spawn1.x,lane1spawn1.y,player.depth,objTankMoue)
			instance_create_depth(lane2spawn1.x,lane2spawn1.y,player.depth,objTankMoue)
			instance_create_depth(lane3spawn1.x,lane3spawn1.y,player.depth,objTankMoue)
			instance_create_depth(lane4spawn1.x,lane4spawn1.y,player.depth,objTankMoue)
			instance_create_depth(lane4spawn1.x,lane4spawn1.y,player.depth,objTankMoue)
			instance_create_depth(lane5spawn1.x,lane5spawn1.y,player.depth,objTankMoue)
			instance_create_depth(lane1spawn1.x,lane5spawn1.y,player.depth,objTankMoue)
			instance_create_depth(lane2spawn1.x,lane5spawn1.y,player.depth,objTankMoue)
			instance_create_depth(lane2spawn1.x,lane5spawn1.y,player.depth,objTankMoue)
			instance_create_depth(lane3spawn1.x,lane3spawn1.y,player.depth,objTankMoue)
			instance_create_depth(lane3spawn1.x,lane3spawn1.y,player.depth,objTankMoue)
			instance_create_depth(lane4spawn1.x,lane4spawn1.y,player.depth,objTankMoue)
			instance_create_depth(lane4spawn1.x,lane4spawn1.y,player.depth,objTankMoue)
			instance_create_depth(HP2_1.x,HP2_1.y,player.depth,objHealth10)
			instance_create_depth(HP2_1.x,HP2_1.y,player.depth,objHealth20)
			instance_create_depth(HP2_1.x,HP3_1.y,player.depth,objHealth20)
			instance_create_depth(HP1_1.x,HP3_1.y,player.depth,objHealth10)
			instance_create_depth(HP1_1.x,HP1_1.y,player.depth,objHealth20)
			instance_create_depth(HP1_1.x,HP1_1.y,player.depth,objHealth20)
		}
		
		if(wave = 10){
			floatyMessy("Player: is that a... dog? Moue King: Of course not! Its a hedgehog, can't you tell? Player: Ehh, paint it blue, make it fast, and call it Sonic, then maybe.",room_width/2,300,c_black,300)
			instance_create_depth(lane1spawn1.x,lane1spawn1.y,player.depth,objPorcupineMoue)
			instance_create_depth(HP2_1.x,HP2_1.y,player.depth,objHealth20)
			instance_create_depth(HP1_1.x,HP1_1.y,player.depth,objHealth20)
			instance_create_depth(HP2_1.x,HP2_1.y,player.depth,objHealth20)
			instance_create_depth(HP1_1.x,HP1_1.y,player.depth,objHealth20)
			soundScript(Beatboss);
		}
		if(wave = 11){
			floatyMessy("Moue King: Okay! You've done ten waves! Heres your reward before 10 more waves. Player: How many Waves even are there?",room_width/2,300,c_black,300)
			instance_create_depth(armorSpawn1.x,armorSpawn1.y,player.depth,objHelmet)
			instance_create_depth(lane5spawn1.x,lane5spawn1.y,player.depth,objBasicMoue)
			player.HP = player.HPMax;
			objBossBackground.sprite_index = imgBossBackgroundHedgehog;
		}
		if(wave = 12){
			floatyMessy("Player: What horror is this new moue? Moue King: It's called a Soldier Moue and it will stab you with Poison that murders you. Player: isn't that against the law or something?",room_width/2,300,c_black,300)
			instance_create_depth(lane1spawn1.x,lane1spawn1.y,player.depth,objBasicMoue)
			instance_create_depth(lane2spawn1.x,lane2spawn1.y,player.depth,objBasicMoue)
			instance_create_depth(lane3spawn1.x,lane3spawn1.y,player.depth,objSoldierMeleeMoue)
		}
		if(wave = 13){
			floatyMessy("Moue King: Standard rules for Colosseums state the following: Rule 763: You may have poison weapons from both sides, however make sure you include health.",room_width/2,300,c_black,300)
			instance_create_depth(lane1spawn1.x,lane1spawn1.y,player.depth,objBasicMoue)
			instance_create_depth(lane2spawn1.x,lane2spawn1.y,player.depth,objTankMoue)
			instance_create_depth(lane2spawn1.x,lane4spawn1.y,player.depth,objTankMoue)
			instance_create_depth(lane3spawn1.x,lane3spawn1.y,player.depth,objSoldierMeleeMoue)
			instance_create_depth(HP1_1.x,HP1_1.y,player.depth,objHealth20)
		}
		if(wave = 14){
			floatyMessy("Player: whats Rule 451? Moue King: Never break the Colosseum Rules under any circumstances. Player: Really? Moue King: No but it should be.",room_width/2,300,c_black,300)
			instance_create_depth(lane1spawn1.x,lane1spawn1.y,player.depth,objBasicMoue)
			instance_create_depth(lane2spawn1.x,lane2spawn1.y,player.depth,objTankMoue)
			instance_create_depth(lane2spawn1.x,lane4spawn1.y,player.depth,objTankMoue)
			instance_create_depth(lane3spawn1.x,lane3spawn1.y,player.depth,objSoldierMeleeMoue)
			instance_create_depth(HP1_1.x,HP1_1.y,player.depth,objHealth20)
		}
		if(wave = 15){
			floatyMessy("Player: Don't you have, like, I don't know, admin rule making powers? Moue King: Nope, New rules are made in votes. And no, only Moue may participate.",room_width/2,300,c_black,300)
			instance_create_depth(lane1spawn1.x,lane1spawn1.y,player.depth,objSoldierMeleeMoue)
			instance_create_depth(lane2spawn1.x,lane2spawn1.y,player.depth,objSoldierMeleeMoue)
			instance_create_depth(lane2spawn1.x,lane4spawn1.y,player.depth,objSoldierMeleeMoue)
			instance_create_depth(lane3spawn1.x,lane3spawn1.y,player.depth,objSoldierMeleeMoue)
			instance_create_depth(lane5spawn1.x,lane5spawn1.y,player.depth,objSoldierMeleeMoue)
			instance_create_depth(HP1_1.x,HP1_1.y,player.depth,objHealth20)
		}
		if(wave = 16){
			floatyMessy("Player: Really? You're sending those things that my armor completely blocks? Moue King: Thats not the real danger... >:)",room_width/2,300,c_black,300)
			instance_create_depth(lane1spawn1.x,lane1spawn1.y,player.depth,objBasicMoue)
			instance_create_depth(lane1spawn1.x,lane1spawn1.y,player.depth,objBasicMoue)
			instance_create_depth(lane1spawn1.x,lane1spawn1.y,player.depth,objBasicMoue)
			instance_create_depth(lane1spawn1.x,lane1spawn1.y,player.depth,objBasicMoue)
			instance_create_depth(lane1spawn1.x,lane1spawn1.y,player.depth,objBasicMoue)
			instance_create_depth(lane1spawn1.x,lane1spawn1.y,player.depth,objBasicMoue)
			instance_create_depth(lane1spawn1.x,lane1spawn1.y,player.depth,objBasicMoue)
			instance_create_depth(lane1spawn1.x,lane1spawn1.y,player.depth,objBasicMoue)
			instance_create_depth(lane1spawn1.x,lane1spawn1.y,player.depth,objBasicMoue)
			instance_create_depth(lane1spawn1.x,lane1spawn1.y,player.depth,objBasicMoue)
			instance_create_depth(lane1spawn1.x,lane1spawn1.y,player.depth,objNinjaMoue)
			instance_create_depth(lane1spawn1.x,lane1spawn1.y,player.depth,objBasicMoue)
			instance_create_depth(lane1spawn1.x,lane1spawn1.y,player.depth,objBasicMoue)
			instance_create_depth(HP2_1.x,HP2_1.y,player.depth,objHealth20)
		}
		if(wave = 17){
			floatyMessy("Player: You gonna give me something new to fight soon? Moue king: Good timing! Heres the new moue.",room_width/2,300,c_black,300)
			instance_create_depth(lane1spawn1.x,lane1spawn1.y,player.depth,objMilitaryMoue)
			instance_create_depth(HP1_1.x,HP1_1.y,player.depth,objHealth20)
			instance_create_depth(HP2_1.x,HP2_1.y,player.depth,objHealth10)
			instance_create_depth(HP3_1.x,HP3_1.y,player.depth,objHealth10)
		}
		if(wave = 18){
			floatyMessy("Player: Okay, how can you even MAKE a bullet this big? AND HOW DOES IT COME OUT OF THAT TINY GUN?!? Moue King: I'll never tell! :x",room_width/2,300,c_black,300)
			instance_create_depth(lane1spawn1.x,lane1spawn1.y,player.depth,objMilitaryMoue)
			instance_create_depth(lane2spawn1.x,lane2spawn1.y,player.depth,objMilitaryMoue)
			instance_create_depth(HP1_1.x,HP1_1.y,player.depth,objHealth20)
			instance_create_depth(HP2_1.x,HP2_1.y,player.depth,objHealth10)
			instance_create_depth(HP3_1.x,HP3_1.y,player.depth,objHealth10)
		}
		if(wave = 19){
			floatyMessy("Moue King: Intermission! Player: what? Moue king: Break time! Player: Can I kill them? Moue king: Excuse me?",room_width/2,300,c_black,300)
			instance_create_depth(lane1spawn1.x,lane1spawn1.y,player.depth,objBallerina)
			instance_create_depth(lane1spawn1.x,lane1spawn1.y,player.depth,objBallerina)
			instance_create_depth(lane1spawn1.x,lane1spawn1.y,player.depth,objBallerina)
			instance_create_depth(lane1spawn1.x,lane1spawn1.y,player.depth,objBallerina)
			instance_create_depth(HP1_1.x,HP1_1.y,player.depth,objHealth20)
			instance_create_depth(HP2_1.x,HP2_1.y,player.depth,objHealth10)
			instance_create_depth(HP3_1.x,HP3_1.y,player.depth,objHealth10)
		}
		if(wave = 20){
			floatyMessy("Moue King: You killed my best dancers! Player: Uh- sorry? Moue King: well you should be! >:(",room_width/2,300,c_black,300)
			instance_create_depth(lane1spawn1.x,lane1spawn1.y,player.depth,objNinjaMoue);
			instance_create_depth(lane2spawn1.x,lane2spawn1.y,player.depth,objNinjaMoue);
			instance_create_depth(lane2spawn1.x,lane2spawn1.y,player.depth,objTankMoue);
			instance_create_depth(lane2spawn1.x,lane2spawn1.y,player.depth,objHealth10);
		}
		if(wave = 21){
			floatyMessy("Moue King: I took your suggestion! Player: which one..? Moue King: Meet Sonic! 100.0! Player: 100? Um, I think it goes up to like 5.0. Not 100.0 or even 10.0. Moue King: Really? That's too bad.",room_width/2,300,c_black,300)
			instance_create_depth(lane1spawn1.x,lane1spawn1.y,player.depth,objSonicMoue);
			instance_create_depth(lane2spawn1.x,lane2spawn1.y,player.depth,objHealth20);
			instance_create_depth(HP1_1.x,HP1_1.y,player.depth,objMaxHP20);
			instance_create_depth(HP2_1.x,HP2_1.y,player.depth,objHealth10);
			instance_create_depth(HP3_1.x,HP3_1.y,player.depth,objHealth10);
		}
		if(wave = 22){
			floatyMessy("Moue King: Another more break! Here you go. A potion that should help. Player: Help who? Moue King: You. Don't worry, I uphold the laws. I don't lie. Player: Great.",room_width/2,300,c_black,300)
			instance_create_depth(lane2spawn1.x,lane2spawn1.y,player.depth,objStrengthPotionPerm);
			instance_create_depth(HP1_1.x,HP1_1.y,player.depth,objHealth20);
			instance_create_depth(HP2_1.x,HP2_1.y,player.depth,objHealth10);
			instance_create_depth(HP3_1.x,HP3_1.y,player.depth,objHealth10);
		}
		if(wave = 23){
			floatyMessy("Player: Hey, hang on... Your dancers were human! Moue King: Were they? Player: uh... Wait, really? Moue King: Yep! Player: wow...",room_width/2,300,c_black,300)
			instance_create_depth(lane1spawn1.x,lane1spawn1.y,player.depth,objNinjaMoue);
			instance_create_depth(lane2spawn1.x,lane2spawn1.y,player.depth,objNinjaMoue);
			instance_create_depth(lane2spawn1.x,lane2spawn1.y,player.depth,objTankMoue);
			instance_create_depth(lane2spawn1.x,lane2spawn1.y,player.depth,objHealth10);
		}
		if(wave = 24){
			floatyMessy("Player: How many more waves? Moue King: one more after this one! Player: And then..? Moue King: You get the prize! Player: FINALLY!!! Moue King: Woah, calm down...",room_width/2,300,c_black,300)
			instance_create_depth(lane1spawn1.x,lane1spawn1.y,player.depth,objNinjaMoue);
			instance_create_depth(lane1spawn1.x,lane1spawn1.y,player.depth,objNinjaMoue);
			instance_create_depth(lane1spawn1.x,lane1spawn1.y,player.depth,objNinjaMoue);
		}
		if(wave = 25){
			floatyMessy("Moue King: Final boss! Player: Yay- oh my gosh its a dripping toxic waste thing omg omg omg... am i about to die? Moue King: ...maybe?",room_width/2,300,c_black,300)
			instance_create_depth(lane1spawn1.x,lane1spawn1.y,player.depth,objToxicMoueMiniBossToxicMoueMiniBoss);
			instance_create_depth(HP2_1.x,HP2_1.y,player.depth,objHealth20);
			instance_create_depth(HP3_1.x,HP3_1.y,player.depth,objHealth20);
			instance_create_depth(lane5spawn1.x,lane5spawn1.y,player.depth,objStrengthPotionPerm);
		}
		if(wave = 26){
			floatyMessy("Moue King: You won! Player: yay do I get the Prize? Moue King: yeah, just whack that trophy. Player: whack it? Moue King: Don't question it. It makes programming easier. Player: ...? Nevermind...",room_width/2,300,c_black,300);
			instance_create_depth(lane5spawn1.x,lane5spawn1.y,player.depth,objTrophy);
		}
		if(wave=27){
			noMoreWaves = true; 
		}
		
	}
}






