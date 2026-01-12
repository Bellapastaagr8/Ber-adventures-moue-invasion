x = 0;
y = 0;
player.win = true;
if(player.getPresent){
	instance_create_depth(933, 62, depth-1, objMouePlush);
}
if(player.hasMoueTrophy){
	instance_create_depth(760, 123, depth-1, objGoldStatueFullSize);
}
if(player.CouchBox){
	instance_create_depth(220,520,depth-1,objEndGameChair);
}