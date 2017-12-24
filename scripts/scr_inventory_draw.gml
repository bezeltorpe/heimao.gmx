if (active)
{
    // TODO update with actual map
    // Draw the inventory box
    var widthBorder = view_wview[0] / 10;
    var heightBorder = view_hview[0] / 10;
    var x1 = view_xview[0];
    var x2 = x1 + 9 * (widthBorder);
    x1 = x1 + widthBorder;
    var y1 = view_yview[0];
    var y2 = y1 + 9 * (heightBorder);
    y1 = y1 + heightBorder;
    
    draw_set_alpha(0.8);
    draw_set_color(c_black);
    draw_rectangle(x1,y1,x2,y2,0);
    
    // Draw the items
    // TODO Fix the spacing to fit the inventory sprite when it's set.
    for (var i = 0; i < ELEM_PER_COL; i++;)
    {
        for (var j = 0; j < ELEM_PER_ROW; j++;)
        {
            var index = i * ELEM_PER_ROW + j;
            if (icons[index] != -1)
            {
                draw_sprite(icons[index], 0, x1 + j * widthBorder + widthBorder, y1 + i * heightBorder + heightBorder);
            }
        }
    }
    
    // Highlight selected item if any item exists
    if (currentItemCount > 0)
    {
        draw_set_color(c_yellow);
        draw_rectangle(
            x1 + selectX * widthBorder + widthBorder,
            y1 + selectY * heightBorder + heightBorder,
            32 + x1 + selectX * widthBorder + widthBorder,
            32 + y1 + selectY * heightBorder + heightBorder,
            1);
    }
}
