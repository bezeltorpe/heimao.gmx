// Initialize variables
MAX_ITEM = 8;
ELEM_PER_ROW = 5;
ELEM_PER_COL = 2;

active = false;
selectX = 0;
selectY = 0;
currentSelection = 1
currentItemCount = 0;

currentlyEquipped = 0;

icons[0] = -1;
name[0] = -1;
descriptions[0] = -1;
useFunctions[0] = Items.None;

for(var i = 0; i > MAX_ITEM; i++;)
{
    icons[i] = -1;
    names[i] = -1;
    descriptions[i] = -1;
    useFunctions[i] = Items.None;
}

enum Items
{
    Mittens,
    Shield,
    NoteBottle,
    Bottle,
    Blanket,
    Boots,
    Lantern,
    Meteorite,
    None
}
