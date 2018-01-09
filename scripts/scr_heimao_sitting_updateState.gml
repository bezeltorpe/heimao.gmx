if (sitResult == 1)
{
    playerState = State.StandingUp;
}
else if (sitResult == 2)
{
    playerState = State.LayingDown;
    audio_play_sound(sfx_heimao_angelflop, 5, false);
}
