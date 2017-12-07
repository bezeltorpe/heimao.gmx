///gridcol_line(x1,x1,x2,y2);

//=== INPUT ===
var sx=argument0;   var sy=argument1;   var tx=argument2;   var ty=argument3;

// Check Start + End Point
var col=(gridcol_point(sx,sy)||gridcol_point(tx,ty)); if col return col;

// Check INTEGER X coordinates that intersect with grid, determine according y values mathematically    
var deltax=abs((tx div 32) - (sx div 32));
if deltax>0{
    var xslope=((ty-sy)/(tx-sx));                                                                                                   // Determine Linear Equation Slope, solving y(x);
    var cx=(sx&~31)+31*(tx>sx);                                                                                                     // From Start X get nearest intersection with grid;
    var cy=sy+xslope*(cx-sx)                                                                                                        // Adjust y value for nearest X Intersection;
    col = (gridcol_point(cx,cy)||gridcol_point((tx&~31)+31*(tx<sx),ty+xslope*(((tx&~31)+31*(tx<sx))-tx))); if col return col;       // Checks the very first X-Intersections with cell from start and end!                               
    var dirx=(tx>sx)-(tx<sx);                                                                                                       // If still no collision check all the cells inbetween: Determine sign of x ==> direction;
    repeat(deltax-1){                                                                                                               // repeat as often as there are as of yet unchecked cells between Start X and End X;
        col = (gridcol_point(cx+dirx,cy+xslope*dirx)||gridcol_point(cx+32*dirx,cy+xslope*32*dirx)); if col return col;              // Checks first and second intersect of line within cell on line - and returns true if there is one
        cx+=32*dirx;                                                                                                                // If no collision move along X on by given grid_dimensions of 32px;
        cy+=xslope*32*dirx;                                                                                                         // adjust Y accordingly;
    }
}
   
// Check INTEGER Y coordinates that intersect with grid, determine according x values mathematically                                // If no collisions found along X-Axis, Repeat Y-Axis   
var deltay=abs((ty div 32) - (sy div 32));
if deltay>0{
    var yslope=((tx-sx)/(ty-sy));                                                                                                   // Determine Linear Equation Slope, solving x(y);
    var cy=(sy&~31)+31*(ty>sy);                 
    var cx=sx+yslope*(cy-sy)                    
    col=(gridcol_point(cx,cy)||gridcol_point(tx+yslope*(((ty&~31)+31*(ty<sy))-ty),(ty&~31)+31*(ty<sy))); if col return col;                                 
    var diry=(ty>sy)-(ty<sy);
    repeat(deltay-1){
        col = (gridcol_point(cx+yslope*diry,cy+diry)||gridcol_point(cx+yslope*32*diry,cy+32*diry)); if col return col;
        cy+=32*diry;
        cx+=yslope*32*diry;
    }
}

return col;
