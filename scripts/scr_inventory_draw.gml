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
    
    draw_set_color(c_black);
    draw_set_alpha(0.8);
    draw_rectangle(x1,y1,x2,y2,0);
    draw_set_alpha(1);
    
    // Draw the items
    
    for (var i = 0; i < 2; i++;)
    {
        for (var j = 0; j < 5; j++;)
        {
            var index = i * 5 + j;
            if (icons[index] != -1)
            {
                draw_sprite(icons[index], 0, x1 + j * widthBorder + widthBorder, y1 + i * heightBorder + heightBorder);
            }
        }
    }
}
