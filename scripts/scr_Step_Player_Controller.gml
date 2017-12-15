//Player Controller

xDir = keyboard_check(ord('D')) - keyboard_check(ord('A'));
yDir = keyboard_check(ord('S')) - keyboard_check(ord('W'));
xPosPlayer = obj_player.sprite_xoffset;
yPosPlayer = obj_player.sprite_yoffset;

timer += 1;

//check for not running
if (playerState = 3 && !runInput)
{
    playerState = 0;
    whichFoot = !whichFoot;
    vx = 0;
    vy = 0;
}

//laydown input logic
sitPress = keyboard_check_pressed(ord('Q'));
sitHeld = keyboard_check(ord('Q'));
sitRelease = keyboard_check_released(ord('Q'));

if(sitPress)
    {
    sitTimer = 0.1;
    sitResult = 1;
    }

if(sitHeld)
    {sitTimer += 0.1;}
    
if(sitTimer > 0.5 && sitResult == 1 && playerState == 5)
    {sitResult = 2;}
    
if(sitRelease)
    {
        sitResult = 0;
        sitTimer = 0;
        if (playerState == 7)
            {layRelease = !layRelease}
    }
    
//sit and lay handling
if (sitResult == 1)
    {
    if (playerState == 0)
        {
        playerState = 4;
        canMove = false;
        }
        
    if (playerState == 5)
        {playerState = 12}
        
    if (playerState == 7 || playerState == 9)
        {playerState = 11}
    }
    
if (sitResult == 2)
    {
    if (playerState == 5)
        {playerState = 6}
          
    if (layRelease)
        {
        //if (playerState == 7 || playerState == 9)
        //    {playerState = 13}
        layRelease = !layRelease;
        }
    }
    
//snow angel!
if (playerState == 7 || playerState == 9)
    {
    if (keyboard_check(ord('W')) || keyboard_check(ord('A')) || keyboard_check(ord('S')) || keyboard_check(ord('D')))
        {
        if (playerState == 7)
            {
            playerState = 8;
            //drawSnowAngel = true;
            }
        if (playerState == 9)
            {
            playerState = 10
            //drawSnowAngel = true;
            }
        }
    }

//supposed to be item usage/interact here, but i made it a stupid thing at like 4 am so now it's commented out
/*if (keyboard_check_pressed(ord('E')))
    {
    image_speed = 0;
    }*/

//u runnin?
if ((xDir != 0 || yDir != 0) && canMove) {runInput = true; playerState = 2;}
else {runInput = false;}
    
//movement calc
if (runInput && canMove)
    {
    playerState = 3;
    if (xDir != 0 && yDir != 0)
        {
        vx = ((xDir  / sqrt(2)) * mspd);
        vy = ((yDir  / sqrt(2)) * mspd);
        }
    else
        {
        vx = (xDir * mspd);
        vy = (yDir * mspd);
        }
/*    if place_free(vx, vy)
        {
        x = vx;
        y = vy;
        }*/
    }
    
//change facingDir
//D = 0, add counterclockwise
//note to self: change to comparators for controller support
if (canMove)
    {
    if (xDir == 0 && yDir == 1) {facingDir = 0}
    if (xDir == 1 && yDir == 1) {facingDir = 1}
    if (xDir == 1 && yDir == 0) {facingDir = 2}
    if (xDir == 1 && yDir == -1) {facingDir = 3}
    if (xDir == 0 && yDir == -1) {facingDir = 4}
    if (xDir == -1 && yDir == -1) {facingDir = 5}
    if (xDir == -1 && yDir == 0) {facingDir = 6}
    if (xDir == -1 && yDir == 1) {facingDir = 7}
    }   

