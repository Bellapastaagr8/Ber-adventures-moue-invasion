event_inherited()
doesPoison = false;
poisonTime = 60*5;
poisonTimeMax = poisonTime;
poisonDamage = 2;
hurtsToTouch = false;
destroyWhenTouched = false;
destroyThis = false;
doesShoot = false;
shotType = objMaskedFlowerBullet;
shotCDMax = 60 * 3;
shotCDLow = 30;
shotCD = shotCDMax * 2;
moveSpeedMin = 1;
moveSpeed = moveSpeedMin;
bombWake = noone;
moveSpeedMax = 10;
grav = 1;
dir = 1;
xSpeed = 0;
wakeUpDis = 200
ySpeed = 0;
homing = false;
xPush = 0;
yPush = 0;
thinkCD = 0;
thinkCDMax = 60;
moveType = AI.still;
isLeader = false;
isFollower = false;
leader = noone;
turnWhenBumpWallChance = 50;
turnWhenBumpFloorChance = 0;
turnWhenBumpPlayer = true;
turnNotFall = false;
canBribe = true
onGround = false;
jumpPow = -10;
jumpChanceOnThink = 100;
jumpFromAir = false;
burnTime = 0;
burnTimeMax = 60 * 5;
burnOnThinkChance = 10;
stunTime = 120;
jumpLower = false;
jumpPowerRemeber = jumpPow;
head = 20*abs(image_yscale)
tall = -64;
fat = 31;
fallOnHeadBump = true;
clickRadius = ceil(sprite_width/2);
price = 100;
typeString = "monster";
nameString = pickName();
backAndForthCD = 0
backAndForthCDMax = backAndForthCD;
backAndForth = false;
adBlockTesting = false;
vanish = false;
vanishcdmax = 100*30;
vanishcdmin = 1
vanishcd = vanishcdmax;
burnOnHit = 0;
ForeverAnt = false;
HP = irandom_range(10,60)
isHibernating = false;
wakeWhenPlayerClose = false;
blocksPlayer = false;
StandOnPlatform = false;
isMoue = false;