switch(playerState)
{
    case State.Standing:
        scr_heimao_standing_updateState();
        break;
    
    case State.Running:
        scr_heimao_running_updateState();
        break;
        
    case State.EnterItemState:
        scr_heimao_enterItem_updateState();
        break;
        
    case State.UpdateItemState:
        scr_heimao_updateItem_updateState();
        break;
    case State.ExitItemState:
        scr_heimao_exitItem_updateState();
        break;
}
/*

    case State.SittingDown:
        scr_heimao_sittingDown_updateState();
        break;
        
    case State.Sitting:
        scr_heimao_sitting_updateState();
        break;
        
    case State.LayingDown:
        scr_heimao_layingDown_updateState();
        break;

    case State.Laying:
        scr_heimao_laying_updateState();
        break;

    case State.Laying2:
        scr_heimao_laying2_updateState();
        break;

    case State.AngelUp:
        scr_heimao_angelUp_updateState();
        break;

    case State.AngelDown:
        scr_heimao_angelDown_updateState();
        break;

    case State.LayingUp:
        scr_heimao_layingUp_updateState();
        break;

    case State.StandingUp:
        scr_heimao_standingUp_updateState();
        break;
}
*/
