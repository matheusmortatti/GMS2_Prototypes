/// @description Insert description here
// You can write your code in this editor

if(state == IDLE) {
	if(place_meeting(x + 1, y, oPlayer)) {
		var p = instance_place(x + 1, y, oPlayer);
	
		if(keyboard_check(vk_left))	delay++;
		else			delay = 0;
	
		if(delay >= touchTime) {
			vx = -spd;
			state = MOVING;
			delay = 0;
		}
	}
	else if(place_meeting(x - 1, y, oPlayer)) {
		var p = instance_place(x - 1, y, oPlayer);
	
		if(keyboard_check(vk_right))	delay++;
		else			delay = 0;
	
		if(delay >= touchTime) {
			vx = spd;
			state = MOVING;
			delay = 0;
		}
	}
	else if(place_meeting(x, y + 1, oPlayer)) {
		var p = instance_place(x, y + 1, oPlayer);
	
		if(keyboard_check(vk_up))	delay++;
		else			delay = 0;
	
		if(delay >= touchTime) {
			vy = -spd;
			state = MOVING;
			delay = 0;
		}
	}
	else if(place_meeting(x, y - 1, oPlayer)) {
		var p = instance_place(x, y - 1, oPlayer);
	
		if(keyboard_check(vk_down))	delay++;
		else			delay = 0;
	
		if(delay >= touchTime) {
			vy = spd;
			state = MOVING;
			delay = 0;
		}
	}
}
else if(state == MOVING) {
	if(!alarm[0])
		alarm[0] = 1 * room_speed;
}