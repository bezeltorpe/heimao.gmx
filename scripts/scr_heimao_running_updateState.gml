/*
    Transitions to:
        1. Standing
        2. SittingDown
        3. Interacting - TODO
*/

// Check if Standing
if ((xDir == 0 && yDir == 0))
{
    playerState = State.Standing;
    whichFoot = !whichFoot;
    vx = 0;
    vy = 0;
}

// Check for sitdown
if (sitResult == 1)
{
    playerState = State.SittingDown;
    canMove = false;
}
