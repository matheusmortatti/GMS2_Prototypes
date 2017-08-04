/// Move()

repeat(abs(vx)) {
	if(place_meeting(x + sign(vx), y, oParSolid)) {
		vx = 0;
		break;
	}
	
	x += sign(vx);
}

repeat(abs(vy)) {
	if(place_meeting(x, y + sign(vy), oParSolid)) {
		vy = 0;
		break;
	}
	
	y += sign(vy);

}