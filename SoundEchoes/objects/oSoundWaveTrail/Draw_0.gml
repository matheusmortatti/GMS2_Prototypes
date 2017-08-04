/// @description Insert description here
// You can write your code in this editor

draw_set_color(col);
draw_set_alpha(alpha);
draw_circle(x, y, radius, true);

//if(instance_exists(oSilhouetteController)) {
//	surface_set_target(oSilhouetteController.surf);
//	draw_circle(x, y, radius, true);
//	surface_reset_target();
//}

draw_set_alpha(1);