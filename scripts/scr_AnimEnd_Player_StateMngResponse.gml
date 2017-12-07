//Player State Manager Chain... Response? Thing?

if (global.playerState == 3)
    {
    global.whichFoot = !global.whichFoot; 
    global.drawFootprint = true;
    }

if (global.playerState == 4)
    {
    global.playerState = 5;
    }

if (global.playerState == 6)
    {
    global.playerState = 7;
    global.drawSnowAngel = true;
    }

if (global.playerState == 8)
    {
    global.playerState = 9;
    global.drawSnowAngel = true;
    }

if (global.playerState = 10)
    {
    global.playerState = 7;
    global.drawSnowAngel = false;
    }

if (global.playerState = 11)
    {
    global.playerState = 5;
    }

if (global.playerState == 12 || global.playerState == 13)
    {
    global.playerState = 0;
    global.canMove = true;
    }
