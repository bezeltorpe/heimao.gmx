/*
*   Heimao Initialization. Additional states/persistent variables go here.
*/

/// Player state declaration
enum State
{
    Standing,           // 0
    Running,            // 3
    SittingDown,        // 4
    Sitting,            // 5
    LayingDown,         // 6
    Laying,             // 7
    Laying2,            // 9
    AngelUp,            // 8
    AngelDown,          // 10
    SittingUp,          // 11
    StandingUp,         // 12
    LayingUp            // 13
}

// State initialization
playerState = State.Standing;
persistent = true;

// Map Zones
enum mapZone
{
    Nexus,
    East,
    West,
    North,
    South,
    Under,
    Other
}

//Zone initialization
global.currentMapZone = mapZone.Other;
global.prevMapZone = mapZone.Other;

// Create Inventory
inventory = instance_create(0,0,heimao_inventory);
(inventory).persistent = true;
(inventory).depth = -1000;

// BGM Sync Groups
global.bgmNexus = audio_create_sync_group(true);
audio_play_in_sync_group(global.bgmNexus, mus_home_bass);
audio_sound_gain(mus_home_bass, 1, 250);
audio_play_in_sync_group(global.bgmNexus, mus_home_melody);
audio_sound_gain(mus_home_melody, 0, 0);

// BGM initialization
changeBGM = false;

///Variables for Movement
mspd = 1.5;
canMove = true;
facingDir = 0;
runInput = false;
image_speed = 0.15;
vx = 0;
vy = 0;
xDir = 0;
yDir = 0;
xPosPlayer = heimao_object.sprite_xoffset;
yPosPlayer = heimao_object.sprite_yoffset;

// Additional global state-related variables
timer = 0;
xExcess = 0;
yExcess = 0;

sitTimer = 0;
sitResult = 0;
layRelease = false;

whichFoot = true;
drawFootprint = false;
drawSnowAngel = false;

drawCatShadow = true;

// Dumb preinitialization that we have to do
keyInventory = false;
