/// @description Insert description here
// You can write your code in this editor

if(_z <= 0.0)	{
	onGround = true;
}
else onGround = false;

if(global._isInside) {
	_canShoot = false;
}
else {
	_canShoot = true;
}