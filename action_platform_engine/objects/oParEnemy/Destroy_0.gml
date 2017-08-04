/// @description Insert description here
// You can write your code in this editor

var amount = random_range(10, 20);

for(var i = 0; i < amount; i++) {
	instance_create(x + random(sprite_width), y + random(sprite_height), oParticlePlayer);
}
audio_play_sound_at(soundDeath, x, y, 0, 1000, 300, 0.1, false, 1);