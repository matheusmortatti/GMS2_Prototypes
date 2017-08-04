/// Move Actor

// New Variables for Subpixel Movement
var vxNew, vyNew, vzNew;

// Subpixel Movement
cx += Fraction(vx);
cy += Fraction(vy);
cz += Fraction(vz);

vx = floor(vx);
vy = floor(vy);
vz = floor(vz);

vxNew = vx + floor(cx);
vyNew = vy + floor(cy);
vzNew = vz + floor(cz);

cx = Fraction(cx);
cy = Fraction(cy);
cz = Fraction(cz);

// Actual Movement

// Horizontal
repeat(abs(vxNew)) {
    if(place_meeting(x + sign(vxNew), y, oParSolid)) {
        break;
    }
	
	// Checks if the object has collided with a hazard
	collided = CollisionOnAny(x + sign(vxNew), y, objCollide)
	//if(collided) {
		event_user(0);
	//}
	
    x += sign(vxNew);
	
	
    
}

// Vertical
repeat(abs(vyNew)) {
    if(place_meeting(x, y + sign(vyNew), oParSolid)) {
        break;
    }
	
	// Checks if the object has collided with a hazard
	collided = CollisionOnAny(x, y + sign(vyNew), objCollide);
	//if(collided) {
		event_user(0);
	//}
    
    y += sign(vyNew);
	
	
}

// Z axis
repeat(abs(vzNew)) {
    _z += sign(vzNew);
	if(_z <= 0) _z = 0;
}

//collided = CollisionOnAny(x, y, hazards);
//if(collided) {
//	event_user(0);
//}
