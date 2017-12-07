/// Visualiszing Collisions
// this is not relevant, but serves the demonstration purpose nicely - if everythink works fine and you understand whats happening you can delete the whole draw event.

draw_self();

if (visual==1) {
    // Visualisation of gridcol_placemeeting checks
    var left,right,up,down;
    left = bbox_left;
    right= bbox_right;
    up   = bbox_top;
    down = bbox_bottom;
    
    draw_point_colour(left,up,c_lime);
    draw_point_colour(right,up,c_white);
    draw_point_colour(left,down,c_white);
    draw_point_colour(right,down,c_lime);
    
    draw_point_colour((left&~31)+31*(left<x),up,c_lime);
    draw_point_colour(left,(up&~31)+31*(up<y),c_lime);
    
    draw_point_colour((right&~31)+31*(right<x),down,c_lime);
    draw_point_colour(right,(down&~31)+31*(down<y),c_lime);
    
    draw_point_colour((left&~31)+31*(left<x),down,c_white);
    draw_point_colour(left,(down&~31)+31*(down<y),c_white);
    
    draw_point_colour((right&~31)+31*(right<x),up,c_white);
    draw_point_colour(right,(up&~31)+31*(up<y),c_white);
}


if (visual==2) {
    // Visualization collision line
    var sx=x;
    var sy=y;
    var tx=mouse_x;
    var ty=mouse_y;
    
    var deltax=abs((tx div 32) - (sx div 32));
    var deltay=abs((ty div 32) - (sy div 32));
    
    draw_point_colour(sx,sy,c_red);
    draw_point_colour(tx,ty,c_red);
    
    //X    
    if deltax>0{
        var xslope=((ty-sy)/(tx-sx));
        var cx=(sx&~31)+31*(tx>sx);  // sx to nearest grid intersection
        var cy=sy+xslope*(cx-sx)     // adjust cx
            draw_point_colour(cx,cy,c_lime);                                                    
            draw_point_colour((tx&~31)+31*(tx<sx),ty+xslope*(((tx&~31)+31*(tx<sx))-tx),c_lime);                                 
        var dirx=(tx>sx)-(tx<sx);
        repeat(deltax-1){
            draw_point_colour(cx+dirx,cy+xslope*dirx,c_lime);
            draw_point_colour(cx+32*dirx,cy+xslope*32*dirx,c_lime);
            cx+=32*dirx;
            cy+=xslope*32*dirx;
        }
    }
       
    //Y    
    if deltay>0{
        var yslope=((tx-sx)/(ty-sy));
        var cy=(sy&~31)+31*(ty>sy);  // sx to nearest value
        var cx=sx+yslope*(cy-sy)     // adjust cx
        draw_point_colour(cx,cy,c_white);
        draw_point_colour(tx+yslope*(((ty&~31)+31*(ty<sy))-ty),(ty&~31)+31*(ty<sy),c_white);                                 
        var diry=(ty>sy)-(ty<sy);
        repeat(deltay-1){
            draw_point_colour(cx+yslope*diry,cy+diry,c_white);
            draw_point_colour(cx+yslope*32*diry,cy+32*diry,c_white);
            cy+=32*diry;
            cx+=yslope*32*diry;
        }
    }
    draw_text(mouse_x-10,mouse_y,line);
}
