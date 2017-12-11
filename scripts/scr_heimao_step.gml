///Heimao step function

// Global initial stepping

// Temporary Controls
xDir = keyboard_check(ord('D')) - keyboard_check(ord('A'));
yDir = keyboard_check(ord('S')) - keyboard_check(ord('W'));
timer += 1;

//check for not running
if (playerState = 3 && !runInput)
    {
    playerState = 0;
    whichFoot = !whichFoot;
    vx = 0;
    vy = 0;
    }

//laydown input logic
sitPress = keyboard_check_pressed(ord('Q'));
sitHeld = keyboard_check(ord('Q'));
sitRelease = keyboard_check_released(ord('Q'));

// Update states accordingly
scr_heimao_updateState();

// Act
scr_heimao_action();

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

// Draw
scr_heimao_draw();
