show_debug_message("Hello Nice to meet you I like making houses(The little ones)");
name = ["A", "U", "D", "R", "E", "Y", "", "I", "S", "", "M", "Y", "", "N", "A", "M", "E"];
coinsTaken = ds_list_create();
for(var i=0; i<array_length(name); i++){
    show_debug_message(name[i] + "!");
}
deaths = 1000;
player.rXIn = 0;
player.rYIn = 0;
stickDir = 1;
difficulty = noone;
getPresent = false;
hasMoueTrophy = false;
room_speed = 60;
win = false;
HPHealTime = .001;
poisonTime = 0;
zebraTime = 0;
CouchBox = false;
zebraTimeMax = 60*3;
timesWallCrushedMe = 0;
music = true;
poisonDamage = 0;
mouseLastX = mouse_x;
mouseLastY = mouse_y;
mouseMoved = false;
randomize();
xIn = 0;
yIn = 0;
orangeTime = 0;
orangeTimeMax = 60*3;
donutSpeedTime = 0;
donutSpeedTimeMax = 60*2;
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
hasStick = false;
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