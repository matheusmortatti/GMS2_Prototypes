/// @description Insert description here
// You can write your code in this editor

//draw_sprite_ext(sSpike, 0, x, y, 1, 1, 0, make_color_rgb(58, 61, 146), 1);

if(place_meeting(x, y, oSoundWave)) {
	alpha = 1;
}

//color = choose(c_white, c_black);

draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, image_angle, c_white, alpha);

alpha -= 0.03;