argument0 = transitionType;

switch(transitionType)
    {
    case whitefill:
    draw_sprite_ext(transitionType, 0, view_xview, view_yview, 1, 1, 0, c_white, 0);
    break;
    case blackfill:
    draw_sprite_ext(transitionType, 0, view_xview, view_yview, 1, 1, 0, c_white, 0);
    break;
    case instant: break;
    }
