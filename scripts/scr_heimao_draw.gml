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
        
    case State.SittingDown:
        scr_heimao_sittingDown_draw();
        break;

    case State.Sitting:
        scr_heimao_sitting_draw();
        break;

    case State.LayingDown:
        scr_heimao_layingDown_draw();
        break;

    case State.Laying:
        scr_heimao_laying_draw();
        break;

    case State.Laying2:
        scr_heimao_laying2_draw();
        break;

    case State.AngelUp:
        scr_heimao_angelUp_draw();
        break;

    case State.AngelDown:
        scr_heimao_angelDown_draw();
        break;

    case State.LayingUp:
        scr_heimao_layingUp_draw();
        break;
        
    case State.StandingUp:
        scr_heimao_standingUp_draw();
        break;
}
