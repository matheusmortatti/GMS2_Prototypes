/// @description Insert description here
// You can write your code in this editor


if(collision_rectangle(x - visionRadius, y - visionRadius, x + visionRadius, y + visionRadius, oPlayer, false, false)
					   and IsAny(state, WONDERING, IDLE)) {
					   
	dir = point_direction(x, y, oPlayer.x, oPlayer.y);
	state = CHARGING;
	vxTarget = 0;
	vyTarget = 0;
	
	alarm[3] = -1;
	alarm[0] = 0.5 * room_speed;
}

if(state == RUNNING) {
	vxTarget = (vxMax+3.0) * cos(degtorad(dir));
	vyTarget = -(vyMax+3.0) * sin(degtorad(dir));
	
	if(!alarm[1]) {
		alarm[1] = 1 * room_speed;
	}
}

if(state == WONDERING) {
	
	vxTarget = vxMax * cos(degtorad(dir));
	vyTarget = -vyMax * sin(degtorad(dir));
	
	if(!alarm[2]) {
		alarm[2] = 2 * room_speed;
	}
}

if(state == IDLE) {
	vxTarget = 0;
	vyTarget = 0;
	
	if(!alarm[3]) {
		alarm[3] = random_range(0.5, 1) * room_speed
	}
}

vx = Approach(vx, vxTarget, accel);
vy = Approach(vy, vyTarget, accel);