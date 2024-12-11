function soundScript(s){
	if(player.music == false){
		return;
	}
	audio_play_sound(s,10,false);
}
function musicScript(){
	if(player.music == false){
		return;
	}
	var song = noone;
	if(room == Room1 || room = Room3Hive || room = Room4){
		song = firstMusic;
	}
	if(room == Room2Climb || room = Room5 || room = Room6){
		song = FirstRecorded;
	}
	if(player.state == States.deadScreen){
		song = DeadScreenNoise;
	}
	if(player.state == "shop"){
		song = HeysoIgotmoremusicdonehereitishopeitsgood;
	}
	
	
	if(player.state == States.title || player.state = States.pause || player.state = "next_room" || player.state = States.dead){
		song = noone;
	}
	
	if(song != noone){
		audio_stop_all();
		audio_play_sound(song,11,true);
	}else{
		audio_stop_all();
	}
	
}