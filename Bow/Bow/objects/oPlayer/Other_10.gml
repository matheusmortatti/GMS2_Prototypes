/// @description Insert description here
// You can write your code in this editor

if(instance_exists(collided)) {
	switch(object_get_name(collided.object_index)) {

		case "oEnemy":
				//var dir = point_direction(collided.x, collided.y, x, y);
				//vx = 5 * cos(degtorad(dir));
				//vy = -5 * sin(degtorad(dir));
			hit = collided.object_index;
			
			break;
			break;	// breaks the movement code
		
		default:
			break;
	}
}