if (active)
{
    /********************/
    // Temporary Controls
    /********************/
    keyUp = keyboard_check_pressed(ord('W'));
    keyDown = keyboard_check_pressed(ord('S'));
    keyLeft = keyboard_check_pressed(ord('A'));
    keyRight = keyboard_check_pressed(ord('D'));
    keyAction = keyboard_check_pressed(ord('E'));

    // Update selection
    selectX += keyRight - keyLeft;
    // Up to down coordinate
    selectY += keyDown - keyUp;
    
    // Mod to wrap around
    selectX = selectX % 5;
    selectY = selectY % 2;
}
else
{
    seleectX = 0;
    selectY = 0;
}
