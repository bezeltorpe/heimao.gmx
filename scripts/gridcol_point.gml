///gridcol_point(x,y)

//Determines if the given coordinates collide with a wall - much easier then the quadrant_rectangle!

var tx = argument0 mod 32;
var ty = argument1 mod 32;
var col=false;

switch (obj_player.colGrid[# argument0 div 32, argument1 div 32]){   
    case 2:     col = (tx >= ty);       break;      // 4 Slopes
    case 3:     col = (tx <= ty);       break;
    case 1:     col = (31-tx >= ty);    break;
    case 4:     col = (31-tx <= ty);    break;
    case 5: col=1;                      break;      // 1 Square Wall
}
return col;
