/// @description Insert description here
// You can write your code in this editor

if(instance_exists(oPlayer)) {
	
	if(distance_to_point(oPlayer.x, oPlayer.y) <= 150) {
		instance_create(x, y, oBullet);
		image_angle = point_direction(x, y, oPlayer.x, oPlayer.y);
		stretch = true;
		val = choose(-0.8, 0.8);
		audio_play_sound_at(soundShot, x, y, 0, 50, 100, 1, false, 1);
	}
	alarm[0] = reloadTime;
	
	
	
}