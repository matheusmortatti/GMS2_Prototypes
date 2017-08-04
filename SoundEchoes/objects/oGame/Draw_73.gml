/// @description Insert description here
// You can write your code in this editor

draw_set_alpha(image_alpha);
draw_rectangle_color(camera_get_view_x(view_camera[0]),
					 camera_get_view_y(view_camera[0]),
					 camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]),
					 camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]),
					 c_black, c_black, c_black, c_black, false);
draw_set_alpha(1);