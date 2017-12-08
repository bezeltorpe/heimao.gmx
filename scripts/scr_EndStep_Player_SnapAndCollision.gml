//Player Pixel Grid Snap
if (playerState != 3)
{
view_xview = floor(view_xview);
view_yview = floor(view_yview);
move_snap(1,1);
}

var v;
xExcess += vx;
v = round(xExcess);
xExcess -= v;
 
if (v != 0){
    s = sign(v);
    repeat (abs(v)){
        var down;
        down = true;
       
        if (place_free(x + s, y + 1) && !place_free(x + s, y + 2) && down){
            x += s;
            y += 1;
        }
        else if (place_free(x + s, y)) {
            x += s;
        }
        else if (place_free(x + s, y - 1)){
            x += s;
            y -= 1;
        }
        else{
            vx = 0;
            break;
        }
    }
}

var v;
yExcess += vy;
v = round(yExcess);
yExcess -= v;
 
if (v != 0){
    s = sign(v);
    repeat (abs(v)){
        var down;
        down = true;
       
        if (place_free(x + 1, y + s) && !place_free(x + s, y + 2) && down){
            x += 1;
            y += s;
        }
        else if (place_free(x, y + s)) {
            y += s;
        }
        else if (place_free(x - 1, y + s)){
            x -= 1;
            y += s;
        }
        else{
            vy = 0;
            break;
        }
    }
}
