if (active)
{
    keyUp = keyboard_check_pressed(ord('W'));
    keyDown = keyboard_check_pressed(ord('S'));
    keyLeft = keyboard_check_pressed(ord('A'));
    keyRight = keyboard_check_pressed(ord('D'));
    keyAction = keyboard_check_pressed(ord('E'));

    selectX += keyRight - keyLeft;
    selectY += keyDown - keyUp;
    
    // Because mod doesn't work with negatives
    selectX = (selectX + ELEM_PER_ROW) % ELEM_PER_ROW;
    selectY = (selectY  + ELEM_PER_COL)% ELEM_PER_COL;
    
    currentSelection = selectX * (y * ELEM_PER_ROW);
    
    if(keyAction)
    {
        currentlyEquipped = currentSelection;
    }
}
else
{
    selectX = 0;
    selectY = 0;
}
