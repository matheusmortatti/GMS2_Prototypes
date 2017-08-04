/// @description Insert description here
// You can write your code in this editor

if(!view_enabled) {
	view_visible[0] = true;
	view_enabled = true;
}

if(window_get_height() != global.cameraResolution[1]*global.zoom
   && window_get_width() != global.cameraResolution[0]*global.zoom
   && !window_get_fullscreen()) {
	
	window_set_size(global.cameraResolution[0]*global.zoom, global.cameraResolution[1] * global.zoom );
	surface_resize(application_surface, global.cameraResolution[0], global.cameraResolution[1]);
	display_reset(0, false);   
}

if(instance_exists(oPlayer)) {
	x += (oPlayer.x - x) * 0.8;
	y += (oPlayer.y - y) * 0.8;
}


if(global._shake > 0) {
	camera_set_view_pos(view_camera[0],
					x - camera_get_view_width(view_camera[0]) / 2 + random_range(-global._shake, global._shake),
					y - camera_get_view_height(view_camera[0]) / 2 + random_range(-global._shake, global._shake));
	global._shake--;
}
else {
	camera_set_view_pos(view_camera[0],
					x - camera_get_view_width(view_camera[0]) / 2,
					y - camera_get_view_height(view_camera[0]) / 2);
}