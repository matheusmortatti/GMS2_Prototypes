var onGroundPrev = onGround;

event_inherited();

if (onGround && !onGroundPrev) {
    for (var i = 0; i < 4; ++i) {
        instance_create(x + random_range(-8, 8), y + 8 + random_range(-2, 2), oParticlePlayer);
    }
    
    xscale = 1.33;
    yscale = 0.67;
	
	if(stomped) {
		instance_create(x, y, oSoundWave);
		stomped = false;
		global.shake = 10;
		audio_play_sound(soundStomp, 1, false);
	}
	else {
		audio_play_sound(choose(soundGround1, soundGround2, soundGround3), 1, false);
	}
}

audio_listener_position(x, y, 0);

