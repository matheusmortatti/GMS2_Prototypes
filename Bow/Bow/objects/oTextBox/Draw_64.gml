/// @description Insert description here
// You can write your code in this editor

// Draw text box
draw_rectangle_color(1, view_hport[0] - 60, tbWidth, tbHeight, global.darkColor.rgb, global.darkColor.rgb, global.darkColor.rgb, global.darkColor.rgb, false);
draw_rectangle_color(1, view_hport[0] - 60, tbWidth, tbHeight, global.brightColor.rgb, global.brightColor.rgb, global.brightColor.rgb, global.brightColor.rgb, true);
		


//draw_set_font(font);
draw_set_color(global.brightColor.rgb);
draw_set_font(f_font);

message_end = array_length_1d(message);

if(message_end > 0) {

	// Variables
	var charWidth	= 7;
	var lineEnd		= 35;
	var line		= 0;
	var space		= 0;
	var i			= 1;
	var delay		= 1;

	// Text Position
	var tY = view_hport[0] - 55;
	if(portrait == "")	var tX = 5;
	else				var tX = 60;
	
	
	
	// Next Message
	if(keyboard_check_pressed(ord("S"))) {
		// If we still have some more messages, go to the next
		
		if(cutoff < string_length(message[message_current]) - 1) {
			cutoff = string_length(message[message_current]) - 1;
		}
		else if(message_current < message_end - 1) {
			message_current++;
			cutoff = 0;
			modifier = 0;
		}
		else {
			done = true;
		}
	}
	
	
	// Typewriter
	if(cutoff < string_length(message[message_current])) {
		if(timer >= delay) {
			cutoff++;
			timer = 0;
		}
		else timer ++;
	}
	
	// Draw Text
	while(i <= string_length(message[message_current]) && i <= cutoff) {
		// Check for modifier
		if(string_char_at(message[message_current], i) == "#") {
			modifier = real(string_char_at(message[message_current], ++i));
			++i;
		}
	
		// Go to next line
		var length = 0;
		
		while(string_char_at(message[message_current], i) != " " && i <= string_length(message[message_current])) {
			i++;
			length++;
		}
		
		if(space + length > lineEnd) {
			space = 0;
			line++;
		}
		
		i -= length;
		
		
		//Text
		switch(modifier) {
			case 0:	// Normal
				draw_text(tX + (space*charWidth), tY + (13*line), string_char_at(message[message_current], i));
				break;
			case 1:	// Shaky
				draw_text(tX + (space*charWidth) + random_range(-1, 1), tY + (13*line) + random_range(-1, 1), string_char_at(message[message_current], i));
				break;
			default:// Normal
				draw_text(tX + (space*charWidth), tY + (13*line), string_char_at(message[message_current], i));
				break;
		}
		
		space++;
		i++;
	}
	
	if(tX + (space*charWidth) + 10 > tbWidth) tbWidth = tX + (space*charWidth) + 10;
	if(tY + (13*line) + 15 > tbHeight) tbHeight = tY + (13*line) + 15;
	
	// Draw Portrait
	switch(portrait) {
		case "none":
			break;
		case "player":
			draw_sprite(sPlayer, 0, 5, view_hport[0]-55);
			break;
		default:
			break;
	}
}