// Draw End


var col = make_color_rgb(58, 61, 146);
draw_set_alpha(image_alpha);
draw_rectangle_colour(__view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), __view_get( e__VW.XView, 0 ) + 640, __view_get( e__VW.YView, 0 ) + 360, col, col, col, col, false);
draw_set_alpha(1.0);

image_alpha -= 0.05;

