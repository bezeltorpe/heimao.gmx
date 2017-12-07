//Player Initialization
var timer, playerState, canMove, facingDir, runInput, xPlayerNext, yPlayerNext;
var sitTimer, sitResult, layRelease;
var whichFoot, drawFootprint;
var drawCatShadow;
var drawSnowAngel;

global.timer = 0;
global.playerState = 0;
global.canMove = true;
global.facingDir = 0;
global.runInput = false;
image_speed = 0.15;
global.xPlayerNext = obj_player.x;
global.yPlayerNext = obj_player.y;

global.sitTimer = 0;
global.sitResult = 0;
global.layRelease = false;

global.whichFoot = true;
global.drawFootprint = false;
global.drawSnowAngel = false;

global.drawCatShadow = true;
