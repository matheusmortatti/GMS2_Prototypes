/// @description Insert description here
// You can write your code in this editor

if(instance_exists(collided)) {
	switch(object_get_name(collided.object_index)) {

		case "oPlayer":

				//var dir = point_direction(x, y, collided.x, collided.y);
				//collided.vx = 5 * cos(degtorad(dir));
				//collided.vy = -5 * sin(degtorad(dir));
			collided.hit = object_index;
			break;
			
		case "oArrowNormal":
			instance_destroy();
			break;
			
		case "oArrowExplosive":
			instance_destroy();
			break;
		
		default:
			break;
	}
}