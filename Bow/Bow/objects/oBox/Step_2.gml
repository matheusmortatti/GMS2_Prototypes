/// @description Insert description here
// You can write your code in this editor

// New Variables for Subpixel Movement
var vxNew, vyNew;

// Subpixel Movement
cx += Fraction(vx);
cy += Fraction(vy);

vx = floor(vx);
vy = floor(vy);

vxNew = vx + floor(cx);
vyNew = vy + floor(cy);

cx = Fraction(cx);
cy = Fraction(cy);

// Actual Movement

// Horizontal
repeat(abs(vxNew)) {
    if(place_meeting(x + sign(vxNew), y, oParSolid)) {
        break;
    }
	
    x += sign(vxNew);
	
	
    
}

// Vertical
repeat(abs(vyNew)) {
    if(place_meeting(x, y + sign(vyNew), oParSolid)) {
        break;
    }
    
    y += sign(vyNew);
	
	
}