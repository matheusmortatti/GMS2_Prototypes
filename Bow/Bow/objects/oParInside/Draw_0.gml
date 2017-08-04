/// @description Insert description here
// You can write your code in this editor

if(instance_exists(oSurfaceInside)) {
	surface_set_target(oSurfaceInside.surf);
	draw_self();
	surface_reset_target();
}