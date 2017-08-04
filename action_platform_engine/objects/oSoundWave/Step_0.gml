/// @description Insert description here
// You can write your code in this editor

var trail = instance_create(x, y, oSoundWaveTrail);
trail.radius = radius;
trail.col = col;

radius += accel;
image_xscale += imageSpd;
image_yscale = image_xscale;

if(radius >= radMax) instance_destroy();