//state manager
switch (playerState)
   {
//stand
   case 0:
        if (facingDir = 0) {sprite_index = spr_heimao_D}
        if (facingDir = 1) {sprite_index = spr_heimao_RD}
        if (facingDir = 2) {sprite_index = spr_heimao_R}
        if (facingDir = 3) {sprite_index = spr_heimao_RU}
        if (facingDir = 4) {sprite_index = spr_heimao_U}
        if (facingDir = 5) {sprite_index = spr_heimao_LU}
        if (facingDir = 6) {sprite_index = spr_heimao_L}
        if (facingDir = 7) {sprite_index = spr_heimao_LD}
        drawCatShadow = true;
        break;
        
//run
   case 3:
        if (whichFoot == true)
            {
            if (facingDir = 0) {sprite_index = spr_heimao_run_D1}
            if (facingDir = 1) {sprite_index = spr_heimao_run_RD1}
            if (facingDir = 2) {sprite_index = spr_heimao_run_R1}
            if (facingDir = 3) {sprite_index = spr_heimao_run_RU1}
            if (facingDir = 4) {sprite_index = spr_heimao_run_U1}
            if (facingDir = 5) {sprite_index = spr_heimao_run_LU1}
            if (facingDir = 6) {sprite_index = spr_heimao_run_L1}
            if (facingDir = 7) {sprite_index = spr_heimao_run_LD1}
            }
        if (whichFoot == false)
            {
            if (facingDir = 0) {sprite_index = spr_heimao_run_D2}
            if (facingDir = 1) {sprite_index = spr_heimao_run_RD2}
            if (facingDir = 2) {sprite_index = spr_heimao_run_R2}
            if (facingDir = 3) {sprite_index = spr_heimao_run_RU2}
            if (facingDir = 4) {sprite_index = spr_heimao_run_U2}
            if (facingDir = 5) {sprite_index = spr_heimao_run_LU2}
            if (facingDir = 6) {sprite_index = spr_heimao_run_L2}
            if (facingDir = 7) {sprite_index = spr_heimao_run_LD2}
            }
        drawCatShadow = true;
        break;
        
//sitdown
   case 4:
        if (facingDir = 0) {sprite_index = spr_heimao_sitdown_D}
        if (facingDir = 1) {sprite_index = spr_heimao_sitdown_RD}
        if (facingDir = 2) {sprite_index = spr_heimao_sitdown_R}
        if (facingDir = 3) {sprite_index = spr_heimao_sitdown_RU}
        if (facingDir = 4) {sprite_index = spr_heimao_sitdown_U}
        if (facingDir = 5) {sprite_index = spr_heimao_sitdown_LU}
        if (facingDir = 6) {sprite_index = spr_heimao_sitdown_L}
        if (facingDir = 7) {sprite_index = spr_heimao_sitdown_LD};
        drawCatShadow = true;
        break;
        
//sitting
   case 5:
        if (facingDir = 0) {sprite_index = spr_heimao_sitting_D}
        if (facingDir = 1) {sprite_index = spr_heimao_sitting_RD}
        if (facingDir = 2) {sprite_index = spr_heimao_sitting_R}
        if (facingDir = 3) {sprite_index = spr_heimao_sitting_RU}
        if (facingDir = 4) {sprite_index = spr_heimao_sitting_U}
        if (facingDir = 5) {sprite_index = spr_heimao_sitting_LU}
        if (facingDir = 6) {sprite_index = spr_heimao_sitting_L}
        if (facingDir = 7) {sprite_index = spr_heimao_sitting_LD};
        drawCatShadow = true;
        break;
        
//laydown
    case 6:
        if (facingDir = 0) {sprite_index = spr_heimao_laydown_LD}
        if (facingDir = 1) {sprite_index = spr_heimao_laydown_RD}
        if (facingDir = 2) {sprite_index = spr_heimao_laydown_RD}
        if (facingDir = 3) {sprite_index = spr_heimao_laydown_RU}
        if (facingDir = 4) {sprite_index = spr_heimao_laydown_RU}
        if (facingDir = 5) {sprite_index = spr_heimao_laydown_LU}
        if (facingDir = 6) {sprite_index = spr_heimao_laydown_LU}
        if (facingDir = 7) {sprite_index = spr_heimao_laydown_LD};
        drawCatShadow = true;
        break;
        
//laying
    case 7:
        if (facingDir = 0) {sprite_index = spr_heimao_laying_LD}
        if (facingDir = 1) {sprite_index = spr_heimao_laying_RD}
        if (facingDir = 2) {sprite_index = spr_heimao_laying_RD}
        if (facingDir = 3) {sprite_index = spr_heimao_laying_RU}
        if (facingDir = 4) {sprite_index = spr_heimao_laying_RU}
        if (facingDir = 5) {sprite_index = spr_heimao_laying_LU}
        if (facingDir = 6) {sprite_index = spr_heimao_laying_LU}
        if (facingDir = 7) {sprite_index = spr_heimao_laying_LD};
        drawCatShadow = false;
        break;
        
//angelup
    case 8:
        if (facingDir = 0) {sprite_index = spr_heimao_angelup_LD}
        if (facingDir = 1) {sprite_index = spr_heimao_angelup_RD}
        if (facingDir = 2) {sprite_index = spr_heimao_angelup_RD}
        if (facingDir = 3) {sprite_index = spr_heimao_angelup_RU}
        if (facingDir = 4) {sprite_index = spr_heimao_angelup_RU}
        if (facingDir = 5) {sprite_index = spr_heimao_angelup_LU}
        if (facingDir = 6) {sprite_index = spr_heimao_angelup_LU}
        if (facingDir = 7) {sprite_index = spr_heimao_angelup_LD};
        drawCatShadow = false;
        break;
        
//laying2
    case 9:
        if (facingDir = 0) {sprite_index = spr_heimao_laying2_LD}
        if (facingDir = 1) {sprite_index = spr_heimao_laying2_RD}
        if (facingDir = 2) {sprite_index = spr_heimao_laying2_RD}
        if (facingDir = 3) {sprite_index = spr_heimao_laying2_RU}
        if (facingDir = 4) {sprite_index = spr_heimao_laying2_RU}
        if (facingDir = 5) {sprite_index = spr_heimao_laying2_LU}
        if (facingDir = 6) {sprite_index = spr_heimao_laying2_LU}
        if (facingDir = 7) {sprite_index = spr_heimao_laying2_LD};
        drawCatShadow = false;
        break;
        
//angeldown
    case 10:
        if (facingDir = 0) {sprite_index = spr_heimao_angeldown_LD}
        if (facingDir = 1) {sprite_index = spr_heimao_angeldown_RD}
        if (facingDir = 2) {sprite_index = spr_heimao_angeldown_RD}
        if (facingDir = 3) {sprite_index = spr_heimao_angeldown_RU}
        if (facingDir = 4) {sprite_index = spr_heimao_angeldown_RU}
        if (facingDir = 5) {sprite_index = spr_heimao_angeldown_LU}
        if (facingDir = 6) {sprite_index = spr_heimao_angeldown_LU}
        if (facingDir = 7) {sprite_index = spr_heimao_angeldown_LD};
        drawCatShadow = false;
        break;
        
//situp
    case 11:
        if (facingDir = 0) {sprite_index = spr_heimao_situp_LD}
        if (facingDir = 1) {sprite_index = spr_heimao_situp_RD}
        if (facingDir = 2) {sprite_index = spr_heimao_situp_RD}
        if (facingDir = 3) {sprite_index = spr_heimao_situp_RU}
        if (facingDir = 4) {sprite_index = spr_heimao_situp_RU}
        if (facingDir = 5) {sprite_index = spr_heimao_situp_LU}
        if (facingDir = 6) {sprite_index = spr_heimao_situp_LU}
        if (facingDir = 7) {sprite_index = spr_heimao_situp_LD};
        drawCatShadow = true;
        break;
        
//standup
   case 12:
        if (facingDir = 0) {sprite_index = spr_heimao_standup_D}
        if (facingDir = 1) {sprite_index = spr_heimao_standup_RD}
        if (facingDir = 2) {sprite_index = spr_heimao_standup_R}
        if (facingDir = 3) {sprite_index = spr_heimao_standup_RU}
        if (facingDir = 4) {sprite_index = spr_heimao_standup_U}
        if (facingDir = 5) {sprite_index = spr_heimao_standup_LU}
        if (facingDir = 6) {sprite_index = spr_heimao_standup_L}
        if (facingDir = 7) {sprite_index = spr_heimao_standup_LD};
        drawCatShadow = true;
        break;

//laying to standup
   case 13:
        if (facingDir = 0) {sprite_index = spr_heimao_standup_D}
        if (facingDir = 1) {sprite_index = spr_heimao_standup_RD}
        if (facingDir = 2) {sprite_index = spr_heimao_standup_R}
        if (facingDir = 3) {sprite_index = spr_heimao_standup_RU}
        if (facingDir = 4) {sprite_index = spr_heimao_standup_U}
        if (facingDir = 5) {sprite_index = spr_heimao_standup_LU}
        if (facingDir = 6) {sprite_index = spr_heimao_standup_L}
        if (facingDir = 7) {sprite_index = spr_heimao_standup_LD};
        drawCatShadow = true;
        break;
   }
