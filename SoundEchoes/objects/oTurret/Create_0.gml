/// @description Insert description here
// You can write your code in this editor

reloadTime = 1 * room_speed;
stretch = false;

alarm[0] = reloadTime - random_range(0.3, 0.7)*reloadTime;

val = 0;
vel = 0;
target = 0;
zeta = 0.15;
omega = 15 * pi;
h = 0.01;