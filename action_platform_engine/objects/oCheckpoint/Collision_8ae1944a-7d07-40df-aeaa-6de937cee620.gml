/// @description Insert description here
// You can write your code in this editor

if(!checked) {
	checked = true;
	reached = false;
	place = CheckedPos;
	time = 0;
	
	if(instance_exists(oCheckpointController)) {
		
		with(oCheckpointController) {
			if(current_checkpoint != noone and current_checkpoint != other) {
				current_checkpoint.checked = false;
				current_checkpoint.reached = false;
			}
			current_checkpoint = other;
		}
		
		global.savepointX = x;
		global.savepointY = y;
	}
	
	audio_play_sound_at(soundCheckpoint, x, y, 0, 200, 500, 0.1, false, 1);
}