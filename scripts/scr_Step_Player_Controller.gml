//Player Controller

var xDir, yDir;
var xPosPlayer, yPosPlayer;
var xPlayerNext, yPlayerNext;
xDir = keyboard_check(ord('D')) - keyboard_check(ord('A'));
yDir = keyboard_check(ord('S')) - keyboard_check(ord('W'));
xPosPlayer = obj_player.sprite_xoffset;
yPosPlayer = obj_player.sprite_yoffset;

global.timer += 1;

//check for not running
if (global.playerState = 3 && !global.runInput)
    {
    global.playerState = 0;
    global.whichFoot = !global.whichFoot;
    }

//laydown input logic
sitPress = keyboard_check_pressed(ord('Q'));
sitHeld = keyboard_check(ord('Q'));
sitRelease = keyboard_check_released(ord('Q'));

if(sitPress)
    {
    global.sitTimer = 0.1;
    global.sitResult = 1;
    }

if(sitHeld)
    {global.sitTimer += 0.1;}
    
if(global.sitTimer > 0.5 && global.sitResult == 1 && global.playerState == 5)
    {global.sitResult = 2;}
    
if(sitRelease)
    {
        global.sitResult = 0;
        global.sitTimer = 0;
        if (global.playerState == 7)
            {global.layRelease = !global.layRelease}
    }
    
//sit and lay handling
if (global.sitResult == 1)
    {
    if (global.playerState == 0)
        {
        global.playerState = 4;
        global.canMove = false;
        }
        
    if (global.playerState == 5)
        {global.playerState = 12}
        
    if (global.playerState == 7 || global.playerState == 9)
        {global.playerState = 11}
    }
    
if (global.sitResult == 2)
    {
    if (global.playerState == 5)
        {global.playerState = 6}
        
    if (global.layRelease)
        {
        //if (global.playerState == 7 || global.playerState == 9)
        //    {global.playerState = 13}
        global.layRelease = !global.layRelease;
        }
    }
    
//snow angel!
if (global.playerState == 7 || global.playerState == 9)
    {
    if (keyboard_check(ord('W')) || keyboard_check(ord('A')) || keyboard_check(ord('S')) || keyboard_check(ord('D')))
        {
        if (global.playerState == 7)
            {
            global.playerState = 8;
            //global.drawSnowAngel = true;
            }
        if (global.playerState == 9)
            {
            global.playerState = 10
            //global.drawSnowAngel = true;
            }
        }
    }

//supposed to be item usage/interact here, but i made it a stupid thing at like 4 am so now it's commented out
/*if (keyboard_check_pressed(ord('E')))
    {
    image_speed = 0;
    }*/

//u runnin?
if ((xDir != 0 || yDir != 0) && global.canMove) {global.runInput = true; global.playerState = 2;}
else {global.runInput = false;}
    
//movement calc
if (global.runInput && global.canMove)
    {
    global.playerState = 3;
    if (xDir != 0 && yDir != 0)
        {
        global.xPlayerNext += ((xDir  / sqrt(2)) * 3) * 0.5;
        global.yPlayerNext += ((yDir  / sqrt(2)) * 3) * 0.5;
        }
    else
        {
        global.xPlayerNext += (xDir * 3) * 0.5;
        global.yPlayerNext += (yDir * 3) * 0.5;
        }
    if place_free(global.xPlayerNext, global.yPlayerNext)
        {
        x = global.xPlayerNext;
        y = global.yPlayerNext;
        }
    }
    
//change facingDir
//D = 0, add counterclockwise
//note to self: change to comparators for controller support
if (global.canMove)
    {
    if (xDir == 0 && yDir == 1) {global.facingDir = 0}
    if (xDir == 1 && yDir == 1) {global.facingDir = 1}
    if (xDir == 1 && yDir == 0) {global.facingDir = 2}
    if (xDir == 1 && yDir == -1) {global.facingDir = 3}
    if (xDir == 0 && yDir == -1) {global.facingDir = 4}
    if (xDir == -1 && yDir == -1) {global.facingDir = 5}
    if (xDir == -1 && yDir == 0) {global.facingDir = 6}
    if (xDir == -1 && yDir == 1) {global.facingDir = 7}
    }   

