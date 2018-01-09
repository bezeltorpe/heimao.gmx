var centerDistance = distance_to_point(obj_camera.x, obj_camera.y);
//Camera Script
var dirToPlayer = point_direction(obj_camera.x, obj_camera.y, x, y);

if (self.playerState = 3)
    {
    if (centerDistance < 8)
        {
        obj_camera.speed = floor(centerDistance * 4 / 60);
        obj_camera.direction = dirToPlayer;
        }
    else
        {
        obj_camera.speed = floor(centerDistance * 8 / 60);
        obj_camera.direction = dirToPlayer;
        }
    }
else
    {
    obj_camera.speed = 0;
    obj_camera.x = floor(lerp(obj_camera.x, x, 0.1));
    obj_camera.y = floor(lerp(obj_camera.y, y, 0.1));
    }
