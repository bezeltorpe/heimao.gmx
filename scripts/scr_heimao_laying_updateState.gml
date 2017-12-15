if (keyUp + keyDown + keyLeft + keyRight)
{
    playerState = State.AngelUp
}
// We want laying up to override
if (sitResult == 1)
{
    playerState = State.LayingUp;
}

