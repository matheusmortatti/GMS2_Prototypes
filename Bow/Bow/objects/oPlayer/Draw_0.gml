/// Draw stuff

// bow
if(kHold)
	draw_sprite_ext(sBow, sprite_get_number(sBow) * (arrowMult-0.1), x, y, 1.5, 1.5, 90 * facing, c_white, 1);


var idle;

if(vx == 0 and vy == 0) idle = true;
else					idle = false;

// Self
if(!hidden) {
	
	
	switch(state) {
		case WALKING: {
			
			if(idle) {
				sprite_index = sPlayerIdle;
				image_speed = 0.3;
			}
			else {
				sprite_index = sPlayerRun;
				image_speed = 0.3;
			}
			
			//switch(facing) {
				
			//	case 0: {
					
			//		if(idle) {
			//			sprite_index = sPlayerIdleSide;
			//			image_xscale = 1;
			//			image_speed = 0.2;
			//		}
			//		else {
			//			sprite_index = sPlayerRunSide;
			//			image_xscale = 1;
			//			image_speed = 0.3;
			//		}
					
			//		break;
			//	}
				
			//	case 1: {
				
			//		if(idle) {
			//			sprite_index = sPlayerIdleFront;
			//			image_xscale = 1;
			//			image_speed = 0.2;
			//		}
			//		else {
			//			sprite_index = sPlayerRunFront;
			//			image_xscale = 1;
			//			image_speed = 0.3;
			//		}
					
			//		break;
			//	}
				
			//	case 2: {
				
			//		if(idle) {
			//			sprite_index = sPlayerIdleSide;
			//			image_xscale = -1;
			//			image_speed = 0.2;
			//		}
			//		else {
			//			sprite_index = sPlayerRunSide;
			//			image_xscale = -1;
			//			image_speed = 0.3;
			//		}
					
			//		break;
			//	}
				
			//	case 3: {
				
			//		if(idle) {
			//			sprite_index = sPlayerIdleBack;
			//			image_xscale = 1;
			//			image_speed = 0.2;
			//		}
			//		else {
			//			sprite_index = sPlayerRunBack;
			//			image_xscale = 1;
			//			image_speed = 0.3;
			//		}
					
					
			//		break;
			//	}
				
			//}
			
			break;
		}
		
		case SHOOTING: {
			
			sprite_index = sPlayerShoot
			
			//switch(facing) {
				
			//	case 0: {
					
			//		sprite_index = sPlayerShootSide;
			//		image_xscale = 1;
					
			//		break;
			//	}
				
			//	case 1: {
					
			//		sprite_index = sPlayerShootFront;
			//		image_xscale = 1;
					
			//		break;
			//	}
				
			//	case 2: {
					
			//		sprite_index = sPlayerShootSide;
			//		image_xscale = -1;
					
			//		break;
			//	}
				
			//	case 3: {
				
			//		sprite_index = sPlayerShootBack;
			//		image_xscale = 1;
					
			//		break;
			//	}
				
			//}
			
			image_speed = 0.4;
			//image_index = 3 * (arrowMult- 0.1);
			
			break;
		}
	}
	
	//DrawOutline(sprite_index, image_index, x, y - _z, image_xscale, image_yscale, image_angle, image_alpha, 1);
	draw_sprite_ext(sprite_index, image_index, x, y - _z, spriteFacing, image_yscale, image_angle, c_white, image_alpha);
	
	// Draw in the surface too for dumb reasons
	if(Valid(oSurfaceInside)) {

		surface_set_target(oSurfaceInside.surf);
		
		//DrawOutline(sprite_index, image_index, x, y - _z, image_xscale, image_yscale, image_angle, image_alpha, 1);
		draw_sprite_ext(sprite_index, image_index, x, y - _z, spriteFacing, image_yscale, image_angle, c_white, image_alpha);
	
		surface_reset_target();
	}

}

// Little arrow movement
if(kHold) {
	
	switch(facing) {
		case 0:
			draw_sprite_ext(sArrow, 0, x + (arrowMult*3), y, 1, 1, 90 * facing, c_white, 1);
			break;
		case 1:
			draw_sprite_ext(sArrow, 0, x, y - (arrowMult*3), 1, 1, 90 * facing, c_white, 1);
			break;
		case 2:
			draw_sprite_ext(sArrow, 0, x - (arrowMult*3), y, 1, -1, 90 * facing, c_white, 1);
			break;
		case 3:
			draw_sprite_ext(sArrow, 0, x, y + (arrowMult*3), 1, -1 , 90 * facing, c_white, 1);
			break;
		default:
			break;
	}
	
}
