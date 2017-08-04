/// @description Insert description here
// You can write your code in this editor

var color_1 = shader_get_uniform(paletteShader, "darkColor");
var color_2 = shader_get_uniform(paletteShader, "brightColor");



shader_set_uniform_f(color_1, 0.5, 0.5, 0.5, 1);
shader_set_uniform_f(color_2, 1, 1, 1, 1);

draw_surface(application_surface, 0, 0);