//state manager
switch (global.playerState)
   {
//stand
   case 0:
        if (global.facingDir = 0) {sprite_index = spr_heimao_D}
        if (global.facingDir = 1) {sprite_index = spr_heimao_RD}
        if (global.facingDir = 2) {sprite_index = spr_heimao_R}
        if (global.facingDir = 3) {sprite_index = spr_heimao_RU}
        if (global.facingDir = 4) {sprite_index = spr_heimao_U}
        if (global.facingDir = 5) {sprite_index = spr_heimao_LU}
        if (global.facingDir = 6) {sprite_index = spr_heimao_L}
        if (global.facingDir = 7) {sprite_index = spr_heimao_LD}
        global.drawCatShadow = true;
        break;
        
//run
   case 3:
        if (global.whichFoot == true)
            {
            if (global.facingDir = 0) {sprite_index = spr_heimao_run_D1}
            if (global.facingDir = 1) {sprite_index = spr_heimao_run_RD1}
            if (global.facingDir = 2) {sprite_index = spr_heimao_run_R1}
            if (global.facingDir = 3) {sprite_index = spr_heimao_run_RU1}
            if (global.facingDir = 4) {sprite_index = spr_heimao_run_U1}
            if (global.facingDir = 5) {sprite_index = spr_heimao_run_LU1}
            if (global.facingDir = 6) {sprite_index = spr_heimao_run_L1}
            if (global.facingDir = 7) {sprite_index = spr_heimao_run_LD1}
            }
        if (global.whichFoot == false)
            {
            if (global.facingDir = 0) {sprite_index = spr_heimao_run_D2}
            if (global.facingDir = 1) {sprite_index = spr_heimao_run_RD2}
            if (global.facingDir = 2) {sprite_index = spr_heimao_run_R2}
            if (global.facingDir = 3) {sprite_index = spr_heimao_run_RU2}
            if (global.facingDir = 4) {sprite_index = spr_heimao_run_U2}
            if (global.facingDir = 5) {sprite_index = spr_heimao_run_LU2}
            if (global.facingDir = 6) {sprite_index = spr_heimao_run_L2}
            if (global.facingDir = 7) {sprite_index = spr_heimao_run_LD2}
            }
        global.drawCatShadow = true;
        break;
        
//sitdown
   case 4:
        if (global.facingDir = 0) {sprite_index = spr_heimao_sitdown_D}
        if (global.facingDir = 1) {sprite_index = spr_heimao_sitdown_RD}
        if (global.facingDir = 2) {sprite_index = spr_heimao_sitdown_R}
        if (global.facingDir = 3) {sprite_index = spr_heimao_sitdown_RU}
        if (global.facingDir = 4) {sprite_index = spr_heimao_sitdown_U}
        if (global.facingDir = 5) {sprite_index = spr_heimao_sitdown_LU}
        if (global.facingDir = 6) {sprite_index = spr_heimao_sitdown_L}
        if (global.facingDir = 7) {sprite_index = spr_heimao_sitdown_LD};
        global.drawCatShadow = true;
        break;
        
//sitting
   case 5:
        if (global.facingDir = 0) {sprite_index = spr_heimao_sitting_D}
        if (global.facingDir = 1) {sprite_index = spr_heimao_sitting_RD}
        if (global.facingDir = 2) {sprite_index = spr_heimao_sitting_R}
        if (global.facingDir = 3) {sprite_index = spr_heimao_sitting_RU}
        if (global.facingDir = 4) {sprite_index = spr_heimao_sitting_U}
        if (global.facingDir = 5) {sprite_index = spr_heimao_sitting_LU}
        if (global.facingDir = 6) {sprite_index = spr_heimao_sitting_L}
        if (global.facingDir = 7) {sprite_index = spr_heimao_sitting_LD};
        global.drawCatShadow = true;
        break;
        
//laydown
    case 6:
        if (global.facingDir = 0) {sprite_index = spr_heimao_laydown_LD}
        if (global.facingDir = 1) {sprite_index = spr_heimao_laydown_RD}
        if (global.facingDir = 2) {sprite_index = spr_heimao_laydown_RD}
        if (global.facingDir = 3) {sprite_index = spr_heimao_laydown_RU}
        if (global.facingDir = 4) {sprite_index = spr_heimao_laydown_RU}
        if (global.facingDir = 5) {sprite_index = spr_heimao_laydown_LU}
        if (global.facingDir = 6) {sprite_index = spr_heimao_laydown_LU}
        if (global.facingDir = 7) {sprite_index = spr_heimao_laydown_LD};
        global.drawCatShadow = true;
        break;
        
//laying
    case 7:
        if (global.facingDir = 0) {sprite_index = spr_heimao_laying_LD}
        if (global.facingDir = 1) {sprite_index = spr_heimao_laying_RD}
        if (global.facingDir = 2) {sprite_index = spr_heimao_laying_RD}
        if (global.facingDir = 3) {sprite_index = spr_heimao_laying_RU}
        if (global.facingDir = 4) {sprite_index = spr_heimao_laying_RU}
        if (global.facingDir = 5) {sprite_index = spr_heimao_laying_LU}
        if (global.facingDir = 6) {sprite_index = spr_heimao_laying_LU}
        if (global.facingDir = 7) {sprite_index = spr_heimao_laying_LD};
        global.drawCatShadow = false;
        break;
        
//angelup
    case 8:
        if (global.facingDir = 0) {sprite_index = spr_heimao_angelup_LD}
        if (global.facingDir = 1) {sprite_index = spr_heimao_angelup_RD}
        if (global.facingDir = 2) {sprite_index = spr_heimao_angelup_RD}
        if (global.facingDir = 3) {sprite_index = spr_heimao_angelup_RU}
        if (global.facingDir = 4) {sprite_index = spr_heimao_angelup_RU}
        if (global.facingDir = 5) {sprite_index = spr_heimao_angelup_LU}
        if (global.facingDir = 6) {sprite_index = spr_heimao_angelup_LU}
        if (global.facingDir = 7) {sprite_index = spr_heimao_angelup_LD};
        global.drawCatShadow = false;
        break;
        
//laying2
    case 9:
        if (global.facingDir = 0) {sprite_index = spr_heimao_laying2_LD}
        if (global.facingDir = 1) {sprite_index = spr_heimao_laying2_RD}
        if (global.facingDir = 2) {sprite_index = spr_heimao_laying2_RD}
        if (global.facingDir = 3) {sprite_index = spr_heimao_laying2_RU}
        if (global.facingDir = 4) {sprite_index = spr_heimao_laying2_RU}
        if (global.facingDir = 5) {sprite_index = spr_heimao_laying2_LU}
        if (global.facingDir = 6) {sprite_index = spr_heimao_laying2_LU}
        if (global.facingDir = 7) {sprite_index = spr_heimao_laying2_LD};
        global.drawCatShadow = false;
        break;
        
//angeldown
    case 10:
        if (global.facingDir = 0) {sprite_index = spr_heimao_angeldown_LD}
        if (global.facingDir = 1) {sprite_index = spr_heimao_angeldown_RD}
        if (global.facingDir = 2) {sprite_index = spr_heimao_angeldown_RD}
        if (global.facingDir = 3) {sprite_index = spr_heimao_angeldown_RU}
        if (global.facingDir = 4) {sprite_index = spr_heimao_angeldown_RU}
        if (global.facingDir = 5) {sprite_index = spr_heimao_angeldown_LU}
        if (global.facingDir = 6) {sprite_index = spr_heimao_angeldown_LU}
        if (global.facingDir = 7) {sprite_index = spr_heimao_angeldown_LD};
        global.drawCatShadow = false;
        break;
        
//situp
    case 11:
        if (global.facingDir = 0) {sprite_index = spr_heimao_situp_LD}
        if (global.facingDir = 1) {sprite_index = spr_heimao_situp_RD}
        if (global.facingDir = 2) {sprite_index = spr_heimao_situp_RD}
        if (global.facingDir = 3) {sprite_index = spr_heimao_situp_RU}
        if (global.facingDir = 4) {sprite_index = spr_heimao_situp_RU}
        if (global.facingDir = 5) {sprite_index = spr_heimao_situp_LU}
        if (global.facingDir = 6) {sprite_index = spr_heimao_situp_LU}
        if (global.facingDir = 7) {sprite_index = spr_heimao_situp_LD};
        global.drawCatShadow = true;
        break;
        
//standup
   case 12:
        if (global.facingDir = 0) {sprite_index = spr_heimao_standup_D}
        if (global.facingDir = 1) {sprite_index = spr_heimao_standup_RD}
        if (global.facingDir = 2) {sprite_index = spr_heimao_standup_R}
        if (global.facingDir = 3) {sprite_index = spr_heimao_standup_RU}
        if (global.facingDir = 4) {sprite_index = spr_heimao_standup_U}
        if (global.facingDir = 5) {sprite_index = spr_heimao_standup_LU}
        if (global.facingDir = 6) {sprite_index = spr_heimao_standup_L}
        if (global.facingDir = 7) {sprite_index = spr_heimao_standup_LD};
        global.drawCatShadow = true;
        break;

//laying to standup
   case 13:
        if (global.facingDir = 0) {sprite_index = spr_heimao_standup_D}
        if (global.facingDir = 1) {sprite_index = spr_heimao_standup_RD}
        if (global.facingDir = 2) {sprite_index = spr_heimao_standup_R}
        if (global.facingDir = 3) {sprite_index = spr_heimao_standup_RU}
        if (global.facingDir = 4) {sprite_index = spr_heimao_standup_U}
        if (global.facingDir = 5) {sprite_index = spr_heimao_standup_LU}
        if (global.facingDir = 6) {sprite_index = spr_heimao_standup_L}
        if (global.facingDir = 7) {sprite_index = spr_heimao_standup_LD};
        global.drawCatShadow = true;
        break;
   }
