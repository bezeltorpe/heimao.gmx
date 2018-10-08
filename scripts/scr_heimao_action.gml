switch(playerState)
{
    case State.Standing:
        scr_heimao_standing_act();
        break;
    
    case State.Running:
        scr_heimao_running_act();
        break;
        
    case State.UpdateItemState:
        scr_heimao_updateItem_act();
        break;
}

/*
    case State.SittingDown:
        scr_heimao_sittingDown_act();
        break;
        
    case State.Sitting:
        scr_heimao_sitting_act();
        break;

    case State.LayingDown:
        scr_heimao_layingDown_act();
        break;
  
    case State.Laying:
        scr_heimao_laying_act();
        break;

    case State.Laying2:
        scr_heimao_laying2_act();
        break;
    
    case State.AngelUp:
        scr_heimao_angelUp_act();
        break;
    
    case State.AngelDown:
        scr_heimao_angelDown_act();
        break;
 
    case State.LayingUp:
        scr_heimao_layingUp_act();
        break;
  
    case State.StandingUp:
        scr_heimao_standingUp_act();
        break;
}
*/
