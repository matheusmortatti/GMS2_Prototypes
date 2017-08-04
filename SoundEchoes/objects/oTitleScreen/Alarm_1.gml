/// @description Insert description here
// You can write your code in this editor

var wave = instance_create(room_width / 2, room_height / 2, oSoundWave);

with(wave) {
	accel = 6;
	imageSpd = 1 / (radMax / accel);
	radMax = 3 * radMax;
}