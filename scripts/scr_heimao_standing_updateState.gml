/*
    Transitions to:
        1. Running
        2. Sitdown
        3. Interacting - TODO
*/

// Check if running
if ((xDir != 0 || yDir != 0) && canMove)
{
    runInput = true;
    playerState = State.Running;
}

// Check for sitdown
if (sitResult == 1)
{
    playerState = State.SittingDown;
}
