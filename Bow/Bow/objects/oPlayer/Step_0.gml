/// Step


var kLeft, kRight, kUp, kDown, kShoot, kChangeArrow;

//if(_canMove) {
	kLeft   = keyboard_check(vk_left);
	kRight  = keyboard_check(vk_right);
	kUp     = keyboard_check(vk_up);
	kDown   = keyboard_check(vk_down);
//}
//else {
	//kLeft   = 0;
	//kRight  = 0;
	//kUp     = 0;
	//kDown   = 0;
//}

if(_canShoot) {
	kShoot  = keyboard_check_released(vk_space);
	kHold   = keyboard_check(vk_space);
	kChangeArrow = keyboard_check_pressed(ord("Z"));
}
else {
	kShoot  = 0;
	kHold   = 0;
	kChangeArrow = 0;
}


////////////////////////////////////////////////////////////
///////////////////// Movement /////////////////////////////
////////////////////////////////////////////////////////////

if(onGround) {
	var tempFric = fric;
	if(state == WALKING) _canMove = true;
}
else {
	var tempFric = airFric;
}

if(_canMove) {

	// Horizontal
	if(kLeft and !kRight) {
		if(vx > 0) vx = lerp(vx, 0, tempFric);
		vx = lerp(vx, -vxMax, accel);
	
		arrowX = -1;
		facing = 0;
		spriteFacing = 1;
	}
	else if(!kLeft and kRight) {
		if(vx < 0) vx = lerp(vx, vxMax, tempFric);
		vx = lerp(vx, vxMax, accel);
	
		arrowX = 1;
		facing = 2;
		spriteFacing = -1;
	}

	// Vertical
	if(kUp and !kDown) {
		vy = lerp(vy, -vyMax, accel);
		arrowY = -1;
		arrowX = 0;
		facing = 3;
	}
	else if(!kUp and kDown) {
		vy = lerp(vy, vyMax, accel);
		arrowY = 1;
		arrowX = 0;
		facing = 1;
	}
}

//if(!kRight and !kLeft) {
	vx = Approach(vx, 0, tempFric);
//}

// Friction
//if(!kUp and !kDown) {
	vy = Approach(vy, 0, tempFric);
//}


// Z axis
vz = lerp(vz, maxFall, grav);


//// Arrow Direction Fix
//if((!kUp and ! kDown) and (kRight or kLeft)) {
//    arrowY = 0;
//}

//if((!kRight and !kLeft) and (kUp or kDown)) {
//    arrowX = 0;
//}

// Diagonal Movement
if((kUp or kDown) and (kRight or kLeft)) {
    vx /= 1.4;
    vy /= 1.4;
}

////////////////////////////////////////////////////////////
/////////////////////// Shoot //////////////////////////////
////////////////////////////////////////////////////////////

// Hold to shoot
if(kHold) {
    arrowMult = Approach(arrowMult, 1, 0.1);
	_canMove = false;
	state = SHOOTING;
	global._shake = 2 * arrowMult;
}
else {
    arrowMult = Approach(arrowMult, 0.1, 0.3);
	_canMove = true;
	state = WALKING;
}

if(state == SHOOTING) {
	if(kLeft and !kRight)		facing = 0;
	else if(!kLeft and kRight)	facing = 2;
	else if(kUp and !kDown)		facing = 3;
	else if(!kUp and kDown)		facing = 1;
}

if(kShoot and _canShoot) {
    var proj = instance_create(x, y, arrow[arrow_equiped].type);
    
	switch(facing) {
		case 0:
			proj.vx = -proj.vxMax * arrowMult;
			proj.image_angle = 0;
			break;
		case 1:
			proj.vy = proj.vyMax * arrowMult;
			proj.image_angle = 90;
			break;
		case 2:
			proj.vx = proj.vxMax * arrowMult;
			proj.image_angle = 180;
			break;
		case 3:
			proj.vy = -proj.vyMax * arrowMult;
			proj.image_angle = 270;
			break;
	}
    
}


////////////////////////////////////////////////////////////
/////////////////// Take Damage ////////////////////////////
////////////////////////////////////////////////////////////
if(hit != noone and !invincible) {
	if(onGround) {
		var dir = point_direction(hit.x, hit.y, x, y);
		vx = 5 * cos(degtorad(dir));
		vy = -5 * sin(degtorad(dir));
		vz = 5;
		_canMove = false;
		invincible = true;
		alarm[0] = blinkTime * room_speed;
	}
	
}
hit = noone;


////////////////////////////////////////////////////////////
//////////////////// Swap Arrow/////////////////////////////
////////////////////////////////////////////////////////////

if(kChangeArrow) {
	var will_equip = ClampLoop(arrow_equiped + 1, 0, array_length_1d(arrow) - 1);
	
	
	// Equips next arrow that player has
	while(!arrow[will_equip].has) {
		
		will_equip = ClampLoop(will_equip + 1, 0, array_length_1d(arrow) - 1);
	}
	
	arrow_equiped = will_equip;
	
	
}
