/// @description Insert description here
// You can write your code in this editor

repeat(abs(vx)) {
	if(place_meeting(x + sign(vx), y, oParSolid)) {
		instance_destroy();
		break;
	}
	if(place_meeting(x, y, oPlayer))
		instance_destroy(oPlayer);
	x += sign(vx);
}

repeat(abs(vy)) {
	if(place_meeting(x, y + sign(vy), oParSolid)) {
		instance_destroy();
		break;
	}
	if(place_meeting(x, y, oPlayer))
		instance_destroy(oPlayer);
	y += sign(vy);
}