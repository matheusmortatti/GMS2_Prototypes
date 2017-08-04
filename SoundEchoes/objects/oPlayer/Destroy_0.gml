

if(!global.endGame) {
	instance_create(0, 0, oFxRoomRestart);
	audio_play_sound(soundDeath, 1, false);
}
else {
	var wave = instance_create(x, y, oSoundWave);

	with(wave) {
		accel = 10;
		imageSpd = 1 / (radMax / accel);
		radMax = 10 * radMax;
	}
}

global.shake = 5;
var amount = random_range(10, 20);

for(var i = 0; i < amount; i++) {
	instance_create(x + random(sprite_width), y + random(sprite_height), oParticlePlayer);
}

