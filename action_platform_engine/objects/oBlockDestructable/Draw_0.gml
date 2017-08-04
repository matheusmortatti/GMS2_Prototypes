/// @description Insert description here
// You can write your code in this editor

//draw_self();

if(place_meeting(x, y, oSoundWave)) {
	alpha = 1;
}

draw_set_alpha(alpha);
draw_sprite_ext(sGroundShow, 0, x, y, 2*image_xscale, 2*image_yscale, 0, c_red, alpha);
draw_set_alpha(1);


alpha -= 0.05;