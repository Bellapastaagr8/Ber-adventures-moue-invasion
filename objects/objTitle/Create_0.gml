enum Difficlulty{easy,medium,hard};
difficulty = Difficlulty.medium;
player.state = States.title;
startButton = instance_create_depth(551,635,depth-100,objStartButton);
EasyButton = instance_create_depth(200,340,depth-100,objEasyButton);
MediumButton = instance_create_depth(617,340,depth-100,objMediumButton);
MediumButton.image_index = 1;
HardButton = instance_create_depth(987,340,depth-100,objHardButton);