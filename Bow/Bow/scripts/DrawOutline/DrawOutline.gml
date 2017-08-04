// DrawOutline(sprite, sub, x, y, xscale, yscale, rot, alpha, outline_size)

var size = argument[8];

draw_sprite_ext(argument[0], argument[1], argument[2]-size, argument[3], argument[4], argument[5], argument[6], global.darkColor.rgb, argument[7]);
draw_sprite_ext(argument[0], argument[1], argument[2]+size, argument[3], argument[4], argument[5], argument[6], global.darkColor.rgb, argument[7]);
draw_sprite_ext(argument[0], argument[1], argument[2], argument[3]-size, argument[4], argument[5], argument[6], global.darkColor.rgb, argument[7]);
draw_sprite_ext(argument[0], argument[1], argument[2], argument[3]+size, argument[4], argument[5], argument[6], global.darkColor.rgb, argument[7]);