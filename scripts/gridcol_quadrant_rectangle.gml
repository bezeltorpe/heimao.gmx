///gridcol_quadrant_rectangle(ox,oy,xx,yy);

var ox=argument0;   // origin of sprite,object
var oy=argument1;
var xx=argument2;   // target coordinates to check as determined by gridcol_place_meeting
var yy=argument3;
var ax=31*(ox>xx);  // Quadrant intersections along border - see the visualization for this - on slopes we check more than 1 point per quadrant
var ay=31*(oy>yy);
var tx = xx mod 32;
var ty = yy mod 32;
var col=false;

switch (obj_player.colGrid[# xx div 32, yy div 32]){
    //case -1: col = false;                                               break;
    //case 0: col = true;                                                 break;  // square
    case 1: col =  ( (tx >= ty)   ||  (tx >= ay)    ||  (ax >= ty)  );  break;  // 4 Slopes - MAGIC =D see pictures in tutorial for explanation
    case 2: col =  ( (31-tx <= ty)||  (31-tx <= ay) ||  (31-ax <= ty)); break;
    case 3: col =  ( (31-tx >= ty)||  (31-tx >= ay) ||  (31-ax >= ty)); break; 
    case 4: col =  ( (tx <= ty)   ||  (tx <= ay)    ||  (ax <= ty)  );  break;
    case 69:col = false;                                                break;
}
return col;
