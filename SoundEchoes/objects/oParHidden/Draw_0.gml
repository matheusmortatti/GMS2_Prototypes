/// @description Insert description here
// You can write your code in this editor


if(place_meeting(x, y, oSoundWave) or place_meeting(x, y - 1, oPlayer) or alwaysOn) {
	alpha = 1;
}

draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, image_angle, col, alpha);

alpha -= 0.03;

if(instance_exists(oColorController))
	col = oColorController.color;