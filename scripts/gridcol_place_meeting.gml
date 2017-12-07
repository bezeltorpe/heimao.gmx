///gridcol_place_meeting(xx,yy);

// works akin to place_meeting, but we need to determine the borders to check for first

var xx=argument0;
var yy=argument1;
var col=false;

// Adjust for object dimensions => find the borders from the sprite-origin given by xx,yy
var left,right,up,down;
left = bbox_left;
right= bbox_right;
up   = bbox_top;
down = bbox_bottom;

// Check object/sprite borders
col = ( gridcol_quadrant_rectangle(xx,yy,left,up)   ||  // Left top corner
        gridcol_quadrant_rectangle(xx,yy,right,up)  ||  // right top corner
        gridcol_quadrant_rectangle(xx,yy,left,down) ||  // left bot corner
        gridcol_quadrant_rectangle(xx,yy,right,down));  // right bot corner

return col;
