if (active)
{
    keyUp = keyboard_check_pressed(ord('W'));
    keyDown = keyboard_check_pressed(ord('S'));
    keyLeft = keyboard_check_pressed(ord('A'));
    keyRight = keyboard_check_pressed(ord('D'));
    keyAction = keyboard_check_pressed(ord('E'));

    selectX += keyRight - keyLeft;
    selectY += keyDown - keyUp;
    
    selectX = selectX % ELEM_PER_ROW;
    selectY = selectY % ELEM_PER_COL;
}
else
{
    selectX = 0;
    selectY = 0;
}
