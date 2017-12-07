//obj_player Step

/// Movement and Collision

// Grab Keyboard Inputs
horizontal = keyboard_check(ord('D'))-keyboard_check(ord('A'));
vertical =  keyboard_check(ord('S'))-keyboard_check(ord('W'));

// Technically unneccesary as mspd can simply be multiplied with the keyboard checks above! Tutorial purpose.
vx=horizontal*mspd;
vy=vertical*mspd;

// Move with Collision checks
gridcol_move_speeds(vx,vy);

// Check Collision Line
line=gridcol_line(x,y,mouse_x,mouse_y);
