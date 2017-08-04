/// Controles

if(global._IsDebugBuild) {
    
    var kExit, kNext, kPrev, kRest;
    
    kExit   = keyboard_check_pressed(vk_escape);;
    kNext   = keyboard_check_pressed(ord("P"));
    kPrev   = keyboard_check_pressed(ord("O"));
	kRest	= keyboard_check_pressed(ord("R"));
    
    
	if(kRest)
		game_restart();
	
    if(kExit) {
        game_end();
    }
    
    if(kNext) {
        if(room != room_last)
            room_goto_next();
        else
            room_goto(room_first);
    }
    
    if(kPrev) {
        if(room != room_first)
            room_goto_previous();
        else
            room_goto(room_last);
    }

}


if(keyboard_check_pressed(ord("X"))) {
	current_palette = ClampLoop(current_palette + 1, 0, array_length_1d(darkPalette) - 1);
	
	global.darkColor = darkPalette[current_palette];
	global.brightColor = brightPalette[current_palette];
}

