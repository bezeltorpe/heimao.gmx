/*
    Transitions to:
        1. Standing
        2. Interacting - TODO
*/

// Check if running
if ((xDir == 0 && yDir == 0))
{
    runInput = false;
    playerState = State.Standing;
}

// Check for sitdown
if (sitResult == 1)
{
    playerState = State.SittingDown;
}
