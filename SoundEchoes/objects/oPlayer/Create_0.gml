/// Variables

// Inherit oParEntity variables
event_inherited();

if(global.savepointX != -1 and global.savepointY != -1) {
	x = global.savepointX;
	y = global.savepointY;
}

facing = 1;

// Movement ///////////////////////////////////////////////////////////////////

groundAccel = 1.00;
groundFric  = 2.00;
airAccel    = 0.75;
airFric     = 0.01;
vxMax       = 5.50;
vyMax       = 10.0;
jumpHeight  = 6.00;
gravNorm    = 0.50;
gravSlide   = 0.25; 

clingTime   = 2.0;

// Misc ///////////////////////////////////////////////////////////////////////

// States
IDLE     = 10;
RUN      = 11;
JUMP     = 12;
ROLL     = 13;

// Initialize properties
state  = IDLE;
facing = image_xscale; // Change xscale in editor to adjust initial facing

// For squash + stretch
xscale = 1;
yscale = 1;

///////////////////////////////////////////////////////////////////////////////

attacking = false;
blocking  = false;

stompSpd = 20.0;
stomped = false;

//fallTime = 0;
//fallMax  = 28;


