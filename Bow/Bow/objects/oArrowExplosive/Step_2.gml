
event_inherited();

if(collision_rectangle(bbox_left-1, bbox_top-1, bbox_right+1, bbox_bottom+1, oParSolid, false, false)) {
    image_speed = 0.4;
    
    if(image_index > image_number - 1) {
        image_speed = 0;
    }
	
	instance_destroy();
}

