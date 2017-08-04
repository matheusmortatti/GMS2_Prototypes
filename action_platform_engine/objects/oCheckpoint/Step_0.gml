/// @description Insert description here
// You can write your code in this editor

if(!checked) {
	place = nCheckedPos;
	
}
else {
	if (reached) {
		y = place + 7*sin(time);
		time += 0.1;
	}
}

y = Approach(y, place, vx);

if(y == place) reached = true;


