show_debug_message("Hello Nice to meet you I like making houses(The little ones)");
name = ["A", "U", "D", "R", "E", "Y", "", "I", "S", "", "M", "Y", "", "N", "A", "M", "E"];
coinsTaken = ds_list_create();
for(var i=0; i<array_length(name); i++){
    show_debug_message(name[i] + "!");
}
stickDir = 1;
difficulty = noone;
room_speed = 60;
HPHealTime = .001;
poisonTime = 0;
music = true;
poisonDamage = 0;
randomize();
xIn = 0;
yIn = 0;
//In = Input;
pressedJump = false;
holdingJump = false;
releasedJump = false;
efPartOneLast = false;
//Test below
//touchingMovingPlatform = false;
//Test above
confused = false;
purSkin = false;
armorHits = 0;
xSpeed = 0;
ySpeed = 0;
xPush = 0;
yPush = 0;
walkSpeed = 8;
onLadder = false;
onPlat = noone;
jumpPower = -18;
jumps = 1;
jumpsMax = 1;
width = 20;
head = -58;
coyoteTime = 0;
leader = noone;
depth = -100;
mechWidth = 44;
mechHeight = -112;
hurtTime = 0;
hurtTimeMax = 60;
hasStick = true;
stickCD = 45;
stickCDMax = stickCD;
stickAnimation = 0;
dir = 0;
armor = 0;
hasHelmet = false;
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
onBreakable = noone;
onPlat = noone;


state = "play";
next_room = noone;
fireworksTime = 0;

currentlyBurned = false;

currentlyShocked = false;

room2notcheat = false;


downKeyPressed = 0;


clickMouse = false;
debugPossible = true;
debugMode = false;
killEnemy = false;
gameOverTime = 0;

//////////
Money = 250;
/////////
onLadder = false;
climbing = 0;

openShop = false;

HPMax = 74;
HP = HPMax;


hasCape = false;
isInvisible = false;
invisibleEnergy = 60 * 20;
invisibleEnergyMax = invisibleEnergy;

bribeMonster = noone;

zebraFade = 1;
zebraFadeDir = -1;
removeNumber = "";

waterLevel = room_height;
waterTime = 0;
efPartOne = false;
mechTime = 0;
mechTimeMax = 60*60;
instance_create_depth(0,0,depth-1,objTitle);
musicScript();
playerInput();