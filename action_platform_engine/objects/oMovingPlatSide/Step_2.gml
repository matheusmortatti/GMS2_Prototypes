/// @description Insert description here
// You can write your code in this editor

if(!stop) {
	repeat(abs(vx)) {
	
		if(place_meeting(x + sign(vx), y, oPlayer)) {
			with(oPlayer) {
				if(place_meeting(x + sign(other.vx), y, oParSolid))
					instance_destroy();
			}
		}
	
		if(place_meeting(x + sign(vx), y, oPlayer) or place_meeting(x, y - 1, oPlayer)) {
			with(oPlayer) {
				if(!place_meeting(x + sign(other.vx), y, oParSolid))
					x += sign(other.vx);
			}
		}
		
		
	
		x += sign(vx);
		
		if(!place_meeting(x, y, oRail) or place_meeting(x, y, oParSolid)) {
			invert = true;
			stop = true;
			x -= sign(vx);
			alarm[0] = 1 * room_speed;
			break;
		}
	
	}
}