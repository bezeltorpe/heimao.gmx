if (keyUp + keyDown + keyLeft + keyRight)
{
    playerState = State.AngelDown
}
// We want laying up to override
if (sitResult == 1)
{
    playerState = State.LayingUp;
}

