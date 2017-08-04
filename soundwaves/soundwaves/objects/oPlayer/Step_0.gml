/// @description Insert description here
// You can write your code in this editor

var kRight, kUp, kLeft, kDown, kJump;

kRight	= keyboard_check(vk_right);
kLeft	= keyboard_check(vk_left);
kUp		= keyboard_check(vk_up);
kDown	= keyboard_check(vk_down);

kJump	= keyboard_check_pressed(vk_space);

// Horizontal Movement
if(kRight and !kLeft) {
	vx = lerp(vx, vxMax, accel);
}
else if(!kRight and kLeft) {
	vx = lerp(vx, -vxMax, accel);
}
else if(!kRight and !kLeft) {
	vx = lerp(vx, 0, fric);
}

// Vertical Movement
if(kJump and onGround) {
	vy = -jumpHeight;
}
else {
	vy = lerp(vy, vyMax, grav);
}

// Rotation on Air
//if(onGround) {
//	image_angle = 0;
//}
//else {
//	if(kRight and !kLeft) {
//		image_angle -= rotSpd;
//	}
//	else if(!kRight and kLeft) {
//		image_angle += rotSpd;
//	}
//}
