/// @description Insert description here
// You can write your code in this editor

if(instance_exists(oPlayer)) {
	x += (oPlayer.x - x) * 0.8;
	y += (oPlayer.y - y) * 0.8;
}

if(global.shake <= 0) {
	camera_set_view_pos(view_camera[0], 
					x - camera_get_view_width(view_camera[0]) / 2, 
					y - camera_get_view_height(view_camera[0]) / 2);
}
else {
	global.shake--;
	camera_set_view_pos(view_camera[0], 
					x - camera_get_view_width(view_camera[0]) / 2 + random_range(-2 - global.shake/2, 2 + global.shake/2), 
					y - camera_get_view_height(view_camera[0]) / 2 + random_range(-2 - global.shake/2, 2 + global.shake/2));
}