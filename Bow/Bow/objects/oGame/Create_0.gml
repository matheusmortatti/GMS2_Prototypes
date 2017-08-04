/// Game Variables

Singleton();

global._IsDebugBuild = true;

global.zoom = 4;

global.cameraResolution[0] = 256;
global.cameraResolution[1] = 144;

global.viewportResolution[0] = 1024;
global.viewportResolution[1] = 576;

camera_set_view_size(view_camera[0], global.cameraResolution[0], global.cameraResolution[1]);

surface_resize(application_surface, global.cameraResolution[0], global.cameraResolution[1]);
display_reset(0, false);
 
window_set_size(global.viewportResolution[0], global.viewportResolution[1]);

// Game Things
global._isInside = false;
global._shake = 0;

// Pallete List!

darkPalette[0] = instance_create(x, y, oObjTemplate);
darkPalette[0].r = 26;
darkPalette[0].g = 60;
darkPalette[0].b = 51;
darkPalette[0].rgb = make_color_rgb(darkPalette[0].r, darkPalette[0].g, darkPalette[0].b);

darkPalette[1] = instance_create(x, y, oObjTemplate);
darkPalette[1].r = 0.0;
darkPalette[1].g = 0.0;
darkPalette[1].b = 0.0;
darkPalette[1].rgb = make_color_rgb(darkPalette[1].r, darkPalette[1].g, darkPalette[1].b);

darkPalette[2] = instance_create(x, y, oObjTemplate);
darkPalette[2].r = 94;
darkPalette[2].g = 6;
darkPalette[2].b = 70;
darkPalette[2].rgb = make_color_rgb(darkPalette[2].r, darkPalette[2].g, darkPalette[2].b);

brightPalette[0] = instance_create(x, y, oObjTemplate);
brightPalette[0].r = 132;
brightPalette[0].g = 161;
brightPalette[0].b = 116;
brightPalette[0].rgb = make_color_rgb(brightPalette[0].r, brightPalette[0].g, brightPalette[0].b);

brightPalette[1] = instance_create(x, y, oObjTemplate);
brightPalette[1].r = 255;
brightPalette[1].g = 255;
brightPalette[1].b = 255;
brightPalette[1].rgb = make_color_rgb(brightPalette[1].r, brightPalette[1].g, brightPalette[1].b);

brightPalette[2] = instance_create(x, y, oObjTemplate);
brightPalette[2].r = 93;
brightPalette[2].g = 163;
brightPalette[2].b = 164;
brightPalette[2].rgb = make_color_rgb(brightPalette[2].r, brightPalette[2].g, brightPalette[2].b);

current_palette = 1;

global.darkColor = darkPalette[current_palette];

global.brightColor = brightPalette[current_palette];