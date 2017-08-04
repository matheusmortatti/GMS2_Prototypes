/// @description Insert description here
// You can write your code in this editor

pickedAll = true;
for(var i = 0; i < number; i++) {
	if(!instance_exists(note[i]) and !picked[i]) {
		picked[i] = true;
	}
	else {
		if(picked[i]) {
			instance_destroy(note[i]);
		}
	}
	
	if(!picked[i]) pickedAll = false;
}

if(pickedAll) {
	instance_create(x, y, oFxGameEnd);
	global.endGame = true;
	instance_destroy();
}