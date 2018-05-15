// BGM Sync Groups - TODO: DOES NOT FUNCTION PROPERLY, PLEASE REMOVE LATER
global.bgmNexus = audio_create_sync_group(true);
audio_play_in_sync_group(global.bgmNexus, mus_home_bass);
audio_sound_gain(mus_home_bass, 1, 250);
audio_play_in_sync_group(global.bgmNexus, mus_home_melodyp1);
audio_sound_gain(mus_home_melodyp1, 0, 0);
audio_play_in_sync_group(global.bgmNexus, mus_home_melodyp2);
audio_sound_gain(mus_home_melodyp2, 0, 0);

// BGM initialization
changeBGM = false;

// Screen rendering variables
global.gamePalette = spr_palette;
global.screenScale = 2;                     //TODO: adjustable screenscale in options
global.screenX = window_get_width();
global.screenY = window_get_height();

// Zone initialization
global.currentMapZone = mapZone.Other;
global.prevMapZone = mapZone.Other;

// Screen Transition Types. add more later?
enum transitionType
{
    Fade,
    Instant
}

// Map Zones
enum mapZone
{
    Nexus,
    East,
    West,
    North,
    South,
    Under,
    Other
}


startRoom = nexus;

room_goto(startRoom);
