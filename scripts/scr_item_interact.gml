thisObject = argument[0];
heimao = argument[1];
//if (heimao.keyAction)
//{
    inventory = heimao.inventory;
    scr_inventory_add(inventory, thisObject);
    with (thisObject) {instance_destroy()};
//}
