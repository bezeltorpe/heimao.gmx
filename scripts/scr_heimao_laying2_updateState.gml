if (keyUp + keyDown + keyLeft + keyRight)
{
    playerState = State.AngelDown
    audio_play_sound(sfx_heimao_angel, 5, false);
}
// We want laying up to override
if (sitResult == 1)
{
    playerState = State.LayingUp;
    audio_play_sound(sfx_heimao_situp, 5, false);
}

