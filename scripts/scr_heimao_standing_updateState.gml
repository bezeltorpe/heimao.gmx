/*
    Transitions to:
        1. Running
        2. SittingDown
        3. Interacting - TODO
*/

// Check if running
if ((xDir != 0 || yDir != 0) && canMove)
{
    playerState = State.Running;
    audio_play_sound(sfx_heimao_step, 5, false);
}

// Check for sitdown
if (sitResult == 1)
{
    playerState = State.SittingDown;
    audio_play_sound(sfx_heimao_sit, 5, false);
}
