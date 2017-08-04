/// @description Insert description here
// You can write your code in this editor

if(instance_exists(collided)) {
	if(object_is_ancestor(collided.object_index, oParEnemy)) {

		instance_destroy(collided);
		instance_destroy();

	}
}