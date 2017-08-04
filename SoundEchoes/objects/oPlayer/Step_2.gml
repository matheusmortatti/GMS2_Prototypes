/// Entity Step 2.0

/// EntityStep();

jumped = false;
landed = false;

if (vy < 1 && vy > -1)
    PlatformCheck();
else
    repeat(abs(vy)) {
        if (!PlatformCheck()) {
            y += sign(vy);
			if(place_meeting(x, y + sign(vy), oParEnemy) and !place_meeting(x, y, oParEnemy) and vy > vyMax) {
				with(instance_place(x, y + sign(vy), oParEnemy)) instance_destroy();
				vy = -jumpHeight;
				break;
			}
			if(place_meeting(x, y + sign(vy), oBlockDestructable) and !place_meeting(x, y, oBlockDestructable) and vy > vyMax) {
				with(instance_place(x, y + sign(vy), oBlockDestructable)) instance_destroy();
			}
			
			if(abs(vy) >= vyMax)
				instance_create(x, y, oPlayerTrail);
		}
        else
            break;
    }

if (platformTarget) {
    if (!onGround)
        landed = true;
    
    if (landed)
        with (platformTarget) other.vy = 0;
    else
        with (platformTarget) other.vy = 0;
}

repeat(abs(vx)) {
    if (place_meeting(x + sign(vx), y, oParSolid) && !place_meeting(x + sign(vx), y - 1, oParSolid))
        y -= 1;
         
    if (place_meeting(x + sign(vx), y + 2, oParSolid) && !place_meeting(x + sign(vx), y + 1, oParSolid))
        y += 1;       
          
    if (!place_meeting(x + sign(vx), y, oParSolid))
        x += sign(vx);
    else
        vx = 0;
		
}

if(x < 0 or x > room_width or y < 0 or y > room_height) instance_destroy();

