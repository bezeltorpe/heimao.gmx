// Initialize variables
MAX_ITEM = 10;
ELEM_PER_ROW = 5;
ELEM_PER_COL = 2;

active = false;
selectX = 0;
selectY = 0;
currentItemCount = 0;

for(var i = MAX_ITEM - 1; i >= 0 i--;)
{
    icons[i] = -1;
    names[i] = -1;
    descriptions[i] = -1;
    useFunctions[i] = -1;
}
