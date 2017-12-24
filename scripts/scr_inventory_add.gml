var inventory = argument[0];
var item = argument[1];
var index = (inventory).currentItemCount;

if (index < (inventory).MAX_ITEM)
{
    (inventory).icons[index] = (item).icon;
    (inventory).names[index] = (item).name;
    (inventory).descriptions[index] = (item).description;
    (inventory).useFunctions[index] = (item).useFunction;
    (inventory).currentItemCount++;
}

