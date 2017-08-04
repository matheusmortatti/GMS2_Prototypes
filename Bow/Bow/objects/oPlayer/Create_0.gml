/// Create Variables

event_inherited();


// Arrow/Bow Stuff
arrowX		= 0;
arrowY		= 0;
arrowMult	= 0.1;
kHold		= 0;

facing			= 0;
spriteFacing	= 1;

// Damage Variables
hidden		= false;
hit			= noone;
blinkCount	= 0;
blinkTime	= 0.1;
_canMove	= true;
invincible	= false;

// Objects that has reaction when collided
objCollide[0]	= oParEnemy;

// Inventory


// Arrow types
arrow[0] = instance_create(x, y, oObjTemplate);
arrow[1] = instance_create(x, y, oObjTemplate);
arrow[0].type = oArrowNormal;
arrow[0].has  = true;
arrow[1].type = oArrowExplosive;
arrow[1].has  = true;

arrow_equiped = 0;
_canShoot	  = true;


// States
SHOOTING = 0;
WALKING = 1;

state = WALKING;

