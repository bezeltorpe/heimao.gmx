if (global.transitionComplete)
{
    global.fadeTick += 1;
    //draw_sprite_ext(overlay_index, 0, view_xview, view_yview, 1, 1, 0, c_white, 1/(global.fadeTick * -1));
    if (global.fadeTick == 15)
        {global.transitionComplete = false}
}
