/// @description Insert description here
// You can write your code in this editor

if(!stop) {
	repeat(abs(vy)) {
		
		if(place_meeting(x, y  + sign(vy), oPlayer)) {
			with(oPlayer) {
				if(place_meeting(x, y + sign(other.vy), oParSolid))
					instance_destroy();
			}
		}
		
		if(place_meeting(x, y + 1, oPlayer) or place_meeting(x, y - 1, oPlayer)) {
			with(oPlayer) {
				y += sign(other.vy);
			}
		}
		
		
	
	
	
		y += sign(vy);
	
		if(!place_meeting(x, y, oRail) or place_meeting(x, y, oParSolid)) {
			invert = true;
			stop = true;
			y -= sign(vy);
			alarm[0] = 1 * room_speed;
			break;
		}
	
	
	}
}