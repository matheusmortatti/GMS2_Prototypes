/// @description Insert description here
// You can write your code in this editor

var xTo, yTo;
move_towards_point(mouse_x, mouse_y, 0);

xTo = oPlayer.x + lengthdir_x(min(70, distance_to_point(mouse_x, mouse_y)), direction);
yTo = oPlayer.y + lengthdir_y(min(70, distance_to_point(mouse_x, mouse_y)), direction);

x += (xTo - x) / 10;
y += (yTo - y) / 10;

if(keyboard_check(vk_space)) {
	camera_set_view_pos(
					view_camera[0], 
					-(camera_get_view_width(view_camera[0])/2) + x + irandom_range(-2, 2), 
					-(camera_get_view_height(view_camera[0])/2) + y+ irandom_range(-2, 2));
}
else
	camera_set_view_pos(
					view_camera[0], 
					-(camera_get_view_width(view_camera[0])/2) + x, 
					-(camera_get_view_height(view_camera[0])/2) + y);