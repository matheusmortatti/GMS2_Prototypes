/// CollisionOnAny(x, y, objects[])


for(var i = 0; i < array_length_1d(argument2); i++) {
	if(place_meeting(argument0, argument1, argument2[i])) {
		return instance_place(argument0, argument1, argument2[i]);
	}
}

return 0;