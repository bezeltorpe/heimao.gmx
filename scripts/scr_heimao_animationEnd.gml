//Player State Manager Chain... Response? Thing?

switch(playerState)
{
    case State.Running:
        whichFoot = !whichFoot; 
        drawFootprint = true;
        audio_play_sound(sfx_heimao_step, 5, false);
        break;
}
/*
    case State.SittingDown:
        playerState = State.Sitting;
        break;
}


    case State.LayingDown:
        playerState = State.Laying;
        drawSnowAngel = true;
        break;

    case State.AngelUp:
        playerState = State.Laying2;
        drawSnowAngel = true;
        break;

    case State.AngelDown:
        playerState = State.Laying;
        drawSnowAngel = false;
        break;

    case State.LayingUp:
        playerState = State.Sitting;
        break;

    case State.StandingUp:
        playerState = State.Standing;
        canMove = true;
        break;
}
*/
