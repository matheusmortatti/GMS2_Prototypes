/// @description Insert description here
// You can write your code in this editor

number = instance_number(oNote)
for(var i = 0; i < number; i++) {
	note[i] = instance_find(oNote, i);
	picked[i] = false;
	
	color[i] = c_white;
	if(instance_exists(note[i]))
		color[i] = note[i].col;
}

current_checkpoint = noone;

k = 0;

sprite[0] = sHUDPickup1;
sprite[1] = sHUDPickup2;
sprite[2] = sHUDPickup3;

pickedAll = false;