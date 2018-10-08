switch(sitState)
{
    case SitState.SittingDown:
        if(image_index >= image_number - 1)
        {
            sitState = SitState.Sitting;
        }
        break;
    case SitState.Sitting:
        if (facingDir = 0) {sprite_index = spr_heimao_sitting_D}
        if (facingDir = 1) {sprite_index = spr_heimao_sitting_RD}
        if (facingDir = 2) {sprite_index = spr_heimao_sitting_R}
        if (facingDir = 3) {sprite_index = spr_heimao_sitting_RU}
        if (facingDir = 4) {sprite_index = spr_heimao_sitting_U}
        if (facingDir = 5) {sprite_index = spr_heimao_sitting_LU}
        if (facingDir = 6) {sprite_index = spr_heimao_sitting_L}
        if (facingDir = 7) {sprite_index = spr_heimao_sitting_LD};
        break;
    case SitState.StandingUp:
        if (facingDir = 0) {sprite_index = spr_heimao_standup_D}
        if (facingDir = 1) {sprite_index = spr_heimao_standup_RD}
        if (facingDir = 2) {sprite_index = spr_heimao_standup_R}
        if (facingDir = 3) {sprite_index = spr_heimao_standup_RU}
        if (facingDir = 4) {sprite_index = spr_heimao_standup_U}
        if (facingDir = 5) {sprite_index = spr_heimao_standup_LU}
        if (facingDir = 6) {sprite_index = spr_heimao_standup_L}
        if (facingDir = 7) {sprite_index = spr_heimao_standup_LD};
        sitState = SitState.Standing;
    case SitState.Standing:
        if(image_index >= image_number - 1)
        {
            sitState = SitState.None;
        }
    break;
}


drawCatShadow = true;
