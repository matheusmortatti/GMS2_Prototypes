/// @description Insert description here
// You can write your code in this editor

if(place_meeting(x, y, oSoundWave)) {
	image_alpha = 1;
}

draw_sprite_ext(sprite_index, 0, x, y, 1, 1, 0, col, image_alpha);

image_alpha -= 0.03;

