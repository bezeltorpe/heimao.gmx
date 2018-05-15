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
    audio_play_sound(sfx_heimao_step, 5, false);
    drawFootprint = true;
}

// Check for sitdown
if (sitResult == 1)
{
    //playerState = State.SittingDown;
    canMove = false;
}
