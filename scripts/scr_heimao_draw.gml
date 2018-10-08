// Update direction of the character
if (canMove)
{
    if (xDir == 0 && yDir == 1) {facingDir = 0}
    if (xDir == 1 && yDir == 1) {facingDir = 1}
    if (xDir == 1 && yDir == 0) {facingDir = 2}
    if (xDir == 1 && yDir == -1) {facingDir = 3}
    if (xDir == 0 && yDir == -1) {facingDir = 4}
    if (xDir == -1 && yDir == -1) {facingDir = 5}
    if (xDir == -1 && yDir == 0) {facingDir = 6}
    if (xDir == -1 && yDir == 1) {facingDir = 7}
}

// Draw correct sprite
switch(playerState)
{
    case State.Standing:
        scr_heimao_standing_draw();
        break;
    
    case State.Running:
        scr_heimao_running_draw();
        break;
        
    case State.UpdateItemState:
        scr_heimao_updateItem_draw();
        break;
        
}
