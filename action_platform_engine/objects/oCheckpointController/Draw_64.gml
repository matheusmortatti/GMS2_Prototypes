/// @description Insert description here
// You can write your code in this editor

k = 0;
var count  = 0;
for(var j = 0; j < number; j++) {
	if(picked[j]) {
		draw_sprite_ext(sprite[k], 0, display_get_width()/2 - 50 + 100 * count, 
		display_get_height() - 50, 5, 5, 0, color[j], 1);
		k++;
	}
	
	if (k > 2) {
		k = 0;
		count++;
	}
}

