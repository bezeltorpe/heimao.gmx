if (xDir != 0 && yDir != 0)
{
    vx = ((xDir  / sqrt(2)) * mspd);
    vy = ((yDir  / sqrt(2)) * mspd);
}
else
{
    vx = (xDir * mspd);
    vy = (yDir * mspd);
}
