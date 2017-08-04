instance_create(0, 0, oFxRoomRestart);

for (var i = 0; i < 20; i++)
    instance_create(x + random_range(-1, 1), y + random_range(-1, 1), oParticlePlayer);
    
instance_create(100, 100, oPlayer);

