/// @description Insert description here
// You can write your code in this editor

draw_self();

image_alpha -= 0.25;

if(image_alpha <= 0) instance_destroy();