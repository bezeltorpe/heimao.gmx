var centerDistance = distance_to_point(heimao_object.x, heimao_object.y);
//Camera Script
var dirToPlayer = point_direction(x, y, heimao_object.x, heimao_object.y);

if (heimao_object.playerState = 3)
    {
    if (centerDistance < 8)
        {
        speed = centerDistance * 4 / 60;
        direction = dirToPlayer;
        }
    else
        {
        speed = centerDistance * 8 / 60;
        direction = dirToPlayer;
        }
    }
else
    {
    speed = 0;
    x = lerp(x, heimao_object.x, 0.1);
    y = lerp(y, heimao_object.y, 0.1);
    }
