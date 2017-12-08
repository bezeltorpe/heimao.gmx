//Player Initialization

///Variables for Movement
mspd = 1.5; // maximum movement speed

timer = 0;
playerState = 0;
canMove = true;
facingDir = 0;
runInput = false;
image_speed = 0.15;
vx = 0;
vy = 0;
xPosPlayer = obj_player.sprite_xoffset;
yPosPlayer = obj_player.sprite_yoffset;

xExcess = 0;
yExcess = 0;

sitTimer = 0;
sitResult = 0;
layRelease = false;

whichFoot = true;
drawFootprint = false;
drawSnowAngel = false;

drawCatShadow = true;
