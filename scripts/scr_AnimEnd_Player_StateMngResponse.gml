//Player State Manager Chain... Response? Thing?

if (playerState == 3)
    {
    whichFoot = !whichFoot; 
    drawFootprint = true;
    }

if (playerState == 4)
    {
    playerState = 5;
    }

if (playerState == 6)
    {
    playerState = 7;
    drawSnowAngel = true;
    }

if (playerState == 8)
    {
    playerState = 9;
    drawSnowAngel = true;
    }

if (playerState = 10)
    {
    playerState = 7;
    drawSnowAngel = false;
    }

if (playerState = 11)
    {
    playerState = 5;
    }

if (playerState == 12 || playerState == 13)
    {
    playerState = 0;
    canMove = true;
    }
