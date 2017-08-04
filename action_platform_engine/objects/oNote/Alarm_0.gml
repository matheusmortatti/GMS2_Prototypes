/// @description Insert description here
// You can write your code in this editor

if(instance_exists(oColorController))
	col = make_color_hsv(random(255), 255, 255);

var wave = instance_create(x, y, oSoundWave);

with(wave) {
	radMax = radMax / 8;
	col = other.col;
}

audio_play_sound_at(sound, x, y, 0, 25, 75, 2, false, 1);

alarm[0] = soundDelay;