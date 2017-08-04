/// @description Insert description here
// You can write your code in this editor

dir = 0;
if(instance_exists(oPlayer))
	dir = point_direction(x, y, oPlayer.x, oPlayer.y);
	
vx = 4 * cos(degtorad(dir));
vy = -4 * sin(degtorad(dir));

soundDelay = 0.2 * room_speed;
alarm[0] = soundDelay;