/// @description Insert description here
// You can write your code in this editor

if(place_meeting(x, y, oPlayer) and !Valid(text)) {
	if(!instance_exists(oTextBox)) {
		text = instance_create(x, y, oTextBox);
	
		text.message[0] = "Hey bro, what you doing here?";
		text.message[1] = "Fuck off";
	}
}
else if(!place_meeting(x, y, oPlayer)) {
	instance_destroy(text);
}