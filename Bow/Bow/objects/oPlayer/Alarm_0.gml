/// @description Insert description here
// You can write your code in this editor

blinkCount++;

hidden = not hidden;

if(blinkCount <= 10) {
	alarm[0] = blinkTime * room_speed;
}
else {
	hidden = false;
	blinkCount = 0;
	invincible = false;
}