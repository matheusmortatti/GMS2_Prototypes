/// @description Insert description here
// You can write your code in this editor

draw_sprite(sGround, 0, x, y);

if(place_meeting(x, y, oSoundWave) or 
	(instance_exists(oPlayer) and place_meeting(x, y - 1, oPlayer) and oPlayer.vx != 0)) {
	alpha = 1;
	
	if(!has_passed and instance_exists(oColorController)) {
		color = oColorController.color
		has_passed = true;
	}
}
else
	has_passed = false;

draw_set_alpha(alpha);
draw_sprite_ext(sGroundShow, 0, x, y, 1, 1, 0, color, alpha);
draw_set_alpha(1);

alpha -= 0.03;
