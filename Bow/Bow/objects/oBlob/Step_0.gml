/// @description Insert description here
// You can write your code in this editor

if(state == ONAIR) {
	if(_z <= 0) {
		state = IDLE;
		alarm[0] = random_range(1, 2) * room_speed;
	}
}

if(state == JUMPING) {
	vz = vzMax;
	
	dir = choose(0, 90, 180, 270);
	vxTarget = vxMax * cos(degtorad(dir));
	vyTarget = -vyMax * sin(degtorad(dir));
	
	state = ONAIR;
}

if(state == IDLE) {
	vxTarget = 0;
	vyTarget = 0;
}

vx = Approach(vx, vxTarget, accel);
vy = Approach(vy, vyTarget, accel);
vz = Approach(vz, maxFall, grav);

x = clamp(x, xStart - radius, xStart + radius);
y = clamp(y, yStart - radius, yStart + radius);