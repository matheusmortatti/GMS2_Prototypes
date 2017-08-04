/// @description Insert description here
// You can write your code in this editor

global.shake = 0;
global.savepointX = -1;
global.savepointY = -1;
global.endGame = false

window_set_fullscreen(true);

var sound = audio_play_sound(soundMain, 10, true);
audio_sound_gain(sound, 0, 0);
audio_sound_gain(sound, 0.7, 800);

room_goto_next();