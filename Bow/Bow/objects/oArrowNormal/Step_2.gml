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
	
	if(abs(vxNew) >= 50)
		with(instance_create(x, y, oArrowTrail)) {
			if(other.vx > 0)
				image_angle = 180;
		}
    
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
	
	if(abs(vyNew)>=50)
		with(instance_create(x, y, oArrowTrail)) {
			if(other.vy > 0)
				image_angle = 90;
			else
				image_angle = 270;
		}
	
}

// Z axis
repeat(abs(vzNew)) {
    _z += sign(vzNew);
	if(_z <= 0) _z = 0;
}

// Wiggle wiggle wiggle
if(collision_rectangle(bbox_left-1, bbox_top-1, bbox_right+1, bbox_bottom+1, oParSolid, false, false)) {
    image_speed = 0.4;
    
    if(image_index > image_number - 1) {
        image_speed = 0;
    }
	
}

