var centerDistance = distance_to_point(obj_player.x, obj_player.y);
//Camera Script
var dirToPlayer = point_direction(x, y, obj_player.x, obj_player.y);

if (obj_player.playerState = 3)
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
    x = lerp(x, obj_player.x, 0.1);
    y = lerp(y, obj_player.y, 0.1);
    }
