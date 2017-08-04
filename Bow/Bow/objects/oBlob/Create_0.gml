/// @description Insert description here
// You can write your code in this editor

event_inherited();

JUMPING = 0;
IDLE	= 1;
ONAIR	= 2;

state = IDLE;
alarm[0] = random_range(1, 2) * room_speed;

dir = choose(0, 90, 180, 270);

vxTarget = 0;
vyTarget = 0;

vzMax = 5.0;

xStart = x;
yStart = y;

radius = 50;