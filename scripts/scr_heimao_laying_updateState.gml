if (keyUp + keyDown + keyLeft + keyRight)
{
    playerState = State.AngelUp
    audio_play_sound(sfx_heimao_angel, 5, false);
}
// We want laying up to override
if (sitResult == 1)
{
    playerState = State.LayingUp;
}

